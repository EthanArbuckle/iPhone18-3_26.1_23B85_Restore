@interface HULanguageSetupOnboardingFlow
+ (id)needsOnboardingForHome:(id)home options:(id)options;
- (HULanguageSetupOnboardingFlow)initWithUsageOptions:(id)options home:(id)home;
- (NSString)description;
- (id)_determineNextViewControllerWithPriorResults:(id)results;
- (id)processUserInput:(id)input;
@end

@implementation HULanguageSetupOnboardingFlow

- (HULanguageSetupOnboardingFlow)initWithUsageOptions:(id)options home:(id)home
{
  optionsCopy = options;
  homeCopy = home;
  v20.receiver = self;
  v20.super_class = HULanguageSetupOnboardingFlow;
  v9 = [(HULanguageSetupOnboardingFlow *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    v10->_languageOnboardingFlowType = 0;
    objc_storeStrong(&v10->_usageOptions, options);
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    readyFuture = v10->_readyFuture;
    v10->_readyFuture = v11;

    objc_initWeak(&location, v10);
    v13 = [objc_opt_class() needsOnboardingForHome:homeCopy options:optionsCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__HULanguageSetupOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v17[3] = &unk_277DB9238;
    objc_copyWeak(&v18, &location);
    v14 = [v13 flatMap:v17];
    onboardingFuture = v10->_onboardingFuture;
    v10->_onboardingFuture = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

id __59__HULanguageSetupOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HULanguageSetupOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB9210;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

void __59__HULanguageSetupOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [WeakRetained _determineNextViewControllerWithPriorResults:0];
    [WeakRetained setInitialViewController:v4];

    v5 = [WeakRetained readyFuture];
    [v5 finishWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    [v6 finishWithNoResult];
  }
}

- (id)_determineNextViewControllerWithPriorResults:(id)results
{
  v76 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  languageOnboardingFlowType = [(HULanguageSetupOnboardingFlow *)self languageOnboardingFlowType];
  if (languageOnboardingFlowType != 1)
  {
    if (!languageOnboardingFlowType)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy12 = self;
        v68 = 2112;
        v69 = v8;
        v70 = 2112;
        v71 = resultsCopy;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Determining next Assistant Device Language onboarding view controller with results %@ ", buf, 0x20u);
      }

      if (resultsCopy)
      {
        v9 = [resultsCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_SupportedLanguageInfo"];
        v10 = [resultsCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_LanguageMismatchedHomeAssistantDevices"];
        v11 = HFLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromSelector(a2);
          *buf = 138412546;
          selfCopy12 = self;
          v68 = 2112;
          v69 = v12;
          _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@: Starting Home Assistant Device Language Configuration view", buf, 0x16u);
        }

        v13 = [[HUHomeAssistantDeviceLanguageConfigurationViewController alloc] initWithSupportedVoiceRecognitionLanguages:v9 languageMismatchedHomeAssistantDevices:v10];
        goto LABEL_60;
      }

      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "Configuring Assistant Device Setup View", buf, 2u);
      }

      v22 = [HUHomeAssistantDeviceLanguageSetupViewController alloc];
      home = [(HULanguageSetupOnboardingFlow *)self home];
      v20 = [(HUHomeAssistantDeviceLanguageSetupViewController *)v22 initWithHome:home];
LABEL_20:
      v13 = v20;

      goto LABEL_61;
    }

    NSLog(&cfstr_UnexpectedLang.isa, [(HULanguageSetupOnboardingFlow *)self languageOnboardingFlowType]);
LABEL_16:
    v13 = 0;
    goto LABEL_61;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy12 = self;
    v68 = 2112;
    v69 = v15;
    v70 = 2112;
    v71 = resultsCopy;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Determining next Personal Identity Device Language onboarding view controller with results %@ ", buf, 0x20u);
  }

  v16 = HFLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (resultsCopy)
  {
    if (v17)
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy12 = self;
      v68 = 2112;
      v69 = v18;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: Now starting Personal Identity Device Language Configuration screen", buf, 0x16u);
    }

    home = [resultsCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_MediaProfileAndLanguageInfo"];
    v20 = [[HUHomePersonalIdentityDeviceConfigurationViewController alloc] initWithMediaProfileAndLanguageInfo:home];
    goto LABEL_20;
  }

  if (v17)
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Configuring Personal Identity Device Setup View", buf, 2u);
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (!languageCode)
  {
    v38 = HFLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy12 = self;
      v68 = 2112;
      v69 = v39;
      _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "%@:%@ There is NO Siri language on this device, skipping personal device onboarding, will train & set up Siri voice during voice profile onboarding instead...", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v9 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (v9)
  {
    home2 = [(HULanguageSetupOnboardingFlow *)self home];
    hf_hasHomePods = [home2 hf_hasHomePods];

    if (hf_hasHomePods)
    {
      home3 = [(HULanguageSetupOnboardingFlow *)self home];
      v10 = [HUHomeFeatureOnboardingUtilities home:home3 createMultiUserLanguageToHomePodsMapping:v9];

      v28 = HFLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = NSStringFromSelector(a2);
        v30 = [v10 count];
        *buf = 138413058;
        selfCopy12 = self;
        v68 = 2112;
        v69 = v29;
        v70 = 2112;
        v71 = v10;
        v72 = 2048;
        v73 = v30;
        _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@: HomePods on Supported Voice Recognition Languages %@ (%lu)", buf, 0x2Au);
      }

      if ([v10 count])
      {
        v31 = HFLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "Starting Personal Identity Device Setup View", buf, 2u);
        }

        assistantDeviceIntendedRecognitionLanguage4 = [HUHomeFeatureOnboardingUtilities createPersonalIdentityDeviceLanguageMismatchList:v10];
        mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
        languageCode2 = [mEMORY[0x277CEF368]2 languageCode];

        allKeys = [v10 allKeys];
        v65 = languageCode2;
        v36 = allKeys;
        if ([v9 containsObject:languageCode2])
        {
          v37 = [allKeys containsObject:languageCode2];
        }

        else
        {
          v37 = 0;
        }

        v52 = HFLogForCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = NSStringFromSelector(a2);
          v54 = [assistantDeviceIntendedRecognitionLanguage4 count];
          *buf = 138413314;
          selfCopy12 = self;
          v68 = 2112;
          v69 = v53;
          v70 = 2112;
          v71 = assistantDeviceIntendedRecognitionLanguage4;
          v72 = 2048;
          v73 = v54;
          v74 = 1024;
          v75 = v37;
          _os_log_impl(&dword_20CEB6000, v52, OS_LOG_TYPE_DEFAULT, "%@:%@: List of Personal Identity Device Mismatches %@ (%lu) - hasAtLeastOneHomePodSupportingPersonalIdentityDeviceLanguage %{BOOL}d", buf, 0x30u);
        }

        v55 = ([assistantDeviceIntendedRecognitionLanguage4 count] == 0) | v37;
        home4 = HFLogForCategory();
        v57 = os_log_type_enabled(home4, OS_LOG_TYPE_DEFAULT);
        if (v55)
        {
          if (v57)
          {
            v58 = NSStringFromSelector(a2);
            *buf = 138412546;
            selfCopy12 = self;
            v68 = 2112;
            v69 = v58;
            _os_log_impl(&dword_20CEB6000, home4, OS_LOG_TYPE_DEFAULT, "%@:%@ all languages match - onboarding not required", buf, 0x16u);
          }

          v13 = 0;
        }

        else
        {
          if (v57)
          {
            v59 = NSStringFromSelector(a2);
            *buf = 138412546;
            selfCopy12 = self;
            v68 = 2112;
            v69 = v59;
            _os_log_impl(&dword_20CEB6000, home4, OS_LOG_TYPE_DEFAULT, "%@:%@: Now starting Personal Identity Device Language Setup screen", buf, 0x16u);
          }

          v60 = [HUHomePersonalIdentityDeviceLanguageSetupViewController alloc];
          home4 = [(HULanguageSetupOnboardingFlow *)self home];
          v13 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)v60 initWithHome:home4];
        }
      }

      else
      {
        assistantDeviceIntendedRecognitionLanguage = [(HULanguageSetupOnboardingFlow *)self assistantDeviceIntendedRecognitionLanguage];

        if (!assistantDeviceIntendedRecognitionLanguage)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HULanguageSetupOnboardingFlow.m" lineNumber:227 description:@"Attempting to run Personal Identity Device Language Setup with no HomePods in Supported Language & No Intended Language - this shouldn't happen."];
        }

        v46 = HFLogForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v62 = NSStringFromSelector(a2);
          assistantDeviceIntendedRecognitionLanguage2 = [(HULanguageSetupOnboardingFlow *)self assistantDeviceIntendedRecognitionLanguage];
          *buf = 138412802;
          selfCopy12 = self;
          v68 = 2112;
          v69 = v62;
          v70 = 2112;
          v71 = assistantDeviceIntendedRecognitionLanguage2;
          _os_log_error_impl(&dword_20CEB6000, v46, OS_LOG_TYPE_ERROR, "%@:%@: No HomePods in a supported language, even after Home Assistant Device Language Setup - user intended: %@", buf, 0x20u);
        }

        v47 = HFLogForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = NSStringFromSelector(a2);
          assistantDeviceIntendedRecognitionLanguage3 = [(HULanguageSetupOnboardingFlow *)self assistantDeviceIntendedRecognitionLanguage];
          *buf = 138412802;
          selfCopy12 = self;
          v68 = 2112;
          v69 = v48;
          v70 = 2112;
          v71 = assistantDeviceIntendedRecognitionLanguage3;
          _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "%@:%@: Now starting Personal Identity Device Language Setup screen with override language %@", buf, 0x20u);
        }

        [(HULanguageSetupOnboardingFlow *)self setForceOnboardingFinishedForErrorRecovery:1];
        v50 = [HUHomePersonalIdentityDeviceLanguageSetupViewController alloc];
        home5 = [(HULanguageSetupOnboardingFlow *)self home];
        v13 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)v50 initWithHome:home5];

        assistantDeviceIntendedRecognitionLanguage4 = [(HULanguageSetupOnboardingFlow *)self assistantDeviceIntendedRecognitionLanguage];
        [(HUHomeAssistantDeviceLanguageConfigurationViewController *)v13 setOverrideTargetLanguage:assistantDeviceIntendedRecognitionLanguage4];
      }

      goto LABEL_60;
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v41 = NSStringFromSelector(a2);
      home6 = [(HULanguageSetupOnboardingFlow *)self home];
      hf_appleTVs = [home6 hf_appleTVs];
      v44 = [hf_appleTVs count];
      *buf = 138412802;
      selfCopy12 = self;
      v68 = 2112;
      v69 = v41;
      v70 = 2048;
      v71 = v44;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ There are NO HomePods in this Home BUT we have (%lu) AppleTVs, skipping personal device language mismatch flows.", buf, 0x20u);
    }
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy12 = v40;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", buf, 0xCu);
    }
  }

  v13 = 0;
