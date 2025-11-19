@interface HUSwitchHomesWelcomeOnboardingFlow
- (HUSwitchHomesWelcomeOnboardingFlow)initWithHome:(id)a3;
- (id)processUserInput:(id)a3;
@end

@implementation HUSwitchHomesWelcomeOnboardingFlow

- (HUSwitchHomesWelcomeOnboardingFlow)initWithHome:(id)a3
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = HUSwitchHomesWelcomeOnboardingFlow;
  v7 = [(HUSwitchHomesWelcomeOnboardingFlow *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_home, a3);
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    readyFuture = v8->_readyFuture;
    v8->_readyFuture = v9;

    objc_initWeak(&location, v8);
    v11 = [HUSwitchHomesWelcomeOnboardingFlowUtilities currentUserHasUnfinishedFeatureOnboardingForHome:v8->_home];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__HUSwitchHomesWelcomeOnboardingFlow_initWithHome___block_invoke;
    v15[3] = &unk_277DB75D8;
    objc_copyWeak(v16, &location);
    v16[1] = a2;
    v12 = [v11 flatMap:v15];
    onboardingFuture = v8->_onboardingFuture;
    v8->_onboardingFuture = v12;

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __51__HUSwitchHomesWelcomeOnboardingFlow_initWithHome___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((HFForceSwitchHomeWelcomeOnboarding() & 1) != 0 || [v3 BOOLValue])
  {
    v5 = [HUSwitchHomesWelcomeViewController alloc];
    v6 = [WeakRetained home];
    v7 = [(HUSwitchHomesWelcomeViewController *)v5 initWithHome:v6];
    [WeakRetained setInitialViewController:v7];

    v8 = [WeakRetained readyFuture];
    [v8 finishWithResult:MEMORY[0x277CBEC38]];

    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v14 = 138412546;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Onboarding not required", &v14, 0x16u);
    }

    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v12 = v9;

  return v12;
}

- (id)processUserInput:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v18 = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", &v18, 0x20u);
  }

  v8 = [v5 objectForKeyedSubscript:@"HUSwitchHomesWelcomeOnboardingKey_UserInput"];
  if ([v8 integerValue])
  {
    if ([v8 integerValue] == 1)
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = NSStringFromSelector(a2);
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ User Switched Homes - Aborting Current Onboarding", &v18, 0x16u);
      }

      [(HUSwitchHomesWelcomeOnboardingFlow *)self setShouldAbortAllOnboarding:1];
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D14C98]);
    home = self->_home;
    v13 = [(HMHome *)home currentUser];
    v14 = [v11 initWithHome:home user:v13 nameStyle:0];

    v15 = [v14 setCompletedNonOwnerUserHomeSwitchingUI:1];
  }

  v16 = [(HUSwitchHomesWelcomeOnboardingFlow *)self onboardingFuture];
  [v16 finishWithNoResult];

  return 0;
}

@end