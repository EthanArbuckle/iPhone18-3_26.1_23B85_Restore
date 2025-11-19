@interface DBHomeManager
- (DBHomeManager)init;
- (void)_authorizeHomeManager;
- (void)_setupHomeManager;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation DBHomeManager

- (DBHomeManager)init
{
  v20.receiver = self;
  v20.super_class = DBHomeManager;
  v2 = [(DBHomeManager *)&v20 init];
  if (v2)
  {
    v3 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [DBHomeManager init];
    }

    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.DashBoard.homemanager", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = +[DBLocationManager homeKitLocationManager];
    locationManager = v2->_locationManager;
    v2->_locationManager = v7;

    v9 = objc_opt_new();
    networkPathMonitor = v2->_networkPathMonitor;
    v2->_networkPathMonitor = v9;

    v11 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AC0B38];
    observers = v2->_observers;
    v2->_observers = v11;

    v13 = objc_opt_new();
    homes = v2->_homes;
    v2->_homes = v13;

    objc_initWeak(&location, v2);
    v15 = [(DBHomeManager *)v2 workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __21__DBHomeManager_init__block_invoke;
    v17[3] = &unk_278F02300;
    objc_copyWeak(&v18, &location);
    dispatch_async(v15, v17);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __21__DBHomeManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _authorizeHomeManager];
}

- (void)dealloc
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBHomeManager dealloc];
  }

  v4.receiver = self;
  v4.super_class = DBHomeManager;
  [(DBHomeManager *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeManager *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeManager *)self observers];
  [v5 removeObserver:v4];
}

- (void)_authorizeHomeManager
{
  v3 = objc_alloc(MEMORY[0x277D0F800]);
  v4 = [(DBHomeManager *)self locationManager];
  v5 = [v4 bundle];
  v6 = [v3 initWithBundle:v5];
  [(DBHomeManager *)self setHomeLocationAuthorization:v6];

  v7 = [(DBHomeManager *)self homeLocationAuthorization];
  LOBYTE(v4) = [v7 isAuthorized];

  if (v4)
  {

    [(DBHomeManager *)self _setupHomeManager];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [(DBHomeManager *)self homeLocationAuthorization];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__DBHomeManager__authorizeHomeManager__block_invoke;
    v9[3] = &unk_278F03148;
    objc_copyWeak(&v10, &location);
    [v8 requestAuthorization:2 completionHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __38__DBHomeManager__authorizeHomeManager__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__DBHomeManager__authorizeHomeManager__block_invoke_2;
  v5[3] = &unk_278F043C0;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __38__DBHomeManager__authorizeHomeManager__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __38__DBHomeManager__authorizeHomeManager__block_invoke_2_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setupHomeManager];
  }
}

- (void)_setupHomeManager
{
  v3 = [(DBHomeManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DBHomeManager__setupHomeManager__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__DBHomeManager__setupHomeManager__block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__DBHomeManager__setupHomeManager__block_invoke_cold_1();
  }

  v3 = [MEMORY[0x277CD1C60] defaultPrivateConfiguration];
  v4 = [*(a1 + 32) homeLocationAuthorization];
  [v3 setLocationAuthorization:v4];

  [v3 setOptions:513];
  v5 = [objc_alloc(MEMORY[0x277CD1A90]) initWithHomeMangerConfiguration:v3];
  [*(a1 + 32) setHomeManager:v5];

  v6 = *(a1 + 32);
  v7 = [v6 homeManager];
  [v7 setDelegate:v6];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = [(DBHomeManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__DBHomeManager_homeManagerDidUpdateHomes___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__DBHomeManager_homeManagerDidUpdateHomes___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __43__DBHomeManager_homeManagerDidUpdateHomes___block_invoke_cold_1();
  }

  v3 = MEMORY[0x277CBEB58];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 homes];
  v7 = [v6 allKeys];
  v36 = [v3 setWithArray:v7];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v4[1] homes];
  v10 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v9;
        v15 = v8;
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 uniqueIdentifier];
        [v36 removeObject:v17];

        v18 = [*v4 homes];
        v19 = [v16 uniqueIdentifier];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (!v20)
        {
          v20 = [[DBHome alloc] initWithHome:v16 resourceProvider:*v4];
        }

        v21 = [(DBHome *)v20 uniqueIdentifier];
        v9 = v14;
        [v14 setObject:v20 forKeyedSubscript:v21];

        v8 = v15;
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v11);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v36;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * j);
        v28 = [*v4 homes];
        v29 = [v28 objectForKeyedSubscript:v27];
        [v8 setObject:v29 forKeyedSubscript:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }

  v30 = [*v4 observers];
  [v30 homeManager:*v4 willRemoveHomes:v8];

  [*v4 setHomes:v9];
  v31 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    __43__DBHomeManager_homeManagerDidUpdateHomes___block_invoke_cold_2(v4, v8, v31);
  }

  v32 = [*v4 observers];
  v33 = *v4;
  v34 = [v33 homes];
  [v32 homeManager:v33 didUpdateHomes:v34];
}

void __43__DBHomeManager_homeManagerDidUpdateHomes___block_invoke_cold_2(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 homes];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&dword_248146000, a3, OS_LOG_TYPE_DEBUG, "newHomes=%{public}@ removedHomes=%{public}@", &v6, 0x16u);
}

@end