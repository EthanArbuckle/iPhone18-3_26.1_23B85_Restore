@interface HUHomeAssistantDeviceLanguageSetupViewController
- (BOOL)needsToWaitForPreload;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeAssistantDeviceLanguageSetupViewController)initWithHome:(id)home;
- (SEL)continueSelector;
- (SEL)customizeSelector;
- (id)hu_preloadContent;
- (void)_cancelLanguageSetup;
- (void)_cancelLanguageSetupWithoutWarningUser;
- (void)_changeLanguage;
- (void)_checkForiCloudSiriEnabledAndCompleteSetup;
- (void)_completeLanguageSetup;
- (void)_setupPersonalRequestsItemInfrastructure;
- (void)_turnOffPersonalRequests;
- (void)setContinueSelector:(SEL)selector;
- (void)setCustomizeSelector:(SEL)selector;
- (void)userTappedCancelFromWarning;
- (void)userTappedContinueFromWarning;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeAssistantDeviceLanguageSetupViewController

- (HUHomeAssistantDeviceLanguageSetupViewController)initWithHome:(id)home
{
  v29 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = _HULocalizedStringWithDefaultValue(@"HULanguageCanRecognizeMultipleVoices_Title", @"HULanguageCanRecognizeMultipleVoices_Title", 1);
  v8 = _HULocalizedStringWithDefaultValue(@"HULanguageCanRecognizeMultipleVoices_Title", @"HULanguageCanRecognizeMultipleVoices_Title", 1);

  v9 = HUImageNamed(@"Onboarding-MediaAccessoryLanguage");
  v20.receiver = self;
  v20.super_class = HUHomeAssistantDeviceLanguageSetupViewController;
  v10 = [(HUImageOBWelcomeController *)&v20 initWithTitle:v8 detailText:&stru_2823E0EE8 icon:0 contentImage:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_home, home);
    [(HUHomeAssistantDeviceLanguageSetupViewController *)v10 _setupPersonalRequestsItemInfrastructure];
    v11 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    supportedVoiceRecognitionLanguages = v10->_supportedVoiceRecognitionLanguages;
    v10->_supportedVoiceRecognitionLanguages = v11;

    v13 = v10->_supportedVoiceRecognitionLanguages;
    v14 = HFLogForCategory();
    v15 = v14;
    if (v13)
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_8;
      }

      v16 = NSStringFromSelector(a2);
      v17 = [(NSArray *)v10->_supportedVoiceRecognitionLanguages count];
      v18 = v10->_supportedVoiceRecognitionLanguages;
      *buf = 138413058;
      v22 = v10;
      v23 = 2112;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@: %lu Supported voice recognition languages are %@", buf, 0x2Au);
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v22 = v16;
      _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (id)hu_preloadContent
{
  v33 = *MEMORY[0x277D85DE8];
  home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  hf_hasHomePods = [home hf_hasHomePods];

  home2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  hf_hasRMVCapableAppleTV = [home2 hf_hasRMVCapableAppleTV];

  if ((hf_hasHomePods & 1) != 0 || hf_hasRMVCapableAppleTV)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      home3 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
      *buf = 138413058;
      selfCopy = self;
      v27 = 2112;
      v28 = v12;
      v29 = 2048;
      hf_numberOfHomePods = [home3 hf_numberOfHomePods];
      v31 = 1024;
      v32 = hf_hasRMVCapableAppleTV;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Determining which screen variant for %lu HomePods. hasRMVCapableAppleTV = %{BOOL}d", buf, 0x26u);
    }

    if ((hf_hasRMVCapableAppleTV & 1) != 0 || ([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && !objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro"))
    {
      home4 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
      v15 = [HUHomeFeatureOnboardingUtilities atLeastOneHomePodHasLanguageSettingsForHomeFuture:home4];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __69__HUHomeAssistantDeviceLanguageSetupViewController_hu_preloadContent__block_invoke;
      v22[3] = &unk_277DB8E20;
      v23 = hf_hasRMVCapableAppleTV;
      v24 = hf_hasHomePods;
      v22[4] = self;
      v22[5] = a2;
      v16 = [v15 flatMap:v22];

      goto LABEL_12;
    }

    v17 = _HULocalizedStringWithDefaultValue(@"HULanguageNeedsiOSDevice_Title", @"HULanguageNeedsiOSDevice_Title", 1);
    [(HUHomeAssistantDeviceLanguageSetupViewController *)self setTitleString:v17];

    v18 = _HULocalizedStringWithDefaultValue(@"HULanguageNeedsiOSDevice_Detail", @"HULanguageNeedsiOSDevice_Detail", 1);
    [(HUHomeAssistantDeviceLanguageSetupViewController *)self setDetailsString:v18];

    v19 = _HULocalizedStringWithDefaultValue(@"HULanguageContinueWithoutVoiceRecognition_Button_Title", @"HULanguageContinueWithoutVoiceRecognition_Button_Title", 1);
    [(HUHomeAssistantDeviceLanguageSetupViewController *)self setContinueButtonString:v19];

    [(HUHomeAssistantDeviceLanguageSetupViewController *)self setContinueSelector:sel__cancelLanguageSetup];
    v8 = MEMORY[0x277D2C900];
    v9 = MEMORY[0x277CCA9B8];
    v10 = 47;
  }

  else
  {
    v8 = MEMORY[0x277D2C900];
    v9 = MEMORY[0x277CCA9B8];
    v10 = 48;
  }

  v20 = [v9 hf_errorWithCode:v10];
  v16 = [v8 futureWithError:v20];

LABEL_12:

  return v16;
}

id __69__HUHomeAssistantDeviceLanguageSetupViewController_hu_preloadContent__block_invoke(uint64_t a1, void *a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v96 = a2;
  v3 = [*(a1 + 32) home];
  v4 = [v3 hf_currentUserIsOwner];

  if (v4)
  {
    [*(a1 + 32) setShouldSetMultiUserIsEnabled:1];
  }

  if ((*(a1 + 48) & 1) != 0 || v96 || (*(a1 + 49) & 1) == 0)
  {
    v5 = [*(a1 + 32) supportedVoiceRecognitionLanguages];
    v6 = [*(a1 + 32) home];
    v7 = [HUHomeFeatureOnboardingUtilities analyzeHomeAssistantDevicesForSupportedVoiceRecognitionLanguages:v5 home:v6];

    v8 = [v7 objectForKeyedSubscript:@"supportingLanguages"];
    v9 = [v7 objectForKeyedSubscript:@"languageMismatch"];
    [*(a1 + 32) setHomeAssistantDevicesHavingLanguageMismatch:v9];

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = [*(a1 + 32) home];
      v14 = [v13 hf_numberOfHomePods];
      v15 = [v8 count];
      v16 = [*(a1 + 32) homeAssistantDevicesHavingLanguageMismatch];
      *buf = 138413314;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      v99 = v14;
      *v100 = 2048;
      *&v100[2] = v15;
      *&v100[10] = 2048;
      *&v100[12] = [v16 count];
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: HomePod language analysis: %lu HomePods: %lu on supported voice recognition languages / %lu not.", buf, 0x34u);
    }

    [*(a1 + 32) setMaxNumberOfVoicesReached:0];
    if ([*(a1 + 32) maxNumberOfVoicesReached])
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: Maximum voice profiles reached", buf, 0x16u);
      }

      v20 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeAdditionalVoices_Title", @"HULanguageCannotRecognizeAdditionalVoices_Title", 1);
      v22 = *(a1 + 32);
      v21 = (a1 + 32);
      [v22 setTitleString:v20];

      v23 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeAdditionalVoices_Detail", @"HULanguageCannotRecognizeAdditionalVoices_Detail", 1);
      [*v21 setDetailsString:v23];

      v24 = _HULocalizedStringWithDefaultValue(@"HULanguageContinueWithoutVoiceRecognition_Button_Title", @"HULanguageContinueWithoutVoiceRecognition_Button_Title", 1);
      [*v21 setContinueButtonString:v24];

      [*v21 setContinueSelector:sel__cancelLanguageSetup];
      v25 = MEMORY[0x277D2C900];
      v26 = [MEMORY[0x277CCA9B8] hf_errorWithCode:44];
      v27 = [v25 futureWithError:v26];

      goto LABEL_39;
    }

    v40 = [*(a1 + 32) supportedVoiceRecognitionLanguages];
    v41 = [v40 count];

    v42 = HFLogForCategory();
    v43 = v42;
    if (!v41)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v93 = *(a1 + 32);
        v94 = NSStringFromSelector(*(a1 + 40));
        v95 = [MEMORY[0x277CCA9B8] hf_errorWithCode:45];
        *buf = 138412802;
        *&buf[4] = v93;
        *&buf[12] = 2112;
        *&buf[14] = v94;
        *&buf[22] = 2112;
        v99 = v95;
        _os_log_error_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_ERROR, "%@:%@: NO Supporting voice recognition languages. Finishing with Error %@", buf, 0x20u);
      }

      v79 = MEMORY[0x277D2C900];
      v80 = [MEMORY[0x277CCA9B8] hf_errorWithCode:45];
      v27 = [v79 futureWithError:v80];

      goto LABEL_39;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 32);
      v45 = NSStringFromSelector(*(a1 + 40));
      v46 = [v8 count];
      v47 = [*(a1 + 32) home];
      v48 = [v47 hf_currentUserIsAdministrator];
      *buf = 138413058;
      *&buf[4] = v44;
      *&buf[12] = 2112;
      *&buf[14] = v45;
      *&buf[22] = 2048;
      v99 = v46;
      *v100 = 1024;
      *&v100[2] = v48;
      _os_log_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEFAULT, "%@:%@: %lu HomePods on supported voice recognition languages & user is admin?: %{BOOL}d", buf, 0x26u);
    }

    if (*(a1 + 48) & 1) != 0 || *(a1 + 49) != 1 || [v8 count] || (objc_msgSend(*(a1 + 32), "home"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "hf_currentUserIsAdministrator"), v49, (v50))
    {
      if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) != 1 || [v8 count] || (objc_msgSend(*(a1 + 32), "home"), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "hf_currentUserIsAdministrator"), v51, !v52))
      {
        v65 = HFLogForCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a1 + 32);
          v67 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412546;
          *&buf[4] = v66;
          *&buf[12] = 2112;
          *&buf[14] = v67;
          _os_log_impl(&dword_20CEB6000, v65, OS_LOG_TYPE_DEFAULT, "%@:%@: At least ONE HomePod supports voice recognition languages OR RMV Capable AppleTV exists!", buf, 0x16u);
        }

        v68 = _HULocalizedStringWithDefaultValue(@"HULanguageCanRecognizeMultipleVoices_Title", @"HULanguageCanRecognizeMultipleVoices_Title", 1);
        [*(a1 + 32) setTitleString:v68];

        v69 = _HULocalizedStringWithDefaultValue(@"HULanguageCanRecognizeMultipleVoicesPersonalContent_Detail", @"HULanguageCanRecognizeMultipleVoicesPersonalContent_Detail", 1);
        [*(a1 + 32) setDetailsString:v69];

        v70 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
        [*(a1 + 32) setContinueButtonString:v70];

        [*(a1 + 32) setContinueSelector:sel__checkForiCloudSiriEnabledAndCompleteSetup];
        v71 = _HULocalizedStringWithDefaultValue(@"HULanguageDontRecognizeVoiceButton_Title", @"HULanguageDontRecognizeVoiceButton_Title", 1);
        [*(a1 + 32) setCustomizeButtonString:v71];

        [*(a1 + 32) setCustomizeSelector:sel__cancelLanguageSetup];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v99 = __Block_byref_object_copy__2;
        *v100 = __Block_byref_object_dispose__2;
        *&v100[8] = _HULocalizedStringWithDefaultValue(@"HULanguageCanRecognizeMultipleVoicesAirplay_UnknownDevice", @"HULanguageCanRecognizeMultipleVoicesAirplay_UnknownDevice", 1);
        v72 = +[HULocationDeviceManager sharedInstance];
        v73 = [v72 activeLocationDeviceFuture];
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = __69__HUHomeAssistantDeviceLanguageSetupViewController_hu_preloadContent__block_invoke_65;
        v97[3] = &unk_277DB8DF8;
        v97[4] = buf;
        v74 = [v73 addCompletionBlock:v97];

        v75 = HULocalizedModelString(@"HULanguageCanRecognizeMultipleVoices_FinePrint");
        v76 = [v75 stringByAppendingString:@" "];
        v77 = [v76 stringByAppendingString:*(*&buf[8] + 40)];

        v78 = [*(a1 + 32) buttonTray];
        [v78 addCaptionText:v77];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v53 = HFLogForCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = *(a1 + 32);
          v55 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412546;
          *&buf[4] = v54;
          *&buf[12] = 2112;
          *&buf[14] = v55;
          _os_log_impl(&dword_20CEB6000, v53, OS_LOG_TYPE_DEFAULT, "%@:%@: NO RMV Capable AppleTVs, NO Supporting voice recognition languages for HomePods AND Current User is an Admin ", buf, 0x16u);
        }

        v56 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Title", @"HULanguageCannotRecognizeMultipleVoices_Title", 1);
        v58 = *(a1 + 32);
        v57 = (a1 + 32);
        [v58 setTitleString:v56];

        v59 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Detail", @"HULanguageCannotRecognizeMultipleVoices_Detail", 1);
        [*v57 setDetailsString:v59];

        v60 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Title", @"HULanguageCannotRecognizeMultipleVoices_Title", 1);
        [*v57 setTitleString:v60];

        v61 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Detail", @"HULanguageCannotRecognizeMultipleVoices_Detail", 1);
        [*v57 setDetailsString:v61];

        v62 = _HULocalizedStringWithDefaultValue(@"HULanguageContinueWithoutVoiceRecognition_Button_Title", @"HULanguageContinueWithoutVoiceRecognition_Button_Title", 1);
        [*v57 setContinueButtonString:v62];

        [*v57 setContinueSelector:sel__cancelLanguageSetup];
        v63 = _HULocalizedStringWithDefaultValue(@"HULanguageChangeLanguageButton_Title", @"HULanguageChangeLanguageButton_Title", 1);
        [*v57 setCustomizeButtonString:v63];

        v64 = _HULocalizedStringWithDefaultValue(@"HULanguageChangeLanguageButton_Title", @"HULanguageChangeLanguageButton_Title", 1);
        [*v57 setCustomizeButtonString:v64];

        [*v57 setCustomizeSelector:sel__changeLanguage];
      }
    }

    else
    {
      v82 = HFLogForCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = *(a1 + 32);
        v84 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        *&buf[4] = v83;
        *&buf[12] = 2112;
        *&buf[14] = v84;
        _os_log_impl(&dword_20CEB6000, v82, OS_LOG_TYPE_DEFAULT, "%@:%@: NO Supporting voice recognition languages for HomePods AND Current User is NOT an Admin ", buf, 0x16u);
      }

      v85 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Title", @"HULanguageCannotRecognizeMultipleVoices_Title", 1);
      v87 = *(a1 + 32);
      v86 = (a1 + 32);
      [v87 setTitleString:v85];

      v88 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Detail", @"HULanguageCannotRecognizeMultipleVoices_Detail", 1);
      [*v86 setDetailsString:v88];

      v89 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Title", @"HULanguageCannotRecognizeMultipleVoices_Title", 1);
      [*v86 setTitleString:v89];

      v90 = _HULocalizedStringWithDefaultValue(@"HULanguageCannotRecognizeMultipleVoices_Detail", @"HULanguageCannotRecognizeMultipleVoices_Detail", 1);
      [*v86 setDetailsString:v90];

      v91 = _HULocalizedStringWithDefaultValue(@"HULanguageContinueWithoutVoiceRecognition_Button_Title", @"HULanguageContinueWithoutVoiceRecognition_Button_Title", 1);
      [*v86 setContinueButtonString:v91];

      [*v86 setContinueSelector:sel__cancelLanguageSetup];
      v92 = [MEMORY[0x277CCA9B8] hf_errorWithCode:43];
      if (v92)
      {
        v27 = [MEMORY[0x277D2C900] futureWithError:v92];

        goto LABEL_39;
      }
    }

    v27 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_39:

    goto LABEL_40;
  }

  v28 = [*(a1 + 32) home];
  v29 = [v28 hf_numberOfHomePods];

  if (v29 <= 1)
  {
    v30 = @"HULanguageNeedsSettingsSync_Detail_Single";
  }

  else
  {
    v30 = @"HULanguageNeedsSettingsSync_Detail_Multiple";
  }

  v31 = HFLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 32);
    v33 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@: No HomePods have language settings yet, skipping Voice ID onboarding...", buf, 0x16u);
  }

  v34 = _HULocalizedStringWithDefaultValue(@"HULanguageNeedsSettingsSync_Title", @"HULanguageNeedsSettingsSync_Title", 1);
  v36 = *(a1 + 32);
  v35 = (a1 + 32);
  [v36 setTitleString:v34];

  v37 = _HULocalizedStringWithDefaultValue(v30, v30, 1);
  [*v35 setDetailsString:v37];

  v38 = _HULocalizedStringWithDefaultValue(@"HULanguageNeedsSettingsSync_ContinueButton", @"HULanguageNeedsSettingsSync_ContinueButton", 1);
  [*v35 setContinueButtonString:v38];

  [*v35 setContinueSelector:sel__cancelLanguageSetup];
  v39 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:49];
  v27 = [v39 futureWithError:v7];
