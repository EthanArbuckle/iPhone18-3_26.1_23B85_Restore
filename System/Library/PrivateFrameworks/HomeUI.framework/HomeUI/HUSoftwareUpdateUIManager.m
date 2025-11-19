@interface HUSoftwareUpdateUIManager
+ (id)sharedManager;
- (BOOL)_shouldPresentTermsAndConditionsForSoftwareLicenseAgreementVersion:(id)a3 home:(id)a4;
- (BOOL)isLicensePresentationNecessaryForSoftwareUpdate:(id)a3 error:(id *)a4;
- (HUSoftwareUpdateUIManager)init;
- (id)_fetchAvailableUpdatesForAccessories:(id)a3 options:(unint64_t)a4;
- (id)_markTermsAndConditionsAsReadForLicenseAgreementVersion:(id)a3 inHome:(id)a4;
- (id)fetchAvailableUpdatesForAccessories:(id)a3 options:(unint64_t)a4;
- (id)fetchAvailableUpdatesForHome:(id)a3 options:(unint64_t)a4;
- (id)presentLicensesIfNeededForSoftwareUpdate:(id)a3 presentationDelegate:(id)a4;
- (id)startUpdateForAccessory:(id)a3 presentationDelegate:(id)a4;
- (id)startUpdatesForAccessories:(id)a3 presentationDelegate:(id)a4;
- (id)startUpdatesForAllAccessoriesInHome:(id)a3 presentationDelegate:(id)a4;
- (int64_t)numberOfAccessoriesWithAvailableUpdates:(id)a3;
- (int64_t)numberOfAccessoriesWithAvailableUpdatesInHome:(id)a3;
- (void)executionEnvironmentDidEnterBackground:(id)a3;
- (void)startSilentBackgroundCheckForHome:(id)a3;
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
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    homeBackgroundCheckMapTable = v2->_homeBackgroundCheckMapTable;
    v2->_homeBackgroundCheckMapTable = v3;

    v5 = [MEMORY[0x277D14670] sharedInstance];
    [v5 addObserver:v2];
  }

  return v2;
}

- (void)startSilentBackgroundCheckForHome:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v6 = [(HUSoftwareUpdateUIManager *)self homeBackgroundCheckMapTable];
  v7 = [v6 objectForKey:v5];

  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      v11 = [v5 hf_prettyDescription];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "[FETCH] Begin executing background check for software updates: %@", buf, 0xCu);
    }

    v8 = [(HUSoftwareUpdateUIManager *)self fetchAvailableUpdatesForHome:v5 options:1];
    v10 = [(HUSoftwareUpdateUIManager *)self homeBackgroundCheckMapTable];
    [v10 setObject:v8 forKey:v5];
    goto LABEL_9;
  }

  if (v9)
  {
    v10 = [v5 hf_prettyDescription];
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "[FETCH] Background check for software update already performed: %@", buf, 0xCu);
LABEL_9:
  }
}

- (id)fetchAvailableUpdatesForHome:(id)a3 options:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 hf_prettyDescription];
    v12 = 136315394;
    v13 = "[HUSoftwareUpdateUIManager fetchAvailableUpdatesForHome:options:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[FETCH] %s: %@", &v12, 0x16u);
  }

  v9 = [v6 accessoriesSupportingSoftwareUpdate];
  v10 = [(HUSoftwareUpdateUIManager *)self _fetchAvailableUpdatesForAccessories:v9 options:a4];

  return v10;
}

- (id)fetchAvailableUpdatesForAccessories:(id)a3 options:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a3 na_filter:&__block_literal_global_13];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 hf_prettyDescription];
    v11 = 136315394;
    v12 = "[HUSoftwareUpdateUIManager fetchAvailableUpdatesForAccessories:options:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[FETCH] %s: %@", &v11, 0x16u);
  }

  v9 = [(HUSoftwareUpdateUIManager *)self _fetchAvailableUpdatesForAccessories:v6 options:a4];

  return v9;
}

- (id)_fetchAvailableUpdatesForAccessories:(id)a3 options:(unint64_t)a4
{
  v5 = [a3 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HUSoftwareUpdateUIManager__fetchAvailableUpdatesForAccessories_options___block_invoke;
  v12[3] = &__block_descriptor_40_e21__16__0__HMAccessory_8l;
  v12[4] = a4;
  v6 = [v5 na_map:v12];

  v7 = MEMORY[0x277D2C900];
  v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v7 combineAllFutures:v6 ignoringErrors:1 scheduler:v8];
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

- (int64_t)numberOfAccessoriesWithAvailableUpdates:(id)a3
{
  v3 = [a3 na_filter:&__block_literal_global_26];
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

- (int64_t)numberOfAccessoriesWithAvailableUpdatesInHome:(id)a3
{
  v4 = [a3 accessoriesSupportingSoftwareUpdate];
  v5 = [(HUSoftwareUpdateUIManager *)self numberOfAccessoriesWithAvailableUpdates:v4];

  return v5;
}

- (id)startUpdatesForAccessories:(id)a3 presentationDelegate:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"presentationDelegate"}];

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
  [v7 na_each:v27];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 hf_prettyExpensiveDescription];
    *buf = 138412290;
    v31 = v14;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Requested updates: %@", buf, 0xCu);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v11 hf_prettyExpensiveDescription];
    *buf = 138412290;
    v31 = v16;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Ready to install updates: %@", buf, 0xCu);
  }

  if ([v11 count])
  {
    v17 = [MEMORY[0x277CD1650] hf_softwareUpdateComparator];
    v18 = [v12 sortedArrayUsingComparator:v17];

    v19 = [v18 lastObject];
    v20 = [(HUSoftwareUpdateUIManager *)self presentLicensesIfNeededForSoftwareUpdate:v19 presentationDelegate:v8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__HUSoftwareUpdateUIManager_startUpdatesForAccessories_presentationDelegate___block_invoke_36;
    v25[3] = &unk_277DB7AB8;
    v26 = v11;
    v21 = [v20 flatMap:v25];
  }

  else
  {
    v21 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v21;
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

- (id)startUpdatesForAllAccessoriesInHome:(id)a3 presentationDelegate:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"presentationDelegate"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"home"}];

