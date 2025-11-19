@interface MCUIDataManager
+ (id)sharedManager;
- (MCUIDataManager)init;
- (NSArray)blockedApplications;
- (NSArray)enterpriseAppSigners;
- (NSArray)freeDeveloperAppSigners;
- (NSArray)uninstalledProfilesInfo;
- (id)configurationProfiles;
- (id)mdmProfile;
- (unint64_t)appSignerCount;
- (unint64_t)installedProfileCount;
- (unint64_t)itemCount;
- (void)_reloadQueueReloadDataInBackgroundIncludingProfiles:(BOOL)a3 appSigners:(BOOL)a4 blockedApplications:(BOOL)a5 completion:(id)a6;
- (void)allDeviceManagementOutMDMProfileInfo:(id *)a3 outConfigurationProfilesInfo:(id *)a4 outUninstalledProfilesInfo:(id *)a5 outEnterpriseAppSigners:(id *)a6 outFreeDevAppSigners:(id *)a7 outBlockedApplications:(id *)a8;
- (void)appMovedToBackground:(id)a3;
- (void)appMovedToForeground:(id)a3;
- (void)dealloc;
- (void)profilesChanged:(id)a3;
- (void)reloadAppSignersAndBlockedAppsInBackgroundWithCompletion:(id)a3;
- (void)reloadDataInBackgroundIncludingProfiles:(BOOL)a3 appSigners:(BOOL)a4 blockedApplications:(BOOL)a5 completion:(id)a6;
- (void)reloadProfilesInBackgroundWithCompletion:(id)a3;
@end

@implementation MCUIDataManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MCUIDataManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __32__MCUIDataManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MCUIDataManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MCUIDataManager)init
{
  v23.receiver = self;
  v23.super_class = MCUIDataManager;
  v2 = [(MCUIDataManager *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MCUIDataManager member queue", 0);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v3;

    v5 = dispatch_queue_create("MCUIDataManager reload queue", 0);
    reloadQueue = v2->_reloadQueue;
    v2->_reloadQueue = v5;

    v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
    appWorkspace = v2->_appWorkspace;
    v2->_appWorkspace = v7;

    [(LSApplicationWorkspace *)v2->_appWorkspace addObserver:v2];
    v2->_observing = 1;
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D26148];
    v11 = [MEMORY[0x277D262A0] sharedConnection];
    [v9 addObserver:v2 selector:sel_profilesChanged_ name:v10 object:v11];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel_appMovedToBackground_ name:*MEMORY[0x277D76660] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_appMovedToForeground_ name:*MEMORY[0x277D76648] object:0];

    objc_initWeak(&location, v2);
    v14 = MEMORY[0x277D85CD0];
    v15 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __23__MCUIDataManager_init__block_invoke;
    handler[3] = &unk_279861FA8;
    objc_copyWeak(&v21, &location);
    LODWORD(v14) = notify_register_dispatch("MISProvisioningProfileInstalled", &v2->_provisioningProfileInstalledToken, v14, handler);

    if (v14)
    {
      NSLog(&cfstr_FailedToRegist.isa);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __23__MCUIDataManager_init__block_invoke_2;
    v18[3] = &unk_279861FA8;
    objc_copyWeak(&v19, &location);
    v16 = notify_register_dispatch("MISProvisioningProfileRemoved", &v2->_provisioningProfileInstalledToken, MEMORY[0x277D85CD0], v18);

    if (v16)
    {
      NSLog(&cfstr_FailedToRegist_0.isa);
    }

    if ([(MCUIDataManager *)v2 isDeviceManagementHidden])
    {
      NSLog(&cfstr_DataManagerNot.isa);
    }

    else
    {
      NSLog(&cfstr_DataManagerPre.isa);
      [(MCUIDataManager *)v2 reloadDataInBackgroundIncludingProfiles:1 appSigners:1 blockedApplications:0 completion:0];
      [(MCUIDataManager *)v2 reloadDataInBackgroundIncludingProfiles:0 appSigners:0 blockedApplications:1 completion:0];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __23__MCUIDataManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadAppSignersAndBlockedAppsInBackgroundWithCompletion:0];
}

void __23__MCUIDataManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadAppSignersAndBlockedAppsInBackgroundWithCompletion:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76648] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76660] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D26148] object:0];

  if (self->_observing)
  {
    [(LSApplicationWorkspace *)self->_appWorkspace removeObserver:self];
    self->_observing = 0;
  }

  notify_cancel(self->_appsChangedNotifyToken);
  notify_cancel(self->_provisioningProfileInstalledToken);
  notify_cancel(self->_provisioningProfileRemovedToken);
  v6.receiver = self;
  v6.super_class = MCUIDataManager;
  [(MCUIDataManager *)&v6 dealloc];
}