LABEL_40:

  return v27;
}

void __69__HUHomeAssistantDeviceLanguageSetupViewController_hu_preloadContent__block_invoke_65(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v17 = v5;
    v6 = [v5 name];

    v5 = v17;
    if (v6)
    {
      v7 = [v17 name];
      v14 = HULocalizedStringWithFormat(@"HULanguageCanRecognizeMultipleVoicesAirplay", @"%@", v8, v9, v10, v11, v12, v13, v7);
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v5 = v17;
    }
  }
}

- (BOOL)needsToWaitForPreload
{
  home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  hf_hasRMVCapableAppleTV = [home hf_hasRMVCapableAppleTV];

  return (hf_hasRMVCapableAppleTV & 1) != 0 || ([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro") & 1) == 0;
}

- (void)_cancelLanguageSetup
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy2 = self;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  if (!-[HUHomeAssistantDeviceLanguageSetupViewController maxNumberOfVoicesReached](self, "maxNumberOfVoicesReached") && ([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro") & 1) == 0)
  {
    home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
    supportedVoiceRecognitionLanguages = [(HUHomeAssistantDeviceLanguageSetupViewController *)self supportedVoiceRecognitionLanguages];
    v8 = [HUHomeFeatureOnboardingUtilities home:home hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:supportedVoiceRecognitionLanguages];

    if (v8)
    {
      home2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
      if ([home2 hf_currentUserIsAdministrator])
      {

LABEL_10:
        prEditorItemManager = [(HUHomeAssistantDeviceLanguageSetupViewController *)self prEditorItemManager];
        prDevicesModule = [prEditorItemManager prDevicesModule];
        personalRequestsDevices = [prDevicesModule personalRequestsDevices];
        v15 = [personalRequestsDevices count] != 0;

        goto LABEL_12;
      }

      home3 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
      hf_currentUserIsOwner = [home3 hf_currentUserIsOwner];

      if (hf_currentUserIsOwner)
      {
        goto LABEL_10;
      }
    }
  }

  v15 = 0;
LABEL_12:
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v15;
    v31 = NSStringFromSelector(a2);
    maxNumberOfVoicesReached = [(HUHomeAssistantDeviceLanguageSetupViewController *)self maxNumberOfVoicesReached];
    home4 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
    supportedVoiceRecognitionLanguages2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self supportedVoiceRecognitionLanguages];
    v29 = home4;
    v19 = [HUHomeFeatureOnboardingUtilities home:home4 hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:supportedVoiceRecognitionLanguages2];
    home5 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
    hf_currentUserIsAdministrator = [home5 hf_currentUserIsAdministrator];
    if (hf_currentUserIsAdministrator)
    {
      hf_currentUserIsOwner2 = 1;
    }

    else
    {
      home6 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
      hf_currentUserIsOwner2 = [home6 hf_currentUserIsOwner];
    }

    prEditorItemManager2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self prEditorItemManager];
    prDevicesModule2 = [prEditorItemManager2 prDevicesModule];
    personalRequestsDevices2 = [prDevicesModule2 personalRequestsDevices];
    v26 = [personalRequestsDevices2 count];
    *buf = 138413570;
    selfCopy2 = self;
    v34 = 2112;
    v35 = v31;
    v36 = 1024;
    v37 = maxNumberOfVoicesReached;
    v38 = 1024;
    v39 = v19;
    v40 = 1024;
    v41 = hf_currentUserIsOwner2;
    v42 = 2048;
    v43 = v26;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: maxNumberOfVoicesReached = %{BOOL}d home:hasSomeHomePodsOnSupportedVoiceRecognitionLanguages = %{BOOL}d currentUserIsAdministrator/Owner = %{BOOL}d personalRequestsDevices = %lu", buf, 0x32u);

    if ((hf_currentUserIsAdministrator & 1) == 0)
    {
    }

    v15 = v30;
  }

  if (v15)
  {
    [HUHomeFeatureOnboardingUtilities presentAlertConfirmingTurningOffPersonalRequestsFrom:self];
  }

  else
  {
    [(HUHomeAssistantDeviceLanguageSetupViewController *)self _cancelLanguageSetupWithoutWarningUser];
  }
}

- (void)_cancelLanguageSetupWithoutWarningUser
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy3 = self;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ Cancelling (really)", buf, 0x16u);
  }

  v6 = MEMORY[0x277CBEB38];
  v16 = @"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput";
  v17 = &unk_282490CF8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v8 = [v6 dictionaryWithDictionary:v7];

  home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  hf_currentUserIsOwner = [home hf_currentUserIsOwner];

  if (hf_currentUserIsOwner)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUHomeAssistantDeviceLanguageSetupViewController shouldSetMultiUserIsEnabled](self, "shouldSetMultiUserIsEnabled")}];
    [v8 setObject:v11 forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy3 = self;
      v20 = 2112;
      v21 = v13;
      v14 = "%@:%@: Turning ON MU Setting since the current user is the Home owner";
LABEL_8:
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
    }
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy3 = self;
      v20 = 2112;
      v21 = v13;
      v14 = "%@:%@: NOT Turning ON MU Setting since the current user is NOT the Home owner";
      goto LABEL_8;
    }
  }

  delegate = [(HUHomeAssistantDeviceLanguageSetupViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_checkForiCloudSiriEnabledAndCompleteSetup
{
  v4 = [HUHomeFeatureOnboardingUtilities checkSiriForiCloudEnabledPromptingUser:self];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__HUHomeAssistantDeviceLanguageSetupViewController__checkForiCloudSiriEnabledAndCompleteSetup__block_invoke;
  v8[3] = &unk_277DB8E48;
  v8[4] = self;
  v5 = [v4 addSuccessBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__HUHomeAssistantDeviceLanguageSetupViewController__checkForiCloudSiriEnabledAndCompleteSetup__block_invoke_2;
  v7[3] = &unk_277DB8E70;
  v7[4] = self;
  v7[5] = a2;
  v6 = [v4 addFailureBlock:v7];
}

uint64_t __94__HUHomeAssistantDeviceLanguageSetupViewController__checkForiCloudSiriEnabledAndCompleteSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 _completeLanguageSetup];
  }

  else
  {

    return [v4 _cancelLanguageSetupWithoutWarningUser];
  }
}

