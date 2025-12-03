@interface CSPasscodeViewController
- (BOOL)_shouldEmulateInteractivePresentation;
- (BOOL)_shouldUseLightStylePasscodeView;
- (BOOL)handleEvent:(id)event;
- (CSPasscodeViewController)initWithOptions:(unint64_t)options;
- (CSPasscodeViewControllerDelegate)delegate;
- (id)_effectiveAverageWallpaperColor;
- (id)_newDisplayLayoutElement;
- (void)_emulateInteractivePresentation;
- (void)_passcodeLockViewPasscodeEntered:(id)entered authenticationType:(unint64_t)type;
- (void)_updateProudLockViewControllerConfiguration;
- (void)_updateReduceTransparencyBackingColor;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)beginInteractivePresentationTransitionForInitialTransition:(BOOL)transition;
- (void)commitingToEndTransitionToPresented:(BOOL)presented forInitialTransition:(BOOL)transition;
- (void)dealloc;
- (void)endInteractiveTransitionToPresented:(BOOL)presented forInitialTransition:(BOOL)transition;
- (void)loadView;
- (void)passcodeLockViewCancelButtonPressed:(id)pressed;
- (void)passcodeLockViewEmergencyCallButtonPressed:(id)pressed;
- (void)passcodeLockViewPasscodeDidChange:(id)change;
- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion;
- (void)setWallpaperAverageColorOverride:(id)override;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateInteractiveTransitionWithPercent:(double)percent forInitialTransition:(BOOL)transition;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
    _effectiveAverageWallpaperColor = [(CSPasscodeViewController *)self _effectiveAverageWallpaperColor];
    [_effectiveAverageWallpaperColor sb_brightness];
    v5 = BSFloatGreaterThanFloat();

    LOBYTE(IsReduceTransparencyEnabled) = v5;
  }

  return IsReduceTransparencyEnabled;
}

- (void)viewDidLoad
{
  view = [(CSPasscodeViewController *)self view];
  [(CSCoverSheetViewControllerBase *)self registerView:view forRole:3];

  v4.receiver = self;
  v4.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidLoad];
}

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v27 loadView];
  view = [(CSPasscodeViewController *)self view];
  [view bounds];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBUIPasscodeLockView_Internal *)v14 setCustomBackgroundColor:clearColor];

  v16 = self->_passcodeLockView;
  newLegibilitySettingsProvider = [(CSWallpaperColorProvider *)self->_wallpaperColorProvider newLegibilitySettingsProvider];
  [(SBUIPasscodeLockView_Internal *)v16 setBackgroundLegibilitySettingsProvider:newLegibilitySettingsProvider];

  v18 = self->_passcodeLockView;
  if (self->_options)
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setShowsEmergencyCallButton:0];
  }

  else
  {
    telephonyStatusProvider = [(CSCoverSheetContextProviding *)self->_coverSheetContext telephonyStatusProvider];
    -[SBUIPasscodeLockView_Internal setShowsEmergencyCallButton:](v18, "setShowsEmergencyCallButton:", [telephonyStatusProvider isEmergencyCallSupported]);
  }

  v20 = self->_passcodeLockView;
  authenticationStatusProvider = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationStatusProvider];
  -[SBUIPasscodeLockView_Internal _noteDeviceHasBeenUnlockedOnceSinceBoot:](v20, "_noteDeviceHasBeenUnlockedOnceSinceBoot:", [authenticationStatusProvider hasAuthenticatedAtLeastOnceSinceBoot]);

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setScreenOn:1];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setDelegate:self];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setShowsProudLock:0];
  [(CSPasscodeViewController *)self _updateProudLockViewControllerConfiguration];
  v22 = self->_passcodeLockView;
  [view bounds];
  [(SBUIPasscodeLockView_Internal *)v22 setFrame:?];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAutoresizingMask:18];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setUsesBiometricPresentation:[(CSPasscodeViewController *)self useBiometricPresentation]];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setBiometricPresentationAncillaryButtonsVisible:[(CSPasscodeViewController *)self biometricButtonsInitiallyVisible]];
  v23 = self->_passcodeLockView;
  unlockDestination = [(CSPasscodeViewController *)self unlockDestination];
  [(SBUIPasscodeLockView_Internal *)v23 setUnlockDestination:unlockDestination];

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setConfirmedNotInPocket:[(CSPasscodeViewController *)self confirmedNotInPocket]];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setCanSuggestSwipeToRetry:1];
  [view addSubview:self->_passcodeLockView];
  if ((self->_options & 2) == 0)
  {
    v25 = objc_alloc_init(CSPasscodeBackgroundView);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v25;

    [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:0.0];
    [(CSPasscodeBackgroundView *)self->_backgroundView setAutoresizingMask:18];
    [(CSPasscodeBackgroundView *)self->_backgroundView setFrame:v5, v7, v9, v11];
    [(CSPasscodeViewController *)self _updateReduceTransparencyBackingColor];
    [view addSubview:self->_backgroundView];
    [view sendSubviewToBack:self->_backgroundView];
  }
}

