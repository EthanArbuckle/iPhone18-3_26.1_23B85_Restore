@interface CSProudLockViewController
- (BOOL)handleEvent:(id)event;
- (BOOL)hasPasscodeSet;
- (BOOL)isBiometricLockedOut;
- (BOOL)proudLockContainerViewControllerIsCoverSheetVisible:(id)visible;
- (CSProudLockViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CSProudLockViewControllerDelegate)delegate;
- (UIView)cameraCoveredView;
- (UIView)proudLockView;
- (id)transientSubtitleText;
- (void)_clearFaceDetectAssertion;
- (void)_createFaceDetectAssertion;
- (void)_updateForAuthenticated:(BOOL)authenticated;
- (void)_updateForProudLockStateChangeAnimated:(BOOL)animated;
- (void)_updateForProudLockStateChangeDuration:(double)duration completion:(id)completion;
- (void)_updateProudLockViewControllerConfiguration;
- (void)aggregateAppearance:(id)appearance;
- (void)proudLockContainerViewController:(id)controller guidanceTextVisibilityDidChange:(id)change animated:(BOOL)animated;
- (void)setSuspendLockUpdates:(BOOL)updates;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateLockForBiometricMatchFailure;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CSProudLockViewController

- (UIView)proudLockView
{
  proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
  view = [proudLockContainerViewController view];

  return view;
}

- (BOOL)hasPasscodeSet
{
  authenticationStatusProvider = [(CSProudLockViewController *)self authenticationStatusProvider];
  hasPasscodeSet = [authenticationStatusProvider hasPasscodeSet];

  return hasPasscodeSet;
}

- (void)_updateProudLockViewControllerConfiguration
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  pearlSettings = self->_pearlSettings;
  if (pearlSettings)
  {
    [(CSLockScreenPearlSettings *)pearlSettings proudLockControllerViewControllerConfiguration];
  }

  proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[0] = v6;
  v5[1] = v7;
  [proudLockContainerViewController setConfiguration:v5];
}

- (id)transientSubtitleText
{
  delegate = [(CSProudLockViewController *)self delegate];
  transientSubtitleText = [delegate transientSubtitleText];

  return transientSubtitleText;
}

- (CSProudLockViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_clearFaceDetectAssertion
{
  faceDetectWantedAssertion = self->_faceDetectWantedAssertion;
  if (faceDetectWantedAssertion)
  {
    [(BSInvalidatable *)faceDetectWantedAssertion invalidate];
    v4 = self->_faceDetectWantedAssertion;
    self->_faceDetectWantedAssertion = 0;
  }
}

- (BOOL)isBiometricLockedOut
{
  biometricResource = [(CSProudLockViewController *)self biometricResource];
  v3 = [biometricResource biometricLockoutState] != 0;

  return v3;
}

- (CSProudLockViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = CSProudLockViewController;
  result = [(CSCoverSheetViewControllerBase *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_deferredAuthenticationState = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D67D80]) initWithAuthenticationInformationProvider:self];
  [v3 setSuppressAlongsideCoaching:_os_feature_enabled_impl()];
  [v3 setDelegate:self];
  [(CSProudLockViewController *)self bs_addChildViewController:v3];
  [(CSProudLockViewController *)self setProudLockContainerViewController:v3];
  v4 = +[CSLockScreenDomain rootSettings];
  pearlSettings = [v4 pearlSettings];
  pearlSettings = self->_pearlSettings;
  self->_pearlSettings = pearlSettings;

  [(PTSettings *)self->_pearlSettings addKeyObserver:self];
  [(CSProudLockViewController *)self _updateProudLockViewControllerConfiguration];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v13 viewDidLayoutSubviews];
  view = [(CSProudLockViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSProudLockViewController *)self _createFaceDetectAssertion];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:appear];
  [(CSProudLockViewController *)self _clearFaceDetectAssertion];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSProudLockViewController *)self _clearFaceDetectAssertion];
}

- (void)updateLockForBiometricMatchFailure
{
  if (!self->_suspendLockUpdates)
  {
    proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
    [proudLockContainerViewController updateLockForBiometricMatchFailure];
  }
}

- (void)setSuspendLockUpdates:(BOOL)updates
{
  if (self->_suspendLockUpdates != updates)
  {
    self->_suspendLockUpdates = updates;
    if (!updates)
    {
      [(CSProudLockViewController *)self _updateProudLockViewControllerConfiguration];
      if (self->_deferredAuthenticationState != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(CSProudLockViewController *)self _updateForAuthenticated:BSSettingFlagIsYes()];
        self->_deferredAuthenticationState = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }
}

- (UIView)cameraCoveredView
{
  proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
  cameraCoveredView = [proudLockContainerViewController cameraCoveredView];

  return cameraCoveredView;
}

- (void)proudLockContainerViewController:(id)controller guidanceTextVisibilityDidChange:(id)change animated:(BOOL)animated
{
  animatedCopy = animated;
  changeCopy = change;
  if (animatedCopy)
  {
    v7 = [MEMORY[0x277CF0B70] settingsWithDuration:0.3];
  }

  else
  {
    v7 = 0;
  }

  delegate = [(CSProudLockViewController *)self delegate];
  [delegate proudLockDidChangeToCoachingText:changeCopy];

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:v7 completion:0];
}

