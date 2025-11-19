@interface HUHomeHubMigrationOnboardingFlow
- (HUHomeHubMigrationOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4 devices:(id)a5;
- (NSMutableArray)migrationErrors;
- (id)_determineNextViewControllerWithPriorResults:(id)a3;
- (id)processUserInput:(id)a3;
- (void)_checkHomePodResidentUpgradeRequirementsInHome:(id)a3;
- (void)_checkResidentStatusInHome:(id)a3;
- (void)addMigrationError:(id)a3;
@end

@implementation HUHomeHubMigrationOnboardingFlow

- (HUHomeHubMigrationOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4 devices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HUHomeHubMigrationOnboardingFlow;
  v11 = [(HUHomeHubMigrationOnboardingFlow *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, a4);
    v12->_shouldBlockMigrationWithAppleTVWarning = 0;
    objc_initWeak(&location, v12);
    v13 = [objc_opt_class() needsOnboardingForHome:v12->_home options:v8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__HUHomeHubMigrationOnboardingFlow_initWithUsageOptions_home_devices___block_invoke;
    v19[3] = &unk_277DB91E0;
    objc_copyWeak(&v21, &location);
    v20 = v10;
    v14 = [v13 flatMap:v19];
    onboardingFuture = v12->_onboardingFuture;
    v12->_onboardingFuture = v14;

    v16 = [MEMORY[0x277CBEB18] array];
    migrationErrors = v12->_migrationErrors;
    v12->_migrationErrors = v16;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

id __70__HUHomeHubMigrationOnboardingFlow_initWithUsageOptions_home_devices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HUHomeHubMigrationOnboardingFlow_initWithUsageOptions_home_devices___block_invoke_2;
  v8[3] = &unk_277DB91B8;
  objc_copyWeak(&v11, (a1 + 40));
  v5 = v3;
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v11);

  return v6;
}

void __70__HUHomeHubMigrationOnboardingFlow_initWithUsageOptions_home_devices___block_invoke_2(id *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([a1[4] BOOLValue])
  {
    v23 = v3;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      *buf = 138412546;
      v32 = WeakRetained;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:Received list of devices = [%@]", buf, 0x16u);
    }

    v24 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = a1[5];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = HFLogForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 supportsHH2];
            *buf = 138412802;
            v32 = WeakRetained;
            v33 = 2112;
            v34 = v12;
            v35 = 1024;
            v36 = v14;
            _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:device = [%@] supportsHH2 = %{BOOL}d", buf, 0x1Cu);
          }

          if (([v12 supportsHH2] & 1) == 0)
          {
            v15 = [v12 productInfo];
            v16 = [v15 productPlatform];

            if (v16 != 4)
            {
              [v24 addObject:v12];
              [WeakRetained setShouldShowDeviceWarning:1];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v9);
    }

    v17 = [v24 copy];
    [WeakRetained setDevices:v17];

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [WeakRetained devices];
      *buf = 138412546;
      v32 = WeakRetained;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:unsupportedDevices = [%@]", buf, 0x16u);
    }

    v20 = [MEMORY[0x277D146E8] sharedDispatcher];
    v21 = [v20 allHomesFuture];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__HUHomeHubMigrationOnboardingFlow_initWithUsageOptions_home_devices___block_invoke_6;
    v25[3] = &unk_277DB7A90;
    v26 = WeakRetained;
    v22 = [v21 flatMap:v25];

    v3 = v23;
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