- (void)_updateReduceTransparencyBackingColor
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    _effectiveAverageWallpaperColor = [(CSPasscodeViewController *)self _effectiveAverageWallpaperColor];
    [_effectiveAverageWallpaperColor sb_brightness];
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

    _numberPad = [(SBUIPasscodeLockView_Internal *)v11 _numberPad];

    [_numberPad setReduceTransparencyButtonColor:v6];
    [(CSPasscodeBackgroundView *)self->_backgroundView setReduceTransparencyBackingColor:_effectiveAverageWallpaperColor];
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
  authenticationManager = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  [authenticationManager setBiometricAutoUnlockingDisabled:0 forReason:appearanceIdentifier];

  [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
  v5.receiver = self;
  v5.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v5 dealloc];
}

- (CSPasscodeViewController)initWithOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = CSPasscodeViewController;
  v4 = [(CSPasscodeViewController *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = +[CSLockScreenDomain rootSettings];
    pearlSettings = [v6 pearlSettings];
    pearlSettings = v5->_pearlSettings;
    v5->_pearlSettings = pearlSettings;

    [(PTSettings *)v5->_pearlSettings addKeyObserver:v5];
    [(CSPasscodeViewController *)v5 _updateProudLockViewControllerConfiguration];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillAppear:?];
  passcodeLockView = self->_passcodeLockView;
  proudLockContainerViewControllerToUpdate = [(CSPasscodeViewController *)self proudLockContainerViewControllerToUpdate];
  [(SBUIPasscodeLockView_Internal *)passcodeLockView setOverrideProudLockContainerViewController:proudLockContainerViewControllerToUpdate];

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:1];
  authenticationManager = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  [authenticationManager setBiometricAutoUnlockingDisabled:1 forReason:appearanceIdentifier];

  if ([(CSFaceOcclusionMonitor *)self->_faceOcclusionMonitor faceOcclusionsSinceScreenOn]& 1) != 0 && (objc_opt_respondsToSelector())
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView noteBottomFaceHasBeenOccluded];
  }

  if ([(CSFaceOcclusionMonitor *)self->_faceOcclusionMonitor faceOcclusionsSinceScreenOn]& 2) != 0 && (objc_opt_respondsToSelector())
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView noteFaceHasBeenOccluded];
  }

  if (appearCopy)
  {
    [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_4];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (appear)
  {
    [*MEMORY[0x277D76620] finishedSubTest:@"DashBoardPasscodePresented" forTest:@"DashBoardPasscode"];
  }

  v6.receiver = self;
  v6.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:appearCopy];
  v5 = [CSAction actionWithType:3];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v8 viewWillDisappear:?];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  if (disappearCopy)
  {
    [*MEMORY[0x277D76620] _performBlockAfterCATransactionCommits:&__block_literal_global_29];
  }

  authenticationManager = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  [authenticationManager setPasscodeVisible:0 animated:disappearCopy];

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
  authenticationManager2 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  [authenticationManager2 setBiometricAutoUnlockingDisabled:0 forReason:appearanceIdentifier];

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView resignFirstResponder];
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setOverrideProudLockContainerViewController:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (disappear)
  {
    [*MEMORY[0x277D76620] finishedSubTest:@"DashBoardPasscodeDismissed" forTest:@"DashBoardPasscode"];
  }

  v6.receiver = self;
  v6.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:disappearCopy];
  [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
  sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
  self->_sustainAuthenticationAssertion = 0;

  [(CSPasscodeViewController *)self _setBiometricAuthenticationEnabledForTransientAppearanceTransition:0];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v46.receiver = self;
  v46.super_class = CSPasscodeViewController;
  [(CSCoverSheetViewControllerBase *)&v46 aggregateAppearance:appearanceCopy];
  v5 = objc_opt_new();
  v6 = [v5 hidden:{-[CSPasscodeViewController showProudLock](self, "showProudLock") ^ 1}];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v8 = [v6 identifier:appearanceIdentifier];
  v9 = [v8 priority:60];
  v10 = [v9 prefersInlineCoaching:1];
  v11 = [v10 supportsMaterialBackground:0];

  [appearanceCopy addComponent:v11];
  v12 = SBUICurrentPasscodeStyleForUser();
  v13 = 0x27838A000uLL;
  if (v12 == 3)
  {
    activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
    if (activeInterfaceOrientation == 4 || activeInterfaceOrientation == 2)
    {
      v15 = +[CSComponent poseidon];
      v16 = [v15 priority:60];
      v17 = [v16 hidden:1];
      [appearanceCopy addComponent:v17];
    }
  }

  delegate = [(CSPasscodeViewController *)self delegate];
  v19 = [delegate passcodeViewControllerShouldHideStatusBar:self];

  v20 = objc_opt_new();
  v21 = [v20 priority:60];
  v22 = [v21 hidden:v19];
  v23 = [v22 fakeStatusBar:0];
  [appearanceCopy addComponent:v23];

  if ([(CSPasscodeViewController *)self _shouldUseLightStylePasscodeView])
  {
    v24 = objc_alloc(MEMORY[0x277D760A8]);
    blackColor = [MEMORY[0x277D75348] blackColor];
    v26 = [v24 initWithStyle:2 contentColor:blackColor];
  }

  else
  {
    v26 = CSGetLegibilitySettingsForBackgroundStyle(7);
  }

  [appearanceCopy setLegibilitySettings:v26];

  if (SBFEffectiveHomeButtonType() == 2)
  {
    if (![(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState])
    {
      v27 = objc_opt_new();
      v28 = [v27 priority:60];
      appearanceIdentifier2 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
      v30 = [v28 identifier:appearanceIdentifier2];
      v31 = [v30 hidden:1];
      v32 = [v31 suppressTeachableMomentsAnimation:1];
      [appearanceCopy addComponent:v32];

      v13 = 0x27838A000;
LABEL_19:

      goto LABEL_20;
    }

    if ([(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState]!= 1)
    {
LABEL_20:
      controlCenterGrabber = [*(v13 + 480) controlCenterGrabber];
      v41 = [controlCenterGrabber priority:60];
      v42 = [v41 hidden:1];
      [appearanceCopy addComponent:v42];

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

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
LABEL_17:
        v35 = objc_opt_new();
        v36 = [v35 priority:60];
        appearanceIdentifier3 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
        v38 = [v36 identifier:appearanceIdentifier3];
        v39 = [v38 suppressTeachableMomentsAnimation:1];
        [appearanceCopy addComponent:v39];
      }
    }

LABEL_18:
    v27 = +[CSComponent whitePoint];
    v28 = [v27 priority:60];
    appearanceIdentifier2 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
    v30 = [v28 identifier:appearanceIdentifier2];
    v31 = [v30 hidden:1];
    [appearanceCopy addComponent:v31];
    goto LABEL_19;
  }

LABEL_21:
  if ([(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState]== 1)
  {
    backgroundContent = [*(v13 + 480) backgroundContent];
    v44 = [backgroundContent priority:60];
    v45 = [v44 flag:1];
    [appearanceCopy addComponent:v45];
  }
}

- (void)aggregateBehavior:(id)behavior
{
  v6.receiver = self;
  v6.super_class = CSPasscodeViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:behaviorCopy];
  [behaviorCopy setIdleTimerDuration:{8, v6.receiver, v6.super_class}];
  [behaviorCopy setIdleTimerMode:2];
  [behaviorCopy setIdleWarnMode:1];
  if ([(SBUIPasscodeLockView_Internal *)self->_passcodeLockView passcodeLockViewState]== 1)
  {
    v5 = 2130112;
  }

  else
  {
    v5 = 2134208;
  }

  [behaviorCopy setRestrictedCapabilities:v5];
}

- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion
{
  visibleCopy = visible;
  settingsCopy = settings;
  completionCopy = completion;
  if (visibleCopy)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke;
    v26[3] = &unk_27838B770;
    v26[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v26];
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView becomeActiveWithAnimationSettings:settingsCopy];
  }

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setKeypadVisible:visibleCopy animated:settingsCopy != 0];
  layer = [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView layer];
  presentationModifiers = [layer presentationModifiers];
  v12 = [presentationModifiers count];

  if (v12)
  {
    v13 = MEMORY[0x277D75D18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_2;
    v24[3] = &unk_27838BC70;
    v25 = visibleCopy;
    v24[4] = self;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_3;
    v22[3] = &unk_27838BDF0;
    v14 = &v23;
    v23 = completionCopy;
    v15 = completionCopy;
    [v13 _animateUsingSpringWithTension:0 friction:v24 interactive:v22 animations:340.0 completion:30.0];
  }

  else
  {
    v16 = MEMORY[0x277CF0D38];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_4;
    v20[3] = &unk_27838BC70;
    v21 = visibleCopy;
    v20[4] = self;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __94__CSPasscodeViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_5;
    v18[3] = &unk_27838BAC0;
    v14 = &v19;
    v19 = completionCopy;
    v17 = completionCopy;
    [v16 animateWithSettings:settingsCopy options:2 actions:v20 completion:v18];
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

- (void)beginInteractivePresentationTransitionForInitialTransition:(BOOL)transition
{
  if (transition)
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

- (void)updateInteractiveTransitionWithPercent:(double)percent forInitialTransition:(BOOL)transition
{
  if (transition)
  {
    v6 = fmin(fmax(percent * percent, 0.0), 1.0);
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAlpha:v6];
    [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:v6];
  }

  else
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView updateTransitionWithProgress:percent];
  }

  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView bounds];
  MidY = CGRectGetMidY(v16);
  passcodeLockView = self->_passcodeLockView;

  [(SBUIPasscodeLockView_Internal *)passcodeLockView setFrame:v8, (1.0 - percent) * MidY, v10, v12];
}

