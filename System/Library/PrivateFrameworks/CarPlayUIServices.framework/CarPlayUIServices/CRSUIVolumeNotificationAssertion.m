@interface CRSUIVolumeNotificationAssertion
- (BOOL)isValid;
- (CRSUIVolumeNotificationAssertion)init;
- (void)_handleConnectionActivated;
- (void)cancelSuspension;
- (void)invalidate;
- (void)suspendNotifications;
@end

@implementation CRSUIVolumeNotificationAssertion

- (CRSUIVolumeNotificationAssertion)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = CRSUIVolumeNotificationAssertion;
  v2 = [(CRSUIVolumeNotificationAssertion *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = MEMORY[0x277CF3288];
    v6 = +[CRSUIVolumeNotificationSpecification identifier];
    v7 = [(NSUUID *)v2->_identifier UUIDString];
    v8 = [v5 endpointForMachName:@"com.apple.CarPlayApp.volume-notification-service" service:v6 instance:v7];

    v9 = [MEMORY[0x277CF3280] connectionWithEndpoint:v8];
    connection = v2->_connection;
    v2->_connection = v9;

    objc_initWeak(&location, v2);
    v11 = v2->_connection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__CRSUIVolumeNotificationAssertion_init__block_invoke;
    v16[3] = &unk_278DA0B58;
    v17 = v2;
    objc_copyWeak(&v18, &location);
    [(BSServiceConnection *)v11 configureConnection:v16];
    v12 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v2->_connection;
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_243218000, v12, OS_LOG_TYPE_DEFAULT, "Volume notification activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection activate];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void __40__CRSUIVolumeNotificationAssertion_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIVolumeNotificationSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIVolumeNotificationSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CRSUIVolumeNotificationAssertion_init__block_invoke_2;
  v6[3] = &unk_278DA0BD0;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setActivationHandler:v6];
  [v3 setInterruptionHandler:&__block_literal_global_1];
  [v3 setInvalidationHandler:&__block_literal_global_8_0];
  objc_destroyWeak(&v7);
}

void __40__CRSUIVolumeNotificationAssertion_init__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSUILogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Volume notification connection activated! %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionActivated];

  v6 = *MEMORY[0x277D85DE8];
}

void __40__CRSUIVolumeNotificationAssertion_init__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__CRSUIVolumeNotificationAssertion_init__block_invoke_5_cold_1(v2, v3);
  }
}

void __40__CRSUIVolumeNotificationAssertion_init__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSUILogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__CRSUIVolumeNotificationAssertion_init__block_invoke_6_cold_1(v2, v3);
  }
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  lock_acquired = self->_lock_acquired;
  os_unfair_lock_unlock(&self->_lock);
  return lock_acquired;
}

- (void)suspendNotifications
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_connectionActivated && !self->_lock_invalidated)
  {
    v4 = CRSUILogForCategory(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Acquiring assertion", v7, 2u);
    }

    v5 = [(CRSUIVolumeNotificationAssertion *)self connection];
    v6 = [v5 remoteTarget];
    [v6 clientSuspendNotifications];

    v3 = 12;
  }

  else
  {
    v3 = 15;
  }

  *(&self->super.isa + v3) = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancelSuspension
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_acquired && !self->_lock_invalidated)
  {
    v3 = CRSUILogForCategory(2uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CRSUIVolumeNotificationAssertion *)self connection];
      v5 = [(CRSUIVolumeNotificationAssertion *)self connection];
      v6 = [v5 remoteTarget];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Relinquishing volume notification assertion connection: %@. Remote target: %@", &v10, 0x16u);
    }

    v7 = [(CRSUIVolumeNotificationAssertion *)self connection];
    v8 = [v7 remoteTarget];
    [v8 clientCancelSuspension];

    self->_lock_acquired = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSUILogForCategory(2uLL);
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

- (void)_handleConnectionActivated
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_pendingAcquire)
  {
    self->_lock_pendingAcquire = 0;
    v3 = CRSUILogForCategory(2uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Acquiring volume notification assertion", v6, 2u);
    }

    v4 = [(CRSUIVolumeNotificationAssertion *)self connection];
    v5 = [v4 remoteTarget];
    [v5 clientSuspendNotifications];

    self->_lock_acquired = 1;
  }

  self->_lock_connectionActivated = 1;
  os_unfair_lock_unlock(&self->_lock);
}

void __40__CRSUIVolumeNotificationAssertion_init__block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Volume notification connection interrupted! %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __40__CRSUIVolumeNotificationAssertion_init__block_invoke_6_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Volume notification connection Volume invalidated! %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end