@interface HUSoftwareUpdateStandaloneItemManager
- (HUSoftwareUpdateStandaloneItemManager)initWithDelegate:(id)delegate home:(id)home;
- (HUSoftwareUpdateStandaloneItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
- (id)_transformedUpdateOutcomeForItem:(id)item proposedOutcome:(id)outcome;
- (id)triggerSoftwareUpdateFetch;
- (void)addHomeSetupSuccessBlock:(id)block;
- (void)dealloc;
- (void)home:(id)home didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)enabled;
- (void)home:(id)home didUpdateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:(BOOL)enabled;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
@end

@implementation HUSoftwareUpdateStandaloneItemManager

- (HUSoftwareUpdateStandaloneItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateStandaloneItemManager.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateStandaloneItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUSoftwareUpdateStandaloneItemManager)initWithDelegate:(id)delegate home:(id)home
{
  delegateCopy = delegate;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HUSoftwareUpdateStandaloneItemManager;
  v8 = [(HFItemManager *)&v18 initWithDelegate:delegateCopy sourceItem:0];
  if (v8)
  {
    v9 = objc_opt_new();
    softwareUpdateFetchFuture = v8->_softwareUpdateFetchFuture;
    v8->_softwareUpdateFetchFuture = v9;

    objc_storeStrong(&v8->_overrideHome, home);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v8];

    objc_initWeak(&location, v8);
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8]2 homeManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__HUSoftwareUpdateStandaloneItemManager_initWithDelegate_home___block_invoke;
    v15[3] = &unk_277DBD078;
    objc_copyWeak(&v16, &location);
    [homeManager fetchDevicesWithCompletionHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __63__HUSoftwareUpdateStandaloneItemManager_initWithDelegate_home___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Fetched devices:[%@] Error:[%@]", &v9, 0x16u);
  }

  [WeakRetained setDevices:v5];
}

- (void)dealloc
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] removeHomeObserver:self];

  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateStandaloneItemManager;
  [(HFItemManager *)&v4 dealloc];
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUSoftwareUpdateStandaloneItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

