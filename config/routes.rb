Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/about' => "home#about",as: 'about'
  devise_for :users
  resources :users,only: [:create, :index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
