@interface DBApplicationController
+ (id)sharedInstance;
- (BOOL)preflightRequiredForApplication:(id)application;
- (DBApplicationController)init;
- (NSArray)allApplications;
- (NSArray)allPlaceholders;
- (id)_lock_applicationWithBundleIdentifier:(id)identifier;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (void)_didAddApplications:(id)applications;
- (void)_didAddPlaceholders:(id)placeholders;
- (void)_didCancelPlaceholders:(id)placeholders;
- (void)_didRemoveApplications:(id)applications;
- (void)_didReplaceApplications:(id)applications;
- (void)_loadApplicationWithInfo:(id)info;
- (void)_loadApplications:(id)applications removeApplications:(id)removeApplications;
- (void)_removeApplicationWithBundleIdentifier:(id)identifier;
- (void)_updateApplications;
- (void)_updatePolicyForApplication:(id)application withRelatedAssetPunchThroughs:(id)throughs;
- (void)addObserver:(id)observer;
- (void)appProtectionCoordinator:(id)coordinator didUpdateBundleIdentifiers:(id)identifiers;
- (void)removeObserver:(id)observer;
- (void)sessionDidConnect;
@end

@implementation DBApplicationController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[DBApplicationController sharedInstance];
  }

  v3 = sharedInstance___applicationController;

  return v3;
}