- (id)_buildItemModulesForHome:(id)home
{
  homeCopy = home;
  v5 = objc_opt_new();
  v6 = [[HUFirmwareUpdateItemModule alloc] initWithItemUpdater:self home:homeCopy];
  [(HUSoftwareUpdateStandaloneItemManager *)self setFirmwareUpdateModule:v6];

  firmwareUpdateModule = [(HUSoftwareUpdateStandaloneItemManager *)self firmwareUpdateModule];
  [v5 na_safeAddObject:firmwareUpdateModule];

  v8 = [[HUSoftwareUpdateItemModule alloc] initWithItemUpdater:self home:homeCopy sourceItem:0];
  [(HUSoftwareUpdateStandaloneItemManager *)self setSoftwareUpdateModule:v8];

  softwareUpdateModule = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateModule];
  [v5 na_safeAddObject:softwareUpdateModule];

  return v5;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v66[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke;
  v63[3] = &unk_277DC1440;
  v6 = homeCopy;
  v64 = v6;
  v7 = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke(v63);
  v8 = objc_alloc(MEMORY[0x277D14B38]);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_2;
  v60[3] = &unk_277DB8648;
  v9 = v7;
  v61 = v9;
  selfCopy = self;
  v10 = [v8 initWithResultsBlock:v60];
  [(HUSoftwareUpdateStandaloneItemManager *)self setAutoUpdateItem:v10];

  v11 = objc_alloc(MEMORY[0x277D14B38]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_3;
  v57[3] = &unk_277DB8648;
  v58 = v9;
  selfCopy2 = self;
  v12 = v9;
  v13 = [v11 initWithResultsBlock:v57];
  [(HUSoftwareUpdateStandaloneItemManager *)self setAutoUpdateThirdPartyItem:v13];

  v14 = objc_alloc(MEMORY[0x277D14B38]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_4;
  v54[3] = &unk_277DB8648;
  v15 = v6;
  v55 = v15;
  selfCopy3 = self;
  v16 = [v14 initWithResultsBlock:v54];
  [(HUSoftwareUpdateStandaloneItemManager *)self setHomeUpdateBannerItem:v16];

  v17 = [[HUSoftwareUpdateAllItem alloc] initWithHome:v15];
  [(HUSoftwareUpdateStandaloneItemManager *)self setUpdateAllItem:v17];

  v18 = objc_alloc(MEMORY[0x277D14B38]);
  v65[0] = *MEMORY[0x277D13F60];
  v19 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateUpdatedRecentlyTitle", @"HUSoftwareUpdateUpdatedRecentlyTitle", 1);
  v66[0] = v19;
  v65[1] = *MEMORY[0x277D13FB8];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "hf_currentUserIsAdministrator") ^ 1}];
  v66[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v22 = [v18 initWithResults:v21];
  [(HUSoftwareUpdateStandaloneItemManager *)self setUpdatedRecentlyItem:v22];

  v23 = objc_alloc(MEMORY[0x277D14B38]);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_5;
  v52[3] = &unk_277DB7478;
  v24 = v15;
  v53 = v24;
  v25 = [v23 initWithResultsBlock:v52];
  [(HUSoftwareUpdateStandaloneItemManager *)self setBetaUpdatesItem:v25];

  v26 = objc_alloc(MEMORY[0x277D14B38]);
  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_4_66;
  v50 = &unk_277DB7478;
  v51 = v24;
  v27 = v24;
  v28 = [v26 initWithResultsBlock:&v47];
  [(HUSoftwareUpdateStandaloneItemManager *)self setCarrySettingsItem:v28];

  v29 = [HUSoftwareUpdateFetchItem alloc];
  softwareUpdateFetchFuture = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateFetchFuture];
  v31 = [(HUSoftwareUpdateFetchItem *)v29 initWithHome:v27 softwareUpdateFetchFuture:softwareUpdateFetchFuture];
  [(HUSoftwareUpdateStandaloneItemManager *)self setFetchItem:v31];

  v32 = MEMORY[0x277CBEB58];
  autoUpdateItem = [(HUSoftwareUpdateStandaloneItemManager *)self autoUpdateItem];
  fetchItem = [(HUSoftwareUpdateStandaloneItemManager *)self fetchItem];
  updateAllItem = [(HUSoftwareUpdateStandaloneItemManager *)self updateAllItem];
  autoUpdateThirdPartyItem = [(HUSoftwareUpdateStandaloneItemManager *)self autoUpdateThirdPartyItem];
  updatedRecentlyItem = [(HUSoftwareUpdateStandaloneItemManager *)self updatedRecentlyItem];
  v38 = [v32 setWithObjects:{autoUpdateItem, fetchItem, updateAllItem, autoUpdateThirdPartyItem, updatedRecentlyItem, 0, v47, v48, v49, v50}];

  homeUpdateBannerItem = [(HUSoftwareUpdateStandaloneItemManager *)self homeUpdateBannerItem];
  [v38 addObject:homeUpdateBannerItem];

  v40 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v38];
  [array addObject:v40];
  v41 = MEMORY[0x277CBEB98];
  betaUpdatesItem = [(HUSoftwareUpdateStandaloneItemManager *)self betaUpdatesItem];
  carrySettingsItem = [(HUSoftwareUpdateStandaloneItemManager *)self carrySettingsItem];
  v44 = [v41 setWithObjects:{betaUpdatesItem, carrySettingsItem, 0}];

  v45 = [objc_alloc(MEMORY[0x277D14B48]) initWithItems:v44];
  [array addObject:v45];

  return array;
}

id __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = MEMORY[0x277CBEB98];
  v4 = *(a1 + 32);
  v5 = [v4 currentUser];
  v6 = [v3 setWithObjects:{v4, v5, 0}];
  v7 = *MEMORY[0x277D13DA8];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "hf_currentUserIsAdministrator") ^ 1}];
  [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "hf_currentUserIsOwner") ^ 1}];
  [v2 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v10 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [v2 setObject:v10 forKeyedSubscript:v7];

  return v2;
}

