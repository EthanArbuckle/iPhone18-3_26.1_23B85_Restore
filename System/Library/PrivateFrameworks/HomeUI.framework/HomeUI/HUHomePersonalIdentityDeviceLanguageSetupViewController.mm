@interface HUHomePersonalIdentityDeviceLanguageSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomePersonalIdentityDeviceLanguageSetupViewController)initWithHome:(id)a3;
- (id)hu_preloadContent;
- (void)_cancelLanguageSetup;
- (void)_changeSiriLanguage;
- (void)_completeLanguageSetup;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomePersonalIdentityDeviceLanguageSetupViewController

- (HUHomePersonalIdentityDeviceLanguageSetupViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = HULocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageMismatch_Title");
  v7 = HULocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageMultipleMismatch_Detail");
  v8 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_LanguageMismatch_Title", @"HULanguagePersonalIdentityDevice_LanguageMismatch_Title", 1);

  v9 = HUSensitiveLocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageMultipleMismatch_Detail");

  v17.receiver = self;
  v17.super_class = HUHomePersonalIdentityDeviceLanguageSetupViewController;
  v10 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)&v17 initWithTitle:v8 detailText:v9 icon:0 contentLayout:2];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_home, a3);
    v12 = [MEMORY[0x277D37618] boldButton];
    continueButton = v11->_continueButton;
    v11->_continueButton = v12;

    [(OBTrayButton *)v11->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x277D37650] linkButton];
    customizeButton = v11->_customizeButton;
    v11->_customizeButton = v14;

    [(OBLinkTrayButton *)v11->_customizeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v11;
}

- (void)_cancelLanguageSetup
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: Cancelling Personal Identity Device Language Setup", buf, 0x16u);
  }

  v8 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self delegate];
  v10 = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
  v11 = &unk_2824921B0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 viewController:self didFinishWithConfigurationResults:v9];
}

- (void)_completeLanguageSetup
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: Finishing Personal Identity Device Language Setup", buf, 0x16u);
  }

  v8 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self delegate];
  v10 = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
  v11 = &unk_2824921C8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 viewController:self didFinishWithConfigurationResults:v9];
}

- (void)_changeSiriLanguage
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self targetLanguage];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self targetLanguage];
      *buf = 138412802;
      v19 = self;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@: Setting Siri language of Personal Identity Device to %@", buf, 0x20u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    v11 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self targetLanguage];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__HUHomePersonalIdentityDeviceLanguageSetupViewController__changeSiriLanguage__block_invoke;
    v15[3] = &unk_277DB7BA8;
    v15[4] = self;
    v15[5] = a2;
    [v10 setLanguage:v11 withCompletion:v15];
  }

  else
  {
    v10 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self delegate];
    v17[0] = &unk_2824921E0;
    v16[0] = @"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput";
    v16[1] = @"HULanguageOnboardingKey_MediaProfileAndLanguageInfo";
    v12 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self languageToHomePodsMapping];
    v13 = [v12 copy];
    v17[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v10 viewController:self didFinishWithConfigurationResults:v14];
  }
}

