@interface CKOnboardingController
+ (BOOL)_alwaysShowAppleIntelligenceOnboarding;
+ (BOOL)_isRunningTest;
+ (BOOL)_shouldOnboardCollaborationApps;
+ (BOOL)_shouldPresentNewInMessages;
+ (BOOL)_shouldShowRCSEncryptionOptInOnboarding;
+ (BOOL)_shouldShowSyndicationOnboardingFlowOnLaunch;
+ (BOOL)alwaysShowNicknameOnboarding;
+ (BOOL)alwaysShowSyndicationOnboarding;
+ (BOOL)shouldPresentOnboarding;
+ (int64_t)_lastShownAppleIntelligenceOnboardingVersion;
+ (int64_t)currentCollaborationOnboardingVersion;
+ (unint64_t)syndicationOnboardingLastShownVersion;
- (BOOL)_meCardSharingEnabled;
- (BOOL)_shouldShowNicknameOnboardingFlowIgnoringVersion:(BOOL)a3;
- (BOOL)accountCanCreateNickname;
- (BOOL)presentNicknameSharingSetupFlowWithMemoji:(BOOL)a3 forUserInitiatedEdit:(BOOL)a4;
- (BOOL)presentOnboardingIfNeeded;
- (CKOnboardingControllerDelegate)delegate;
- (OBWelcomeController)_appleIntelligenceOnboardingController;
- (OBWelcomeController)syndicationIntroController;
- (OBWelcomeFullCenterContentController)_memojiCreationController;
- (id)_appleIntelligenceIconImage;
- (id)_introController;
- (id)_nameAndPhotoSharingIntroController;
- (id)_rcsEncryptionOptInOnboardingController;
- (id)contactForNicknameOnboarding;
- (unint64_t)_meCardSharingAudience;
- (unint64_t)_meCardSharingNameFormat;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (unint64_t)nicknameOnboardingLastShownVersion;
- (void)_enrollInRCSEncryptionTest;
- (void)_fetchMemojiWithCompletionBlock:(id)a3;
- (void)_presentMemojiCreationIfNeeded:(id)a3 skipAction:(id)a4;
- (void)_pushOnboardingViewController:(id)a3 animated:(BOOL)a4;
- (void)_updateLastShownAppleIntelligenceOnboardingVersion;
- (void)_writeDefaultCollaborationOnboardingVersion;
- (void)_writeDefaultNicknameOnboardingVersion;
- (void)_writeDefaultSyndicationOnboardingVersion;
- (void)_writeDefaultWhatsNewDidShow;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)completedOnboarding;
- (void)completedOnboardingWithCompletion:(id)a3;
- (void)dealloc;
- (void)enableSyndication;
- (void)flowManager:(id)a3 didFinishWithResult:(id)a4;
- (void)initializeBundleIDsInAppPreferences:(BOOL)a3;
- (void)meCardSharingOnboardingAudienceViewControllerDidFinish:(id)a3 withSharingAudience:(unint64_t)a4;
- (void)meCardSharingOnboardingEditController:(id)a3 didFinishWithOnboardingResult:(id)a4;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)onboardCollaborationApps;
- (void)prepareForOnboarding;
- (void)prepareForSuspend;
- (void)presentMemojiSetup;
- (void)presentNicknameOnboardingOrEditFlow;
- (void)presentOnboarding:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)pushMemojiCreationStep;
- (void)pushMemojiCreationStepIfNeeded;
- (void)pushNameAndPhotoSharingConfigDataStep;
- (void)pushNameAndPhotoSharingConfigSharingPreferenceStep;
- (void)pushNameAndPhotoSharingIntroStep;
- (void)pushNameAndPhotoSharingIntroStepIfNeeded;
- (void)pushSyndicationIntroStep;
- (void)setUpSyndicationLater;
- (void)sharingPickerDidFinish:(id)a3;
- (void)showAppleIntelligenceOnboardingStepIfNeeded;
- (void)startNicknameOnboardingIfNeeded;
@end

@implementation CKOnboardingController

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Deallocating", buf, 2u);
    }
  }

  v4.receiver = self;
  v4.super_class = CKOnboardingController;
  [(CKOnboardingController *)&v4 dealloc];
}

- (BOOL)presentOnboardingIfNeeded
{
  if (+[CKOnboardingController _shouldPresentNewInMessages])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Presenting onboarding flow", buf, 2u);
      }
    }

    [(CKOnboardingController *)self prepareForOnboarding];
    v4 = [(CKOnboardingController *)self _introController];
    [(CKOnboardingController *)self presentOnboarding:v4];

    [(CKOnboardingController *)self _writeDefaultWhatsNewDidShow];
    return 1;
  }

  if (+[CKOnboardingController _shouldShowNicknameOnboardingFlowOnLaunch])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Presenting nickname onboarding flow", v23, 2u);
      }
    }

    [(CKOnboardingController *)self prepareForOnboarding];
    [(CKOnboardingController *)self startNicknameOnboardingIfNeeded];
    return 1;
  }

  if (+[CKOnboardingController _shouldShowSyndicationOnboardingFlowOnLaunch])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Presenting Syndication onboarding flow", v22, 2u);
      }
    }

    v9 = [(CKOnboardingController *)self delegate];
    v10 = [v9 presentingViewControllerForOnboardingController:self];

    if (([v10 interfaceOrientation] - 1) < 2 || (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "userInterfaceIdiom"), v11, v12))
    {
      [(CKOnboardingController *)self prepareForOnboarding];
      [(CKOnboardingController *)self pushSyndicationIntroStep];
      v6 = 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Not showing syndication onboarding because device is in landscape orientation, and there are unresolved crashes when rotating CKSyndicationContentViewController to portrait", v21, 2u);
        }
      }

      v6 = 0;
    }

LABEL_47:

    return v6;
  }

  if (+[CKOnboardingController _shouldShowAppleIntelligenceOnboarding])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Presenting apple intelligence onboarding", v20, 2u);
      }
    }

    [(CKOnboardingController *)self prepareForOnboarding];
    [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
    return 1;
  }

  if (+[CKOnboardingController _shouldShowRCSEncryptionOptInOnboarding])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Internal Only - Presenting RCS encryption test onboarding flow", v19, 2u);
      }
    }

    [(CKOnboardingController *)self prepareForOnboarding];
    v15 = [(CKOnboardingController *)self _rcsEncryptionOptInOnboardingController];
    [(CKOnboardingController *)self presentOnboarding:v15];

    v10 = [(CKOnboardingController *)self _userDefaults];
    v6 = 1;
    [v10 setBool:1 forKey:@"didShowRCSEncryptionOptInOnboarding"];
    goto LABEL_47;
  }

  if (+[CKOnboardingController _shouldOnboardCollaborationApps])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Onboarding collaboration apps", v18, 2u);
      }
    }

    [(CKOnboardingController *)self onboardCollaborationApps];
  }

  return 0;
}

