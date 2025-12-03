@interface HUSoftwareUpdateUIManager
+ (id)sharedManager;
- (BOOL)_shouldPresentTermsAndConditionsForSoftwareLicenseAgreementVersion:(id)version home:(id)home;
- (BOOL)isLicensePresentationNecessaryForSoftwareUpdate:(id)update error:(id *)error;
- (HUSoftwareUpdateUIManager)init;
- (id)_fetchAvailableUpdatesForAccessories:(id)accessories options:(unint64_t)options;
- (id)_markTermsAndConditionsAsReadForLicenseAgreementVersion:(id)version inHome:(id)home;
- (id)fetchAvailableUpdatesForAccessories:(id)accessories options:(unint64_t)options;
- (id)fetchAvailableUpdatesForHome:(id)home options:(unint64_t)options;
- (id)presentLicensesIfNeededForSoftwareUpdate:(id)update presentationDelegate:(id)delegate;
- (id)startUpdateForAccessory:(id)accessory presentationDelegate:(id)delegate;
- (id)startUpdatesForAccessories:(id)accessories presentationDelegate:(id)delegate;
- (id)startUpdatesForAllAccessoriesInHome:(id)home presentationDelegate:(id)delegate;
- (int64_t)numberOfAccessoriesWithAvailableUpdates:(id)updates;
- (int64_t)numberOfAccessoriesWithAvailableUpdatesInHome:(id)home;
- (void)executionEnvironmentDidEnterBackground:(id)background;
- (void)startSilentBackgroundCheckForHome:(id)home;
@end

@implementation HUSoftwareUpdateUIManager

+ (id)sharedManager
{
  if (qword_281121E68 != -1)
  {
    dispatch_once(&qword_281121E68, &__block_literal_global_9);
  }

  v3 = _MergedGlobals_611;

  return v3;
}

void __42__HUSoftwareUpdateUIManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HUSoftwareUpdateUIManager);
  v1 = _MergedGlobals_611;
  _MergedGlobals_611 = v0;
}

- (HUSoftwareUpdateUIManager)init
{
  v7.receiver = self;
  v7.super_class = HUSoftwareUpdateUIManager;
  v2 = [(HUSoftwareUpdateUIManager *)&v7 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    homeBackgroundCheckMapTable = v2->_homeBackgroundCheckMapTable;
    v2->_homeBackgroundCheckMapTable = weakToStrongObjectsMapTable;

    mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
    [mEMORY[0x277D14670] addObserver:v2];
  }

  return v2;
}

- (void)startSilentBackgroundCheckForHome:(id)home
{
  v15 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  homeBackgroundCheckMapTable = [(HUSoftwareUpdateUIManager *)self homeBackgroundCheckMapTable];
  v7 = [homeBackgroundCheckMapTable objectForKey:homeCopy];

  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      hf_prettyDescription = [homeCopy hf_prettyDescription];
      *buf = 138412290;
      v14 = hf_prettyDescription;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "[FETCH] Begin executing background check for software updates: %@", buf, 0xCu);
    }

    v8 = [(HUSoftwareUpdateUIManager *)self fetchAvailableUpdatesForHome:homeCopy options:1];
    homeBackgroundCheckMapTable2 = [(HUSoftwareUpdateUIManager *)self homeBackgroundCheckMapTable];
    [homeBackgroundCheckMapTable2 setObject:v8 forKey:homeCopy];
    goto LABEL_9;
  }

  if (v9)
  {
    homeBackgroundCheckMapTable2 = [homeCopy hf_prettyDescription];
    *buf = 138412290;
    v14 = homeBackgroundCheckMapTable2;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "[FETCH] Background check for software update already performed: %@", buf, 0xCu);
LABEL_9:
  }
}

- (id)fetchAvailableUpdatesForHome:(id)home options:(unint64_t)options
{
  v16 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [homeCopy hf_prettyDescription];
    v12 = 136315394;
    v13 = "[HUSoftwareUpdateUIManager fetchAvailableUpdatesForHome:options:]";
    v14 = 2112;
    v15 = hf_prettyDescription;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[FETCH] %s: %@", &v12, 0x16u);
  }

  accessoriesSupportingSoftwareUpdate = [homeCopy accessoriesSupportingSoftwareUpdate];
  v10 = [(HUSoftwareUpdateUIManager *)self _fetchAvailableUpdatesForAccessories:accessoriesSupportingSoftwareUpdate options:options];

  return v10;
}

- (id)fetchAvailableUpdatesForAccessories:(id)accessories options:(unint64_t)options
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [accessories na_filter:&__block_literal_global_13];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [v6 hf_prettyDescription];
    v11 = 136315394;
    v12 = "[HUSoftwareUpdateUIManager fetchAvailableUpdatesForAccessories:options:]";
    v13 = 2112;
    v14 = hf_prettyDescription;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[FETCH] %s: %@", &v11, 0x16u);
  }

  v9 = [(HUSoftwareUpdateUIManager *)self _fetchAvailableUpdatesForAccessories:v6 options:options];

  return v9;
}

