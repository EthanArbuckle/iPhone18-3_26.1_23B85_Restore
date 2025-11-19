@interface CSTeachableMomentsContainerViewController
+ (id)_animationKeyForKeyPath:(id)a3 iteration:(unint64_t)a4 reset:(BOOL)a5;
+ (void)_addRepeatedAnimationWithProvider:(id)a3 toLayer:(id)a4;
- (BOOL)_animatesTextPositionWhenResetting;
- (BOOL)_shouldTeachAboutControlCenter;
- (BOOL)_suppressingHomeAffordanceAnimation;
- (BOOL)handleEvent:(id)a3;
- (CSTeachableMomentsContainerViewController)initWithCoverSheetContext:(id)a3;
- (SBDashBoardHomeAffordanceAnimationViewProviding)viewProvider;
- (id)_controlCenterGlyphAlphaAnimationWithDuration:(double)a3 beginTime:(double)a4;
- (id)_controlCenterGrabberAlphaAnimationWithDuration:(double)a3 beginTime:(double)a4;
- (id)_controlCenterGrabberPositionAnimationWithDuration:(double)a3 beginTime:(double)a4;
- (id)_homeAffordancePositionAnimationWithDuration:(double)a3 beginTime:(double)a4;
- (id)_textAlphaAnimationWithDuration:(double)a3 beginTime:(double)a4;
- (id)_textPositionAnimationWithDuration:(double)a3 beginTime:(double)a4;
- (void)_addControlCenterGlyphAnimation;
- (void)_addControlCenterGlyphResetAnimation;
- (void)_addControlCenterGrabberAnimation;
- (void)_addControlCenterGrabberResetAnimation;
- (void)_addHomeAffordanceAnimation;
- (void)_addHomeAffordanceResetAnimation;
- (void)_addResetAnimationForKeyPath:(id)a3 onLayer:(id)a4;
- (void)_addTextAnimation;
- (void)_addTextResetAnimation;
- (void)_beginSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap;
- (void)_beginSuppressingHomeAffordanceAnimationForScreenOff;
- (void)_cancelTimerAndResetAnimation;
- (void)_endSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap;
- (void)_endSuppressingHomeAffordanceAnimationForScreenOff;
- (void)_moveUpTimerForFiringAfterDelay:(double)a3;
- (void)_pauseNormalAnimationsForKeyPath:(id)a3 onLayer:(id)a4;
- (void)_removeNormalAnimationsForKeyPath:(id)a3 onLayer:(id)a4;
- (void)_removeResetAnimationForKeyPath:(id)a3 onLayer:(id)a4;
- (void)_setControlCenterTutorsHidden:(BOOL)a3;
- (void)_setupTimerWithDelay:(double)a3;
- (void)_updateEffectiveAnimationState;
- (void)_updateLegibilitySettings;
- (void)_updateText:(id)a3;
- (void)_updateTextLabel;
- (void)_updateTextLabelIfNeeded;
- (void)aggregateAppearance:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)homeAffordanceViewControllerDidRecognizeSingleClick:(id)a3;
- (void)loadView;
- (void)setAnimationState:(unint64_t)a3;
- (void)setAuthenticated:(BOOL)a3;
- (void)setEffectiveAnimationState:(unint64_t)a3;
- (void)setFireOffAnimationTimer:(id)a3;
- (void)setScreenOn:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController view];
  v4 = [v3 layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:v4];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"position.y" onLayer:v4];
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CSTeachableMomentsContainerViewController__addHomeAffordanceAnimation__block_invoke;
  v6[3] = &unk_27838CCE0;
  v6[4] = self;
  [v5 _addRepeatedAnimationWithProvider:v6 toLayer:v4];
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
  v3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v4 = [v3 callToActionLabelContainerView];
  v5 = [v4 layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"position.y" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"opacity" onLayer:v5];
  v6 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__CSTeachableMomentsContainerViewController__addTextAnimation__block_invoke;
  v7[3] = &unk_27838CCE0;
  v7[4] = self;
  [v6 _addRepeatedAnimationWithProvider:v7 toLayer:v5];
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
  v2 = [MEMORY[0x277CFC878] sharedInstance];
  v3 = [v2 userInvocationCount] < 2;

  return v3;
}

