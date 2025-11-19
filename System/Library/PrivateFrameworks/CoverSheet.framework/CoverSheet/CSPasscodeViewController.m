@interface CSPasscodeViewController
- (BOOL)_shouldEmulateInteractivePresentation;
- (BOOL)_shouldUseLightStylePasscodeView;
- (BOOL)handleEvent:(id)a3;
- (CSPasscodeViewController)initWithOptions:(unint64_t)a3;
- (CSPasscodeViewControllerDelegate)delegate;
- (id)_effectiveAverageWallpaperColor;
- (id)_newDisplayLayoutElement;
- (void)_emulateInteractivePresentation;
- (void)_passcodeLockViewPasscodeEntered:(id)a3 authenticationType:(unint64_t)a4;
- (void)_updateProudLockViewControllerConfiguration;
- (void)_updateReduceTransparencyBackingColor;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)beginInteractivePresentationTransitionForInitialTransition:(BOOL)a3;
- (void)commitingToEndTransitionToPresented:(BOOL)a3 forInitialTransition:(BOOL)a4;
- (void)dealloc;
- (void)endInteractiveTransitionToPresented:(BOOL)a3 forInitialTransition:(BOOL)a4;
- (void)loadView;
- (void)passcodeLockViewCancelButtonPressed:(id)a3;
- (void)passcodeLockViewEmergencyCallButtonPressed:(id)a3;
- (void)passcodeLockViewPasscodeDidChange:(id)a3;
- (void)performCustomTransitionToVisible:(BOOL)a3 withAnimationSettings:(id)a4 completion:(id)a5;
- (void)setWallpaperAverageColorOverride:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateInteractiveTransitionWithPercent:(double)a3 forInitialTransition:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CSPasscodeViewController

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

  passcodeLockView = self->_passcodeLockView;
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[0] = v6;
  v5[1] = v7;
  [(SBUIPasscodeLockView_Internal *)passcodeLockView setProudLockConfiguration:v5];
}

- (BOOL)_shouldUseLightStylePasscodeView
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (IsReduceTransparencyEnabled)
  {
    v4 = [(CSPasscodeViewController *)self _effectiveAverageWallpaperColor];
    [v4 sb_brightness];
    v5 = BSFloatGreaterThanFloat();

    LOBYTE(IsReduceTransparencyEnabled) = v5;
  }

  return IsReduceTransparencyEnabled;
}