id __70__HUHomeHubMigrationOnboardingFlow_initWithUsageOptions_home_devices___block_invoke_6(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v33 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v38 = objc_opt_new();
  v35 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v36 = *v45;
    do
    {
      v7 = 0;
      v37 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v9 = [v8 currentUser];
        v10 = [v8 hf_userIsOwner:v9];

        if (v10)
        {
          v11 = objc_opt_new();
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v12 = [v8 users];
          v13 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v41;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v41 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = *(*(&v40 + 1) + 8 * i);
                if (([v18 supportsSharedHomeHH2AutoMigration] & 1) == 0)
                {
                  v15 = 1;
                  [*(a1 + 32) setShouldShowUserWarning:1];
                  [v11 addObject:v18];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v14);

            v6 = v36;
            v5 = v37;
            if (v15)
            {
              [v33 setObject:v11 forKey:v8];
            }
          }

          else
          {
          }

          [v38 addObject:v8];
          [*(a1 + 32) _checkResidentStatusInHome:v8];
          [*(a1 + 32) _checkHomePodResidentUpgradeRequirementsInHome:v8];
        }

        else
        {
          v19 = [v8 currentUser];
          v11 = [v8 homeAccessControlForUser:v19];

          if ([v11 isAccessAllowed])
          {
            [*(a1 + 32) setShouldShowSharedHomeWarning:1];
            [v35 addObject:v8];
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v5);
  }

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "upgradeRequirements")}];
    *buf = 138412546;
    v49 = v21;
    v50 = 2112;
    v51 = v22;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:upgradeRequirements = [%@]", buf, 0x16u);
  }

  if ([v33 count])
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      *buf = 138412546;
      v49 = v24;
      v50 = 2112;
      v51 = v33;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:Found Users that need to upgrade to support HH2: %@", buf, 0x16u);
    }
  }

  v25 = [MEMORY[0x277CBEA60] arrayWithArray:{v38, v33}];
  [*(a1 + 32) setHomes:v25];

  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v35];
  [*(a1 + 32) setSharedHomes:v26];

  [*(a1 + 32) setHomesToUsersMap:v34];
  v27 = [HUHomeHubIntroSetupViewController alloc];
  v28 = [*(a1 + 32) homes];
  v29 = [(HUHomeHubIntroSetupViewController *)v27 initWithHomes:v28];

  if ([*(a1 + 32) upgradeRequirements] || (objc_msgSend(*(a1 + 32), "shouldShowAppleTVWarning") & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldShowResidentWarning") & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldShowDeviceWarning") & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldShowUserWarning") & 1) != 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = [*(a1 + 32) shouldShowSharedHomeWarning] ^ 1;
  }

  [(HUHomeHubIntroSetupViewController *)v29 setIsFinalStep:v30];
  [*(a1 + 32) setInitialViewController:v29];
  v31 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v31;
}

