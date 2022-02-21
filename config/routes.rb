Rails.application.routes.draw do
  namespace :admin do
    get 'orders/show'
  end

  namespace :admin do
    resources :customers, only: [:index, :edit, :show]
  end

  namespace :admin do
    resources :genres, only: [:index, :edit, :create, :update]
  end

  namespace :admin do
    resources :items, only: [:index, :new, :show, :edit, :create, :update]
  end

  namespace :admin do
    get 'homes/top'
  end

  namespace :admin do
    get 'sessions/new'
  end

  namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
  end

  namespace :public do
    get 'orders/new'
    get 'orders/complete'
    get 'orders/index'
    get 'orders/show'
    get 'orders/confirm'
  end

  namespace :public do
    get 'cart_items/index'
  end

  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/withdraw_confirm'
  end

  namespace :public do
    get 'sessions/new'
  end

  namespace :public do
    get 'registrations/new'
  end

  namespace :public do
    get 'items/index'
    get 'items/show'
  end

  namespace :public do
    root to: 'homes#top'
    get 'homes/about' => 'homes#about', as: "about"
  end

  devise_for :customers, controllers: {
  sessions:      'public/sessions',
  passwords:     'public/passwords',
  registrations: 'public/registrations'
}

  devise_for :admin, controllers: {
  sessions:      'admin/sessions',
  passwords:     'admin/passwords',
  registrations: 'admin/registrations'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
