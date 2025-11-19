@interface CRSUIStatusBarStyleAssertion
- (BOOL)isValid;
- (CRSUIStatusBarStyleAssertion)initWithInterfaceStyle:(int64_t)a3 contrast:(int64_t)a4;
- (id)_initWithInterfaceStyle:(int64_t)a3 colorVariant:(int64_t)a4 siriPresentation:(BOOL)a5 standByScreen:(BOOL)a6;
- (void)_handleConnectionActivated;
- (void)acquireWithAnimationSettings:(id)a3;
- (void)invalidate;
- (void)relinquishWithAnimationSettings:(id)a3;
@end

@implementation CRSUIStatusBarStyleAssertion

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  lock_acquired = self->_lock_acquired;
  os_unfair_lock_unlock(&self->_lock);
  return lock_acquired;
}

- (void)_handleConnectionActivated
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_pendingAcquire)
  {
    self->_lock_pendingAcquire = 0;
    if ([(CRSUIStatusBarStyleAssertion *)self siriPresentation])
    {
      v3 = CRSUILogForCategory(1uLL);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for Siri presentation", v13, 2u);
      }

      v4 = [(CRSUIStatusBarStyleAssertion *)self connection];
      v5 = [v4 remoteTarget];
      [v5 clientAcquireForSiriPresentationWithFenceHandle:self->_lock_pendingAcquireFence animationSettings:self->_lock_pendingAcquireAnimationSettings];
    }

    else if ([(CRSUIStatusBarStyleAssertion *)self standByScreen])
    {
      v6 = CRSUILogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_243218000, v6, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for StandBy screen", v13, 2u);
      }

      v4 = [(CRSUIStatusBarStyleAssertion *)self connection];
      v5 = [v4 remoteTarget];
      [v5 clientAcquireForStandByScreenWithFenceHandle:self->_lock_pendingAcquireFence animationSettings:self->_lock_pendingAcquireAnimationSettings];
    }

    else
    {
      if ([(CRSUIStatusBarStyleAssertion *)self interfaceStyle])
      {
        v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRSUIStatusBarStyleAssertion interfaceStyle](self, "interfaceStyle")}];
      }

      else
      {
        v4 = 0;
      }

      if ([(CRSUIStatusBarStyleAssertion *)self colorVariant]== -1)
      {
        v5 = 0;
      }

      else
      {
        v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRSUIStatusBarStyleAssertion colorVariant](self, "colorVariant")}];
      }

      v7 = CRSUILogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67109376;
        v13[1] = [(CRSUIStatusBarStyleAssertion *)self interfaceStyle];
        v14 = 1024;
        v15 = [(CRSUIStatusBarStyleAssertion *)self colorVariant];
        _os_log_impl(&dword_243218000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for interface style: %d, contrast: %d", v13, 0xEu);
      }

      v8 = [(CRSUIStatusBarStyleAssertion *)self connection];
      v9 = [v8 remoteTarget];
      [v9 clientAcquireWithInterfaceStyle:v4 colorVariant:v5 fenceHandle:self->_lock_pendingAcquireFence animationSettings:self->_lock_pendingAcquireAnimationSettings];
    }

    lock_pendingAcquireFence = self->_lock_pendingAcquireFence;
    self->_lock_pendingAcquireFence = 0;

    lock_pendingAcquireAnimationSettings = self->_lock_pendingAcquireAnimationSettings;
    self->_lock_pendingAcquireAnimationSettings = 0;

    self->_lock_acquired = 1;
  }

  self->_lock_connectionActivated = 1;
  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (CRSUIStatusBarStyleAssertion)initWithInterfaceStyle:(int64_t)a3 contrast:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return [(CRSUIStatusBarStyleAssertion *)self _initWithInterfaceStyle:a3 colorVariant:v5 siriPresentation:0 standByScreen:0];
}

- (id)_initWithInterfaceStyle:(int64_t)a3 colorVariant:(int64_t)a4 siriPresentation:(BOOL)a5 standByScreen:(BOOL)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = CRSUIStatusBarStyleAssertion;
  v10 = [(CRSUIStatusBarStyleAssertion *)&v29 init];
  v11 = v10;
  if (v10)
  {
    v10->_interfaceStyle = a3;
    v10->_colorVariant = a4;
    v10->_siriPresentation = a5;
    v10->_standByScreen = a6;
    v12 = [MEMORY[0x277CCAD78] UUID];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v11->_lock._os_unfair_lock_opaque = 0;
    v14 = MEMORY[0x277CF3288];
    v15 = +[CRSUIStatusBarStyleSpecification identifier];
    v16 = [(NSUUID *)v11->_identifier UUIDString];
    v17 = [v14 endpointForMachName:@"com.apple.CarPlayApp.status-bar-service" service:v15 instance:v16];

    v18 = [MEMORY[0x277CF3280] connectionWithEndpoint:v17];
    connection = v11->_connection;
    v11->_connection = v18;

    objc_initWeak(&location, v11);
    v20 = v11->_connection;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke;
    v25[3] = &unk_278DA0B58;
    v26 = v11;
    objc_copyWeak(&v27, &location);
    [(BSServiceConnection *)v20 configureConnection:v25];
    v21 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v11->_connection;
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&dword_243218000, v21, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v11->_connection activate];
    objc_destroyWeak(&v27);

    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