- (id)processUserInput:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:@"HUHomeHub2OnboardingKey_UserInput"];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"HUHomeHubMigrationOnboardingFlow.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"userInputValue != nil"}];
  }

  v9 = [v5 objectForKeyedSubscript:@"HUHomeHub2OnboardingKey_ErrorDescription"];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v5;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationOnboardingFlow-processUserInput:] with input results: %@", buf, 0xCu);
  }

  if ([v8 integerValue] && objc_msgSend(v8, "integerValue") != 1 && objc_msgSend(v8, "integerValue") != 2 && objc_msgSend(v8, "integerValue") != 3 && objc_msgSend(v8, "integerValue") != 10 && objc_msgSend(v8, "integerValue") != 4 && objc_msgSend(v8, "integerValue") != 5 && objc_msgSend(v8, "integerValue") != 6 && objc_msgSend(v8, "integerValue") != 8 && objc_msgSend(v8, "integerValue") != 7 && objc_msgSend(v8, "integerValue") != 9)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"HUHomeHubMigrationOnboardingFlow.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUHomeHub2OnboardingValue_ContinueFromIntro) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_ContinueFromDeviceWarning) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_ContinueFromSharedUserWarning) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_DontSetup) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_Done) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_ContinueFromAppleTVWarning) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_ContinueFromResidentWarning) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_MigrationInProgress) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_MigrationSucceeded) || (userInputValue.integerValue == HUHomeHub2OnboardingValue_MigrationFailed) || (userInputValue.integerValue== HUHomeHub2OnboardingValue_ResetAppleHome)"}];
  }

  if (![v8 integerValue] || objc_msgSend(v8, "integerValue") == 4 || objc_msgSend(v8, "integerValue") == 5 || objc_msgSend(v8, "integerValue") == 1 || objc_msgSend(v8, "integerValue") == 2)
  {
    v11 = [(HUHomeHubMigrationOnboardingFlow *)self _determineNextViewControllerWithPriorResults:v5];
    goto LABEL_26;
  }

  if ([v8 integerValue] == 3 || objc_msgSend(v8, "integerValue") == 10)
  {
    v13 = [(HUHomeHubMigrationOnboardingFlow *)self onboardingFuture];
    [v13 finishWithNoResult];

LABEL_32:
    v11 = 0;
    goto LABEL_26;
  }

  if ([v8 integerValue] == 6)
  {
    v14 = [HUHomeHubMigrationProgressViewController alloc];
    v15 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
    v11 = [(HUHomeHubMigrationProgressViewController *)v14 initWithOwnedHomes:v15 onboardingFlow:self];
LABEL_42:

    goto LABEL_26;
  }

  if ([v8 integerValue] == 7)
  {
    v16 = [(HUHomeHubMigrationOnboardingFlow *)self migrationErrors];
    v17 = [v16 count];

    v18 = v17 > 1;
    if (v17 <= 1)
    {
      v19 = @"HUSoftwareUpdateMigrationFailedDescriptionWithDevice";
    }

    else
    {
      v19 = @"HUSoftwareUpdateMigrationFailedDescription_AfterMultipleAttempts";
    }

    v15 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
    if (v9)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedDescriptionWithDevice", @"HUSoftwareUpdateMigrationFailedDescriptionWithDevice", 1);
      v22 = [v20 stringWithFormat:@"%@\n%@", v21, v9];

      v15 = v22;
    }

    v23 = [HUHomeHubMigrationFailedViewController alloc];
    v24 = [(HUHomeHubMigrationOnboardingFlow *)self home];
    v25 = [v24 name];
    v11 = [(HUHomeHubMigrationFailedViewController *)v23 initWithDetailText:v15 failedState:v18 homeName:v25];

    goto LABEL_42;
  }

  if ([v8 integerValue] != 9)
  {
    if ([v8 integerValue] != 8)
    {
      goto LABEL_32;
    }

    v30 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
    if ([v30 count] > 1)
    {
      v15 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationSuccessDescriptionMultipleHomes", @"HUSoftwareUpdateMigrationSuccessDescriptionMultipleHomes", 1);
    }

    else
    {
      v31 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
      v32 = [v31 firstObject];
      v33 = [v32 hf_displayName];
      v15 = HULocalizedStringWithFormat(@"HUSoftwareUpdateMigrationSuccessDescriptionSpecificHome", @"%@", v34, v35, v36, v37, v38, v39, v33);
    }

    v41 = [HUHomeHubMigrationSuccessViewController alloc];
    v42 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationSuccessTitle", @"HUSoftwareUpdateMigrationSuccessTitle", 1);
    v11 = [(HUHomeHubMigrationSuccessViewController *)v41 initWithTitle:v42 detailText:v15 symbolName:0];

    goto LABEL_42;
  }

  v26 = _HULocalizedStringWithDefaultValue(@"HUResetAppleHomeMigrationOnboardingDetailText", @"HUResetAppleHomeMigrationOnboardingDetailText", 1);
  v27 = [HUHomeHubMigrationFailedViewController alloc];
  v28 = [(HUHomeHubMigrationOnboardingFlow *)self home];
  v29 = [v28 name];
  v11 = [(HUHomeHubMigrationFailedViewController *)v27 initWithDetailText:v26 failedState:2 homeName:v29];

LABEL_26:

  return v11;
}

