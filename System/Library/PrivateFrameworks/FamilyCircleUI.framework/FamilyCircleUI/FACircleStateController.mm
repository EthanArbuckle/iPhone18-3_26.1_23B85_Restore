@interface FACircleStateController
- (BOOL)_contextRequiresRemoteService:(id)service;
- (BOOL)_processRequiresSpringBoardServices;
- (FACircleStateController)init;
- (FACircleStateController)initWithPresenter:(id)presenter;
- (FACircleStateController)initWithRequestConfigurator:(id)configurator presenter:(id)presenter circlePresenterFactory:(id)factory;
- (UIViewController)presenter;
- (void)_ensurePresenterWithCompletion:(id)completion;
- (void)_performOperationWithContext:(id)context viewController:(id)controller completion:(id)completion;
- (void)_presentFlowUsingSpringBoardWithContext:(id)context completion:(id)completion;
- (void)_presentPlatformUnsupportedAlertWithCompletion:(id)completion;
- (void)_presentViewServiceWithContext:(id)context viewController:(id)controller completion:(id)completion;
- (void)cancel;
- (void)circlePresenterDidPresent:(id)present;
- (void)dealloc;
- (void)performOperationWithContext:(id)context completion:(id)completion;
- (void)performWithContext:(id)context completion:(id)completion;
- (void)remoteViewControllerDidStartFlow:(id)flow;
- (void)setPresenter:(id)presenter;
@end

@implementation FACircleStateController

- (FACircleStateController)initWithRequestConfigurator:(id)configurator presenter:(id)presenter circlePresenterFactory:(id)factory
{
  configuratorCopy = configurator;
  presenterCopy = presenter;
  factoryCopy = factory;
  v20.receiver = self;
  v20.super_class = FACircleStateController;
  v12 = [(FACircleStateController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestConfigurator, configurator);
    objc_storeWeak(&v13->_presenter, presenterCopy);
    v14 = _Block_copy(factoryCopy);
    circlePresenterFactory = v13->_circlePresenterFactory;
    v13->_circlePresenterFactory = v14;

    v13->_isCanceled = 0;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v18 = 2;
    if (userInterfaceIdiom != 1)
    {
      v18 = -2;
    }

    v13->_modalPresentationStyle = v18;
  }

  return v13;
}

- (void)cancel
{
  [(FACircleStateController *)self setIsCanceled:1];
  circlePresenter = [(FACircleStateController *)self circlePresenter];
  [circlePresenter cancel];

  [(FACircleStateController *)self setCirclePresenter:0];
  completion = [(FACircleStateController *)self completion];

  if (completion)
  {
    v7 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1018];
    completion2 = [(FACircleStateController *)self completion];
    v6 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:0 error:v7 userInfo:0];
    (completion2)[2](completion2, v6);

    [(FACircleStateController *)self setCompletion:0];
  }
}

- (FACircleStateController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D082E8]);
  v4 = [(FACircleStateController *)self initWithRequestConfigurator:v3 presenter:0 circlePresenterFactory:&__block_literal_global_10];

  return v4;
}

FACirclePresenter *__31__FACircleStateController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FACirclePresenter alloc] initWithPresenter:v5 context:v4];

  return v6;
}

- (FACircleStateController)initWithPresenter:(id)presenter
{
  v4 = MEMORY[0x277D082E8];
  presenterCopy = presenter;
  v6 = objc_alloc_init(v4);
  v7 = [(FACircleStateController *)self initWithRequestConfigurator:v6 presenter:presenterCopy circlePresenterFactory:&__block_literal_global_22];

  return v7;
}

FACirclePresenter *__45__FACircleStateController_initWithPresenter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FACirclePresenter alloc] initWithPresenter:v5 context:v4];

  return v6;
}

- (void)performOperationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__FACircleStateController_performOperationWithContext_completion___block_invoke;
  v8[3] = &unk_2782F2E88;
  v9 = completionCopy;
  v7 = completionCopy;
  [(FACircleStateController *)self performWithContext:context completion:v8];
}

void __66__FACircleStateController_performOperationWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 loadSuccess];
    v5 = [v3 error];

    (*(v2 + 16))(v2, v4, v5);
  }
}

- (void)performWithContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = contextCopy;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Performing operation with context: %{private}@", buf, 0xCu);
  }

  [(FACircleStateController *)self setCompletion:completionCopy];
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__FACircleStateController_performWithContext_completion___block_invoke;
  aBlock[3] = &unk_2782F3658;
  objc_copyWeak(&v18, buf);
  v9 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__FACircleStateController_performWithContext_completion___block_invoke_2;
  v13[3] = &unk_2782F36F8;
  objc_copyWeak(&v16, buf);
  v10 = contextCopy;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  [(FACircleStateController *)self _ensurePresenterWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __57__FACircleStateController_performWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained completion];

  if (v4)
  {
    v5 = [WeakRetained completion];
    (v5)[2](v5, v6);
  }

  [WeakRetained setCompletion:0];
}