id __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateEnableAutomaticUpdatesSwitch", @"HUSoftwareUpdateEnableAutomaticUpdatesSwitch", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"HUSoftwareUpdateEnableAutomaticUpdatesSwitch" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 40) home];
  [v5 isAutomaticSoftwareUpdateEnabled];
  v6 = [v4 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D14068]];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v7;
}

id __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateEnableAutomaticThirdPartyUpdatesSwitch", @"HUSoftwareUpdateEnableAutomaticThirdPartyUpdatesSwitch", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 40) home];
  [v5 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
  v6 = [v4 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D14068]];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v7;
}

id __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) hf_homeHubMigrationBannerTitle];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = [*(a1 + 32) hf_homeHubMigrationBannerDescription];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v5 = [*(a1 + 40) home];
  v6 = [v5 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];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D75348] hf_keyColor];
  v9 = [v7 configurationWithHierarchicalColor:v8];

  v10 = [MEMORY[0x277D755D0] configurationWithScale:0];
  v11 = [v10 configurationByApplyingConfiguration:v9];
  v12 = [objc_alloc(MEMORY[0x277D14B78]) initWithSystemImageName:@"homekit" configuration:v11];
  v13 = [objc_alloc(MEMORY[0x277D14728]) initWithSymbolIconConfiguration:v12];
  [v2 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E88]];
  v14 = MEMORY[0x277CCABB0];
  v15 = [*(a1 + 40) home];
  v16 = [v14 numberWithInt:{objc_msgSend(v15, "hf_isHomeHubMigrationBannerVisible") ^ 1}];
  [v2 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v17 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v17;
}

id __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23;
  v14 = __Block_byref_object_dispose__23;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v2 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateBetaUpdatesTitle", @"HUSoftwareUpdateBetaUpdatesTitle", 1);
  [v11[5] setObject:v2 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v11[5] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  if ([*(a1 + 32) hf_currentUserIsOwner] && (objc_msgSend(*(a1 + 32), "hf_hasHomePods") & 1) != 0)
  {
    v3 = MEMORY[0x277D2C900];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_59;
    v8[3] = &unk_277DB7580;
    v9 = *(a1 + 32);
    v4 = [v3 futureWithBlock:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_3_64;
    v7[3] = &unk_277DC1468;
    v7[4] = &v10;
    v5 = [v4 flatMap:v7];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v11[5]];
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D17E18];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_2_61;
  v7[3] = &unk_277DB81D8;
  v8 = v3;
  v6 = v3;
  [v4 shouldShowBetaEnrollmentButtonForHomeID:v5 withCompletion:v7];
}

void __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_2_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

uint64_t __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_3_64(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v3 = MEMORY[0x277D2C900];
  v4 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 futureWithResult:v4];
}