- (void)_addControlCenterGrabberAnimation
{
  v3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v4 = [v3 controlCenterGrabberContainerView];
  v5 = [v4 layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"position.y" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"opacity" onLayer:v5];
  v6 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CSTeachableMomentsContainerViewController__addControlCenterGrabberAnimation__block_invoke;
  v7[3] = &unk_27838CCE0;
  v7[4] = self;
  [v6 _addRepeatedAnimationWithProvider:v7 toLayer:v5];
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
  v3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v4 = [v3 controlCenterGlyphContainerView];
  v5 = [v4 layer];

  [(CSTeachableMomentsContainerViewController *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:@"opacity" onLayer:v5];
  v6 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CSTeachableMomentsContainerViewController__addControlCenterGlyphAnimation__block_invoke;
  v7[3] = &unk_27838CCE0;
  v7[4] = self;
  [v6 _addRepeatedAnimationWithProvider:v7 toLayer:v5];
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
  v3 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v5 = [v3 legibilitySettings];

  v4 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  [v4 setLegibilitySettings:v5];

  [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController setLegibilitySettings:v5];
}

- (void)_updateEffectiveAnimationState
{
  v3 = [(CSTeachableMomentsContainerViewController *)self animationState];
  if ([(CSTeachableMomentsContainerViewController *)self _suppressingHomeAffordanceAnimation])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  [(CSTeachableMomentsContainerViewController *)self setEffectiveAnimationState:v4];
}

- (BOOL)_suppressingHomeAffordanceAnimation
{
  v2 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v3 = [v2 count] != 0;

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
  v3 = [(CSHomeAffordanceViewController *)self->_homeAffordanceViewController view];
  v4 = [v3 layer];

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"position.y" onLayer:v4];
}

- (void)_addTextResetAnimation
{
  v3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v4 = [v3 callToActionLabelContainerView];
  v5 = [v4 layer];

  if ([(CSTeachableMomentsContainerViewController *)self _animatesTextPositionWhenResetting])
  {
    [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"position.y" onLayer:v5];
  }

  else
  {
    [(CSTeachableMomentsContainerViewController *)self _pauseNormalAnimationsForKeyPath:@"position.y" onLayer:v5];
  }

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"opacity" onLayer:v5];
}

- (BOOL)_animatesTextPositionWhenResetting
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext assistantController];
  v4 = [v3 isHomeAffordanceDoubleTapGestureEnabled];

  if (!v4)
  {
    return 1;
  }

  v5 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v6 = [v5 countForObject:@"HomeAffordanceDoubleTap"] == 0;

  return v6;
}

- (void)_addControlCenterGrabberResetAnimation
{
  v3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v4 = [v3 controlCenterGrabberContainerView];
  v5 = [v4 layer];

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"position.y" onLayer:v5];
  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"opacity" onLayer:v5];
}

- (void)_addControlCenterGlyphResetAnimation
{
  v3 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v4 = [v3 controlCenterGlyphContainerView];
  v5 = [v4 layer];

  [(CSTeachableMomentsContainerViewController *)self _addResetAnimationForKeyPath:@"opacity" onLayer:v5];
}