- (NSArray)allApplications
{
  os_unfair_lock_lock(&self->_lock);
  applicationsByBundleIdentifier = [(DBApplicationController *)self applicationsByBundleIdentifier];
  allValues = [applicationsByBundleIdentifier allValues];

  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

uint64_t __41__DBApplicationController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(DBApplicationController);
  v1 = sharedInstance___applicationController;
  sharedInstance___applicationController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (DBApplicationController)init
{
  v77[3] = *MEMORY[0x277D85DE8];
  v75.receiver = self;
  v75.super_class = DBApplicationController;
  v2 = [(DBApplicationController *)&v75 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applicationsByBundleIdentifier = v3->_applicationsByBundleIdentifier;
    v3->_applicationsByBundleIdentifier = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    placeholdersByBundleIdentifier = v3->_placeholdersByBundleIdentifier;
    v3->_placeholdersByBundleIdentifier = v6;

    v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AFC630];
    observers = v3->_observers;
    v3->_observers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CF8A28]);
    appPolicyEvaluator = v3->_appPolicyEvaluator;
    v3->_appPolicyEvaluator = v10;

    [(CRCarPlayAppPolicyEvaluator *)v3->_appPolicyEvaluator setWantsGeoSupported];
    v12 = [objc_alloc(MEMORY[0x277D412D0]) initWithTargetQueue:0];
    preflightManager = v3->_preflightManager;
    v3->_preflightManager = v12;

    v14 = +[_TtC9DashBoard14DBAssetLibrary shared];
    [v14 setDelegate:v3];

    v15 = objc_alloc_init(DBAppProtectionCoordinator);
    appProtectionCoordinator = v3->_appProtectionCoordinator;
    v3->_appProtectionCoordinator = v15;

    [(DBAppProtectionCoordinator *)v3->_appProtectionCoordinator addObserver:v3];
    v17 = objc_opt_new();
    v18 = objc_alloc_init(MEMORY[0x277D0ACB8]);
    [v18 setApplicationInfoClass:objc_opt_class()];
    [v18 setApplicationPlaceholderClass:objc_opt_class()];
    [v18 setAllowConcurrentLoading:1];
    v19 = objc_alloc_init(MEMORY[0x277CF8A38]);
    liveActivityDenyList = v3->_liveActivityDenyList;
    v3->_liveActivityDenyList = v19;

    v21 = objc_alloc_init(MEMORY[0x277CF8A48]);
    widgetDenyList = v3->_widgetDenyList;
    v3->_widgetDenyList = v21;

    v77[0] = @"com.apple.springboard";
    v77[1] = @"com.apple.commandandcontrol";
    v77[2] = @"com.apple.FaceTimeLinkTrampoline";
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __31__DBApplicationController_init__block_invoke;
    v72[3] = &unk_278F032F8;
    v24 = v23;
    v73 = v24;
    v56 = v17;
    v74 = v56;
    [v18 setApplicationIdentityFilter:v72];
    v25 = [objc_alloc(MEMORY[0x277D0ACB0]) initWithConfiguration:v18];
    appLibrary = v3->_appLibrary;
    v3->_appLibrary = v25;

    v27 = v3->_appLibrary;
    v28 = FBSystemAppBundleID();
    v29 = [(FBSApplicationLibrary *)v27 installedApplicationWithBundleIdentifier:v28];
    dashBoardAppInfo = v3->_dashBoardAppInfo;
    v3->_dashBoardAppInfo = v29;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    allPlaceholders = [(FBSApplicationLibrary *)v3->_appLibrary allPlaceholders];
    v32 = [allPlaceholders countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v32)
    {
      v33 = *v69;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v69 != v33)
          {
            objc_enumerationMutation(allPlaceholders);
          }

          v35 = *(*(&v68 + 1) + 8 * i);
          v36 = v3->_placeholdersByBundleIdentifier;
          bundleIdentifier = [v35 bundleIdentifier];
          [(NSMutableDictionary *)v36 setObject:v35 forKey:bundleIdentifier];
        }

        v32 = [allPlaceholders countByEnumeratingWithState:&v68 objects:v76 count:16];
      }

      while (v32);
    }

    v38 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_248146000, v38, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Loading initial applications", buf, 2u);
    }

    allInstalledApplications = [(FBSApplicationLibrary *)v3->_appLibrary allInstalledApplications];
    [(DBApplicationController *)v3 _loadApplications:allInstalledApplications removeApplications:0];

    objc_initWeak(buf, v3);
    v40 = v3->_appLibrary;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __31__DBApplicationController_init__block_invoke_268;
    v65[3] = &unk_278F03320;
    objc_copyWeak(&v66, buf);
    v41 = [(FBSApplicationLibrary *)v40 observeDidAddPlaceholdersWithBlock:v65];
    addedPlaceholdersToken = v3->_addedPlaceholdersToken;
    v3->_addedPlaceholdersToken = v41;

    v43 = v3->_appLibrary;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __31__DBApplicationController_init__block_invoke_3;
    v63[3] = &unk_278F03320;
    objc_copyWeak(&v64, buf);
    v44 = [(FBSApplicationLibrary *)v43 observeDidCancelPlaceholdersWithBlock:v63];
    canceledPlaceholdersToken = v3->_canceledPlaceholdersToken;
    v3->_canceledPlaceholdersToken = v44;

    v46 = v3->_appLibrary;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __31__DBApplicationController_init__block_invoke_5;
    v61[3] = &unk_278F03320;
    objc_copyWeak(&v62, buf);
    v47 = [(FBSApplicationLibrary *)v46 observeDidAddApplicationsWithBlock:v61];
    addedAppsToken = v3->_addedAppsToken;
    v3->_addedAppsToken = v47;

    v49 = v3->_appLibrary;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __31__DBApplicationController_init__block_invoke_7;
    v59[3] = &unk_278F03348;
    objc_copyWeak(&v60, buf);
    v50 = [(FBSApplicationLibrary *)v49 observeDidReplaceApplicationsWithBlock:v59];
    replacedAppsToken = v3->_replacedAppsToken;
    v3->_replacedAppsToken = v50;

    v52 = v3->_appLibrary;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __31__DBApplicationController_init__block_invoke_9;
    v57[3] = &unk_278F03320;
    objc_copyWeak(&v58, buf);
    v53 = [(FBSApplicationLibrary *)v52 observeDidRemoveApplicationsWithBlock:v57];
    removedAppsToken = v3->_removedAppsToken;
    v3->_removedAppsToken = v53;

    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v66);
    objc_destroyWeak(buf);
  }

  return v3;
}