- (void)commitingToEndTransitionToPresented:(BOOL)presented forInitialTransition:(BOOL)transition
{
  if (!presented)
  {
    self->_isBeingDismissedAfterInterstitialTransitionCancelled = 1;
  }

  if (!transition)
  {
    v5 = !presented;
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView willEndTransitionToState:!presented];
    if (!v5)
    {
      passcodeLockView = self->_passcodeLockView;

      [(SBUIPasscodeLockView_Internal *)passcodeLockView _resumeBiometricMatchingAdvisory:0];
    }
  }
}

- (void)endInteractiveTransitionToPresented:(BOOL)presented forInitialTransition:(BOOL)transition
{
  transitionCopy = transition;
  presentedCopy = presented;
  [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:1.0];
  if (([(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion isValid]& 1) == 0)
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setAllowsAutomaticBiometricPresentationTransition:1];
  }

  if (transitionCopy)
  {
    if (presentedCopy)
    {
      [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView _resumeBiometricMatchingAdvisory:1];
    }
  }

  else
  {
    passcodeLockView = self->_passcodeLockView;
    if (presentedCopy)
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
    v11[5] = !presentedCopy;
    [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  }

  self->_isBeingDismissedAfterInterstitialTransitionCancelled = 0;
}

- (void)setWallpaperAverageColorOverride:(id)override
{
  if (self->_wallpaperAverageColorOverride != override)
  {
    self->_wallpaperAverageColorOverride = override;
    [(CSPasscodeViewController *)self _updateReduceTransparencyBackingColor];
  }
}