- (void)_endSuppressingHomeAffordanceAnimationForScreenOff
{
  v3 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v4 = [v3 containsObject:@"ScreenOff"];

  if (v4)
  {
    v5 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
    [v5 removeObject:@"ScreenOff"];
  }

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (CSTeachableMomentsContainerViewController)initWithCoverSheetContext:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CSTeachableMomentsContainerViewController;
  v6 = [(CSCoverSheetViewControllerBase *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetContext, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedLegibilityLabels = v7->_cachedLegibilityLabels;
    v7->_cachedLegibilityLabels = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    homeAffordanceAnimationSuppressionReasons = v7->_homeAffordanceAnimationSuppressionReasons;
    v7->_homeAffordanceAnimationSuppressionReasons = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v7 selector:sel__contentSizeCategoryChanged name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSTeachableMomentsContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(CSTeachableMomentsContainerView);
  v4 = [(CSTeachableMomentsContainerView *)v3 controlCenterGlyphContainerView];
  [v4 setAlpha:0.0];

  v5 = [*MEMORY[0x277D76620] statusBar];
  [(CSTeachableMomentsContainerView *)v3 setStatusBarToFollow:v5];

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
    v14 = self;
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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSTeachableMomentsContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewWillAppear:a3];
  [(CSTeachableMomentsContainerViewController *)self _updateTextLabel];
  [(CSTeachableMomentsContainerViewController *)self setAnimationState:1];
  v4 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v5 = [v4 usesStatusBarRelativeLayoutForControlCenterTutors];

  if (v5)
  {
    [(CSTeachableMomentsContainerViewController *)self _setControlCenterTutorsHidden:1];
    [(CSTeachableMomentsContainerViewController *)self _setControlCenterTutorsHidden:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSTeachableMomentsContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:a3];
  [(CSTeachableMomentsContainerViewController *)self setAnimationState:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = CSTeachableMomentsContainerViewController;
  v7 = a4;
  [(CSCoverSheetViewControllerBase *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__CSTeachableMomentsContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_27838C938;
  v11 = v8;
  v9 = v8;
  [v7 animateAlongsideTransition:v10 completion:0];
}

uint64_t __96__CSTeachableMomentsContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CSTeachableMomentsContainerViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v14, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 <= 14)
    {
      if (v6 == 1)
      {
        [(CSTeachableMomentsContainerViewController *)self _updateLegibilitySettings];
      }

      else
      {
        if (v6 != 13)
        {
          goto LABEL_19;
        }

        v9 = [v4 value];
        v10 = [v9 BOOLValue];

        [(CSTeachableMomentsContainerViewController *)self setAuthenticated:v10];
      }
    }

    else if (v6 == 15)
    {
      v11 = [v4 value];
      v12 = [v11 unsignedIntegerValue];

      if (v12 == 28 && ![(CSTeachableMomentsContainerViewController *)self currentState])
      {
        [(CSTeachableMomentsContainerViewController *)self _moveUpTimerForFiringAfterDelay:0.0];
      }
    }

    else
    {
      if (v6 == 24)
      {
        v7 = self;
        v8 = 1;
      }

      else
      {
        if (v6 != 25)
        {
          goto LABEL_19;
        }

        v7 = self;
        v8 = 0;
      }

      [(CSTeachableMomentsContainerViewController *)v7 setScreenOn:v8];
    }

    v5 = 0;
    goto LABEL_19;
  }

  v5 = [v4 isConsumable];
LABEL_19:

  return v5;
}

- (void)setAuthenticated:(BOOL)a3
{
  if (self->_authenticated != a3)
  {
    v3 = a3;
    self->_authenticated = a3;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CSTeachableMomentsContainerViewController setAuthenticated:];
    }

    if (v3)
    {
      [(CSTeachableMomentsContainerViewController *)self setUpdateTextLabelOnNextAnimation:1];
    }

    else
    {
      [(CSTeachableMomentsContainerViewController *)self _updateTextLabel];
    }
  }
}

- (void)homeAffordanceViewControllerDidRecognizeSingleClick:(id)a3
{
  v4 = [CSAction actionWithType:11];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];
}

- (void)_setControlCenterTutorsHidden:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v6 = v5;
  if (v3 || ([v5 isStatusBarLayoutReady] & 1) != 0)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v3;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView needs layout for controlCenterTutorsHidden: %{BOOL}u", buf, 8u);
    }

    [v6 setNeedsLayout];
    v8 = [v6 controlCenterTutorsContainerView];
    [v8 setHidden:v3];
  }

  else
  {
    v9 = dispatch_time(0, 100000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__CSTeachableMomentsContainerViewController__setControlCenterTutorsHidden___block_invoke;
    v10[3] = &unk_27838BC70;
    v10[4] = self;
    v11 = v3;
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
  }
}