+ (BOOL)shouldPresentOnboarding
{
  if ([a1 _shouldPresentNewInMessages] & 1) != 0 || (objc_msgSend(a1, "_shouldShowNicknameOnboardingFlowOnLaunch") & 1) != 0 || (objc_msgSend(a1, "_shouldShowSyndicationOnboardingFlowOnLaunch") & 1) != 0 || (objc_msgSend(a1, "_shouldOnboardCollaborationApps") & 1) != 0 || (objc_msgSend(a1, "_shouldShowAppleIntelligenceOnboarding"))
  {
    return 1;
  }

  return [a1 _shouldShowRCSEncryptionOptInOnboarding];
}

+ (BOOL)alwaysShowNicknameOnboarding
{
  v2 = [a1 _classUserDefaults];
  v3 = [v2 BOOLForKey:@"AlwaysShowNicknameOnboarding"];

  return v3;
}

- (unint64_t)nicknameOnboardingLastShownVersion
{
  v2 = [(CKOnboardingController *)self _userDefaults];
  v3 = [v2 integerForKey:@"NicknameOnboardingVersion"];

  return v3;
}

- (BOOL)_shouldShowNicknameOnboardingFlowIgnoringVersion:(BOOL)a3
{
  if (+[CKOnboardingController _isRunningTest])
  {
    return 0;
  }

  if (+[CKOnboardingController alwaysShowNicknameOnboarding]|| [(CKOnboardingController *)self isUserInitiatedEditNameAndPhoto])
  {
    return 1;
  }

  if (!a3 && [(CKOnboardingController *)self nicknameOnboardingLastShownVersion])
  {
    return 0;
  }

  return [(CKOnboardingController *)self accountCanCreateNickname];
}

+ (BOOL)alwaysShowSyndicationOnboarding
{
  v2 = [a1 _classUserDefaults];
  v3 = [v2 BOOLForKey:@"AlwaysShowSyndicationOnboarding"];

  return v3;
}

+ (unint64_t)syndicationOnboardingLastShownVersion
{
  v2 = [a1 _classUserDefaults];
  v3 = [v2 integerForKey:@"SyndicationOnboardingVersion"];

  return v3;
}

+ (int64_t)currentCollaborationOnboardingVersion
{
  v2 = [a1 _classUserDefaults];
  v3 = [v2 integerForKey:@"CollaborationOnboardingVersion"];

  return v3;
}

+ (BOOL)_shouldShowSyndicationOnboardingFlowOnLaunch
{
  v19 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E69A8020] supportsSharedWithYou] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Don't show the syndication onboarding flow as this device does not support it.", &v13, 2u);
      }

      goto LABEL_17;
    }

LABEL_18:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (([a1 _isRunningTest] & 1) != 0 || !CKIsRunningInMessages())
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Not showing onboarding because process is not Messages", &v13, 2u);
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([a1 alwaysShowSyndicationOnboarding])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Showing syndication onboarding because debugging with alwaysShowSyndicationOnboarding enabled", &v13, 2u);
      }
    }

    LOBYTE(v4) = 1;
  }

  else
  {
    v7 = [a1 syndicationOnboardingLastShownVersion];
    v8 = [MEMORY[0x1E69A8288] sharedWithYouKeyExists];
    if (v7 < 3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v8 ^ 1;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v4)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if (v8)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = 138412802;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        if (v7 < 3)
        {
          v10 = @"YES";
        }

        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Syndication onboarding should present: %@ because sharedWithYouKeyExists: %@, onboardingVersionIsOutdated: %@", &v13, 0x20u);
      }
    }
  }

  return v4;
}

+ (BOOL)_shouldOnboardCollaborationApps
{
  v12 = *MEMORY[0x1E69E9840];
  if (([a1 _isRunningTest] & 1) != 0 || !CKIsRunningInMessages())
  {
    v4 = 0;
  }

  else
  {
    v3 = [a1 currentCollaborationOnboardingVersion];
    v4 = (v3 < 1) | [MEMORY[0x1E69A8288] defaultCollaborationAppsEnabled] ^ 1;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (v4)
        {
          v6 = @"YES";
        }

        v8 = 138412546;
        v9 = v6;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "shouldOnboard: %@ collaborationOnboardingVersion = %lu", &v8, 0x16u);
      }
    }
  }

  return v4 & 1;
}

+ (BOOL)_shouldShowRCSEncryptionOptInOnboarding
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (([v3 isInternalInstall] & 1) == 0)
  {

    return 0;
  }

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isRCSEncryptionOptInTestEnabled];

  if (!v5)
  {
    return 0;
  }

  v6 = [a1 _classUserDefaults];
  v7 = [v6 BOOLForKey:@"didShowRCSEncryptionOptInOnboarding"];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Check if we need to show RCS encryption opt-in onboarding UI: %@", &v11, 0xCu);
    }
  }

  return v7 ^ 1;
}

- (BOOL)accountCanCreateNickname
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isAllowMultiplePhoneNumbersSNaPEnabled];

  v4 = IMSharedHelperNickNameEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = [MEMORY[0x1E69A5C10] sharedInstance];
      LOBYTE(v6) = [v5 iCloudSignedInToUseNicknames];
LABEL_9:

      return v6;
    }
  }

  else if (v4)
  {
    v5 = [MEMORY[0x1E69A5C10] sharedInstance];
    if ([v5 iCloudSignedInToUseNicknames])
    {
      v6 = [MEMORY[0x1E69A5C10] multiplePhoneNumbersTiedToAppleID] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    goto LABEL_9;
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)presentNicknameSharingSetupFlowWithMemoji:(BOOL)a3 forUserInitiatedEdit:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CKOnboardingController *)self _shouldShowNicknameOnboardingFlowIgnoringVersion:1];
  if (v7)
  {
    [(CKOnboardingController *)self setIsUserInitiatedEditNameAndPhoto:v4];
    [(CKOnboardingController *)self prepareForOnboarding];
    objc_initWeak(location, self);
    if (v5)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __89__CKOnboardingController_presentNicknameSharingSetupFlowWithMemoji_forUserInitiatedEdit___block_invoke;
      v15[3] = &unk_1E72EC460;
      objc_copyWeak(&v16, location);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __89__CKOnboardingController_presentNicknameSharingSetupFlowWithMemoji_forUserInitiatedEdit___block_invoke_2;
      v13[3] = &unk_1E72EC460;
      objc_copyWeak(&v14, location);
      [(CKOnboardingController *)self _presentMemojiCreationIfNeeded:v15 skipAction:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
    }

    else
    {
      v9 = [(CKOnboardingController *)self avatarRecord];

      if (v9)
      {
        v10 = [(CKOnboardingController *)self _nameAndPhotoSharingIntroController];
        [(CKOnboardingController *)self presentOnboarding:v10];
      }

      else
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __89__CKOnboardingController_presentNicknameSharingSetupFlowWithMemoji_forUserInitiatedEdit___block_invoke_3;
        v12[3] = &unk_1E72F3460;
        v12[4] = self;
        [(CKOnboardingController *)self _fetchMemojiWithCompletionBlock:v12];
      }
    }

    objc_destroyWeak(location);
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not showing onboarding flow for nicknames as feature is disabled or accounts mismatch", location, 2u);
    }
  }

  return v7;
}