id __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_4_66(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23;
  v14 = __Block_byref_object_dispose__23;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v2 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateCarrySettingsTitle", @"HUSoftwareUpdateCarrySettingsTitle", 1);
  [v11[5] setObject:v2 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v11[5] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  if ([*(a1 + 32) hf_currentUserIsOwner] && (objc_msgSend(*(a1 + 32), "hf_hasHomePods") & 1) != 0)
  {
    v3 = MEMORY[0x277D2C900];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_5_70;
    v8[3] = &unk_277DB7580;
    v9 = *(a1 + 32);
    v4 = [v3 futureWithBlock:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_7;
    v7[3] = &unk_277DC1468;
    v7[4] = &v10;
    v5 = [v4 flatMap:v7];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v11[5]];
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_5_70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D17E20];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_6;
  v7[3] = &unk_277DB81D8;
  v8 = v3;
  v6 = v3;
  [v4 shouldShowCarrySettingsButtonForHomeID:v5 withCompletion:v7];
}

void __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

uint64_t __68__HUSoftwareUpdateStandaloneItemManager__buildItemProvidersForHome___block_invoke_7(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v3 = MEMORY[0x277D2C900];
  v4 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 futureWithResult:v4];
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v49[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"banners"];
  homeUpdateBannerItem = [(HUSoftwareUpdateStandaloneItemManager *)self homeUpdateBannerItem];
  v49[0] = homeUpdateBannerItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  [v6 setItems:v8];

  [v5 addObject:v6];
  home = [(HFItemManager *)self home];
  LODWORD(v8) = [home hf_hasAccessoriesSupportingSoftwareUpdate];

  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"settings"];
  v11 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateEnableAutomaticUpdatesSectionHeader", @"HUSoftwareUpdateEnableAutomaticUpdatesSectionHeader", 1);
  [v10 setHeaderTitle:v11];

  v12 = objc_opt_new();
  home2 = [(HFItemManager *)self home];
  hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate = [home2 hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate];

  if (hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate)
  {
    autoUpdateItem = [(HUSoftwareUpdateStandaloneItemManager *)self autoUpdateItem];
    [v12 addObject:autoUpdateItem];
  }

  home3 = [(HFItemManager *)self home];
  if (![home3 hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate])
  {
    goto LABEL_7;
  }

  home4 = [(HFItemManager *)self home];
  hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate = [home4 hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate];

  if (hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate)
  {
    home3 = [(HUSoftwareUpdateStandaloneItemManager *)self autoUpdateThirdPartyItem];
    [v12 addObject:home3];
LABEL_7:
  }

  [v10 setItems:v12];
  items = [v10 items];
  v20 = [items count];

  if (v20)
  {
    [v5 addObject:v10];
  }

LABEL_11:
  fetchItem = [(HUSoftwareUpdateStandaloneItemManager *)self fetchItem];
  latestResults = [fetchItem latestResults];
  v23 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  bOOLValue = [v23 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v25 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"updateAll"];
    updateAllItem = [(HUSoftwareUpdateStandaloneItemManager *)self updateAllItem];
    v48 = updateAllItem;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v25 setItems:v27];

    [v5 addObject:v25];
  }

  v28 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"fetchUpdates"];
  fetchItem2 = [(HUSoftwareUpdateStandaloneItemManager *)self fetchItem];
  v47 = fetchItem2;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  [v28 setItems:v30];

  [v5 addObject:v28];
  softwareUpdateModule = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateModule];
  [softwareUpdateModule setHideAppleUpdates:bOOLValue];

  softwareUpdateModule2 = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateModule];
  v33 = [softwareUpdateModule2 buildSectionsWithDisplayedItems:itemsCopy];
  [v5 addObjectsFromArray:v33];

  v34 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"updatedRecently"];
  updatedRecentlyItem = [(HUSoftwareUpdateStandaloneItemManager *)self updatedRecentlyItem];
  v46 = updatedRecentlyItem;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [v34 setItems:v36];

  [v5 addObject:v34];
  v37 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"betaUpdates"];
  betaUpdatesItem = [(HUSoftwareUpdateStandaloneItemManager *)self betaUpdatesItem];
  v45[0] = betaUpdatesItem;
  carrySettingsItem = [(HUSoftwareUpdateStandaloneItemManager *)self carrySettingsItem];
  v45[1] = carrySettingsItem;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v37 setItems:v40];

  [v5 addObject:v37];
  firmwareUpdateModule = [(HUSoftwareUpdateStandaloneItemManager *)self firmwareUpdateModule];
  v42 = [firmwareUpdateModule buildSectionsWithDisplayedItems:itemsCopy];
  [v5 addObjectsFromArray:v42];

  v43 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v43;
}