- (void)viewDidLoad
{
  v3 = [(CSPasscodeViewController *)self view];
  [(CSCoverSheetViewControllerBase *)self registerView:v3 forRole:3];

  v4.receiver = self;
  v4.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidLoad];
}

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v27 loadView];
  v3 = [(CSPasscodeViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(CSPasscodeViewController *)self _shouldUseLightStylePasscodeView])
  {
    [MEMORY[0x277D67D18] undimmedLightPasscodeLockViewForUsersCurrentStyle];
  }

  else
  {
    [MEMORY[0x277D67D18] undimmedPasscodeLockViewForUsersCurrentStyle];
  }
  v12 = ;
  passcodeLockView = self->_passcodeLockView;
  self->_passcodeLockView = v12;

  v14 = self->_passcodeLockView;
  v15 = [MEMORY[0x277D75348] clearColor];
  [(SBUIPasscodeLockView_Internal *)v14 setCustomBackgroundColor:v15];

  v16 = self->_passcodeLockView;
  v17 = [(CSWallpaperColorProvider *)self->_wallpaperColorProvider newLegibilitySettingsProvider];
  [(SBUIPasscodeLockView_Internal *)v16 setBackgroundLegibilitySettingsProvider:v17];

  v18 = self->_passcodeLockView;
  if (self->_options)
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setShowsEmergencyCallButton:0];
  }

  else
  {
    v19 = [(CSCoverSheetContextProviding *)self->_coverSheetContext telephonyStatusProvider];
    -[SBUIPasscodeLockView_Internal setShowsEmergencyCallButton:](v18, "setShowsEmergencyCallButton:", [v19 isEmergencyCallSupported]);
  }

  v20 = self->_passcodeLockView;
  v21 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationStatusProvider];
  -[SBUIPasscodeLockView_Internal _noteDeviceHasBeenUnlockedOnceSinceBoot:](v20, "_noteDeviceHasBeenUnlockedOnceSinceBoot:", [v21 hasAuthenticatedAtLeastOnceSinceBoot]);

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setScreenOn:1];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setDelegate:self];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setShowsProudLock:0];
  [(CSPasscodeViewController *)self _updateProudLockViewControllerConfiguration];
  v22 = self->_passcodeLockView;
  [v3 bounds];
  [(SBUIPasscodeLockView_Internal *)v22 setFrame:?];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAutoresizingMask:18];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setUsesBiometricPresentation:[(CSPasscodeViewController *)self useBiometricPresentation]];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setBiometricPresentationAncillaryButtonsVisible:[(CSPasscodeViewController *)self biometricButtonsInitiallyVisible]];
  v23 = self->_passcodeLockView;
  v24 = [(CSPasscodeViewController *)self unlockDestination];
  [(SBUIPasscodeLockView_Internal *)v23 setUnlockDestination:v24];

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setConfirmedNotInPocket:[(CSPasscodeViewController *)self confirmedNotInPocket]];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setCanSuggestSwipeToRetry:1];
  [v3 addSubview:self->_passcodeLockView];
  if ((self->_options & 2) == 0)
  {
    v25 = objc_alloc_init(CSPasscodeBackgroundView);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v25;

    [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:0.0];
    [(CSPasscodeBackgroundView *)self->_backgroundView setAutoresizingMask:18];
    [(CSPasscodeBackgroundView *)self->_backgroundView setFrame:v5, v7, v9, v11];
    [(CSPasscodeViewController *)self _updateReduceTransparencyBackingColor];
    [v3 addSubview:self->_backgroundView];
    [v3 sendSubviewToBack:self->_backgroundView];
  }
}

- (void)_updateReduceTransparencyBackingColor
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v13 = [(CSPasscodeViewController *)self _effectiveAverageWallpaperColor];
    [v13 sb_brightness];
    v3 = BSFloatLessThanFloat();
    v4 = BSFloatGreaterThanFloat();
    v5 = 0.666666667;
    if (v4)
    {
      v5 = 1.0;
    }

    if (v3)
    {
      v5 = 0.5;
    }

    v6 = [MEMORY[0x277D75348] colorWithWhite:v5 alpha:1.0];
    passcodeLockView = self->_passcodeLockView;
    v8 = objc_opt_class();
    v9 = passcodeLockView;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [(SBUIPasscodeLockView_Internal *)v11 _numberPad];

    [v12 setReduceTransparencyButtonColor:v6];
    [(CSPasscodeBackgroundView *)self->_backgroundView setReduceTransparencyBackingColor:v13];
  }
}

- (CSPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_newDisplayLayoutElement
{
  v2 = objc_alloc(MEMORY[0x277D66A50]);
  v3 = [v2 initWithIdentifier:*MEMORY[0x277D66F40]];
  [v3 setFillsDisplayBounds:1];
  [v3 setLayoutRole:6];
  return v3;
}

- (void)dealloc
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  v4 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  [v3 setBiometricAutoUnlockingDisabled:0 forReason:v4];

  [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
  v5.receiver = self;
  v5.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v5 dealloc];
}

