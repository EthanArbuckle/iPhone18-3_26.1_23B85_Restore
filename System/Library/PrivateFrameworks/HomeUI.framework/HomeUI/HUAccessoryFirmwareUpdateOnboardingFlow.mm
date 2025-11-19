@interface HUAccessoryFirmwareUpdateOnboardingFlow
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HUAccessoryFirmwareUpdateOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
@end

@implementation HUAccessoryFirmwareUpdateOnboardingFlow

- (HUAccessoryFirmwareUpdateOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HUAccessoryFirmwareUpdateOnboardingFlow;
  v8 = [(HUAccessoryFirmwareUpdateOnboardingFlow *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:v7 options:v6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__HUAccessoryFirmwareUpdateOnboardingFlow_initWithUsageOptions_home___block_invoke;
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

id __69__HUAccessoryFirmwareUpdateOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HUAccessoryFirmwareUpdateOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB9210;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

void __69__HUAccessoryFirmwareUpdateOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [HUAccessoryFirmwareUpdateSetupViewController alloc];
    v5 = [WeakRetained home];
    v6 = [(HUAccessoryFirmwareUpdateSetupViewController *)v4 initWithHome:v5];
    [WeakRetained setInitialViewController:v6];
  }

  else
  {
    [v7 finishWithNoResult];
  }
}

- (id)processUserInput:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HUAccessoryFirmwareUpdateOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUAccessoryFirmwareUpdateOnboardingFlow.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUAccessoryFirmwareUpdateOnboardingValue_Setup) || (userInputValue.integerValue == HUAccessoryFirmwareUpdateOnboardingValue_DontSetup)"}];
  }

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_AccessoryFirmwareUpdate_FinishedOnboarding"];
  v9 = [(HUAccessoryFirmwareUpdateOnboardingFlow *)self onboardingFuture];
  [v9 finishWithNoResult];

  return 0;
}

+ (id)needsOnboardingForHome:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, a1);
  v9 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HUAccessoryFirmwareUpdateOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v14[3] = &unk_277DBCAB8;
  objc_copyWeak(v17, &location);
  v10 = v7;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  v17[1] = a2;
  v12 = [v9 futureWithBlock:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v12;
}

void __74__HUAccessoryFirmwareUpdateOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate];
  v6 = [*(a1 + 32) hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate];
  v7 = [*(a1 + 32) hf_currentUserIsOwner];
  v8 = objc_alloc(MEMORY[0x277D14C98]);
  v9 = *(a1 + 32);
  v10 = [v9 currentUser];
  v11 = [v8 initWithHome:v9 user:v10 nameStyle:0];

  v12 = [v11 hasDismissedAccessoryFirmwareUpdateOnboarding];
  v13 = [*(a1 + 40) objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];
  v14 = [v13 BOOLValue];

  v25 = v7;
  v26 = v6;
  if (v5 && v6 && v7 && ((v12 ^ 1 | v14) & 1) != 0)
  {
    updated = 1;
  }

  else
  {
    updated = HFForceAccessoryFirmwareUpdateOnboarding();
  }

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(*(a1 + 56));
    v24 = v12;
    v18 = v11;
    v19 = v5;
    v20 = v3;
    if (updated)
    {
      v21 = @"Can";
    }

    else
    {
      v21 = @"Cannot";
    }

    v22 = *(a1 + 32);
    *buf = 138414594;
    v28 = WeakRetained;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v21;
    v3 = v20;
    v33 = 2112;
    v34 = v22;
    v35 = 1024;
    v36 = v19;
    v11 = v18;
    v37 = 1024;
    v38 = v26;
    v39 = 1024;
    v40 = v25;
    v41 = 1024;
    v42 = v14 & 1;
    v43 = 1024;
    v44 = v24;
    v45 = 1024;
    v46 = HFForceAccessoryFirmwareUpdateOnboarding();
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ show because: home(%@):\n\t\thasCompatibleAccessories = %{BOOL}d\n\t\thasCapableResident = %{BOOL}d\n\t\tuserIsOwner = %{BOOL}d\n\t\tonboardingFromUserInput = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\tHFForceAccessoryFirmwareUpdate = %{BOOL}d", buf, 0x4Eu);
  }

  v23 = [MEMORY[0x277CCABB0] numberWithBool:updated];
  [v3 finishWithResult:v23];
}

@end