LABEL_3:
  v9 = [v7 accessoriesSupportingSoftwareUpdate];
  if ([v9 count])
  {
    v10 = [(HUSoftwareUpdateUIManager *)self startUpdatesForAccessories:v9 presentationDelegate:v8];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 hf_prettyDescription];
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "[START UPDATE] No accessories supporting software update: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v13 = v10;

  return v13;
}

- (id)startUpdateForAccessory:(id)a3 presentationDelegate:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  v9 = [(HUSoftwareUpdateUIManager *)self startUpdatesForAccessories:v8 presentationDelegate:v7];

  return v9;
}

- (BOOL)isLicensePresentationNecessaryForSoftwareUpdate:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];
  }

  v8 = [v7 hf_softwareUpdateDocumentation];
  v9 = [v8 licenseAgreementVersion];
  v10 = [v8 licenseAgreement];
  if (v10)
  {
    if (v8)
    {
      v11 = [v7 home];
      v12 = [(HUSoftwareUpdateUIManager *)self _shouldPresentTermsAndConditionsForSoftwareLicenseAgreementVersion:v9 home:v11];

      goto LABEL_12;
    }
  }

  else
  {
    v13 = [v7 hf_prettyExpensiveDescription];
    NSLog(&cfstr_StartUpdateCan.isa, v8, v13);
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 hf_prettyExpensiveDescription];
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Cannot start update due to nil license and/or documentation: %@ %@", buf, 0x16u);
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hf_errorWithCode:26];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (id)presentLicensesIfNeededForSoftwareUpdate:(id)a3 presentationDelegate:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hf_isHomePod];
  if (!v6 || (v8 & 1) == 0)
  {
    v12 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
    goto LABEL_13;
  }

  v31 = 0;
  v9 = [(HUSoftwareUpdateUIManager *)self isLicensePresentationNecessaryForSoftwareUpdate:v6 error:&v31];
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
      v21 = [v6 hf_prettyExpensiveDescription];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v21;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Not showing license for SW update (%@) because the user has already agreed.", location, 0xCu);
    }

    v11 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
    goto LABEL_11;
  }

  v13 = [v6 hf_softwareUpdateDocumentation];
  v14 = [v13 licenseAgreementVersion];
  v15 = [v13 licenseAgreement];
  objc_initWeak(location, self);
  v16 = MEMORY[0x277D2C900];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__HUSoftwareUpdateUIManager_presentLicensesIfNeededForSoftwareUpdate_presentationDelegate___block_invoke;
  v23[3] = &unk_277DB7B80;
  v17 = v13;
  v24 = v17;
  v25 = v6;
  v18 = v15;
  v26 = v18;
  objc_copyWeak(&v30, location);
  v19 = v14;
  v27 = v19;
  v28 = v7;
  v29 = self;
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

- (BOOL)_shouldPresentTermsAndConditionsForSoftwareLicenseAgreementVersion:(id)a3 home:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
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

      v7 = 0;
      goto LABEL_14;
    }
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Check whether license version %@ needs presentation...", buf, 0xCu);
  }

  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v10 = [v8 hf_hasAcceptedTermsAndConditionsForHomePodVersion:v7] ^ 1;
LABEL_15:

  return v10;
}

- (id)_markTermsAndConditionsAsReadForLicenseAgreementVersion:(id)a3 inHome:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x277D14CE8] isInternalInstall] && HFPreferencesBoolForKey())
  {

LABEL_10:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "[START UPDATE] License version is missing!  Unable to mark terms and conditions as read...", buf, 2u);
    }

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_13;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "[START UPDATE] License version %@ has been accepted!", buf, 0xCu);
  }

  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateUIManager.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v10 = [v8 hf_markTermsAndConditionsAsAcceptedForHomePodWithLicenseAgreementVersion:v7];

LABEL_13:

  return v10;
}

- (void)executionEnvironmentDidEnterBackground:(id)a3
{
  v3 = [(HUSoftwareUpdateUIManager *)self homeBackgroundCheckMapTable];
  [v3 removeAllObjects];
}

@end