- (CSPasscodeViewController)initWithOptions:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = CSPasscodeViewController;
  v4 = [(CSPasscodeViewController *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = +[CSLockScreenDomain rootSettings];
    v7 = [v6 pearlSettings];
    pearlSettings = v5->_pearlSettings;
    v5->_pearlSettings = v7;

    [(PTSettings *)v5->_pearlSettings addKeyObserver:v5];
    [(CSPasscodeViewController *)v5 _updateProudLockViewControllerConfiguration];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillAppear:?];
  passcodeLockView = self->_passcodeLockView;
  v6 = [(CSPasscodeViewController *)self proudLockContainerViewControllerToUpdate];
  [(SBUIPasscodeLockView_Internal *)passcodeLockView setOverrideProudLockContainerViewController:v6];

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:1];
  v7 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  v8 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  [v7 setBiometricAutoUnlockingDisabled:1 forReason:v8];

  if ([(CSFaceOcclusionMonitor *)self->_faceOcclusionMonitor faceOcclusionsSinceScreenOn]& 1) != 0 && (objc_opt_respondsToSelector())
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView noteBottomFaceHasBeenOccluded];
  }

  if ([(CSFaceOcclusionMonitor *)self->_faceOcclusionMonitor faceOcclusionsSinceScreenOn]& 2) != 0 && (objc_opt_respondsToSelector())
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView noteFaceHasBeenOccluded];
  }

  if (v3)
  {
    [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_4];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [*MEMORY[0x277D76620] finishedSubTest:@"DashBoardPasscodePresented" forTest:@"DashBoardPasscode"];
  }

  v6.receiver = self;
  v6.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:v3];
  v5 = [CSAction actionWithType:3];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v8 viewWillDisappear:?];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  if (v3)
  {
    [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_29];
  }

  v5 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  [v5 setPasscodeVisible:0 animated:v3];

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
  v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  v7 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  [v6 setBiometricAutoUnlockingDisabled:0 forReason:v7];

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView resignFirstResponder];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setOverrideProudLockContainerViewController:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [*MEMORY[0x277D76620] finishedSubTest:@"DashBoardPasscodeDismissed" forTest:@"DashBoardPasscode"];
  }

  v6.receiver = self;
  v6.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:v3];
  [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
  sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
  self->_sustainAuthenticationAssertion = 0;

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v46 aggregateAppearance:v4];
  v5 = objc_opt_new();
  v6 = [v5 hidden:{-[CSPasscodeViewController showProudLock](self, "showProudLock") ^ 1}];
  v7 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v8 = [v6 identifier:v7];
  v9 = [v8 priority:60];
  v10 = [v9 prefersInlineCoaching:1];
  v11 = [v10 supportsMaterialBackground:0];

  [v4 addComponent:v11];
  v12 = SBUICurrentPasscodeStyleForUser();
  v13 = 0x27838A000uLL;
  if (v12 == 3)
  {
    v14 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
    if (v14 == 4 || v14 == 2)
    {
      v15 = +[CSComponent poseidon];
      v16 = [v15 priority:60];
      v17 = [v16 hidden:1];
      [v4 addComponent:v17];
    }
  }

  v18 = [(CSPasscodeViewController *)self delegate];
  v19 = [v18 passcodeViewControllerShouldHideStatusBar:self];

  v20 = objc_opt_new();
  v21 = [v20 priority:60];
  v22 = [v21 hidden:v19];
  v23 = [v22 fakeStatusBar:0];
  [v4 addComponent:v23];

  if ([(CSPasscodeViewController *)self _shouldUseLightStylePasscodeView])
  {
    v24 = objc_alloc(MEMORY[0x277D760A8]);
    v25 = [MEMORY[0x277D75348] blackColor];
    v26 = [v24 initWithStyle:2 contentColor:v25];
  }

  else
  {
    v26 = CSGetLegibilitySettingsForBackgroundStyle(7);
  }

  [v4 setLegibilitySettings:v26];

  if (SBFEffectiveHomeButtonType() == 2)
  {
    if (![(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState])
    {
      v27 = objc_opt_new();
      v28 = [v27 priority:60];
      v29 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
      v30 = [v28 identifier:v29];
      v31 = [v30 hidden:1];
      v32 = [v31 suppressTeachableMomentsAnimation:1];
      [v4 addComponent:v32];

      v13 = 0x27838A000;
LABEL_19:

      goto LABEL_20;
    }

    if ([(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState]!= 1)
    {
LABEL_20:
      v40 = [*(v13 + 480) controlCenterGrabber];
      v41 = [v40 priority:60];
      v42 = [v41 hidden:1];
      [v4 addComponent:v42];

      goto LABEL_21;
    }

    if (v12 == 3)
    {
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v33 = [MEMORY[0x277D75418] currentDevice];
      v34 = [v33 userInterfaceIdiom];

      if (v34 == 1)
      {
LABEL_17:
        v35 = objc_opt_new();
        v36 = [v35 priority:60];
        v37 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
        v38 = [v36 identifier:v37];
        v39 = [v38 suppressTeachableMomentsAnimation:1];
        [v4 addComponent:v39];
      }
    }

LABEL_18:
    v27 = +[CSComponent whitePoint];
    v28 = [v27 priority:60];
    v29 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
    v30 = [v28 identifier:v29];
    v31 = [v30 hidden:1];
    [v4 addComponent:v31];
    goto LABEL_19;
  }

LABEL_21:
  if ([(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState]== 1)
  {
    v43 = [*(v13 + 480) backgroundContent];
    v44 = [v43 priority:60];
    v45 = [v44 flag:1];
    [v4 addComponent:v45];
  }
}

- (void)aggregateBehavior:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSPasscodeViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:v4];
  [v4 setIdleTimerDuration:{8, v6.receiver, v6.super_class}];
  [v4 setIdleTimerMode:2];
  [v4 setIdleWarnMode:1];
  if ([(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState]== 1)
  {
    v5 = 2130112;
  }

  else
  {
    v5 = 2134208;
  }

  [v4 setRestrictedCapabilities:v5];
}

- (void)performCustomTransitionToVisible:(BOOL)a3 withAnimationSettings:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke;
    v26[3] = &unk_27838B770;
    v26[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v26];
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView becomeActiveWithAnimationSettings:v8];
  }

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setKeypadVisible:v6 animated:v8 != 0];
  v10 = [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView layer];
  v11 = [v10 presentationModifiers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MEMORY[0x277D75D18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_2;
    v24[3] = &unk_27838BC70;
    v25 = v6;
    v24[4] = self;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_3;
    v22[3] = &unk_27838BDF0;
    v14 = &v23;
    v23 = v9;
    v15 = v9;
    [v13 _animateUsingSpringWithTension:0 friction:v24 interactive:v22 animations:340.0 completion:30.0];
  }

  else
  {
    v16 = MEMORY[0x277CF0D38];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_4;
    v20[3] = &unk_27838BC70;
    v21 = v6;
    v20[4] = self;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_5;
    v18[3] = &unk_27838BAC0;
    v14 = &v19;
    v19 = v9;
    v17 = v9;
    [v16 animateWithSettings:v8 options:2 actions:v20 completion:v18];
  }
}