- (BOOL)proudLockContainerViewControllerIsCoverSheetVisible:(id)visible
{
  delegate = [(CSProudLockViewController *)self delegate];
  proudLockViewControllerIsCoverSheetVisible = [delegate proudLockViewControllerIsCoverSheetVisible];

  return proudLockViewControllerIsCoverSheetVisible;
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v22.receiver = self;
  v22.super_class = CSProudLockViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v22, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    isConsumable = 0;
    if (type <= 15)
    {
      switch(type)
      {
        case 1:
          activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
          legibilitySettings = [activeAppearance legibilitySettings];

          proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
          [proudLockContainerViewController setLegibilitySettings:legibilitySettings];

          break;
        case 13:
          value = [eventCopy value];
          bOOLValue = [value BOOLValue];

          if (self->_suspendLockUpdates)
          {
            isConsumable = 0;
            self->_deferredAuthenticationState = BSSettingFlagForBool();
            goto LABEL_28;
          }

          [(CSProudLockViewController *)self _updateForAuthenticated:bOOLValue];
          break;
        case 15:
          value2 = [eventCopy value];
          integerValue = [value2 integerValue];

          if (!self->_suspendLockUpdates)
          {
            proudLockContainerViewController2 = [(CSProudLockViewController *)self proudLockContainerViewController];
            [proudLockContainerViewController2 handleBiometricEvent:integerValue];
          }

          if (integerValue == 27 && [(CSProudLockViewController *)self isBiometricLockedOut])
          {
            [(CSProudLockViewController *)self _createFaceDetectAssertion];
          }

          break;
        default:
          goto LABEL_28;
      }

LABEL_27:
      isConsumable = 0;
      goto LABEL_28;
    }

    switch(type)
    {
      case 16:
        value3 = [eventCopy value];
        [value3 floatValue];
        v16 = v15;

        if (v16 > 0.0)
        {
          goto LABEL_27;
        }

        proudLockContainerViewController3 = [(CSProudLockViewController *)self proudLockContainerViewController];
        [proudLockContainerViewController3 updateForScreenWillTurnOff];
        break;
      case 24:
        if (self->_suspendLockUpdates)
        {
          goto LABEL_27;
        }

        value4 = [eventCopy value];
        integerValue2 = [value4 integerValue];

        proudLockContainerViewController3 = [(CSProudLockViewController *)self proudLockContainerViewController];
        [proudLockContainerViewController3 setScreenOn:1 fromUnlockSource:integerValue2];
        break;
      case 25:
        if (self->_suspendLockUpdates)
        {
          goto LABEL_27;
        }

        proudLockContainerViewController3 = [(CSProudLockViewController *)self proudLockContainerViewController];
        [proudLockContainerViewController3 setScreenOn:0];
        break;
      default:
        goto LABEL_28;
    }

    goto LABEL_27;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_28:

  return isConsumable;
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v29.receiver = self;
  v29.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v29 aggregateAppearance:appearanceCopy];
  proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
  isGuidanceTextVisible = [proudLockContainerViewController isGuidanceTextVisible];

  if (isGuidanceTextVisible)
  {
    v7 = +[CSComponent footerCallToActionLabel];
    v8 = [v7 priority:60];
    coverSheetIdentifier = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v10 = [v8 identifier:coverSheetIdentifier];
    v11 = [v10 hidden:1];
    [appearanceCopy addComponent:v11];

    v12 = objc_opt_new();
    v13 = [v12 priority:60];
    coverSheetIdentifier2 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v15 = [v13 identifier:coverSheetIdentifier2];
    v16 = [v15 suppressTeachableMomentsAnimation:1];
    [appearanceCopy addComponent:v16];
  }

  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v18 = [appearanceIdentifier stringByAppendingString:@"BlurRadius"];

  [appearanceCopy removeAllComponentsWithIdentifier:v18];
  if ([(CSProudLockViewController *)self _shouldApplyScaleAndBlurForAuthenticated])
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    CSComponentTransitionInputsMake(0, &v26, 0.5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 0.35, 4.0);
    v19 = objc_opt_new();
    v20 = [v19 identifier:v18];
    v21 = [v20 priority:20];
    v22 = [v21 transitionModifiers:48];
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v23 = [v22 transitionInputs:v25];
    v24 = [v23 hidden:1];
    [appearanceCopy addComponent:v24];

