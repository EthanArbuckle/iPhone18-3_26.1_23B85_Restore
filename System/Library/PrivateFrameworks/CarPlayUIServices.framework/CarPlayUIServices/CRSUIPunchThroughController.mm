@interface CRSUIPunchThroughController
- (CRSUIPunchThroughController)initWithPunchThroughIdentifier:(id)a3;
- (CRSUIPunchThroughControllerDelegate)delegate;
- (void)_handleConnectionActivated;
- (void)invalidate;
- (void)requestDismissalWithCompletion:(id)a3;
- (void)requestPresentationWithCompletion:(id)a3;
- (void)serverDismissedPunchThroughIdentifier:(id)a3;
@end

@implementation CRSUIPunchThroughController

- (CRSUIPunchThroughController)initWithPunchThroughIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = CRSUIPunchThroughController;
  v6 = [(CRSUIPunchThroughController *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_punchThroughIdentifier, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = MEMORY[0x277CF3288];
    v9 = +[CRSUIPunchThroughSpecification identifier];
    v10 = [v8 endpointForMachName:@"com.apple.CarPlayApp.punch-through-service" service:v9 instance:0];

    v11 = [MEMORY[0x277CF3280] connectionWithEndpoint:v10];
    connection = v7->_connection;
    v7->_connection = v11;

    objc_initWeak(&location, v7);
    v13 = v7->_connection;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __62__CRSUIPunchThroughController_initWithPunchThroughIdentifier___block_invoke;
    v21 = &unk_278DA0CF0;
    objc_copyWeak(&v22, &location);
    [(BSServiceConnection *)v13 configureConnection:&v18];
    v14 = CRSUILogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v7->_connection;
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_243218000, v14, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v7->_connection activate:v18];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void __62__CRSUIPunchThroughController_initWithPunchThroughIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIPunchThroughSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIPunchThroughSpecification interface];
  [v3 setInterface:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setInterfaceTarget:WeakRetained];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__CRSUIPunchThroughController_initWithPunchThroughIdentifier___block_invoke_2;
  v7[3] = &unk_278DA0BD0;
  objc_copyWeak(&v8, (a1 + 32));
  [v3 setActivationHandler:v7];
  [v3 setInterruptionHandler:&__block_literal_global_10];
  [v3 setInvalidationHandler:&__block_literal_global_7];
  objc_destroyWeak(&v8);
}

void __62__CRSUIPunchThroughController_initWithPunchThroughIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSUILogForCategory(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Connection activated! %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionActivated];

  v6 = *MEMORY[0x277D85DE8];
}

void __62__CRSUIPunchThroughController_initWithPunchThroughIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(5uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_5_cold_1(v2, v3);
  }
}

void __62__CRSUIPunchThroughController_initWithPunchThroughIdentifier___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(5uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v2, v3);
  }
}

- (void)requestPresentationWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  if (self->_lock_connectionActivated)
  {
    if (!self->_lock_invalidated)
    {
      v6 = [(CRSUIPunchThroughController *)self connection];
      v7 = [v6 remoteTarget];
      v8 = [(CRSUIPunchThroughController *)self punchThroughIdentifier];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __65__CRSUIPunchThroughController_requestPresentationWithCompletion___block_invoke;
      v11[3] = &unk_278DA0E70;
      v12 = v4;
      [v7 clientRequestPresentationForPunchThroughIdentifier:v8 completion:v11];

      lock_pendingPresentationCompletion = v12;
LABEL_6:
    }
  }

  else if (!self->_lock_invalidated)
  {
    self->_lock_hasPendingPresentationRequest = 1;
    v10 = MEMORY[0x245D2CF20](v4);
    lock_pendingPresentationCompletion = self->_lock_pendingPresentationCompletion;
    self->_lock_pendingPresentationCompletion = v10;
    goto LABEL_6;
  }

  self->_lock_presented = 1;
  os_unfair_lock_unlock(&self->_lock);
}

void __65__CRSUIPunchThroughController_requestPresentationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CRSUIPunchThroughController_requestPresentationWithCompletion___block_invoke_2;
  v6[3] = &unk_278DA0E98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __65__CRSUIPunchThroughController_requestPresentationWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

- (void)requestDismissalWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_connectionActivated && !self->_lock_invalidated && self->_lock_presented)
  {
    v5 = [(CRSUIPunchThroughController *)self connection];
    v6 = [v5 remoteTarget];
    v7 = [(CRSUIPunchThroughController *)self punchThroughIdentifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CRSUIPunchThroughController_requestDismissalWithCompletion___block_invoke;
    v8[3] = &unk_278DA0E70;
    v9 = v4;
    [v6 clientRequestDismissalForPunchThroughIdentifier:v7 completion:v8];
  }

  self->_lock_presented = 0;
  os_unfair_lock_unlock(&self->_lock);
}

void __62__CRSUIPunchThroughController_requestDismissalWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CRSUIPunchThroughController_requestDismissalWithCompletion___block_invoke_2;
  v6[3] = &unk_278DA0E98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __62__CRSUIPunchThroughController_requestDismissalWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSUILogForCategory(5uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->_connection;
      v6 = 138412290;
      v7 = connection;
      _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection! %@", &v6, 0xCu);
    }

    [(BSServiceConnection *)self->_connection invalidate];
    self->_lock_invalidated = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)serverDismissedPunchThroughIdentifier:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_presented = 0;
  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CRSUIPunchThroughController_serverDismissedPunchThroughIdentifier___block_invoke;
  block[3] = &unk_278DA0FC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__CRSUIPunchThroughController_serverDismissedPunchThroughIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 punchThroughControllerDidDismiss:*(a1 + 32)];
}

- (void)_handleConnectionActivated
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_hasPendingPresentationRequest)
  {
    v3 = MEMORY[0x245D2CF20](self->_lock_pendingPresentationCompletion);
    v4 = [(CRSUIPunchThroughController *)self connection];
    v5 = [v4 remoteTarget];
    v6 = [(CRSUIPunchThroughController *)self punchThroughIdentifier];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__CRSUIPunchThroughController__handleConnectionActivated__block_invoke;
    v9[3] = &unk_278DA0E70;
    v10 = v3;
    v7 = v3;
    [v5 clientRequestPresentationForPunchThroughIdentifier:v6 completion:v9];

    self->_lock_hasPendingPresentationRequest = 0;
    lock_pendingPresentationCompletion = self->_lock_pendingPresentationCompletion;
    self->_lock_pendingPresentationCompletion = 0;
  }

  self->_lock_connectionActivated = 1;
  os_unfair_lock_unlock(&self->_lock);
}

void __57__CRSUIPunchThroughController__handleConnectionActivated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CRSUIPunchThroughController__handleConnectionActivated__block_invoke_2;
  v6[3] = &unk_278DA0E98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __57__CRSUIPunchThroughController__handleConnectionActivated__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

- (CRSUIPunchThroughControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end