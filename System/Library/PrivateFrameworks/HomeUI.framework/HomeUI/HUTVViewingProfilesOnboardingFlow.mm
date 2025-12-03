@interface HUTVViewingProfilesOnboardingFlow
+ (id)needsOnboardingForHome:(id)home options:(id)options;
- (HUTVViewingProfilesOnboardingFlow)initWithUsageOptions:(id)options home:(id)home;
- (id)processUserInput:(id)input;
@end

@implementation HUTVViewingProfilesOnboardingFlow

- (HUTVViewingProfilesOnboardingFlow)initWithUsageOptions:(id)options home:(id)home
{
  optionsCopy = options;
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = HUTVViewingProfilesOnboardingFlow;
  v8 = [(HUTVViewingProfilesOnboardingFlow *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:homeCopy options:optionsCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HUTVViewingProfilesOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v14[3] = &unk_277DB9238;
    objc_copyWeak(&v15, &location);
    v11 = [v10 flatMap:v14];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __63__HUTVViewingProfilesOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HUTVViewingProfilesOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB9210;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

void __63__HUTVViewingProfilesOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [HUTVViewingProfilesSetupViewController alloc];
    v5 = [WeakRetained home];
    v6 = [(HUTVViewingProfilesSetupViewController *)v4 initWithHome:v5];
    [WeakRetained setInitialViewController:v6];
  }

  else
  {
    [v7 finishWithNoResult];
  }
}

- (id)processUserInput:(id)input
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = [inputCopy objectForKeyedSubscript:@"HUTVViewingProfilesOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] != 1 && objc_msgSend(v6, "integerValue") != 2 && objc_msgSend(v6, "integerValue") != 3 && objc_msgSend(v6, "integerValue"))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTVViewingProfilesOnboardingFlow.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUTVViewingProfilesOnboardingValue_Customize) || (userInputValue.integerValue == HUTVViewingProfilesOnboardingValue_Continue) || (userInputValue.integerValue == HUTVViewingProfilesOnboardingValue_DontSetup) || (userInputValue.integerValue == HUTVViewingProfilesOnboardingValue_SetupAll)"}];
  }

  v9 = [inputCopy objectForKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];
  if ([v9 BOOLValue])
  {
    home = [(HUTVViewingProfilesOnboardingFlow *)self home];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__HUTVViewingProfilesOnboardingFlow_processUserInput___block_invoke;
    v22[3] = &unk_277DB8E70;
    v22[4] = self;
    v22[5] = a2;
    [home enableMultiUserWithCompletionHandler:v22];
  }

  if ([v6 integerValue] == 1)
  {
    v11 = [HUTVViewingProfilesCustomizeViewController alloc];
    home2 = [(HUTVViewingProfilesOnboardingFlow *)self home];
    v13 = [(HUTVViewingProfilesCustomizeViewController *)v11 initWithHome:home2];
  }

  else
  {
    if ([v6 integerValue] != 2 && objc_msgSend(v6, "integerValue") != 3 && objc_msgSend(v6, "integerValue"))
    {
      v13 = 0;
      goto LABEL_21;
    }

    v14 = objc_alloc(MEMORY[0x277D14C98]);
    home3 = [(HUTVViewingProfilesOnboardingFlow *)self home];
    home4 = [(HUTVViewingProfilesOnboardingFlow *)self home];
    currentUser = [home4 currentUser];
    home2 = [v14 initWithHome:home3 user:currentUser nameStyle:0];

    if ([home2 hasDismissedTVViewingProfilesOnboarding])
    {
      [MEMORY[0x277CCABB0] numberWithBool:1];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "integerValue") != 3}];
    }
    v18 = ;
    [inputCopy setObject:v18 forKeyedSubscript:@"HUHomeFeatureOnboardingKey_TVViewingProfiles_DismissReminderBanner"];

    [inputCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_TVViewingProfiles_FinishedOnboarding"];
    onboardingFuture = [(HUTVViewingProfilesOnboardingFlow *)self onboardingFuture];
    [onboardingFuture finishWithNoResult];

    v13 = 0;
  }

LABEL_21:

  return v13;
}

void __54__HUTVViewingProfilesOnboardingFlow_processUserInput___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: enabled Multi User in HomeKit (Error:%@)", &v7, 0x20u);
  }
}

+ (id)needsOnboardingForHome:(id)home options:(id)options
{
  homeCopy = home;
  optionsCopy = options;
  hf_tvViewingProfilesAccessories = [homeCopy hf_tvViewingProfilesAccessories];
  v10 = [hf_tvViewingProfilesAccessories count];

  if (v10)
  {
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277D2C900];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__HUTVViewingProfilesOnboardingFlow_needsOnboardingForHome_options___block_invoke;
    v14[3] = &unk_277DBCAB8;
    objc_copyWeak(v17, &location);
    v15 = homeCopy;
    v16 = optionsCopy;
    v17[1] = a2;
    v12 = [v11 futureWithBlock:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return v12;
}

void __68__HUTVViewingProfilesOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) hf_hasAppleTVs];
  objc_opt_class();
  v6 = [*(a1 + 40) objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v24 = v8;
  v9 = [v8 BOOLValue];
  v10 = objc_alloc(MEMORY[0x277D14C98]);
  v11 = *(a1 + 32);
  v12 = [v11 currentUser];
  v13 = [v10 initWithHome:v11 user:v12 nameStyle:0];

  v14 = [v13 hasDismissedTVViewingProfilesOnboarding];
  v15 = v14;
  v16 = v5 & (v9 | v14 ^ 1u);
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(*(a1 + 56));
    [*(a1 + 32) currentUser];
    v23 = v3;
    v20 = v19 = WeakRetained;
    v21 = *(a1 + 32);
    *buf = 138414082;
    v26 = v19;
    v27 = 2112;
    v28 = v18;
    v29 = 1024;
    v30 = v16;
    v31 = 2112;
    v32 = v20;
    v33 = 2112;
    v34 = v21;
    v35 = 1024;
    v36 = v5;
    v37 = 1024;
    v38 = v15 & 1;
    v39 = 1024;
    v40 = (v9 & 1) == 0;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: ---> %{BOOL}d <--- because: user(%@) in home(%@):\n\t\thasAppleTVs = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\trespectPriorDismissal = %{BOOL}d", buf, 0x42u);

    WeakRetained = v19;
    v3 = v23;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v3 finishWithResult:v22];
}

@end