void __89__CKOnboardingController_presentNicknameSharingSetupFlowWithMemoji_forUserInitiatedEdit___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 _memojiCreationController];
  [v2 presentOnboarding:v1];
}

void __89__CKOnboardingController_presentNicknameSharingSetupFlowWithMemoji_forUserInitiatedEdit___block_invoke_2(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 _nameAndPhotoSharingIntroController];
  [v2 presentOnboarding:v1];
}

void __89__CKOnboardingController_presentNicknameSharingSetupFlowWithMemoji_forUserInitiatedEdit___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAvatarRecord:?];
  v2 = *(a1 + 32);
  v3 = [v2 _nameAndPhotoSharingIntroController];
  [v2 presentOnboarding:v3];
}

- (void)presentNicknameOnboardingOrEditFlow
{
  v3 = [(CKOnboardingController *)self sharedProfileOnboardingController];

  if (!v3)
  {
    if (_ContactsUIForwardDeclareInit_onceToken != -1)
    {
      [CKOnboardingController presentNicknameOnboardingOrEditFlow];
    }

    v4 = [_CKCNSharedProfileOnboardingController alloc];
    v5 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v6 = [v5 getContactStore];
    v7 = [v4 initWithContactStore:v6];
    [(CKOnboardingController *)self setSharedProfileOnboardingController:v7];
  }

  v8 = [(CKOnboardingController *)self delegate];
  v10 = [v8 presentingViewControllerForOnboardingController:self];

  v9 = [(CKOnboardingController *)self sharedProfileOnboardingController];
  [v9 startOnboardingOrEditForMode:0 fromViewController:v10];
}

- (void)prepareForSuspend
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKOnboardingController *)self navigationController];
      v5 = [(CKOnboardingController *)self navigationController];
      v6 = [v5 presentingViewController];
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "prepareForSuspend for navigationController: %@ presentingViewController: %@", &v9, 0x16u);
    }
  }

  v7 = [(CKOnboardingController *)self navigationController];
  v8 = [v7 presentingViewController];
  [v8 dismissViewControllerAnimated:1 completion:0];
}

- (void)prepareForOnboarding
{
  if (_OnBoardingKitInit_onceToken != -1)
  {
    [CKOnboardingController prepareForOnboarding];
  }

  if (_AvatarUIInit_onceToken != -1)
  {
    [CKOnboardingController prepareForOnboarding];
  }

  if (_ContactsUIForwardDeclareInit_onceToken != -1)
  {
    [CKOnboardingController presentNicknameOnboardingOrEditFlow];
  }
}

- (void)presentOnboarding:(id)a3
{
  v4 = a3;
  v5 = [(CKOnboardingController *)self delegate];
  v6 = [v5 presentingViewControllerForOnboardingController:self];

  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_27;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "Onboarding: no presenting view controller!";
      v12 = buf;
      goto LABEL_19;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (_CKOBWelcomeController)
  {
    v7 = _CKOBBoldTrayButton == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || _CKOBLinkTrayButton == 0 || _CKOBWelcomeFullCenterContentController == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_27;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v30 = 0;
      v11 = "Onboarding: OnBoardingKit classes not linked!";
      v12 = &v30;
LABEL_19:
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, v11, v12, 2u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v4)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
    [(CKOnboardingController *)self setNavigationController:v13];

    v14 = [(CKOnboardingController *)self navigationController];
    [v14 setModalPresentationStyle:2];

    v15 = [(CKOnboardingController *)self navigationController];
    v16 = [v15 interactivePopGestureRecognizer];
    [v16 setEnabled:0];

    v17 = [(CKOnboardingController *)self navigationController];
    [v17 setModalInPresentation:0];

    v18 = [(CKOnboardingController *)self navigationController];
    v19 = [v18 navigationBar];
    v20 = objc_opt_new();
    [v19 setBackgroundImage:v20 forBarMetrics:0];

    v21 = [(CKOnboardingController *)self navigationController];
    v22 = [v21 navigationBar];
    [v22 _setHidesShadow:1];

    v23 = [(CKOnboardingController *)self navigationController];
    [v23 setDelegate:self];

    v24 = [(CKOnboardingController *)self navigationController];
    v25 = [v24 presentationController];
    [v25 setDelegate:self];

    v26 = [MEMORY[0x1E69DC938] currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (!v27)
    {
      v28 = [MEMORY[0x1E69DC938] currentDevice];
      [v28 setOrientation:1 animated:1];
    }

    if (+[CKOnboardingController _shouldShowSyndicationOnboardingFlowOnLaunch])
    {
      v29 = [(CKOnboardingController *)self navigationController];
      [v29 setNavigationBarHidden:1];
    }

    v10 = [(CKOnboardingController *)self navigationController];
    [v6 presentViewController:v10 animated:1 completion:0];
    goto LABEL_26;
  }

LABEL_27:
}

- (id)_introController
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"WHATS_NEW_IN_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];

  v5 = [[_CKOBWelcomeController alloc] initWithTitle:v4 detailText:0 icon:0];
  v6 = [_CKOBBoldTrayButton boldButton];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"CONTINUE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v6 setTitle:v8 forState:0];

  [v6 addTarget:self action:sel_pushMemojiCreationStepIfNeeded forControlEvents:64];
  v9 = [v5 buttonTray];
  [v9 addButton:v6];

  if (IMSharedHelperNickNameEnabled())
  {
    v10 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_NameAndPhoto"];
    v11 = [v10 imageWithRenderingMode:2];

    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"WHATS_NEW_NAME_AND_PHOTO_SHARING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"WHATS_NEW_NAME_AND_PHOTO_SHARING_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
    [v5 addBulletedListItemWithTitle:v13 description:v15 image:v11];
  }

  v16 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Memoji"];
  v17 = [v16 imageWithRenderingMode:2];

  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"WHATS_NEW_ANIMOJI_STICKER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:@"WHATS_NEW_ANIMOJI_STICKER_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v5 addBulletedListItemWithTitle:v19 description:v21 image:v17];

  v22 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Search"];

  v23 = [v22 imageWithRenderingMode:2];

  v24 = CKFrameworkBundle();
  v25 = [v24 localizedStringForKey:@"WHATS_NEW_LINK_AND_ATTACHMENT_SEARCH_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v26 = CKFrameworkBundle();
  v27 = [v26 localizedStringForKey:@"WHATS_NEW_LINK_AND_ATTACHMENT_SEARCH_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [v5 addBulletedListItemWithTitle:v25 description:v27 image:v23];

  return v5;
}

- (id)_rcsEncryptionOptInOnboardingController
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"RCS_ENCRYPTION_ONBOARDING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v5 = [[_CKOBWelcomeController alloc] initWithTitle:v4 detailText:0 icon:0];
  v6 = [_CKOBBoldTrayButton boldButton];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ENROLL" value:&stru_1F04268F8 table:@"ChatKit"];
  [v6 setTitle:v8 forState:0];

  [v6 addTarget:self action:sel__enrollInRCSEncryptionTest forControlEvents:64];
  v9 = [_CKOBBoldTrayButton boldButton];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SKIP" value:&stru_1F04268F8 table:@"ChatKit"];
  [v9 setTitle:v11 forState:0];

  [v9 addTarget:self action:sel_completedOnboarding forControlEvents:64];
  v12 = [v5 buttonTray];
  [v12 addButton:v6];

  v13 = [v5 buttonTray];
  [v13 addButton:v9];

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"RCS_ENCRYPTION_ONBOARDING_MESSAGE_TITLE_1" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = CKFrameworkBundle();
  v17 = [v16 localizedStringForKey:@"RCS_ENCRYPTION_ONBOARDING_MESSAGE_DESCRIPTION_1" value:&stru_1F04268F8 table:@"ChatKit"];
  [v5 addBulletedListItemWithTitle:v15 description:v17 symbolName:@"message.and.message.fill"];

  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"RCS_ENCRYPTION_ONBOARDING_MESSAGE_TITLE_2" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:@"RCS_ENCRYPTION_ONBOARDING_MESSAGE_DESCRIPTION_2" value:&stru_1F04268F8 table:@"ChatKit"];
  [v5 addBulletedListItemWithTitle:v19 description:v21 symbolName:@"info.circle.fill"];

  return v5;
}