- (id)_determineNextViewControllerWithPriorResults:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"HUHomeHub2OnboardingKey_UserInput"];
  v6 = [v4 objectForKeyedSubscript:@"HUUpgradeMultiUserDevicesOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v50 = self;
    *&v50[8] = 2112;
    *&v50[10] = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationOnboardingFlow:_determineNextViewControllerWithPriorResults] %@ | results = [%@]", buf, 0x16u);
  }

  if (!v6 || [v6 integerValue])
  {
    if ([v5 integerValue])
    {
      if ([v5 integerValue] != 4)
      {
        if ([v5 integerValue] != 5)
        {
          if ([v5 integerValue] != 1)
          {
            if ([v5 integerValue] != 2)
            {
LABEL_37:
              v43 = HFLogForCategory();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = [(HUHomeHubMigrationOnboardingFlow *)self shouldShowUserWarning];
                *buf = 138412546;
                *v50 = self;
                *&v50[8] = 1024;
                *&v50[10] = v44;
                _os_log_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEFAULT, "%@: _determineNextViewControllerWithPriorResults result is nil. Marking onboarding future as finished. shouldShowUserWarning: %{BOOL}d", buf, 0x12u);
              }

              goto LABEL_40;
            }

            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v8 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
      v9 = [v8 na_flatMap:&__block_literal_global_117];
      v10 = [v9 na_filter:&__block_literal_global_59_1];
      [(HUHomeHubMigrationOnboardingFlow *)self setHomePodsToUpdate:v10];

      if ([(HUHomeHubMigrationOnboardingFlow *)self upgradeRequirements])
      {
        v11 = [(HUHomeHubMigrationOnboardingFlow *)self homePodsToUpdate];
        v12 = [v11 hmf_isEmpty] ^ 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(HUHomeHubMigrationOnboardingFlow *)self homePodsToUpdate];
        [(HUHomeHubMigrationOnboardingFlow *)self homePodsToUpdate];
        v47 = v48 = v12;
        v15 = v6;
        v16 = v4;
        v17 = v5;
        v18 = [v47 count];
        v19 = [(HUHomeHubMigrationOnboardingFlow *)self shouldShowResidentWarning];
        v20 = [(HUHomeHubMigrationOnboardingFlow *)self shouldShowAppleTVWarning];
        v21 = [(HUHomeHubMigrationOnboardingFlow *)self shouldShowDeviceWarning];
        v22 = [(HUHomeHubMigrationOnboardingFlow *)self shouldShowUserWarning];
        *buf = 67110658;
        *v50 = v48;
        *&v50[4] = 2112;
        *&v50[6] = v14;
        *&v50[14] = 2048;
        *&v50[16] = v18;
        v5 = v17;
        v4 = v16;
        v6 = v15;
        v51 = 1024;
        v52 = v19;
        v53 = 1024;
        v54 = v20;
        v55 = 1024;
        v56 = v21;
        v57 = 1024;
        v58 = v22;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationOnboardingFlow:_determineNextViewControllerWithPriorResults] shouldShowUpdateHomePodsView = %{BOOL}d | homePods = [%@] (count = %lu), shouldShowResidentWarning = %{BOOL}d, shouldShowAppleTVWarning = %{BOOL}d | shouldShowDeviceWarning = %{BOOL}d | shouldShowUserWarning = %{BOOL}d", buf, 0x34u);

        v12 = v48;
      }

      v23 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
      v24 = [v23 na_flatMap:&__block_literal_global_62_0];
      v25 = [v24 na_filter:&__block_literal_global_65];
      [(HUHomeHubMigrationOnboardingFlow *)self setAppleTVsToUpdate:v25];

      if (v12)
      {
        v26 = [HUHomeHubUpdateHomePodsViewController alloc];
        v27 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
        v28 = [(HUHomeHubMigrationOnboardingFlow *)self homePodsToUpdate];
        v29 = [(HUHomeHubUpdateHomePodsViewController *)v26 initWithOwnedHomes:v27 homePodsToUpdate:v28];

        if (v29)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if ([(HUHomeHubMigrationOnboardingFlow *)self shouldShowAppleTVWarning])
      {
        v30 = [HUHomeHubAppleTVUpdateWarningViewController alloc];
        v31 = [(HUHomeHubMigrationOnboardingFlow *)self appleTVsToUpdate];
        v29 = [(HUHomeHubAppleTVUpdateWarningViewController *)v30 initWithAppleTVsToUpdate:v31 shouldBlockMigration:[(HUHomeHubMigrationOnboardingFlow *)self shouldBlockMigrationWithAppleTVWarning]];

        if ([(HUHomeHubMigrationOnboardingFlow *)self shouldShowResidentWarning])
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    if (![(HUHomeHubMigrationOnboardingFlow *)self shouldShowResidentWarning])
    {
LABEL_27:
      if (![(HUHomeHubMigrationOnboardingFlow *)self shouldShowDeviceWarning])
      {
LABEL_31:
        if (![(HUHomeHubMigrationOnboardingFlow *)self shouldShowUserWarning])
        {
LABEL_35:
          v39 = [HUHomeHubSharedHomeWarningViewController alloc];
          v40 = MEMORY[0x277CBEB98];
          v41 = [(HUHomeHubMigrationOnboardingFlow *)self sharedHomes];
          v42 = [v40 setWithArray:v41];
          v29 = [(HUHomeHubSharedHomeWarningViewController *)v39 initWithSharedHomes:v42];

          v38 = v29;
          v35 = 1;
LABEL_36:
          [(HUHomeHubResidentWarningViewController *)v38 setIsFinalStep:v35];
          if (v29)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }

        v36 = [HUHomeHubSharedUserWarningViewController alloc];
        v37 = [(HUHomeHubMigrationOnboardingFlow *)self homesToUsersMap];
        v29 = [(HUHomeHubSharedUserWarningViewController *)v36 initWithHomesToUsersMap:v37];

        goto LABEL_33;
      }

      v32 = [HUHomeHubPersonalDeviceWarningViewController alloc];
      v33 = [(HUHomeHubMigrationOnboardingFlow *)self devices];
      v34 = [(HUHomeHubMigrationOnboardingFlow *)self homes];
      v29 = [(HUHomeHubPersonalDeviceWarningViewController *)v32 initWithDevices:v33 homes:v34];

LABEL_29:
      if (![(HUHomeHubMigrationOnboardingFlow *)self shouldShowUserWarning])
      {
LABEL_33:
        v35 = [(HUHomeHubMigrationOnboardingFlow *)self shouldShowSharedHomeWarning]^ 1;
        goto LABEL_34;
      }

LABEL_30:
      v35 = 0;
LABEL_34:
      v38 = v29;
      goto LABEL_36;
    }

    v29 = [[HUHomeHubResidentWarningViewController alloc] initWithiPadOnlyHub:[(HUHomeHubMigrationOnboardingFlow *)self hasiPadOnlyHub]];
LABEL_25:
    if ([(HUHomeHubMigrationOnboardingFlow *)self shouldShowDeviceWarning])
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_HomeHub2Migration_FinishedOnboarding"];
LABEL_40:
  v45 = [(HUHomeHubMigrationOnboardingFlow *)self onboardingFuture];
  [v45 finishWithNoResult];

  v29 = 0;
LABEL_41:

  return v29;
}

uint64_t __81__HUHomeHubMigrationOnboardingFlow__determineNextViewControllerWithPriorResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 supportsHH2];

  return v3 ^ 1u;
}