- (id)_fetchAvailableUpdatesForAccessories:(id)accessories options:(unint64_t)options
{
  allObjects = [accessories allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HUSoftwareUpdateUIManager__fetchAvailableUpdatesForAccessories_options___block_invoke;
  v12[3] = &__block_descriptor_40_e21__16__0__HMAccessory_8l;
  v12[4] = options;
  v6 = [allObjects na_map:v12];

  v7 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v7 combineAllFutures:v6 ignoringErrors:1 scheduler:mainThreadScheduler];
  v10 = [v9 flatMap:&__block_literal_global_19];

  return v10;
}

id __74__HUSoftwareUpdateUIManager__fetchAvailableUpdatesForAccessories_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 na_filter:&__block_literal_global_22];
  if ([v2 count])
  {
    if ([v2 count] == 1)
    {
      v3 = MEMORY[0x277D2C900];
      v4 = [v2 firstObject];
      v5 = [v3 futureWithError:v4];
    }

    else
    {
      v6 = [v2 firstObject];
      v7 = [v6 userInfo];
      if (v7)
      {
        v8 = [v6 userInfo];
        v9 = [v8 mutableCopy];
      }

      else
      {
        v9 = [MEMORY[0x277CBEB38] dictionary];
      }

      [v9 removeObjectForKey:*MEMORY[0x277D13860]];
      v10 = MEMORY[0x277CCA9B8];
      v11 = [v6 domain];
      v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v6 userInfo:{"code"), v9}];

      v5 = [MEMORY[0x277D2C900] futureWithError:v12];
    }
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v5;
}

uint64_t __74__HUSoftwareUpdateUIManager__fetchAvailableUpdatesForAccessories_options___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (int64_t)numberOfAccessoriesWithAvailableUpdates:(id)updates
{
  v3 = [updates na_filter:&__block_literal_global_26];
  v4 = [v3 count];

  return v4;
}

uint64_t __69__HUSoftwareUpdateUIManager_numberOfAccessoriesWithAvailableUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isReadyToInstallSoftwareUpdate])
  {
    v3 = [v2 hf_hasNewValidSoftwareUpdate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)numberOfAccessoriesWithAvailableUpdatesInHome:(id)home
{
  accessoriesSupportingSoftwareUpdate = [home accessoriesSupportingSoftwareUpdate];
  v5 = [(HUSoftwareUpdateUIManager *)self numberOfAccessoriesWithAvailableUpdates:accessoriesSupportingSoftwareUpdate];

  return v5;
}

- (id)startUpdatesForAccessories:(id)accessories presentationDelegate:(id)delegate
{
  v32 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  delegateCopy = delegate;
  if ([accessoriesCopy count])
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];

    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"presentationDelegate"}];

LABEL_3:
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke;
  v27[3] = &unk_277DB7A68;
  v11 = v9;
  v28 = v11;
  v12 = v10;
  v29 = v12;
  [accessoriesCopy na_each:v27];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyExpensiveDescription = [accessoriesCopy hf_prettyExpensiveDescription];
    *buf = 138412290;
    v31 = hf_prettyExpensiveDescription;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Requested updates: %@", buf, 0xCu);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyExpensiveDescription2 = [v11 hf_prettyExpensiveDescription];
    *buf = 138412290;
    v31 = hf_prettyExpensiveDescription2;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Ready to install updates: %@", buf, 0xCu);
  }

  if ([v11 count])
  {
    hf_softwareUpdateComparator = [MEMORY[0x277CD1650] hf_softwareUpdateComparator];
    v18 = [v12 sortedArrayUsingComparator:hf_softwareUpdateComparator];

    lastObject = [v18 lastObject];
    v20 = [(HUSoftwareUpdateUIManager *)self presentLicensesIfNeededForSoftwareUpdate:lastObject presentationDelegate:delegateCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke_36;
    v25[3] = &unk_277DB7AB8;
    v26 = v11;
    futureWithNoResult = [v20 flatMap:v25];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_hasNewValidSoftwareUpdate])
  {
    if ([v3 hf_isReadyToInstallSoftwareUpdate])
    {
      [*(a1 + 32) addObject:v3];
      if ([v3 hf_isHomePod])
      {
        [*(a1 + 40) addObject:v3];
      }
    }
  }
}

