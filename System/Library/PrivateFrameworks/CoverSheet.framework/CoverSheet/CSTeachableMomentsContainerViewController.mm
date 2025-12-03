@interface CSTeachableMomentsContainerViewController
+ (id)_animationKeyForKeyPath:(id)path iteration:(unint64_t)iteration reset:(BOOL)reset;
+ (void)_addRepeatedAnimationWithProvider:(id)provider toLayer:(id)layer;
- (BOOL)_animatesTextPositionWhenResetting;
- (BOOL)_shouldTeachAboutControlCenter;
- (BOOL)_suppressingHomeAffordanceAnimation;
- (BOOL)handleEvent:(id)event;
- (CSTeachableMomentsContainerViewController)initWithCoverSheetContext:(id)context;
- (SBDashBoardHomeAffordanceAnimationViewProviding)viewProvider;
- (id)_controlCenterGlyphAlphaAnimationWithDuration:(double)duration beginTime:(double)time;
- (id)_controlCenterGrabberAlphaAnimationWithDuration:(double)duration beginTime:(double)time;
- (id)_controlCenterGrabberPositionAnimationWithDuration:(double)duration beginTime:(double)time;
- (id)_homeAffordancePositionAnimationWithDuration:(double)duration beginTime:(double)time;
- (id)_textAlphaAnimationWithDuration:(double)duration beginTime:(double)time;
- (id)_textPositionAnimationWithDuration:(double)duration beginTime:(double)time;
- (void)_addControlCenterGlyphAnimation;
- (void)_addControlCenterGlyphResetAnimation;
- (void)_addControlCenterGrabberAnimation;
- (void)_addControlCenterGrabberResetAnimation;
- (void)_addHomeAffordanceAnimation;
- (void)_addHomeAffordanceResetAnimation;
- (void)_addResetAnimationForKeyPath:(id)path onLayer:(id)layer;
- (void)_addTextAnimation;
- (void)_addTextResetAnimation;
- (void)_beginSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap;
- (void)_beginSuppressingHomeAffordanceAnimationForScreenOff;
- (void)_cancelTimerAndResetAnimation;
- (void)_endSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap;
- (void)_endSuppressingHomeAffordanceAnimationForScreenOff;
- (void)_moveUpTimerForFiringAfterDelay:(double)delay;
- (void)_pauseNormalAnimationsForKeyPath:(id)path onLayer:(id)layer;
- (void)_removeNormalAnimationsForKeyPath:(id)path onLayer:(id)layer;
- (void)_removeResetAnimationForKeyPath:(id)path onLayer:(id)layer;
- (void)_setControlCenterTutorsHidden:(BOOL)hidden;
- (void)_setupTimerWithDelay:(double)delay;
- (void)_updateEffectiveAnimationState;
- (void)_updateLegibilitySettings;
- (void)_updateText:(id)text;
- (void)_updateTextLabel;
- (void)_updateTextLabelIfNeeded;
- (void)aggregateAppearance:(id)appearance;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)homeAffordanceViewControllerDidRecognizeSingleClick:(id)click;
- (void)loadView;
- (void)setAnimationState:(unint64_t)state;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setEffectiveAnimationState:(unint64_t)state;
- (void)setFireOffAnimationTimer:(id)timer;
- (void)setScreenOn:(BOOL)on;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSTeachableMomentsContainerViewController

- (void)_updateTextLabelIfNeeded
{
  if ([(CSTeachableMomentsContainerViewController *)self updateTextLabelOnNextAnimation])
  {
    [(CSTeachableMomentsContainerViewController *)self setUpdateTextLabelOnNextAnimation:0];

    [(CSTeachableMomentsContainerViewController *)self _updateTextLabel];
  }
}

- (void)_addHomeAffordanceAnimation
{
  view = [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController view];
  layer = [view layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"position.y" onLayer:layer];
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CSTeachableMomentsContainerViewController__addHomeAffordanceAnimation__block_invoke;
  v6[3] = &unk_27838CCE0;
  v6[4] = self;
  [v5 _addRepeatedAnimationWithProvider:v6 toLayer:layer];
}

id __72__CSTeachableMomentsContainerViewController__addHomeAffordanceAnimation__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _homeAffordancePositionAnimationWithDuration:? beginTime:?];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_addTextAnimation
{
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  callToActionLabelContainerView = [teachableMomentsContainerView callToActionLabelContainerView];
  layer = [callToActionLabelContainerView layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"position.y" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"opacity" onLayer:layer];
  v6 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__CSTeachableMomentsContainerViewController__addTextAnimation__block_invoke;
  v7[3] = &unk_27838CCE0;
  v7[4] = self;
  [v6 _addRepeatedAnimationWithProvider:v7 toLayer:layer];
}

id __62__CSTeachableMomentsContainerViewController__addTextAnimation__block_invoke(uint64_t a1, double a2, double a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) _textPositionAnimationWithDuration:? beginTime:?];
  v7 = [*(a1 + 32) _textAlphaAnimationWithDuration:a2 beginTime:a3];
  v10[0] = v6;
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

- (BOOL)_shouldTeachAboutControlCenter
{
  mEMORY[0x277CFC878] = [MEMORY[0x277CFC878] sharedInstance];
  v3 = [mEMORY[0x277CFC878] userInvocationCount] < 2;

  return v3;
}

- (void)_addControlCenterGrabberAnimation
{
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  controlCenterGrabberContainerView = [teachableMomentsContainerView controlCenterGrabberContainerView];
  layer = [controlCenterGrabberContainerView layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"position.y" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"opacity" onLayer:layer];
  v6 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CSTeachableMomentsContainerViewController__addControlCenterGrabberAnimation__block_invoke;
  v7[3] = &unk_27838CCE0;
  v7[4] = self;
  [v6 _addRepeatedAnimationWithProvider:v7 toLayer:layer];
}

id __78__CSTeachableMomentsContainerViewController__addControlCenterGrabberAnimation__block_invoke(uint64_t a1, double a2, double a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) _controlCenterGrabberPositionAnimationWithDuration:? beginTime:?];
  v7 = [*(a1 + 32) _controlCenterGrabberAlphaAnimationWithDuration:a2 beginTime:a3];
  v10[0] = v6;
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