- (void)_enrollInRCSEncryptionTest
{
  v3 = [(CKOnboardingController *)self _userDefaults];
  [v3 setBool:1 forKey:@"RCSEncryptionOptInTestEnabled"];

  [(CKOnboardingController *)self completedOnboarding];
}

- (void)startNicknameOnboardingIfNeeded
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CKOnboardingController_startNicknameOnboardingIfNeeded__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (+[CKOnboardingController alwaysShowNicknameOnboarding])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Always show nickname onboarding flag set, showing onboarding regardless of current nickname", buf, 2u);
      }
    }

    v3[2](v3);
  }

  else
  {
    v5 = [(CKOnboardingController *)self _nicknameController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__CKOnboardingController_startNicknameOnboardingIfNeeded__block_invoke_128;
    v6[3] = &unk_1E72F3488;
    v7 = v3;
    [v5 fetchPersonalNicknameWithCompletion:v6];
  }
}

void __57__CKOnboardingController_startNicknameOnboardingIfNeeded__block_invoke_128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "User has nickname, bailing from nickname onboarding", v7, 2u);
      }
    }
  }

  else
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Daemon didn't have nickname, showing onboarding", buf, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (BOOL)_alwaysShowAppleIntelligenceOnboarding
{
  v2 = [a1 _classUserDefaults];
  v3 = [v2 BOOLForKey:@"AlwaysShowAppleIntelligenceOnboarding"];

  return v3;
}

+ (int64_t)_lastShownAppleIntelligenceOnboardingVersion
{
  v2 = [a1 _classUserDefaults];
  v3 = [v2 integerForKey:@"LastShownAppleIntelligenceOnboardingVersion"];

  return v3;
}

- (void)_updateLastShownAppleIntelligenceOnboardingVersion
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(CKOnboardingController *)self _userDefaults];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 134217984;
      v5 = 1;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updating last shown Apple Intelligence onboarding version to %ld", &v4, 0xCu);
    }
  }

  [v2 setInteger:1 forKey:@"LastShownAppleIntelligenceOnboardingVersion"];
}

- (void)showAppleIntelligenceOnboardingStepIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[CKOnboardingController _shouldShowAppleIntelligenceOnboarding])
  {
    [(CKOnboardingController *)self _updateLastShownAppleIntelligenceOnboardingVersion];
    v3 = [(CKOnboardingController *)self _appleIntelligenceOnboardingController];
    v4 = [(CKOnboardingController *)self navigationController];
    v5 = IMOSLoggingEnabled();
    if (v4)
    {
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 138412290;
          v9 = v4;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Push apple intelligence onboarding, navigationController: %@", &v8, 0xCu);
        }
      }

      [(CKOnboardingController *)self _pushOnboardingViewController:v3 animated:1];
    }

    else
    {
      if (v5)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Present apple intelligence onboarding", &v8, 2u);
        }
      }

      [(CKOnboardingController *)self presentOnboarding:v3];
    }
  }

  else
  {

    [(CKOnboardingController *)self completedOnboarding];
  }
}

- (id)_appleIntelligenceIconImage
{
  v3 = +[CKUIBehavior sharedBehaviors];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentingViewControllerForOnboardingController:self];

  [v3 onBoardingKitWelcomeControllerHeaderViewIconSize];
  v7 = v6;
  v8 = [v5 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = objc_opt_new();
  [v11 setShape:0];
  [v11 setSize:{v7, v7}];
  [v11 setScale:v10];
  v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:@"com.apple.application-icon.apple-intelligence"];
  v13 = [v12 imageForDescriptor:v11];
  if ([v13 placeholder])
  {
    v14 = [v12 prepareImageForDescriptor:v11];

    v13 = v14;
  }

  v15 = [v13 CGImage];
  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15];

  return v16;
}

- (OBWelcomeController)_appleIntelligenceOnboardingController
{
  appleIntelligenceOnboardingController = self->_appleIntelligenceOnboardingController;
  if (!appleIntelligenceOnboardingController)
  {
    v27 = [(CKOnboardingController *)self _appleIntelligenceIconImage];
    v4 = CKFrameworkBundle();
    v26 = [v4 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v5 = [[_CKOBWelcomeController alloc] initWithTitle:v26 detailText:0 icon:v27 contentLayout:2];
    v6 = CKFrameworkBundle();
    v24 = [v6 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SUMMARIES_BULLET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v7 = CKFrameworkBundle();
    v23 = [v7 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SUMMARIES_BULLET_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v8 = CKFrameworkBundle();
    v25 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
    v22 = [MEMORY[0x1E69DCAB8] imageNamed:@"text.line.2.summary" inBundle:v8 withConfiguration:v25];
    v21 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(OBWelcomeController *)v5 addBulletedListItemWithTitle:v24 description:v23 image:v22 tintColor:v21];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SMART_REPLIES_BULLET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SMART_REPLIES_BULLET_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v13 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
    v14 = [MEMORY[0x1E69DCAB8] imageNamed:@"arrowshape.turn.up.left" inBundle:v8 withConfiguration:v13];
    [(OBWelcomeController *)v5 addBulletedListItemWithTitle:v10 description:v12 image:v14];
    v15 = [_CKOBBoldTrayButton boldButton];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_CONTINUE_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
    [v15 setTitle:v17 forState:0];

    [v15 addTarget:self action:sel_completedOnboarding forControlEvents:64];
    v18 = [(OBWelcomeController *)v5 buttonTray];
    [v18 addButton:v15];

    v19 = self->_appleIntelligenceOnboardingController;
    self->_appleIntelligenceOnboardingController = v5;

    appleIntelligenceOnboardingController = self->_appleIntelligenceOnboardingController;
  }

  return appleIntelligenceOnboardingController;
}

- (void)pushMemojiCreationStepIfNeeded
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CKOnboardingController_pushMemojiCreationStepIfNeeded__block_invoke;
  v5[3] = &unk_1E72EC460;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CKOnboardingController_pushMemojiCreationStepIfNeeded__block_invoke_2;
  v3[3] = &unk_1E72EC460;
  objc_copyWeak(&v4, &location);
  [(CKOnboardingController *)self _presentMemojiCreationIfNeeded:v5 skipAction:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__CKOnboardingController_pushMemojiCreationStepIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushMemojiCreationStep];
}

void __56__CKOnboardingController_pushMemojiCreationStepIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushNameAndPhotoSharingIntroStepIfNeeded];
}

- (void)_fetchMemojiWithCompletionBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    goto LABEL_5;
  }

  if (_fetchMemojiWithCompletionBlock___pred_AVTUIAreAvatarsSupportedAvatarUI != -1)
  {
    [CKOnboardingController _fetchMemojiWithCompletionBlock:];
  }

  if (_fetchMemojiWithCompletionBlock___AVTUIAreAvatarsSupported())
  {
LABEL_5:
    v5 = objc_alloc_init(_CKAVTAvatarStore);
    [(CKOnboardingController *)self setAvatarStore:v5];

    v6 = [_CKAVTAvatarFetchRequest requestForCustomAvatarsWithLimit:1];
    v7 = [(CKOnboardingController *)self avatarStore];

    if (v7 && v6)
    {
      v8 = [(CKOnboardingController *)self avatarStore];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__CKOnboardingController__fetchMemojiWithCompletionBlock___block_invoke_168;
      v12[3] = &unk_1E72F34B0;
      v13 = v4;
      [v8 fetchAvatarsForFetchRequest:v6 completionHandler:v12];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [(CKOnboardingController *)self avatarStore];
          *buf = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Onboarding: nil avatar store %@ or fetch request %@. Going to memoji creation flow.", buf, 0x16u);
        }
      }

      (*(v4 + 2))(v4, 1, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Running on device which does not support avatars. Skipping memoji creation.", buf, 2u);
      }
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

void *__58__CKOnboardingController__fetchMemojiWithCompletionBlock___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("AVTUIAreAvatarsSupported", @"AvatarUI");
  _fetchMemojiWithCompletionBlock___AVTUIAreAvatarsSupported = result;
  return result;
}

void __58__CKOnboardingController__fetchMemojiWithCompletionBlock___block_invoke_168(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CKOnboardingController__fetchMemojiWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E72ED1C8;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __58__CKOnboardingController__fetchMemojiWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    v6 = [*(a1 + 32) firstObject];
    (*(v3 + 16))(v3, 1, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 1, 0);
  }
}

- (void)_presentMemojiCreationIfNeeded:(id)a3 skipAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CKOnboardingController__presentMemojiCreationIfNeeded_skipAction___block_invoke;
  v10[3] = &unk_1E72F34D8;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(CKOnboardingController *)self _fetchMemojiWithCompletionBlock:v10];
}

uint64_t __68__CKOnboardingController__presentMemojiCreationIfNeeded_skipAction___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    [*(a1 + 32) setAvatarRecord:?];
    v4 = 40;
  }

  else
  {
    v4 = 48;
  }

  v5 = *(*(a1 + v4) + 16);

  return v5();
}

