@interface HUNaturalLightingOnboardingFlow
+ (BOOL)home:(id)a3 canShowNaturalLightingOnboardingWithUsageOptions:(id)a4;
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HUConfigurationViewController)setupViewController;
- (HUNaturalLightingOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
@end

@implementation HUNaturalLightingOnboardingFlow

- (HUNaturalLightingOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HUNaturalLightingOnboardingFlow;
  v8 = [(HUNaturalLightingOnboardingFlow *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:v7 options:v6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HUNaturalLightingOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v14[3] = &unk_277DB91E0;
    objc_copyWeak(&v16, &location);
    v15 = v6;
    v11 = [v10 flatMap:v14];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __61__HUNaturalLightingOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 BOOLValue];

  v6 = [WeakRetained home];
  v7 = [v6 hf_homeKitObjectsSupportingNaturalLighting];
  v8 = [v7 na_filter:&__block_literal_global_195];

  if ([v8 count])
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HUNaturalLightingOnboardingFlow_initWithUsageOptions_home___block_invoke_3;
  v14[3] = &unk_277DB89C0;
  v17 = v9;
  v15 = *(a1 + 32);
  v16 = WeakRetained;
  v11 = WeakRetained;
  v12 = [v10 futureWithBlock:v14];

  return v12;
}

void __61__HUNaturalLightingOnboardingFlow_initWithUsageOptions_home___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromNaturalLightingReminder"];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v7 = [*(a1 + 40) setupViewController];
      [*(a1 + 40) setInitialViewController:v7];
    }

    else
    {
      v5 = [HUNaturalLightingTitleViewController alloc];
      v7 = [*(a1 + 40) home];
      v6 = [(HUNaturalLightingTitleViewController *)v5 initWithHome:v7];
      [*(a1 + 40) setInitialViewController:v6];
    }
  }

  else
  {

    [a2 finishWithNoResult];
  }
}

- (HUConfigurationViewController)setupViewController
{
  setupViewController = self->_setupViewController;
  if (!setupViewController)
  {
    v4 = [HUNaturalLightingSetupViewController alloc];
    v5 = [(HUNaturalLightingOnboardingFlow *)self home];
    v6 = [(HUNaturalLightingSetupViewController *)v4 initWithHome:v5];
    v7 = self->_setupViewController;
    self->_setupViewController = v6;

    setupViewController = self->_setupViewController;
  }

  return setupViewController;
}

- (id)processUserInput:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HUNaturalLightingOnboardingKey_UserInput"];
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

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1 && objc_msgSend(v6, "integerValue") != 2)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HUNaturalLightingOnboardingFlow.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUNaturalLightingOnboardingValue_ShowSetupNext) || (userInputValue.integerValue == HUNaturalLightingOnboardingValue_SetupComplete) || (userInputValue.integerValue == HUNaturalLightingOnboardingValue_DontSetup)"}];
  }

  if ([v6 integerValue] || (-[HUNaturalLightingOnboardingFlow home](self, "home"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hf_currentUserIsAdministrator"), v9, !v10))
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_NaturalLighting_FinishedOnboarding"];
    v12 = [(HUNaturalLightingOnboardingFlow *)self onboardingFuture];
    [v12 finishWithNoResult];

    v11 = 0;
  }

  else
  {
    v11 = [(HUNaturalLightingOnboardingFlow *)self setupViewController];
  }

  return v11;
}

+ (id)needsOnboardingForHome:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HUNaturalLightingOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v12[3] = &unk_277DB8200;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 futureWithBlock:v12];

  return v10;
}

void __66__HUNaturalLightingOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [HUNaturalLightingOnboardingFlow home:v2 canShowNaturalLightingOnboardingWithUsageOptions:v3];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v4 finishWithResult:v6];
}

+ (BOOL)home:(id)a3 canShowNaturalLightingOnboardingWithUsageOptions:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 hf_allLightProfilesSupportingNaturalLighting];
  v10 = [v9 count];

  v11 = [v7 hf_accessoriesSupportingNaturalLighting];
  v12 = [v11 na_any:&__block_literal_global_24];

  v28 = [v7 hf_enabledResidentsSupportsNaturalLight];
  v13 = objc_alloc(MEMORY[0x277D14C98]);
  v14 = [v7 currentUser];
  v15 = [v13 initWithHome:v7 user:v14 nameStyle:0];

  v16 = [v7 hf_currentUserIsAdministrator];
  v27 = [v15 hasDismissedNaturalLightingOnboarding];
  v17 = [v8 objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];

  v18 = [v17 BOOLValue];
  if (v10 && v28 && v12 && v16 && ((v27 ^ 1 | v18) & 1) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = HFForceNaturalLightingOnboarding();
  }

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v12;
    v21 = v15;
    v22 = v10 != 0;
    v23 = NSStringFromSelector(a2);
    if (v19)
    {
      v24 = @"Can";
    }

    else
    {
      v24 = @"Cannot";
    }

    *buf = 138414850;
    v30 = a1;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    v35 = 2112;
    v36 = v7;
    v37 = 1024;
    v38 = v22;
    v15 = v21;
    v39 = 1024;
    v40 = v28;
    v41 = 1024;
    v42 = v16;
    v43 = 1024;
    v44 = v26;
    v45 = 1024;
    v46 = v18 & 1;
    v47 = 1024;
    v48 = v27;
    v49 = 1024;
    v50 = HFForceNaturalLightingOnboarding();
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ show because: home(%@):\n\t\thasCompatibleLights = %{BOOL}d\n\t\thasCapableResident = %{BOOL}d\n\t\tuserAllowedToEdit = %{BOOL}d\n\t\tsomeAccessoriesNotOnboarded = %{BOOL}d\n\t\tonboardingFromUserInput = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\tHFForceNaturalLighting = %{BOOL}d", buf, 0x54u);
  }

  return v19;
}

@end