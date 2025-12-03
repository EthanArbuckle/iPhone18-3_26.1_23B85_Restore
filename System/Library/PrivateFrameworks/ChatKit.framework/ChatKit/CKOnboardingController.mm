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
- (BOOL)_shouldShowNicknameOnboardingFlowIgnoringVersion:(BOOL)version;
- (BOOL)accountCanCreateNickname;
- (BOOL)presentNicknameSharingSetupFlowWithMemoji:(BOOL)memoji forUserInitiatedEdit:(BOOL)edit;
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
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (unint64_t)nicknameOnboardingLastShownVersion;
- (void)_enrollInRCSEncryptionTest;
- (void)_fetchMemojiWithCompletionBlock:(id)block;
- (void)_presentMemojiCreationIfNeeded:(id)needed skipAction:(id)action;
- (void)_pushOnboardingViewController:(id)controller animated:(BOOL)animated;
- (void)_updateLastShownAppleIntelligenceOnboardingVersion;
- (void)_writeDefaultCollaborationOnboardingVersion;
- (void)_writeDefaultNicknameOnboardingVersion;
- (void)_writeDefaultSyndicationOnboardingVersion;
- (void)_writeDefaultWhatsNewDidShow;
- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record;
- (void)avatarEditorViewControllerDidCancel:(id)cancel;
- (void)completedOnboarding;
- (void)completedOnboardingWithCompletion:(id)completion;
- (void)dealloc;
- (void)enableSyndication;
- (void)flowManager:(id)manager didFinishWithResult:(id)result;
- (void)initializeBundleIDsInAppPreferences:(BOOL)preferences;
- (void)meCardSharingOnboardingAudienceViewControllerDidFinish:(id)finish withSharingAudience:(unint64_t)audience;
- (void)meCardSharingOnboardingEditController:(id)controller didFinishWithOnboardingResult:(id)result;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)onboardCollaborationApps;
- (void)prepareForOnboarding;
- (void)prepareForSuspend;
- (void)presentMemojiSetup;
- (void)presentNicknameOnboardingOrEditFlow;
- (void)presentOnboarding:(id)onboarding;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)pushMemojiCreationStep;
- (void)pushMemojiCreationStepIfNeeded;
- (void)pushNameAndPhotoSharingConfigDataStep;
- (void)pushNameAndPhotoSharingConfigSharingPreferenceStep;
- (void)pushNameAndPhotoSharingIntroStep;
- (void)pushNameAndPhotoSharingIntroStepIfNeeded;
- (void)pushSyndicationIntroStep;
- (void)setUpSyndicationLater;
- (void)sharingPickerDidFinish:(id)finish;
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
    _introController = [(CKOnboardingController *)self _introController];
    [(CKOnboardingController *)self presentOnboarding:_introController];

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

    delegate = [(CKOnboardingController *)self delegate];
    _userDefaults = [delegate presentingViewControllerForOnboardingController:self];

    if (([_userDefaults interfaceOrientation] - 1) < 2 || (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "userInterfaceIdiom"), v11, v12))
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
    _rcsEncryptionOptInOnboardingController = [(CKOnboardingController *)self _rcsEncryptionOptInOnboardingController];
    [(CKOnboardingController *)self presentOnboarding:_rcsEncryptionOptInOnboardingController];

    _userDefaults = [(CKOnboardingController *)self _userDefaults];
    v6 = 1;
    [_userDefaults setBool:1 forKey:@"didShowRCSEncryptionOptInOnboarding"];
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
  if ([self _shouldPresentNewInMessages] & 1) != 0 || (objc_msgSend(self, "_shouldShowNicknameOnboardingFlowOnLaunch") & 1) != 0 || (objc_msgSend(self, "_shouldShowSyndicationOnboardingFlowOnLaunch") & 1) != 0 || (objc_msgSend(self, "_shouldOnboardCollaborationApps") & 1) != 0 || (objc_msgSend(self, "_shouldShowAppleIntelligenceOnboarding"))
  {
    return 1;
  }

  return [self _shouldShowRCSEncryptionOptInOnboarding];
}

+ (BOOL)alwaysShowNicknameOnboarding
{
  _classUserDefaults = [self _classUserDefaults];
  v3 = [_classUserDefaults BOOLForKey:@"AlwaysShowNicknameOnboarding"];

  return v3;
}

- (unint64_t)nicknameOnboardingLastShownVersion
{
  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  v3 = [_userDefaults integerForKey:@"NicknameOnboardingVersion"];

  return v3;
}

- (BOOL)_shouldShowNicknameOnboardingFlowIgnoringVersion:(BOOL)version
{
  if (+[CKOnboardingController _isRunningTest])
  {
    return 0;
  }

  if (+[CKOnboardingController alwaysShowNicknameOnboarding]|| [(CKOnboardingController *)self isUserInitiatedEditNameAndPhoto])
  {
    return 1;
  }

  if (!version && [(CKOnboardingController *)self nicknameOnboardingLastShownVersion])
  {
    return 0;
  }

  return [(CKOnboardingController *)self accountCanCreateNickname];
}

+ (BOOL)alwaysShowSyndicationOnboarding
{
  _classUserDefaults = [self _classUserDefaults];
  v3 = [_classUserDefaults BOOLForKey:@"AlwaysShowSyndicationOnboarding"];

  return v3;
}