id __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke_36(uint64_t a1)
{
  v2 = [*(a1 + 32) na_map:&__block_literal_global_38];
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v5 = [v3 combineAllFutures:v2 ignoringErrors:1 scheduler:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke_3;
  v8[3] = &unk_277DB7A90;
  v9 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

id __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 na_filter:&__block_literal_global_40];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) hf_prettyExpensiveDescription];
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "[START UPDATE] Start update failed for some accessories: %@ %@", buf, 0x16u);
    }

    v13 = *MEMORY[0x277D13870];
    v14 = *MEMORY[0x277D13CA8];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [v4 hf_errorWithAddedUserInfo:v6];

    v8 = [MEMORY[0x277D2C900] futureWithError:v7];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) hf_prettyExpensiveDescription];
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Start update succeeded for all accessories: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v8;
}

uint64_t __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)startUpdatesForAllAccessoriesInHome:(id)home presentationDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  delegateCopy = delegate;
  if (delegateCopy)
  {
    if (homeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"presentationDelegate"}];

    if (homeCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"home"}];

LABEL_3:
  accessoriesSupportingSoftwareUpdate = [homeCopy accessoriesSupportingSoftwareUpdate];
  if ([accessoriesSupportingSoftwareUpdate count])
  {
    futureWithNoResult = [(HUSoftwareUpdateUIManager *)self startUpdatesForAccessories:accessoriesSupportingSoftwareUpdate presentationDelegate:delegateCopy];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [homeCopy hf_prettyDescription];
      *buf = 138412290;
      v18 = hf_prettyDescription;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "[START UPDATE] No accessories supporting software update: %@", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v13 = futureWithNoResult;

  return v13;
}

- (id)startUpdateForAccessory:(id)accessory presentationDelegate:(id)delegate
{
  v6 = MEMORY[0x277CBEB98];
  delegateCopy = delegate;
  v8 = [v6 setWithObject:accessory];
  v9 = [(HUSoftwareUpdateUIManager *)self startUpdatesForAccessories:v8 presentationDelegate:delegateCopy];

  return v9;
}

- (BOOL)isLicensePresentationNecessaryForSoftwareUpdate:(id)update error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (!updateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];
  }

  hf_softwareUpdateDocumentation = [updateCopy hf_softwareUpdateDocumentation];
  licenseAgreementVersion = [hf_softwareUpdateDocumentation licenseAgreementVersion];
  licenseAgreement = [hf_softwareUpdateDocumentation licenseAgreement];
  if (licenseAgreement)
  {
    if (hf_softwareUpdateDocumentation)
    {
      home = [updateCopy home];
      v12 = [(HUSoftwareUpdateUIManager *)self _shouldPresentTermsAndConditionsForSoftwareLicenseAgreementVersion:licenseAgreementVersion home:home];

      goto LABEL_12;
    }
  }

  else
  {
    hf_prettyExpensiveDescription = [updateCopy hf_prettyExpensiveDescription];
    NSLog(&cfstr_StartUpdateCan.isa, hf_softwareUpdateDocumentation, hf_prettyExpensiveDescription);
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyExpensiveDescription2 = [updateCopy hf_prettyExpensiveDescription];
    *buf = 138412546;
    v19 = hf_softwareUpdateDocumentation;
    v20 = 2112;
    v21 = hf_prettyExpensiveDescription2;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Cannot start update due to nil license and/or documentation: %@ %@", buf, 0x16u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hf_errorWithCode:26];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (id)presentLicensesIfNeededForSoftwareUpdate:(id)update presentationDelegate:(id)delegate
{
  location[3] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  delegateCopy = delegate;
  hf_isHomePod = [updateCopy hf_isHomePod];
  if (!updateCopy || (hf_isHomePod & 1) == 0)
  {
    v12 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
    goto LABEL_13;
  }

  v31 = 0;
  v9 = [(HUSoftwareUpdateUIManager *)self isLicensePresentationNecessaryForSoftwareUpdate:updateCopy error:&v31];
  v10 = v31;
  if (v10)
  {
    v11 = [MEMORY[0x277D2C900] futureWithError:v10];
LABEL_11:
    v12 = v11;
    goto LABEL_12;
  }

  if (!v9)
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyExpensiveDescription = [updateCopy hf_prettyExpensiveDescription];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = hf_prettyExpensiveDescription;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Not showing license for SW update (%@) because the user has already agreed.", location, 0xCu);
    }

    v11 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
    goto LABEL_11;
  }

  hf_softwareUpdateDocumentation = [updateCopy hf_softwareUpdateDocumentation];
  licenseAgreementVersion = [hf_softwareUpdateDocumentation licenseAgreementVersion];
  licenseAgreement = [hf_softwareUpdateDocumentation licenseAgreement];
  objc_initWeak(location, self);
  v16 = MEMORY[0x277D2C900];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke;
  v23[3] = &unk_277DB7B80;
  v17 = hf_softwareUpdateDocumentation;
  v24 = v17;
  v25 = updateCopy;
  v18 = licenseAgreement;
  v26 = v18;
  objc_copyWeak(&v30, location);
  v19 = licenseAgreementVersion;
  v27 = v19;
  v28 = delegateCopy;
  selfCopy = self;
  v12 = [v16 lazyFutureWithBlock:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);

