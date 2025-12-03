@interface HUOwnerMustUpgradeOnboardingFlow
- (HUOwnerMustUpgradeOnboardingFlow)initWithUpgradeRequirements:(unint64_t)requirements home:(id)home;
- (id)processUserInput:(id)input;
@end

@implementation HUOwnerMustUpgradeOnboardingFlow

- (HUOwnerMustUpgradeOnboardingFlow)initWithUpgradeRequirements:(unint64_t)requirements home:(id)home
{
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = HUOwnerMustUpgradeOnboardingFlow;
  v8 = [(HUOwnerMustUpgradeOnboardingFlow *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:homeCopy options:MEMORY[0x277CBEC10]];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__HUOwnerMustUpgradeOnboardingFlow_initWithUpgradeRequirements_home___block_invoke;
    v14[3] = &unk_277DB75D8;
    objc_copyWeak(v15, &location);
    v15[1] = requirements;
    v11 = [v10 flatMap:v14];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v11;

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __69__HUOwnerMustUpgradeOnboardingFlow_initWithUpgradeRequirements_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HUOwnerMustUpgradeOnboardingFlow_initWithUpgradeRequirements_home___block_invoke_2;
  v9[3] = &unk_277DB75B0;
  objc_copyWeak(v11, (a1 + 32));
  v5 = v3;
  v6 = *(a1 + 40);
  v10 = v5;
  v11[1] = v6;
  v7 = [v4 futureWithBlock:v9];

  objc_destroyWeak(v11);

  return v7;
}

void __69__HUOwnerMustUpgradeOnboardingFlow_initWithUpgradeRequirements_home___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [[HUOwnerMustUpgradeViewController alloc] initWithUpgradeRequirements:*(a1 + 48)];
    [WeakRetained setInitialViewController:v4];
  }

  else
  {
    [v5 finishWithNoResult];
  }
}

- (id)processUserInput:(id)input
{
  v16 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", &v10, 0x20u);
  }

  onboardingFuture = [(HUOwnerMustUpgradeOnboardingFlow *)self onboardingFuture];
  [onboardingFuture finishWithNoResult];

  return 0;
}

@end