void __78__HUHomePersonalIdentityDeviceLanguageSetupViewController__changeSiriLanguage__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = [*(a1 + 32) targetLanguage];
    *buf = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@: Personal Identity Device Siri language set to %@. Starting to check for voice profile availability...", buf, 0x20u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v6 = [*(a1 + 32) targetLanguage];
  v7 = [HUHomeFeatureOnboardingUtilities checkVoiceProfileAvailabiltyForLanguage:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HUHomePersonalIdentityDeviceLanguageSetupViewController__changeSiriLanguage__block_invoke_11;
  v12[3] = &unk_277DBC6D0;
  objc_copyWeak(v13, buf);
  v13[1] = *(a1 + 40);
  v8 = [v7 addFailureBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HUHomePersonalIdentityDeviceLanguageSetupViewController__changeSiriLanguage__block_invoke_14;
  v10[3] = &unk_277DB9D18;
  objc_copyWeak(v11, buf);
  v11[1] = *(a1 + 40);
  v9 = [v7 addSuccessBlock:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(v13);

  objc_destroyWeak(buf);
}

void __78__HUHomePersonalIdentityDeviceLanguageSetupViewController__changeSiriLanguage__block_invoke_11(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = [WeakRetained targetLanguage];
    v9 = 138412802;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@:\t...Personal Identity Device Siri language set to %@ (but failed to check for 'Hey Siri' Voice Profile)", &v9, 0x20u);
  }

  [v3 setObject:&unk_2824921C8 forKeyedSubscript:@"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput"];
  v7 = [WeakRetained targetLanguage];
  [v3 setObject:v7 forKeyedSubscript:@"HULanguageOnboardingKey_PersonalDeviceSiriLanguageChanged_MissingVoiceProfile"];

  v8 = [WeakRetained delegate];
  [v8 viewController:WeakRetained didFinishWithConfigurationResults:v3];
}

void __78__HUHomePersonalIdentityDeviceLanguageSetupViewController__changeSiriLanguage__block_invoke_14(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && [v8 BOOLValue])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(*(a1 + 40));
      v11 = [WeakRetained targetLanguage];
      v12 = [WeakRetained targetLanguage];
      v19 = 138413058;
      v20 = WeakRetained;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@:\t...Personal Identity Device Siri language set to %@ (& 'Hey Siri' Voice Profile for %@ WAS found in iCloud)", &v19, 0x2Au);
    }

    v13 = [WeakRetained targetLanguage];
    [v5 setObject:v13 forKeyedSubscript:@"HULanguageOnboardingKey_PersonalDeviceSiriLanguageChanged_HasVoiceProfile"];
  }

  else
  {
    v14 = [WeakRetained targetLanguage];
    [v5 setObject:v14 forKeyedSubscript:@"HULanguageOnboardingKey_PersonalDeviceSiriLanguageChanged_MissingVoiceProfile"];

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(*(a1 + 40));
      v16 = [WeakRetained targetLanguage];
      v17 = [WeakRetained targetLanguage];
      v19 = 138413058;
      v20 = WeakRetained;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@:\t...Personal Identity Device Siri language set to %@ (& 'Hey Siri' Voice Profile for %@ was NOT found in iCloud)", &v19, 0x2Au);
    }
  }

  [v5 setObject:&unk_2824921C8 forKeyedSubscript:@"HULanguageOnboardingKey_SetupLanguage_PersonalDevice_UserInput"];
  v18 = [WeakRetained delegate];
  [v18 viewController:WeakRetained didFinishWithConfigurationResults:v5];
}

- (id)hu_preloadContent
{
  objc_initWeak(&location, self);
  v4 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self home];
  v5 = [v4 hf_hasHomePods];

  v6 = MEMORY[0x277D2C900];
  if (v5)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__HUHomePersonalIdentityDeviceLanguageSetupViewController_hu_preloadContent__block_invoke;
    v10[3] = &unk_277DBF160;
    objc_copyWeak(v11, &location);
    v11[1] = a2;
    v7 = [v6 futureWithBlock:v10];
    objc_destroyWeak(v11);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:48];
    v7 = [v6 futureWithError:v8];
  }

  objc_destroyWeak(&location);

  return v7;
}