- (void)passcodeLockViewPasscodeDidChange:(id)change
{
  coverSheetContext = self->_coverSheetContext;
  changeCopy = change;
  passcodeFieldChangeObserver = [(CSCoverSheetContextProviding *)coverSheetContext passcodeFieldChangeObserver];
  passcode = [changeCopy passcode];

  v7 = [passcode length];
  if (v7)
  {
    [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView setPasscodeLockViewState:1 animated:1];
    [passcodeFieldChangeObserver notePasscodeEntryBegan];
  }

  else
  {
    [passcodeFieldChangeObserver notePasscodeEntryCancelled];
  }

  v8 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v8];
}

- (void)passcodeLockViewCancelButtonPressed:(id)pressed
{
  v4 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidCancelPasscodeEntry:self];

  [(CSCoverSheetViewControllerBase *)self dismiss];
}

- (void)passcodeLockViewEmergencyCallButtonPressed:(id)pressed
{
  v4 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  v5 = [CSAction actionWithType:2];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = CSPasscodeViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v12, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    isConsumable = 0;
    if (type <= 23)
    {
      if (type == 5)
      {
        [(SBUIPasscodeLockView_Internal *)self->_passcodeLockView resignFirstResponder];
      }

      else
      {
        if (type != 13)
        {
          goto LABEL_18;
        }

        value = [eventCopy value];
        bOOLValue = [value BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          proudLockContainerViewControllerToUpdate = [(CSPasscodeViewController *)self proudLockContainerViewControllerToUpdate];
          [proudLockContainerViewControllerToUpdate setAuthenticated:0];
        }
      }
    }

    else
    {
      switch(type)
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

    isConsumable = 0;
    goto LABEL_18;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_18:

  return isConsumable;
}

- (void)_passcodeLockViewPasscodeEntered:(id)entered authenticationType:(unint64_t)type
{
  enteredCopy = entered;
  if (!self->_attemptingUnlock)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passcodeViewControllerDidBeginPasscodeEntry:self];

    self->_attemptingUnlock = 1;
    if (type == 1)
    {
      passcode = [enteredCopy passcode];
    }

    else
    {
      passcode = 0;
    }

    authenticationAssertionProvider = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationAssertionProvider];
    v10 = [authenticationAssertionProvider createGracePeriodAssertionWithReason:@"DashBoardAttemptUnlock"];
    [v10 activate];
    isBeingDismissedAfterInterstitialTransitionCancelled = self->_isBeingDismissedAfterInterstitialTransitionCancelled;
    authenticationManager = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__CSPasscodeViewController__passcodeLockViewPasscodeEntered_authenticationType___block_invoke;
    v15[3] = &unk_27838C8B0;
    v15[4] = self;
    v16 = authenticationAssertionProvider;
    v17 = enteredCopy;
    v18 = v10;
    v13 = v10;
    v14 = authenticationAssertionProvider;
    [authenticationManager attemptUnlockWithPasscode:passcode finishUIUnlock:!isBeingDismissedAfterInterstitialTransitionCancelled completion:v15];
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
    averageColorForCurrentWallpaper = [(CSWallpaperColorProvider *)self->_wallpaperColorProvider averageColorForCurrentWallpaper];
    v5 = averageColorForCurrentWallpaper;
    if (averageColorForCurrentWallpaper)
    {
      whiteColor = averageColorForCurrentWallpaper;
    }

    else
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
    }

    v3 = whiteColor;
  }

  return v3;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_pearlSettings == settings)
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