uint64_t __81__HUHomeHubMigrationOnboardingFlow__determineNextViewControllerWithPriorResults___block_invoke_2_63(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 supportsHH2];

  return v3 ^ 1u;
}

- (void)_checkHomePodResidentUpgradeRequirementsInHome:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFPreferencesBoolForKey();
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = self;
    v19 = 2048;
    v20 = [(HUHomeHubMigrationOnboardingFlow *)self upgradeRequirements];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: upgradeRequirements = [%lu]", buf, 0x16u);
  }

  if (v5)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Bypassing HomePod software version check for HH2 because the override is enabled", buf, 2u);
    }

    v8 = self;
    v9 = 0;
LABEL_7:
    [(HUHomeHubMigrationOnboardingFlow *)v8 setUpgradeRequirements:v9];
    goto LABEL_9;
  }

  if (![(HUHomeHubMigrationOnboardingFlow *)self upgradeRequirements])
  {
    v10 = [v4 residentDevices];
    v11 = [v10 count];

    if (v11)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 residentDevices];
        *buf = 138412802;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: residentDevices = [%@] in home: [%@]", buf, 0x20u);
      }

      v14 = [v4 residentDevices];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __83__HUHomeHubMigrationOnboardingFlow__checkHomePodResidentUpgradeRequirementsInHome___block_invoke;
      v16[3] = &unk_277DBD480;
      v16[4] = self;
      v15 = [v14 na_allObjectsPassTest:v16];

      v9 = v15 ^ 1u;
      v8 = self;
      goto LABEL_7;
    }
  }

