@interface CARInstrumentClusterURLController
- (CARInstrumentClusterURLController)init;
- (void)fetchInstrumentClusterURLs:(id)ls;
- (void)invalidate;
@end

@implementation CARInstrumentClusterURLController

- (CARInstrumentClusterURLController)init
{
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CARInstrumentClusterURLController;
  v2 = [(CARInstrumentClusterURLController *)&v21 init];
  if (v2)
  {
    v3 = MEMORY[0x1E698F498];
    v4 = +[CARAppHistoryServiceSpecification identifier];
    v5 = [v3 endpointForMachName:@"com.apple.CarPlayApp.service" service:v4 instance:0];

    v6 = +[CARAppHistoryServiceSpecification serviceQuality];
    [v6 serviceClass];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();

    objc_storeStrong(&v2->_callbackQueue, SerialWithQoS);
    v8 = [MEMORY[0x1E698F490] connectionWithEndpoint:v5];
    connection = v2->_connection;
    v2->_connection = v8;

    v10 = v2->_connection;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __41__CARInstrumentClusterURLController_init__block_invoke;
    v18 = &unk_1E82FD648;
    v19 = v2;
    v11 = SerialWithQoS;
    v20 = v11;
    [(BSServiceConnection *)v10 configureConnection:&v15];
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v2->_connection;
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_DEFAULT, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection activate:v15];
  }

  return v2;
}

void __41__CARInstrumentClusterURLController_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[CARAppHistoryServiceSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[CARAppHistoryServiceSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_30];
  [v5 setInterruptionHandler:&__block_literal_global_72];
  [v5 setInvalidationHandler:&__block_literal_global_75];
  [v5 setTargetQueue:*(a1 + 40)];
}

void __41__CARInstrumentClusterURLController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "Connection activated! %@", &v4, 0xCu);
  }
}

void __41__CARInstrumentClusterURLController_init__block_invoke_70(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "[CRSAppHistoryController] connection interrupted! Reactivating... %@", &v4, 0xCu);
  }

  [v2 activate];
}

void __41__CARInstrumentClusterURLController_init__block_invoke_73(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated! %@", &v4, 0xCu);
  }
}

- (void)fetchInstrumentClusterURLs:(id)ls
{
  lsCopy = ls;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Received request for cluster urls.", buf, 2u);
  }

  if (lsCopy)
  {
    connection = [(CARInstrumentClusterURLController *)self connection];

    if (connection)
    {
      connection2 = [(CARInstrumentClusterURLController *)self connection];
      remoteTarget = [connection2 remoteTarget];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__CARInstrumentClusterURLController_fetchInstrumentClusterURLs___block_invoke;
      v11[3] = &unk_1E82FC148;
      v12 = lsCopy;
      [remoteTarget serviceFetchInstrumentClusterURLs:v11];
    }

    else
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CARInstrumentClusterURLController fetchInstrumentClusterURLs:v10];
      }

      (*(lsCopy + 2))(lsCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CARInstrumentClusterURLController fetchInstrumentClusterURLs:v9];
    }
  }
}

void __64__CARInstrumentClusterURLController_fetchInstrumentClusterURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "received urls: %@ error: %@", &v9, 0x16u);
  }

  v8 = [v5 bs_compactMap:&__block_literal_global_80];
  (*(*(a1 + 32) + 16))();
}

id __64__CARInstrumentClusterURLController_fetchInstrumentClusterURLs___block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  if (!v3)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CARInstrumentClusterURLController_fetchInstrumentClusterURLs___block_invoke_77_cold_1(v2, v4);
    }
  }

  return v3;
}

- (void)invalidate
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "[CARInstrumentClusterURLController] invalidating connection.", v5, 2u);
  }

  connection = [(CARInstrumentClusterURLController *)self connection];
  [connection invalidate];
}

void __64__CARInstrumentClusterURLController_fetchInstrumentClusterURLs___block_invoke_77_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "Error creating URL from string: %{public}@", &v2, 0xCu);
}

@end