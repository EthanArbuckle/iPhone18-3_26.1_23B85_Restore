@interface CRSAppHistoryService
- (CRSAppHistoryDataProviding)dataProvider;
- (CRSAppHistoryService)initWithDataProvider:(id)a3 applicationLibrary:(id)a4 policyEvaluator:(id)a5;
- (void)_appLibraryUpdated:(id)a3;
- (void)_connectionQueue_addConnection:(id)a3;
- (void)_connectionQueue_removeConnection:(id)a3;
- (void)_setupApplicationLibraryObservations;
- (void)fetchDockAppInCategory:(id)a3 completion:(id)a4;
- (void)fetchSessionEchoContextStatesWithCompletion:(id)a3;
- (void)fetchSessionUIContextStatesWithCompletion:(id)a3;
- (void)fetchUIContextStatesWithCompletion:(id)a3;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)serviceFetchInstrumentClusterURLs:(id)a3;
- (void)setAnalyticsValues:(id)a3 onEvent:(id)a4 completion:(id)a5;
- (void)setInstrumentClusterURLs:(id)a3;
@end

@implementation CRSAppHistoryService

- (CRSAppHistoryDataProviding)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (CRSAppHistoryService)initWithDataProvider:(id)a3 applicationLibrary:(id)a4 policyEvaluator:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = CRSAppHistoryService;
  v11 = [(CRSAppHistoryService *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataProvider, v8);
    objc_storeStrong(&v12->_applicationLibrary, a4);
    objc_storeStrong(&v12->_policyEvaluator, a5);
    [(CRSAppHistoryService *)v12 _setupApplicationLibraryObservations];
    [(CRSAppHistoryService *)v12 _appLibraryUpdated:v12->_applicationLibrary];
    v13 = [MEMORY[0x277CF0C18] serial];
    v14 = BSDispatchQueueCreate();
    connectionQueue = v12->_connectionQueue;
    v12->_connectionQueue = v14;

    v16 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v12->_connections;
    v12->_connections = v16;

    v18 = MEMORY[0x277CF32A0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__CRSAppHistoryService_initWithDataProvider_applicationLibrary_policyEvaluator___block_invoke;
    v26[3] = &unk_278D8E008;
    v19 = v12;
    v27 = v19;
    v20 = [v18 listenerWithConfigurator:v26];
    v21 = v19[2];
    v19[2] = v20;

    v22 = CRSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v19[2];
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&dword_242FB5000, v22, OS_LOG_TYPE_INFO, "Activating listener! %@", buf, 0xCu);
    }

    [v19[2] activate];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

void __80__CRSAppHistoryService_initWithDataProvider_applicationLibrary_policyEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay"];
  v3 = [MEMORY[0x277CF8980] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)setInstrumentClusterURLs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSArray *)self->_instrumentClusterURLs isEqualToArray:v4])
  {
    v5 = CRSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Cluster URLs updated: %@", buf, 0xCu);
    }

    v6 = [v4 copy];
    instrumentClusterURLs = self->_instrumentClusterURLs;
    self->_instrumentClusterURLs = v6;

    v8 = self->_instrumentClusterURLs;
    if (v8)
    {
      v12 = *MEMORY[0x277CF8950];
      v13 = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v10 postNotificationName:@"CRInstrumentClusterURLsDidChangeNotification" object:0 userInfo:v9];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(FBSApplicationLibrary *)self->_applicationLibrary removeObserverForToken:self->_installToken];
  [(FBSApplicationLibrary *)self->_applicationLibrary removeObserverForToken:self->_uninstallToken];
  [(FBSApplicationLibrary *)self->_applicationLibrary removeObserverForToken:self->_replaceToken];
  listener = self->_listener;

  [(BSServiceConnectionListener *)listener invalidate];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = CRSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_INFO, "Received connection! %@", buf, 0xCu);
  }

  v8 = [v6 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.private.CarPlayServices.app-history"];

  if ((v9 & 1) == 0)
  {
    v10 = CRSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CRSAppHistoryService listener:v6 didReceiveConnection:? withContext:?];
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke;
  v17[3] = &unk_278D8E1A8;
  v17[4] = self;
  [v6 configureConnection:v17];
  v11 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_242FB5000, v11, OS_LOG_TYPE_INFO, "Activating connection... %@", buf, 0xCu);
  }

  v12 = [(CRSAppHistoryService *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_87;
  block[3] = &unk_278D8E3D0;
  block[4] = self;
  v16 = v6;
  v13 = v6;
  dispatch_async(v12, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF8980];
  v4 = a2;
  v5 = [v3 serviceQuality];
  [v4 setServiceQuality:v5];

  v6 = [MEMORY[0x277CF8980] interface];
  [v4 setInterface:v6];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278D8E3A8;
  v8[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v8];
  v7 = [*(a1 + 32) connectionQueue];
  [v4 setTargetQueue:v7];
}

void __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v6, 0xCu);
  }

  [*(a1 + 32) _connectionQueue_removeConnection:v3];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __66__CRSAppHistoryService_listener_didReceiveConnection_withContext___block_invoke_87(uint64_t a1)
{
  [*(a1 + 32) _connectionQueue_addConnection:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 activate];
}

