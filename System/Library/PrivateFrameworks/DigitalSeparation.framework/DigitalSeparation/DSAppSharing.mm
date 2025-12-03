@interface DSAppSharing
- (DSAppSharing)initWithTCCStore:(id)store;
- (id)newDictionaryWithApps:(id)apps;
- (id)removeAppsWithNoPermissions:(id)permissions;
- (void)addApp:(id)app toMap:(id)map withLocationAuthorization:(unint64_t)authorization;
- (void)addApp:(id)app toMap:(id)map withService:(id)service;
- (void)addHealthPermissionsToAppMap:(id)map handler:(id)handler;
- (void)addLocalNetworkPermissionsToAppMap:(id)map handler:(id)handler;
- (void)addLocationPermissions:(id)permissions;
- (void)addTCCPermissionsToAppMap:(id)map handler:(id)handler;
- (void)approvedBundleIdForKappa:(id)kappa handler:(id)handler;
- (void)collectAppsWithAccessToService:(id)service appMap:(id)map completionHandler:(id)handler;
- (void)collectPermissionsForApps:(id)apps queue:(id)queue handler:(id)handler;
- (void)resetBackgroundAppRefresh:(id)refresh queue:(id)queue handler:(id)handler;
- (void)resetHealthPermissionsForApp:(id)app withCompletionHandler:(id)handler;
- (void)resetPermission:(id)permission forApp:(id)app handler:(id)handler;
- (void)resetPermission:(id)permission forApps:(id)apps handler:(id)handler;
- (void)resetPermissions:(id)permissions forApps:(id)apps queue:(id)queue handler:(id)handler;
- (void)resetShortcutsAutomationTimer:(id)timer handler:(id)handler;
@end

@implementation DSAppSharing

- (DSAppSharing)initWithTCCStore:(id)store
{
  storeCopy = store;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = os_log_create("com.apple.DigitalSeparation", "DSAppSharing");
    v7 = DSLog;
    DSLog = v6;
  }

  tccStore = self->_tccStore;
  self->_tccStore = storeCopy;
  v9 = storeCopy;

  v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  healthKitStore = self->_healthKitStore;
  self->_healthKitStore = v10;

  v12 = [objc_alloc(MEMORY[0x277CCD060]) initWithHealthStore:self->_healthKitStore];
  authorizationStore = self->_authorizationStore;
  self->_authorizationStore = v12;

  v14 = dispatch_queue_create("AppPermissionsQueue", 0);
  [(DSAppSharing *)self setWorkQueue:v14];

  return self;
}

- (void)collectPermissionsForApps:(id)apps queue:(id)queue handler:(id)handler
{
  appsCopy = apps;
  queueCopy = queue;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke;
  block[3] = &unk_278F72748;
  objc_copyWeak(&v19, &location);
  v16 = appsCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = appsCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [WeakRetained newDictionaryWithApps:*(a1 + 32)];
  [WeakRetained addLocationPermissions:v4];
  objc_initWeak(&location, WeakRetained);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_2;
  v7[3] = &unk_278F72720;
  v5 = v3;
  v8 = v5;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v9 = v6;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [WeakRetained addTCCPermissionsToAppMap:v6 handler:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] addObjectsFromArray:v3];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  objc_initWeak(&location, WeakRetained);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_3;
  v6[3] = &unk_278F72720;
  v5 = a1[5];
  v7 = a1[4];
  objc_copyWeak(&v11, &location);
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  [WeakRetained addHealthPermissionsToAppMap:v5 handler:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] addObjectsFromArray:v3];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  objc_initWeak(&location, WeakRetained);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_4;
  v6[3] = &unk_278F726F8;
  v5 = a1[5];
  v7 = a1[4];
  objc_copyWeak(&v11, &location);
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  [WeakRetained addLocalNetworkPermissionsToAppMap:v5 handler:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [*(a1 + 40) allValues];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  v6 = [WeakRetained removeAppsWithNoPermissions:v5];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke_5;
  block[3] = &unk_278F72628;
  v7 = *(a1 + 48);
  v12 = *(a1 + 56);
  v10 = v6;
  v11 = *(a1 + 32);
  v8 = v6;
  dispatch_async(v7, block);
}