uint64_t __31__DBApplicationController_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [v4 bundleIdentifier];
  LOBYTE(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v22 = a1;
    v8 = [MEMORY[0x277CF8A10] requiredEntitlementKeys];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 isEqualToString:@"com.apple.developer.carplay-protocols"];
          v16 = [v4 entitlements];
          if (v15)
          {
            v18 = objc_opt_class();
            v17 = [v16 objectForKey:v14 ofClass:v18 valuesOfClass:objc_opt_class()];
            LOBYTE(v18) = v17 != 0;
          }

          else
          {
            v17 = [v16 objectForKey:v14 ofClass:objc_opt_class()];
            LODWORD(v18) = [v17 BOOLValue];
          }

          v11 |= v18;
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v19 = *(v22 + 40);
    v20 = [v4 bundleIdentifier];
    LOBYTE(v19) = [v19 containsBundleIdentifier:v20];

    v7 = v11 & (v19 ^ 1);
  }

  return v7 & 1;
}

void __31__DBApplicationController_init__block_invoke_268(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DBApplicationController_init__block_invoke_2;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __31__DBApplicationController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didAddPlaceholders:*(a1 + 32)];
}

void __31__DBApplicationController_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DBApplicationController_init__block_invoke_4;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __31__DBApplicationController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didCancelPlaceholders:*(a1 + 32)];
}

void __31__DBApplicationController_init__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DBApplicationController_init__block_invoke_6;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __31__DBApplicationController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didAddApplications:*(a1 + 32)];
}

void __31__DBApplicationController_init__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DBApplicationController_init__block_invoke_8;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __31__DBApplicationController_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReplaceApplications:*(a1 + 32)];
}

void __31__DBApplicationController_init__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DBApplicationController_init__block_invoke_10;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __31__DBApplicationController_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRemoveApplications:*(a1 + 32)];
}

- (NSArray)allPlaceholders
{
  os_unfair_lock_lock(&self->_lock);
  placeholdersByBundleIdentifier = [(DBApplicationController *)self placeholdersByBundleIdentifier];
  allValues = [placeholdersByBundleIdentifier allValues];

  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(DBApplicationController *)self _lock_applicationWithBundleIdentifier:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBApplicationController *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBApplicationController *)self observers];
  [observers removeObserver:observerCopy];
}

- (BOOL)preflightRequiredForApplication:(id)application
{
  applicationCopy = application;
  info = [applicationCopy info];
  applicationIdentity = [info applicationIdentity];
  if (applicationIdentity)
  {
    preflightManager = [(DBApplicationController *)self preflightManager];
    info2 = [applicationCopy info];
    applicationIdentity2 = [info2 applicationIdentity];
    v10 = [preflightManager requiresPreflightForApplication:applicationIdentity2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)sessionDidConnect
{
  _appPolicyEvaluator = [(DBApplicationController *)self _appPolicyEvaluator];
  [_appPolicyEvaluator updateGeoSupported];

  [(DBApplicationController *)self _updateApplications];
}

- (void)_updateApplications
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB58] set];
  v21 = [MEMORY[0x277CBEB58] set];
  [(DBApplicationController *)self allApplications];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = +[_TtC9DashBoard14DBAssetLibrary shared];
        bundleIdentifier = [v7 bundleIdentifier];
        v10 = [v8 verifiedPunchThroughsWithBundleIdentifier:bundleIdentifier];

        appPolicy = [v7 appPolicy];
        LOBYTE(bundleIdentifier) = [appPolicy isSessionDependentPolicy];

        if ((bundleIdentifier & 1) != 0 || v10)
        {
          appPolicy2 = [v7 appPolicy];
          isCarPlaySupported = [appPolicy2 isCarPlaySupported];

          [(DBApplicationController *)self _updatePolicyForApplication:v7 withRelatedAssetPunchThroughs:v10];
          appPolicy3 = [v7 appPolicy];
          isCarPlaySupported2 = [appPolicy3 isCarPlaySupported];

          if (isCarPlaySupported != isCarPlaySupported2)
          {
            if (isCarPlaySupported)
            {
              v16 = v21;
            }

            else
            {
              v16 = v22;
            }

            [v16 addObject:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  if ([v22 count] || objc_msgSend(v21, "count"))
  {
    observers = [(DBApplicationController *)self observers];
    v18 = [v22 copy];
    v19 = [MEMORY[0x277CBEB98] set];
    v20 = [v21 copy];
    [observers applicationController:self addedApplications:v18 updatedApplications:v19 removedApplications:v20];
  }
}

- (void)appProtectionCoordinator:(id)coordinator didUpdateBundleIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  identifiersCopy = identifiers;
  v8 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = identifiersCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Protected apps did update: %{public}@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CF8A28]);
  [(DBApplicationController *)self setAppPolicyEvaluator:v9];

  appPolicyEvaluator = [(DBApplicationController *)self appPolicyEvaluator];
  [appPolicyEvaluator setWantsGeoSupported];

  v11 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__DBApplicationController_appProtectionCoordinator_didUpdateBundleIdentifiers___block_invoke;
  v19[3] = &unk_278F03370;
  v19[4] = self;
  v20 = coordinatorCopy;
  v12 = v11;
  v21 = v12;
  v13 = coordinatorCopy;
  [identifiersCopy enumerateObjectsUsingBlock:v19];
  v14 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Updated apps: %{public}@", buf, 0xCu);
  }

  observers = [(DBApplicationController *)self observers];
  v16 = [MEMORY[0x277CBEB98] set];
  v17 = [v12 copy];
  v18 = [MEMORY[0x277CBEB98] set];
  [observers applicationController:self addedApplications:v16 updatedApplications:v17 removedApplications:v18];
}

