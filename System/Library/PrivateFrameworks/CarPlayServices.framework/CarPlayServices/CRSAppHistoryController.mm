@interface CRSAppHistoryController
- (CRSAppHistoryController)init;
- (void)addAnalyticsValues:(id)a3 toEvent:(unint64_t)a4 completion:(id)a5;
- (void)fetchDockAppForCategory:(unint64_t)a3 completion:(id)a4;
- (void)fetchSessionEchoContextsWithCompletion:(id)a3;
- (void)fetchSessionUIContextsWithCompletion:(id)a3;
- (void)fetchUIContextsWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation CRSAppHistoryController

- (CRSAppHistoryController)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = CRSAppHistoryController;
  v2 = [(CRSAppHistoryController *)&v22 init];
  if (v2)
  {
    v3 = MEMORY[0x277CF3288];
    v4 = [MEMORY[0x277CF8980] identifier];
    v5 = [v3 endpointForMachName:@"com.apple.CarPlayApp.service" service:v4 instance:0];

    v6 = [MEMORY[0x277CF8980] serviceQuality];
    [v6 serviceClass];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();

    objc_storeStrong(&v2->_callbackQueue, SerialWithQoS);
    v8 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
    connection = v2->_connection;
    v2->_connection = v8;

    v10 = v2->_connection;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __31__CRSAppHistoryController_init__block_invoke;
    v19 = &unk_278D8E560;
    v20 = v2;
    v11 = SerialWithQoS;
    v21 = v11;
    [(BSServiceConnection *)v10 configureConnection:&v16];
    v12 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v2->_connection;
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_242FB5000, v12, OS_LOG_TYPE_INFO, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection activate:v16];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void __31__CRSAppHistoryController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF8980];
  v6 = a2;
  v4 = [v3 serviceQuality];
  [v6 setServiceQuality:v4];

  v5 = [MEMORY[0x277CF8980] interface];
  [v6 setInterface:v5];

  [v6 setInterfaceTarget:*(a1 + 32)];
  [v6 setActivationHandler:&__block_literal_global_6];
  [v6 setInterruptionHandler:&__block_literal_global_42];
  [v6 setInvalidationHandler:&__block_literal_global_45];
  [v6 setTargetQueue:*(a1 + 40)];
}

void __31__CRSAppHistoryController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection activated! %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "[CRSAppHistoryController] invalidating connection.", v5, 2u);
  }

  v4 = [(CRSAppHistoryController *)self connection];
  [v4 invalidate];
}

void __31__CRSAppHistoryController_init__block_invoke_40(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "[CRSAppHistoryController] connection interrupted! Reactivating... %@", &v5, 0xCu);
  }

  [v2 activate];
  v4 = *MEMORY[0x277D85DE8];
}

void __31__CRSAppHistoryController_init__block_invoke_43(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchDockAppForCategory:(unint64_t)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = CRSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_DEFAULT, "Received request for dock app in category %@.", buf, 0xCu);
    }

    v9 = [(CRSAppHistoryController *)self connection];
    v10 = [v9 remoteTarget];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__CRSAppHistoryController_fetchDockAppForCategory_completion___block_invoke;
    v13[3] = &unk_278D8E588;
    v14 = v6;
    [v10 fetchDockAppInCategory:v11 completion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchUIContextsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received UI Context fetch.", buf, 2u);
    }

    v6 = [(CRSAppHistoryController *)self connection];
    v7 = [v6 remoteTarget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__CRSAppHistoryController_fetchUIContextsWithCompletion___block_invoke;
    v8[3] = &unk_278D8E5B0;
    v9 = v4;
    [v7 fetchUIContextStatesWithCompletion:v8];
  }
}

- (void)fetchSessionUIContextsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received session UI Context fetch.", buf, 2u);
    }

    v6 = [(CRSAppHistoryController *)self connection];
    v7 = [v6 remoteTarget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CRSAppHistoryController_fetchSessionUIContextsWithCompletion___block_invoke;
    v8[3] = &unk_278D8E5B0;
    v9 = v4;
    [v7 fetchSessionUIContextStatesWithCompletion:v8];
  }
}

- (void)fetchSessionEchoContextsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received session Echo Context fetch.", buf, 2u);
    }

    v6 = [(CRSAppHistoryController *)self connection];
    v7 = [v6 remoteTarget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__CRSAppHistoryController_fetchSessionEchoContextsWithCompletion___block_invoke;
    v8[3] = &unk_278D8E5B0;
    v9 = v4;
    [v7 fetchSessionEchoContextStatesWithCompletion:v8];
  }
}

- (void)addAnalyticsValues:(id)a3 toEvent:(unint64_t)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    v9 = a5;
    v10 = CRSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_242FB5000, v10, OS_LOG_TYPE_DEFAULT, "Sending session analytics payload for event %@ with %@ item(s).", &v17, 0x16u);
    }

    v13 = [(CRSAppHistoryController *)self connection];
    v14 = [v13 remoteTarget];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [v14 setAnalyticsValues:v8 onEvent:v15 completion:v9];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end