- (OBWelcomeFullCenterContentController)_memojiCreationController
{
  v45[2] = *MEMORY[0x1E69E9840];
  p_memojiCreationController = &self->_memojiCreationController;
  memojiCreationController = self->_memojiCreationController;
  if (memojiCreationController)
  {
    v4 = memojiCreationController;
  }

  else
  {
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"WHATS_NEW_MEMOJI_CREATION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"WHATS_NEW_MEMOJI_CREATION_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v42 = v9;
    v43 = v7;
    v4 = [[_CKOBWelcomeFullCenterContentController alloc] initWithTitle:v7 detailText:v9 symbolName:0 contentLayout:3];
    v10 = _CKAVTAvatarEditorSplashVideo();
    v11 = [MEMORY[0x1E6988100] playerWithPlayerItem:v10];
    [v11 setAllowsExternalPlayback:0];
    [(CKOnboardingController *)self setMemojiVideoPlayer:v11];
    v41 = v10;
    v12 = [MEMORY[0x1E69880E8] playerLooperWithPlayer:v11 templateItem:v10];
    [(CKOnboardingController *)self setMemojiVideoPlayerLooper:v12];

    v13 = objc_alloc_init(_CKAVPlayerViewController);
    v14 = [v13 view];
    v15 = [MEMORY[0x1E69DC888] clearColor];
    [v14 setBackgroundColor:v15];

    [v13 setPlayer:v11];
    [v13 setShowsPlaybackControls:0];
    [(OBWelcomeFullCenterContentController *)v4 addChildViewController:v13];
    v16 = [v13 view];
    [(OBWelcomeFullCenterContentController *)v4 setCenteredContentView:v16];

    v44 = [v13 view];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (!CKIsRunningInMacCatalyst())
    {
      v38 = [v44 leadingAnchor];
      v39 = [(OBWelcomeFullCenterContentController *)v4 view];
      v37 = [v39 leadingAnchor];
      v17 = [v38 constraintEqualToAnchor:v37];
      v45[0] = v17;
      v18 = [v44 trailingAnchor];
      v19 = [(OBWelcomeFullCenterContentController *)v4 view];
      v20 = [v19 trailingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      v45[1] = v21;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v22 = v40 = v11;

      [MEMORY[0x1E696ACD8] activateConstraints:v22];
      v23 = [v44 heightAnchor];
      v24 = [(OBWelcomeFullCenterContentController *)v4 view];
      v25 = [v24 widthAnchor];
      v26 = [v23 constraintEqualToAnchor:v25];

      LODWORD(v27) = 1132068864;
      [v26 setPriority:v27];
      [v26 setActive:1];

      v11 = v40;
    }

    v28 = [_CKOBBoldTrayButton boldButton];
    v29 = CKFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"GET_STARTED" value:&stru_1F04268F8 table:@"ChatKit"];
    [v28 setTitle:v30 forState:0];

    [v28 addTarget:self action:sel_presentMemojiSetup forControlEvents:64];
    v31 = [(OBWelcomeFullCenterContentController *)v4 buttonTray];
    [v31 addButton:v28];

    v32 = [_CKOBLinkTrayButton linkButton];
    v33 = CKFrameworkBundle();
    v34 = [v33 localizedStringForKey:@"WHATS_NEW_SETUP_LATER_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    [v32 setTitle:v34 forState:0];

    [v32 addTarget:self action:sel_pushNameAndPhotoSharingIntroStepIfNeeded forControlEvents:64];
    v35 = [(OBWelcomeFullCenterContentController *)v4 buttonTray];
    [v35 addButton:v32];

    objc_storeStrong(p_memojiCreationController, v4);
  }

  return v4;
}

- (void)pushMemojiCreationStep
{
  v4 = [(CKOnboardingController *)self _memojiCreationController];
  v3 = [(CKOnboardingController *)self navigationController];

  if (v3)
  {
    [(CKOnboardingController *)self _pushOnboardingViewController:v4 animated:1];
  }

  else
  {
    [(CKOnboardingController *)self presentOnboarding:v4];
  }

  _CKAVTUISetHasDisplayedSplashScreen(1);
}

- (void)presentMemojiSetup
{
  v3 = _CKAVTAvatarEditorViewController;
  v4 = [(CKOnboardingController *)self avatarStore];
  v5 = [v3 viewControllerForCreatingAvatarInStore:v4];

  [v5 setDelegate:self];
  [(CKOnboardingController *)self _pushOnboardingViewController:v5 animated:1];
}

- (id)contactForNicknameOnboarding
{
  v2 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v3 = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
  v4 = [v2 fetchMeContactWithKeys:v3];

  if (!v4)
  {
    v4 = +[CKMeCardSharingNameProvider nameContactForPrimaryAccount];
  }

  return v4;
}

- (id)_nameAndPhotoSharingIntroController
{
  v3 = CKFrameworkBundle();
  v26 = [v3 localizedStringForKey:@"WHATS_NEW_NAME_AND_PHOTO_SHARING_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v4 = CKFrameworkBundle();
  v25 = [v4 localizedStringForKey:@"WHATS_NEW_NAME_AND_PHOTO_SHARING_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v5 = [[CKNicknameIntroViewController alloc] initWithTitle:v26 detailText:v25 icon:0 contentLayout:1];
  v24 = [(CKOnboardingController *)self contactForNicknameOnboarding];
  v6 = [CKNicknamePreviewView alloc];
  v7 = [(CKOnboardingController *)self avatarRecord];
  v8 = [(CKNicknamePreviewView *)v6 initWithContact:v24 avatarRecord:v7];

  v9 = [(CKNicknamePreviewView *)v8 avatarItemProviderConfiguration];
  [(CKOnboardingController *)self setAvatarItemProviderConfiguration:v9];

  v10 = [(CKNicknameIntroViewController *)v5 contentView];
  [v10 addSubview:v8];

  [(CKNicknameIntroViewController *)v5 setNicknamePreviewView:v8];
  [(CKNicknamePreviewView *)v8 setNeedsLayout];
  [(CKNicknamePreviewView *)v8 layoutIfNeeded];
  [(CKNicknamePreviewView *)v8 sizeToFit];
  v11 = objc_alloc_init(CKOnboardingBoldButtonProvider);
  v12 = [(CKOnboardingBoldButtonProvider *)v11 boldButton];
  LODWORD(v10) = CKIsRunningInMacCatalyst();
  v13 = CKFrameworkBundle();
  v14 = v13;
  if (v10)
  {
    v15 = @"CONTINUE";
  }

  else
  {
    v15 = @"CHOOSE_NAME_AND_PHOTO";
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
  [v12 setTitle:v16 forState:0];

  [v12 addTarget:self action:sel_pushNameAndPhotoSharingConfigDataStep forControlEvents:64];
  v17 = [(CKNicknameIntroViewController *)v5 buttonTray];
  [v17 addButton:v12];

  v18 = [_CKOBLinkTrayButton linkButton];
  if (CKIsRunningInMacCatalyst())
  {
    v19 = @"WHATS_NEW_SETUP_LATER";
  }

  else
  {
    v19 = @"WHATS_NEW_SETUP_LATER_SETTINGS";
  }

  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:v19 value:&stru_1F04268F8 table:@"ChatKit"];
  [v18 setTitle:v21 forState:0];

  [v18 addTarget:self action:sel_showAppleIntelligenceOnboardingStepIfNeeded forControlEvents:64];
  v22 = [(CKNicknameIntroViewController *)v5 buttonTray];
  [v22 addButton:v18];

  return v5;
}

- (void)pushNameAndPhotoSharingIntroStepIfNeeded
{
  if ([(CKOnboardingController *)self _shouldShowNicknameOnboardingFlow]&& _CKCNSharingProfileOnboardingFlowManager)
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom])
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      v5 = [v4 userInterfaceIdiom] == 1;
    }

    else
    {
      v5 = 1;
    }

    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isNameAndPhotoC3Enabled];

    if (v7 && v5)
    {
      v8 = [(CKOnboardingController *)self delegate];
      v15 = [v8 presentingViewControllerForOnboardingController:self];

      v9 = [(CKOnboardingController *)self sharedProfileOnboardingController];

      if (!v9)
      {
        v10 = [_CKCNSharedProfileOnboardingController alloc];
        v11 = [MEMORY[0x1E69A7FD0] sharedInstance];
        v12 = [v11 getContactStore];
        v13 = [v10 initWithContactStore:v12];
        [(CKOnboardingController *)self setSharedProfileOnboardingController:v13];
      }

      v14 = [(CKOnboardingController *)self sharedProfileOnboardingController];
      [v14 presentOnboardingFlowIfNeededForMode:0 fromViewController:v15];
    }

    else
    {

      [(CKOnboardingController *)self pushNameAndPhotoSharingIntroStep];
    }
  }

  else
  {

    [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
  }
}

- (void)flowManager:(id)a3 didFinishWithResult:(id)a4
{
  v5 = a4;
  v6 = [(CKOnboardingController *)self _nicknameController];
  [v6 setPersonalNicknameFromOnboardingResult:v5];

  [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
}

- (void)pushNameAndPhotoSharingIntroStep
{
  v4 = [(CKOnboardingController *)self _nameAndPhotoSharingIntroController];
  v3 = [(CKOnboardingController *)self navigationController];

  if (v3)
  {
    [(CKOnboardingController *)self _pushOnboardingViewController:v4 animated:1];
  }

  else
  {
    [(CKOnboardingController *)self presentOnboarding:v4];
  }

  [(CKOnboardingController *)self _writeDefaultNicknameOnboardingVersion];
}

- (void)pushNameAndPhotoSharingConfigDataStep
{
  v11 = [(CKOnboardingController *)self contactForNicknameOnboarding];
  v3 = [CKMeCardSharingNameProvider nameProviderForContact:?];
  if (!v3)
  {
    v3 = +[CKMeCardSharingNameProvider nameProviderForPrimaryAccount];
  }

  v4 = [_CKCNSharingProfileOnboardingFlowManager alloc];
  v5 = [(CKOnboardingController *)self navigationController];
  v6 = [(CKOnboardingController *)self avatarRecord];
  v7 = [(CKOnboardingController *)self avatarItemProviderConfiguration];
  v8 = [v4 initWithNavigationController:v5 contact:v11 avatarRecord:v6 avatarItemProviderConfiguration:v7];

  [v8 setDelegate:self];
  if (v8)
  {
    v9 = [(CKOnboardingController *)self navigationController];
    [v9 setModalInPresentation:1];

    [(CKOnboardingController *)self setNicknameFlowManager:v8];
    v10 = [(CKOnboardingController *)self nicknameFlowManager];
    [v10 startFlow];
  }

  else
  {
    [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
  }
}

- (void)pushNameAndPhotoSharingConfigSharingPreferenceStep
{
  v3 = [(CKOnboardingController *)self _meCardSharingAudience];
  if (!v3)
  {
    v4 = [(CKOnboardingController *)self _meCardSharingState];
    v3 = 1;
    [v4 setSharingAudience:1];
  }

  v5 = [[_CKCNMeCardSharingOnboardingAudienceViewController alloc] initWithSelectedSharingAudience:v3];
  v6 = v5;
  if (v5)
  {
    [v5 setDelegate:self];
    [(CKOnboardingController *)self _pushOnboardingViewController:v6 animated:1];
  }

  else
  {
    [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
  }
}

- (void)_pushOnboardingViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(CKOnboardingController *)self navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 containsObject:v10];

  if ((v8 & 1) == 0)
  {
    v9 = [(CKOnboardingController *)self navigationController];
    [v9 pushViewController:v10 animated:v4];
  }
}

- (void)onboardCollaborationApps
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8288] sharedWithYouKeyExists];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Collaboration onboarding sharedWithYouKeyExists = %d", buf, 8u);
    }
  }

  if (v3)
  {
    if (!+[CKOnboardingController currentCollaborationOnboardingVersion])
    {
      [(CKOnboardingController *)self _writeDefaultCollaborationOnboardingVersion];
    }

    v5 = [MEMORY[0x1E69A8288] isSharedWithYouEnabled];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [MEMORY[0x1E69A8288] collaborationAppBundleIDs];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v7)
    {
      v9 = *v16;
      *&v8 = 67109378;
      v14 = v8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (([MEMORY[0x1E69A8288] isSharedWithYouSetUpForApplicationWithBundleID:{v11, v14}] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = v14;
                v20 = v5;
                v21 = 2112;
                v22 = v11;
                _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "App was not set up, setting Shared with You to %d for %@", buf, 0x12u);
              }
            }

            [MEMORY[0x1E69A8288] setSharedWithYouEnabled:v5 forApplicationWithBundleID:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Onboarding: sharedWithYouKey does not exist, skipping onboarding collaboration apps", buf, 2u);
    }
  }
}

