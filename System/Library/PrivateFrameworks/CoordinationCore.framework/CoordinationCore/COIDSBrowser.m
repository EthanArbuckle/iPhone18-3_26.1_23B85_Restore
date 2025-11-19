@interface COIDSBrowser
- (COIDSBrowser)initWithMeshName:(id)a3 idsServiceName:(id)a4;
- (NSString)description;
- (id)addObserverUsingBlock:(id)a3;
- (id)registeredObservers;
- (void)didAddDevice:(id)a3;
- (void)didRemoveDevice:(id)a3;
- (void)onDemandDiscoveryForRequest:(id)a3;
- (void)removeObserver:(id)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stop;
@end

@implementation COIDSBrowser

- (COIDSBrowser)initWithMeshName:(id)a3 idsServiceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = COIDSBrowser;
  v8 = [(COIDSBrowser *)&v30 init];
  if (v8)
  {
    v9 = [v6 copy];
    meshName = v8->_meshName;
    v8->_meshName = v9;

    v11 = objc_alloc_init(COBrowserObserverSet);
    observerSet = v8->_observerSet;
    v8->_observerSet = v11;

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.coordination.idsbrowser.%p", v8];
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    workQueue = v8->_workQueue;
    v8->_workQueue = v16;

    objc_initWeak(&location, v8);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke;
    v26[3] = &unk_278E19348;
    objc_copyWeak(&v28, &location);
    v27 = v6;
    v18 = MEMORY[0x245D5FF10](v26);
    idsPresenceProvider = v8->_idsPresenceProvider;
    v8->_idsPresenceProvider = v18;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke_2;
    v23[3] = &unk_278E19370;
    objc_copyWeak(&v25, &location);
    v24 = v7;
    v20 = MEMORY[0x245D5FF10](v23);
    idsServiceProvider = v8->_idsServiceProvider;
    v8->_idsServiceProvider = v20;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [COIDSPresence presenceForMesh:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COIDSBrowser *)self meshName];
  v7 = [v3 stringWithFormat:@"<%@: %p, mesh = %@>", v5, self, v6];

  return v7;
}

- (id)addObserverUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [[COBrowserObserver alloc] initWithBlock:v4];

  v6 = [(COIDSBrowser *)self observerSet];
  [v6 addObserver:v5];

  return v5;
}

- (id)registeredObservers
{
  v2 = [(COIDSBrowser *)self observerSet];
  v3 = [v2 observers];

  return v3;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(COIDSBrowser *)self observerSet];
  [v5 removeObserver:v4];
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__COIDSBrowser_startWithCompletionHandler___block_invoke;
  v7[3] = &unk_278E16240;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __43__COIDSBrowser_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    *(v2 + 8) = 1;
    v6 = [*(a1 + 32) idsPresenceProvider];
    v7 = v6[2]();
    [*(a1 + 32) setPresence:v7];
    v8 = *(a1 + 32);
    v9 = [v8 workQueue];
    [v7 addObserver:v8 queue:v9];

    v10 = [*(a1 + 32) idsServiceProvider];
    v11 = v10[2]();
    v12 = [COIDSServiceDirector alloc];
    v13 = [*(a1 + 32) meshName];
    v14 = [(COIDSServiceDirector *)v12 initWithIDSService:v11 meshName:v13];
    v15 = *(a1 + 32);
    v16 = *(v15 + 64);
    *(v15 + 64) = v14;

    [*(*(a1 + 32) + 64) setDiscoveryDelegate:?];
    v17 = [*(a1 + 32) serviceDirector];
    [v17 start];

    v18 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ IDS browser started", &v21, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    v20 = *MEMORY[0x277D85DE8];
  }
}

- (void)stop
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__COIDSBrowser_stop__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __20__COIDSBrowser_stop__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ IDS browser stopping", &v7, 0xCu);
  }

  *(*(a1 + 32) + 8) = 0;
  v4 = [*(a1 + 32) presence];
  [v4 removeObserver:*(a1 + 32)];

  result = [*(a1 + 32) setPresence:0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didAddDevice:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p IDS browser found device %{public}@", &v9, 0x16u);
  }

  v6 = [(COIDSBrowser *)self serviceDirector];
  [v4 setServiceDirector:v6];

  v7 = [(COIDSBrowser *)self observerSet];
  [v7 informObserverAboutDevice:v4 added:1];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveDevice:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p IDS browser lost device %{public}@", &v8, 0x16u);
  }

  v6 = [(COIDSBrowser *)self observerSet];
  [v6 informObserverAboutDevice:v4 added:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)onDemandDiscoveryForRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 idsIdentifier];
  v6 = [v4 fromURIToken];
  v7 = [[COIDSDiscoveryRecord alloc] initWithIdsIdentifier:v5 deviceTokenURI:v6];
  [(COIDSDiscoveryRecord *)v7 setOnDemandRequest:v4];

  v8 = [(COIDSBrowser *)self serviceDirector];
  [(COIDSDiscoveryRecord *)v7 setServiceDirector:v8];

  v9 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = self;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p IDS browser got demand node request %{public}@", &v12, 0x16u);
  }

  v10 = [(COIDSBrowser *)self observerSet];
  [v10 informObserverAboutDevice:v7 added:1];

  v11 = *MEMORY[0x277D85DE8];
}

@end