- (void)setAnimationState:(unint64_t)a3
{
  if (self->_animationState != a3)
  {
    self->_animationState = a3;
    [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
  }
}

- (void)setScreenOn:(BOOL)a3
{
  if (self->_screenOn != a3)
  {
    self->_screenOn = a3;
    if (a3)
    {
      [(CSTeachableMomentsContainerViewController *)self _endSuppressingHomeAffordanceAnimationForScreenOff];
    }

    else
    {
      [(CSTeachableMomentsContainerViewController *)self _beginSuppressingHomeAffordanceAnimationForScreenOff];
    }
  }
}

- (void)setEffectiveAnimationState:(unint64_t)a3
{
  if (self->_effectiveAnimationState != a3)
  {
    self->_effectiveAnimationState = a3;
    if (a3)
    {
      if (a3 == 1)
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

- (void)_setupTimerWithDelay:(double)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__CSTeachableMomentsContainerViewController__setupTimerWithDelay___block_invoke;
  v5[3] = &unk_27838CCB8;
  v5[4] = self;
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:a3];
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

- (void)_moveUpTimerForFiringAfterDelay:(double)a3
{
  v8 = [(CSTeachableMomentsContainerViewController *)self fireOffAnimationTimer];
  v5 = [v8 fireDate];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  if (v7 > a3)
  {
    [(CSTeachableMomentsContainerViewController *)self setFireOffAnimationTimer:0];
    [(CSTeachableMomentsContainerViewController *)self _setupTimerWithDelay:a3];
  }
}

- (void)setFireOffAnimationTimer:(id)a3
{
  v5 = a3;
  fireOffAnimationTimer = self->_fireOffAnimationTimer;
  if (fireOffAnimationTimer != v5)
  {
    v7 = v5;
    [(NSTimer *)fireOffAnimationTimer invalidate];
    objc_storeStrong(&self->_fireOffAnimationTimer, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](fireOffAnimationTimer, v5);
}

+ (void)_addRepeatedAnimationWithProvider:(id)a3 toLayer:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CACurrentMediaTime();
  v9 = 0;
  v18 = (v6 + 2);
  v19 = v6;
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

          v16 = [v15 keyPath];
          v17 = [a1 _animationKeyForKeyPath:v16 iteration:v9 reset:0];

          [v7 addAnimation:v15 forKey:v17];
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

- (void)_addResetAnimationForKeyPath:(id)a3 onLayer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 presentationLayer];
  v9 = [v8 valueForKeyPath:v7];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v6 valueForKeyPath:v7];
  [v12 doubleValue];
  v14 = v13;

  [(CSTeachableMomentsContainerViewController *)self _removeNormalAnimationsForKeyPath:v7 onLayer:v6];
  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:v7];
  [v19 setDuration:0.2];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v19 setTimingFunction:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v19 setFromValue:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  [v19 setToValue:v17];

  v18 = [objc_opt_class() _animationKeyForKeyPath:v7 iteration:0 reset:1];

  [v6 addAnimation:v19 forKey:v18];
}

- (void)_removeResetAnimationForKeyPath:(id)a3 onLayer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _animationKeyForKeyPath:v6 iteration:0 reset:1];

  [v5 removeAnimationForKey:v7];
}

- (void)_removeNormalAnimationsForKeyPath:(id)a3 onLayer:(id)a4
{
  v8 = a3;
  v5 = a4;
  for (i = 0; i != 3; ++i)
  {
    v7 = [objc_opt_class() _animationKeyForKeyPath:v8 iteration:i reset:0];
    [v5 removeAnimationForKey:v7];
  }
}

- (void)_pauseNormalAnimationsForKeyPath:(id)a3 onLayer:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = CACurrentMediaTime();
  for (i = 0; i != 3; ++i)
  {
    v8 = [objc_opt_class() _animationKeyForKeyPath:v12 iteration:i reset:0];
    v9 = [v5 animationForKey:v8];
    v10 = [v9 copy];
    [v10 setSpeed:0.0];
    [v9 beginTime];
    [v10 setTimeOffset:v6 - v11];
    [v5 removeAnimationForKey:v8];
    [v5 addAnimation:v10 forKey:v8];
  }
}

