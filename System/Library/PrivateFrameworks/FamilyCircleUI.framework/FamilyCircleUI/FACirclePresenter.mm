@interface FACirclePresenter
- (FACirclePresenter)init;
- (FACirclePresenter)initWithPresenter:(id)a3 context:(id)a4;
- (FACirclePresenterDelegate)delegate;
- (id)_serverHookHandlerWithRemoteUIController:(id)a3;
- (void)cancel;
- (void)circleRemoteUIDelegate:(id)a3 completedWithResponse:(id)a4;
- (void)circleRemoteUIDelegateDidPresent:(id)a3;
- (void)loadRequest:(id)a3 completion:(id)a4;
- (void)setCustomRUIStyle:(id)a3;
- (void)setPresenter:(id)a3;
@end

@implementation FACirclePresenter

- (FACirclePresenter)init
{
  [(FACirclePresenter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FACirclePresenter)initWithPresenter:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = FACirclePresenter;
  v9 = [(FACirclePresenter *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, a3);
    v11 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIController = v10->_remoteUIController;
    v10->_remoteUIController = v11;

    [(RemoteUIController *)v10->_remoteUIController fa_registerFamilyRUIViews];
    [(RemoteUIController *)v10->_remoteUIController setHostViewController:v10->_presenter];
    v13 = [v8 urlSessionConfiguration];
    if (v13)
    {
      [(RemoteUIController *)v10->_remoteUIController setSessionConfiguration:v13];
    }

    v14 = [[FAProfilePictureStore alloc] initWithFamilyCircle:0];
    familyPictureStore = v10->_familyPictureStore;
    v10->_familyPictureStore = v14;

    v16 = [FACircleRemoteUIDelegate alloc];
    v17 = [(FACirclePresenter *)v10 _serverHookHandlerWithRemoteUIController:v10->_remoteUIController];
    v18 = [(FACircleRemoteUIDelegate *)v16 initWithContext:v8 serverHookHandler:v17 pictureStore:v10->_familyPictureStore];
    remoteUIDelegate = v10->_remoteUIDelegate;
    v10->_remoteUIDelegate = v18;

    [(FACircleRemoteUIDelegate *)v10->_remoteUIDelegate setDelegate:v10];
    [(FACircleRemoteUIDelegate *)v10->_remoteUIDelegate configureHookHandlersForRUIController:v10->_remoteUIController];
    [(RemoteUIController *)v10->_remoteUIController setDelegate:v10->_remoteUIDelegate];
  }

  return v10;
}

- (void)setPresenter:(id)a3
{
  objc_storeStrong(&self->_presenter, a3);
  v5 = a3;
  [(RemoteUIController *)self->_remoteUIController setHostViewController:self->_presenter];
}

- (void)cancel
{
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_serverHookHandlerWithRemoteUIController:(id)a3
{
  v3 = MEMORY[0x277CECAC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CECAC0] fcui_defaultFresnoServerHooks];
  v7 = [v5 initWithRemoteUIController:v4 hooks:v6];

  return v7;
}

- (void)loadRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  completion = self->_completion;
  v8 = a4;
  v9 = v8;
  if (completion)
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FACirclePresenter loadRequest:v10 completion:?];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1000 userInfo:0];
    v12 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:0 error:v11 userInfo:0];
    (v9)[2](v9, v12);
  }

  else
  {
    v13 = [v8 copy];

    v14 = self->_completion;
    self->_completion = v13;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__FACirclePresenter_loadRequest_completion___block_invoke;
    v15[3] = &unk_2782F2AF8;
    v15[4] = self;
    v16 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

- (void)setCustomRUIStyle:(id)a3
{
  objc_storeStrong(&self->_customRUIStyle, a3);
  v5 = a3;
  [(RemoteUIController *)self->_remoteUIController setStyle:self->_customRUIStyle];
}

- (void)circleRemoteUIDelegate:(id)a3 completedWithResponse:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 loadSuccess];
    v8 = [v5 error];
    v11[0] = 67109378;
    v11[1] = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "FACirclePresenter - FACircleRemoteUIDelegate completedWithSuccess: %d error: %@", v11, 0x12u);
  }

  if (self->_completion)
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "FACirclePresenter - we have a completion, calling back", v11, 2u);
    }

    (*(self->_completion + 2))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)circleRemoteUIDelegateDidPresent:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 circlePresenterDidPresent:self];
  }
}

- (FACirclePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end