LABEL_9:
}

uint64_t __83__HUHomeHubMigrationOnboardingFlow__checkHomePodResidentUpgradeRequirementsInHome___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 device];
    v7 = [v3 device];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = [v7 supportsHH2];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: residentDevice = [%@] supportsHH2 = [%d]", &v11, 0x1Cu);
  }

  v8 = [v3 device];
  if ([v8 supportsHH2] & 1) != 0 || (objc_msgSend(v3, "hf_isResidentAppleTV"))
  {
    v9 = 1;
  }

  else
  {
    v9 = [v3 hf_isResidentiPad];
  }

  return v9;
}

- (void)_checkResidentStatusInHome:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(HUHomeHubMigrationOnboardingFlow *)self shouldShowResidentWarning])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 residentDevices];
    v8 = [v6 setWithArray:v7];
    v9 = [v8 na_filter:&__block_literal_global_75_0];

    v10 = MEMORY[0x277CBEB98];
    v11 = [v5 residentDevices];
    v12 = [v10 setWithArray:v11];
    v13 = [v12 na_filter:&__block_literal_global_77_0];

    if ([v9 count])
    {
      v14 = [v9 count];
      v15 = [v5 residentDevices];
      v16 = v14 == [v15 count];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v5 residentDevices];
    v18 = [v17 count];

    v19 = ([v5 hf_hasAppleTVs] & 1) == 0 && objc_msgSend(v13, "count") != 0;
    if (v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 1;
    }

    v21 = v20 | v19;
    if ((v20 | v19))
    {
      -[HUHomeHubMigrationOnboardingFlow setHasiPadOnlyHub:](self, "setHasiPadOnlyHub:", [v9 count] != 0);
    }

    [(HUHomeHubMigrationOnboardingFlow *)self setShouldShowResidentWarning:v21 & 1];
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromSelector(a2);
      v24 = [v9 count];
      v25 = [v5 residentDevices];
      *buf = 138413314;
      *v57 = v23;
      *&v57[8] = 2112;
      v58 = v5;
      v59 = 2048;
      v60 = v24;
      v61 = 2112;
      v62 = v9;
      v63 = 2048;
      v64 = [v25 count];
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@ - home = %@, number of ipad resident devices = %lu, iPadResidentDevices = %@, number of total residents = %lu.", buf, 0x34u);
    }
  }

  if (![(HUHomeHubMigrationOnboardingFlow *)self shouldBlockMigrationWithAppleTVWarning])
  {
    v26 = [v5 hf_appleTVs];
    v27 = [v26 na_map:&__block_literal_global_81_0];

    v28 = MEMORY[0x277CBEB98];
    v29 = [v5 residentDevices];
    v30 = [v28 setWithArray:v29];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_2_82;
    v54[3] = &unk_277DBD480;
    v31 = v27;
    v55 = v31;
    v32 = [v30 na_filter:v54];

    v33 = [v32 na_filter:&__block_literal_global_84_0];
    v34 = [v5 hf_homePods];
    v35 = [v34 na_map:&__block_literal_global_86_2];

    v36 = MEMORY[0x277CBEB98];
    v37 = [v5 residentDevices];
    v38 = [v36 setWithArray:v37];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_5;
    v52[3] = &unk_277DBD480;
    v53 = v35;
    v51 = v35;
    v39 = [v38 na_filter:v52];

    if ([v33 count])
    {
      v50 = v31;
      v40 = a2;
      [(HUHomeHubMigrationOnboardingFlow *)self setShouldShowAppleTVWarning:1];
      v41 = [v33 count];
      v42 = [v32 count];
      v43 = [v39 hmf_isEmpty];
      v44 = HFLogForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v57 = v41 != v42;
        *&v57[4] = 1024;
        *&v57[6] = v43 ^ 1;
        _os_log_impl(&dword_20CEB6000, v44, OS_LOG_TYPE_DEFAULT, "hasHH2SupportedAppleTV = %d, hasHH2SupportedHomePod = %d", buf, 0xEu);
      }

      [(HUHomeHubMigrationOnboardingFlow *)self setShouldBlockMigrationWithAppleTVWarning:(v41 == v42) & v43];
      a2 = v40;
      v31 = v50;
    }

    v45 = HFLogForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = NSStringFromSelector(a2);
      v47 = [v33 count];
      v48 = [v32 count];
      v49 = [(HUHomeHubMigrationOnboardingFlow *)self shouldBlockMigrationWithAppleTVWarning];
      *buf = 138413570;
      *v57 = v46;
      *&v57[8] = 2112;
      v58 = v5;
      v59 = 2048;
      v60 = v47;
      v61 = 2112;
      v62 = v33;
      v63 = 2048;
      v64 = v48;
      v65 = 1024;
      v66 = v49;
      _os_log_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEFAULT, "%@ - home = %@, number of Apple TV resident devices that need a software update = %lu, appleTVResidentDevicesToUpdate = %@, number of total Apple TV residents = %lu, blocking migration = %d", buf, 0x3Au);
    }
  }
}

