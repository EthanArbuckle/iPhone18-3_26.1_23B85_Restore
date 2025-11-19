@interface HUPersonalRequestsOnboardingFlow
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HUPersonalRequestsOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
@end

@implementation HUPersonalRequestsOnboardingFlow

- (HUPersonalRequestsOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HUPersonalRequestsOnboardingFlow;
  v8 = [(HUPersonalRequestsOnboardingFlow *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:v7 options:v6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__HUPersonalRequestsOnboardingFlow_initWithUsageOptions_home___block_invoke;
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

id __62__HUPersonalRequestsOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HUPersonalRequestsOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB9210;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

void __62__HUPersonalRequestsOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [HUPersonalRequestsSetupViewController alloc];
    v5 = [WeakRetained home];
    v6 = [(HUPersonalRequestsSetupViewController *)v4 initWithHome:v5];
    [WeakRetained setInitialViewController:v6];
  }

  else
  {
    [v7 finishWithNoResult];
  }
}

- (id)processUserInput:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HUPersonalRequestsOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", &v14, 0x20u);
  }

  if ([v6 integerValue] == 1)
  {
    v9 = [HUPersonalRequestsCustomizeViewController alloc];
    v10 = [v5 objectForKeyedSubscript:@"HUPersonalRequestsOnboardingKey_FMFDevice"];
    v11 = [(HUPersonalRequestsOnboardingFlow *)self home];
    v12 = [(HUPersonalRequestsCustomizeViewController *)v9 initWithLocationDevice:v10 home:v11];
  }

  else
  {
    if ([v6 integerValue] != 2 && objc_msgSend(v6, "integerValue") != 3 && objc_msgSend(v6, "integerValue"))
    {
      v12 = 0;
      goto LABEL_11;
    }

    v10 = [(HUPersonalRequestsOnboardingFlow *)self onboardingFuture];
    [v10 finishWithNoResult];
    v12 = 0;
  }

LABEL_11:

  return v12;
}

+ (id)needsOnboardingForHome:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro"))
  {
    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  else
  {
    objc_initWeak(&location, a1);
    v10 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__HUPersonalRequestsOnboardingFlow_needsOnboardingForHome_options___block_invoke;
    v12[3] = &unk_277DBCAB8;
    objc_copyWeak(v15, &location);
    v13 = v7;
    v14 = v8;
    v15[1] = a2;
    v9 = [v10 futureWithBlock:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __67__HUPersonalRequestsOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) hf_hasHomePods];
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

  v9 = [v8 BOOLValue];
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v10 = [*(a1 + 32) accessories];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __67__HUPersonalRequestsOnboardingFlow_needsOnboardingForHome_options___block_invoke_2;
    v36[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
    v36[4] = *(a1 + 56);
    v11 = [v10 na_any:v36];

    if (v11)
    {
      v12 = [MEMORY[0x277D14640] sharedHandler];
      v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:50];
      [v12 handleError:v13 operationType:*MEMORY[0x277D13C50] options:0 retryBlock:0 cancelBlock:0];
    }
  }

  v35 = v5;
  if (v5)
  {
    v14 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(*(a1 + 56));
      v17 = [v14 count];
      *buf = 138413058;
      v38 = WeakRetained;
      v39 = 2112;
      v40 = v16;
      v41 = 2048;
      *v42 = v17;
      *&v42[8] = 2112;
      *&v42[10] = v14;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ (%lu) supported voice recognition languages %@", buf, 0x2Au);
    }

    if (v14)
    {
      v5 = v9;
      v18 = WeakRetained;
      v19 = objc_alloc(MEMORY[0x277D14C98]);
      v20 = *(a1 + 32);
      v21 = [v20 currentUser];
      v22 = [v19 initWithHome:v20 user:v21 nameStyle:0];

      v23 = [v22 hasDismissedVoiceProfileOnboarding];
      v24 = (v23 & 1) == 0 && [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:v14];
      v9 = v5;
      LOBYTE(v5) = v5 | v24;

      WeakRetained = v18;
    }

    else
    {
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v38 = v33;
        _os_log_error_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", buf, 0xCu);
      }

      v24 = 0;
      v23 = 0;
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    NSStringFromSelector(*(a1 + 56));
    v27 = v34 = WeakRetained;
    v28 = [*(a1 + 32) currentUser];
    v29 = v9;
    v30 = v28;
    v31 = *(a1 + 32);
    *buf = 138414338;
    v38 = v34;
    v39 = 2112;
    v40 = v27;
    v41 = 1024;
    *v42 = v5 & 1;
    *&v42[4] = 2112;
    *&v42[6] = v28;
    *&v42[14] = 2112;
    *&v42[16] = v31;
    v43 = 1024;
    v44 = v35;
    v45 = 1024;
    v46 = v24;
    v47 = 1024;
    v48 = v23;
    v49 = 1024;
    v50 = v29;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@: ---> Can show?: %{BOOL}d <--- because: user(%@) in home(%@):\n\t\thasHomePods = %{BOOL}d\n\t\thasHomePodOnSupportedLanguage = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\tonboardingFromUserInput = %{BOOL}d", buf, 0x48u);

    WeakRetained = v34;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithBool:v5 & 1];
  [v3 finishWithResult:v32];
}

uint64_t __67__HUPersonalRequestsOnboardingFlow_needsOnboardingForHome_options___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 category];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 category];
    v7 = [v6 categoryType];
    if (v7)
    {
      v8 = v7;
      v9 = [v3 category];
      v10 = [v9 categoryType];
      v11 = [v10 length];

      if (v11)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15 = NSStringFromSelector(*(a1 + 32));
    v16 = 138412546;
    v17 = v15;
    v18 = 2112;
    v19 = v3;
    _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@ FOUND ACCESSORY WITH MISSING CATEGORY: %@ will fail hasHomePod checks if this is really a HomePod & it is the only one in the house.", &v16, 0x16u);
  }

  v12 = 1;
LABEL_9:

  return v12;
}

@end