void __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIStatusBarStyleSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIStatusBarStyleSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_2;
  v6[3] = &unk_278DA0BD0;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setActivationHandler:v6];
  [v3 setInterruptionHandler:&__block_literal_global_2];
  [v3 setInvalidationHandler:&__block_literal_global_8_1];
  objc_destroyWeak(&v7);
}

void __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSUILogForCategory(1uLL);
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

void __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_5_cold_1(v2, v3);
  }
}

void __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v2, v3);
  }
}

- (void)acquireWithAnimationSettings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_lock);
  v6 = [MEMORY[0x277D75DA8] _synchronizedDrawingFence];
  if (self->_lock_connectionActivated && !self->_lock_invalidated)
  {
    if ([(CRSUIStatusBarStyleAssertion *)self siriPresentation])
    {
      v7 = CRSUILogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_243218000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for Siri presentation", v15, 2u);
      }

      v8 = [(CRSUIStatusBarStyleAssertion *)self connection];
      v9 = [v8 remoteTarget];
      [v9 clientAcquireForSiriPresentationWithFenceHandle:v6 animationSettings:v5];
    }

    else if ([(CRSUIStatusBarStyleAssertion *)self standByScreen])
    {
      v10 = CRSUILogForCategory(1uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_243218000, v10, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for StandBy screen", v15, 2u);
      }

      v8 = [(CRSUIStatusBarStyleAssertion *)self connection];
      v9 = [v8 remoteTarget];
      [v9 clientAcquireForStandByScreenWithFenceHandle:v6 animationSettings:v5];
    }

    else
    {
      if ([(CRSUIStatusBarStyleAssertion *)self interfaceStyle])
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRSUIStatusBarStyleAssertion interfaceStyle](self, "interfaceStyle")}];
      }

      else
      {
        v8 = 0;
      }

      if ([(CRSUIStatusBarStyleAssertion *)self colorVariant]== -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRSUIStatusBarStyleAssertion colorVariant](self, "colorVariant")}];
      }

      v11 = CRSUILogForCategory(1uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 67109376;
        v15[1] = [(CRSUIStatusBarStyleAssertion *)self interfaceStyle];
        v16 = 1024;
        v17 = [(CRSUIStatusBarStyleAssertion *)self colorVariant];
        _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for interface style: %d, color variant: %d", v15, 0xEu);
      }

      v12 = [(CRSUIStatusBarStyleAssertion *)self connection];
      v13 = [v12 remoteTarget];
      [v13 clientAcquireWithInterfaceStyle:v8 colorVariant:v9 fenceHandle:v6 animationSettings:v5];
    }

    self->_lock_acquired = 1;
  }

  else
  {
    self->_lock_pendingAcquire = 1;
    objc_storeStrong(&self->_lock_pendingAcquireFence, v6);
    objc_storeStrong(&self->_lock_pendingAcquireAnimationSettings, a3);
  }

  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)relinquishWithAnimationSettings:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_lock);
  v5 = [MEMORY[0x277D75DA8] _synchronizedDrawingFence];
  if (self->_lock_acquired && !self->_lock_invalidated)
  {
    v6 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_243218000, v6, OS_LOG_TYPE_DEFAULT, "Relinquishing status bar style assertion", v9, 2u);
    }

    v7 = [(CRSUIStatusBarStyleAssertion *)self connection];
    v8 = [v7 remoteTarget];
    [v8 clientReliquishWithFenceHandle:v5 animationSettings:v4];

    self->_lock_acquired = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->_connection;
      v6 = 138412290;
      v7 = connection;
      _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection! %@", &v6, 0xCu);
    }

    [(BSServiceConnection *)self->_connection invalidate];
    self->_lock_invalidated = 1;
    self->_lock_acquired = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__CRSUIStatusBarStyleAssertion__initWithInterfaceStyle_colorVariant_siriPresentation_standByScreen___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Connection interrupted! %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end