void __94__HUHomeAssistantDeviceLanguageSetupViewController__checkForiCloudSiriEnabledAndCompleteSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = NSStringFromSelector(*(a1 + 40));
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: There was an error enabling iCloud for Siri: %@", &v8, 0x20u);
    }

    v7 = [MEMORY[0x277D14640] sharedHandler];
    [v7 handleError:v3];
  }
}

- (void)_completeLanguageSetup
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v6 = MEMORY[0x277CBEB38];
  v18 = @"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput";
  v19 = &unk_282490D10;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v8 = [v6 dictionaryWithDictionary:v7];

  home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  hf_currentUserIsOwner = [home hf_currentUserIsOwner];

  if (hf_currentUserIsOwner)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUHomeAssistantDeviceLanguageSetupViewController shouldSetMultiUserIsEnabled](self, "shouldSetMultiUserIsEnabled")}];
    [v8 setObject:v11 forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];

    v12 = HFLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v13;
    v14 = "%@:%@: Turning ON MU Setting since the current user is the Home owner";
  }

  else
  {
    v12 = HFLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v13;
    v14 = "%@:%@: NOT Turning ON MU Setting since the current user is NOT the Home owner";
  }

  _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);

LABEL_9:
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@: Now finishing HomePod language mismatch onboarding flow", buf, 0x16u);
  }

  delegate = [(HUHomeAssistantDeviceLanguageSetupViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_changeLanguage
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v20 = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v20, 0x16u);
  }

  v6 = objc_opt_new();
  [v6 setObject:&unk_282490D28 forKey:@"HULanguageOnboardingKey_SetupLanguage_AssistantDevice_UserInput"];
  supportedVoiceRecognitionLanguages = [(HUHomeAssistantDeviceLanguageSetupViewController *)self supportedVoiceRecognitionLanguages];
  v8 = [supportedVoiceRecognitionLanguages copy];
  [v6 setObject:v8 forKey:@"HULanguageOnboardingKey_SupportedLanguageInfo"];

  home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  LODWORD(v8) = [home hf_currentUserIsOwner];

  if (v8)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUHomeAssistantDeviceLanguageSetupViewController shouldSetMultiUserIsEnabled](self, "shouldSetMultiUserIsEnabled")}];
    [v6 setObject:v10 forKeyedSubscript:@"HUMultiUserKey_SetIsEnabled"];

    v11 = HFLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = NSStringFromSelector(a2);
    v20 = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v12;
    v13 = "%@:%@: Turning ON MU Setting since the current user is the Home owner";
  }

  else
  {
    v11 = HFLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = NSStringFromSelector(a2);
    v20 = 138412546;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v12;
    v13 = "%@:%@: NOT Turning ON MU Setting since the current user is NOT the Home owner";
  }

  _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v13, &v20, 0x16u);

