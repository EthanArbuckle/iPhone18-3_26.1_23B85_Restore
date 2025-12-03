@interface HUNaturalLightingOnboardingFlow
+ (BOOL)home:(id)home canShowNaturalLightingOnboardingWithUsageOptions:(id)options;
+ (id)needsOnboardingForHome:(id)home options:(id)options;
- (HUConfigurationViewController)setupViewController;
- (HUNaturalLightingOnboardingFlow)initWithUsageOptions:(id)options home:(id)home;
- (id)processUserInput:(id)input;
@end

@implementation HUNaturalLightingOnboardingFlow

- (HUNaturalLightingOnboardingFlow)initWithUsageOptions:(id)options home:(id)home
{
  optionsCopy = options;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HUNaturalLightingOnboardingFlow;
  v8 = [(HUNaturalLightingOnboardingFlow *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:homeCopy options:optionsCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HUNaturalLightingOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v14[3] = &unk_277DB91E0;
    objc_copyWeak(&v16, &location);
    v15 = optionsCopy;
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
    home = [(HUNaturalLightingOnboardingFlow *)self home];
    v6 = [(HUNaturalLightingSetupViewController *)v4 initWithHome:home];
    v7 = self->_setupViewController;
    self->_setupViewController = v6;

    setupViewController = self->_setupViewController;
  }

  return setupViewController;
}

- (id)processUserInput:(id)input
{
  v21 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = [inputCopy objectForKeyedSubscript:@"HUNaturalLightingOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1 && objc_msgSend(v6, "integerValue") != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNaturalLightingOnboardingFlow.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUNaturalLightingOnboardingValue_ShowSetupNext) || (userInputValue.integerValue == HUNaturalLightingOnboardingValue_SetupComplete) || (userInputValue.integerValue == HUNaturalLightingOnboardingValue_DontSetup)"}];
  }

  if ([v6 integerValue] || (-[HUNaturalLightingOnboardingFlow home](self, "home"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hf_currentUserIsAdministrator"), v9, !v10))
  {
    [inputCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_NaturalLighting_FinishedOnboarding"];
    onboardingFuture = [(HUNaturalLightingOnboardingFlow *)self onboardingFuture];
    [onboardingFuture finishWithNoResult];

    setupViewController = 0;
  }

  else
  {
    setupViewController = [(HUNaturalLightingOnboardingFlow *)self setupViewController];
  }

  return setupViewController;
}

+ (id)needsOnboardingForHome:(id)home options:(id)options
{
  homeCopy = home;
  optionsCopy = options;
  v7 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HUNaturalLightingOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v12[3] = &unk_277DB8200;
  v13 = homeCopy;
  v14 = optionsCopy;
  v8 = optionsCopy;
  v9 = homeCopy;
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

+ (BOOL)home:(id)home canShowNaturalLightingOnboardingWithUsageOptions:(id)options
{
  v51 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  optionsCopy = options;
  hf_allLightProfilesSupportingNaturalLighting = [homeCopy hf_allLightProfilesSupportingNaturalLighting];
  v10 = [hf_allLightProfilesSupportingNaturalLighting count];

  hf_accessoriesSupportingNaturalLighting = [homeCopy hf_accessoriesSupportingNaturalLighting];
  v12 = [hf_accessoriesSupportingNaturalLighting na_any:&__block_literal_global_24];

  hf_enabledResidentsSupportsNaturalLight = [homeCopy hf_enabledResidentsSupportsNaturalLight];
  v13 = objc_alloc(MEMORY[0x277D14C98]);
  currentUser = [homeCopy currentUser];
  v15 = [v13 initWithHome:homeCopy user:currentUser nameStyle:0];

  hf_currentUserIsAdministrator = [homeCopy hf_currentUserIsAdministrator];
  hasDismissedNaturalLightingOnboarding = [v15 hasDismissedNaturalLightingOnboarding];
  v17 = [optionsCopy objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];

  bOOLValue = [v17 BOOLValue];
  if (v10 && hf_enabledResidentsSupportsNaturalLight && v12 && hf_currentUserIsAdministrator && ((hasDismissedNaturalLightingOnboarding ^ 1 | bOOLValue) & 1) != 0)
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
    selfCopy = self;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    v35 = 2112;
    v36 = homeCopy;
    v37 = 1024;
    v38 = v22;
    v15 = v21;
    v39 = 1024;
    v40 = hf_enabledResidentsSupportsNaturalLight;
    v41 = 1024;
    v42 = hf_currentUserIsAdministrator;
    v43 = 1024;
    v44 = v26;
    v45 = 1024;
    v46 = bOOLValue & 1;
    v47 = 1024;
    v48 = hasDismissedNaturalLightingOnboarding;
    v49 = 1024;
    v50 = HFForceNaturalLightingOnboarding();
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ show because: home(%@):\n\t\thasCompatibleLights = %{BOOL}d\n\t\thasCapableResident = %{BOOL}d\n\t\tuserAllowedToEdit = %{BOOL}d\n\t\tsomeAccessoriesNotOnboarded = %{BOOL}d\n\t\tonboardingFromUserInput = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\tHFForceNaturalLighting = %{BOOL}d", buf, 0x54u);
  }

  return v19;
}

@end