- (id)_itemsToHideInSet:(id)set
{
  setCopy = set;
  v20.receiver = self;
  v20.super_class = HUSoftwareUpdateStandaloneItemManager;
  v5 = [(HFItemManager *)&v20 _itemsToHideInSet:setCopy];
  v6 = [v5 mutableCopy];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__HUSoftwareUpdateStandaloneItemManager__itemsToHideInSet___block_invoke;
  v13 = &unk_277DC1490;
  v7 = v6;
  v14 = v7;
  v15 = &v16;
  [setCopy na_each:&v10];
  if ((v17[3] & 1) == 0)
  {
    v8 = [(HUSoftwareUpdateStandaloneItemManager *)self updatedRecentlyItem:v10];
    [v7 addObject:v8];
  }

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __59__HUSoftwareUpdateStandaloneItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 latestResults];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14100]];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      [*(a1 + 32) addObject:v6];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (id)_transformedUpdateOutcomeForItem:(id)item proposedOutcome:(id)outcome
{
  itemCopy = item;
  outcomeCopy = outcome;
  firmwareUpdateModule = [(HUSoftwareUpdateStandaloneItemManager *)self firmwareUpdateModule];

  if (firmwareUpdateModule)
  {
    firmwareUpdateModule2 = [(HUSoftwareUpdateStandaloneItemManager *)self firmwareUpdateModule];
    v10 = [firmwareUpdateModule2 transformedUpdateOutcomeForItem:itemCopy proposedOutcome:outcomeCopy];
  }

  else
  {
    v10 = outcomeCopy;
  }

  return v10;
}

- (id)triggerSoftwareUpdateFetch
{
  softwareUpdateFetchFuture = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateFetchFuture];
  isFinished = [softwareUpdateFetchFuture isFinished];

  if (isFinished)
  {
    v6 = objc_opt_new();
    [(HUSoftwareUpdateStandaloneItemManager *)self setSoftwareUpdateFetchFuture:v6];

    softwareUpdateFetchFuture2 = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateFetchFuture];
    fetchItem = [(HUSoftwareUpdateStandaloneItemManager *)self fetchItem];
    [fetchItem setSoftwareUpdateFetchFuture:softwareUpdateFetchFuture2];

    v9 = MEMORY[0x277D14788];
    v10 = MEMORY[0x277CBEB98];
    itemProviders = [(HFItemManager *)self itemProviders];
    v12 = [v10 setWithArray:itemProviders];
    v13 = [v9 requestToReloadItemProviders:v12 senderSelector:a2];
    v14 = [(HFItemManager *)self performItemUpdateRequest:v13];
  }

  softwareUpdateFetchFuture3 = [(HUSoftwareUpdateStandaloneItemManager *)self softwareUpdateFetchFuture];

  return softwareUpdateFetchFuture3;
}

- (void)addHomeSetupSuccessBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HUSoftwareUpdateStandaloneItemManager_addHomeSetupSuccessBlock___block_invoke;
  v6[3] = &unk_277DC14B8;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __66__HUSoftwareUpdateStandaloneItemManager_addHomeSetupSuccessBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _homeFuture];
  v2 = [v3 addSuccessBlock:*(a1 + 40)];
}

- (void)home:(id)home didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)enabled
{
  v6 = MEMORY[0x277D14788];
  v7 = MEMORY[0x277CBEB98];
  v11 = [(HUSoftwareUpdateStandaloneItemManager *)self autoUpdateItem:home];
  v8 = [v7 setWithObject:v11];
  v9 = [v6 requestToUpdateItems:v8 senderSelector:a2];
  v10 = [(HFItemManager *)self performItemUpdateRequest:v9];
}

- (void)home:(id)home didUpdateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:(BOOL)enabled
{
  v6 = MEMORY[0x277D14788];
  v7 = MEMORY[0x277CBEB98];
  v11 = [(HUSoftwareUpdateStandaloneItemManager *)self autoUpdateThirdPartyItem:home];
  v8 = [v7 setWithObject:v11];
  v9 = [v6 requestToUpdateItems:v8 senderSelector:a2];
  v10 = [(HFItemManager *)self performItemUpdateRequest:v9];
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v21 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v15 = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = stateCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@: Migration Completed - didUpdateHH2State = %{BOOL}d", &v15, 0x1Cu);
  }

  v9 = MEMORY[0x277D14788];
  v10 = MEMORY[0x277CBEB98];
  itemProviders = [(HFItemManager *)self itemProviders];
  v12 = [v10 setWithArray:itemProviders];
  v13 = [v9 requestToReloadItemProviders:v12 senderSelector:a2];
  v14 = [(HFItemManager *)self performItemUpdateRequest:v13];
}

@end