- (OBWelcomeController)syndicationIntroController
{
  v55[4] = *MEMORY[0x1E69E9840];
  syndicationIntroController = self->_syndicationIntroController;
  if (!syndicationIntroController)
  {
    v4 = [[_CKOBWelcomeController alloc] initWithTitle:&stru_1F04268F8 detailText:&stru_1F04268F8 icon:0];
    v54 = objc_alloc_init(CKOnboardingBoldButtonProvider);
    v5 = [(CKOnboardingBoldButtonProvider *)v54 boldButton];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    [v5 setTitle:v7 forState:0];

    v53 = v5;
    [v5 addTarget:self action:sel_enableSyndication forControlEvents:64];
    v8 = [(OBWelcomeController *)v4 buttonTray];
    [v8 addButton:v5];

    v9 = [_CKOBLinkTrayButton linkButton];
    v10 = CKFrameworkBundle();
    v52 = [v10 localizedStringForKey:@"WHATS_NEW_SETUP_EDIT_SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];

    [v9 setTitle:v52 forState:0];
    v51 = v9;
    [v9 addTarget:self action:sel_setUpSyndicationLater forControlEvents:64];
    v11 = [(OBWelcomeController *)v4 buttonTray];
    [v11 addButton:v9];

    v12 = [(OBWelcomeController *)v4 buttonTray];
    [(CKOnboardingController *)self setButtonTray:v12];

    v13 = objc_alloc_init(CKSyndicationPageViewController);
    [(CKSyndicationPageViewController *)v13 setDelegate:self];
    [(OBWelcomeController *)v4 addChildViewController:v13];
    v14 = [(OBWelcomeController *)v4 view];
    v15 = [(CKSyndicationPageViewController *)v13 view];
    [v14 addSubview:v15];

    [(CKSyndicationPageViewController *)v13 didMoveToParentViewController:v4];
    v16 = [(OBWelcomeController *)v4 view];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(CKSyndicationPageViewController *)v13 view];
    [v25 setFrame:{v18, v20, v22, v24}];

    v41 = MEMORY[0x1E696ACD8];
    v50 = [(CKSyndicationPageViewController *)v13 view];
    v48 = [v50 topAnchor];
    v49 = [(OBWelcomeController *)v4 contentView];
    v47 = [v49 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v55[0] = v46;
    v45 = [(CKSyndicationPageViewController *)v13 view];
    v43 = [v45 centerXAnchor];
    v44 = [(OBWelcomeController *)v4 buttonTray];
    v42 = [v44 centerXAnchor];
    v40 = [v43 constraintEqualToAnchor:v42];
    v55[1] = v40;
    v39 = [(CKSyndicationPageViewController *)v13 view];
    v36 = [v39 widthAnchor];
    v37 = [(OBWelcomeController *)v4 contentView];
    v26 = [v37 widthAnchor];
    v27 = [v36 constraintEqualToAnchor:v26];
    v55[2] = v27;
    v28 = [(CKSyndicationPageViewController *)v13 view];
    v29 = [v28 bottomAnchor];
    v30 = [(OBWelcomeController *)v4 buttonTray];
    v31 = [v30 topAnchor];
    [v29 constraintEqualToAnchor:v31];
    v32 = v38 = self;
    v55[3] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    [v41 activateConstraints:v33];

    v34 = v38->_syndicationIntroController;
    v38->_syndicationIntroController = v4;

    syndicationIntroController = v38->_syndicationIntroController;
  }

  return syndicationIntroController;
}

- (void)pushSyndicationIntroStep
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(CKOnboardingController *)self syndicationIntroController];
  v4 = [(CKOnboardingController *)self navigationController];

  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(CKOnboardingController *)self navigationController];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Push Syndication onboarding, navigationController: %@", &v9, 0xCu);
      }
    }

    [(CKOnboardingController *)self _pushOnboardingViewController:v3 animated:1];
  }

  else
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Present Syndication onboarding", &v9, 2u);
      }
    }

    [(CKOnboardingController *)self presentOnboarding:v3];
  }
}

- (void)enableSyndication
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Enabling syndication for SharedWithYouEnabled and all apps", v4, 2u);
    }
  }

  [MEMORY[0x1E69A8288] setSharedWithYouEnabled:1];
  [(CKOnboardingController *)self initializeBundleIDsInAppPreferences:1];
  [(CKOnboardingController *)self _writeDefaultSyndicationOnboardingVersion];
  [(CKOnboardingController *)self completedOnboarding];
}

- (void)setUpSyndicationLater
{
  [(CKOnboardingController *)self enableSyndication];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=MESSAGES&path=SHARED_WITH_YOU_BUTTON"];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];

  [(CKOnboardingController *)self completedOnboarding];
}

- (void)initializeBundleIDsInAppPreferences:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA8];
  v5 = [MEMORY[0x1E69A8288] sharedManager];
  v6 = [v5 defaultAppBundleIDs];
  v7 = [v4 setWithArray:v6];

  v8 = [MEMORY[0x1E69A8288] collaborationAppBundleIDs];
  [v7 addObjectsFromArray:v8];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [MEMORY[0x1E69A8288] setSharedWithYouEnabled:v3 forApplicationWithBundleID:{*(*(&v14 + 1) + 8 * v13++), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = [a3 presentedViewController];
  v4 = [(CKOnboardingController *)self navigationController];
  if (v9 == v4)
  {
    v5 = [(CKOnboardingController *)self navigationController];
    v6 = [v5 viewControllers];
    v7 = [(CKOnboardingController *)self syndicationIntroController];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      [(CKOnboardingController *)self _writeDefaultSyndicationOnboardingVersion];

      [(CKOnboardingController *)self setSyndicationIntroController:0];
    }
  }

  else
  {
  }
}