void __79__DBApplicationController_appProtectionCoordinator_didUpdateBundleIdentifiers___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] applicationWithBundleIdentifier:v3];
  if (v4)
  {
    [a1[4] _updatePolicyForApplication:v4 withRelatedAssetPunchThroughs:0];
    os_unfair_lock_lock(a1[4] + 2);
    [v4 setLockedOrHidden:{objc_msgSend(a1[5], "applicationBundleIdentifierIsLockedOrHidden:", v3)}];
    os_unfair_lock_unlock(a1[4] + 2);
    [a1[6] addObject:v4];
  }

  else
  {
    v5 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__DBApplicationController_appProtectionCoordinator_didUpdateBundleIdentifiers___block_invoke_cold_1();
    }
  }
}

- (void)_updatePolicyForApplication:(id)application withRelatedAssetPunchThroughs:(id)throughs
{
  throughsCopy = throughs;
  applicationCopy = application;
  info = [applicationCopy info];
  carPlayDeclaration = [info carPlayDeclaration];

  if (carPlayDeclaration)
  {
    appPolicyEvaluator = [(DBApplicationController *)self appPolicyEvaluator];
    v10 = appPolicyEvaluator;
    if (throughsCopy)
    {
      [appPolicyEvaluator effectivePolicyForAppDeclaration:carPlayDeclaration withVerifiedPunchThroughs:?];
    }

    else
    {
      [appPolicyEvaluator effectivePolicyForAppDeclaration:carPlayDeclaration];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  [applicationCopy setAppPolicy:v11];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_loadApplications:(id)applications removeApplications:(id)removeApplications
{
  applicationsCopy = applications;
  v7 = MEMORY[0x277CBEB58];
  removeApplicationsCopy = removeApplications;
  v9 = [v7 setWithArray:applicationsCopy];
  v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(applicationsCopy, "count")}];
  v11 = [MEMORY[0x277CBEB58] setWithArray:removeApplicationsCopy];

  dashBoardAppInfo = [(DBApplicationController *)self dashBoardAppInfo];

  if (dashBoardAppInfo)
  {
    dashBoardAppInfo2 = [(DBApplicationController *)self dashBoardAppInfo];
    [v9 removeObject:dashBoardAppInfo2];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__DBApplicationController__loadApplications_removeApplications___block_invoke;
  v23[3] = &unk_278F03398;
  v23[4] = self;
  v24 = v9;
  v25 = v10;
  v14 = v10;
  v15 = v9;
  [applicationsCopy enumerateObjectsUsingBlock:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__DBApplicationController__loadApplications_removeApplications___block_invoke_2;
  v22[3] = &unk_278F033C0;
  v22[4] = self;
  [v11 enumerateObjectsUsingBlock:v22];
  v16 = [MEMORY[0x277CBEB58] setWithSet:v15];
  [v16 unionSet:v14];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__DBApplicationController__loadApplications_removeApplications___block_invoke_3;
  v21[3] = &unk_278F033C0;
  v21[4] = self;
  [v16 enumerateObjectsUsingBlock:v21];
  observers = [(DBApplicationController *)self observers];
  v18 = [v15 copy];
  v19 = [v14 copy];
  v20 = [v11 copy];
  [observers applicationController:self addedApplications:v18 updatedApplications:v19 removedApplications:v20];
}

void __64__DBApplicationController__loadApplications_removeApplications___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v10 = v3;
  v5 = [v3 bundleIdentifier];
  v6 = [v4 applicationWithBundleIdentifier:v5];
  if (v6)
  {
    v7 = v6;
    v8 = [a1[4] dashBoardAppInfo];

    v9 = v10;
    if (v8 == v10)
    {
      goto LABEL_6;
    }

    [a1[5] removeObject:v10];
    [a1[6] addObject:v10];
  }

  else
  {
  }

  v9 = v10;
LABEL_6:
}

void __64__DBApplicationController__loadApplications_removeApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 _removeApplicationWithBundleIdentifier:v3];
}