void __57__FACircleStateController_performWithContext_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!v5)
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "No presenter provided", buf, 2u);
    }
  }

  if ([a1[4] isPlatformSupported])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__FACircleStateController_performWithContext_completion___block_invoke_24;
    aBlock[3] = &unk_2782F36A8;
    objc_copyWeak(&v22, a1 + 6);
    v19 = a1[4];
    v9 = v5;
    v20 = v9;
    v21 = a1[5];
    v10 = _Block_copy(aBlock);
    if ([WeakRetained _contextRequiresRemoteService:a1[4]])
    {
      if ([WeakRetained _processRequiresSpringBoardServices])
      {
        v11 = _FALogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Presenting flow using springboard...", buf, 2u);
        }

        [WeakRetained _presentFlowUsingSpringBoardWithContext:a1[4] completion:a1[5]];
      }

      else
      {
        v14 = _FALogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Presenting flow using UIRemoteViewController...", buf, 2u);
        }

        [WeakRetained _presentViewServiceWithContext:a1[4] viewController:v9 completion:a1[5]];
      }
    }

    else
    {
      v12 = _FALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __57__FACircleStateController_performWithContext_completion___block_invoke_2_cold_1(v12);
      }

      v13 = a1[4];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__FACircleStateController_performWithContext_completion___block_invoke_27;
      v15[3] = &unk_2782F36D0;
      v16 = v10;
      v17 = a1[5];
      [WeakRetained _performOperationWithContext:v13 viewController:v9 completion:v15];
    }

    objc_destroyWeak(&v22);
  }

  else
  {
    [WeakRetained _presentPlatformUnsupportedAlertWithCompletion:a1[5]];
  }
}

void __57__FACircleStateController_performWithContext_completion___block_invoke_24(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Renewing credentials and trying operation one more time...", buf, 2u);
  }

  v8 = [WeakRetained requestConfigurator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__FACircleStateController_performWithContext_completion___block_invoke_25;
  v10[3] = &unk_2782F3680;
  objc_copyWeak(&v15, a1 + 7);
  v11 = a1[4];
  v12 = a1[5];
  v14 = a1[6];
  v16 = a2;
  v9 = v5;
  v13 = v9;
  [v8 renewCredentialsWithCompletion:v10];

  objc_destroyWeak(&v15);
}

void __57__FACircleStateController_performWithContext_completion___block_invoke_25(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _performOperationWithContext:*(a1 + 32) viewController:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:*(a1 + 72) error:*(a1 + 48) userInfo:0];
    (*(*(a1 + 56) + 16))();
  }
}

void __57__FACircleStateController_performWithContext_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 error];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D080C0]];

  v6 = [v3 domain];
  if ([v6 isEqualToString:*MEMORY[0x277D080B8]] && objc_msgSend(v3, "code") == -1002)
  {
    v7 = [v5 statusCode];

    if (v7 == 401)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 loadSuccess], v3);
      goto LABEL_7;
    }
  }

  else
  {
  }

  (*(*(a1 + 40) + 16))();
LABEL_7:
}

- (void)_presentPlatformUnsupportedAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  presenter = [(FACircleStateController *)self presenter];
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FEATURE_NOT_SUPPORTED_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FEATURE_NOT_SUPPORTED_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
  v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D755B8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v11 imageNamed:@"family" inBundle:v12];

  [v10 setImage:v13];
  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__FACircleStateController__presentPlatformUnsupportedAlertWithCompletion___block_invoke;
  v20[3] = &unk_2782F35B8;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v20];
  [v10 addAction:v18];

  [presenter presentViewController:v10 animated:1 completion:0];
}

void __74__FACircleStateController__presentPlatformUnsupportedAlertWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1003];
  v2 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:0 error:v3 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_ensurePresenterWithCompletion:(id)completion
{
  completionCopy = completion;
  presenter = [(FACircleStateController *)self presenter];
  if (presenter)
  {
    completionCopy[2](completionCopy, presenter, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v5);
  }
}

- (void)setPresenter:(id)presenter
{
  presenterCopy = presenter;
  objc_storeWeak(&self->_presenter, presenterCopy);
  [(FACirclePresenter *)self->_circlePresenter setPresenter:presenterCopy];
}

- (BOOL)_contextRequiresRemoteService:(id)service
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    presentationType = [(FACircleStateController *)self presentationType];
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "presentationtype: %lu", &v16, 0xCu);
  }

  if ([(FACircleStateController *)self presentationType]== 1)
  {
    v6 = 0;
  }

  else if ([(FACircleStateController *)self presentationType]== 2 || [(FACircleStateController *)self presentationType]== 3)
  {
    v6 = 1;
  }

  else
  {
    _whitelistedInProcessClients = [(FACircleStateController *)self _whitelistedInProcessClients];
    clientBundleID = [serviceCopy clientBundleID];
    lowercaseString = [clientBundleID lowercaseString];
    v10 = [_whitelistedInProcessClients containsObject:lowercaseString];

    v11 = _FALogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        clientBundleID2 = [serviceCopy clientBundleID];
        v16 = 138412290;
        presentationType = clientBundleID2;
        _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "%@ is allowed in process UI", &v16, 0xCu);
      }
    }

    else if (v12)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Context requires remote service", &v16, 2u);
    }

    v6 = v10 ^ 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_processRequiresSpringBoardServices
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v4 = ([mEMORY[0x277D75128] isSuspended] & 1) != 0 || -[FACircleStateController presentationType](self, "presentationType") == 3;

  return v4;
}

