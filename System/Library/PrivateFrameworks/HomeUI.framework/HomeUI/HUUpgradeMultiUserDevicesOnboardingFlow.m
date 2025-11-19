@interface HUUpgradeMultiUserDevicesOnboardingFlow
- (HUUpgradeMultiUserDevicesOnboardingFlow)initWithUpgradeRequirements:(unint64_t)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
@end

@implementation HUUpgradeMultiUserDevicesOnboardingFlow

- (HUUpgradeMultiUserDevicesOnboardingFlow)initWithUpgradeRequirements:(unint64_t)a3 home:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HUUpgradeMultiUserDevicesOnboardingFlow;
  v8 = [(HUUpgradeMultiUserDevicesOnboardingFlow *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:v7 options:MEMORY[0x277CBEC10]];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__HUUpgradeMultiUserDevicesOnboardingFlow_initWithUpgradeRequirements_home___block_invoke;
    v14[3] = &unk_277DB75D8;
    objc_copyWeak(v15, &location);
    v15[1] = a3;
    v11 = [v10 flatMap:v14];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v11;

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __76__HUUpgradeMultiUserDevicesOnboardingFlow_initWithUpgradeRequirements_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HUUpgradeMultiUserDevicesOnboardingFlow_initWithUpgradeRequirements_home___block_invoke_2;
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

void __76__HUUpgradeMultiUserDevicesOnboardingFlow_initWithUpgradeRequirements_home___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [HUUpgradeMultiUserDevicesViewController alloc];
    v5 = *(a1 + 48);
    v6 = [WeakRetained home];
    v7 = [(HUUpgradeMultiUserDevicesViewController *)v4 initWithUpgradeRequirements:v5 home:v6];
    [WeakRetained setInitialViewController:v7];
  }

  else
  {
    [v8 finishWithNoResult];
  }
}

- (id)processUserInput:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", &v10, 0x20u);
  }

  v8 = [(HUUpgradeMultiUserDevicesOnboardingFlow *)self onboardingFuture];
  [v8 finishWithNoResult];

  return 0;
}

@end