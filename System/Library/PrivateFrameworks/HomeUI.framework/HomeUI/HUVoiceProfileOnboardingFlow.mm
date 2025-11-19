@interface HUVoiceProfileOnboardingFlow
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HUVoiceProfileOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)processUserInput:(id)a3;
- (void)checkIfStillRequiredFromCurrentResults:(id)a3;
@end

@implementation HUVoiceProfileOnboardingFlow

- (HUVoiceProfileOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HUVoiceProfileOnboardingFlow;
  v9 = [(HUVoiceProfileOnboardingFlow *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    readyFuture = v10->_readyFuture;
    v10->_readyFuture = v11;

    objc_initWeak(&location, v10);
    v13 = [objc_opt_class() needsOnboardingForHome:v8 options:v7];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v16[3] = &unk_277DBCA48;
    v17 = v10;
    v18[1] = a2;
    objc_copyWeak(v18, &location);
    v14 = [v13 addSuccessBlock:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = MEMORY[0x277D2C900];
  if (v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
    v11[3] = &unk_277DBC9F8;
    v13 = *(a1 + 48);
    v12 = *(a1 + 32);
    v6 = [v5 futureWithBlock:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_6;
    v9[3] = &unk_277DB9CF0;
    objc_copyWeak(v10, (a1 + 40));
    v10[1] = *(a1 + 48);
    v7 = [v6 addCompletionBlock:v9];
    objc_destroyWeak(v10);
  }

  else
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
    [*(a1 + 32) setOnboardingFuture:v8];
  }
}

void __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (!v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412290;
      v19 = v15;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", buf, 0xCu);
    }
  }

  v6 = [HUHomeFeatureOnboardingUtilities isDeviceUsingASupportedVoiceRecognitionSiriLanguage:v4 shouldFallbackToBestSupportedLanguage:0];
  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  v8 = [v7 assistantIsEnabled];

  if (!v6 || v8 == 0)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = NSStringFromSelector(*(a1 + 40));
      *buf = 138413058;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 1024;
      v23 = v6;
      v24 = 1024;
      v25 = v8;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: This iOS device is on a supported voice recognition language?: %{BOOL}d, & Siri is enabled?: %{BOOL}d", buf, 0x22u);
    }

    [v3 finishWithResult:MEMORY[0x277CBEC28]];
  }

  else
  {
    v13 = [HUHomeFeatureOnboardingUtilities checkVoiceProfileAvailabiltyForLanguage:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_3;
    v16[3] = &unk_277DB8E48;
    v17 = v3;
    v14 = [v13 addSuccessBlock:v16];
  }
}

void __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412802;
      v30 = WeakRetained;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Hey Siri Voice Profile Check FAILED with %@, will attempt to get Voice Profile from user", buf, 0x20u);
    }

    v10 = MEMORY[0x277D2C900];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_7;
    v27[3] = &unk_277DBCA20;
    objc_copyWeak(&v28, (a1 + 32));
    v11 = [v10 futureWithBlock:v27];
    [WeakRetained setOnboardingFuture:v11];

    objc_destroyWeak(&v28);
  }

  else
  {
    v12 = [MEMORY[0x277CEF368] sharedPreferences];
    v13 = [v12 languageCode];
    [WeakRetained setInitialCheckedLanguage:v13];

    objc_opt_class();
    v14 = v5;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [WeakRetained setInitialCheckedResult:{objc_msgSend(v16, "BOOLValue")}];
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(*(a1 + 40));
      v19 = [WeakRetained initialCheckedLanguage];
      *buf = 138413058;
      v30 = WeakRetained;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 1024;
      v36 = [WeakRetained initialCheckedResult];
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ At init time, 'Hey Siri' Voice Profile was found for current language (%@)?: %{BOOL}d", buf, 0x26u);
    }

    v20 = MEMORY[0x277D2C900];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_10;
    v25 = &unk_277DBCA20;
    objc_copyWeak(&v26, (a1 + 32));
    v21 = [v20 futureWithBlock:&v22];
    [WeakRetained setOnboardingFuture:{v21, v22, v23, v24, v25}];

    objc_destroyWeak(&v26);
  }
}

void __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [HUVoiceProfileSetupViewController alloc];
  v2 = [WeakRetained home];
  v3 = [(HUVoiceProfileSetupViewController *)v1 initWithHome:v2];
  [WeakRetained setInitialViewController:v3];

  v4 = [WeakRetained readyFuture];
  [v4 finishWithResult:MEMORY[0x277CBEC38]];
}

void __58__HUVoiceProfileOnboardingFlow_initWithUsageOptions_home___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [HUVoiceProfileSetupViewController alloc];
  v2 = [WeakRetained home];
  v3 = [(HUVoiceProfileSetupViewController *)v1 initWithHome:v2];
  [WeakRetained setInitialViewController:v3];

  v4 = [WeakRetained readyFuture];
  [v4 finishWithResult:MEMORY[0x277CBEC38]];
}