- (void)appMovedToBackground:(id)a3
{
  v4 = [(MCUIDataManager *)self appWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = [(MCUIDataManager *)self observing];

    if (v6)
    {
      v7 = [(MCUIDataManager *)self appWorkspace];
      [v7 removeObserver:self];

      [(MCUIDataManager *)self setObserving:0];
    }
  }
}

- (void)appMovedToForeground:(id)a3
{
  v4 = [(MCUIDataManager *)self appWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = [(MCUIDataManager *)self observing];

    if (!v6)
    {
      v7 = [(MCUIDataManager *)self appWorkspace];
      [v7 addObserver:self];

      [(MCUIDataManager *)self setObserving:1];
    }
  }

  [(MCUIDataManager *)self reloadAppSignersAndBlockedAppsInBackgroundWithCompletion:0];
}

- (void)profilesChanged:(id)a3
{
  NSLog(&cfstr_DataManagerRel.isa, a2, a3);

  [(MCUIDataManager *)self reloadAllDataInBackgroundWithCompletion:0];
}

- (unint64_t)itemCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__MCUIDataManager_itemCount__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __28__MCUIDataManager_itemCount__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = [*(v2 + 32) count];
  if (v3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(*(a1 + 32) + 48) count];
  v7 = v5 + v6 + [*(*(a1 + 32) + 56) count];
  v8 = [*(*(a1 + 32) + 64) count];
  result = [*(*(a1 + 32) + 40) count];
  *(*(*(a1 + 40) + 8) + 24) = v7 + v8 + result;
  return result;
}

- (unint64_t)appSignerCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MCUIDataManager_appSignerCount__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __33__MCUIDataManager_appSignerCount__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) count];
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result + v2;
  return result;
}

- (unint64_t)installedProfileCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MCUIDataManager_installedProfileCount__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__MCUIDataManager_installedProfileCount__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  result = [*(v2 + 32) count];
  if (v3)
  {
    v5 = result + 1;
  }

  else
  {
    v5 = result;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  return result;
}