+ (id)_animationKeyForKeyPath:(id)a3 iteration:(unint64_t)a4 reset:(BOOL)a5
{
  if (a5)
  {
    v5 = @"kCSHomeAffordanceResetAnimation";
  }

  else
  {
    v5 = @"kCSHomeAffordanceNormalAnimation";
  }

  return [(__CFString *)v5 stringByAppendingFormat:@"-%@-%lu", a3, a4];
}

- (id)_homeAffordancePositionAnimationWithDuration:(double)a3 beginTime:(double)a4
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
  [v6 setDuration:a3];
  [v6 setBeginTime:a4];
  [v6 setAdditive:1];

  return v6;
}

- (id)_textPositionAnimationWithDuration:(double)a3 beginTime:(double)a4
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
  [v6 setDuration:a3];
  [v6 setBeginTime:a4];
  [v6 setAdditive:1];

  return v6;
}

- (id)_textAlphaAnimationWithDuration:(double)a3 beginTime:(double)a4
{
  v7 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v7 setKeyTimes:&unk_283079FB0];
  [v7 setValues:&unk_283079FC8];
  [v7 setCalculationMode:@"cubic"];
  [v7 setDuration:a3];
  [v7 setBeginTime:a4];
  [v7 setAdditive:1];
  [v7 setDelegate:self];

  return v7;
}

- (id)_controlCenterGrabberPositionAnimationWithDuration:(double)a3 beginTime:(double)a4
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
    v138 = [MEMORY[0x277D75418] currentDevice];
    if ([v138 userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_10;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v129 = [MEMORY[0x277D759A0] mainScreen];
      [v129 _referenceBounds];
    }

    v9 = v11 ^ 1;
    BSSizeRoundForScale();
    if (v32 == *(MEMORY[0x277D66E30] + 288) && v31 == *(MEMORY[0x277D66E30] + 296))
    {
      v169 = v11 ^ 1;
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
    v137 = [MEMORY[0x277D75418] currentDevice];
    if ([v137 userInterfaceIdiom] != 1)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_19;
    }
  }

  v14 = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v128 = [MEMORY[0x277D759A0] mainScreen];
      [v128 _referenceBounds];
    }

    v13 = v11 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 440))
    {
      v167 = v11 ^ 1;
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
    v136 = [MEMORY[0x277D75418] currentDevice];
    if ([v136 userInterfaceIdiom] != 1)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_28;
    }
  }

  v17 = v15 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v127 = [MEMORY[0x277D759A0] mainScreen];
      [v127 _referenceBounds];
    }

    v16 = v11 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 376))
    {
      v165 = v11 ^ 1;
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
      v4 = 0;
      v5 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v135 = [MEMORY[0x277D75418] currentDevice];
    if ([v135 userInterfaceIdiom] != 1)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_37;
    }
  }

  v5 = v18 ^ 1u;
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v132 = [MEMORY[0x277D759A0] mainScreen];
    [v132 _referenceBounds];
  }

  v4 = v11 ^ 1;
  BSSizeRoundForScale();
  if (v19 >= *(MEMORY[0x277D66E30] + 280))
  {
    v163 = v11 ^ 1;
    v164 = v5;
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
  v163 = v4;
  v164 = v5;
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
    v134 = [MEMORY[0x277D75418] currentDevice];
    if ([v134 userInterfaceIdiom] != 1)
    {
      v161 = 0;
      v21 = 1;
      goto LABEL_47;
    }
  }

  v21 = v20 ^ 1;
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v130 = [MEMORY[0x277D759A0] mainScreen];
    [v130 _referenceBounds];
  }

  v161 = v11 ^ 1;
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
    v133 = [MEMORY[0x277D75418] currentDevice];
    if ([v133 userInterfaceIdiom] != 1)
    {
      v160 = 0x100000000;
      goto LABEL_184;
    }
  }

  HIDWORD(v160) = v30 ^ 1;
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v126 = [MEMORY[0x277D759A0] mainScreen];
    [v126 _referenceBounds];
  }

  LODWORD(v160) = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
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
    v159 = v11 ^ 1;
    goto LABEL_67;
  }

  v131 = [MEMORY[0x277D75418] currentDevice];
  if ([v131 userInterfaceIdiom] == 1)
  {
    goto LABEL_192;
  }

