Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  get "pages/help"
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:users
  resources:topics
  resources:comments
  #resources:favorites
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete "/favorites"=>"favorites#destroy"
 end