- (id)removeAppsWithNoPermissions:(id)permissions
{
  v18 = *MEMORY[0x277D85DE8];
  permissionsCopy = permissions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = permissionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![DSApp appHasNoPermissions:v10, v13])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addApp:(id)app toMap:(id)map withLocationAuthorization:(unint64_t)authorization
{
  mapCopy = map;
  appCopy = app;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = [mapCopy objectForKey:appCopy];

  if (v10)
  {
    [v10 setLocationAuthorization:authorization];
    appID = [v10 appID];
    [mapCopy setValue:v10 forKey:appID];
  }
}

- (void)addApp:(id)app toMap:(id)map withService:(id)service
{
  mapCopy = map;
  serviceCopy = service;
  appCopy = app;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = [mapCopy objectForKey:appCopy];

  if (v11)
  {
    if ([DSUtilities isContactsTCC:serviceCopy])
    {

      serviceCopy = @"DSContacts";
    }

    permissionsGranted = [v11 permissionsGranted];
    [permissionsGranted addObject:serviceCopy];

    appID = [v11 appID];
    [mapCopy setValue:v11 forKey:appID];
  }
}

- (id)newDictionaryWithApps:(id)apps
{
  v26 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = appsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = objc_alloc_init(DSApp);
        [(DSApp *)v13 setAppID:v12, v21];
        appID = [(DSApp *)v13 appID];
        v15 = displayNameForApp(appID);
        [(DSApp *)v13 setDisplayName:v15];

        displayName = [(DSApp *)v13 displayName];

        if (displayName)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [(DSApp *)v13 setPermissionsGranted:v17];

          appID2 = [(DSApp *)v13 appID];
          [v6 setValue:v13 forKey:appID2];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)collectAppsWithAccessToService:(id)service appMap:(id)map completionHandler:(id)handler
{
  serviceCopy = service;
  mapCopy = map;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([DSApp skipTCCCheck:serviceCopy])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    tccStore = self->_tccStore;
    workQueue2 = [(DSAppSharing *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__DSAppSharing_collectAppsWithAccessToService_appMap_completionHandler___block_invoke;
    v14[3] = &unk_278F72770;
    v15 = mapCopy;
    selfCopy = self;
    v17 = serviceCopy;
    v18 = handlerCopy;
    [(DSTCCStore *)tccStore appsWithPermissionGrantedForService:v17 queue:workQueue2 completionHandler:v14];
  }
}

void __72__DSAppSharing_collectAppsWithAccessToService_appMap_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [*(a1 + 32) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v5 containsObject:v12])
        {
          [*(a1 + 40) addApp:v12 toMap:*(a1 + 32) withService:*(a1 + 48)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addTCCPermissionsToAppMap:(id)map handler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = dispatch_group_create();
  v8 = +[DSUtilities tccServices];
  v9 = +[DSUtilities contactsServices];
  allObjects = [v9 allObjects];
  v11 = [v8 arrayByAddingObjectsFromArray:allObjects];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        dispatch_group_enter(v7);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __50__DSAppSharing_addTCCPermissionsToAppMap_handler___block_invoke;
        v28[3] = &unk_278F72798;
        v29 = v12;
        v30 = v7;
        [(DSAppSharing *)self collectAppsWithAccessToService:v17 appMap:mapCopy completionHandler:v28];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  workQueue2 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DSAppSharing_addTCCPermissionsToAppMap_handler___block_invoke_2;
  block[3] = &unk_278F72600;
  v26 = v12;
  v27 = handlerCopy;
  v19 = v12;
  v20 = handlerCopy;
  dispatch_group_notify(v7, workQueue2, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __50__DSAppSharing_addTCCPermissionsToAppMap_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) addObject:?];
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

- (void)addLocationPermissions:(id)permissions
{
  permissionsCopy = permissions;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  appsWithLocationService = [(DSTCCStore *)self->_tccStore appsWithLocationService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__DSAppSharing_addLocationPermissions___block_invoke;
  v8[3] = &unk_278F727C0;
  v8[4] = self;
  v9 = permissionsCopy;
  v7 = permissionsCopy;
  [appsWithLocationService enumerateKeysAndObjectsUsingBlock:v8];
}

void __39__DSAppSharing_addLocationPermissions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(*(a1 + 32) + 8) isEntityClassApplication:v5])
  {
    [*(a1 + 32) addApp:v6 toMap:*(a1 + 40) withLocationAuthorization:{objc_msgSend(*(*(a1 + 32) + 8), "locationAuthorizationForApp:", v5)}];
  }
}