- (void)_addControlCenterGlyphAnimation
{
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  controlCenterGlyphContainerView = [teachableMomentsContainerView controlCenterGlyphContainerView];
  layer = [controlCenterGlyphContainerView layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"opacity" onLayer:layer];
  v6 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CSTeachableMomentsContainerViewController__addControlCenterGlyphAnimation__block_invoke;
  v7[3] = &unk_27838CCE0;
  v7[4] = self;
  [v6 _addRepeatedAnimationWithProvider:v7 toLayer:layer];
}

id __76__CSTeachableMomentsContainerViewController__addControlCenterGlyphAnimation__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _controlCenterGlyphAlphaAnimationWithDuration:? beginTime:?];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_updateLegibilitySettings
{
  activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  legibilitySettings = [activeAppearance legibilitySettings];

  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  [teachableMomentsContainerView setLegibilitySettings:legibilitySettings];

  [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController setLegibilitySettings:legibilitySettings];
}

- (void)_updateEffectiveAnimationState
{
  animationState = [(CSTeachableMomentsContainerViewController *)self animationState];
  if ([(CSTeachableMomentsContainerViewController *)self _suppressingHomeAffordanceAnimation])
  {
    v4 = 0;
  }

  else
  {
    v4 = animationState;
  }

  [(CSTeachableMomentsContainerViewController *)self setEffectiveAnimationState:v4];
}

- (BOOL)_suppressingHomeAffordanceAnimation
{
  homeAffordanceAnimationSuppressionReasons = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v3 = [homeAffordanceAnimationSuppressionReasons count] != 0;

  return v3;
}

- (void)_cancelTimerAndResetAnimation
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addHomeAffordanceResetAnimation
{
  view = [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController view];
  layer = [view layer];

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"position.y" onLayer:layer];
}

- (void)_addTextResetAnimation
{
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  callToActionLabelContainerView = [teachableMomentsContainerView callToActionLabelContainerView];
  layer = [callToActionLabelContainerView layer];

  if ([(CSTeachableMomentsContainerViewController *)self _animatesTextPositionWhenResetting])
  {
    [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"position.y" onLayer:layer];
  }

  else
  {
    [(CSTeachableMomentsContainerViewController *)self _pauseNormalAnimationsForKeyPath:@"position.y" onLayer:layer];
  }

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"opacity" onLayer:layer];
}

- (BOOL)_animatesTextPositionWhenResetting
{
  assistantController = [(CSCoverSheetContextProviding *)self->_coverSheetContext assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];

  if (!isHomeAffordanceDoubleTapGestureEnabled)
  {
    return 1;
  }

  homeAffordanceAnimationSuppressionReasons = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v6 = [homeAffordanceAnimationSuppressionReasons countForObject:@"HomeAffordanceDoubleTap"] == 0;

  return v6;
}

- (void)_addControlCenterGrabberResetAnimation
{
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  controlCenterGrabberContainerView = [teachableMomentsContainerView controlCenterGrabberContainerView];
  layer = [controlCenterGrabberContainerView layer];

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"position.y" onLayer:layer];
  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"opacity" onLayer:layer];
}

- (void)_addControlCenterGlyphResetAnimation
{
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  controlCenterGlyphContainerView = [teachableMomentsContainerView controlCenterGlyphContainerView];
  layer = [controlCenterGlyphContainerView layer];

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"opacity" onLayer:layer];
}

- (void)_endSuppressingHomeAffordanceAnimationForScreenOff
{
  homeAffordanceAnimationSuppressionReasons = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v4 = [homeAffordanceAnimationSuppressionReasons containsObject:@"ScreenOff"];

  if (v4)
  {
    homeAffordanceAnimationSuppressionReasons2 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
    [homeAffordanceAnimationSuppressionReasons2 removeObject:@"ScreenOff"];
  }

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (CSTeachableMomentsContainerViewController)initWithCoverSheetContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = CSTeachableMomentsContainerViewController;
  v6 = [(CSCoverSheetViewControllerBase *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetContext, context);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedLegibilityLabels = v7->_cachedLegibilityLabels;
    v7->_cachedLegibilityLabels = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    homeAffordanceAnimationSuppressionReasons = v7->_homeAffordanceAnimationSuppressionReasons;
    v7->_homeAffordanceAnimationSuppressionReasons = v10;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__contentSizeCategoryChanged name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSTeachableMomentsContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(CSTeachableMomentsContainerView);
  controlCenterGlyphContainerView = [(CSTeachableMomentsContainerView *)v3 controlCenterGlyphContainerView];
  [controlCenterGlyphContainerView setAlpha:0.0];

  statusBar = [*MEMORY[0x277D76620] statusBar];
  [(CSTeachableMomentsContainerView *)v3 setStatusBarToFollow:statusBar];

  [(CSTeachableMomentsContainerViewController *)self setView:v3];
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = [[CSHomeAffordanceViewController alloc] initWithCoverSheetContext:self->_coverSheetContext];
    homeAffordanceViewController = self->_homeAffordanceViewController;
    self->_homeAffordanceViewController = v6;

    [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController setDelegate:self];
    v8 = self->_homeAffordanceViewController;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __53__CSTeachableMomentsContainerViewController_loadView__block_invoke;
    v12 = &unk_27838BA70;
    v13 = v3;
    selfCopy = self;
    [(CSTeachableMomentsContainerViewController *)self bs_addChildViewController:v8 animated:0 transitionBlock:&v9];
  }

  [(CSTeachableMomentsContainerViewController *)self _updateLegibilitySettings:v9];
}

void __53__CSTeachableMomentsContainerViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 1080);
  v8 = a2;
  v5 = [v4 view];
  [v3 setHomeAffordanceContainerView:v5];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 1080) homeAffordanceView];
  [v6 setHomeAffordanceView:v7];

  v8[2]();
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSTeachableMomentsContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewWillAppear:appear];
  [(CSTeachableMomentsContainerViewController *)self _updateTextLabel];
  [(CSTeachableMomentsContainerViewController *)self setAnimationState:1];
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  usesStatusBarRelativeLayoutForControlCenterTutors = [teachableMomentsContainerView usesStatusBarRelativeLayoutForControlCenterTutors];

  if (usesStatusBarRelativeLayoutForControlCenterTutors)
  {
    [(CSTeachableMomentsContainerViewController *)self _setControlCenterTutorsHidden:1];
    [(CSTeachableMomentsContainerViewController *)self _setControlCenterTutorsHidden:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSTeachableMomentsContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:disappear];
  [(CSTeachableMomentsContainerViewController *)self setAnimationState:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = CSTeachableMomentsContainerViewController;
  coordinatorCopy = coordinator;
  [(CSCoverSheetViewControllerBase *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__CSTeachableMomentsContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_27838C938;
  v11 = teachableMomentsContainerView;
  v9 = teachableMomentsContainerView;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
}

uint64_t __96__CSTeachableMomentsContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = CSTeachableMomentsContainerViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v14, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    isConsumable = 0;
    if (type <= 14)
    {
      if (type == 1)
      {
        [(CSTeachableMomentsContainerViewController *)self _updateLegibilitySettings];
      }

      else
      {
        if (type != 13)
        {
          goto LABEL_19;
        }

        value = [eventCopy value];
        bOOLValue = [value BOOLValue];

        [(CSTeachableMomentsContainerViewController *)self setAuthenticated:bOOLValue];
      }
    }

    else if (type == 15)
    {
      value2 = [eventCopy value];
      unsignedIntegerValue = [value2 unsignedIntegerValue];

      if (unsignedIntegerValue == 28 && ![(CSTeachableMomentsContainerViewController *)self currentState])
      {
        [(CSTeachableMomentsContainerViewController *)self _moveUpTimerForFiringAfterDelay:0.0];
      }
    }

    else
    {
      if (type == 24)
      {
        selfCopy2 = self;
        v8 = 1;
      }

      else
      {
        if (type != 25)
        {
          goto LABEL_19;
        }

        selfCopy2 = self;
        v8 = 0;
      }

      [(CSTeachableMomentsContainerViewController *)selfCopy2 setScreenOn:v8];
    }

    isConsumable = 0;
    goto LABEL_19;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_19:

  return isConsumable;
}

- (void)setAuthenticated:(BOOL)authenticated
{
  if (self->_authenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    self->_authenticated = authenticated;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CSTeachableMomentsContainerViewController setAuthenticated:];
    }

    if (authenticatedCopy)
    {
      [(CSTeachableMomentsContainerViewController *)self setUpdateTextLabelOnNextAnimation:1];
    }

    else
    {
      [(CSTeachableMomentsContainerViewController *)self _updateTextLabel];
    }
  }
}

- (void)homeAffordanceViewControllerDidRecognizeSingleClick:(id)click
{
  v4 = [CSAction actionWithType:11];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];
}

- (void)_setControlCenterTutorsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v14 = *MEMORY[0x277D85DE8];
  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v6 = teachableMomentsContainerView;
  if (hiddenCopy || ([teachableMomentsContainerView isStatusBarLayoutReady] & 1) != 0)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = hiddenCopy;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView needs layout for controlCenterTutorsHidden: %{BOOL}u", buf, 8u);
    }

    [v6 setNeedsLayout];
    controlCenterTutorsContainerView = [v6 controlCenterTutorsContainerView];
    [controlCenterTutorsContainerView setHidden:hiddenCopy];
  }

  else
  {
    v9 = dispatch_time(0, 100000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__CSTeachableMomentsContainerViewController__setControlCenterTutorsHidden___block_invoke;
    v10[3] = &unk_27838BC70;
    v10[4] = self;
    v11 = hiddenCopy;
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
  }
}

- (void)setAnimationState:(unint64_t)state
{
  if (self->_animationState != state)
  {
    self->_animationState = state;
    [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
  }
}

- (void)setScreenOn:(BOOL)on
{
  if (self->_screenOn != on)
  {
    self->_screenOn = on;
    if (on)
    {
      [(CSTeachableMomentsContainerViewController *)self _endSuppressingHomeAffordanceAnimationForScreenOff];
    }

    else
    {
      [(CSTeachableMomentsContainerViewController *)self _beginSuppressingHomeAffordanceAnimationForScreenOff];
    }
  }
}

- (void)setEffectiveAnimationState:(unint64_t)state
{
  if (self->_effectiveAnimationState != state)
  {
    self->_effectiveAnimationState = state;
    if (state)
    {
      if (state == 1)
      {
        v4 = SBLogDashBoard();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          [CSTeachableMomentsContainerViewController setEffectiveAnimationState:];
        }

        [(CSTeachableMomentsContainerViewController *)self _setupTimer];
        if ([(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled])
        {
          if ([(SBUIBiometricResource *)self->_biometricResource biometricLockoutState])
          {
            [(CSTeachableMomentsContainerViewController *)self _moveUpTimerForFiringAfterDelay:0.0];
          }
        }
      }
    }

    else
    {

      [(CSTeachableMomentsContainerViewController *)self _cancelTimerAndResetAnimation];
    }
  }
}

- (void)_setupTimerWithDelay:(double)delay
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__CSTeachableMomentsContainerViewController__setupTimerWithDelay___block_invoke;
  v5[3] = &unk_27838CCB8;
  v5[4] = self;
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:delay];
  [(CSTeachableMomentsContainerViewController *)self setFireOffAnimationTimer:v4];
}

uint64_t __66__CSTeachableMomentsContainerViewController__setupTimerWithDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateTextLabelIfNeeded];
  if ([*(a1 + 32) _shouldTeachAboutHomeAffordance])
  {
    [*(a1 + 32) _addHomeAffordanceAnimation];
    [*(a1 + 32) _addTextAnimation];
  }

  if ([*(a1 + 32) _shouldTeachAboutControlCenter])
  {
    v2 = [*(a1 + 32) teachableMomentsContainerView];
    v3 = [v2 controlCenterGrabberContainerView];

    if (v3)
    {
      [*(a1 + 32) _addControlCenterGrabberAnimation];
      [*(a1 + 32) _addControlCenterGlyphAnimation];
    }
  }

  v4 = *(a1 + 32);

  return [v4 setFireOffAnimationTimer:0];
}

- (void)_moveUpTimerForFiringAfterDelay:(double)delay
{
  fireOffAnimationTimer = [(CSTeachableMomentsContainerViewController *)self fireOffAnimationTimer];
  fireDate = [fireOffAnimationTimer fireDate];
  [fireDate timeIntervalSinceNow];
  v7 = v6;

  if (v7 > delay)
  {
    [(CSTeachableMomentsContainerViewController *)self setFireOffAnimationTimer:0];
    [(CSTeachableMomentsContainerViewController *)self _setupTimerWithDelay:delay];
  }
}