+ (unint64_t)syndicationOnboardingLastShownVersion
{
  _classUserDefaults = [self _classUserDefaults];
  v3 = [_classUserDefaults integerForKey:@"SyndicationOnboardingVersion"];

  return v3;
}

+ (int64_t)currentCollaborationOnboardingVersion
{
  _classUserDefaults = [self _classUserDefaults];
  v3 = [_classUserDefaults integerForKey:@"CollaborationOnboardingVersion"];

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

  if (([self _isRunningTest] & 1) != 0 || !CKIsRunningInMessages())
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

  if ([self alwaysShowSyndicationOnboarding])
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
    syndicationOnboardingLastShownVersion = [self syndicationOnboardingLastShownVersion];
    mEMORY[0x1E69A8288] = [MEMORY[0x1E69A8288] sharedWithYouKeyExists];
    if (syndicationOnboardingLastShownVersion < 3)
    {
      v4 = 1;
    }

    else
    {
      v4 = mEMORY[0x1E69A8288] ^ 1;
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

        if (mEMORY[0x1E69A8288])
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
        if (syndicationOnboardingLastShownVersion < 3)
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
  if (([self _isRunningTest] & 1) != 0 || !CKIsRunningInMessages())
  {
    v4 = 0;
  }

  else
  {
    currentCollaborationOnboardingVersion = [self currentCollaborationOnboardingVersion];
    v4 = (currentCollaborationOnboardingVersion < 1) | [MEMORY[0x1E69A8288] defaultCollaborationAppsEnabled] ^ 1;
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
        v11 = currentCollaborationOnboardingVersion;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "shouldOnboard: %@ collaborationOnboardingVersion = %lu", &v8, 0x16u);
      }
    }
  }

  return v4 & 1;
}

+ (BOOL)_shouldShowRCSEncryptionOptInOnboarding
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (([mEMORY[0x1E69A60F0] isInternalInstall] & 1) == 0)
  {

    return 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRCSEncryptionOptInTestEnabled = [mEMORY[0x1E69A8070] isRCSEncryptionOptInTestEnabled];

  if (!isRCSEncryptionOptInTestEnabled)
  {
    return 0;
  }

  _classUserDefaults = [self _classUserDefaults];
  v7 = [_classUserDefaults BOOLForKey:@"didShowRCSEncryptionOptInOnboarding"];

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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAllowMultiplePhoneNumbersSNaPEnabled = [mEMORY[0x1E69A8070] isAllowMultiplePhoneNumbersSNaPEnabled];

  v4 = IMSharedHelperNickNameEnabled();
  if (isAllowMultiplePhoneNumbersSNaPEnabled)
  {
    if (v4)
    {
      mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
      LOBYTE(v6) = [mEMORY[0x1E69A5C10] iCloudSignedInToUseNicknames];
LABEL_9:

      return v6;
    }
  }

  else if (v4)
  {
    mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
    if ([mEMORY[0x1E69A5C10] iCloudSignedInToUseNicknames])
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

- (BOOL)presentNicknameSharingSetupFlowWithMemoji:(BOOL)memoji forUserInitiatedEdit:(BOOL)edit
{
  editCopy = edit;
  memojiCopy = memoji;
  v7 = [(CKOnboardingController *)self _shouldShowNicknameOnboardingFlowIgnoringVersion:1];
  if (v7)
  {
    [(CKOnboardingController *)self setIsUserInitiatedEditNameAndPhoto:editCopy];
    [(CKOnboardingController *)self prepareForOnboarding];
    objc_initWeak(location, self);
    if (memojiCopy)
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
      avatarRecord = [(CKOnboardingController *)self avatarRecord];

      if (avatarRecord)
      {
        _nameAndPhotoSharingIntroController = [(CKOnboardingController *)self _nameAndPhotoSharingIntroController];
        [(CKOnboardingController *)self presentOnboarding:_nameAndPhotoSharingIntroController];
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
  sharedProfileOnboardingController = [(CKOnboardingController *)self sharedProfileOnboardingController];

  if (!sharedProfileOnboardingController)
  {
    if (_ContactsUIForwardDeclareInit_onceToken != -1)
    {
      [CKOnboardingController presentNicknameOnboardingOrEditFlow];
    }

    v4 = [_CKCNSharedProfileOnboardingController alloc];
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];
    v7 = [v4 initWithContactStore:getContactStore];
    [(CKOnboardingController *)self setSharedProfileOnboardingController:v7];
  }

  delegate = [(CKOnboardingController *)self delegate];
  v10 = [delegate presentingViewControllerForOnboardingController:self];

  sharedProfileOnboardingController2 = [(CKOnboardingController *)self sharedProfileOnboardingController];
  [sharedProfileOnboardingController2 startOnboardingOrEditForMode:0 fromViewController:v10];
}

- (void)prepareForSuspend
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      navigationController = [(CKOnboardingController *)self navigationController];
      navigationController2 = [(CKOnboardingController *)self navigationController];
      presentingViewController = [navigationController2 presentingViewController];
      v9 = 138412546;
      v10 = navigationController;
      v11 = 2112;
      v12 = presentingViewController;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "prepareForSuspend for navigationController: %@ presentingViewController: %@", &v9, 0x16u);
    }
  }

  navigationController3 = [(CKOnboardingController *)self navigationController];
  presentingViewController2 = [navigationController3 presentingViewController];
  [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
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

- (void)presentOnboarding:(id)onboarding
{
  onboardingCopy = onboarding;
  delegate = [(CKOnboardingController *)self delegate];
  v6 = [delegate presentingViewControllerForOnboardingController:self];

  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_27;
    }

    navigationController9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(navigationController9, OS_LOG_TYPE_INFO))
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

    navigationController9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(navigationController9, OS_LOG_TYPE_INFO))
    {
      v30 = 0;
      v11 = "Onboarding: OnBoardingKit classes not linked!";
      v12 = &v30;
LABEL_19:
      _os_log_impl(&dword_19020E000, navigationController9, OS_LOG_TYPE_INFO, v11, v12, 2u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (onboardingCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:onboardingCopy];
    [(CKOnboardingController *)self setNavigationController:v13];

    navigationController = [(CKOnboardingController *)self navigationController];
    [navigationController setModalPresentationStyle:2];

    navigationController2 = [(CKOnboardingController *)self navigationController];
    interactivePopGestureRecognizer = [navigationController2 interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setEnabled:0];

    navigationController3 = [(CKOnboardingController *)self navigationController];
    [navigationController3 setModalInPresentation:0];

    navigationController4 = [(CKOnboardingController *)self navigationController];
    navigationBar = [navigationController4 navigationBar];
    v20 = objc_opt_new();
    [navigationBar setBackgroundImage:v20 forBarMetrics:0];

    navigationController5 = [(CKOnboardingController *)self navigationController];
    navigationBar2 = [navigationController5 navigationBar];
    [navigationBar2 _setHidesShadow:1];

    navigationController6 = [(CKOnboardingController *)self navigationController];
    [navigationController6 setDelegate:self];

    navigationController7 = [(CKOnboardingController *)self navigationController];
    presentationController = [navigationController7 presentationController];
    [presentationController setDelegate:self];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      [currentDevice2 setOrientation:1 animated:1];
    }

    if (+[CKOnboardingController _shouldShowSyndicationOnboardingFlowOnLaunch])
    {
      navigationController8 = [(CKOnboardingController *)self navigationController];
      [navigationController8 setNavigationBarHidden:1];
    }

    navigationController9 = [(CKOnboardingController *)self navigationController];
    [v6 presentViewController:navigationController9 animated:1 completion:0];
    goto LABEL_26;
  }