LABEL_5:
    goto LABEL_9;
  }

  if (self->_isAuthenticated && self->_hasReactedToAuthentication)
  {
    v19 = objc_opt_new();
    v20 = [v19 identifier:v18];
    v21 = [v20 priority:20];
    v22 = [v21 hidden:1];
    [appearanceCopy addComponent:v22];
    goto LABEL_5;
  }

LABEL_9:
}

- (void)_updateForAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  isAuthenticated = self->_isAuthenticated;
  self->_isAuthenticated = authenticated;
  if (!authenticated)
  {
    self->_shouldReactToAuthentication = 0;
    self->_hasReactedToAuthentication = 0;
  }

  objc_initWeak(&location, self);
  proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__CSProudLockViewController__updateForAuthenticated___block_invoke;
  v10 = &unk_27838B9E0;
  objc_copyWeak(&v12, &location);
  selfCopy = self;
  v13 = isAuthenticated;
  [proudLockContainerViewController setAuthenticated:authenticatedCopy completion:&v7];

  if (authenticatedCopy)
  {
    [(CSProudLockViewController *)self _clearFaceDetectAssertion:v7];
  }

  else
  {
    [(CSProudLockViewController *)self _createFaceDetectAssertion:v7];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __53__CSProudLockViewController__updateForAuthenticated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = 0.03;
    if (*(WeakRetained + 1088))
    {
      v4 = 0.3;
    }
  }

  else
  {
    v4 = 0.3;
  }

  [*(a1 + 32) _updateForProudLockStateChangeDuration:0 completion:v4];
  v5 = dispatch_time(0, 450000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CSProudLockViewController__updateForAuthenticated___block_invoke_2;
  block[3] = &unk_27838B9E0;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = *(a1 + 48);
  block[4] = *(a1 + 32);
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);
}

void __53__CSProudLockViewController__updateForAuthenticated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 48) != WeakRetained[1088])
  {
    if (WeakRetained[1088])
    {
      WeakRetained[1089] = 1;
      WeakRetained[1090] = 0;
    }

    v4 = [MEMORY[0x277CF0B70] settingsWithDuration:0.5];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__CSProudLockViewController__updateForAuthenticated___block_invoke_3;
    v6[3] = &unk_27838B9B8;
    v7 = v3;
    [v7 updateAppearanceForController:v5 withAnimationSettings:v4 completion:v6];
  }
}

uint64_t __53__CSProudLockViewController__updateForAuthenticated___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 1088) == 1)
    {
      *(v1 + 1089) = 0;
      *(*(result + 32) + 1090) = 1;
    }
  }

  return result;
}

- (void)_updateForProudLockStateChangeAnimated:(BOOL)animated
{
  v3 = 0.3;
  if (!animated)
  {
    v3 = 0.0;
  }

  [(CSProudLockViewController *)self _updateForProudLockStateChangeDuration:0 completion:v3];
}

- (void)_updateForProudLockStateChangeDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  if (BSFloatIsZero())
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CF0B70] settingsWithDuration:duration];
  }

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:v6 completion:completionCopy];
}

- (void)_createFaceDetectAssertion
{
  if (!self->_faceDetectWantedAssertion)
  {
    if ([(CSProudLockViewController *)self isBiometricLockedOut])
    {
      biometricResource = [(CSProudLockViewController *)self biometricResource];
      hasBiometricAuthenticationCapabilityEnabled = [biometricResource hasBiometricAuthenticationCapabilityEnabled];

      if (hasBiometricAuthenticationCapabilityEnabled)
      {
        biometricResource2 = [(CSProudLockViewController *)self biometricResource];
        v5 = [biometricResource2 acquireFaceDetectionWantedAssertionForReason:@"FaceDetectForProudLock"];
        faceDetectWantedAssertion = self->_faceDetectWantedAssertion;
        self->_faceDetectWantedAssertion = v5;
      }
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  pearlSettings = self->_pearlSettings;
  if (pearlSettings == settings)
  {
    if ([(CSLockScreenPearlSettings *)pearlSettings overrideCoachingConditionEnabled])
    {
      overrideCoachingBiometricEvent = [(CSLockScreenPearlSettings *)self->_pearlSettings overrideCoachingBiometricEvent];
    }

    else
    {
      overrideCoachingBiometricEvent = 16;
    }

    proudLockContainerViewController = [(CSProudLockViewController *)self proudLockContainerViewController];
    [proudLockContainerViewController handleBiometricEvent:overrideCoachingBiometricEvent];

    [(CSProudLockViewController *)self _updateProudLockViewControllerConfiguration];
  }
}

@end