- (id)mdmProfile
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__MCUIDataManager_mdmProfile__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)configurationProfiles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MCUIDataManager_configurationProfiles__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)uninstalledProfilesInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MCUIDataManager_uninstalledProfilesInfo__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)freeDeveloperAppSigners
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MCUIDataManager_freeDeveloperAppSigners__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)enterpriseAppSigners
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MCUIDataManager_enterpriseAppSigners__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)blockedApplications
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(MCUIDataManager *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MCUIDataManager_blockedApplications__block_invoke;
  v6[3] = &unk_279862060;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)allDeviceManagementOutMDMProfileInfo:(id *)a3 outConfigurationProfilesInfo:(id *)a4 outUninstalledProfilesInfo:(id *)a5 outEnterpriseAppSigners:(id *)a6 outFreeDevAppSigners:(id *)a7 outBlockedApplications:(id *)a8
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v11 = [(MCUIDataManager *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __180__MCUIDataManager_allDeviceManagementOutMDMProfileInfo_outConfigurationProfilesInfo_outUninstalledProfilesInfo_outEnterpriseAppSigners_outFreeDevAppSigners_outBlockedApplications___block_invoke;
  block[3] = &unk_279862088;
  block[4] = self;
  block[5] = &v47;
  block[6] = &v41;
  block[7] = &v35;
  block[8] = &v29;
  block[9] = &v23;
  block[10] = &v17;
  dispatch_sync(v11, block);

  if (a3)
  {
    *a3 = v48[5];
  }

  if (a4)
  {
    *a4 = v42[5];
  }

  if (a5)
  {
    *a5 = v36[5];
  }

  if (a6)
  {
    *a6 = v30[5];
  }

  if (a7)
  {
    *a7 = v24[5];
  }

  if (a8)
  {
    *a8 = v18[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
}

void __180__MCUIDataManager_allDeviceManagementOutMDMProfileInfo_outConfigurationProfilesInfo_outUninstalledProfilesInfo_outEnterpriseAppSigners_outFreeDevAppSigners_outBlockedApplications___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 40));
  objc_storeStrong((*(a1[8] + 8) + 40), *(a1[4] + 56));
  objc_storeStrong((*(a1[9] + 8) + 40), *(a1[4] + 48));
  v2 = *(a1[4] + 64);
  v3 = (*(a1[10] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)reloadDataInBackgroundIncludingProfiles:(BOOL)a3 appSigners:(BOOL)a4 blockedApplications:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  if (![(MCUIDataManager *)self isDeviceManagementHidden])
  {
    v11 = [(MCUIDataManager *)self reloadQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__MCUIDataManager_reloadDataInBackgroundIncludingProfiles_appSigners_blockedApplications_completion___block_invoke;
    block[3] = &unk_2798620B0;
    block[4] = self;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    v13 = v10;
    dispatch_async(v11, block);
  }
}

- (void)_reloadQueueReloadDataInBackgroundIncludingProfiles:(BOOL)a3 appSigners:(BOOL)a4 blockedApplications:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a6;
  if (![(MCUIDataManager *)self isDeviceManagementHidden])
  {
    v32 = v10;
    if (v8)
    {
      if (MCUIForPairedDevice())
      {
        v11 = 2;
      }

      else
      {
        v11 = [MEMORY[0x277D26290] thisDeviceType];
      }

      v17 = [MEMORY[0x277D262A0] sharedConnection];
      v56 = 0;
      v57[0] = 0;
      v55 = 0;
      [v17 allProfilesOutMDMProfileInfo:v57 outConfigurationProfilesInfo:&v56 outUninstalledProfilesInfo:&v55 forDeviceType:v11];
      v13 = v57[0];
      v31 = v56;
      v12 = v55;

      NSLog(&cfstr_DataManagerRet.isa);
      if (v7)
      {
LABEL_10:
        v54 = 0;
        v15 = [MCUIAppSigner enterpriseAppSignersWithOutDeveloperAppSigners:&v54];
        v14 = v54;
        NSLog(&cfstr_DataManagerRet_0.isa, [v15 count], objc_msgSend(v14, "count"));
        if (v6)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0;
      v31 = 0;
      v13 = 0;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    v14 = 0;
    v15 = 0;
    if (v6)
    {
LABEL_11:
      v16 = [MEMORY[0x277D03238] blockedApplications];
      NSLog(&cfstr_DataManagerRet_1.isa, [v16 count]);
      goto LABEL_12;
    }

LABEL_7:
    v16 = 0;
LABEL_12:
    v18 = [(MCUIDataManager *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__MCUIDataManager__reloadQueueReloadDataInBackgroundIncludingProfiles_appSigners_blockedApplications_completion___block_invoke;
    block[3] = &unk_2798620D8;
    v51 = v8;
    block[4] = self;
    v19 = v13;
    v45 = v19;
    v20 = v31;
    v46 = v20;
    v21 = v12;
    v47 = v21;
    v52 = v7;
    v22 = v15;
    v48 = v22;
    v23 = v14;
    v49 = v23;
    v53 = v6;
    v24 = v16;
    v50 = v24;
    dispatch_sync(v18, block);

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __113__MCUIDataManager__reloadQueueReloadDataInBackgroundIncludingProfiles_appSigners_blockedApplications_completion___block_invoke_2;
    v33[3] = &unk_279862100;
    v39 = v24;
    v40 = v32;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v41 = v8;
    v42 = v7;
    v43 = v6;
    v25 = v24;
    v26 = v23;
    v27 = v22;
    v28 = v21;
    v29 = v20;
    v30 = v19;
    dispatch_async(MEMORY[0x277D85CD0], v33);

    v10 = v32;
  }
}

void __113__MCUIDataManager__reloadQueueReloadDataInBackgroundIncludingProfiles_appSigners_blockedApplications_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 48));
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 56));
  }

  if (*(a1 + 89) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 64));
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 72));
  }

  if (*(a1 + 90) == 1)
  {
    v2 = *(a1 + 80);
    v3 = (*(a1 + 32) + 64);

    objc_storeStrong(v3, v2);
  }
}

void __113__MCUIDataManager__reloadQueueReloadDataInBackgroundIncludingProfiles_appSigners_blockedApplications_completion___block_invoke_2(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  }

  if (*(a1 + 88) == 1)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"kMCUIProfilesUpdatedNotification" object:0 userInfo:0];
  }

  if (*(a1 + 89) == 1)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"kMCUIAppSignersUpdatedNotification" object:0 userInfo:0];
  }

  if ((*(a1 + 88) & 1) != 0 || (*(a1 + 89) & 1) != 0 || *(a1 + 90) == 1)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v10[0] = @"kMCUIProfilesUpdatedNotification";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88)];
    v10[1] = @"kMCUIAppSignersUpdatedNotification";
    v11[0] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 89)];
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v5 postNotificationName:@"kMCUIUpdatedNotification" object:0 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reloadProfilesInBackgroundWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MCUIDataManager_reloadProfilesInBackgroundWithCompletion___block_invoke;
  v7[3] = &unk_279862128;
  v8 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C799C0](v7);
  [(MCUIDataManager *)self reloadDataInBackgroundIncludingProfiles:1 appSigners:0 blockedApplications:0 completion:v6];
}

uint64_t __60__MCUIDataManager_reloadProfilesInBackgroundWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadAppSignersAndBlockedAppsInBackgroundWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__MCUIDataManager_reloadAppSignersAndBlockedAppsInBackgroundWithCompletion___block_invoke;
  v7[3] = &unk_279862128;
  v8 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C799C0](v7);
  [(MCUIDataManager *)self reloadDataInBackgroundIncludingProfiles:0 appSigners:1 blockedApplications:1 completion:v6];
}

uint64_t __76__MCUIDataManager_reloadAppSignersAndBlockedAppsInBackgroundWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a5, a6, a7);
  }

  return result;
}

@end