- (void)addHealthPermissionsToAppMap:(id)map handler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = dispatch_group_create();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = mapCopy;
  obj = [mapCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        dispatch_group_enter(v8);
        tccStore = self->_tccStore;
        authorizationStore = self->_authorizationStore;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __53__DSAppSharing_addHealthPermissionsToAppMap_handler___block_invoke;
        v27[3] = &unk_278F72810;
        v28 = v8;
        selfCopy = self;
        v30 = v14;
        v31 = v23;
        v32 = v9;
        [(DSTCCStore *)tccStore healthAuthorizationForApp:v14 andAuthorizationStore:authorizationStore withCompletionHandler:v27];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  workQueue2 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DSAppSharing_addHealthPermissionsToAppMap_handler___block_invoke_3;
  block[3] = &unk_278F72600;
  v25 = v9;
  v26 = handlerCopy;
  v18 = v9;
  v19 = handlerCopy;
  dispatch_group_notify(v8, workQueue2, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __53__DSAppSharing_addHealthPermissionsToAppMap_handler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__DSAppSharing_addHealthPermissionsToAppMap_handler___block_invoke_2;
    block[3] = &unk_278F727E8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    dispatch_group_notify(v6, v7, block);
  }

  if (v5)
  {
    [*(a1 + 64) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)addLocalNetworkPermissionsToAppMap:(id)map handler:(id)handler
{
  mapCopy = map;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  tccStore = self->_tccStore;
  v10 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v12 = [v10 setWithArray:allKeys];
  workQueue2 = [(DSAppSharing *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__DSAppSharing_addLocalNetworkPermissionsToAppMap_handler___block_invoke;
  v16[3] = &unk_278F72838;
  v16[4] = self;
  v17 = mapCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = mapCopy;
  [(DSTCCStore *)tccStore allAppsWithLocalNetworkAccess:v12 queue:workQueue2 handler:v16];
}

void __59__DSAppSharing_addLocalNetworkPermissionsToAppMap_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) addApp:*(*(&v12 + 1) + 8 * v10++) toMap:*(a1 + 40) withService:@"DSLocalNetwork"];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetPermission:(id)permission forApps:(id)apps handler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  permissionCopy = permission;
  appsCopy = apps;
  handlerCopy = handler;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = appsCopy;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __48__DSAppSharing_resetPermission_forApps_handler___block_invoke;
        v26[3] = &unk_278F72860;
        v27 = v9;
        v28 = v10;
        [(DSAppSharing *)self resetPermission:permissionCopy forApp:v15 handler:v26];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  workQueue = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DSAppSharing_resetPermission_forApps_handler___block_invoke_2;
  block[3] = &unk_278F72600;
  v24 = v9;
  v25 = handlerCopy;
  v17 = v9;
  v18 = handlerCopy;
  dispatch_group_notify(v10, workQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __48__DSAppSharing_resetPermission_forApps_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)resetPermissions:(id)permissions forApps:(id)apps queue:(id)queue handler:(id)handler
{
  permissionsCopy = permissions;
  appsCopy = apps;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke;
  block[3] = &unk_278F72928;
  block[4] = self;
  v20 = permissionsCopy;
  v21 = appsCopy;
  v22 = queueCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = appsCopy;
  v18 = permissionsCopy;
  dispatch_async(workQueue, block);
}

void __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = dispatch_group_create();
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 40) allObjects];
  v5 = [*(a1 + 40) count];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_2;
  block[3] = &unk_278F72900;
  v18 = v3;
  v19 = v4;
  v6 = v4;
  v7 = v3;
  objc_copyWeak(&v23, &location);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v20 = v8;
  v21 = v9;
  v10 = v2;
  v22 = v10;
  dispatch_apply(v5, 0, block);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_7;
  v14[3] = &unk_278F72600;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v15 = v10;
  v16 = v12;
  v13 = v10;
  dispatch_group_notify(v7, v11, v14);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_3;
  v9[3] = &unk_278F728D8;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v14, (a1 + 72));
  v8 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = v8;
  v13 = *(a1 + 32);
  [WeakRetained resetPermission:v7 forApps:v6 handler:v9];

  objc_destroyWeak(&v14);
}

