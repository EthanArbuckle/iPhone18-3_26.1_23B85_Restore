@interface HULocationServicesOnboardingFlow
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HULocationServicesOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
@end

@implementation HULocationServicesOnboardingFlow

- (HULocationServicesOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HULocationServicesOnboardingFlow;
  v8 = [(HULocationServicesOnboardingFlow *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    objc_initWeak(&location, v9);
    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    readyFuture = v9->_readyFuture;
    v9->_readyFuture = v10;

    v12 = [objc_opt_class() needsOnboardingForHome:v7 options:v6];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__HULocationServicesOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v16[3] = &unk_277DB9238;
    objc_copyWeak(&v17, &location);
    v13 = [v12 flatMap:v16];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __62__HULocationServicesOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HULocationServicesOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB9210;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

void __62__HULocationServicesOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [HULocationServicesSetupViewController alloc];
    v5 = [WeakRetained home];
    v6 = [(HULocationServicesSetupViewController *)v4 initWithHome:v5];
    [WeakRetained setInitialViewController:v6];

    v7 = [WeakRetained readyFuture];
    [v7 finishWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    [v8 finishWithNoResult];
  }
}

- (id)processUserInput:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HULocationServicesOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HULocationServicesOnboardingFlow.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HULocationServicesOnboardingValue_Enable) || (userInputValue.integerValue == HULocationServicesOnboardingValue_Disable)"}];
  }

  if (![v6 integerValue] || objc_msgSend(v6, "integerValue") == 1)
  {
    v9 = [v6 integerValue] == 0;
    v10 = [(HULocationServicesOnboardingFlow *)self home];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__HULocationServicesOnboardingFlow_processUserInput___block_invoke;
    v14[3] = &unk_277DB8E70;
    v14[4] = self;
    v14[5] = a2;
    [v10 updateLocationServicesEnabled:v9 completion:v14];

    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_LocationServices_FinishedOnboarding"];
    v11 = [(HULocationServicesOnboardingFlow *)self onboardingFuture];
    [v11 finishWithNoResult];
  }

  return 0;
}

void __53__HULocationServicesOnboardingFlow_processUserInput___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = v6;
    v8 = @"Failed";
    v9 = 138413058;
    v10 = v5;
    v11 = 2112;
    if (!v3)
    {
      v8 = @"Succeeded";
    }

    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Location Services Onboarding %@. Error (%@)", &v9, 0x2Au);
  }
}

+ (id)needsOnboardingForHome:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, a1);
  v9 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HULocationServicesOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v13[3] = &unk_277DB75B0;
  objc_copyWeak(v15, &location);
  v10 = v7;
  v14 = v10;
  v15[1] = a2;
  v11 = [v9 futureWithBlock:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v11;
}

void __67__HULocationServicesOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) didOnboardLocationServices];
  v6 = [*(a1 + 32) hf_allHomePodProfileContainers];
  v7 = [v6 na_any:&__block_literal_global_30];
  v8 = [*(a1 + 32) accessories];
  v9 = [v8 na_any:&__block_literal_global_28];

  v10 = 0;
  if ([*(a1 + 32) hf_currentUserIsAdministrator] && (v5 & 1) == 0 && (v7 & 1) == 0 && v9)
  {
    v10 = [*(a1 + 32) isLocationServicesEnabled] ^ 1;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    NSStringFromSelector(*(a1 + 48));
    v17 = v3;
    v13 = v12 = WeakRetained;
    v14 = [*(a1 + 32) currentUser];
    v15 = *(a1 + 32);
    *buf = 138414338;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 1024;
    v23 = v10;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 1024;
    v29 = v5;
    v30 = 1024;
    v31 = v7;
    v32 = 1024;
    v33 = v9;
    v34 = 1024;
    v35 = [v15 isLocationServicesEnabled];
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@: ---> %{BOOL}d <--- because: user(%@) in home(%@):\n\t\thasPreviouslyDismissed = %{BOOL}d, hasAtleastOneHomePodWithLocationServicesEnabled = %{BOOL}d , atLeastOneDeviceSupportsHomeLevelLocationServicesSetting = %{BOOL}d, home.locationServicesEnabled = %{BOOL}d", buf, 0x48u);

    WeakRetained = v12;
    v3 = v17;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [v3 finishWithResult:v16];
}

uint64_t __67__HULocationServicesOnboardingFlow_needsOnboardingForHome_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_settingsValueManager];
  v4 = [v2 settings];

  v5 = [v4 hf_accessorySettingAtKeyPath:*MEMORY[0x277D139C0]];

  objc_opt_class();
  v6 = [v3 valueForSetting:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end