@interface CRSUIClusterThemeService
- (CRSUIClusterThemeDataProviding)themeDataProvider;
- (CRSUIClusterThemeService)init;
- (void)_connectionQueue_addConnection:(id)a3;
- (void)_connectionQueue_removeConnection:(id)a3;
- (void)getClusterThemeLayoutData:(id)a3;
- (void)getURLForAssetWithIdentifier:(id)a3 displayID:(id)a4 reply:(id)a5;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)registerThemeObserver:(id)a3;
- (void)setThemeData:(id)a3 reply:(id)a4;
- (void)updateExtraAssetsURL:(id)a3;
@end

@implementation CRSUIClusterThemeService

- (CRSUIClusterThemeService)init
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = CRSUIClusterThemeService;
  v2 = [(CRSUIClusterThemeService *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CF0C18] serial];
    v5 = BSDispatchQueueCreate();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v5;

    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v3->_connections;
    v3->_connections = v7;

    v9 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285608FB0];
    themeObservers = v3->_themeObservers;
    v3->_themeObservers = v9;

    v11 = MEMORY[0x277CF32A0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __32__CRSUIClusterThemeService_init__block_invoke;
    v19[3] = &unk_278DA0B08;
    v12 = v3;
    v20 = v12;
    v13 = [v11 listenerWithConfigurator:v19];
    v14 = v12[3];
    v12[3] = v13;

    v15 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v12[3];
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_243218000, v15, OS_LOG_TYPE_DEFAULT, "Activating listener! %@", buf, 0xCu);
    }

    [v12[3] activate];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

void __32__CRSUIClusterThemeService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay.ClusterTheme"];
  v3 = +[CRSUIClusterThemeSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRSUIClusterThemeService *)self listener];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating listener! %@", &v7, 0xCu);
  }

  v5 = [(CRSUIClusterThemeService *)self listener];
  [v5 invalidate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Received connection! %@", buf, 0xCu);
  }

  v12 = [v9 remoteProcess];
  if (v12 && ([v9 remoteProcess], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasEntitlement:", @"com.apple.private.CarPlayUIServices.cluster-theme"), v13, v12, (v14 & 1) != 0))
  {
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke;
    v23[3] = &unk_278DA0B58;
    v23[4] = self;
    objc_copyWeak(&v24, &location);
    [v9 configureConnection:v23];
    v15 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_243218000, v15, OS_LOG_TYPE_DEFAULT, "Activating connection... %@", buf, 0xCu);
    }

    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_79;
    block[3] = &unk_278DA0B80;
    objc_copyWeak(&v22, &location);
    v17 = v9;
    v21 = v17;
    dispatch_async(connectionQueue, block);
    [v17 activate];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeService listener:v9 didReceiveConnection:v18 withContext:?];
    }

    [v9 invalidate];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIClusterThemeSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIClusterThemeSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278DA0B30;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained connectionQueue];
  [v3 setTargetQueue:v7];

  objc_destroyWeak(&v9);
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionQueue_removeConnection:v3];
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _connectionQueue_addConnection:*(a1 + 32)];
}