- (void)setFireOffAnimationTimer:(id)timer
{
  timerCopy = timer;
  fireOffAnimationTimer = self->_fireOffAnimationTimer;
  if (fireOffAnimationTimer != timerCopy)
  {
    v7 = timerCopy;
    [(NSTimer *)fireOffAnimationTimer invalidate];
    objc_storeStrong(&self->_fireOffAnimationTimer, timer);
    timerCopy = v7;
  }

  MEMORY[0x2821F96F8](fireOffAnimationTimer, timerCopy);
}

+ (void)_addRepeatedAnimationWithProvider:(id)provider toLayer:(id)layer
{
  v25 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  layerCopy = layer;
  v8 = CACurrentMediaTime();
  v9 = 0;
  v18 = (providerCopy + 2);
  v19 = providerCopy;
  do
  {
    v10 = v19[2](4.0, v8);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if (v9 == 2)
          {
            [*(*(&v20 + 1) + 8 * v14) setValue:MEMORY[0x277CBEC38] forKey:@"kCSTeachableMomentIsLastAnimationKey"];
          }

          keyPath = [v15 keyPath];
          v17 = [self _animationKeyForKeyPath:keyPath iteration:v9 reset:0];

          [layerCopy addAnimation:v15 forKey:v17];
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v8 = v8 + 4.0;

    ++v9;
  }

  while (v9 != 3);
}

- (void)_addResetAnimationForKeyPath:(id)path onLayer:(id)layer
{
  layerCopy = layer;
  pathCopy = path;
  presentationLayer = [layerCopy presentationLayer];
  v9 = [presentationLayer valueForKeyPath:pathCopy];
  [v9 doubleValue];
  v11 = v10;

  v12 = [layerCopy valueForKeyPath:pathCopy];
  [v12 doubleValue];
  v14 = v13;

  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:pathCopy onLayer:layerCopy];
  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:pathCopy];
  [v19 setDuration:0.2];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v19 setTimingFunction:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v19 setFromValue:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  [v19 setToValue:v17];

  v18 = [objc_opt_class() _animationKeyForKeyPath:pathCopy iteration:0 reset:1];

  [layerCopy addAnimation:v19 forKey:v18];
}

- (void)_removeResetAnimationForKeyPath:(id)path onLayer:(id)layer
{
  layerCopy = layer;
  pathCopy = path;
  v7 = [objc_opt_class() _animationKeyForKeyPath:pathCopy iteration:0 reset:1];

  [layerCopy removeAnimationForKey:v7];
}

- (void)_removeNormalAnimationsForKeyPath:(id)path onLayer:(id)layer
{
  pathCopy = path;
  layerCopy = layer;
  for (i = 0; i != 3; ++i)
  {
    v7 = [objc_opt_class() _animationKeyForKeyPath:pathCopy iteration:i reset:0];
    [layerCopy removeAnimationForKey:v7];
  }
}

- (void)_pauseNormalAnimationsForKeyPath:(id)path onLayer:(id)layer
{
  pathCopy = path;
  layerCopy = layer;
  v6 = CACurrentMediaTime();
  for (i = 0; i != 3; ++i)
  {
    v8 = [objc_opt_class() _animationKeyForKeyPath:pathCopy iteration:i reset:0];
    v9 = [layerCopy animationForKey:v8];
    v10 = [v9 copy];
    [v10 setSpeed:0.0];
    [v9 beginTime];
    [v10 setTimeOffset:v6 - v11];
    [layerCopy removeAnimationForKey:v8];
    [layerCopy addAnimation:v10 forKey:v8];
  }
}

+ (id)_animationKeyForKeyPath:(id)path iteration:(unint64_t)iteration reset:(BOOL)reset
{
  if (reset)
  {
    v5 = @"kCSHomeAffordanceResetAnimation";
  }

  else
  {
    v5 = @"kCSHomeAffordanceNormalAnimation";
  }

  return [(__CFString *)v5 stringByAppendingFormat:@"-%@-%lu", path, iteration];
}

- (id)_homeAffordancePositionAnimationWithDuration:(double)duration beginTime:(double)time
{
  v14[5] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
  [v6 setKeyTimes:&unk_283079F80];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:{-5.0, v7}];
  v14[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:-15.0];
  v14[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:-2.0];
  v14[3] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v14[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
  [v6 setValues:v12];

  [v6 setCalculationMode:@"cubic"];
  [v6 setDuration:duration];
  [v6 setBeginTime:time];
  [v6 setAdditive:1];

  return v6;
}

- (id)_textPositionAnimationWithDuration:(double)duration beginTime:(double)time
{
  v14[5] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
  [v6 setKeyTimes:&unk_283079F98];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:{-16.0, v7}];
  v14[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:-30.0];
  v14[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:-33.0];
  v14[3] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:-33.0];
  v14[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
  [v6 setValues:v12];

  [v6 setCalculationMode:@"cubic"];
  [v6 setDuration:duration];
  [v6 setBeginTime:time];
  [v6 setAdditive:1];

  return v6;
}

- (id)_textAlphaAnimationWithDuration:(double)duration beginTime:(double)time
{
  v7 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v7 setKeyTimes:&unk_283079FB0];
  [v7 setValues:&unk_283079FC8];
  [v7 setCalculationMode:@"cubic"];
  [v7 setDuration:duration];
  [v7 setBeginTime:time];
  [v7 setAdditive:1];
  [v7 setDelegate:self];

  return v7;
}

