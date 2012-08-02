require 'sinatra'

class App < Sinatra::Base

  set :lock, true

  get '/slow' do
    `sleep 10`
    'slow like a turtle'
  end

  get '/quick' do
    'quick like a bunny'
  end

end