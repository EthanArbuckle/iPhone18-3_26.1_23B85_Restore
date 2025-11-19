@interface DSAppSharing
- (DSAppSharing)initWithTCCStore:(id)a3;
- (id)newDictionaryWithApps:(id)a3;
- (id)removeAppsWithNoPermissions:(id)a3;
- (void)addApp:(id)a3 toMap:(id)a4 withLocationAuthorization:(unint64_t)a5;
- (void)addApp:(id)a3 toMap:(id)a4 withService:(id)a5;
- (void)addHealthPermissionsToAppMap:(id)a3 handler:(id)a4;
- (void)addLocalNetworkPermissionsToAppMap:(id)a3 handler:(id)a4;
- (void)addLocationPermissions:(id)a3;
- (void)addTCCPermissionsToAppMap:(id)a3 handler:(id)a4;
- (void)approvedBundleIdForKappa:(id)a3 handler:(id)a4;
- (void)collectAppsWithAccessToService:(id)a3 appMap:(id)a4 completionHandler:(id)a5;
- (void)collectPermissionsForApps:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)resetBackgroundAppRefresh:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)resetHealthPermissionsForApp:(id)a3 withCompletionHandler:(id)a4;
- (void)resetPermission:(id)a3 forApp:(id)a4 handler:(id)a5;
- (void)resetPermission:(id)a3 forApps:(id)a4 handler:(id)a5;
- (void)resetPermissions:(id)a3 forApps:(id)a4 queue:(id)a5 handler:(id)a6;
- (void)resetShortcutsAutomationTimer:(id)a3 handler:(id)a4;
@end

@implementation DSAppSharing

- (DSAppSharing)initWithTCCStore:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = os_log_create("com.apple.DigitalSeparation", "DSAppSharing");
    v7 = DSLog;
    DSLog = v6;
  }

  tccStore = self->_tccStore;
  self->_tccStore = v4;
  v9 = v4;

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

- (void)collectPermissionsForApps:(id)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DSAppSharing_collectPermissionsForApps_queue_handler___block_invoke;
  block[3] = &unk_278F72748;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

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

- (id)removeAppsWithNoPermissions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (void)addApp:(id)a3 toMap:(id)a4 withLocationAuthorization:(unint64_t)a5
{
  v12 = a4;
  v8 = a3;
  v9 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v12 objectForKey:v8];

  if (v10)
  {
    [v10 setLocationAuthorization:a5];
    v11 = [v10 appID];
    [v12 setValue:v10 forKey:v11];
  }
}

- (void)addApp:(id)a3 toMap:(id)a4 withService:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [v14 objectForKey:v9];

  if (v11)
  {
    if ([DSUtilities isContactsTCC:v8])
    {

      v8 = @"DSContacts";
    }

    v12 = [v11 permissionsGranted];
    [v12 addObject:v8];

    v13 = [v11 appID];
    [v14 setValue:v11 forKey:v13];
  }
}

- (id)newDictionaryWithApps:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
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
        v14 = [(DSApp *)v13 appID];
        v15 = displayNameForApp(v14);
        [(DSApp *)v13 setDisplayName:v15];

        v16 = [(DSApp *)v13 displayName];

        if (v16)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [(DSApp *)v13 setPermissionsGranted:v17];

          v18 = [(DSApp *)v13 appID];
          [v6 setValue:v13 forKey:v18];
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