- (id)_controlCenterGrabberPositionAnimationWithDuration:(double)duration beginTime:(double)time
{
  v171[5] = *MEMORY[0x277D85DE8];
  v8 = __sb__runningInSpringBoard();
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_10;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v9 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v32 == *(MEMORY[0x277D66E30] + 288) && v31 == *(MEMORY[0x277D66E30] + 296))
    {
      v169 = currentDevice29 ^ 1;
      v170 = v10;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v157 = 0;
      v152 = 0;
      v151 = 0;
      v158 = 0;
      v150 = 0;
      v149 = 0;
      v159 = 0;
      v148 = 0;
      v160 = 0;
      v147 = 0;
      v146 = 0;
      v161 = 0;
      v145 = 0;
      v162 = 0;
      v144 = 0;
      v163 = 0;
      v143 = 0;
      v164 = 0;
      v142 = 0;
      v165 = 0;
      v141 = 0;
      v166 = 0;
      v140 = 0;
      v167 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v168 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 30.8;
      v28 = 36.0;
      goto LABEL_67;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  v12 = __sb__runningInSpringBoard();
  v169 = v9;
  v170 = v10;
  if (v12)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_19;
    }
  }

  v14 = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v13 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 440))
    {
      v167 = currentDevice29 ^ 1;
      v168 = v14;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v157 = 0;
      v152 = 0;
      v151 = 0;
      v158 = 0;
      v150 = 0;
      v149 = 0;
      v159 = 0;
      v148 = 0;
      v160 = 0;
      v147 = 0;
      v146 = 0;
      v161 = 0;
      v145 = 0;
      v162 = 0;
      v144 = 0;
      v163 = 0;
      v143 = 0;
      v164 = 0;
      v142 = 0;
      v165 = 0;
      v141 = 0;
      v166 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 30.8;
      v28 = 36.0;
      goto LABEL_67;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  v15 = __sb__runningInSpringBoard();
  v167 = v13;
  v168 = v14;
  if (v15)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_28;
    }
  }

  v17 = v15 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    v16 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 376))
    {
      v165 = currentDevice29 ^ 1;
      v166 = v17;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v157 = 0;
      v152 = 0;
      v151 = 0;
      v158 = 0;
      v150 = 0;
      v149 = 0;
      v159 = 0;
      v148 = 0;
      v160 = 0;
      v147 = 0;
      v146 = 0;
      v161 = 0;
      v145 = 0;
      v162 = 0;
      v144 = 0;
      v163 = 0;
      v143 = 0;
      v164 = 0;
      v142 = 0;
      v140 = 0;
      v141 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 30.8;
      v28 = 36.0;
      goto LABEL_67;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_28:
  v18 = __sb__runningInSpringBoard();
  v165 = v16;
  v166 = v17;
  if (v18)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      currentDevice28 = 0;
      mainScreen27 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      currentDevice28 = 0;
      mainScreen27 = 1;
      goto LABEL_37;
    }
  }

  mainScreen27 = v18 ^ 1u;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  currentDevice28 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v19 >= *(MEMORY[0x277D66E30] + 280))
  {
    v163 = currentDevice29 ^ 1;
    v164 = mainScreen27;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v157 = 0;
    v152 = 0;
    v151 = 0;
    v158 = 0;
    v150 = 0;
    v149 = 0;
    v159 = 0;
    v148 = 0;
    v160 = 0;
    v147 = 0;
    v146 = 0;
    v161 = 0;
    v145 = 0;
    v162 = 0;
    v144 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 30.8;
    v28 = 36.0;
    goto LABEL_67;
  }

LABEL_37:
  v20 = __sb__runningInSpringBoard();
  v163 = currentDevice28;
  v164 = mainScreen27;
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v161 = 0;
      v21 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v161 = 0;
      v21 = 1;
      goto LABEL_47;
    }
  }

  v21 = v20 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  v161 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v29 >= *(MEMORY[0x277D66E30] + 264))
  {
    v162 = v21;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v157 = 0;
    v152 = 0;
    v151 = 0;
    v158 = 0;
    v150 = 0;
    v149 = 0;
    v159 = 0;
    v148 = 0;
    v160 = 0;
    v147 = 0;
    v146 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 30.8;
    v28 = 36.0;
    goto LABEL_67;
  }

LABEL_47:
  v30 = __sb__runningInSpringBoard();
  v162 = v21;
  if (v30)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v160 = 0;
      goto LABEL_184;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v160 = 0x100000000;
      goto LABEL_184;
    }
  }

  HIDWORD(v160) = v30 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v160) = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v45 >= *(MEMORY[0x277D66E30] + 248))
  {
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v157 = 0;
    v152 = 0;
    v151 = 0;
    v158 = 0;
    v150 = 0;
    v149 = 0;
    v159 = 0;
    v148 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    goto LABEL_67;
  }

LABEL_184:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_186;
    }

LABEL_192:
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v157 = 0;
    v152 = 0;
    v151 = 0;
    v158 = 0;
    v150 = 0;
    v149 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    v140 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 36.0;
    v27 = 30.8;
    v159 = currentDevice29 ^ 1;
    goto LABEL_67;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_192;
  }

LABEL_186:
  v159 = currentDevice29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_190:
    v158 = 0;
    goto LABEL_200;
  }

  v46 = __sb__runningInSpringBoard();
  if (v46)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_190;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v158 = 0x100000000;
      goto LABEL_200;
    }
  }

  HIDWORD(v158) = v46 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v158) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v49 >= *(MEMORY[0x277D66E30] + 200))
    {
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v157 = 0;
      v152 = 0;
      v151 = 0;
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 24.8;
      v28 = 28.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v158) = 0;
  }

LABEL_200:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v157 = 0;
      goto LABEL_210;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v157 = 0x100000000;
      goto LABEL_210;
    }
  }

  HIDWORD(v157) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    LODWORD(v157) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_214;
    }
  }

  else
  {
    LODWORD(v157) = 0;
  }

LABEL_210:
  if (_SBF_Private_IsD94Like())
  {
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    v140 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 24.8;
    v28 = 28.0;
    goto LABEL_67;
  }

LABEL_214:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_218:
    v156 = 0;
    goto LABEL_228;
  }

  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_218;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v156 = 0x100000000;
      goto LABEL_228;
    }
  }

  HIDWORD(v156) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v156) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 136))
    {
      v155 = 0;
      v154 = 0;
      v153 = 0;
      v152 = 0;
      v151 = 0;
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 24.8;
      v28 = 28.0;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v156) = 0;
  }

LABEL_228:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v155 = 0;
      goto LABEL_238;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v155 = 0x100000000;
      goto LABEL_238;
    }
  }

  HIDWORD(v155) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v155) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_242;
    }
  }

  else
  {
    LODWORD(v155) = 0;
  }

LABEL_238:
  if (_SBF_Private_IsD64Like())
  {
    v154 = 0;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    v140 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 24.8;
    v28 = 28.0;
    goto LABEL_67;
  }

LABEL_242:
  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v154 = 0;
      HIDWORD(v153) = 0;
      goto LABEL_252;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v153) = 0;
      v154 = 1;
      goto LABEL_252;
    }
  }

  v154 = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v52 = __sb__runningInSpringBoard();
    if (v52)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    currentDevice29 = v52 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v153) = currentDevice29;
    if (v53 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v153) = 0;
      v152 = 0;
      v151 = 0;
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 24.8;
      v28 = 28.0;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v153) = 0;
  }