LABEL_12:
LABEL_13:

  return v12;
}

void __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) hf_prettyExpensiveDescription];
    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Showing license: %@ %@", buf, 0x16u);
  }

  v7 = [[HUSoftwareUpdateLicenseViewController alloc] initWithDocument:*(a1 + 48)];
  objc_initWeak(buf, v7);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_51;
  v18[3] = &unk_277DB7B08;
  v19 = *(a1 + 40);
  objc_copyWeak(&v23, (a1 + 80));
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  objc_copyWeak(&v24, buf);
  v8 = v3;
  v22 = v8;
  [(HUSoftwareUpdateLicenseViewController *)v7 setAgreeHandler:v18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_3;
  v12[3] = &unk_277DB7B58;
  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  objc_copyWeak(&v16, (a1 + 80));
  objc_copyWeak(&v17, buf);
  v9 = v8;
  v15 = v9;
  [(HUSoftwareUpdateLicenseViewController *)v7 setDisagreeHandler:v12];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  [v10 setModalPresentationStyle:2];
  [v10 setModalInPresentation:1];
  v11 = [*(a1 + 64) softwareUpdateUIManager:*(a1 + 72) presentViewController:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);

  objc_destroyWeak(buf);
}

void __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_51(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) hf_prettyExpensiveDescription];
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[START UPDATE] User AGREED to license for update: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) home];
  v7 = [WeakRetained _markTermsAndConditionsAsReadForLicenseAgreementVersion:v5 inHome:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_52;
  v9[3] = &unk_277DB7AE0;
  v10 = *(a1 + 48);
  objc_copyWeak(&v12, (a1 + 64));
  objc_copyWeak(&v13, (a1 + 72));
  v11 = *(a1 + 56);
  v8 = [v7 addCompletionBlock:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
}

void __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_52(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = objc_loadWeakRetained((a1 + 56));
  v8 = [v5 softwareUpdateUIManager:WeakRetained dismissViewController:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_2;
  v11[3] = &unk_277DB7720;
  v12 = *(a1 + 40);
  v13 = v4;
  v9 = v4;
  v10 = [v8 addCompletionBlock:v11];
}

void __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) hf_prettyExpensiveDescription];
    *buf = 138412290;
    v12 = v8;
    _os_log_error_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_ERROR, "[START UPDATE] User DISAGREED to license for update: %@", buf, 0xCu);
  }

  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_loadWeakRetained((a1 + 64));
  v6 = [v3 softwareUpdateUIManager:WeakRetained dismissViewController:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_55;
  v9[3] = &unk_277DB7B30;
  v10 = *(a1 + 48);
  v7 = [v6 addCompletionBlock:v9];
}

void __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke_55(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

- (BOOL)_shouldPresentTermsAndConditionsForSoftwareLicenseAgreementVersion:(id)version home:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  homeCopy = home;
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    if (HFPreferencesBoolForKey())
    {
LABEL_14:
      LOBYTE(v10) = 1;
      goto LABEL_15;
    }

    if (HFPreferencesBoolForKey())
    {

LABEL_11:
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "[START UPDATE] License version is missing!  Presenting terms and conditions irregardless of aberration...", buf, 2u);
      }

      versionCopy = 0;
      goto LABEL_14;
    }
  }

  if (!versionCopy)
  {
    goto LABEL_11;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = versionCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Check whether license version %@ needs presentation...", buf, 0xCu);
  }

  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v10 = [homeCopy hf_hasAcceptedTermsAndConditionsForHomePodVersion:versionCopy] ^ 1;
LABEL_15:

  return v10;
}

- (id)_markTermsAndConditionsAsReadForLicenseAgreementVersion:(id)version inHome:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  homeCopy = home;
  if ([MEMORY[0x277D14CE8] isInternalInstall] && HFPreferencesBoolForKey())
  {

LABEL_10:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "[START UPDATE] License version is missing!  Unable to mark terms and conditions as read...", buf, 2u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_13;
  }

  if (!versionCopy)
  {
    goto LABEL_10;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = versionCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "[START UPDATE] License version %@ has been accepted!", buf, 0xCu);
  }

  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  futureWithNoResult = [homeCopy hf_markTermsAndConditionsAsAcceptedForHomePodWithLicenseAgreementVersion:versionCopy];

LABEL_13:

  return futureWithNoResult;
}

- (void)executionEnvironmentDidEnterBackground:(id)background
{
  homeBackgroundCheckMapTable = [(HUSoftwareUpdateUIManager *)self homeBackgroundCheckMapTable];
  [homeBackgroundCheckMapTable removeAllObjects];
}

@end