- (void)_loadApplicationWithInfo:(id)info
{
  infoCopy = info;
  bundleIdentifier = [infoCopy bundleIdentifier];
  v5 = [(DBApplicationController *)self applicationWithBundleIdentifier:?];
  if (v5)
  {
    [(DBApplicationController *)self _removeApplicationWithBundleIdentifier:bundleIdentifier];
  }

  v6 = [[DBApplication alloc] initWithApplicationInfo:infoCopy];

  [(DBApplicationController *)self _updatePolicyForApplication:v6 withRelatedAssetPunchThroughs:0];
  os_unfair_lock_lock(&self->_lock);
  placeholdersByBundleIdentifier = [(DBApplicationController *)self placeholdersByBundleIdentifier];
  v8 = [placeholdersByBundleIdentifier objectForKeyedSubscript:bundleIdentifier];

  [(DBApplication *)v6 setPlaceholder:v8];
  appProtectionCoordinator = [(DBApplicationController *)self appProtectionCoordinator];
  -[DBApplication setLockedOrHidden:](v6, "setLockedOrHidden:", [appProtectionCoordinator applicationBundleIdentifierIsLockedOrHidden:bundleIdentifier]);

  applicationsByBundleIdentifier = [(DBApplicationController *)self applicationsByBundleIdentifier];
  [applicationsByBundleIdentifier setObject:v6 forKeyedSubscript:bundleIdentifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeApplicationWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    os_unfair_lock_lock(&self->_lock);
    applicationsByBundleIdentifier = [(DBApplicationController *)self applicationsByBundleIdentifier];
    [applicationsByBundleIdentifier setObject:0 forKeyedSubscript:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)_lock_applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationsByBundleIdentifier = [(DBApplicationController *)self applicationsByBundleIdentifier];
  v6 = [applicationsByBundleIdentifier objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)_didAddPlaceholders:(id)placeholders
{
  v9 = *MEMORY[0x277D85DE8];
  placeholdersCopy = placeholders;
  v5 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = [placeholdersCopy count];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Added %ld placeholders", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DBApplicationController__didAddPlaceholders___block_invoke;
  v6[3] = &unk_278F033E8;
  v6[4] = self;
  [placeholdersCopy enumerateObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_lock);
}

void __47__DBApplicationController__didAddPlaceholders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = [*(a1 + 32) placeholdersByBundleIdentifier];
    v6 = [v3 bundleIdentifier];
    [v5 setObject:v3 forKeyedSubscript:v6];

    v7 = [*(a1 + 32) applicationsByBundleIdentifier];
    v8 = [v3 bundleIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    [v9 setPlaceholder:v3];
  }

  else
  {
    v10 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47__DBApplicationController__didAddPlaceholders___block_invoke_cold_1();
    }
  }
}

