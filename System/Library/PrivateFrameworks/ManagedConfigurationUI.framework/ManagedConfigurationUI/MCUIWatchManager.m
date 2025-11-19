@interface MCUIWatchManager
+ (id)shared;
- (MCUIWatchManager)init;
- (id)cachedMDMProfileIdentifier;
- (int64_t)profileCount;
- (void)_fetchProfiles;
- (void)_handleFetchProfilesError:(id)a3;
- (void)_unarchiveProfilePayloadsSummaryFromData:(id)a3 forProfileIdentifier:(id)a4;
- (void)_unarchiveRMConfigurationViewModelsFromData:(id)a3 forProfileIdentifier:(id)a4;
- (void)_watchChanged:(id)a3;
- (void)fetchProfileIdentifier:(id)a3 completion:(id)a4;
- (void)installProfileData:(id)a3 completion:(id)a4;
- (void)removeProfileIdentifier:(id)a3 completion:(id)a4;
@end

@implementation MCUIWatchManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[MCUIWatchManager shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

void __26__MCUIWatchManager_shared__block_invoke()
{
  if (MCUIForPairedDevice())
  {
    v0 = objc_opt_new();
    v1 = shared_sharedInstance;
    shared_sharedInstance = v0;

    MEMORY[0x2821F96F8](v0, v1);
  }

  else
  {
    NSLog(&cfstr_McuiWatchManag.isa);
  }
}

- (MCUIWatchManager)init
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MCUIWatchManager;
  v2 = [(MCUIWatchManager *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D2BD90]);
    v4 = MEMORY[0x277D85CD0];
    v5 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    nssManager = v2->_nssManager;
    v2->_nssManager = v5;

    v7 = objc_opt_new();
    cachedProfiles = v2->_cachedProfiles;
    v2->_cachedProfiles = v7;

    v9 = objc_opt_new();
    cachedProfileSummaries = v2->_cachedProfileSummaries;
    v2->_cachedProfileSummaries = v9;

    v11 = objc_opt_new();
    cachedRMConfigurationViewModels = v2->_cachedRMConfigurationViewModels;
    v2->_cachedRMConfigurationViewModels = v11;

    mdmProfilesInfo = v2->_mdmProfilesInfo;
    v14 = MEMORY[0x277CBEBF8];
    v2->_fetchStatus = 2;
    v2->_mdmProfilesInfo = v14;

    configProfilesInfo = v2->_configProfilesInfo;
    v2->_configProfilesInfo = v14;

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v2 selector:sel__watchChanged_ name:*MEMORY[0x277D2BC78] object:0];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v2 selector:sel__watchChanged_ name:*MEMORY[0x277D2BC48] object:0];

    v25[0] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__MCUIWatchManager_init__block_invoke;
    block[3] = &unk_279861968;
    v23 = v18;
    v19 = v18;
    dispatch_async(v4, block);

    [(MCUIWatchManager *)v2 _fetchProfiles];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

void __24__MCUIWatchManager_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75B48] appearanceWhenContainedInInstancesOfClasses:*(a1 + 32)];
  v3 = BPSForegroundColor();
  [v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x277D75B40] appearanceWhenContainedInInstancesOfClasses:*(a1 + 32)];
  v5 = BPSBackgroundColor();
  [v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x277D75B40] appearanceWhenContainedInInstancesOfClasses:*(a1 + 32)];
  v7 = BPSSeparatorColor();
  [v6 setSeparatorColor:v7];

  v8 = [MEMORY[0x277D75B40] appearanceWhenContainedInInstancesOfClasses:*(a1 + 32)];
  v9 = BPSTextColor();
  [v8 setSectionIndexColor:v9];

  v11 = [MEMORY[0x277D75B40] appearanceWhenContainedInInstancesOfClasses:*(a1 + 32)];
  v10 = BPSForegroundColor();
  [v11 setSectionIndexBackgroundColor:v10];
}

- (void)_watchChanged:(id)a3
{
  v4 = [a3 name];
  NSLog(&cfstr_McuiWatchManag_0.isa, v4);

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MCUIWatchManager__watchChanged___block_invoke;
  block[3] = &unk_279861990;
  objc_copyWeak(&v6, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __34__MCUIWatchManager__watchChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained nssManager];
    [v2 invalidate];

    v3 = objc_alloc(MEMORY[0x277D2BD90]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    [v8 setNssManager:v4];

    v5 = [v8 cachedProfiles];
    [v5 removeAllObjects];

    v6 = [v8 cachedProfileSummaries];
    [v6 removeAllObjects];

    v7 = [v8 cachedRMConfigurationViewModels];
    [v7 removeAllObjects];

    [v8 _fetchProfiles];
    WeakRetained = v8;
  }
}

- (int64_t)profileCount
{
  v3 = [(MCUIWatchManager *)self mdmProfilesInfo];
  v4 = [v3 count];
  v5 = [(MCUIWatchManager *)self configProfilesInfo];
  v6 = [v5 count];

  return v6 + v4;
}

