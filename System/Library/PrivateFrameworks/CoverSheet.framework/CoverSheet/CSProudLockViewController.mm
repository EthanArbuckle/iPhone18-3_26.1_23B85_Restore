@interface CSProudLockViewController
- (BOOL)handleEvent:(id)a3;
- (BOOL)hasPasscodeSet;
- (BOOL)isBiometricLockedOut;
- (BOOL)proudLockContainerViewControllerIsCoverSheetVisible:(id)a3;
- (CSProudLockViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CSProudLockViewControllerDelegate)delegate;
- (UIView)cameraCoveredView;
- (UIView)proudLockView;
- (id)transientSubtitleText;
- (void)_clearFaceDetectAssertion;
- (void)_createFaceDetectAssertion;
- (void)_updateForAuthenticated:(BOOL)a3;
- (void)_updateForProudLockStateChangeAnimated:(BOOL)a3;
- (void)_updateForProudLockStateChangeDuration:(double)a3 completion:(id)a4;
- (void)_updateProudLockViewControllerConfiguration;
- (void)aggregateAppearance:(id)a3;
- (void)proudLockContainerViewController:(id)a3 guidanceTextVisibilityDidChange:(id)a4 animated:(BOOL)a5;
- (void)setSuspendLockUpdates:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateLockForBiometricMatchFailure;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CSProudLockViewController

- (UIView)proudLockView
{
  v2 = [(CSProudLockViewController *)self proudLockContainerViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)hasPasscodeSet
{
  v2 = [(CSProudLockViewController *)self authenticationStatusProvider];
  v3 = [v2 hasPasscodeSet];

  return v3;
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

  v4 = [(CSProudLockViewController *)self proudLockContainerViewController];
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[0] = v6;
  v5[1] = v7;
  [v4 setConfiguration:v5];
}

- (id)transientSubtitleText
{
  v2 = [(CSProudLockViewController *)self delegate];
  v3 = [v2 transientSubtitleText];

  return v3;
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
  v2 = [(CSProudLockViewController *)self biometricResource];
  v3 = [v2 biometricLockoutState] != 0;

  return v3;
}

- (CSProudLockViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = CSProudLockViewController;
  result = [(CSCoverSheetViewControllerBase *)&v5 initWithNibName:a3 bundle:a4];
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
  v5 = [v4 pearlSettings];
  pearlSettings = self->_pearlSettings;
  self->_pearlSettings = v5;

  [(PTSettings *)self->_pearlSettings addKeyObserver:self];
  [(CSProudLockViewController *)self _updateProudLockViewControllerConfiguration];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v13 viewDidLayoutSubviews];
  v3 = [(CSProudLockViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSProudLockViewController *)self _createFaceDetectAssertion];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(CSProudLockViewController *)self _clearFaceDetectAssertion];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSProudLockViewController *)self _clearFaceDetectAssertion];
}

- (void)updateLockForBiometricMatchFailure
{
  if (!self->_suspendLockUpdates)
  {
    v3 = [(CSProudLockViewController *)self proudLockContainerViewController];
    [v3 updateLockForBiometricMatchFailure];
  }
}

- (void)setSuspendLockUpdates:(BOOL)a3
{
  if (self->_suspendLockUpdates != a3)
  {
    self->_suspendLockUpdates = a3;
    if (!a3)
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
  v2 = [(CSProudLockViewController *)self proudLockContainerViewController];
  v3 = [v2 cameraCoveredView];

  return v3;
}

- (void)proudLockContainerViewController:(id)a3 guidanceTextVisibilityDidChange:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x277CF0B70] settingsWithDuration:0.3];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CSProudLockViewController *)self delegate];
  [v8 proudLockDidChangeToCoachingText:v9];

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:v7 completion:0];
}

- (BOOL)proudLockContainerViewControllerIsCoverSheetVisible:(id)a3
{
  v3 = [(CSProudLockViewController *)self delegate];
  v4 = [v3 proudLockViewControllerIsCoverSheetVisible];

  return v4;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CSProudLockViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v22, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 <= 15)
    {
      switch(v6)
      {
        case 1:
          v11 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
          v12 = [v11 legibilitySettings];

          v13 = [(CSProudLockViewController *)self proudLockContainerViewController];
          [v13 setLegibilitySettings:v12];

          break;
        case 13:
          v17 = [v4 value];
          v18 = [v17 BOOLValue];

          if (self->_suspendLockUpdates)
          {
            v5 = 0;
            self->_deferredAuthenticationState = BSSettingFlagForBool();
            goto LABEL_28;
          }

          [(CSProudLockViewController *)self _updateForAuthenticated:v18];
          break;
        case 15:
          v7 = [v4 value];
          v8 = [v7 integerValue];

          if (!self->_suspendLockUpdates)
          {
            v9 = [(CSProudLockViewController *)self proudLockContainerViewController];
            [v9 handleBiometricEvent:v8];
          }

          if (v8 == 27 && [(CSProudLockViewController *)self isBiometricLockedOut])
          {
            [(CSProudLockViewController *)self _createFaceDetectAssertion];
          }

          break;
        default:
          goto LABEL_28;
      }

LABEL_27:
      v5 = 0;
      goto LABEL_28;
    }

    switch(v6)
    {
      case 16:
        v14 = [v4 value];
        [v14 floatValue];
        v16 = v15;

        if (v16 > 0.0)
        {
          goto LABEL_27;
        }

        v10 = [(CSProudLockViewController *)self proudLockContainerViewController];
        [v10 updateForScreenWillTurnOff];
        break;
      case 24:
        if (self->_suspendLockUpdates)
        {
          goto LABEL_27;
        }

        v19 = [v4 value];
        v20 = [v19 integerValue];

        v10 = [(CSProudLockViewController *)self proudLockContainerViewController];
        [v10 setScreenOn:1 fromUnlockSource:v20];
        break;
      case 25:
        if (self->_suspendLockUpdates)
        {
          goto LABEL_27;
        }

        v10 = [(CSProudLockViewController *)self proudLockContainerViewController];
        [v10 setScreenOn:0];
        break;
      default:
        goto LABEL_28;
    }

    goto LABEL_27;
  }

  v5 = [v4 isConsumable];