uint64_t __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1096);

  return [v2 setWeighting:0.0];
}

uint64_t __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 1088) setAlpha:v2];
  v3 = *(*(a1 + 32) + 1096);
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  return [v3 setWeighting:v4];
}

uint64_t __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 1088) setAlpha:v2];
  v3 = *(*(a1 + 32) + 1096);
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  return [v3 setWeighting:v4];
}

uint64_t __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)beginInteractivePresentationTransitionForInitialTransition:(BOOL)a3
{
  if (a3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __87__CSPasscodeViewController_beginInteractivePresentationTransitionForInitialTransition___block_invoke;
    v4[3] = &unk_27838B770;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }

  else
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView beginTransitionToState:0];
  }

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAllowsAutomaticBiometricPresentationTransition:0];
}

uint64_t __87__CSPasscodeViewController_beginInteractivePresentationTransitionForInitialTransition___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1096);

  return [v2 setWeighting:0.0];
}

- (void)updateInteractiveTransitionWithPercent:(double)a3 forInitialTransition:(BOOL)a4
{
  if (a4)
  {
    v6 = fmin(fmax(a3 * a3, 0.0), 1.0);
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAlpha:v6];
    [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:v6];
  }

  else
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView updateTransitionWithProgress:a3];
  }

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView bounds];
  MidY = CGRectGetMidY(v16);
  passcodeLockView = self->_passcodeLockView;

  [(SBUIPasscodeLockView_Internal *)passcodeLockView setFrame:v8, (1.0 - a3) * MidY, v10, v12];
}