- (void)installProfileData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MCUIWatchManager *)self nssManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__MCUIWatchManager_installProfileData_completion___block_invoke;
  v10[3] = &unk_279862308;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [v8 installProfile:v6 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__MCUIWatchManager_installProfileData_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    NSLog(&cfstr_ErrorMcuiWatch.isa, v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _fetchProfiles];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeProfileIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MCUIWatchManager *)self nssManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__MCUIWatchManager_removeProfileIdentifier_completion___block_invoke;
  v11[3] = &unk_279862330;
  v9 = v6;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v10 = v7;
  v13 = v10;
  [v8 removeProfileWithIdentifier:v9 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__MCUIWatchManager_removeProfileIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    NSLog(&cfstr_ErrorMcuiWatch_0.isa, *(a1 + 32), v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _fetchProfiles];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_fetchProfiles
{
  NSLog(&cfstr_McuiWatchManag_1.isa, a2);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MCUIWatchManager__fetchProfiles__block_invoke;
  block[3] = &unk_279861990;
  objc_copyWeak(&v7, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v3 = [(MCUIWatchManager *)self nssManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__MCUIWatchManager__fetchProfiles__block_invoke_2;
  v4[3] = &unk_279862358;
  objc_copyWeak(&v5, &location);
  [v3 getProfilesInfo:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __34__MCUIWatchManager__fetchProfiles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setFetchStatus:2];
    WeakRetained = v2;
  }
}

void __34__MCUIWatchManager__fetchProfiles__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MCUIWatchManager__fetchProfiles__block_invoke_3;
  block[3] = &unk_279861A68;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __34__MCUIWatchManager__fetchProfiles__block_invoke_3(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      [WeakRetained _handleFetchProfilesError:?];
    }

    else
    {
      [WeakRetained setFetchStatus:?];
      v4 = *MEMORY[0x277D2BDC8];
      v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D2BDC8]];
      if (v5)
      {
        v6 = [*(a1 + 40) objectForKeyedSubscript:v4];
        v25[0] = v6;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
        [v3 setMdmProfilesInfo:v7];
      }

      else
      {
        [v3 setMdmProfilesInfo:MEMORY[0x277CBEBF8]];
      }

      v8 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D2BDC0]];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = MEMORY[0x277CBEBF8];
      }

      [v3 setConfigProfilesInfo:v10];

      v11 = [v3 configProfilesInfo];
      v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_57];
      v13 = [v11 filteredArrayUsingPredicate:v12];
      [v3 setConfigProfilesInfo:v13];

      v14 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D2BDA8]];
      [v3 setManagedAppsUninstalledOnMDMRemoval:v14];

      v15 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D2BDD8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setRmAccount:v15];
      }

      v16 = [v3 mdmProfilesInfo];
      v17 = [v16 count];
      v18 = [v3 configProfilesInfo];
      v19 = [v18 count];
      v20 = [v3 managedAppsUninstalledOnMDMRemoval];
      v21 = [v20 count];
      v22 = [v3 rmAccount];
      NSLog(&cfstr_McuiWatchManag_2.isa, v17, v19, v21, v22 != 0);

      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      [v23 postNotificationName:@"kMCUIUpdatedNotification" object:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchProfilesError:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  NSLog(&cfstr_McuiWatchManag_3.isa, v4);
  [(MCUIWatchManager *)self setFetchStatus:1];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"kMCUINotificationErrorKey";
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v5 postNotificationName:@"kMCUIWatchFetchFailedNotification" object:0 userInfo:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchProfileIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MCUIWatchManager *)self nssManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__MCUIWatchManager_fetchProfileIdentifier_completion___block_invoke;
  v11[3] = &unk_2798623A8;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 getFullProfileInfoWithIdentifier:v9 includeManagedPayloads:1 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__MCUIWatchManager_fetchProfileIdentifier_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MCUIWatchManager_fetchProfileIdentifier_completion___block_invoke_2;
  block[3] = &unk_279862380;
  objc_copyWeak(&v15, a1 + 6);
  v11 = v6;
  v12 = a1[4];
  v7 = a1[5];
  v13 = v5;
  v14 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v15);
}

void __54__MCUIWatchManager_fetchProfileIdentifier_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      NSLog(&cfstr_McuiWatchManag_4.isa, *(a1 + 40), v3);
      v4 = *(a1 + 32);
      (*(*(a1 + 56) + 16))();
      goto LABEL_10;
    }

    v5 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D2BDB0]];
    if (v5)
    {
      v12 = 0;
      v6 = [MEMORY[0x277D26290] profileWithData:v5 outError:&v12];
      v7 = v12;
      if (v7)
      {
        v8 = v7;
        NSLog(&cfstr_McuiWatchManag_5.isa, *(a1 + 40), v7);
        (*(*(a1 + 56) + 16))();

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D2BDB8]];
    [WeakRetained _unarchiveProfilePayloadsSummaryFromData:v9 forProfileIdentifier:*(a1 + 40)];

    v10 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D2BDD0]];
    [WeakRetained _unarchiveRMConfigurationViewModelsFromData:v10 forProfileIdentifier:*(a1 + 40)];

    v11 = [WeakRetained cachedProfiles];
    [v11 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_unarchiveProfilePayloadsSummaryFromData:(id)a3 forProfileIdentifier:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = a3;
    v13 = 0;
    v9 = [v7 unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v13];

    v10 = v13;
    v11 = v10;
    if (v10)
    {
      NSLog(&cfstr_McuiWatchManag_6.isa, v6, v10);
    }

    if (v9)
    {
      v12 = [(MCUIWatchManager *)self cachedProfileSummaries];
      [v12 setObject:v9 forKeyedSubscript:v6];
    }
  }
}

- (void)_unarchiveRMConfigurationViewModelsFromData:(id)a3 forProfileIdentifier:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = a3;
    v13 = 0;
    v9 = [v7 unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v13];

    v10 = v13;
    v11 = v10;
    if (v10)
    {
      NSLog(&cfstr_McuiWatchManag_7.isa, v6, v10);
    }

    if (v9)
    {
      v12 = [(MCUIWatchManager *)self cachedRMConfigurationViewModels];
      [v12 setObject:v9 forKeyedSubscript:v6];
    }
  }
}

- (id)cachedMDMProfileIdentifier
{
  v2 = [(NSArray *)self->_mdmProfilesInfo firstObject];
  v3 = [v2 identifier];

  return v3;
}

@end