- (void)fetchUIContextStatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request for UI context states.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CRSAppHistoryService_fetchUIContextStatesWithCompletion___block_invoke;
  v7[3] = &unk_278D8E420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __59__CRSAppHistoryService_fetchUIContextStatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 getUIContextStatesWithCompletion:*(a1 + 40)];
}

- (void)fetchSessionUIContextStatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request for session UI context states.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CRSAppHistoryService_fetchSessionUIContextStatesWithCompletion___block_invoke;
  v7[3] = &unk_278D8E420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __66__CRSAppHistoryService_fetchSessionUIContextStatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 getSessionUIContextStatesWithCompletion:*(a1 + 40)];
}

- (void)fetchSessionEchoContextStatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request for session UI context states.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CRSAppHistoryService_fetchSessionEchoContextStatesWithCompletion___block_invoke;
  v7[3] = &unk_278D8E420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __68__CRSAppHistoryService_fetchSessionEchoContextStatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 getSessionEchoContextStatesWithCompletion:*(a1 + 40)];
}

- (void)setAnalyticsValues:(id)a3 onEvent:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CRSLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&dword_242FB5000, v11, OS_LOG_TYPE_DEFAULT, "Received analytics values for current session, with %@ item(s).", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__CRSAppHistoryService_setAnalyticsValues_onEvent_completion___block_invoke;
  v17[3] = &unk_278D8E448;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __62__CRSAppHistoryService_setAnalyticsValues_onEvent_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 setAnalyticsValues:*(a1 + 40) onEvent:objc_msgSend(*(a1 + 48) completion:{"unsignedIntegerValue"), *(a1 + 56)}];
}

- (void)serviceFetchInstrumentClusterURLs:(id)a3
{
  v4 = a3;
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "serviceFetchInstrumentClusterURLs: updating geo", buf, 2u);
  }

  v6 = [(CRSAppHistoryService *)self policyEvaluator];
  v7 = [v6 isGeoSupported];

  v8 = [(CRSAppHistoryService *)self policyEvaluator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke;
  v10[3] = &unk_278D8E498;
  v12 = v7;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 updateGeoSupportedWithCompletion:v10];
}

void __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke(uint64_t a1, char a2)
{
  v4 = CRSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_DEFAULT, "Geo support updated, updating URLs", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke_90;
  block[3] = &unk_278D8E470;
  v8 = a2;
  v9 = *(a1 + 48);
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CRSAppHistoryService_serviceFetchInstrumentClusterURLs___block_invoke_90(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != *(a1 + 49))
  {
    v2 = CRSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_242FB5000, v2, OS_LOG_TYPE_DEFAULT, "Geo support changed, updating urls", &v10, 2u);
    }

    v3 = *(a1 + 32);
    v4 = [v3 applicationLibrary];
    [v3 _appLibraryUpdated:v4];
  }

  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) instrumentClusterURLs];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "serviceFetchInstrumentClusterURLs: URLs supported: %{public}@", &v10, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) instrumentClusterURLs];
  (*(v7 + 16))(v7, v8, 0);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchDockAppInCategory:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CRSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Received request for dock app in category %@.", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSAppHistoryService_fetchDockAppInCategory_completion___block_invoke;
  block[3] = &unk_278D8E4C0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__CRSAppHistoryService_fetchDockAppInCategory_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];
  [v2 fetchDockAppInCategory:objc_msgSend(*(a1 + 40) completion:{"unsignedIntegerValue"), *(a1 + 48)}];
}

- (void)_connectionQueue_addConnection:(id)a3
{
  v4 = a3;
  v5 = [(CRSAppHistoryService *)self connections];
  [v5 addObject:v4];
}