- (void)commitingToEndTransitionToPresented:(BOOL)a3 forInitialTransition:(BOOL)a4
{
  if (!a3)
  {
    self->_isBeingDismissedAfterInterstitialTransitionCancelled = 1;
  }

  if (!a4)
  {
    v5 = !a3;
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView willEndTransitionToState:!a3];
    if (!v5)
    {
      passcodeLockView = self->_passcodeLockView;

      [(SBUIPasscodeLockView_Internal *)passcodeLockView _resumeBiometricMatchingAdvisory:0];
    }
  }
}

- (void)endInteractiveTransitionToPresented:(BOOL)a3 forInitialTransition:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:1.0];
  if (([(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion isValid]& 1) == 0)
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAllowsAutomaticBiometricPresentationTransition:1];
  }

  if (v4)
  {
    if (v5)
    {
      [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView _resumeBiometricMatchingAdvisory:1];
    }
  }

  else
  {
    passcodeLockView = self->_passcodeLockView;
    if (v5)
    {
      [(SBUIPasscodeLockView_Internal *)passcodeLockView _resumeBiometricMatchingAdvisory:1];
    }

    else
    {
      [(SBUIPasscodeLockView_Internal *)passcodeLockView frame];
      x = v13.origin.x;
      width = v13.size.width;
      height = v13.size.height;
      CGRectGetMinY(v13);
      if ((BSFloatIsZero() & 1) == 0)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __85__CSPasscodeViewController_endInteractiveTransitionToPresented_forInitialTransition___block_invoke;
        v12[3] = &unk_27838C860;
        v12[4] = self;
        *&v12[5] = x;
        v12[6] = 0;
        *&v12[7] = width;
        *&v12[8] = height;
        [MEMORY[0x277D75D18] performWithoutAnimation:v12];
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__CSPasscodeViewController_endInteractiveTransitionToPresented_forInitialTransition___block_invoke_2;
    v11[3] = &unk_27838C888;
    v11[4] = self;
    v11[5] = !v5;
    [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  }

  self->_isBeingDismissedAfterInterstitialTransitionCancelled = 0;
}

- (void)setWallpaperAverageColorOverride:(id)a3
{
  if (self->_wallpaperAverageColorOverride != a3)
  {
    self->_wallpaperAverageColorOverride = a3;
    [(CSPasscodeViewController *)self _updateReduceTransparencyBackingColor];
  }
}

- (void)passcodeLockViewPasscodeDidChange:(id)a3
{
  coverSheetContext = self->_coverSheetContext;
  v5 = a3;
  v9 = [(CSCoverSheetContextProviding *)coverSheetContext passcodeFieldChangeObserver];
  v6 = [v5 passcode];

  v7 = [v6 length];
  if (v7)
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setPasscodeLockViewState:1 animated:1];
    [v9 notePasscodeEntryBegan];
  }

  else
  {
    [v9 notePasscodeEntryCancelled];
  }

  v8 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v8];
}

- (void)passcodeLockViewCancelButtonPressed:(id)a3
{
  v4 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidCancelPasscodeEntry:self];

  [(CSCoverSheetViewControllerBase *)self dismiss];
}

- (void)passcodeLockViewEmergencyCallButtonPressed:(id)a3
{
  v4 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  v5 = [CSAction actionWithType:2];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CSPasscodeViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v12, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 <= 23)
    {
      if (v6 == 5)
      {
        [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView resignFirstResponder];
      }

      else
      {
        if (v6 != 13)
        {
          goto LABEL_18;
        }

        v7 = [v4 value];
        v8 = [v7 BOOLValue];

        if ((v8 & 1) == 0)
        {
          v9 = [(CSPasscodeViewController *)self proudLockContainerViewControllerToUpdate];
          [v9 setAuthenticated:0];
        }
      }
    }

    else
    {
      switch(v6)
      {
        case 24:
          [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setScreenOn:1];
          break;
        case 25:
          [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setScreenOn:0];
          [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
          sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
          self->_sustainAuthenticationAssertion = 0;

          break;
        case 27:
          if ([(CSPasscodeViewController *)self _shouldEmulateInteractivePresentation])
          {
            [(CSPasscodeViewController *)self _emulateInteractivePresentation];
          }

          break;
        default:
          goto LABEL_18;
      }
    }

    v5 = 0;
    goto LABEL_18;
  }

  v5 = [v4 isConsumable];