LABEL_186:
  v159 = v11 ^ 1;
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
    v124 = [MEMORY[0x277D75418] currentDevice];
    if ([v124 userInterfaceIdiom])
    {
      v158 = 0x100000000;
      goto LABEL_200;
    }
  }

  HIDWORD(v158) = v46 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    LODWORD(v158) = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v157 = 0;
      goto LABEL_210;
    }
  }

  else
  {
    v125 = [MEMORY[0x277D75418] currentDevice];
    if ([v125 userInterfaceIdiom])
    {
      v157 = 0x100000000;
      goto LABEL_210;
    }
  }

  HIDWORD(v157) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v120 = [MEMORY[0x277D759A0] mainScreen];
      [v120 _referenceBounds];
    }

    LODWORD(v157) = v11 ^ 1;
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
    v121 = [MEMORY[0x277D75418] currentDevice];
    if ([v121 userInterfaceIdiom])
    {
      v156 = 0x100000000;
      goto LABEL_228;
    }
  }

  HIDWORD(v156) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v112 = [MEMORY[0x277D759A0] mainScreen];
      [v112 _referenceBounds];
    }

    LODWORD(v156) = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v155 = 0;
      goto LABEL_238;
    }
  }

  else
  {
    v123 = [MEMORY[0x277D75418] currentDevice];
    if ([v123 userInterfaceIdiom])
    {
      v155 = 0x100000000;
      goto LABEL_238;
    }
  }

  HIDWORD(v155) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v116 = [MEMORY[0x277D759A0] mainScreen];
      [v116 _referenceBounds];
    }

    LODWORD(v155) = v11 ^ 1;
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
    v122 = [MEMORY[0x277D75418] currentDevice];
    if ([v122 userInterfaceIdiom])
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
      v113 = [MEMORY[0x277D759A0] mainScreen];
      [v113 _referenceBounds];
    }

    v11 = v52 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v153) = v11;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
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
    v119 = [MEMORY[0x277D75418] currentDevice];
    if ([v119 userInterfaceIdiom])
    {
      HIDWORD(v152) = 0;
      LODWORD(v153) = 1;
      goto LABEL_262;
    }
  }

  LODWORD(v153) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v111 = [MEMORY[0x277D759A0] mainScreen];
      [v111 _referenceBounds];
    }

    HIDWORD(v152) = v11 ^ 1;
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
    v118 = [MEMORY[0x277D75418] currentDevice];
    if ([v118 userInterfaceIdiom])
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
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    v11 = v57 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v151) = v11;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
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
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom])
    {
      HIDWORD(v150) = 0;
      LODWORD(v151) = 1;
      goto LABEL_292;
    }
  }

  LODWORD(v151) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    HIDWORD(v150) = v11 ^ 1;
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
  v4 = &unk_21EC95000;
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
    v110 = [MEMORY[0x277D75418] currentDevice];
    if ([v110 userInterfaceIdiom])
    {
      HIDWORD(v149) = 0;
      LODWORD(v150) = 1;
      goto LABEL_312;
    }
  }

  LODWORD(v150) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v101 = [MEMORY[0x277D759A0] mainScreen];
      [v101 _referenceBounds];
    }

    HIDWORD(v149) = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
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
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom])
    {
      HIDWORD(v148) = 0;
      LODWORD(v149) = 1;
      goto LABEL_322;
    }
  }

  LODWORD(v149) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v104 = [MEMORY[0x277D759A0] mainScreen];
      [v104 _referenceBounds];
    }

    HIDWORD(v148) = v11 ^ 1;
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
    v106 = [MEMORY[0x277D75418] currentDevice];
    if ([v106 userInterfaceIdiom])
    {
      HIDWORD(v147) = 0;
      LODWORD(v148) = 1;
      goto LABEL_340;
    }
  }

  LODWORD(v148) = v62 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    HIDWORD(v147) = v11 ^ 1;
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
      v11 = 0;
      goto LABEL_350;
    }
  }

  else
  {
    v109 = [MEMORY[0x277D75418] currentDevice];
    if ([v109 userInterfaceIdiom])
    {
      v11 = 0;
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
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    v11 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_354;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_350:
  if (_SBF_Private_IsD63Like())
  {
    HIDWORD(v146) = v11;
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
  HIDWORD(v146) = v11;
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
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      HIDWORD(v145) = 0;
      LODWORD(v146) = 1;
      goto LABEL_368;
    }
  }

  LODWORD(v146) = v67 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v93 = [MEMORY[0x277D759A0] mainScreen];
      [v93 _referenceBounds];
    }

    HIDWORD(v145) = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
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
    v105 = [MEMORY[0x277D75418] currentDevice];
    if ([v105 userInterfaceIdiom])
    {
      HIDWORD(v144) = 0;
      LODWORD(v145) = 1;
      goto LABEL_378;
    }
  }

  LODWORD(v145) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    HIDWORD(v144) = v11 ^ 1;
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
  v5 = &unk_21EC95000;
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
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      HIDWORD(v143) = 0;
      LODWORD(v144) = 1;
      goto LABEL_392;
    }
  }

  LODWORD(v144) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v94 = [MEMORY[0x277D759A0] mainScreen];
      [v94 _referenceBounds];
    }

    HIDWORD(v143) = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (v11)
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
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      HIDWORD(v142) = 0;
      LODWORD(v143) = 1;
      goto LABEL_402;
    }
  }

  LODWORD(v143) = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v92 = [MEMORY[0x277D759A0] mainScreen];
      [v92 _referenceBounds];
    }

    HIDWORD(v142) = v11 ^ 1;
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
      v5 = 0;
      HIDWORD(v141) = 0;
      goto LABEL_422;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      HIDWORD(v141) = 0;
      v5 = 1;
      goto LABEL_422;
    }
  }

  v5 = v74 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    HIDWORD(v141) = v11 ^ 1;
    BSSizeRoundForScale();
    if (v77 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v142) = v5;
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
  LODWORD(v142) = v5;
  if (v75)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v141) = 0;
      v11 = 0;
      goto LABEL_432;
    }
  }

  else
  {
    v95 = [MEMORY[0x277D75418] currentDevice];
    if ([v95 userInterfaceIdiom])
    {
      v11 = 0;
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
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    v11 = v76 ^ 1u;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_439;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_432:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v140) = v11;
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
  HIDWORD(v140) = v11;
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
    v89 = [MEMORY[0x277D75418] currentDevice];
    if ([v89 userInterfaceIdiom])
    {
      v139 = 0;
      LODWORD(v140) = 1;
      goto LABEL_457;
    }
  }

  LODWORD(v140) = v79 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v87 = [MEMORY[0x277D759A0] mainScreen];
      [v87 _referenceBounds];
    }

    v139 = v11 ^ 1;
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
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_467;
    }
  }

  v22 = v80 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    v23 = v11 ^ 1;
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
  v11 = __sb__runningInSpringBoard();
  if (!v11)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom])
    {
      v25 = 0;
      v24 = 1;
      goto LABEL_477;
    }