- (void)_presentFlowUsingSpringBoardWithContext:(id)context completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v13 = @"FARemoteAlertServiceUserInfoContextData";
  dataRepresentation = [context dataRepresentation];
  v14[0] = dataRepresentation;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v8 = objc_alloc_init(MEMORY[0x277D082C0]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__FACircleStateController__presentFlowUsingSpringBoardWithContext_completion___block_invoke;
  v11[3] = &unk_2782F2E88;
  v12 = completionCopy;
  v9 = completionCopy;
  [v8 launchOutOfProcessUIWithOptions:v7 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __78__FACircleStateController__presentFlowUsingSpringBoardWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__FACircleStateController__presentFlowUsingSpringBoardWithContext_completion___block_invoke_2;
  v6[3] = &unk_2782F2F70;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __78__FACircleStateController__presentFlowUsingSpringBoardWithContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_presentViewServiceWithContext:(id)context viewController:(id)controller completion:(id)completion
{
  contextCopy = context;
  controllerCopy = controller;
  completionCopy = completion;
  modalPresentationStyle = self->_modalPresentationStyle;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__FACircleStateController__presentViewServiceWithContext_viewController_completion___block_invoke;
  v16[3] = &unk_2782F3720;
  v19 = completionCopy;
  v20 = modalPresentationStyle;
  v16[4] = self;
  v17 = contextCopy;
  v18 = controllerCopy;
  v12 = controllerCopy;
  v13 = contextCopy;
  v14 = completionCopy;
  v15 = [FARemoteViewController requestViewControllerWithCompletion:v16];
}

void __84__FACircleStateController__presentViewServiceWithContext_viewController_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [v8 setModalPresentationStyle:a1[8]];
  if (v5)
  {
    v6 = a1[7];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:0 error:v5 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    [v8 setDelegate:a1[4]];
    [v8 startFlowWithContext:a1[5] viewController:a1[6] completion:a1[7]];
  }
}

- (void)_performOperationWithContext:(id)context viewController:(id)controller completion:(id)completion
{
  contextCopy = context;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  requestConfigurator = [(FACircleStateController *)self requestConfigurator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke;
  v14[3] = &unk_2782F3770;
  objc_copyWeak(&v18, &location);
  v12 = contextCopy;
  v15 = v12;
  v13 = completionCopy;
  selfCopy = self;
  v17 = v13;
  [requestConfigurator requestForContext:v12 withCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!v5)
  {
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke_cold_1(a1, v12);
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D080B8];
    v11 = -1001;
    goto LABEL_7;
  }

  if ([WeakRetained isCanceled])
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D080B8];
    v11 = -1018;
LABEL_7:
    v13 = [v9 errorWithDomain:v10 code:v11 userInfo:0];
    v14 = *(a1 + 48);
    v15 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:0 error:v13 userInfo:0];
    (*(v14 + 16))(v14, v15);

    goto LABEL_11;
  }

  v16 = [v8 circlePresenterFactory];
  v17 = [v8 presenter];
  v18 = (v16)[2](v16, v17, *(a1 + 32));
  [v8 setCirclePresenter:v18];

  v19 = [v8 customRUIStyle];

  if (v19)
  {
    v20 = [v8 circlePresenter];
    v21 = [v8 customRUIStyle];
    [v20 setCustomRUIStyle:v21];
  }

  v22 = *(a1 + 40);
  v23 = [v8 circlePresenter];
  [v23 setDelegate:v22];

  v24 = [v8 circlePresenter];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke_69;
  v25[3] = &unk_2782F3748;
  objc_copyWeak(&v28, (a1 + 56));
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  [v24 loadRequest:v5 completion:v25];

  objc_destroyWeak(&v28);
LABEL_11:
}

void __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke_69(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCirclePresenter:0];
  v5 = [v3 loadSuccess];
  v6 = _FALogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138477827;
      v11 = v8;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Successfully completed flow for context: %{private}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke_69_cold_1(a1, v3, v7);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)remoteViewControllerDidStartFlow:(id)flow
{
  presentationHandler = self->_presentationHandler;
  if (presentationHandler)
  {
    presentationHandler[2]();
  }
}

- (void)circlePresenterDidPresent:(id)present
{
  presentationHandler = self->_presentationHandler;
  if (presentationHandler)
  {
    presentationHandler[2](presentationHandler, a2, present);
    v5 = self->_presentationHandler;
    self->_presentationHandler = 0;
  }
}

- (UIViewController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

void __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) eventType];
  v5 = 138477827;
  v6 = v3;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Failed to find URL for event type: %{private}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __82__FACircleStateController__performOperationWithContext_viewController_completion___block_invoke_69_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 error];
  v7 = 138478083;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_21BB35000, a3, OS_LOG_TYPE_ERROR, "Failed to complete flow for context: %{private}@, error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end