void __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] isEqualToString:@"DSLocalNetwork"])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v5 = [WeakRetained tccStore];
    v6 = [WeakRetained workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_4;
    v15[3] = &unk_278F728B0;
    v7 = v3;
    v8 = a1[5];
    v9 = a1[6];
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = a1[7];
    [v5 saveConfiguration:v6 handler:v15];

LABEL_5:
    dispatch_group_leave(a1[7]);
    goto LABEL_6;
  }

  if (![v3 count])
  {
    goto LABEL_5;
  }

  v10 = [a1[5] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_6;
  block[3] = &unk_278F727E8;
  v12 = a1[6];
  v13 = v3;
  v14 = a1[7];
  dispatch_async(v10, block);

LABEL_6:
}

void __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count] || objc_msgSend(a1[4], "count"))
  {
    v4 = [a1[5] workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_5;
    v5[3] = &unk_278F72888;
    v6 = a1[6];
    v7 = v3;
    v8 = a1[4];
    v9 = a1[7];
    dispatch_async(v4, v5);
  }
}

void __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  [*(a1 + 32) addObjectsFromArray:*(a1 + 48)];
  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)resetPermission:(id)permission forApp:(id)app handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  permissionCopy = permission;
  appCopy = app;
  handlerCopy = handler;
  if ([DSRestrictionStore isPermissionRestricted:permissionCopy]&& [(DSTCCStore *)self->_tccStore isServiceGranted:permissionCopy forApp:appCopy])
  {
    v11 = DSLog;
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = permissionCopy;
      v20 = 2112;
      v21 = appCopy;
      _os_log_impl(&dword_248C40000, v11, OS_LOG_TYPE_INFO, "Cannot reset permission %@ for app %@ due to screen time restrictions", &v18, 0x16u);
    }

    v12 = MEMORY[0x277CBEA60];
    v13 = [DSError errorWithCode:7 serviceName:permissionCopy];
    v14 = [v12 arrayWithObject:v13];
    handlerCopy[2](handlerCopy, v14);
  }

  else if (([permissionCopy isEqualToString:@"DSLocationAlways"] & 1) != 0 || objc_msgSend(permissionCopy, "isEqualToString:", @"DSLocationWhenInUse"))
  {
    [(DSTCCStore *)self->_tccStore resetLocationPermissionForApp:appCopy];
    handlerCopy[2](handlerCopy, 0);
  }

  else if ([permissionCopy isEqualToString:@"DSHealth"])
  {
    [(DSAppSharing *)self resetHealthPermissionsForApp:appCopy withCompletionHandler:handlerCopy];
  }

  else
  {
    if ([permissionCopy isEqualToString:@"DSLocalNetwork"])
    {
      tccStore = self->_tccStore;
      workQueue = [(DSAppSharing *)self workQueue];
      [(DSTCCStore *)tccStore resetLocalNetworkPermissionForApp:appCopy queue:workQueue handler:handlerCopy];
    }

    else
    {
      workQueue = [(DSTCCStore *)self->_tccStore resetTCCPermission:permissionCopy forApp:appCopy];
      handlerCopy[2](handlerCopy, workQueue);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resetHealthPermissionsForApp:(id)app withCompletionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __67__DSAppSharing_resetHealthPermissionsForApp_withCompletionHandler___block_invoke;
  v14 = &unk_278F72950;
  v15 = appCopy;
  v16 = handlerCopy;
  v8 = handlerCopy;
  v9 = appCopy;
  v10 = MEMORY[0x24C1E7EB0](&v11);
  [(DSTCCStore *)self->_tccStore resetHealthPermissionsForApp:v9 withAuthorizationStore:self->_authorizationStore andCompletionHandler:v10, v11, v12, v13, v14];
}

void __67__DSAppSharing_resetHealthPermissionsForApp_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, 0}];
    v8 = [DSError errorWithCode:4 appName:v6 serviceName:@"DSHealth" underlyingErrors:v7];
    [v5 addObject:v8];

    v9 = DSLog;
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_ERROR))
    {
      __67__DSAppSharing_resetHealthPermissionsForApp_withCompletionHandler___block_invoke_cold_1(v4, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetBackgroundAppRefresh:(id)refresh queue:(id)queue handler:(id)handler
{
  refreshCopy = refresh;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DSAppSharing_resetBackgroundAppRefresh_queue_handler___block_invoke;
  block[3] = &unk_278F729A0;
  v16 = refreshCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = refreshCopy;
  dispatch_async(workQueue, block);
}

void __56__DSAppSharing_resetBackgroundAppRefresh_queue_handler___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = get_DASSchedulerClass_softClass;
  v13 = get_DASSchedulerClass_softClass;
  if (!get_DASSchedulerClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __get_DASSchedulerClass_block_invoke;
    v9[3] = &unk_278F729F0;
    v9[4] = &v10;
    __get_DASSchedulerClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 sharedScheduler];
  v5 = [*(a1 + 32) allObjects];
  [v4 disableAppRefreshForApps:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DSAppSharing_resetBackgroundAppRefresh_queue_handler___block_invoke_2;
  v7[3] = &unk_278F72978;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  dispatch_async(v6, v7);
}

- (void)resetShortcutsAutomationTimer:(id)timer handler:(id)handler
{
  timerCopy = timer;
  handlerCopy = handler;
  workQueue = [(DSAppSharing *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__DSAppSharing_resetShortcutsAutomationTimer_handler___block_invoke;
  v11[3] = &unk_278F726C8;
  v12 = timerCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = timerCopy;
  dispatch_async(workQueue, v11);
}

void __54__DSAppSharing_resetShortcutsAutomationTimer_handler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D79D98] standardClient];
  v18 = 0;
  v3 = [v2 resetAutomationConfirmationStatusWithError:&v18];
  v4 = v18;
  if ((v3 & 1) == 0)
  {
    v5 = DSLog;
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_ERROR))
    {
      __54__DSAppSharing_resetShortcutsAutomationTimer_handler___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DSAppSharing_resetShortcutsAutomationTimer_handler___block_invoke_391;
  block[3] = &unk_278F72600;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v4;
  v17 = v13;
  v14 = v4;
  dispatch_async(v12, block);
}

- (void)approvedBundleIdForKappa:(id)kappa handler:(id)handler
{
  kappaCopy = kappa;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DSAppSharing_approvedBundleIdForKappa_handler___block_invoke;
  block[3] = &unk_278F72748;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = kappaCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = kappaCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __49__DSAppSharing_approvedBundleIdForKappa_handler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained[1];
  v4 = *MEMORY[0x277D6C140];
  v5 = [a1[4] workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DSAppSharing_approvedBundleIdForKappa_handler___block_invoke_2;
  v6[3] = &unk_278F729C8;
  v7 = a1[5];
  v8 = a1[6];
  [v3 appsWithPermissionGrantedForService:v4 queue:v5 completionHandler:v6];
}

void __49__DSAppSharing_approvedBundleIdForKappa_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = &stru_285B9D7E0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__DSAppSharing_approvedBundleIdForKappa_handler___block_invoke_3;
  v8[3] = &unk_278F72600;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __67__DSAppSharing_resetHealthPermissionsForApp_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248C40000, a2, a3, "Error resetting Health authorization %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__DSAppSharing_resetShortcutsAutomationTimer_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248C40000, a2, a3, "Failed to reset automation timer with error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end