LABEL_27:
}

- (id)_introController
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"WHATS_NEW_IN_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];

  v5 = [[_CKOBWelcomeController alloc] initWithTitle:v4 detailText:0 icon:0];
  boldButton = [_CKOBBoldTrayButton boldButton];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"CONTINUE" value:&stru_1F04268F8 table:@"ChatKit"];
  [boldButton setTitle:v8 forState:0];

  [boldButton addTarget:self action:sel_pushMemojiCreationStepIfNeeded forControlEvents:64];
  buttonTray = [v5 buttonTray];
  [buttonTray addButton:boldButton];

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
  boldButton = [_CKOBBoldTrayButton boldButton];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ENROLL" value:&stru_1F04268F8 table:@"ChatKit"];
  [boldButton setTitle:v8 forState:0];

  [boldButton addTarget:self action:sel__enrollInRCSEncryptionTest forControlEvents:64];
  boldButton2 = [_CKOBBoldTrayButton boldButton];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SKIP" value:&stru_1F04268F8 table:@"ChatKit"];
  [boldButton2 setTitle:v11 forState:0];

  [boldButton2 addTarget:self action:sel_completedOnboarding forControlEvents:64];
  buttonTray = [v5 buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [v5 buttonTray];
  [buttonTray2 addButton:boldButton2];

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
  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  [_userDefaults setBool:1 forKey:@"RCSEncryptionOptInTestEnabled"];

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
    _nicknameController = [(CKOnboardingController *)self _nicknameController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__CKOnboardingController_startNicknameOnboardingIfNeeded__block_invoke_128;
    v6[3] = &unk_1E72F3488;
    v7 = v3;
    [_nicknameController fetchPersonalNicknameWithCompletion:v6];
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
  _classUserDefaults = [self _classUserDefaults];
  v3 = [_classUserDefaults BOOLForKey:@"AlwaysShowAppleIntelligenceOnboarding"];

  return v3;
}

+ (int64_t)_lastShownAppleIntelligenceOnboardingVersion
{
  _classUserDefaults = [self _classUserDefaults];
  v3 = [_classUserDefaults integerForKey:@"LastShownAppleIntelligenceOnboardingVersion"];

  return v3;
}

- (void)_updateLastShownAppleIntelligenceOnboardingVersion
{
  v6 = *MEMORY[0x1E69E9840];
  _userDefaults = [(CKOnboardingController *)self _userDefaults];
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

  [_userDefaults setInteger:1 forKey:@"LastShownAppleIntelligenceOnboardingVersion"];
}

- (void)showAppleIntelligenceOnboardingStepIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[CKOnboardingController _shouldShowAppleIntelligenceOnboarding])
  {
    [(CKOnboardingController *)self _updateLastShownAppleIntelligenceOnboardingVersion];
    _appleIntelligenceOnboardingController = [(CKOnboardingController *)self _appleIntelligenceOnboardingController];
    navigationController = [(CKOnboardingController *)self navigationController];
    v5 = IMOSLoggingEnabled();
    if (navigationController)
    {
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 138412290;
          v9 = navigationController;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Push apple intelligence onboarding, navigationController: %@", &v8, 0xCu);
        }
      }

      [(CKOnboardingController *)self _pushOnboardingViewController:_appleIntelligenceOnboardingController animated:1];
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

      [(CKOnboardingController *)self presentOnboarding:_appleIntelligenceOnboardingController];
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
  traitCollection = [v5 traitCollection];
  [traitCollection displayScale];
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

  cGImage = [v13 CGImage];
  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImage];

  return v16;
}