- (void)_didCancelPlaceholders:(id)placeholders
{
  v9 = *MEMORY[0x277D85DE8];
  placeholdersCopy = placeholders;
  v5 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = [placeholdersCopy count];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Canceled %ld placeholders", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__DBApplicationController__didCancelPlaceholders___block_invoke;
  v6[3] = &unk_278F033E8;
  v6[4] = self;
  [placeholdersCopy enumerateObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_lock);
}

void __50__DBApplicationController__didCancelPlaceholders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = [*(a1 + 32) placeholdersByBundleIdentifier];
    v6 = [v3 bundleIdentifier];
    [v5 setObject:0 forKeyedSubscript:v6];

    v7 = [*(a1 + 32) applicationsByBundleIdentifier];
    v8 = [v3 bundleIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    [v9 setPlaceholder:0];
  }

  else
  {
    v10 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47__DBApplicationController__didAddPlaceholders___block_invoke_cold_1();
    }
  }
}

- (void)_didAddApplications:(id)applications
{
  v9 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = [applicationsCopy count];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Added %ld applications", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DBApplicationController__didAddApplications___block_invoke;
  v6[3] = &unk_278F03410;
  v6[4] = self;
  [applicationsCopy enumerateObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_lock);
  [(DBApplicationController *)self _loadApplications:applicationsCopy removeApplications:0];
}

void __47__DBApplicationController__didAddApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 32) placeholdersByBundleIdentifier];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [*(a1 + 32) placeholdersByBundleIdentifier];
      [v7 setObject:0 forKeyedSubscript:v4];
    }
  }

  else
  {
    v8 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__DBApplicationController__didAddApplications___block_invoke_cold_1();
    }
  }
}

- (void)_didReplaceApplications:(id)applications
{
  v11 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [applicationsCopy count];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Replaced %ld applications", buf, 0xCu);
  }

  objectEnumerator = [applicationsCopy objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  os_unfair_lock_lock(&self->_lock);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__DBApplicationController__didReplaceApplications___block_invoke;
  v8[3] = &unk_278F03410;
  v8[4] = self;
  [allObjects enumerateObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock);
  [(DBApplicationController *)self _loadApplications:allObjects removeApplications:0];
}

void __51__DBApplicationController__didReplaceApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 32) placeholdersByBundleIdentifier];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [*(a1 + 32) placeholdersByBundleIdentifier];
      [v7 setObject:0 forKeyedSubscript:v4];
    }
  }

  else
  {
    v8 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__DBApplicationController__didAddApplications___block_invoke_cold_1();
    }
  }
}

- (void)_didRemoveApplications:(id)applications
{
  v16 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = DBLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [applicationsCopy count];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBApplicationController] Removed %ld applications", buf, 0xCu);
  }

  v6 = [applicationsCopy mutableCopy];
  os_unfair_lock_lock(&self->_lock);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __50__DBApplicationController__didRemoveApplications___block_invoke;
  v11 = &unk_278F03438;
  selfCopy = self;
  v13 = v6;
  v7 = v6;
  [applicationsCopy enumerateObjectsUsingBlock:&v8];
  os_unfair_lock_unlock(&self->_lock);
  [(DBApplicationController *)self _loadApplications:0 removeApplications:v7, v8, v9, v10, v11, selfCopy];
}

void __50__DBApplicationController__didRemoveApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 bundleIdentifier];
    v7 = [v5 _lock_applicationWithBundleIdentifier:v6];

    if (!v7)
    {
      [*(a1 + 40) removeObject:v3];
    }
  }

  else
  {
    v8 = DBLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__DBApplicationController__didAddApplications___block_invoke_cold_1();
    }
  }
}

@end