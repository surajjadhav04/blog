Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	# authenticated :user do
 #  	root :to => "post#index"
	# end

	 devise_scope :user do
  	root to: "devise/sessions#new"
	end
end