uint64_t __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isResidentAppleTV])
  {
    v3 = [v2 device];
    v4 = [v3 supportsHH2] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_78(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

uint64_t __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_2_82(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 device];
  v5 = [v4 uniqueIdentifier];
  LODWORD(v2) = [v2 containsObject:v5];

  LODWORD(v4) = [v3 hf_isResidentAppleTV];
  return v4 & v2;
}

uint64_t __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 supportsHH2];

  return v3 ^ 1u;
}

id __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

uint64_t __63__HUHomeHubMigrationOnboardingFlow__checkResidentStatusInHome___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 device];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 containsObject:v6];

  if ([v3 hf_isResidentiPad] & 1) != 0 || (objc_msgSend(v3, "hf_isResidentAppleTV"))
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 device];
    v8 = [v9 supportsHH2] & v7;
  }

  return v8;
}

- (void)addMigrationError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableArray *)self->_migrationErrors addObject:v4];
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 code];
    v7 = [(NSMutableArray *)self->_migrationErrors count];
    v8 = 138412802;
    v9 = v4;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationOnboardingFlow-addMigrationError] Added migration error: %@ (%lu). Total errors: %lu", &v8, 0x20u);
  }
}

- (NSMutableArray)migrationErrors
{
  v2 = [(NSMutableArray *)self->_migrationErrors copy];

  return v2;
}

@end