LABEL_60:

LABEL_61:

  return v13;
}

- (NSString)description
{
  languageOnboardingFlowType = [(HULanguageSetupOnboardingFlow *)self languageOnboardingFlowType];
  v3 = @"Personal Identity Device";
  if (languageOnboardingFlowType != 1)
  {
    v3 = 0;
  }

  if (!languageOnboardingFlowType)
  {
    v3 = @"Home Assistant Device";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Voice Recognition LANGUAGE Setup (%@)", v3];
}

- (id)processUserInput:(id)input
{
  v44 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  languageOnboardingFlowType = [(HULanguageSetupOnboardingFlow *)self languageOnboardingFlowType];
  if (languageOnboardingFlowType == 1)
  {
    v7 = [inputCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput"];
    if ([v7 integerValue] != 3 && objc_msgSend(v7, "integerValue") != 5 && objc_msgSend(v7, "integerValue") != 4)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HULanguageSetupOnboardingFlow.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HULanguageOnboardingValue_SetupLanguage_PersonalDevice_Completed) || (userInputValue.integerValue == HULanguageOnboardingValue_SetupLanguage_PersonalDevice_Cancelled) || (userInputValue.integerValue == HULanguageOnboardingValue_SetupLanguage_PersonalDevice_Customize)"}];
      goto LABEL_44;
    }
  }

  else
  {
    if (languageOnboardingFlowType)
    {
      NSLog(&cfstr_UnexpectedLang.isa, [(HULanguageSetupOnboardingFlow *)self languageOnboardingFlowType]);
      v21 = 0;
      goto LABEL_40;
    }

    v7 = [inputCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput"];
    if ([v7 integerValue] && objc_msgSend(v7, "integerValue") != 2 && objc_msgSend(v7, "integerValue") != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HULanguageSetupOnboardingFlow.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HULanguageOnboardingValue_SetupLanguage_AssistantDevice_Completed) || (userInputValue.integerValue == HULanguageOnboardingValue_SetupLanguage_AssistantDevice_Cancelled) || (userInputValue.integerValue == HULanguageOnboardingValue_SetupLanguage_AssistantDevice_Customize)"}];
LABEL_44:
    }
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy4 = self;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  v11 = [inputCopy objectForKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];
  if ([v11 BOOLValue])
  {
    home = [(HULanguageSetupOnboardingFlow *)self home];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __50__HULanguageSetupOnboardingFlow_processUserInput___block_invoke;
    v37[3] = &unk_277DB8E70;
    v37[4] = self;
    v37[5] = a2;
    [home enableMultiUserWithCompletionHandler:v37];
  }

  integerValue = [v7 integerValue];
  if (integerValue > 2)
  {
    if (integerValue == 3)
    {
      if ([(HULanguageSetupOnboardingFlow *)self forceOnboardingFinishedForErrorRecovery])
      {
        v34 = MEMORY[0x277CBEC38];
        [inputCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_FinishedOnboarding"];
        [inputCopy setObject:v34 forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_DismissReminderBanner"];
      }

      goto LABEL_23;
    }

    if (integerValue != 4)
    {
      if (integerValue != 5)
      {
        goto LABEL_18;
      }

LABEL_22:
      [inputCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_FinishedOnboarding"];
      [(HULanguageSetupOnboardingFlow *)self setShouldAbortThisOnboardingFlowGroup:1];
      v14 = objc_alloc(MEMORY[0x277D14C98]);
      home2 = [(HULanguageSetupOnboardingFlow *)self home];
      home3 = [(HULanguageSetupOnboardingFlow *)self home];
      currentUser = [home3 currentUser];
      v18 = [v14 initWithHome:home2 user:currentUser nameStyle:0];

      v19 = [v18 setEnableIdentifyVoice:0];
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  switch(integerValue)
  {
    case 0:
      v24 = [inputCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_IntendedLanguage"];
      [(HULanguageSetupOnboardingFlow *)self setAssistantDeviceIntendedRecognitionLanguage:v24];

      [(HULanguageSetupOnboardingFlow *)self setLanguageOnboardingFlowType:1];
      selfCopy3 = self;
      v23 = 0;
      goto LABEL_27;
    case 1:
LABEL_25:
      selfCopy3 = self;
      v23 = inputCopy;
LABEL_27:
      v20 = [(HULanguageSetupOnboardingFlow *)selfCopy3 _determineNextViewControllerWithPriorResults:v23];
      goto LABEL_28;
    case 2:
      goto LABEL_22;
  }

LABEL_18:
  NSLog(&cfstr_UnexpectedUser.isa, [v7 integerValue]);
LABEL_23:
  v20 = 0;
LABEL_28:
  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy4 = self;
    v40 = 2112;
    v41 = v26;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@: Next ViewController: %@", buf, 0x20u);
  }

  if (!v20)
  {
    v27 = [inputCopy objectForKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_DismissReminderBanner"];

    if (!v27)
    {
      v28 = objc_alloc(MEMORY[0x277D14C98]);
      home4 = [(HULanguageSetupOnboardingFlow *)self home];
      home5 = [(HULanguageSetupOnboardingFlow *)self home];
      currentUser2 = [home5 currentUser];
      v32 = [v28 initWithHome:home4 user:currentUser2 nameStyle:0];

      if ([v32 hasDismissedVoiceProfileOnboarding])
      {
        v33 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [inputCopy setObject:v33 forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_DismissReminderBanner"];
      }

      else
      {
        [inputCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_IdentifyVoice_DismissReminderBanner"];
      }
    }

    onboardingFuture = [(HULanguageSetupOnboardingFlow *)self onboardingFuture];
    [onboardingFuture finishWithNoResult];
  }

  v21 = v20;

LABEL_40:

  return v21;
}

void __50__HULanguageSetupOnboardingFlow_processUserInput___block_invoke(uint64_t a1, void *a2)
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
  if ([MEMORY[0x277D14CE8] isAVisionPro])
  {
    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__HULanguageSetupOnboardingFlow_needsOnboardingForHome_options___block_invoke;
    v12[3] = &unk_277DBCAB8;
    objc_copyWeak(v15, &location);
    v13 = homeCopy;
    v14 = optionsCopy;
    v15[1] = a2;
    v9 = [v10 futureWithBlock:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __64__HULanguageSetupOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
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
    v53[2] = __64__HULanguageSetupOnboardingFlow_needsOnboardingForHome_options___block_invoke_2;
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
    v44[2] = __64__HULanguageSetupOnboardingFlow_needsOnboardingForHome_options___block_invoke_73;
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

uint64_t __64__HULanguageSetupOnboardingFlow_needsOnboardingForHome_options___block_invoke_2(uint64_t a1, void *a2)
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

void __64__HULanguageSetupOnboardingFlow_needsOnboardingForHome_options___block_invoke_73(uint64_t a1, void *a2, void *a3)
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