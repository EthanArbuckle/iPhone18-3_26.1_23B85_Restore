@interface CRSInCallAssertion
- (BOOL)allowsBanners;
- (CRSInCallAssertion)initWithReason:(id)a3;
- (void)_handleConnectionActivated;
- (void)_handleConnectionInterrupted;
- (void)activate;
- (void)invalidate;
@end

@implementation CRSInCallAssertion

- (void)activate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_activated && !self->_lock_invalidated)
  {
    v4 = CRSLogForCategory(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_DEFAULT, "Requesting presentation!", v7, 2u);
    }

    v5 = [(CRSInCallAssertion *)self connection];
    v6 = [v5 remoteTarget];
    [v6 presentInCallService];

    v3 = 13;
  }

  else
  {
    v3 = 12;
  }

  *(&self->super.isa + v3) = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleConnectionActivated
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v10 = 138412290;
    v11 = connection;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection activated! %@", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_pendingPresent)
  {
    self->_lock_pendingPresent = 0;
    v5 = CRSLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Requesting presentation!", &v10, 2u);
    }

    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 presentInCallService];

    self->_lock_presented = 1;
  }

  v7 = [(BSServiceConnection *)self->_connection remoteTarget];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_lock_allowsBanners];
  [v7 setAllowsBanners:v8];

  self->_lock_activated = 1;
  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSLogForCategory(2uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->_connection;
      v6 = 138412290;
      v7 = connection;
      _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection! %@", &v6, 0xCu);
    }

    [(BSServiceConnection *)self->_connection invalidate];
    self->_lock_invalidated = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

- (CRSInCallAssertion)initWithReason:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CRSInCallAssertion;
  v5 = [(CRSInCallAssertion *)&v26 init];
  if (v5)
  {
    v6 = [v4 copy];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&__counterLock);
    v8 = __instanceCounter++;
    os_unfair_lock_unlock(&__counterLock);
    v9 = MEMORY[0x277CCACA8];
    v10 = [(CRSInCallAssertion *)v5 reason];
    v11 = [v9 stringWithFormat:@"%@-%i-%u", v10, getpid(), v8];

    v12 = MEMORY[0x277CF3288];
    v13 = +[CRSInCallAssertionSpecification identifier];
    v14 = [v12 endpointForMachName:@"com.apple.CarPlayApp.non-launching-service" service:v13 instance:v11];

    v15 = [MEMORY[0x277CF3280] connectionWithEndpoint:v14];
    connection = v5->_connection;
    v5->_connection = v15;

    objc_initWeak(&location, v5);
    v17 = v5->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __37__CRSInCallAssertion_initWithReason___block_invoke;
    v22[3] = &unk_278D8E3F8;
    v23 = v5;
    objc_copyWeak(&v24, &location);
    [(BSServiceConnection *)v17 configureConnection:v22];
    v18 = CRSLogForCategory(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v5->_connection;
      *buf = 138412290;
      v28 = v19;
      _os_log_impl(&dword_242FB5000, v18, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v5->_connection activate];
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

void __37__CRSInCallAssertion_initWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSInCallAssertionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSInCallAssertionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__CRSInCallAssertion_initWithReason___block_invoke_2;
  v11[3] = &unk_278D8E030;
  objc_copyWeak(&v12, (a1 + 40));
  [v3 setActivationHandler:v11];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __37__CRSInCallAssertion_initWithReason___block_invoke_3;
  v9 = &unk_278D8E030;
  objc_copyWeak(&v10, (a1 + 40));
  [v3 setInterruptionHandler:&v6];
  [v3 setInvalidationHandler:{&__block_literal_global_5, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void __37__CRSInCallAssertion_initWithReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionActivated];
}

void __37__CRSInCallAssertion_initWithReason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __37__CRSInCallAssertion_initWithReason___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __37__CRSInCallAssertion_initWithReason___block_invoke_4_cold_1(v2, v3);
  }
}

- (BOOL)allowsBanners
{
  os_unfair_lock_lock(&self->_lock);
  lock_allowsBanners = self->_lock_allowsBanners;
  os_unfair_lock_unlock(&self->_lock);
  return lock_allowsBanners;
}

- (void)_handleConnectionInterrupted
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_242FB5000, a2, OS_LOG_TYPE_ERROR, "Connection interrupted! Reactivating... %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __37__CRSInCallAssertion_initWithReason___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_242FB5000, a2, OS_LOG_TYPE_ERROR, "Connection invalidated! %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end