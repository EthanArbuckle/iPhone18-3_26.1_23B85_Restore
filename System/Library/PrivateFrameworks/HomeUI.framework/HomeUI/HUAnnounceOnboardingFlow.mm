@interface HUAnnounceOnboardingFlow
+ (id)allSteps;
+ (id)needsOnboardingForHome:(id)home options:(id)options;
- (BOOL)shouldShowStep:(unint64_t)step withOptions:(id)options;
- (HUAnnounceOnboardingFlow)initWithUsageOptions:(id)options home:(id)home;
- (id)processUserInput:(id)input;
- (id)viewControllerForStep:(unint64_t)step;
@end

@implementation HUAnnounceOnboardingFlow

- (HUAnnounceOnboardingFlow)initWithUsageOptions:(id)options home:(id)home
{
  optionsCopy = options;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HUAnnounceOnboardingFlow;
  v8 = [(HUAnnounceOnboardingFlow *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(HUAnnounceOnboardingFlow *)v8 setHome:homeCopy];
    v10 = [objc_opt_class() needsOnboardingForHome:homeCopy options:optionsCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__HUAnnounceOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v15[3] = &unk_277DBD4E0;
    v11 = v9;
    v16 = v11;
    v17 = optionsCopy;
    v12 = [v10 flatMap:v15];
    onboardingFuture = v11->_onboardingFuture;
    v11->_onboardingFuture = v12;
  }

  return v9;
}

id __54__HUAnnounceOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HUAnnounceOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB91B8;
  objc_copyWeak(&v11, &location);
  v5 = v3;
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

void __54__HUAnnounceOnboardingFlow_initWithUsageOptions_home___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([a1[4] BOOLValue])
  {
    v5 = [objc_opt_class() allSteps];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __54__HUAnnounceOnboardingFlow_initWithUsageOptions_home___block_invoke_3;
    v17 = &unk_277DBD4B8;
    v6 = WeakRetained;
    v18 = v6;
    v19 = a1[5];
    v7 = [v5 na_filter:&v14];
    [v6 setRequiredSteps:{v7, v14, v15, v16, v17}];

    v8 = [v6 requiredSteps];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v6 requiredSteps];
      v11 = [v10 firstObject];
      v12 = [v11 unsignedIntegerValue];

      v13 = [v6 viewControllerForStep:v12];
      [v6 setInitialViewController:v13];
    }

    else
    {
      [v3 finishWithNoResult];
    }
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

uint64_t __54__HUAnnounceOnboardingFlow_initWithUsageOptions_home___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 integerValue];
  v5 = *(a1 + 40);

  return [v3 shouldShowStep:v4 withOptions:v5];
}

- (BOOL)shouldShowStep:(unint64_t)step withOptions:(id)options
{
  v6 = [(HUAnnounceOnboardingFlow *)self home:step];
  hf_allUsersIncludingCurrentUser = [v6 hf_allUsersIncludingCurrentUser];
  v8 = [hf_allUsersIncludingCurrentUser count];

  if (step == 2 && v8 < 2)
  {
    return 0;
  }

  home = [(HUAnnounceOnboardingFlow *)self home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (step == 2)
  {
    return hf_currentUserIsAdministrator;
  }

  else
  {
    return 1;
  }
}

- (id)viewControllerForStep:(unint64_t)step
{
  if (step)
  {
    v5 = [HUAnnounceSetupViewController alloc];
    home = [(HUAnnounceOnboardingFlow *)self home];
    v7 = [(HUAnnounceSetupViewController *)v5 initWithHome:home step:step];
  }

  else
  {
    v8 = [HUAnnounceTitleViewController alloc];
    home = [(HUAnnounceOnboardingFlow *)self home];
    v7 = [(HUAnnounceTitleViewController *)v8 initWithHome:home];
  }

  v9 = v7;

  return v9;
}

- (id)processUserInput:(id)input
{
  inputCopy = input;
  objc_opt_class();
  v5 = [inputCopy objectForKeyedSubscript:@"announceSetupStep"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    requiredSteps = [(HUAnnounceOnboardingFlow *)self requiredSteps];
    v9 = [requiredSteps indexOfObject:v7] + 1;
  }

  else
  {
    v9 = 0;
  }

  requiredSteps2 = [(HUAnnounceOnboardingFlow *)self requiredSteps];
  v11 = [requiredSteps2 count];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v9 >= v11];
  [inputCopy setObject:v12 forKeyedSubscript:@"HUHomeFeatureOnboardingKey_Announce_FinishedOnboarding"];

  if (v9 < v11)
  {
    requiredSteps3 = [(HUAnnounceOnboardingFlow *)self requiredSteps];
    v16 = [requiredSteps3 objectAtIndexedSubscript:v9];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    v14 = [(HUAnnounceOnboardingFlow *)self viewControllerForStep:unsignedIntegerValue];
  }

  else
  {
    onboardingFuture = [(HUAnnounceOnboardingFlow *)self onboardingFuture];
    [onboardingFuture finishWithNoResult];

    v14 = 0;
  }

  return v14;
}

+ (id)allSteps
{
  if (_MergedGlobals_623 != -1)
  {
    dispatch_once(&_MergedGlobals_623, &__block_literal_global_13_1);
  }

  v3 = qword_281121F50;

  return v3;
}

void __36__HUAnnounceOnboardingFlow_allSteps__block_invoke_2()
{
  v0 = qword_281121F50;
  qword_281121F50 = &unk_282492C00;
}

+ (id)needsOnboardingForHome:(id)home options:(id)options
{
  homeCopy = home;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HUAnnounceOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v14[3] = &unk_277DBCAB8;
  objc_copyWeak(v17, &location);
  v10 = homeCopy;
  v15 = v10;
  v11 = optionsCopy;
  v16 = v11;
  v17[1] = a2;
  v12 = [v9 futureWithBlock:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v12;
}

void __59__HUAnnounceOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) hf_shouldShowAnnounceFeatureForThisHome];
  v6 = objc_alloc(MEMORY[0x277D14C98]);
  v7 = *(a1 + 32);
  v8 = [v7 currentUser];
  v9 = [v6 initWithHome:v7 user:v8 nameStyle:0];

  v10 = [v9 hasDismissedAnnounceOnboarding];
  objc_opt_class();
  v11 = [*(a1 + 40) objectForKeyedSubscript:@"announceForceOnboarding"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if ([v13 BOOLValue])
  {
    v14 = v5;
  }

  else
  {
    v14 = v5 & (v10 ^ 1);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(*(a1 + 56));
    v17 = v16;
    v18 = *(a1 + 32);
    v19 = @"Cannot";
    v21 = 138413826;
    v22 = WeakRetained;
    if (v14)
    {
      v19 = @"Can";
    }

    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v18;
    v31 = 1024;
    v32 = v5;
    v33 = 1024;
    v34 = v10;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ show because: user(%@) in home(%@):\n\t\tshowsAnnounceButton = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d", &v21, 0x40u);
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v3 finishWithResult:v20];
}

@end