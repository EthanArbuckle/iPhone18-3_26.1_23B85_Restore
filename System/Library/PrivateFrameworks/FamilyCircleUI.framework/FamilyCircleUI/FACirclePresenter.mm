@interface FACirclePresenter
- (FACirclePresenter)init;
- (FACirclePresenter)initWithPresenter:(id)presenter context:(id)context;
- (FACirclePresenterDelegate)delegate;
- (id)_serverHookHandlerWithRemoteUIController:(id)controller;
- (void)cancel;
- (void)circleRemoteUIDelegate:(id)delegate completedWithResponse:(id)response;
- (void)circleRemoteUIDelegateDidPresent:(id)present;
- (void)loadRequest:(id)request completion:(id)completion;
- (void)setCustomRUIStyle:(id)style;
- (void)setPresenter:(id)presenter;
@end

@implementation FACirclePresenter

- (FACirclePresenter)init
{
  [(FACirclePresenter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FACirclePresenter)initWithPresenter:(id)presenter context:(id)context
{
  presenterCopy = presenter;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = FACirclePresenter;
  v9 = [(FACirclePresenter *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    v11 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIController = v10->_remoteUIController;
    v10->_remoteUIController = v11;

    [(RemoteUIController *)v10->_remoteUIController fa_registerFamilyRUIViews];
    [(RemoteUIController *)v10->_remoteUIController setHostViewController:v10->_presenter];
    urlSessionConfiguration = [contextCopy urlSessionConfiguration];
    if (urlSessionConfiguration)
    {
      [(RemoteUIController *)v10->_remoteUIController setSessionConfiguration:urlSessionConfiguration];
    }

    v14 = [[FAProfilePictureStore alloc] initWithFamilyCircle:0];
    familyPictureStore = v10->_familyPictureStore;
    v10->_familyPictureStore = v14;

    v16 = [FACircleRemoteUIDelegate alloc];
    v17 = [(FACirclePresenter *)v10 _serverHookHandlerWithRemoteUIController:v10->_remoteUIController];
    v18 = [(FACircleRemoteUIDelegate *)v16 initWithContext:contextCopy serverHookHandler:v17 pictureStore:v10->_familyPictureStore];
    remoteUIDelegate = v10->_remoteUIDelegate;
    v10->_remoteUIDelegate = v18;

    [(FACircleRemoteUIDelegate *)v10->_remoteUIDelegate setDelegate:v10];
    [(FACircleRemoteUIDelegate *)v10->_remoteUIDelegate configureHookHandlersForRUIController:v10->_remoteUIController];
    [(RemoteUIController *)v10->_remoteUIController setDelegate:v10->_remoteUIDelegate];
  }

  return v10;
}

- (void)setPresenter:(id)presenter
{
  objc_storeStrong(&self->_presenter, presenter);
  presenterCopy = presenter;
  [(RemoteUIController *)self->_remoteUIController setHostViewController:self->_presenter];
}

- (void)cancel
{
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_serverHookHandlerWithRemoteUIController:(id)controller
{
  v3 = MEMORY[0x277CECAC0];
  controllerCopy = controller;
  v5 = [v3 alloc];
  fcui_defaultFresnoServerHooks = [MEMORY[0x277CECAC0] fcui_defaultFresnoServerHooks];
  v7 = [v5 initWithRemoteUIController:controllerCopy hooks:fcui_defaultFresnoServerHooks];

  return v7;
}

- (void)loadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completion = self->_completion;
  completionCopy = completion;
  v9 = completionCopy;
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
    v13 = [completionCopy copy];

    v14 = self->_completion;
    self->_completion = v13;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__FACirclePresenter_loadRequest_completion___block_invoke;
    v15[3] = &unk_2782F2AF8;
    v15[4] = self;
    v16 = requestCopy;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

- (void)setCustomRUIStyle:(id)style
{
  objc_storeStrong(&self->_customRUIStyle, style);
  styleCopy = style;
  [(RemoteUIController *)self->_remoteUIController setStyle:self->_customRUIStyle];
}

- (void)circleRemoteUIDelegate:(id)delegate completedWithResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    loadSuccess = [responseCopy loadSuccess];
    error = [responseCopy error];
    v11[0] = 67109378;
    v11[1] = loadSuccess;
    v12 = 2112;
    v13 = error;
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

- (void)circleRemoteUIDelegateDidPresent:(id)present
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