LABEL_252:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v153) = 0;
      HIDWORD(v152) = 0;
      goto LABEL_262;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v152) = 0;
      LODWORD(v153) = 1;
      goto LABEL_262;
    }
  }

  LODWORD(v153) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    HIDWORD(v152) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_272;
    }
  }

  else
  {
    HIDWORD(v152) = 0;
  }

LABEL_262:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v152) = 0;
    v151 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    v140 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 24.8;
    v28 = 28.0;
    goto LABEL_67;
  }

LABEL_272:
  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v152) = 0;
      HIDWORD(v151) = 0;
      goto LABEL_282;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v151) = 0;
      LODWORD(v152) = 1;
      goto LABEL_282;
    }
  }

  LODWORD(v152) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v57 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v151) = currentDevice29;
    if (v58 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v151) = 0;
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 29.0;
      v27 = 24.8;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v151) = 0;
  }

LABEL_282:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v151) = 0;
      HIDWORD(v150) = 0;
      goto LABEL_292;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v150) = 0;
      LODWORD(v151) = 1;
      goto LABEL_292;
    }
  }

  LODWORD(v151) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    HIDWORD(v150) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v59 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_301;
    }
  }

  else
  {
    HIDWORD(v150) = 0;
  }

LABEL_292:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v150) = 0;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    goto LABEL_67;
  }

LABEL_301:
  currentDevice28 = &unk_21EC95000;
  if (!_SBF_Private_IsD93Like())
  {
LABEL_305:
    LODWORD(v150) = 0;
    HIDWORD(v149) = 0;
    goto LABEL_312;
  }

  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_305;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      HIDWORD(v149) = 0;
      LODWORD(v150) = 1;
      goto LABEL_312;
    }
  }

  LODWORD(v150) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    HIDWORD(v149) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(v149) = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 26.6666667;
      v27 = 23.6666667;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v149) = 0;
  }

LABEL_312:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v149) = 0;
      HIDWORD(v148) = 0;
      goto LABEL_322;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v148) = 0;
      LODWORD(v149) = 1;
      goto LABEL_322;
    }
  }

  LODWORD(v149) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v148) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_326;
    }
  }

  else
  {
    HIDWORD(v148) = 0;
  }

LABEL_322:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(v148) = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 26.6666667;
    v27 = 23.6666667;
    goto LABEL_67;
  }

LABEL_326:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_330:
    LODWORD(v148) = 0;
    HIDWORD(v147) = 0;
    goto LABEL_340;
  }

  v62 = __sb__runningInSpringBoard();
  if (v62)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_330;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v147) = 0;
      LODWORD(v148) = 1;
      goto LABEL_340;
    }
  }

  LODWORD(v148) = v62 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    HIDWORD(v147) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v68 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v147) = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 26.6666667;
      v27 = 23.6666667;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v147) = 0;
  }

LABEL_340:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v147) = 0;
      currentDevice29 = 0;
      goto LABEL_350;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      LODWORD(v147) = 1;
      goto LABEL_350;
    }
  }

  LODWORD(v147) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v65 = __sb__runningInSpringBoard();
    if (v65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    currentDevice29 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_354;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_350:
  if (_SBF_Private_IsD63Like())
  {
    HIDWORD(v146) = currentDevice29;
    LODWORD(v146) = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 26.6666667;
    v27 = 23.6666667;
    goto LABEL_67;
  }

LABEL_354:
  HIDWORD(v146) = currentDevice29;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_358:
    LODWORD(v146) = 0;
    HIDWORD(v145) = 0;
    goto LABEL_368;
  }

  v67 = __sb__runningInSpringBoard();
  if (v67)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_358;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v145) = 0;
      LODWORD(v146) = 1;
      goto LABEL_368;
    }
  }

  LODWORD(v146) = v67 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v145) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v145) = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 26.6666667;
      v27 = 23.6666667;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v145) = 0;
  }

LABEL_368:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v145) = 0;
      HIDWORD(v144) = 0;
      goto LABEL_378;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v144) = 0;
      LODWORD(v145) = 1;
      goto LABEL_378;
    }
  }

  LODWORD(v145) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v144) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v69 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_382;
    }
  }

  else
  {
    HIDWORD(v144) = 0;
  }

LABEL_378:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v144) = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 26.6666667;
    v27 = 23.6666667;
    goto LABEL_67;
  }

LABEL_382:
  v70 = __sb__runningInSpringBoard();
  mainScreen27 = &unk_21EC95000;
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v144) = 0;
      HIDWORD(v143) = 0;
      goto LABEL_392;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v143) = 0;
      LODWORD(v144) = 1;
      goto LABEL_392;
    }
  }

  LODWORD(v144) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v143) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v143) = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 29.0;
      v27 = 24.8;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v143) = 0;
  }

LABEL_392:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v143) = 0;
      HIDWORD(v142) = 0;
      goto LABEL_402;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v142) = 0;
      LODWORD(v143) = 1;
      goto LABEL_402;
    }
  }

  LODWORD(v143) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v142) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v73 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_412;
    }
  }

  else
  {
    HIDWORD(v142) = 0;
  }

LABEL_402:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v142) = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 29.0;
    v27 = 24.8;
    goto LABEL_67;
  }

LABEL_412:
  v74 = __sb__runningInSpringBoard();
  if (v74)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      mainScreen27 = 0;
      HIDWORD(v141) = 0;
      goto LABEL_422;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v141) = 0;
      mainScreen27 = 1;
      goto LABEL_422;
    }
  }

  mainScreen27 = v74 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v141) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v77 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v142) = mainScreen27;
      LODWORD(v141) = 0;
      v140 = 0;
      v139 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 26.6666667;
      v27 = 23.6666667;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v141) = 0;
  }

LABEL_422:
  v75 = __sb__runningInSpringBoard();
  LODWORD(v142) = mainScreen27;
  if (v75)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v141) = 0;
      currentDevice29 = 0;
      goto LABEL_432;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      LODWORD(v141) = 1;
      goto LABEL_432;
    }
  }

  LODWORD(v141) = v75 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v76 = __sb__runningInSpringBoard();
    if (v76)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    currentDevice29 = v76 ^ 1u;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_439;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_432:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v140) = currentDevice29;