LABEL_9:
  homeAssistantDevicesHavingLanguageMismatch = [(HUHomeAssistantDeviceLanguageSetupViewController *)self homeAssistantDevicesHavingLanguageMismatch];

  if (homeAssistantDevicesHavingLanguageMismatch)
  {
    homeAssistantDevicesHavingLanguageMismatch2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self homeAssistantDevicesHavingLanguageMismatch];
    [v6 setObject:homeAssistantDevicesHavingLanguageMismatch2 forKey:@"HULanguageOnboardingKey_LanguageMismatchedHomeAssistantDevices"];
  }

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v20 = 138412802;
    selfCopy4 = self;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: Now transitioning to Language configuration for HomePod with results [%@]", &v20, 0x20u);
  }

  delegate = [(HUHomeAssistantDeviceLanguageSetupViewController *)self delegate];
  v19 = [v6 copy];
  [delegate viewController:self didFinishWithConfigurationResults:v19];
}

- (void)_setupPersonalRequestsItemInfrastructure
{
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  home = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  home2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self home];
  currentUser = [home2 currentUser];
  v11 = [v4 initWithHome:home user:currentUser nameStyle:0];

  v8 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:0 userItem:v11 onlyShowDeviceSwitches:1];
  [(HUHomeAssistantDeviceLanguageSetupViewController *)self setPrEditorItemManager:v8];

  prEditorItemManager = [(HUHomeAssistantDeviceLanguageSetupViewController *)self prEditorItemManager];
  v10 = [prEditorItemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (void)userTappedContinueFromWarning
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v6, 0x16u);
  }

  [(HUHomeAssistantDeviceLanguageSetupViewController *)self _turnOffPersonalRequests];
  [(HUHomeAssistantDeviceLanguageSetupViewController *)self _cancelLanguageSetupWithoutWarningUser];
}