LABEL_18:

  return v5;
}

- (void)_passcodeLockViewPasscodeEntered:(id)a3 authenticationType:(unint64_t)a4
{
  v6 = a3;
  if (!self->_attemptingUnlock)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passcodeViewControllerDidBeginPasscodeEntry:self];

    self->_attemptingUnlock = 1;
    if (a4 == 1)
    {
      v8 = [v6 passcode];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationAssertionProvider];
    v10 = [v9 createGracePeriodAssertionWithReason:@"DashBoardAttemptUnlock"];
    [v10 activate];
    isBeingDismissedAfterInterstitialTransitionCancelled = self->_isBeingDismissedAfterInterstitialTransitionCancelled;
    v12 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__CSPasscodeViewController__passcodeLockViewPasscodeEntered_authenticationType___block_invoke;
    v15[3] = &unk_27838C8B0;
    v15[4] = self;
    v16 = v9;
    v17 = v6;
    v18 = v10;
    v13 = v10;
    v14 = v9;
    [v12 attemptUnlockWithPasscode:v8 finishUIUnlock:!isBeingDismissedAfterInterstitialTransitionCancelled completion:v15];
  }
}

uint64_t __80__CSPasscodeViewController__passcodeLockViewPasscodeEntered_authenticationType___block_invoke(uint64_t a1, int a2, unsigned int a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1128));
  [WeakRetained passcodeViewController:*(a1 + 32) didCompletePasscodeEntry:a2 & a3];

  if (a2)
  {
    if (a3)
    {
      if (!*(*(a1 + 32) + 1072))
      {
        v7 = [*(a1 + 40) createKeybagUnlockAssertionWithReason:@"DashBoardSustainUnlock"];
        v8 = *(a1 + 32);
        v9 = *(v8 + 1072);
        *(v8 + 1072) = v7;

        [*(*(a1 + 32) + 1072) activate];
      }

      [*(a1 + 48) resetForSuccess];
    }

    else
    {
      [*(a1 + 48) resetForFailedPasscode];
    }
  }

  *(*(a1 + 32) + 1064) = 0;
  v10 = *(a1 + 56);

  return [v10 invalidate];
}

- (id)_effectiveAverageWallpaperColor
{
  wallpaperAverageColorOverride = self->_wallpaperAverageColorOverride;
  if (wallpaperAverageColorOverride)
  {
    v3 = wallpaperAverageColorOverride;
  }

  else
  {
    v4 = [(CSWallpaperColorProvider *)self->_wallpaperColorProvider averageColorForCurrentWallpaper];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
    }

    v3 = v6;
  }

  return v3;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_pearlSettings == a3)
  {
    [(CSPasscodeViewController *)self _updateProudLockViewControllerConfiguration];
  }
}

- (BOOL)_shouldEmulateInteractivePresentation
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || (v2 = _AXSAssistiveTouchEnabled()) != 0)
  {
    LOBYTE(v2) = SBFEffectiveHomeButtonType() == 2;
  }

  return v2;
}

- (void)_emulateInteractivePresentation
{
  if ([(CSPasscodeViewController *)self _shouldEmulateInteractivePresentation])
  {
    if (([(CSPasscodeViewController *)self bs_isAppearingOrAppeared]& 1) == 0)
    {
      [(CSPasscodeViewController *)self beginInteractivePresentationTransitionForInitialTransition:0];
      [(CSPasscodeViewController *)self updateInteractiveTransitionWithPercent:0 forInitialTransition:0.0];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __59__CSPasscodeViewController__emulateInteractivePresentation__block_invoke;
      v4[3] = &unk_27838B770;
      v4[4] = self;
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __59__CSPasscodeViewController__emulateInteractivePresentation__block_invoke_2;
      v3[3] = &unk_27838B9B8;
      v3[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3 completion:0.4];
    }
  }
}

uint64_t __59__CSPasscodeViewController__emulateInteractivePresentation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) commitingToEndTransitionToPresented:1 forInitialTransition:0];
  v2 = *(a1 + 32);

  return [v2 endInteractiveTransitionToPresented:1 forInitialTransition:0];
}

@end