LABEL_443:
    LODWORD(v140) = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 26.6666667;
    v27 = 23.6666667;
    goto LABEL_67;
  }

LABEL_439:
  HIDWORD(v140) = currentDevice29;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_443;
  }

  v28 = 26.6666667;
  v27 = 23.6666667;
  if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v140) = 0;
    v139 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_67;
  }

  v79 = __sb__runningInSpringBoard();
  if (v79)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v140) = 0;
      v139 = 0;
      goto LABEL_457;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v139 = 0;
      LODWORD(v140) = 1;
      goto LABEL_457;
    }
  }

  LODWORD(v140) = v79 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v139 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v83 >= *(MEMORY[0x277D66E30] + 88))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 27.6666667;
      goto LABEL_67;
    }
  }

  else
  {
    v139 = 0;
  }

LABEL_457:
  v80 = __sb__runningInSpringBoard();
  if (v80)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_467;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_467;
    }
  }

  v22 = v80 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v23 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v84 >= *(MEMORY[0x277D66E30] + 72))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0.0;
      v28 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_467:
  currentDevice29 = __sb__runningInSpringBoard();
  if (!currentDevice29)
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v25 = 0;
      v24 = 1;
      goto LABEL_477;
    }

LABEL_473:
    v24 = currentDevice29 ^ 1;
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
    }

    v25 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v81 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_480;
    }

    goto LABEL_477;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_473;
  }

  v24 = 0;
  v25 = 0;
LABEL_477:
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_480:
      v26 = 0;
      v27 = 0.0;
      v28 = 0.0;
      goto LABEL_67;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v26 = 1;
      v27 = 0.0;
      v28 = 0.0;
      goto LABEL_67;
    }
  }

  v26 = mainScreen28 ^ 1;
  v85 = __sb__runningInSpringBoard();
  if (v85)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  BSSizeRoundForScale();
  v27 = 0.0;
  v28 = 0.0;
  if (v85 != 1)
  {
  }

LABEL_67:
  if (v26)
  {
  }

  if (v25)
  {
  }

  if (v24)
  {
  }

  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v139)
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (HIDWORD(v148))
  {
  }

  if (v149)
  {
  }

  if (HIDWORD(v149))
  {
  }

  if (v150)
  {
  }

  if (HIDWORD(v150))
  {
  }

  if (v151)
  {
  }

  if (HIDWORD(v151))
  {
  }

  if (v152)
  {
  }

  if (HIDWORD(v152))
  {
  }

  if (v153)
  {
  }

  if (HIDWORD(v153))
  {
  }

  if (v154)
  {
  }

  if (v155)
  {
  }

  if (HIDWORD(v155))
  {
  }

  if (v156)
  {
  }

  if (HIDWORD(v156))
  {
  }

  if (v157)
  {
  }

  if (HIDWORD(v157))
  {
  }

  if (v158)
  {
  }

  if (HIDWORD(v158))
  {
  }

  if (v159)
  {
  }

  if (v160)
  {
  }

  if (HIDWORD(v160))
  {
  }

  if (v161)
  {
  }

  if (v162)
  {
  }

  if (v163)
  {

    if (!v164)
    {
      goto LABEL_165;
    }
  }

  else if (!v164)
  {
LABEL_165:
    if (v165)
    {
      goto LABEL_166;
    }

    goto LABEL_174;
  }

  if (v165)
  {
LABEL_166:

    if (!v166)
    {
      goto LABEL_167;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v166)
  {
LABEL_167:
    if (v167)
    {
      goto LABEL_168;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v167)
  {
LABEL_168:

    if (!v168)
    {
      goto LABEL_169;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v168)
  {
LABEL_169:
    if (v169)
    {
      goto LABEL_170;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v169)
  {
LABEL_170:

    if (!v170)
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (v170)
  {
LABEL_179:
  }

LABEL_180:
  v36 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
  [v36 setKeyTimes:&unk_283079FE0];
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v171[0] = v37;
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v171[1] = v38;
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  v171[2] = v39;
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v171[3] = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v171[4] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:5];
  [v36 setValues:v42];

  [v36 setCalculationMode:@"cubic"];
  [v36 setDuration:duration];
  [v36 setBeginTime:time];
  [v36 setAdditive:1];
  v43 = v36;

  return v36;
}

- (id)_controlCenterGrabberAlphaAnimationWithDuration:(double)duration beginTime:(double)time
{
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v6 setKeyTimes:&unk_283079FF8];
  [v6 setValues:&unk_28307A010];
  [v6 setCalculationMode:@"cubic"];
  [v6 setDuration:duration];
  [v6 setBeginTime:time];

  return v6;
}

- (id)_controlCenterGlyphAlphaAnimationWithDuration:(double)duration beginTime:(double)time
{
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v6 setKeyTimes:&unk_28307A028];
  [v6 setValues:&unk_28307A040];
  [v6 setCalculationMode:@"cubic"];
  [v6 setDuration:duration];
  [v6 setBeginTime:time];
  [v6 setAdditive:1];

  return v6;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    v5 = [stop valueForKey:@"kCSTeachableMomentIsLastAnimationKey"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [CSTeachableMomentsContainerViewController animationDidStop:finished:];
      }

      [(CSTeachableMomentsContainerViewController *)self _setupTimer];
    }

    [(CSTeachableMomentsContainerViewController *)self _updateTextLabelIfNeeded];
  }
}

- (void)_updateTextLabel
{
  v3 = NSStringFromCSTeachableMomentCallToActionLabelState([(CSTeachableMomentsContainerViewController *)self currentState]);
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CSTeachableMomentsContainerViewController _updateTextLabel];
  }

  [(CSTeachableMomentsContainerViewController *)self _updateText:v3];
}

- (void)_updateText:(id)text
{
  textCopy = text;
  cachedLegibilityLabels = [(CSTeachableMomentsContainerViewController *)self cachedLegibilityLabels];
  createCallToActionLabel = [cachedLegibilityLabels valueForKey:textCopy];
  if (createCallToActionLabel)
  {
    goto LABEL_77;
  }

  teachableMomentsContainerView = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  createCallToActionLabel = [teachableMomentsContainerView createCallToActionLabel];

  [createCallToActionLabel setString:textCopy];
  [cachedLegibilityLabels setObject:createCallToActionLabel forKey:textCopy];
  v9 = __sb__runningInSpringBoard();
  v10 = v9;
  if (v9)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      if (_SBF_Private_IsD53())
      {
        goto LABEL_34;
      }

      goto LABEL_9;
    }