LABEL_473:
    v24 = v11 ^ 1;
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v5 = [MEMORY[0x277D759A0] mainScreen];
      [v5 _referenceBounds];
    }

    v25 = v11 ^ 1;
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
  v82 = __sb__runningInSpringBoard();
  if (v82)
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
    v11 = [MEMORY[0x277D75418] currentDevice];
    if ([v11 userInterfaceIdiom])
    {
      v26 = 1;
      v27 = 0.0;
      v28 = 0.0;
      goto LABEL_67;
    }
  }

  v26 = v82 ^ 1;
  v85 = __sb__runningInSpringBoard();
  if (v85)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v82 = [MEMORY[0x277D759A0] mainScreen];
    [v82 _referenceBounds];
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
  [v36 setDuration:a3];
  [v36 setBeginTime:a4];
  [v36 setAdditive:1];
  v43 = v36;

  return v36;
}

- (id)_controlCenterGrabberAlphaAnimationWithDuration:(double)a3 beginTime:(double)a4
{
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v6 setKeyTimes:&unk_283079FF8];
  [v6 setValues:&unk_28307A010];
  [v6 setCalculationMode:@"cubic"];
  [v6 setDuration:a3];
  [v6 setBeginTime:a4];

  return v6;
}

- (id)_controlCenterGlyphAlphaAnimationWithDuration:(double)a3 beginTime:(double)a4
{
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v6 setKeyTimes:&unk_28307A028];
  [v6 setValues:&unk_28307A040];
  [v6 setCalculationMode:@"cubic"];
  [v6 setDuration:a3];
  [v6 setBeginTime:a4];
  [v6 setAdditive:1];

  return v6;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    v5 = [a3 valueForKey:@"kCSTeachableMomentIsLastAnimationKey"];
    v6 = [v5 BOOLValue];

    if (v6)
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

