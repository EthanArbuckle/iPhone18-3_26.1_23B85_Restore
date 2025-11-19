@interface LACUISceneHostingController
- (LACUISceneHostingController)initWithConfiguration:(id)a3;
- (LACUISceneHostingControllerDelegate)sceneConnectionDelegate;
- (void)_sendConnectionEndpoint;
- (void)clientIsReady;
- (void)hostingControllerDidReconnect:(id)a3;
- (void)prepareRemoteSceneWithCompletion:(id)a3;
- (void)sendAction:(id)a3 completion:(id)a4;
@end

@implementation LACUISceneHostingController

- (LACUISceneHostingController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACUISceneHostingController;
  v6 = [(LACUISceneHostingController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (void)prepareRemoteSceneWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__LACUISceneHostingController_prepareRemoteSceneWithCompletion___block_invoke;
  aBlock[3] = &unk_27981E770;
  v5 = v4;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  if (self->_sceneHostingController)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ was already configured", self];
    v8 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v7];
    v6[2](v6, v8);
  }

  else
  {
    [(LACUISceneHostingController *)self _setDefaultContentSize];
    v9 = _Block_copy(v6);
    preparationHandler = self->_preparationHandler;
    self->_preparationHandler = v9;

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__LACUISceneHostingController_prepareRemoteSceneWithCompletion___block_invoke_2;
    block[3] = &unk_27981E848;
    objc_copyWeak(&v15, &location);
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v11 = LACLogUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(LACAngelHostedSceneConfiguration *)self->_configuration sceneIdentifier];
      *buf = 138412546;
      v20 = self;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_256063000, v11, OS_LOG_TYPE_DEFAULT, "%@ preparing remote scene: %@", buf, 0x16u);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __64__LACUISceneHostingController_prepareRemoteSceneWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__LACUISceneHostingController_prepareRemoteSceneWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D46F60];
    v35 = WeakRetained;
    v4 = [WeakRetained[127] angelIdentifier];
    v5 = [v3 identityForAngelJobLabel:v4];

    v6 = [[LACUIHostedSceneSpecification alloc] initWithConfiguration:v35[127]];
    v7 = [objc_alloc(MEMORY[0x277D761E0]) initWithProcessIdentity:v5 sceneSpecification:v6];
    [v7 setDelegate:*(a1 + 32)];
    v8 = objc_alloc_init(MEMORY[0x277D761F0]);
    [v8 setDelegate:*(a1 + 32)];
    [v7 setActivationController:v8];
    v9 = v35[126];
    v35[126] = v7;

    v10 = [v35 _remoteView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [v35 view];
    v12 = [v35 _remoteView];
    [v11 addSubview:v12];

    v13 = [v35 _remoteView];
    v14 = [v13 topAnchor];
    v15 = [v35 view];
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [v35 _remoteView];
    v19 = [v18 bottomAnchor];
    v20 = [v35 view];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [v35 _remoteView];
    v24 = [v23 leadingAnchor];
    v25 = [v35 view];
    v26 = [v25 leadingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [v35 _remoteView];
    v29 = [v28 trailingAnchor];
    v30 = [v35 view];
    v31 = [v30 trailingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = [v35 _remoteViewController];
    [v35 addChildViewController:v33];

    v34 = [v35 _remoteViewController];
    [v34 didMoveToParentViewController:v35];

    [v35 _sendConnectionEndpoint];
    WeakRetained = v35;
  }
}

- (void)sendAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LACUIHostedSceneActionHostToClient alloc] initWithAction:v7 completion:v6];

  [(_UISceneHostingController *)self->_sceneHostingController sendAction:v8];
}

- (void)clientIsReady
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = LACLogUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(LACAngelHostedSceneConfiguration *)self->_configuration sceneIdentifier];
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_256063000, v3, OS_LOG_TYPE_DEFAULT, "%@ prepared remote scene: %@", &v8, 0x16u);
  }

  preparationHandler = self->_preparationHandler;
  if (preparationHandler)
  {
    preparationHandler[2](preparationHandler, 0);
    v6 = self->_preparationHandler;
    self->_preparationHandler = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)hostingControllerDidReconnect:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_didConnect)
  {
    v5 = LACLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "%@ hosting controller did reconnect: %@", &v10, 0x16u);
    }

    v6 = [(LACUISceneHostingController *)self sceneConnectionDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(LACUISceneHostingController *)self sceneConnectionDelegate];
      [v8 sceneHostingControllerDidReconnect:self];
    }
  }

  else
  {
    self->_didConnect = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendConnectionEndpoint
{
  v3 = [(LACAngelHostedSceneConfiguration *)self->_configuration connectionEndpoint];

  if (v3)
  {
    v4 = [LACUIHostedSceneAction alloc];
    v5 = [(LACAngelHostedSceneConfiguration *)self->_configuration connectionEndpoint];
    v6 = [v5 _endpoint];
    v8 = [(LACUIHostedSceneAction *)v4 initWithRawIdentifier:1001 value:v6];

    [(LACUISceneHostingController *)self sendAction:v8 completion:&__block_literal_global_4];
  }

  else
  {
    v7 = LACLogUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_256063000, v7, OS_LOG_TYPE_DEFAULT, "No connection endpoint to be sent", buf, 2u);
    }
  }
}

void __54__LACUISceneHostingController__sendConnectionEndpoint__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %@", v2];
  }

  else
  {
    v3 = @"success";
  }

  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_DEFAULT, "Did send connection endpoint with %@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (LACUISceneHostingControllerDelegate)sceneConnectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneConnectionDelegate);

  return WeakRetained;
}

@end