- (void)_connectionQueue_removeConnection:(id)a3
{
  v4 = a3;
  v5 = [(CRSAppHistoryService *)self connections];
  [v5 removeObject:v4];
}

- (void)_setupApplicationLibraryObservations
{
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke;
  v15[3] = &unk_278D8E4E8;
  objc_copyWeak(&v16, &location);
  v3 = MEMORY[0x245D28FB0](v15);
  v4 = [(CRSAppHistoryService *)self applicationLibrary];
  v5 = [v4 observeDidAddApplicationsWithBlock:v3];
  installToken = self->_installToken;
  self->_installToken = v5;

  v7 = [(CRSAppHistoryService *)self applicationLibrary];
  v8 = [v7 observeDidRemoveApplicationsWithBlock:v3];
  uninstallToken = self->_uninstallToken;
  self->_uninstallToken = v8;

  v10 = [(CRSAppHistoryService *)self applicationLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_3;
  v13[3] = &unk_278D8E510;
  objc_copyWeak(&v14, &location);
  v11 = [v10 observeDidReplaceApplicationsWithBlock:v13];
  replaceToken = self->_replaceToken;
  self->_replaceToken = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_2;
  block[3] = &unk_278D8E380;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 applicationLibrary];
  [v1 _appLibraryUpdated:v2];
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_4;
  block[3] = &unk_278D8E380;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CRSAppHistoryService__setupApplicationLibraryObservations__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 applicationLibrary];
  [v1 _appLibraryUpdated:v2];
}

- (void)_appLibraryUpdated:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = CRSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "App library updated", buf, 2u);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = [v4 applicationInfoForBundleIdentifier:@"com.apple.Maps"];
    if (v7)
    {
      v8 = [(CRSAppHistoryService *)self policyEvaluator];
      v9 = [v8 isGeoSupported];

      if (v9)
      {
        v26 = 0;
        v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:&v26];
        v11 = v26;
        v12 = [v10 carPlayInstrumentClusterURLSchemes];
        v13 = CRSLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v28 = v12;
          _os_log_impl(&dword_242FB5000, v13, OS_LOG_TYPE_DEFAULT, "Adding Maps URLs %{public}@", buf, 0xCu);
        }

        [v6 addObjectsFromArray:v12];
      }
    }

    v14 = [v4 allInstalledApplications];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __43__CRSAppHistoryService__appLibraryUpdated___block_invoke;
    v24 = &unk_278D8E538;
    v15 = v6;
    v25 = v15;
    [v14 enumerateObjectsUsingBlock:&v21];

    v16 = CRSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 allObjects];
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_DEFAULT, "Setting new cluster URLs: %{public}@", buf, 0xCu);
    }

    v18 = [v15 allObjects];
    [(CRSAppHistoryService *)self setInstrumentClusterURLs:v18];
  }

  else
  {
    v19 = CRSLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CRSAppHistoryService _appLibraryUpdated:v19];
    }

    [(CRSAppHistoryService *)self setInstrumentClusterURLs:MEMORY[0x277CBEBF8]];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __43__CRSAppHistoryService__appLibraryUpdated___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 bundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.Maps"];

  if ((v8 & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277CC1E70]);
    v10 = [v6 bundleIdentifier];
    v19 = 0;
    v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:&v19];
    v12 = v19;

    if (v12)
    {
      v13 = CRSLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __43__CRSAppHistoryService__appLibraryUpdated___block_invoke_cold_1(v6);
      }
    }

    else if ([v11 supportsCarPlayInstrumentClusterScene])
    {
      v14 = CRSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v6 bundleIdentifier];
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&dword_242FB5000, v14, OS_LOG_TYPE_DEFAULT, "Adding default URLs for %{public}@", buf, 0xCu);
      }

      v16 = *(a1 + 32);
      v20[0] = @"maps:/car/instrumentcluster/instructioncard";
      v20[1] = @"maps:/car/instrumentcluster/map";
      v20[2] = @"maps:/car/instrumentcluster";
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
      [v16 addObjectsFromArray:v17];

      *a4 = 1;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)listener:(void *)a1 didReceiveConnection:withContext:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 remoteProcess];
  OUTLINED_FUNCTION_0_0(&dword_242FB5000, v2, v3, "Process does not have the required entitlement: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __43__CRSAppHistoryService__appLibraryUpdated___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_0_0(&dword_242FB5000, v2, v3, "Error fetching app record for %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end