- (void)_updateText:(id)a3
{
  v43 = a3;
  v6 = [(CSTeachableMomentsContainerViewController *)self cachedLegibilityLabels];
  v7 = [v6 valueForKey:v43];
  if (v7)
  {
    goto LABEL_77;
  }

  v8 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v7 = [v8 createCallToActionLabel];

  [v7 setString:v43];
  [v6 setObject:v7 forKey:v43];
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
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 _referenceBounds];
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

  v3 = [MEMORY[0x277D75418] currentDevice];
  if (![v3 userInterfaceIdiom])
  {
    goto LABEL_21;
  }

  v11 = _SBF_Private_IsD53();

  if (v11)
  {
LABEL_34:
    v20 = 0.820512821;
LABEL_75:
    v15 = [v7 font];
    v33 = [v15 _fontScaledByScaleFactor:v20];
    [v7 setFont:v33];

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
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 _referenceBounds];
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

  v3 = [MEMORY[0x277D75418] currentDevice];
  if (![v3 userInterfaceIdiom])
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
  v15 = __sb__runningInSpringBoard();
  if (v15)
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
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 _referenceBounds];
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
        if ((v15 & 1) == 0)
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

  v3 = [MEMORY[0x277D75418] currentDevice];
  if (![v3 userInterfaceIdiom])
  {
    goto LABEL_61;
  }

  v15 = _SBF_Private_IsD33OrSimilarDevice();

  if (v15)
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
    v15 = [MEMORY[0x277D75418] currentDevice];
    if ([v15 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
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
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 _referenceBounds];
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
  v34 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  v35 = [v34 callToActionLabel];

  if (v7 != v35)
  {
    v36 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    v37 = [v36 componentForType:9 property:1];
    v38 = [v37 isHidden];

    v39 = 1.0;
    if (v38)
    {
      v39 = 0.0;
    }

    [v7 setAlpha:v39];
  }

  v40 = [(CSTeachableMomentsContainerViewController *)self teachableMomentsContainerView];
  [v40 setCallToActionLabel:v7];
}

- (void)_beginSuppressingHomeAffordanceAnimationForScreenOff
{
  v3 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  v4 = [v3 containsObject:@"ScreenOff"];

  if ((v4 & 1) == 0)
  {
    v5 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
    [v5 addObject:@"ScreenOff"];
  }

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (void)_beginSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap
{
  v3 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  [v3 addObject:@"HomeAffordanceDoubleTap"];

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (void)_endSuppressingHomeAffordanceAnimationForHomeAffordanceDoubleTap
{
  v3 = [(CSTeachableMomentsContainerViewController *)self homeAffordanceAnimationSuppressionReasons];
  [v3 removeObject:@"HomeAffordanceDoubleTap"];

  [(CSTeachableMomentsContainerViewController *)self _updateEffectiveAnimationState];
}

- (void)aggregateAppearance:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSTeachableMomentsContainerViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateAppearance:v4];
  [v4 unionAppearance:{self->_homeAffordanceViewController, v5.receiver, v5.super_class}];
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