- (void)checkIfStillRequiredFromCurrentResults:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HULanguageOnboardingKey_PersonalDeviceSiriLanguageChanged_HasVoiceProfile"];
  if (!v6)
  {
    v9 = [v5 objectForKeyedSubscript:@"HULanguageOnboardingKey_PersonalDeviceSiriLanguageChanged_MissingVoiceProfile"];
    if (v9)
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromSelector(a2);
        v17 = 138413058;
        v18 = self;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = self;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ 'Hey Siri' Voice Profile for %@ needed, will run %@", &v17, 0x2Au);
LABEL_14:
      }
    }

    else
    {
      v12 = [(HUVoiceProfileOnboardingFlow *)self initialCheckedResult];
      v10 = HFLogForCategory();
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v13)
        {
          v14 = NSStringFromSelector(a2);
          v15 = [(HUVoiceProfileOnboardingFlow *)self initialCheckedLanguage];
          v17 = 138413058;
          v18 = self;
          v19 = 2112;
          v20 = v14;
          v21 = 2112;
          v22 = v15;
          v23 = 2112;
          v24 = self;
          _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ As calculated at init time, the 'Hey Siri' Voice Profile for %@ already exists, will skip %@", &v17, 0x2Au);
        }

        v10 = [(HUVoiceProfileOnboardingFlow *)self onboardingFuture];
        [v10 finishWithNoResult];
        goto LABEL_15;
      }

      if (v13)
      {
        v11 = NSStringFromSelector(a2);
        v16 = [(HUVoiceProfileOnboardingFlow *)self initialCheckedLanguage];
        v17 = 138413058;
        v18 = self;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v16;
        v23 = 2112;
        v24 = self;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ As calculated at init time, the 'Hey Siri' Voice Profile for %@ does not exist, will run %@", &v17, 0x2Au);

        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v17 = 138413058;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = self;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ 'Hey Siri' Voice Profile for %@ already exists, will skip %@", &v17, 0x2Au);
  }

  v9 = [(HUVoiceProfileOnboardingFlow *)self onboardingFuture];
  [v9 finishWithNoResult];
LABEL_16:
}

- (id)processUserInput:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HUVoiceProfileOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] && objc_msgSend(v6, "integerValue") != 1)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HUVoiceProfileOnboardingFlow.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HUVoiceProfileOnboardingValue_SetupHeySiri_Completed) || (userInputValue.integerValue == HUVoiceProfileOnboardingValue_SetupHeySiri_Cancelled)"}];
  }

  v9 = objc_alloc(MEMORY[0x277D14C98]);
  v10 = [(HUVoiceProfileOnboardingFlow *)self home];
  v11 = [(HUVoiceProfileOnboardingFlow *)self home];
  v12 = [v11 currentUser];
  v13 = [v9 initWithHome:v10 user:v12 nameStyle:0];

  if ([v13 hasDismissedVoiceProfileOnboarding])
  {
    [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "integerValue") == 0}];
  }
  v14 = ;
  [v5 setObject:v14 forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_DismissReminderBanner"];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_FinishedOnboarding"];
  -[HUVoiceProfileOnboardingFlow setShouldAbortThisOnboardingFlowGroup:](self, "setShouldAbortThisOnboardingFlowGroup:", [v6 integerValue] == 1);
  v15 = [(HUVoiceProfileOnboardingFlow *)self onboardingFuture];
  [v15 finishWithNoResult];

  return 0;
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
    v12[2] = __63__HUVoiceProfileOnboardingFlow_needsOnboardingForHome_options___block_invoke;
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