- (void)userTappedCancelFromWarning
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v6, 0x16u);
  }
}

- (void)_turnOffPersonalRequests
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Turning off all Personal Requests devices", &v8, 0xCu);
  }

  prEditorItemManager = [(HUHomeAssistantDeviceLanguageSetupViewController *)self prEditorItemManager];
  prDevicesModule = [prEditorItemManager prDevicesModule];
  [prDevicesModule setPersonalRequestsDevices:MEMORY[0x277CBEBF8]];
}

- (void)viewDidLoad
{
  v37 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HUHomeAssistantDeviceLanguageSetupViewController;
  [(HUImageOBWelcomeController *)&v32 viewDidLoad];
  [(HUHomeAssistantDeviceLanguageSetupViewController *)self setModalInPresentation:1];
  headerView = [(HUHomeAssistantDeviceLanguageSetupViewController *)self headerView];
  titleString = [(HUHomeAssistantDeviceLanguageSetupViewController *)self titleString];
  [headerView setTitle:titleString];

  headerView2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self headerView];
  detailsString = [(HUHomeAssistantDeviceLanguageSetupViewController *)self detailsString];
  [headerView2 setDetailText:detailsString];

  headerView3 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self headerView];
  subviews = [headerView3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492D60];

  continueButtonString = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButtonString];
  v11 = [continueButtonString length];

  if (v11)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    [(HUHomeAssistantDeviceLanguageSetupViewController *)self setContinueButton:boldButton];

    continueButton = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButton];
    continueButtonString2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButtonString];
    [continueButton setTitle:continueButtonString2 forState:0];

    continueButton2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButton];
    [continueButton2 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetUp.ContinueButton"];

    continueButton3 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButton];
    [continueButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    continueButton4 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButton];
    [continueButton4 addTarget:self action:-[HUHomeAssistantDeviceLanguageSetupViewController continueSelector](self forControlEvents:{"continueSelector"), 64}];

    buttonTray = [(HUHomeAssistantDeviceLanguageSetupViewController *)self buttonTray];
    continueButton5 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self continueButton];
    [buttonTray addButton:continueButton5];
  }

  customizeButtonString = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButtonString];
  v21 = [customizeButtonString length];

  if (v21)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [(HUHomeAssistantDeviceLanguageSetupViewController *)self setCustomizeButton:linkButton];

    customizeButton = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButton];
    customizeButtonString2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButtonString];
    [customizeButton setTitle:customizeButtonString2 forState:0];

    customizeButton2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButton];
    [customizeButton2 setAccessibilityIdentifier:@"Home.OnboardingView.LanguageSetUp.CustomizeButton"];

    customizeButton3 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButton];
    [customizeButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    customizeButton4 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButton];
    [customizeButton4 addTarget:self action:-[HUHomeAssistantDeviceLanguageSetupViewController customizeSelector](self forControlEvents:{"customizeSelector"), 64}];

    buttonTray2 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self buttonTray];
    customizeButton5 = [(HUHomeAssistantDeviceLanguageSetupViewController *)self customizeButton];
    [buttonTray2 addButton:customizeButton5];
  }

  v30 = HFLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v35 = 2112;
    v36 = v31;
    _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HADLSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUHomeAssistantDeviceLanguageSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUHomeAssistantDeviceLanguageSetupViewController *)self isMovingFromParentViewController])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped BACK button", buf, 0x16u);
    }

    delegate = [(HUHomeAssistantDeviceLanguageSetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SEL)continueSelector
{
  if (self->_continueSelector)
  {
    return self->_continueSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setContinueSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_continueSelector = selectorCopy;
}

- (SEL)customizeSelector
{
  if (self->_customizeSelector)
  {
    return self->_customizeSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setCustomizeSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_customizeSelector = selectorCopy;
}

@end