- (void)collectAppsWithAccessToService:(id)a3 appMap:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v11);

  if ([DSApp skipTCCCheck:v8])
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    tccStore = self->_tccStore;
    v13 = [(DSAppSharing *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__DSAppSharing_collectAppsWithAccessToService_appMap_completionHandler___block_invoke;
    v14[3] = &unk_278F72770;
    v15 = v9;
    v16 = self;
    v17 = v8;
    v18 = v10;
    [(DSTCCStore *)tccStore appsWithPermissionGrantedForService:v17 queue:v13 completionHandler:v14];
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

- (void)addTCCPermissionsToAppMap:(id)a3 handler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v22 = a4;
  v6 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = dispatch_group_create();
  v8 = +[DSUtilities tccServices];
  v9 = +[DSUtilities contactsServices];
  v10 = [v9 allObjects];
  v11 = [v8 arrayByAddingObjectsFromArray:v10];

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
        [(DSAppSharing *)self collectAppsWithAccessToService:v17 appMap:v24 completionHandler:v28];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v18 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DSAppSharing_addTCCPermissionsToAppMap_handler___block_invoke_2;
  block[3] = &unk_278F72600;
  v26 = v12;
  v27 = v22;
  v19 = v12;
  v20 = v22;
  dispatch_group_notify(v7, v18, block);

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

- (void)addLocationPermissions:(id)a3
{
  v4 = a3;
  v5 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DSTCCStore *)self->_tccStore appsWithLocationService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__DSAppSharing_addLocationPermissions___block_invoke;
  v8[3] = &unk_278F727C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)addHealthPermissionsToAppMap:(id)a3 handler:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  v7 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = dispatch_group_create();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v6;
  obj = [v6 allKeys];
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
        v29 = self;
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

  v17 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DSAppSharing_addHealthPermissionsToAppMap_handler___block_invoke_3;
  block[3] = &unk_278F72600;
  v25 = v9;
  v26 = v21;
  v18 = v9;
  v19 = v21;
  dispatch_group_notify(v8, v17, block);

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

- (void)addLocalNetworkPermissionsToAppMap:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DSAppSharing *)self workQueue];
  dispatch_assert_queue_V2(v8);

  tccStore = self->_tccStore;
  v10 = MEMORY[0x277CBEB98];
  v11 = [v6 allKeys];
  v12 = [v10 setWithArray:v11];
  v13 = [(DSAppSharing *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__DSAppSharing_addLocalNetworkPermissionsToAppMap_handler___block_invoke;
  v16[3] = &unk_278F72838;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14 = v7;
  v15 = v6;
  [(DSTCCStore *)tccStore allAppsWithLocalNetworkAccess:v12 queue:v13 handler:v16];
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

- (void)resetPermission:(id)a3 forApps:(id)a4 handler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v8 = a4;
  v20 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
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
        [(DSAppSharing *)self resetPermission:v22 forApp:v15 handler:v26];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v16 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DSAppSharing_resetPermission_forApps_handler___block_invoke_2;
  block[3] = &unk_278F72600;
  v24 = v9;
  v25 = v20;
  v17 = v9;
  v18 = v20;
  dispatch_group_notify(v10, v16, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __48__DSAppSharing_resetPermission_forApps_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)resetPermissions:(id)a3 forApps:(id)a4 queue:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DSAppSharing_resetPermissions_forApps_queue_handler___block_invoke;
  block[3] = &unk_278F72928;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
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

- (void)resetPermission:(id)a3 forApp:(id)a4 handler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([DSRestrictionStore isPermissionRestricted:v8]&& [(DSTCCStore *)self->_tccStore isServiceGranted:v8 forApp:v9])
  {
    v11 = DSLog;
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_248C40000, v11, OS_LOG_TYPE_INFO, "Cannot reset permission %@ for app %@ due to screen time restrictions", &v18, 0x16u);
    }

    v12 = MEMORY[0x277CBEA60];
    v13 = [DSError errorWithCode:7 serviceName:v8];
    v14 = [v12 arrayWithObject:v13];
    v10[2](v10, v14);
  }

  else if (([v8 isEqualToString:@"DSLocationAlways"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"DSLocationWhenInUse"))
  {
    [(DSTCCStore *)self->_tccStore resetLocationPermissionForApp:v9];
    v10[2](v10, 0);
  }

  else if ([v8 isEqualToString:@"DSHealth"])
  {
    [(DSAppSharing *)self resetHealthPermissionsForApp:v9 withCompletionHandler:v10];
  }

  else
  {
    if ([v8 isEqualToString:@"DSLocalNetwork"])
    {
      tccStore = self->_tccStore;
      v17 = [(DSAppSharing *)self workQueue];
      [(DSTCCStore *)tccStore resetLocalNetworkPermissionForApp:v9 queue:v17 handler:v10];
    }

    else
    {
      v17 = [(DSTCCStore *)self->_tccStore resetTCCPermission:v8 forApp:v9];
      v10[2](v10, v17);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resetHealthPermissionsForApp:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __67__DSAppSharing_resetHealthPermissionsForApp_withCompletionHandler___block_invoke;
  v14 = &unk_278F72950;
  v15 = v6;
  v16 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)resetBackgroundAppRefresh:(id)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DSAppSharing_resetBackgroundAppRefresh_queue_handler___block_invoke;
  block[3] = &unk_278F729A0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);
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

- (void)resetShortcutsAutomationTimer:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DSAppSharing *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__DSAppSharing_resetShortcutsAutomationTimer_handler___block_invoke;
  v11[3] = &unk_278F726C8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
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

- (void)approvedBundleIdForKappa:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(DSAppSharing *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DSAppSharing_approvedBundleIdForKappa_handler___block_invoke;
  block[3] = &unk_278F72748;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

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