void __63__HUVoiceProfileOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) hf_hasHomePods];
  v6 = [*(a1 + 32) hf_hasRMVCapableAppleTV];
  objc_opt_class();
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v43 = [v9 BOOLValue];
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v10 = [*(a1 + 32) accessories];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __63__HUVoiceProfileOnboardingFlow_needsOnboardingForHome_options___block_invoke_2;
    v53[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
    v53[4] = *(a1 + 56);
    v11 = [v10 na_any:v53];

    if (v11)
    {
      v12 = [MEMORY[0x277D14640] sharedHandler];
      v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:50];
      [v12 handleError:v13 operationType:*MEMORY[0x277D13C50] options:0 retryBlock:0 cancelBlock:0];
    }
  }

  if ((v5 | v6))
  {
    v14 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(*(a1 + 56));
      v17 = [v14 count];
      *buf = 138413058;
      v55 = WeakRetained;
      v56 = 2112;
      v57 = v16;
      v58 = 2048;
      *v59 = v17;
      *&v59[8] = 2112;
      *&v59[10] = v14;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ (%lu) supported voice recognition languages %@", buf, 0x2Au);
    }

    v42 = WeakRetained;
    v18 = v3;

    if (v14)
    {
      v19 = objc_alloc(MEMORY[0x277D14C98]);
      v20 = *(a1 + 32);
      v21 = [v20 currentUser];
      v22 = [v19 initWithHome:v20 user:v21 nameStyle:0];

      v23 = [v22 hasDismissedVoiceProfileOnboarding];
      if (v23)
      {
        v24 = 0;
        v25 = 0;
      }

      else if (v6 & 1 | ((v5 & 1) == 0))
      {
        v24 = 0;
        v25 = v6;
      }

      else
      {
        v24 = [HUHomeFeatureOnboardingUtilities home:*(a1 + 32) hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:v14];
        v25 = v24;
      }

      v26 = v43 | v25;
    }

    else
    {
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v55 = v41;
        _os_log_error_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", buf, 0xCu);
      }

      v24 = 0;
      v23 = 0;
      v26 = 0;
    }

    v3 = v18;
    WeakRetained = v42;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v26 = 0;
  }

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v55 = WeakRetained;
    v56 = 2112;
    v57 = v28;
    v58 = 1024;
    *v59 = v6;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@: hasRMVCapableAppleTV = %{BOOL}d", buf, 0x1Cu);
  }

  v29 = [MEMORY[0x277D146E8] sharedDispatcher];
  v30 = [v29 homeManager];
  v31 = [v30 hasOptedToHH2];

  v32 = HFLogForCategory();
  v33 = v32;
  if ((v26 & v31 & 1) != 0 && v5)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v40 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v55 = WeakRetained;
      v56 = 2112;
      v57 = v40;
      _os_log_debug_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEBUG, "%@:%@: [HH2] Will check for atLeastOneHomePodHasLanguageSettingsForHomeFuture", buf, 0x16u);
    }

    v34 = [HUHomeFeatureOnboardingUtilities atLeastOneHomePodHasLanguageSettingsForHomeFuture:*(a1 + 32)];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __63__HUVoiceProfileOnboardingFlow_needsOnboardingForHome_options___block_invoke_31;
    v44[3] = &unk_277DBCA90;
    v35 = *(a1 + 56);
    v44[4] = WeakRetained;
    v47 = v35;
    v48 = 1;
    v45 = *(a1 + 32);
    v49 = v5;
    v50 = v24;
    v51 = v23;
    v52 = v43;
    v46 = v3;
    v36 = [v34 addCompletionBlock:v44];
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v37 = NSStringFromSelector(*(a1 + 56));
      v38 = [*(a1 + 32) currentUser];
      v39 = *(a1 + 32);
      *buf = 138414338;
      v55 = WeakRetained;
      v56 = 2112;
      v57 = v37;
      v58 = 1024;
      *v59 = v26 & 1;
      *&v59[4] = 2112;
      *&v59[6] = v38;
      *&v59[14] = 2112;
      *&v59[16] = v39;
      v60 = 1024;
      v61 = v5;
      v62 = 1024;
      v63 = v24;
      v64 = 1024;
      v65 = v23;
      v66 = 1024;
      v67 = v43;
      _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@: ---> Can show?: %{BOOL}d <--- because: user(%@) in home(%@):\n\t\thasHomePods = %{BOOL}d\n\t\thasHomePodOnSupportedLanguage = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\tonboardingFromUserInput = %{BOOL}d", buf, 0x48u);
    }

    v34 = [MEMORY[0x277CCABB0] numberWithBool:v26 & 1];
    [v3 finishWithResult:v34];
  }
}

uint64_t __63__HUVoiceProfileOnboardingFlow_needsOnboardingForHome_options___block_invoke_2(uint64_t a1, void *a2)
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

void __63__HUVoiceProfileOnboardingFlow_needsOnboardingForHome_options___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      *v26 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@:%@: atLeastOneHomePodHasLanguageSettingsForHomeFuture completed with error: %@", buf, 0x20u);
    }
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 56));
    v10 = *(a1 + 64);
    v11 = [*(a1 + 40) currentUser];
    v12 = *(a1 + 40);
    v13 = *(a1 + 65);
    v14 = *(a1 + 66);
    v18 = *(a1 + 67);
    v19 = *(a1 + 68);
    v15 = [v5 BOOLValue];
    *buf = 138414594;
    v22 = v20;
    v23 = 2112;
    v24 = v9;
    v25 = 1024;
    *v26 = v10;
    *&v26[4] = 2112;
    *&v26[6] = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    v31 = 1024;
    v32 = v14;
    v33 = 1024;
    v34 = v18;
    v35 = 1024;
    v36 = v19;
    v37 = 1024;
    v38 = v15;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: ---> Can show?: %{BOOL}d <--- because: user(%@) in home(%@):\n\t\thasHomePods = %{BOOL}d\n\t\thasHomePodOnSupportedLanguage = %{BOOL}d\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\tonboardingFromUserInput = %{BOOL}d\n\t\tatLeastOneHomePodHasLanguageSettings = %{BOOL}d", buf, 0x4Eu);
  }

  [*(a1 + 48) finishWithResult:v5];
}

@end