- (void)getClusterThemeLayoutData:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CF3280] currentContext];
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_243218000, v5, OS_LOG_TYPE_DEFAULT, "Received request for cluster layouts (connection: %@)", buf, 0xCu);
  }

  v7 = [(CRSUIClusterThemeService *)self themeDataProvider];

  if (v7)
  {
    v8 = [(CRSUIClusterThemeService *)self themeDataProvider];
    v9 = [v8 themeData];

    v10 = [(CRSUIClusterThemeService *)self themeDataProvider];
    v11 = [v10 clusterThemeDisplays];

    v12 = [(CRSUIClusterThemeService *)self themeDataProvider];
    v13 = [v12 assetBaseURL];

    v14 = [(CRSUIClusterThemeService *)self themeDataProvider];
    v15 = [v14 extraAssetsURL];

    v16 = objc_alloc_init(_CRSUIClusterThemeLayoutData);
    [(_CRSUIClusterThemeLayoutData *)v16 setThemeData:v9];
    [(_CRSUIClusterThemeLayoutData *)v16 setDisplays:v11];
    [(_CRSUIClusterThemeLayoutData *)v16 setAssetBaseURL:v13];
    [(_CRSUIClusterThemeLayoutData *)v16 setExtraAssetsURL:v15];
    v17 = [(CRSUIClusterThemeService *)self themeDataProvider];
    -[_CRSUIClusterThemeLayoutData setAssetVersion:](v16, "setAssetVersion:", [v17 assetVersion]);

    v18 = 0;
  }

  else
  {
    v19 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeService getClusterThemeLayoutData:v19];
    }

    v20 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Unable to retrieve cluster theme data";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v20 errorWithDomain:@"com.apple.CarPlayUIServices.cluster-theme-service" code:1 userInfo:v9];
    v16 = 0;
  }

  v4[2](v4, v16, v18);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)getURLForAssetWithIdentifier:(id)a3 displayID:(id)a4 reply:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CF3280] currentContext];
    *buf = 138412802;
    v23 = v12;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Received request for asset url (connection: %@): %@:%@", buf, 0x20u);
  }

  v13 = [(CRSUIClusterThemeService *)self themeDataProvider];

  if (v13)
  {
    v14 = [(CRSUIClusterThemeService *)self themeDataProvider];
    v15 = [v14 getURLForAssetWithIdentifier:v8 displayID:v9];
    v16 = 0;
  }

  else
  {
    v17 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeService getURLForAssetWithIdentifier:v17 displayID:? reply:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Unable to retrieve asset url";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v18 errorWithDomain:@"com.apple.CarPlayUIServices.cluster-theme-service" code:1 userInfo:v14];
    v15 = 0;
  }

  v10[2](v10, v15, v16);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)setThemeData:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CF3280] currentContext];
    v10 = [v6 themeData];
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_243218000, v8, OS_LOG_TYPE_DEFAULT, "Received request to set theme data (connection: %@): %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11 = [(CRSUIClusterThemeService *)self themeObservers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__CRSUIClusterThemeService_setThemeData_reply___block_invoke;
  v14[3] = &unk_278DA0BA8;
  v16 = buf;
  v14[4] = self;
  v12 = v6;
  v15 = v12;
  [v11 enumerateObserversWithBlock:v14];

  v7[2](v7, *(*&buf[8] + 40));
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __47__CRSUIClusterThemeService_setThemeData_reply___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) themeData];
    v7 = [v10 clusterThemeService:v5 didSetThemeData:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (void)registerThemeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterThemeService *)self themeObservers];
  [v5 registerObserver:v4];
}

- (void)updateExtraAssetsURL:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_243218000, v5, OS_LOG_TYPE_DEFAULT, "service extraAssetsURL=%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CRSUIClusterThemeService_updateExtraAssetsURL___block_invoke;
  v9[3] = &unk_278DA0B80;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__CRSUIClusterThemeService_updateExtraAssetsURL___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [WeakRetained connections];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) remoteTarget];
        [v8 updateExtraAssetsURL:*(a1 + 32)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_addConnection:(id)a3
{
  connectionQueue = self->_connectionQueue;
  v5 = a3;
  BSDispatchQueueAssert();
  v6 = [(CRSUIClusterThemeService *)self connections];
  [v6 addObject:v5];
}

- (void)_connectionQueue_removeConnection:(id)a3
{
  connectionQueue = self->_connectionQueue;
  v5 = a3;
  BSDispatchQueueAssert();
  v6 = [(CRSUIClusterThemeService *)self connections];
  [v6 removeObject:v5];
}

- (CRSUIClusterThemeDataProviding)themeDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_themeDataProvider);

  return WeakRetained;
}

- (void)listener:(void *)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 remoteProcess];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Process does not have the required entitlement: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Connection invalidated! %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end