- (OBWelcomeController)_appleIntelligenceOnboardingController
{
  appleIntelligenceOnboardingController = self->_appleIntelligenceOnboardingController;
  if (!appleIntelligenceOnboardingController)
  {
    _appleIntelligenceIconImage = [(CKOnboardingController *)self _appleIntelligenceIconImage];
    v4 = CKFrameworkBundle();
    v26 = [v4 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v5 = [[_CKOBWelcomeController alloc] initWithTitle:v26 detailText:0 icon:_appleIntelligenceIconImage contentLayout:2];
    v6 = CKFrameworkBundle();
    v24 = [v6 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SUMMARIES_BULLET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v7 = CKFrameworkBundle();
    v23 = [v7 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SUMMARIES_BULLET_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v8 = CKFrameworkBundle();
    configurationPreferringMulticolor = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
    v22 = [MEMORY[0x1E69DCAB8] imageNamed:@"text.line.2.summary" inBundle:v8 withConfiguration:configurationPreferringMulticolor];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(OBWelcomeController *)v5 addBulletedListItemWithTitle:v24 description:v23 image:v22 tintColor:tertiaryLabelColor];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SMART_REPLIES_BULLET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_MESSAGE_SMART_REPLIES_BULLET_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

    configurationPreferringMulticolor2 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
    v14 = [MEMORY[0x1E69DCAB8] imageNamed:@"arrowshape.turn.up.left" inBundle:v8 withConfiguration:configurationPreferringMulticolor2];
    [(OBWelcomeController *)v5 addBulletedListItemWithTitle:v10 description:v12 image:v14];
    boldButton = [_CKOBBoldTrayButton boldButton];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"APPLE_INTELLIGENCE_ONBOARDING_CONTINUE_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
    [boldButton setTitle:v17 forState:0];

    [boldButton addTarget:self action:sel_completedOnboarding forControlEvents:64];
    buttonTray = [(OBWelcomeController *)v5 buttonTray];
    [buttonTray addButton:boldButton];

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

- (void)_fetchMemojiWithCompletionBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
    avatarStore = [(CKOnboardingController *)self avatarStore];

    if (avatarStore && v6)
    {
      avatarStore2 = [(CKOnboardingController *)self avatarStore];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__CKOnboardingController__fetchMemojiWithCompletionBlock___block_invoke_168;
      v12[3] = &unk_1E72F34B0;
      v13 = blockCopy;
      [avatarStore2 fetchAvatarsForFetchRequest:v6 completionHandler:v12];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          avatarStore3 = [(CKOnboardingController *)self avatarStore];
          *buf = 138412546;
          v15 = avatarStore3;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Onboarding: nil avatar store %@ or fetch request %@. Going to memoji creation flow.", buf, 0x16u);
        }
      }

      (*(blockCopy + 2))(blockCopy, 1, 0);
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

    (*(blockCopy + 2))(blockCopy, 0, 0);
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

- (void)_presentMemojiCreationIfNeeded:(id)needed skipAction:(id)action
{
  neededCopy = needed;
  actionCopy = action;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CKOnboardingController__presentMemojiCreationIfNeeded_skipAction___block_invoke;
  v10[3] = &unk_1E72F34D8;
  v10[4] = self;
  v11 = actionCopy;
  v12 = neededCopy;
  v8 = neededCopy;
  v9 = actionCopy;
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
    view = [v13 view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];

    [v13 setPlayer:v11];
    [v13 setShowsPlaybackControls:0];
    [(OBWelcomeFullCenterContentController *)v4 addChildViewController:v13];
    view2 = [v13 view];
    [(OBWelcomeFullCenterContentController *)v4 setCenteredContentView:view2];

    view3 = [v13 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (!CKIsRunningInMacCatalyst())
    {
      leadingAnchor = [view3 leadingAnchor];
      view4 = [(OBWelcomeFullCenterContentController *)v4 view];
      leadingAnchor2 = [view4 leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v45[0] = v17;
      trailingAnchor = [view3 trailingAnchor];
      view5 = [(OBWelcomeFullCenterContentController *)v4 view];
      trailingAnchor2 = [view5 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v45[1] = v21;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v22 = v40 = v11;

      [MEMORY[0x1E696ACD8] activateConstraints:v22];
      heightAnchor = [view3 heightAnchor];
      view6 = [(OBWelcomeFullCenterContentController *)v4 view];
      widthAnchor = [view6 widthAnchor];
      v26 = [heightAnchor constraintEqualToAnchor:widthAnchor];

      LODWORD(v27) = 1132068864;
      [v26 setPriority:v27];
      [v26 setActive:1];

      v11 = v40;
    }

    boldButton = [_CKOBBoldTrayButton boldButton];
    v29 = CKFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"GET_STARTED" value:&stru_1F04268F8 table:@"ChatKit"];
    [boldButton setTitle:v30 forState:0];

    [boldButton addTarget:self action:sel_presentMemojiSetup forControlEvents:64];
    buttonTray = [(OBWelcomeFullCenterContentController *)v4 buttonTray];
    [buttonTray addButton:boldButton];

    linkButton = [_CKOBLinkTrayButton linkButton];
    v33 = CKFrameworkBundle();
    v34 = [v33 localizedStringForKey:@"WHATS_NEW_SETUP_LATER_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    [linkButton setTitle:v34 forState:0];

    [linkButton addTarget:self action:sel_pushNameAndPhotoSharingIntroStepIfNeeded forControlEvents:64];
    buttonTray2 = [(OBWelcomeFullCenterContentController *)v4 buttonTray];
    [buttonTray2 addButton:linkButton];

    objc_storeStrong(p_memojiCreationController, v4);
  }

  return v4;
}

- (void)pushMemojiCreationStep
{
  _memojiCreationController = [(CKOnboardingController *)self _memojiCreationController];
  navigationController = [(CKOnboardingController *)self navigationController];

  if (navigationController)
  {
    [(CKOnboardingController *)self _pushOnboardingViewController:_memojiCreationController animated:1];
  }

  else
  {
    [(CKOnboardingController *)self presentOnboarding:_memojiCreationController];
  }

  _CKAVTUISetHasDisplayedSplashScreen(1);
}

- (void)presentMemojiSetup
{
  v3 = _CKAVTAvatarEditorViewController;
  avatarStore = [(CKOnboardingController *)self avatarStore];
  v5 = [v3 viewControllerForCreatingAvatarInStore:avatarStore];

  [v5 setDelegate:self];
  [(CKOnboardingController *)self _pushOnboardingViewController:v5 animated:1];
}

- (id)contactForNicknameOnboarding
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  keysForNicknameHandling = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
  v4 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:keysForNicknameHandling];

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
  contactForNicknameOnboarding = [(CKOnboardingController *)self contactForNicknameOnboarding];
  v6 = [CKNicknamePreviewView alloc];
  avatarRecord = [(CKOnboardingController *)self avatarRecord];
  v8 = [(CKNicknamePreviewView *)v6 initWithContact:contactForNicknameOnboarding avatarRecord:avatarRecord];

  avatarItemProviderConfiguration = [(CKNicknamePreviewView *)v8 avatarItemProviderConfiguration];
  [(CKOnboardingController *)self setAvatarItemProviderConfiguration:avatarItemProviderConfiguration];

  contentView = [(CKNicknameIntroViewController *)v5 contentView];
  [contentView addSubview:v8];

  [(CKNicknameIntroViewController *)v5 setNicknamePreviewView:v8];
  [(CKNicknamePreviewView *)v8 setNeedsLayout];
  [(CKNicknamePreviewView *)v8 layoutIfNeeded];
  [(CKNicknamePreviewView *)v8 sizeToFit];
  v11 = objc_alloc_init(CKOnboardingBoldButtonProvider);
  boldButton = [(CKOnboardingBoldButtonProvider *)v11 boldButton];
  LODWORD(contentView) = CKIsRunningInMacCatalyst();
  v13 = CKFrameworkBundle();
  v14 = v13;
  if (contentView)
  {
    v15 = @"CONTINUE";
  }

  else
  {
    v15 = @"CHOOSE_NAME_AND_PHOTO";
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
  [boldButton setTitle:v16 forState:0];

  [boldButton addTarget:self action:sel_pushNameAndPhotoSharingConfigDataStep forControlEvents:64];
  buttonTray = [(CKNicknameIntroViewController *)v5 buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [_CKOBLinkTrayButton linkButton];
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
  [linkButton setTitle:v21 forState:0];

  [linkButton addTarget:self action:sel_showAppleIntelligenceOnboardingStepIfNeeded forControlEvents:64];
  buttonTray2 = [(CKNicknameIntroViewController *)v5 buttonTray];
  [buttonTray2 addButton:linkButton];

  return v5;
}

- (void)pushNameAndPhotoSharingIntroStepIfNeeded
{
  if ([(CKOnboardingController *)self _shouldShowNicknameOnboardingFlow]&& _CKCNSharingProfileOnboardingFlowManager)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      v5 = [currentDevice2 userInterfaceIdiom] == 1;
    }

    else
    {
      v5 = 1;
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

    if (isNameAndPhotoC3Enabled && v5)
    {
      delegate = [(CKOnboardingController *)self delegate];
      v15 = [delegate presentingViewControllerForOnboardingController:self];

      sharedProfileOnboardingController = [(CKOnboardingController *)self sharedProfileOnboardingController];

      if (!sharedProfileOnboardingController)
      {
        v10 = [_CKCNSharedProfileOnboardingController alloc];
        mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
        getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];
        v13 = [v10 initWithContactStore:getContactStore];
        [(CKOnboardingController *)self setSharedProfileOnboardingController:v13];
      }

      sharedProfileOnboardingController2 = [(CKOnboardingController *)self sharedProfileOnboardingController];
      [sharedProfileOnboardingController2 presentOnboardingFlowIfNeededForMode:0 fromViewController:v15];
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

- (void)flowManager:(id)manager didFinishWithResult:(id)result
{
  resultCopy = result;
  _nicknameController = [(CKOnboardingController *)self _nicknameController];
  [_nicknameController setPersonalNicknameFromOnboardingResult:resultCopy];

  [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
}

- (void)pushNameAndPhotoSharingIntroStep
{
  _nameAndPhotoSharingIntroController = [(CKOnboardingController *)self _nameAndPhotoSharingIntroController];
  navigationController = [(CKOnboardingController *)self navigationController];

  if (navigationController)
  {
    [(CKOnboardingController *)self _pushOnboardingViewController:_nameAndPhotoSharingIntroController animated:1];
  }

  else
  {
    [(CKOnboardingController *)self presentOnboarding:_nameAndPhotoSharingIntroController];
  }

  [(CKOnboardingController *)self _writeDefaultNicknameOnboardingVersion];
}

- (void)pushNameAndPhotoSharingConfigDataStep
{
  contactForNicknameOnboarding = [(CKOnboardingController *)self contactForNicknameOnboarding];
  v3 = [CKMeCardSharingNameProvider nameProviderForContact:?];
  if (!v3)
  {
    v3 = +[CKMeCardSharingNameProvider nameProviderForPrimaryAccount];
  }

  v4 = [_CKCNSharingProfileOnboardingFlowManager alloc];
  navigationController = [(CKOnboardingController *)self navigationController];
  avatarRecord = [(CKOnboardingController *)self avatarRecord];
  avatarItemProviderConfiguration = [(CKOnboardingController *)self avatarItemProviderConfiguration];
  v8 = [v4 initWithNavigationController:navigationController contact:contactForNicknameOnboarding avatarRecord:avatarRecord avatarItemProviderConfiguration:avatarItemProviderConfiguration];

  [v8 setDelegate:self];
  if (v8)
  {
    navigationController2 = [(CKOnboardingController *)self navigationController];
    [navigationController2 setModalInPresentation:1];

    [(CKOnboardingController *)self setNicknameFlowManager:v8];
    nicknameFlowManager = [(CKOnboardingController *)self nicknameFlowManager];
    [nicknameFlowManager startFlow];
  }

  else
  {
    [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
  }
}

- (void)pushNameAndPhotoSharingConfigSharingPreferenceStep
{
  _meCardSharingAudience = [(CKOnboardingController *)self _meCardSharingAudience];
  if (!_meCardSharingAudience)
  {
    _meCardSharingState = [(CKOnboardingController *)self _meCardSharingState];
    _meCardSharingAudience = 1;
    [_meCardSharingState setSharingAudience:1];
  }

  v5 = [[_CKCNMeCardSharingOnboardingAudienceViewController alloc] initWithSelectedSharingAudience:_meCardSharingAudience];
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

- (void)_pushOnboardingViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationController = [(CKOnboardingController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers containsObject:controllerCopy];

  if ((v8 & 1) == 0)
  {
    navigationController2 = [(CKOnboardingController *)self navigationController];
    [navigationController2 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)onboardCollaborationApps
{
  v24 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8288] = [MEMORY[0x1E69A8288] sharedWithYouKeyExists];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = mEMORY[0x1E69A8288];
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Collaboration onboarding sharedWithYouKeyExists = %d", buf, 8u);
    }
  }

  if (mEMORY[0x1E69A8288])
  {
    if (!+[CKOnboardingController currentCollaborationOnboardingVersion])
    {
      [(CKOnboardingController *)self _writeDefaultCollaborationOnboardingVersion];
    }

    isSharedWithYouEnabled = [MEMORY[0x1E69A8288] isSharedWithYouEnabled];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    collaborationAppBundleIDs = [MEMORY[0x1E69A8288] collaborationAppBundleIDs];
    v7 = [collaborationAppBundleIDs countByEnumeratingWithState:&v15 objects:v23 count:16];
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
            objc_enumerationMutation(collaborationAppBundleIDs);
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
                v20 = isSharedWithYouEnabled;
                v21 = 2112;
                v22 = v11;
                _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "App was not set up, setting Shared with You to %d for %@", buf, 0x12u);
              }
            }

            [MEMORY[0x1E69A8288] setSharedWithYouEnabled:isSharedWithYouEnabled forApplicationWithBundleID:v11];
          }
        }

        v7 = [collaborationAppBundleIDs countByEnumeratingWithState:&v15 objects:v23 count:16];
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
    boldButton = [(CKOnboardingBoldButtonProvider *)v54 boldButton];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    [boldButton setTitle:v7 forState:0];

    v53 = boldButton;
    [boldButton addTarget:self action:sel_enableSyndication forControlEvents:64];
    buttonTray = [(OBWelcomeController *)v4 buttonTray];
    [buttonTray addButton:boldButton];

    linkButton = [_CKOBLinkTrayButton linkButton];
    v10 = CKFrameworkBundle();
    v52 = [v10 localizedStringForKey:@"WHATS_NEW_SETUP_EDIT_SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];

    [linkButton setTitle:v52 forState:0];
    v51 = linkButton;
    [linkButton addTarget:self action:sel_setUpSyndicationLater forControlEvents:64];
    buttonTray2 = [(OBWelcomeController *)v4 buttonTray];
    [buttonTray2 addButton:linkButton];

    buttonTray3 = [(OBWelcomeController *)v4 buttonTray];
    [(CKOnboardingController *)self setButtonTray:buttonTray3];

    v13 = objc_alloc_init(CKSyndicationPageViewController);
    [(CKSyndicationPageViewController *)v13 setDelegate:self];
    [(OBWelcomeController *)v4 addChildViewController:v13];
    view = [(OBWelcomeController *)v4 view];
    view2 = [(CKSyndicationPageViewController *)v13 view];
    [view addSubview:view2];

    [(CKSyndicationPageViewController *)v13 didMoveToParentViewController:v4];
    view3 = [(OBWelcomeController *)v4 view];
    [view3 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    view4 = [(CKSyndicationPageViewController *)v13 view];
    [view4 setFrame:{v18, v20, v22, v24}];

    v41 = MEMORY[0x1E696ACD8];
    view5 = [(CKSyndicationPageViewController *)v13 view];
    topAnchor = [view5 topAnchor];
    contentView = [(OBWelcomeController *)v4 contentView];
    topAnchor2 = [contentView topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v55[0] = v46;
    view6 = [(CKSyndicationPageViewController *)v13 view];
    centerXAnchor = [view6 centerXAnchor];
    buttonTray4 = [(OBWelcomeController *)v4 buttonTray];
    centerXAnchor2 = [buttonTray4 centerXAnchor];
    v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v55[1] = v40;
    view7 = [(CKSyndicationPageViewController *)v13 view];
    widthAnchor = [view7 widthAnchor];
    contentView2 = [(OBWelcomeController *)v4 contentView];
    widthAnchor2 = [contentView2 widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v55[2] = v27;
    view8 = [(CKSyndicationPageViewController *)v13 view];
    bottomAnchor = [view8 bottomAnchor];
    buttonTray5 = [(OBWelcomeController *)v4 buttonTray];
    topAnchor3 = [buttonTray5 topAnchor];
    [bottomAnchor constraintEqualToAnchor:topAnchor3];
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
  syndicationIntroController = [(CKOnboardingController *)self syndicationIntroController];
  navigationController = [(CKOnboardingController *)self navigationController];

  v5 = IMOSLoggingEnabled();
  if (navigationController)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        navigationController2 = [(CKOnboardingController *)self navigationController];
        v9 = 138412290;
        v10 = navigationController2;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Push Syndication onboarding, navigationController: %@", &v9, 0xCu);
      }
    }

    [(CKOnboardingController *)self _pushOnboardingViewController:syndicationIntroController animated:1];
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

    [(CKOnboardingController *)self presentOnboarding:syndicationIntroController];
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
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];

  [(CKOnboardingController *)self completedOnboarding];
}

- (void)initializeBundleIDsInAppPreferences:(BOOL)preferences
{
  preferencesCopy = preferences;
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA8];
  mEMORY[0x1E69A8288] = [MEMORY[0x1E69A8288] sharedManager];
  defaultAppBundleIDs = [mEMORY[0x1E69A8288] defaultAppBundleIDs];
  v7 = [v4 setWithArray:defaultAppBundleIDs];

  collaborationAppBundleIDs = [MEMORY[0x1E69A8288] collaborationAppBundleIDs];
  [v7 addObjectsFromArray:collaborationAppBundleIDs];

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

        [MEMORY[0x1E69A8288] setSharedWithYouEnabled:preferencesCopy forApplicationWithBundleID:{*(*(&v14 + 1) + 8 * v13++), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  navigationController = [(CKOnboardingController *)self navigationController];
  if (presentedViewController == navigationController)
  {
    navigationController2 = [(CKOnboardingController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    syndicationIntroController = [(CKOnboardingController *)self syndicationIntroController];
    v8 = [viewControllers containsObject:syndicationIntroController];

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

- (void)completedOnboardingWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      navigationController = [(CKOnboardingController *)self navigationController];
      navigationController2 = [(CKOnboardingController *)self navigationController];
      presentingViewController = [navigationController2 presentingViewController];
      presentingFromPrefs = [(CKOnboardingController *)self presentingFromPrefs];
      v10 = @"NO";
      *v16 = 138412802;
      *&v16[4] = navigationController;
      *&v16[12] = 2112;
      if (presentingFromPrefs)
      {
        v10 = @"YES";
      }

      *&v16[14] = presentingViewController;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Onboarding completed: dismissing navigationController: %@ presentingViewController: %@ fromPrefs: %@", v16, 0x20u);
    }
  }

  [(CKOnboardingController *)self setPendingMeCardSharingResult:0, *v16];
  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  v12 = [MEMORY[0x1E695DF00] now];
  [_userDefaults setObject:v12 forKey:@"OnboardingFinishTime"];

  navigationController3 = [(CKOnboardingController *)self navigationController];
  presentingViewController2 = [navigationController3 presentingViewController];
  [presentingViewController2 dismissViewControllerAnimated:1 completion:completionCopy];

  delegate = [(CKOnboardingController *)self delegate];
  [delegate onboardingControllerDidFinish:self];
}

+ (BOOL)_shouldPresentNewInMessages
{
  if ([self _isRunningTest])
  {
    return 0;
  }

  _classUserDefaults = [self _classUserDefaults];
  v4 = [_classUserDefaults BOOLForKey:@"DisableWhatsNewScreen"];

  if (v4)
  {
    return 0;
  }

  _classUserDefaults2 = [self _classUserDefaults];
  v7 = [_classUserDefaults2 BOOLForKey:@"AlwaysShowWhatsNewScreen"];

  _classUserDefaults3 = [self _classUserDefaults];
  _whatsNewLatestShippingVersion = [_classUserDefaults3 integerForKey:@"whatsNewInMessagesVersion"];

  if (_whatsNewLatestShippingVersion < [self _whatsNewLatestShippingVersion] || _whatsNewLatestShippingVersion > objc_msgSend(self, "_whatsNewVersion"))
  {
    _whatsNewLatestShippingVersion = [self _whatsNewLatestShippingVersion];
  }

  return (v7 & 1) != 0 || _whatsNewLatestShippingVersion < [self _whatsNewVersion];
}

+ (BOOL)_isRunningTest
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isRunningTest = [mEMORY[0x1E69DC668] isRunningTest];

  return isRunningTest;
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

  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  [_userDefaults setInteger:v3 forKey:@"whatsNewInMessagesVersion"];
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

  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  [_userDefaults setInteger:1 forKey:@"NicknameOnboardingVersion"];
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

  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  [_userDefaults setInteger:3 forKey:@"SyndicationOnboardingVersion"];
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

  _userDefaults = [(CKOnboardingController *)self _userDefaults];
  [_userDefaults setInteger:1 forKey:@"CollaborationOnboardingVersion"];
}

- (BOOL)_meCardSharingEnabled
{
  _meCardSharingState = [(CKOnboardingController *)self _meCardSharingState];
  sharingEnabled = [_meCardSharingState sharingEnabled];

  return sharingEnabled;
}

- (unint64_t)_meCardSharingNameFormat
{
  _meCardSharingState = [(CKOnboardingController *)self _meCardSharingState];
  nameFormat = [_meCardSharingState nameFormat];

  return nameFormat;
}

- (unint64_t)_meCardSharingAudience
{
  _meCardSharingState = [(CKOnboardingController *)self _meCardSharingState];
  sharingAudience = [_meCardSharingState sharingAudience];

  return sharingAudience;
}

- (void)sharingPickerDidFinish:(id)finish
{
  finishCopy = finish;
  if ([finishCopy sharingEnabled])
  {
    _meCardSharingState = [(CKOnboardingController *)self _meCardSharingState];
    [_meCardSharingState setSharingEnabled:{objc_msgSend(finishCopy, "sharingEnabled")}];

    _meCardSharingState2 = [(CKOnboardingController *)self _meCardSharingState];
    [_meCardSharingState2 setSharingAudience:{objc_msgSend(finishCopy, "selectedSharingAudience")}];

    _meCardSharingState3 = [(CKOnboardingController *)self _meCardSharingState];
    [_meCardSharingState3 setNameFormat:objc_msgSend(finishCopy, "selectedNameFormat")];
  }

  [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
}

- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record
{
  [(CKOnboardingController *)self setAvatarRecord:record];

  [(CKOnboardingController *)self pushNameAndPhotoSharingIntroStepIfNeeded];
}

- (void)avatarEditorViewControllerDidCancel:(id)cancel
{
  navigationController = [(CKOnboardingController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)meCardSharingOnboardingEditController:(id)controller didFinishWithOnboardingResult:(id)result
{
  [(CKOnboardingController *)self setPendingMeCardSharingResult:result];

  [(CKOnboardingController *)self pushNameAndPhotoSharingConfigSharingPreferenceStep];
}

- (void)meCardSharingOnboardingAudienceViewControllerDidFinish:(id)finish withSharingAudience:(unint64_t)audience
{
  v18 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  _meCardSharingState = [(CKOnboardingController *)self _meCardSharingState];
  [_meCardSharingState setSharingEnabled:1];

  _meCardSharingState2 = [(CKOnboardingController *)self _meCardSharingState];
  [_meCardSharingState2 setSharingAudience:audience];

  pendingMeCardSharingResult = [(CKOnboardingController *)self pendingMeCardSharingResult];

  if (pendingMeCardSharingResult)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        pendingMeCardSharingResult2 = [(CKOnboardingController *)self pendingMeCardSharingResult];
        v14 = 134218242;
        audienceCopy = audience;
        v16 = 2112;
        v17 = pendingMeCardSharingResult2;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Sharing audience chosen: %lu, sharing enabled, uploading pending me card sharing result: %@", &v14, 0x16u);
      }
    }

    _nicknameController = [(CKOnboardingController *)self _nicknameController];
    pendingMeCardSharingResult3 = [(CKOnboardingController *)self pendingMeCardSharingResult];
    [_nicknameController updatePersonalNicknameIfNecessaryWithMeCardSharingResult:pendingMeCardSharingResult3];
  }

  [(CKOnboardingController *)self showAppleIntelligenceOnboardingStepIfNeeded];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  if (self->_memojiCreationController != viewController)
  {
    memojiVideoPlayer = [(CKOnboardingController *)self memojiVideoPlayer];
    [memojiVideoPlayer pause];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if (self->_memojiCreationController == viewController)
  {
    memojiVideoPlayer = [(CKOnboardingController *)self memojiVideoPlayer];
    [memojiVideoPlayer play];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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