LABEL_21:
    if (SBFEffectiveHomeButtonType() != 2)
    {
      IsD53 = _SBF_Private_IsD53();
      goto LABEL_31;
    }

    v16 = __sb__runningInSpringBoard();
    v17 = v16;
    if (v16)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v19 >= *(MEMORY[0x277D66E30] + 104))
    {
      IsD53 = 0;
      if (v17)
      {
        goto LABEL_31;
      }
    }

    else
    {
      IsD53 = _SBF_Private_IsD53();
      if (v17)
      {
LABEL_31:
        if ((v10 & 1) == 0)
        {
        }

        if (IsD53)
        {
          goto LABEL_34;
        }

        goto LABEL_9;
      }
    }

    goto LABEL_31;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    goto LABEL_21;
  }

  v11 = _SBF_Private_IsD53();

  if (v11)
  {
LABEL_34:
    v20 = 0.820512821;
LABEL_75:
    font = [createCallToActionLabel font];
    v33 = [font _fontScaledByScaleFactor:v20];
    [createCallToActionLabel setFont:v33];

    goto LABEL_76;
  }

LABEL_9:
  v12 = __sb__runningInSpringBoard();
  v13 = v12;
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      if (_SBF_Private_IsD54())
      {
        goto LABEL_56;
      }

      goto LABEL_16;
    }

LABEL_43:
    if (SBFEffectiveHomeButtonType() != 2)
    {
      IsD54 = _SBF_Private_IsD54();
      goto LABEL_53;
    }

    v23 = __sb__runningInSpringBoard();
    v24 = v23;
    if (v23)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v26 >= *(MEMORY[0x277D66E30] + 136))
    {
      IsD54 = 0;
      if (v24)
      {
        goto LABEL_53;
      }
    }

    else
    {
      IsD54 = _SBF_Private_IsD54();
      if (v24)
      {
LABEL_53:
        if ((v13 & 1) == 0)
        {
        }

        if (IsD54)
        {
          goto LABEL_56;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_53;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    goto LABEL_43;
  }

  v14 = _SBF_Private_IsD54();

  if (v14)
  {
LABEL_56:
    v20 = 0.876168224;
    goto LABEL_75;
  }

LABEL_16:
  font = __sb__runningInSpringBoard();
  if (font)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      if (_SBF_Private_IsD33OrSimilarDevice())
      {
        goto LABEL_74;
      }

      goto LABEL_37;
    }

LABEL_61:
    if (SBFEffectiveHomeButtonType() != 2)
    {
      IsD33OrSimilarDevice = _SBF_Private_IsD33OrSimilarDevice();
      goto LABEL_71;
    }

    v29 = __sb__runningInSpringBoard();
    v30 = v29;
    if (v29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 120))
    {
      IsD33OrSimilarDevice = 0;
      if (v30)
      {
        goto LABEL_71;
      }
    }

    else
    {
      IsD33OrSimilarDevice = _SBF_Private_IsD33OrSimilarDevice();
      if (v30)
      {
LABEL_71:
        if ((font & 1) == 0)
        {
        }

        if (IsD33OrSimilarDevice)
        {
          goto LABEL_74;
        }

        goto LABEL_37;
      }
    }

    goto LABEL_71;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    goto LABEL_61;
  }

  font = _SBF_Private_IsD33OrSimilarDevice();

  if (font)
  {
LABEL_74:
    v20 = 0.905797101;
    goto LABEL_75;
  }

LABEL_37:
  v21 = __sb__runningInSpringBoard();
  v22 = v21;
  if (!v21)
  {
    font = [MEMORY[0x277D75418] currentDevice];
    if ([font userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_76;
    }

    goto LABEL_59;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    goto LABEL_77;
  }

  if (SBFEffectiveHomeButtonType() == 2)
  {
LABEL_59:
    v27 = __sb__runningInSpringBoard();
    v28 = v27;
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v42 = v41 >= *(MEMORY[0x277D66E30] + 72);
    if ((v28 & 1) == 0)
    {
    }

    if (v22)
    {
      if (!v42)
      {
        goto LABEL_77;
      }
    }

    else
    {

      if (!v42)
      {
        goto LABEL_77;
      }
    }

    v20 = 0.853333333;
    goto LABEL_75;
  }

  if ((v22 & 1) == 0)
  {
LABEL_76:
  }

LABEL_77:
  teachableMomentsContainerView2 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  callToActionLabel = [teachableMomentsContainerView2 callToActionLabel];

  if (createCallToActionLabel != callToActionLabel)
  {
    activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    v37 = [activeAppearance componentForType:9 property:1];
    isHidden = [v37 isHidden];

    v39 = 1.0;
    if (isHidden)
    {
      v39 = 0.0;
    }

    [createCallToActionLabel setAlpha:v39];
  }

  teachableMomentsContainerView3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  [teachableMomentsContainerView3 setCallToActionLabel:createCallToActionLabel];
}

- (void)_beginSuppressingHomeAffordanceAnimationForScreenOff
{
  homeAffordanceAnimationSuppressionReasons = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v4 = [homeAffordanceAnimationSuppressionReasons containsObject:@"ScreenOff"];

  if ((v4 & 1) == 0)
  {
    homeAffordanceAnimationSuppressionReasons2 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
    [homeAffordanceAnimationSuppressionReasons2 addObject:@"ScreenOff"];
  }

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (void)_beginSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap
{
  homeAffordanceAnimationSuppressionReasons = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  [homeAffordanceAnimationSuppressionReasons addObject:@"HomeAffordanceDoubleTap"];

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (void)_endSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap
{
  homeAffordanceAnimationSuppressionReasons = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  [homeAffordanceAnimationSuppressionReasons removeObject:@"HomeAffordanceDoubleTap"];

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (void)aggregateAppearance:(id)appearance
{
  v5.receiver = self;
  v5.super_class = CSTeachableMomentsContainerViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateAppearance:appearanceCopy];
  [appearanceCopy unionAppearance:{self->_homeAffordanceViewController, v5.receiver, v5.super_class}];
}

- (SBDashBoardHomeAffordanceAnimationViewProviding)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (void)setEffectiveAnimationState:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)animationDidStop:finished:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end