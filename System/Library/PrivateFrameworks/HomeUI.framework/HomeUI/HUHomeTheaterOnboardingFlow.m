@interface HUHomeTheaterOnboardingFlow
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HUHomeTheaterOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
- (id)viewControllerForAccessory:(id)a3;
@end

@implementation HUHomeTheaterOnboardingFlow

- (HUHomeTheaterOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HUHomeTheaterOnboardingFlow;
  v8 = [(HUHomeTheaterOnboardingFlow *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = [v7 hf_appleTVsSupportingHomeTheater];
    appleTVs = v9->_appleTVs;
    v9->_appleTVs = v10;

    v12 = [objc_opt_class() needsOnboardingForHome:v7 options:v6];
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

- (id)viewControllerForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 audioDestinationController];
  v6 = [v5 availableDestinations];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v4 audioDestinationController];
    v9 = [v8 availableDestinations];
    v10 = [v9 firstObject];

    v11 = [HUHomeTheaterSimpleSetupViewController alloc];
    v12 = [(HUHomeTheaterOnboardingFlow *)self home];
    v13 = [(HUHomeTheaterSimpleSetupViewController *)v11 initWithAppleTVAccessory:v4 destination:v10 inHome:v12];

    v4 = v12;
  }

  else
  {
    v14 = [HUHomeTheaterSetupViewController alloc];
    v10 = [(HUHomeTheaterOnboardingFlow *)self home];
    v13 = [(HUHomeTheaterSetupViewController *)v14 initWithAppleTVAccessory:v4 inHome:v10];
  }

  return v13;
}

- (id)processUserInput:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HUHomeTheaterOnboardingKey_UserInput"];
  v7 = [v5 objectForKeyedSubscript:@"HUHomeTheaterOnboardingKey_Accessory"];
  v8 = [(HUHomeTheaterOnboardingFlow *)self appleTVs];
  v9 = [v8 indexOfObject:v7];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412802;
    v21 = self;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HUHomeTheaterOnboardingFlow.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUHomeTheaterOnboardingValue_Setup) || (userInputValue.integerValue == HUHomeTheaterOnboardingValue_DontSetup)"}];
  }

  [v6 integerValue];
  [v6 integerValue];
  v12 = v9 + 1;
  v13 = [(HUHomeTheaterOnboardingFlow *)self appleTVs];
  v14 = [v13 count];

  if (v12 >= v14)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_HomeTheater_FinishedOnboarding"];
    v16 = [(HUHomeTheaterOnboardingFlow *)self onboardingFuture];
    [v16 finishWithNoResult];
    v17 = 0;
  }

  else
  {
    v15 = [(HUHomeTheaterOnboardingFlow *)self appleTVs];
    v16 = [v15 objectAtIndexedSubscript:v12];

    v17 = [(HUHomeTheaterOnboardingFlow *)self viewControllerForAccessory:v16];
  }

  return v17;
}

+ (id)needsOnboardingForHome:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, a1);
  v9 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HUHomeTheaterOnboardingFlow_needsOnboardingForHome_options___block_invoke;
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