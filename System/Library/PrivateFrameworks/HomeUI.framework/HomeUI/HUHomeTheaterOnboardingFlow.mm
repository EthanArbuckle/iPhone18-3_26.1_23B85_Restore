@interface HUHomeTheaterOnboardingFlow
+ (id)needsOnboardingForHome:(id)home options:(id)options;
- (HUHomeTheaterOnboardingFlow)initWithUsageOptions:(id)options home:(id)home;
- (id)processUserInput:(id)input;
- (id)viewControllerForAccessory:(id)accessory;
@end

@implementation HUHomeTheaterOnboardingFlow

- (HUHomeTheaterOnboardingFlow)initWithUsageOptions:(id)options home:(id)home
{
  optionsCopy = options;
  homeCopy = home;
  v19.receiver = self;
  v19.super_class = HUHomeTheaterOnboardingFlow;
  v8 = [(HUHomeTheaterOnboardingFlow *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    hf_appleTVsSupportingHomeTheater = [homeCopy hf_appleTVsSupportingHomeTheater];
    appleTVs = v9->_appleTVs;
    v9->_appleTVs = hf_appleTVsSupportingHomeTheater;

    v12 = [objc_opt_class() needsOnboardingForHome:homeCopy options:optionsCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__HUHomeTheaterOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v17[3] = &unk_277DB7AB8;
    v13 = v9;
    v18 = v13;
    v14 = [v12 flatMap:v17];
    onboardingFuture = v13->_onboardingFuture;
    v13->_onboardingFuture = v14;
  }

  return v9;
}

id __57__HUHomeTheaterOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HUHomeTheaterOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB8200;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 futureWithBlock:v8];

  return v6;
}

void __57__HUHomeTheaterOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) BOOLValue])
  {
    v3 = [*(a1 + 40) appleTVs];
    v4 = [v3 firstObject];

    v5 = [*(a1 + 40) viewControllerForAccessory:v4];
    [*(a1 + 40) setInitialViewController:v5];
  }

  else
  {
    [v6 finishWithNoResult];
  }
}

- (id)viewControllerForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  audioDestinationController = [accessoryCopy audioDestinationController];
  availableDestinations = [audioDestinationController availableDestinations];
  v7 = [availableDestinations count];

  if (v7 == 1)
  {
    audioDestinationController2 = [accessoryCopy audioDestinationController];
    availableDestinations2 = [audioDestinationController2 availableDestinations];
    firstObject = [availableDestinations2 firstObject];

    v11 = [HUHomeTheaterSimpleSetupViewController alloc];
    home = [(HUHomeTheaterOnboardingFlow *)self home];
    v13 = [(HUHomeTheaterSimpleSetupViewController *)v11 initWithAppleTVAccessory:accessoryCopy destination:firstObject inHome:home];

    accessoryCopy = home;
  }

  else
  {
    v14 = [HUHomeTheaterSetupViewController alloc];
    firstObject = [(HUHomeTheaterOnboardingFlow *)self home];
    v13 = [(HUHomeTheaterSetupViewController *)v14 initWithAppleTVAccessory:accessoryCopy inHome:firstObject];
  }

  return v13;
}

- (id)processUserInput:(id)input
{
  v26 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = [inputCopy objectForKeyedSubscript:@"HUHomeTheaterOnboardingKey_UserInput"];
  v7 = [inputCopy objectForKeyedSubscript:@"HUHomeTheaterOnboardingKey_Accessory"];
  appleTVs = [(HUHomeTheaterOnboardingFlow *)self appleTVs];
  v9 = [appleTVs indexOfObject:v7];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeTheaterOnboardingFlow.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUHomeTheaterOnboardingValue_Setup) || (userInputValue.integerValue == HUHomeTheaterOnboardingValue_DontSetup)"}];
  }

  [v6 integerValue];
  [v6 integerValue];
  v12 = v9 + 1;
  appleTVs2 = [(HUHomeTheaterOnboardingFlow *)self appleTVs];
  v14 = [appleTVs2 count];

  if (v12 >= v14)
  {
    [inputCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_HomeTheater_FinishedOnboarding"];
    onboardingFuture = [(HUHomeTheaterOnboardingFlow *)self onboardingFuture];
    [onboardingFuture finishWithNoResult];
    v17 = 0;
  }

  else
  {
    appleTVs3 = [(HUHomeTheaterOnboardingFlow *)self appleTVs];
    onboardingFuture = [appleTVs3 objectAtIndexedSubscript:v12];

    v17 = [(HUHomeTheaterOnboardingFlow *)self viewControllerForAccessory:onboardingFuture];
  }

  return v17;
}

+ (id)needsOnboardingForHome:(id)home options:(id)options
{
  homeCopy = home;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HUHomeTheaterOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v13[3] = &unk_277DB75B0;
  objc_copyWeak(v15, &location);
  v10 = homeCopy;
  v14 = v10;
  v15[1] = a2;
  v11 = [v9 futureWithBlock:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v11;
}

void __62__HUHomeTheaterOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) hf_appleTVsSupportingHomeTheater];
  v6 = [v5 count];

  if (v6)
  {
    v24 = WeakRetained;
    v7 = [*(a1 + 32) hf_appleTVsSupportingHomeTheater];
    v8 = [v7 count];
    v9 = [v7 na_any:&__block_literal_global_20];
    v10 = [*(a1 + 32) hf_currentUserIsAdministrator];
    v11 = objc_alloc(MEMORY[0x277D14C98]);
    v12 = *(a1 + 32);
    v13 = [v12 currentUser];
    v14 = [v11 initWithHome:v12 user:v13 nameStyle:0];

    v15 = [v14 hasDismissedHomeTheaterOnboarding];
    v16 = (v8 != 0) & (v9 ^ 1) & (v15 ^ 1u) & v10;
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v8 != 0;
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = v18;
      v20 = *(a1 + 32);
      v21 = @"Cannot";
      *buf = 138414338;
      v26 = v24;
      if (v16)
      {
        v21 = @"Can";
      }

      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v20;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v9 & 1;
      v39 = 1024;
      v40 = v10 & 1;
      v41 = 1024;
      v42 = v15 & 1;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ show because: user(%@) in home(%@):\n\t\thasCompatibleAppleTVs = %{BOOL}d\n\t\talreadyOneSetup = %{BOOL}d\n\t\tuserAllowedToEdit = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d", buf, 0x4Cu);
    }

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v3 finishWithResult:v22];

    WeakRetained = v24;
  }

  else
  {
    [v3 finishWithResult:MEMORY[0x277CBEC28]];
  }
}

BOOL __62__HUHomeTheaterOnboardingFlow_needsOnboardingForHome_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 audioDestinationController];
  v3 = [v2 destination];
  v4 = v3 != 0;

  return v4;
}

@end