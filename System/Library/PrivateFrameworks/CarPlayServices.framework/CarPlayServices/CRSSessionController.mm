@interface CRSSessionController
- (CRSSessionController)init;
- (void)invalidate;
@end

@implementation CRSSessionController

- (CRSSessionController)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CRSSessionController;
  v2 = [(CRSSessionController *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x277CF3288];
    v5 = +[CRSSessionSpecification identifier];
    v6 = [v4 endpointForMachName:@"com.apple.CarPlayApp.service" service:v5 instance:0];

    v7 = [MEMORY[0x277CF3280] connectionWithEndpoint:v6];
    connection = v3->_connection;
    v3->_connection = v7;

    v9 = v3->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __28__CRSSessionController_init__block_invoke;
    v14[3] = &unk_278D8E1A8;
    v15 = v3;
    [(BSServiceConnection *)v9 configureConnection:v14];
    v10 = CRSLogForCategory(3uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v3->_connection;
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_242FB5000, v10, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v3->_connection activate];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

void __28__CRSSessionController_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[CRSSessionSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[CRSSessionSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_0];
  [v5 setInterruptionHandler:&__block_literal_global_6];
  [v5 setInvalidationHandler:&__block_literal_global_9];
}

void __28__CRSSessionController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection activated! %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __28__CRSSessionController_init__block_invoke_4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection interrupted! Reactivating... %@", &v5, 0xCu);
  }

  [v2 activate];
  v4 = *MEMORY[0x277D85DE8];
}

void __28__CRSSessionController_init__block_invoke_7(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated! %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v3 = CRSLogForCategory(3uLL);
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

@end