void __76__HUHomePersonalIdentityDeviceLanguageSetupViewController_hu_preloadContent__block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained overrideTargetLanguage];

  if (v5)
  {
    v6 = [WeakRetained overrideTargetLanguage];
    [WeakRetained setTargetLanguage:v6];
  }

  else
  {
    v7 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    [WeakRetained setSupportedVoiceRecognitionLanguages:v7];

    v8 = [WeakRetained supportedVoiceRecognitionLanguages];

    if (!v8)
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412290;
        v49 = v46;
        _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", buf, 0xCu);
      }
    }

    v10 = [WeakRetained home];
    v11 = [WeakRetained supportedVoiceRecognitionLanguages];
    v12 = [HUHomeFeatureOnboardingUtilities home:v10 createMultiUserLanguageToHomePodsMapping:v11];
    [WeakRetained setLanguageToHomePodsMapping:v12];

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(*(a1 + 40));
      v15 = [WeakRetained languageToHomePodsMapping];
      v16 = [WeakRetained languageToHomePodsMapping];
      v17 = [v16 count];
      *buf = 138413058;
      v49 = WeakRetained;
      v50 = 2112;
      v51 = v14;
      v52 = 2112;
      v53 = v15;
      v54 = 2048;
      v55 = v17;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: VoiceRecognitionLanguageLanguageToHomePods mapping = %@ (%lu)", buf, 0x2Au);
    }

    v18 = [WeakRetained languageToHomePodsMapping];
    v6 = [HUHomeFeatureOnboardingUtilities createPersonalIdentityDeviceLanguageMismatchList:v18];

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(*(a1 + 40));
      v21 = [v6 count];
      *buf = 138413058;
      v49 = WeakRetained;
      v50 = 2112;
      v51 = v20;
      v52 = 2112;
      v53 = v6;
      v54 = 2048;
      v55 = v21;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@: List of Language mismatches for Personal Identity Device = %@ (%lu)", buf, 0x2Au);
    }

    if ([v6 count] == 1)
    {
      v22 = [v6 lastObject];
      [WeakRetained setTargetLanguage:v22];
    }
  }

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromSelector(*(a1 + 40));
    v25 = [WeakRetained targetLanguage];
    v26 = [WeakRetained targetLanguage];
    *buf = 138413058;
    v49 = WeakRetained;
    v50 = 2112;
    v51 = v24;
    v52 = 2112;
    v53 = v25;
    v54 = 1024;
    LODWORD(v55) = v26 == 0;
    _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@: Target Language %@, user needs to choose on next screen?: %{BOOL}d", buf, 0x26u);
  }

  v27 = [WeakRetained targetLanguage];

  if (v27)
  {
    v28 = [MEMORY[0x277CEF2D8] sharedInstance];
    v29 = [WeakRetained targetLanguage];
    v30 = [v28 localizedNameForSiriLanguage:v29 inDisplayLanguage:0];

    v31 = HULocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageSingleMismatch_Detail");
    v32 = HUSensitiveLocalizedModelString(@"HULanguagePersonalIdentityDevice_LanguageSingleMismatch_Detail");

    v47 = 0;
    v33 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v47, v30];
    v34 = v47;
    v35 = v34;
    if (!v33)
    {
      NSLog(&cfstr_CouldnTLocaliz.isa, v32, v34);
    }

    v36 = [WeakRetained headerView];
    [v36 setDetailText:v33];
  }

  v37 = [WeakRetained continueButton];
  v38 = _HULocalizedStringWithDefaultValue(@"HULanguageDontRecognizeVoiceButton_Title", @"HULanguageDontRecognizeVoiceButton_Title", 1);
  [v37 setTitle:v38 forState:0];

  v39 = [WeakRetained continueButton];
  [v39 addTarget:WeakRetained action:sel__cancelLanguageSetup forControlEvents:64];

  v40 = [WeakRetained customizeButton];
  v41 = _HULocalizedStringWithDefaultValue(@"HULanguageChangeSiriLanguage_Button_Title", @"HULanguageChangeSiriLanguage_Button_Title", 1);
  [v40 setTitle:v41 forState:0];

  v42 = [WeakRetained customizeButton];
  [v42 addTarget:WeakRetained action:sel__changeSiriLanguage forControlEvents:64];

  v43 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_LanguageMismatch_FinePrint", @"HULanguagePersonalIdentityDevice_LanguageMismatch_FinePrint", 1);
  v44 = _HULocalizedStringWithDefaultValue(@"HULanguagePersonalIdentityDevice_SiriEnabledAccessories_LanguageMismatch_FinePrint", @"HULanguagePersonalIdentityDevice_SiriEnabledAccessories_LanguageMismatch_FinePrint", 1);

  v45 = [WeakRetained buttonTray];
  [v45 setCaptionText:v44];

  [v3 finishWithNoResult];
}

- (void)viewDidLoad
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HUHomePersonalIdentityDeviceLanguageSetupViewController;
  [(OBBaseWelcomeController *)&v12 viewDidLoad];
  v4 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_2824931E8];

  [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self setModalInPresentation:1];
  v6 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self buttonTray];
  v7 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self continueButton];
  [v6 addButton:v7];

  v8 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self buttonTray];
  v9 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self customizeButton];
  [v8 addButton:v9];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HPIDLSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomePersonalIdentityDeviceLanguageSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self isMovingFromParentViewController])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped BACK button", buf, 0x16u);
    }

    v7 = [(HUHomePersonalIdentityDeviceLanguageSetupViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end