LABEL_28:

  return v5;
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CSProudLockViewController;
  [(CSCoverSheetViewControllerBase *)&v29 aggregateAppearance:v4];
  v5 = [(CSProudLockViewController *)self proudLockContainerViewController];
  v6 = [v5 isGuidanceTextVisible];

  if (v6)
  {
    v7 = +[CSComponent footerCallToActionLabel];
    v8 = [v7 priority:60];
    v9 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v10 = [v8 identifier:v9];
    v11 = [v10 hidden:1];
    [v4 addComponent:v11];

    v12 = objc_opt_new();
    v13 = [v12 priority:60];
    v14 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v15 = [v13 identifier:v14];
    v16 = [v15 suppressTeachableMomentsAnimation:1];
    [v4 addComponent:v16];
  }

  v17 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v18 = [v17 stringByAppendingString:@"BlurRadius"];

  [v4 removeAllComponentsWithIdentifier:v18];
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
    [v4 addComponent:v24];

LABEL_5:
    goto LABEL_9;
  }

  if (self->_isAuthenticated && self->_hasReactedToAuthentication)
  {
    v19 = objc_opt_new();
    v20 = [v19 identifier:v18];
    v21 = [v20 priority:20];
    v22 = [v21 hidden:1];
    [v4 addComponent:v22];
    goto LABEL_5;
  }

LABEL_9:
}

- (void)_updateForAuthenticated:(BOOL)a3
{
  v3 = a3;
  isAuthenticated = self->_isAuthenticated;
  self->_isAuthenticated = a3;
  if (!a3)
  {
    self->_shouldReactToAuthentication = 0;
    self->_hasReactedToAuthentication = 0;
  }

  objc_initWeak(&location, self);
  v6 = [(CSProudLockViewController *)self proudLockContainerViewController];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__CSProudLockViewController__updateForAuthenticated___block_invoke;
  v10 = &unk_27838B9E0;
  objc_copyWeak(&v12, &location);
  v11 = self;
  v13 = isAuthenticated;
  [v6 setAuthenticated:v3 completion:&v7];

  if (v3)
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

- (void)_updateForProudLockStateChangeAnimated:(BOOL)a3
{
  v3 = 0.3;
  if (!a3)
  {
    v3 = 0.0;
  }

  [(CSProudLockViewController *)self _updateForProudLockStateChangeDuration:0 completion:v3];
}

- (void)_updateForProudLockStateChangeDuration:(double)a3 completion:(id)a4
{
  v7 = a4;
  if (BSFloatIsZero())
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CF0B70] settingsWithDuration:a3];
  }

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:v6 completion:v7];
}

- (void)_createFaceDetectAssertion
{
  if (!self->_faceDetectWantedAssertion)
  {
    if ([(CSProudLockViewController *)self isBiometricLockedOut])
    {
      v3 = [(CSProudLockViewController *)self biometricResource];
      v4 = [v3 hasBiometricAuthenticationCapabilityEnabled];

      if (v4)
      {
        v7 = [(CSProudLockViewController *)self biometricResource];
        v5 = [v7 acquireFaceDetectionWantedAssertionForReason:@"FaceDetectForProudLock"];
        faceDetectWantedAssertion = self->_faceDetectWantedAssertion;
        self->_faceDetectWantedAssertion = v5;
      }
    }
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  pearlSettings = self->_pearlSettings;
  if (pearlSettings == a3)
  {
    if ([(CSLockScreenPearlSettings *)pearlSettings overrideCoachingConditionEnabled])
    {
      v6 = [(CSLockScreenPearlSettings *)self->_pearlSettings overrideCoachingBiometricEvent];
    }

    else
    {
      v6 = 16;
    }

    v7 = [(CSProudLockViewController *)self proudLockContainerViewController];
    [v7 handleBiometricEvent:v6];

    [(CSProudLockViewController *)self _updateProudLockViewControllerConfiguration];
  }
}

@end