- (void)completedOnboarding
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Onboarding completed", v4, 2u);
    }
  }

  [(CKOnboardingController *)self completedOnboardingWithCompletion:0];
}

- (void)completedOnboardingWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKOnboardingController *)self navigationController];
      v7 = [(CKOnboardingController *)self navigationController];
      v8 = [v7 presentingViewController];
      v9 = [(CKOnboardingController *)self presentingFromPrefs];
      v10 = @"NO";
      *v16 = 138412802;
      *&v16[4] = v6;
      *&v16[12] = 2112;
      if (v9)
      {
        v10 = @"YES";
      }

      *&v16[14] = v8;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Onboarding completed: dismissing navigationController: %@ presentingViewController: %@ fromPrefs: %@", v16, 0x20u);
    }
  }

  [(CKOnboardingController *)self setPendingMeCardSharingResult:0, *v16];
  v11 = [(CKOnboardingController *)self _userDefaults];
  v12 = [MEMORY[0x1E695DF00] now];
  [v11 setObject:v12 forKey:@"OnboardingFinishTime"];

  v13 = [(CKOnboardingController *)self navigationController];
  v14 = [v13 presentingViewController];
  [v14 dismissViewControllerAnimated:1 completion:v4];

  v15 = [(CKOnboardingController *)self delegate];
  [v15 onboardingControllerDidFinish:self];
}

+ (BOOL)_shouldPresentNewInMessages
{
  if ([a1 _isRunningTest])
  {
    return 0;
  }

  v3 = [a1 _classUserDefaults];
  v4 = [v3 BOOLForKey:@"DisableWhatsNewScreen"];

  if (v4)
  {
    return 0;
  }

  v6 = [a1 _classUserDefaults];
  v7 = [v6 BOOLForKey:@"AlwaysShowWhatsNewScreen"];

  v8 = [a1 _classUserDefaults];
  v9 = [v8 integerForKey:@"whatsNewInMessagesVersion"];

  if (v9 < [a1 _whatsNewLatestShippingVersion] || v9 > objc_msgSend(a1, "_whatsNewVersion"))
  {
    v9 = [a1 _whatsNewLatestShippingVersion];
  }

  return (v7 & 1) != 0 || v9 < [a1 _whatsNewVersion];
}

+ (BOOL)_isRunningTest
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 isRunningTest];

  return v3;
}

- (void)_writeDefaultWhatsNewDidShow
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[CKOnboardingController _whatsNewVersion];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Writing WhatsNewInMessagessVersion %ld", &v6, 0xCu);
    }
  }

  v5 = [(CKOnboardingController *)self _userDefaults];
  [v5 setInteger:v3 forKey:@"whatsNewInMessagesVersion"];
}

- (void)_writeDefaultNicknameOnboardingVersion
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134218242;
      v6 = 1;
      v7 = 2112;
      v8 = @"NicknameOnboardingVersion";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Writing %li for %@", &v5, 0x16u);
    }
  }

  v4 = [(CKOnboardingController *)self _userDefaults];
  [v4 setInteger:1 forKey:@"NicknameOnboardingVersion"];
}

- (void)_writeDefaultSyndicationOnboardingVersion
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134218242;
      v6 = 3;
      v7 = 2112;
      v8 = @"SyndicationOnboardingVersion";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Writing %li for %@", &v5, 0x16u);
    }
  }

  v4 = [(CKOnboardingController *)self _userDefaults];
  [v4 setInteger:3 forKey:@"SyndicationOnboardingVersion"];
}

- (void)_writeDefaultCollaborationOnboardingVersion
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134218242;
      v6 = 1;
      v7 = 2112;
      v8 = @"CollaborationOnboardingVersion";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Writing %li for %@", &v5, 0x16u);
    }
  }

  v4 = [(CKOnboardingController *)self _userDefaults];
  [v4 setInteger:1 forKey:@"CollaborationOnboardingVersion"];
}

- (BOOL)_meCardSharingEnabled
{
  v2 = [(CKOnboardingController *)self _meCardSharingState];
  v3 = [v2 sharingEnabled];

  return v3;
}

- (unint64_t)_meCardSharingNameFormat
{
  v2 = [(CKOnboardingController *)self _meCardSharingState];
  v3 = [v2 nameFormat];

  return v3;
}

- (unint64_t)_meCardSharingAudience
{
  v2 = [(CKOnboardingController *)self _meCardSharingState];
  v3 = [v2 sharingAudience];

  return v3;
}

- (void)sharingPickerDidFinish:(id)a3
{
  v7 = a3;
  if ([v7 sharingEnabled])
  {
    v4 = [(CKOnboardingController *)self _meCardSharingState];
    [v4 setSharingEnabled:{objc_msgSend(v7, "sharingEnabled")}];

    v5 = [(CKOnboardingController *)self _meCardSharingState];
    [v5 setSharingAudience:{objc_msgSend(v7, "selectedSharingAudience")}];

    v6 = [(CKOnboardingController *)self _meCardSharingState];
    [v6 setNameFormat:objc_msgSend(v7, "selectedNameFormat")];
  }

  [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
}

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  [(CKOnboardingController *)self setAvatarRecord:a4];

  [(CKOnboardingController *)self pushNameAndPhotoSharingIntroStepIfNeeded];
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v4 = [(CKOnboardingController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)meCardSharingOnboardingEditController:(id)a3 didFinishWithOnboardingResult:(id)a4
{
  [(CKOnboardingController *)self setPendingMeCardSharingResult:a4];

  [(CKOnboardingController *)self pushNameAndPhotoSharingConfigSharingPreferenceStep];
}

- (void)meCardSharingOnboardingAudienceViewControllerDidFinish:(id)a3 withSharingAudience:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CKOnboardingController *)self _meCardSharingState];
  [v7 setSharingEnabled:1];

  v8 = [(CKOnboardingController *)self _meCardSharingState];
  [v8 setSharingAudience:a4];

  v9 = [(CKOnboardingController *)self pendingMeCardSharingResult];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(CKOnboardingController *)self pendingMeCardSharingResult];
        v14 = 134218242;
        v15 = a4;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Sharing audience chosen: %lu, sharing enabled, uploading pending me card sharing result: %@", &v14, 0x16u);
      }
    }

    v12 = [(CKOnboardingController *)self _nicknameController];
    v13 = [(CKOnboardingController *)self pendingMeCardSharingResult];
    [v12 updatePersonalNicknameIfNecessaryWithMeCardSharingResult:v13];
  }

  [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  if (self->_memojiCreationController != a4)
  {
    v6 = [(CKOnboardingController *)self memojiVideoPlayer];
    [v6 pause];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  if (self->_memojiCreationController == a4)
  {
    v6 = [(CKOnboardingController *)self memojiVideoPlayer];
    [v6 play];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (CKOnboardingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end