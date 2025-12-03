@interface CAMZoomControl
- (BOOL)_centerSelectedZoomEnabled;
- (BOOL)_isButtonPlatterSupportedForConfiguration;
- (BOOL)_isPointWithinButtonPlatter:(CGPoint)platter;
- (BOOL)_isPointWithinZoomButtonAccessory:(CGPoint)accessory;
- (BOOL)_isTouchWithinButtonPlatter:(id)platter;
- (BOOL)_isTouchWithinZoomButtonAccessory:(id)accessory;
- (BOOL)_isWithinZoomButtonBoundsWithTouch:(id)touch;
- (BOOL)_shouldInterceptTouchesForHidingZoomDial;
- (BOOL)_shouldShowButtonPlatter;
- (BOOL)_shouldSnapDialToSwitchOverZoomFactors;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)configureForContinuousZoomWithZoomFactor:(double)factor zoomPoints:(id)points createButtonForMaxZoomFactor:(BOOL)zoomFactor compactPlatterLayout:(BOOL)layout animated:(BOOL)animated;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasPlatterConflictLeft;
- (BOOL)hasPlatterConflictRight;
- (BOOL)hideFocalLengthLabels;
- (BOOL)isPlatterExpanded;
- (CAMZoomControl)initWithLayoutStyle:(int64_t)style;
- (CAMZoomControlDelegate)delegate;
- (CGPoint)_previousTouchLocation;
- (CGPoint)_startTouchLocation;
- (CGRect)buttonPlatterDefaultFrame;
- (NSArray)_switchOverZoomFactors;
- (UIEdgeInsets)contentInsets;
- (double)_accelerationForMovementFromPointFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint elapsedTime:(double)time;
- (double)_additionalAccelerationForMovementFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint deltaX:(double)x;
- (double)_dampingFactorForDistanceFromDialForPoint:(CGPoint)point;
- (double)_dampingFactorForMovementFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (double)_dampingFactorForPerpendicularityFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (double)_displayMaximumZoomFactor;
- (double)_displayMinimumZoomFactor;
- (double)_displayZoomValueForZoomFactor:(double)factor;
- (double)_distanceFromDialClippingViewToPoint:(CGPoint)point;
- (double)_normalizeValue:(double)value betweenMinimumValue:(double)minimumValue maximumValue:(double)maximumValue;
- (double)_zoomFactorForDisplayZoomValue:(double)value;
- (double)displayZoomValue;
- (double)maximumZoomFactor;
- (double)minimumZoomFactor;
- (double)zoomDialBorderWidth;
- (double)zoomDialContentMaskingHeight;
- (id)_accessorizedZoomButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_hapticZoneForDisplayValue:(double)value;
- (int64_t)zoomButtonContentType;
- (int64_t)zoomButtonSymbol;
- (unint64_t)_numberOfZoomPlatterButtonsForZoomFactorCount:(unint64_t)count;
- (void)_cancelDelayedZoomDialVisibilityChange;
- (void)_cleanupForCancelTracking;
- (void)_configureForControlMode:(int64_t)mode zoomFactor:(double)factor zoomFactors:(id)factors displayZoomFactors:(id)zoomFactors zoomButtonContentType:(int64_t)type animated:(BOOL)animated;
- (void)_configureForControlMode:(int64_t)mode zoomFactor:(double)factor zoomPoints:(id)points zoomButtonContentType:(int64_t)type animated:(BOOL)animated;
- (void)_configureForControlMode:(int64_t)mode zoomFactor:(double)factor zoomPoints:(id)points zoomFactors:(id)factors displayZoomFactors:(id)zoomFactors createButtonForMaxZoomFactor:(BOOL)zoomFactor zoomButtonContentType:(int64_t)type compactPlatterLayout:(BOOL)self0 animated:(BOOL)self1;
- (void)_handleAccessoryTappedForButton:(id)button;
- (void)_handleButtonTapped:(id)tapped forAccessoryTap:(BOOL)tap;
- (void)_handleButtonTappedForContinuousModeWithPlatter:(id)platter;
- (void)_handleButtonTappedForDualCameraMode;
- (void)_handleButtonTappedForSelection:(id)selection;
- (void)_handleButtonTappedForSingleCameraToggleOnly;
- (void)_handleButtonTappedForSingleCameraZoomPlusToggle;
- (void)_handleZoomDialVisibilityTimerFiredWithUserInfo:(id)info;
- (void)_resetSnapping;
- (void)_setButtonPlatterCollapsed:(BOOL)collapsed animated:(BOOL)animated;
- (void)_setHighlightedZoomButton:(id)button;
- (void)_setShouldShowZoomDial:(BOOL)dial animationDuration:(int64_t)duration;
- (void)_setShouldShowZoomDial:(BOOL)dial animationDuration:(int64_t)duration afterDelay:(double)delay;
- (void)_setSignificantHapticDisplayValues:(id)values;
- (void)_setZoomDialEnabled:(BOOL)enabled animationDuration:(int64_t)duration;
- (void)_setZoomFactor:(double)factor interactionType:(int64_t)type shouldNotifyDelegate:(BOOL)delegate animated:(BOOL)animated;
- (void)_updateButtonAccessoryAnimated:(BOOL)animated;
- (void)_updateDisplayZoomFactorsAnimated:(BOOL)animated;
- (void)_updateDisplayedValuesAllowingFlashingSubstate:(BOOL)substate animated:(BOOL)animated;
- (void)_updateHapticEpsilons;
- (void)_updateHaptics:(BOOL)haptics;
- (void)_updateSignificantValuesForHaptics;
- (void)_updateSubviewsAlphasWithDuration:(double)duration forConfigurationChange:(BOOL)change;
- (void)_updateZoomButtonTappableEdgeInsets;
- (void)_updateZoomDialEnablement;
- (void)cancelTrackingWithEvent:(id)event;
- (void)configureForDualDeviceWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor dualCameraSwitchOverZoomFactor:(double)overZoomFactor displayDualCameraSwitchOverZoomFactor:(double)switchOverZoomFactor;
- (void)configureForSelectionOnlyWithDisplayZoomFactors:(id)factors selectedIndex:(unint64_t)index compactPlatterLayout:(BOOL)layout animated:(BOOL)animated;
- (void)configureForSingleCameraPlusToggleWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor;
- (void)configureForSingleCameraToggleOnlyWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor;
- (void)configureForToggleOnlyWithZoomFactor:(double)factor displayZoomFactor:(double)zoomFactor;
- (void)configureForTripleDeviceWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor switchOverZoomFactor1:(double)factor1 displaySwitchOverZoomFactor1:(double)zoomFactor1 switchOverZoomFactor2:(double)self0 displaySwitchOverZoomFactor2:(double)self1;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)removeAnimationFromView:(id)view forKeys:(id)keys;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setDelegate:(id)delegate;
- (void)setEdgeMargin:(double)margin animated:(BOOL)animated;
- (void)setHasPlatterConflictLeft:(BOOL)left animated:(BOOL)animated;
- (void)setHasPlatterConflictRight:(BOOL)right animated:(BOOL)animated;
- (void)setHideFocalLengthLabels:(BOOL)labels;
- (void)setMaxAvailableZoomFactor:(double)factor;
- (void)setMinAvailableZoomFactor:(double)factor;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setPlatterLayoutCompact:(BOOL)compact animated:(BOOL)animated;
- (void)setPreferredCustomLens:(int64_t)lens;
- (void)setShouldShowZoomDial:(BOOL)dial animationDuration:(int64_t)duration;
- (void)setZoomButtonAccessoryState:(int64_t)state animated:(BOOL)animated;
- (void)setZoomButtonMaxYWhenContracted:(double)contracted;
- (void)setZoomButtonSymbol:(int64_t)symbol animated:(BOOL)animated;
- (void)setZoomDialContentMaskingHeight:(double)height;
- (void)setZoomDialRadius:(double)radius;
@end

@implementation CAMZoomControl

- (CAMZoomControl)initWithLayoutStyle:(int64_t)style
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = CAMZoomControl;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(CAMZoomControl *)&v26 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  if (v8)
  {
    v9 = +[CAMCaptureCapabilities capabilities];
    v8->_layoutStyle = style;
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
    dialClippingView = v8->__dialClippingView;
    v8->__dialClippingView = v10;

    [(UIView *)v8->__dialClippingView setClipsToBounds:1];
    [(UIView *)v8->__dialClippingView setUserInteractionEnabled:0];
    [(CAMZoomControl *)v8 addSubview:v8->__dialClippingView];
    if ([v9 isZoomPlatterSupported])
    {
      v12 = objc_alloc_init(CAMZoomButtonPlatter);
      buttonPlatter = v8->__buttonPlatter;
      v8->__buttonPlatter = v12;

      [(CAMZoomButtonPlatter *)v8->__buttonPlatter setUserInteractionEnabled:0];
      isPlatterLayoutCompact = [(CAMZoomControl *)v8 isPlatterLayoutCompact];
      v15 = 0;
      if (!isPlatterLayoutCompact)
      {
        v15 = +[CAMUserPreferences solCamSelectedZoomCenteredEnabled];
      }

      [(CAMZoomButtonPlatter *)v8->__buttonPlatter setCenterSelectedZoomEnabled:v15];
      [(CAMZoomControl *)v8 addSubview:v8->__buttonPlatter];
    }

    v16 = [[CAMZoomDial alloc] initWithFrame:v4, v5, v6, v7];
    zoomDial = v8->__zoomDial;
    v8->__zoomDial = v16;

    [(UIView *)v8->__dialClippingView addSubview:v8->__zoomDial];
    v18 = [[CAMZoomButton alloc] initWithFrame:v4, v5, v6, v7];
    zoomButton = v8->__zoomButton;
    v8->__zoomButton = v18;

    [(CAMZoomControl *)v8 _updateZoomButtonTappableEdgeInsets];
    [(CAMZoomButton *)v8->__zoomButton setUserInteractionEnabled:0];
    [(CAMZoomControl *)v8 addSubview:v8->__zoomButton];
    v8->__shouldShowZoomDial = 0;
    [(CAMZoomDial *)v8->__zoomDial setExpanded:0];
    [(CAMZoomControl *)v8 _updateSubviewsAlphasWithDuration:0 forConfigurationChange:0.0];
    [(CAMZoomControl *)v8 configureForToggleOnlyWithZoomFactor:1.0 displayZoomFactor:1.0];
    v20 = +[CAMFeedbackController sharedController];
    feedbackController = v8->__feedbackController;
    v8->__feedbackController = v20;

    v27[0] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v23 = [(CAMZoomControl *)v8 registerForTraitChanges:v22 withAction:sel_setNeedsLayout];

    v8->__dragZoomGestureInProgress = 0;
    v8->_buttonPlatterVerticalOffset = 0.0;
    v24 = v8;
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToDidChangeZoomFactor = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanToggleBetweenZoomFactors = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToToggleBetweenZoomFactors = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanPlayHaptics = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidChangeShowingZoomDial = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidFinishDragZoom = objc_opt_respondsToSelector() & 1;
  }
}

- (CGRect)buttonPlatterDefaultFrame
{
  [(CAMZoomControl *)self layoutIfNeeded];
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  [_buttonPlatter frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CAMZoomControl *)self buttonPlatterVerticalOffset];
  v13 = v7 + v12;
  v14 = v5;
  v15 = v9;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (void)_configureForControlMode:(int64_t)mode zoomFactor:(double)factor zoomFactors:(id)factors displayZoomFactors:(id)zoomFactors zoomButtonContentType:(int64_t)type animated:(BOOL)animated
{
  zoomFactorsCopy = zoomFactors;
  factorsCopy = factors;
  v17 = [CAMZoomPoint zoomPointsWithFactors:factorsCopy displayZoomFactors:zoomFactorsCopy customLensGroup:0];
  BYTE1(v16) = animated;
  LOBYTE(v16) = 0;
  [(CAMZoomControl *)self _configureForControlMode:mode zoomFactor:v17 zoomPoints:factorsCopy zoomFactors:zoomFactorsCopy displayZoomFactors:0 createButtonForMaxZoomFactor:type zoomButtonContentType:factor compactPlatterLayout:v16 animated:?];
}

- (void)_configureForControlMode:(int64_t)mode zoomFactor:(double)factor zoomPoints:(id)points zoomButtonContentType:(int64_t)type animated:(BOOL)animated
{
  pointsCopy = points;
  v15 = [CAMZoomPoint zoomFactorsFromZoomPoints:pointsCopy];
  v13 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:pointsCopy];
  BYTE1(v14) = animated;
  LOBYTE(v14) = 0;
  [(CAMZoomControl *)self _configureForControlMode:mode zoomFactor:pointsCopy zoomPoints:v15 zoomFactors:v13 displayZoomFactors:0 createButtonForMaxZoomFactor:type zoomButtonContentType:factor compactPlatterLayout:v14 animated:?];
}

- (void)_configureForControlMode:(int64_t)mode zoomFactor:(double)factor zoomPoints:(id)points zoomFactors:(id)factors displayZoomFactors:(id)zoomFactors createButtonForMaxZoomFactor:(BOOL)zoomFactor zoomButtonContentType:(int64_t)type compactPlatterLayout:(BOOL)self0 animated:(BOOL)self1
{
  zoomFactorCopy = zoomFactor;
  zoomFactorsCopy = zoomFactors;
  factorsCopy = factors;
  pointsCopy = points;
  [(CAMZoomControl *)self zoomFactor];
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:?];
  v22 = v21;
  _shouldShowButtonPlatter = [(CAMZoomControl *)self _shouldShowButtonPlatter];
  [(CAMZoomControl *)self _setZoomControlMode:mode];
  [(CAMZoomControl *)self _setZoomPoints:pointsCopy];

  [(CAMZoomControl *)self _setZoomFactors:factorsCopy];
  [(CAMZoomControl *)self _setDisplayZoomFactors:zoomFactorsCopy];

  [(CAMZoomControl *)self _setCreateButtonForMaxZoomFactor:zoomFactorCopy];
  [(CAMZoomControl *)self _updateDisplayZoomFactorsAnimated:animated];
  firstObject = [factorsCopy firstObject];
  [firstObject doubleValue];
  [(CAMZoomControl *)self setMinAvailableZoomFactor:?];

  lastObject = [factorsCopy lastObject];

  [lastObject doubleValue];
  [(CAMZoomControl *)self setMaxAvailableZoomFactor:?];

  [(CAMZoomControl *)self _setZoomFactor:0 interactionType:0 shouldNotifyDelegate:[(CAMZoomControl *)self _centerSelectedZoomEnabled]^ 1 | animated animated:factor];
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:factor];
  v27 = v26;
  [(CAMZoomControl *)self setPlatterLayoutCompact:layout animated:animated];
  [(CAMZoomControl *)self _updateZoomDialEnablement];
  [(CAMZoomControl *)self _snappedZoomFactor];
  if (v28 > 0.0)
  {
    if (v27 == v22)
    {
      [(CAMZoomControl *)self _setSnappedZoomFactor:factor];
    }

    else
    {
      [(CAMZoomControl *)self _resetSnapping];
    }
  }

  _shouldShowButtonPlatter2 = [(CAMZoomControl *)self _shouldShowButtonPlatter];
  v30 = 0.25;
  if (((animated | _shouldShowButtonPlatter ^ _shouldShowButtonPlatter2) & 1) == 0)
  {
    v30 = 0.0;
  }

  [(CAMZoomControl *)self _updateSubviewsAlphasWithDuration:1 forConfigurationChange:v30];
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton setContentType:type animated:animated];

  [(CAMZoomControl *)self _updateDisplayedValuesAllowingFlashingSubstate:0 animated:0];

  [(CAMZoomControl *)self setNeedsLayout];
}

- (BOOL)configureForContinuousZoomWithZoomFactor:(double)factor zoomPoints:(id)points createButtonForMaxZoomFactor:(BOOL)zoomFactor compactPlatterLayout:(BOOL)layout animated:(BOOL)animated
{
  zoomFactorCopy = zoomFactor;
  pointsCopy = points;
  v13 = [CAMZoomPoint zoomFactorsFromZoomPoints:pointsCopy];
  v14 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:pointsCopy];
  v15 = [pointsCopy count];
  if (v15 < 2)
  {
    v19 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CAMZoomControl configureForContinuousZoomWithZoomFactor:pointsCopy zoomPoints:v19 createButtonForMaxZoomFactor:? compactPlatterLayout:? animated:?];
    }
  }

  else
  {
    v16 = [CAMZoomPoint significantIndexesInZoomPoints:pointsCopy];
    if ([v16 count] > 2 || zoomFactorCopy)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    BYTE1(v21) = animated;
    LOBYTE(v21) = layout;
    [(CAMZoomControl *)self _configureForControlMode:v18 zoomFactor:pointsCopy zoomPoints:v13 zoomFactors:v14 displayZoomFactors:zoomFactorCopy createButtonForMaxZoomFactor:0 zoomButtonContentType:factor compactPlatterLayout:v21 animated:?];
  }

  return v15 > 1;
}

- (void)configureForTripleDeviceWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor switchOverZoomFactor1:(double)factor1 displaySwitchOverZoomFactor1:(double)zoomFactor1 switchOverZoomFactor2:(double)self0 displaySwitchOverZoomFactor2:(double)self1
{
  v30[4] = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor];
  v30[0] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:factor1];
  v30[1] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:factor2];
  v30[2] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:maximumZoomFactor];
  v30[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:minimumZoomFactor];
  v29[0] = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor1];
  v29[1] = v25;
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor2];
  v29[2] = v26;
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:displayMaximumZoomFactor];
  v29[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

  [(CAMZoomControl *)self _configureForControlMode:0 zoomFactor:v23 zoomFactors:v28 displayZoomFactors:0 zoomButtonContentType:0 animated:factor];
}

- (void)configureForDualDeviceWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor dualCameraSwitchOverZoomFactor:(double)overZoomFactor displayDualCameraSwitchOverZoomFactor:(double)switchOverZoomFactor
{
  v25[3] = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor];
  v25[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:overZoomFactor];
  v25[1] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:maximumZoomFactor];
  v25[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:minimumZoomFactor];
  v24[0] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:switchOverZoomFactor];
  v24[1] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:displayMaximumZoomFactor];
  v24[2] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  [(CAMZoomControl *)self _configureForControlMode:0 zoomFactor:v19 zoomFactors:v23 displayZoomFactors:0 zoomButtonContentType:0 animated:factor];
}

- (void)configureForSingleCameraPlusToggleWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor
{
  v19[2] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor];
  v19[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:maximumZoomFactor];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:minimumZoomFactor];
  v18[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:displayMaximumZoomFactor];
  v18[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  [(CAMZoomControl *)self _configureForControlMode:2 zoomFactor:v14 zoomFactors:v17 displayZoomFactors:0 zoomButtonContentType:0 animated:factor];
}

- (void)configureForSingleCameraToggleOnlyWithZoomFactor:(double)factor minimumZoomFactor:(double)zoomFactor displayMinimumZoomFactor:(double)minimumZoomFactor maximumZoomFactor:(double)maximumZoomFactor displayMaximumZoomFactor:(double)displayMaximumZoomFactor
{
  v19[2] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor];
  v19[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:maximumZoomFactor];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:minimumZoomFactor];
  v18[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:displayMaximumZoomFactor];
  v18[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  [(CAMZoomControl *)self _configureForControlMode:5 zoomFactor:v14 zoomFactors:v17 displayZoomFactors:0 zoomButtonContentType:0 animated:factor];
}

- (void)configureForToggleOnlyWithZoomFactor:(double)factor displayZoomFactor:(double)zoomFactor
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:zoomFactor];
  v11 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];

  [(CAMZoomControl *)self _configureForControlMode:3 zoomFactor:v8 zoomFactors:v10 displayZoomFactors:0 zoomButtonContentType:0 animated:factor];
}

- (void)configureForSelectionOnlyWithDisplayZoomFactors:(id)factors selectedIndex:(unint64_t)index compactPlatterLayout:(BOOL)layout animated:(BOOL)animated
{
  factorsCopy = factors;
  v11 = [factorsCopy objectAtIndexedSubscript:index];
  [v11 doubleValue];
  v13 = v12;

  v15 = [CAMZoomPoint zoomPointsWithFactors:factorsCopy displayZoomFactors:factorsCopy customLensGroup:0];
  BYTE1(v14) = animated;
  LOBYTE(v14) = layout;
  [(CAMZoomControl *)self _configureForControlMode:1 zoomFactor:v15 zoomPoints:factorsCopy zoomFactors:factorsCopy displayZoomFactors:0 createButtonForMaxZoomFactor:0 zoomButtonContentType:v13 compactPlatterLayout:v14 animated:?];
}

- (double)minimumZoomFactor
{
  _zoomFactors = [(CAMZoomControl *)self _zoomFactors];
  firstObject = [_zoomFactors firstObject];
  [firstObject doubleValue];
  v5 = v4;

  return v5;
}

- (double)maximumZoomFactor
{
  _zoomFactors = [(CAMZoomControl *)self _zoomFactors];
  lastObject = [_zoomFactors lastObject];
  [lastObject doubleValue];
  v5 = v4;

  return v5;
}

- (double)_displayMinimumZoomFactor
{
  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  firstObject = [_displayZoomFactors firstObject];
  [firstObject doubleValue];
  v5 = v4;

  return v5;
}

- (double)_displayMaximumZoomFactor
{
  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  lastObject = [_displayZoomFactors lastObject];
  [lastObject doubleValue];
  v5 = v4;

  return v5;
}

- (NSArray)_switchOverZoomFactors
{
  _zoomFactors = [(CAMZoomControl *)self _zoomFactors];
  v4 = [_zoomFactors count];

  if (v4 < 3)
  {
    v7 = 0;
  }

  else
  {
    _zoomFactors2 = [(CAMZoomControl *)self _zoomFactors];
    _zoomFactors3 = [(CAMZoomControl *)self _zoomFactors];
    v7 = [_zoomFactors2 subarrayWithRange:{1, objc_msgSend(_zoomFactors3, "count") - 2}];
  }

  return v7;
}

- (BOOL)_shouldSnapDialToSwitchOverZoomFactors
{
  delegate = [(CAMZoomControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CAMZoomControl *)self delegate];
  v6 = [delegate2 zoomControlShouldSnapDialToSwitchOverZoomFactors:self];

  return v6;
}

- (void)_updateDisplayZoomFactorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _zoomPoints = [(CAMZoomControl *)self _zoomPoints];
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial setZoomPoints:_zoomPoints];

  [(CAMZoomControl *)self _updateSignificantValuesForHaptics];
  v7 = [CAMZoomPoint significantIndexesInZoomPoints:_zoomPoints];
  v8 = -[CAMZoomControl _numberOfZoomPlatterButtonsForZoomFactorCount:](self, "_numberOfZoomPlatterButtonsForZoomFactorCount:", [v7 count]);
  if (v8 >= 1)
  {
    v9 = v8;
    if (animatedCopy)
    {
      [(CAMZoomControl *)self layoutIfNeeded];
    }

    v10 = [_zoomPoints objectsAtIndexes:v7];
    v11 = [v10 subarrayWithRange:{0, v9}];

    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    [_buttonPlatter setZoomPoints:v11 animated:animatedCopy];

    if (animatedCopy)
    {
      [(CAMZoomControl *)self setNeedsLayout];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__CAMZoomControl__updateDisplayZoomFactorsAnimated___block_invoke;
      v13[3] = &unk_1E76F77B0;
      v13[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.3];
    }
  }
}

- (void)_updateDisplayedValuesAllowingFlashingSubstate:(BOOL)substate animated:(BOOL)animated
{
  animatedCopy = animated;
  substateCopy = substate;
  [(CAMZoomControl *)self displayZoomValue];
  v8 = v7;
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial setZoomFactor:v8];

  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton setZoomFactor:v8];

  if ([(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration])
  {
    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    [_buttonPlatter setZoomFactor:substateCopy allowFlashingSubstate:animatedCopy animated:v8];
  }
}

- (double)displayZoomValue
{
  [(CAMZoomControl *)self zoomFactor];

  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:?];
  return result;
}

- (double)_displayZoomValueForZoomFactor:(double)factor
{
  _zoomFactors = [(CAMZoomControl *)self _zoomFactors];
  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  [CAMZoomControlUtilities piecewiseLinearMappingForX:_zoomFactors fromXValues:_displayZoomFactors toYValues:factor];
  v8 = v7;

  return v8;
}

- (double)_zoomFactorForDisplayZoomValue:(double)value
{
  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  _zoomFactors = [(CAMZoomControl *)self _zoomFactors];
  [CAMZoomControlUtilities piecewiseLinearMappingForX:_displayZoomFactors fromXValues:_zoomFactors toYValues:value];
  v8 = v7;

  return v8;
}

- (void)_setZoomFactor:(double)factor interactionType:(int64_t)type shouldNotifyDelegate:(BOOL)delegate animated:(BOOL)animated
{
  animatedCopy = animated;
  delegateCopy = delegate;
  [(CAMZoomControl *)self minimumZoomFactor];
  v12 = v11;
  [(CAMZoomControl *)self minAvailableZoomFactor];
  v14 = fmax(v12, v13);
  [(CAMZoomControl *)self maximumZoomFactor];
  v16 = v15;
  [(CAMZoomControl *)self maxAvailableZoomFactor];
  factorCopy = fmin(v16, v17);
  if (factorCopy >= factor)
  {
    factorCopy = factor;
  }

  if (v14 <= factor)
  {
    v19 = factorCopy;
  }

  else
  {
    v19 = v14;
  }

  if (self->_zoomFactor != v19)
  {
    self->_zoomFactor = v19;
    [(CAMZoomControl *)self _updateDisplayedValuesAllowingFlashingSubstate:type == 1 animated:animatedCopy];
    v20 = 0;
    if (!type && delegateCopy)
    {
      if (self->_delegateFlags.respondsToCanPlayHaptics)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v20 = [WeakRetained zoomControlCanPlayHaptics:self];
      }

      else
      {
        v20 = 0;
      }
    }

    [(CAMZoomControl *)self _updateHaptics:v20];
    [(CAMZoomControl *)self setNeedsLayout];
    if (delegateCopy && self->_delegateFlags.respondsToDidChangeZoomFactor)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 zoomControl:self didChangeZoomFactor:type interactionType:v19];
    }
  }
}

- (void)setMinAvailableZoomFactor:(double)factor
{
  [(CAMZoomControl *)self minimumZoomFactor];
  v6 = fmax(factor, v5);
  self->_minAvailableZoomFactor = v6;
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:v6];
  v8 = v7;
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial setMinAvailableZoomFactor:v8];

  [(CAMZoomControl *)self minimumZoomFactor];
  if (v6 != v10)
  {
    [(CAMZoomControl *)self zoomFactor];

    [(CAMZoomControl *)self _setZoomFactor:0 interactionType:1 shouldNotifyDelegate:1 animated:?];
  }
}

- (void)setMaxAvailableZoomFactor:(double)factor
{
  [(CAMZoomControl *)self maximumZoomFactor];
  v6 = fmin(factor, v5);
  self->_maxAvailableZoomFactor = v6;
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:v6];
  v8 = v7;
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial setMaxAvailableZoomFactor:v8];

  [(CAMZoomControl *)self maximumZoomFactor];
  if (v6 != v10)
  {
    [(CAMZoomControl *)self zoomFactor];

    [(CAMZoomControl *)self _setZoomFactor:0 interactionType:1 shouldNotifyDelegate:1 animated:?];
  }
}

- (int64_t)zoomButtonContentType
{
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  contentType = [_zoomButton contentType];

  return contentType;
}

- (int64_t)zoomButtonSymbol
{
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  zoomSymbol = [_zoomButton zoomSymbol];

  return zoomSymbol;
}

- (void)setZoomButtonSymbol:(int64_t)symbol animated:(BOOL)animated
{
  animatedCopy = animated;
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton setZoomSymbol:symbol animated:animatedCopy];
}

- (void)setZoomButtonAccessoryState:(int64_t)state animated:(BOOL)animated
{
  if (self->_zoomButtonAccessoryState != state)
  {
    self->_zoomButtonAccessoryState = state;
    [(CAMZoomControl *)self _updateButtonAccessoryAnimated:animated];
  }
}

- (void)_updateButtonAccessoryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  zoomButtonAccessoryState = [(CAMZoomControl *)self zoomButtonAccessoryState];
  _isButtonPlatterSupportedForConfiguration = [(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration];
  if (_isButtonPlatterSupportedForConfiguration)
  {
    v7 = zoomButtonAccessoryState;
  }

  else
  {
    v7 = 0;
  }

  if (_isButtonPlatterSupportedForConfiguration)
  {
    zoomButtonAccessoryState = 0;
  }

  [(CAMZoomControl *)self edgeMargin];
  v9 = v8 < 0.0;
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton setAccessoryState:zoomButtonAccessoryState animated:animatedCopy];

  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  [_buttonPlatter setButtonAccessoryState:v7 animated:animatedCopy];

  _zoomButton2 = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton2 setAccessoryPosition:v9 animated:animatedCopy];

  _buttonPlatter2 = [(CAMZoomControl *)self _buttonPlatter];
  [_buttonPlatter2 setButtonAccessoryPosition:v9 animated:animatedCopy];
}

- (id)_accessorizedZoomButton
{
  if ([(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration])
  {
    if ([(CAMZoomControl *)self isPlatterExpanded])
    {
      zoomFactorButton = 0;
    }

    else
    {
      _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
      zoomFactorButton = [_buttonPlatter zoomFactorButton];
    }
  }

  else
  {
    zoomFactorButton = [(CAMZoomControl *)self _zoomButton];
  }

  return zoomFactorButton;
}

- (BOOL)_isTouchWithinZoomButtonAccessory:(id)accessory
{
  [accessory locationInView:self];

  return [(CAMZoomControl *)self _isPointWithinZoomButtonAccessory:?];
}

- (BOOL)_isPointWithinZoomButtonAccessory:(CGPoint)accessory
{
  y = accessory.y;
  x = accessory.x;
  zoomButtonAccessoryState = [(CAMZoomControl *)self zoomButtonAccessoryState];
  if (zoomButtonAccessoryState)
  {
    _accessorizedZoomButton = [(CAMZoomControl *)self _accessorizedZoomButton];
    [_accessorizedZoomButton tappableEdgeInsets];
    [_accessorizedZoomButton accessoryFrame];
    v8 = v21.origin.x;
    v9 = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    if (!CGRectIsEmpty(v21))
    {
      UIRectInset();
      v8 = v12;
      v9 = v13;
      width = v14;
      height = v15;
    }

    [(CAMZoomControl *)self convertPoint:_accessorizedZoomButton toView:x, y];
    v20.x = v16;
    v20.y = v17;
    v22.origin.x = v8;
    v22.origin.y = v9;
    v22.size.width = width;
    v22.size.height = height;
    v18 = CGRectContainsPoint(v22, v20);

    LOBYTE(zoomButtonAccessoryState) = v18;
  }

  return zoomButtonAccessoryState;
}

- (void)setEdgeMargin:(double)margin animated:(BOOL)animated
{
  if (self->_edgeMargin != margin)
  {
    if (animated)
    {
      [(CAMZoomControl *)self layoutIfNeeded];
      self->_edgeMargin = margin;
      [(CAMZoomControl *)self _updateZoomButtonTappableEdgeInsets];
      [(CAMZoomControl *)self _updateButtonAccessoryAnimated:1];
      [(CAMZoomControl *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __41__CAMZoomControl_setEdgeMargin_animated___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      self->_edgeMargin = margin;
      [(CAMZoomControl *)self _updateZoomButtonTappableEdgeInsets];
      [(CAMZoomControl *)self _updateButtonAccessoryAnimated:0];

      [(CAMZoomControl *)self setNeedsLayout];
    }
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(CAMZoomControl *)self setNeedsLayout];
  }
}

- (void)setZoomDialRadius:(double)radius
{
  if (self->_zoomDialRadius != radius)
  {
    self->_zoomDialRadius = radius;
    [(CAMZoomControl *)self _updateHapticEpsilons];

    [(CAMZoomControl *)self setNeedsLayout];
  }
}

- (double)zoomDialContentMaskingHeight
{
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial contentMaskingHeight];
  v4 = v3;

  return v4;
}

- (void)setZoomDialContentMaskingHeight:(double)height
{
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial setContentMaskingHeight:height];
}

- (double)zoomDialBorderWidth
{
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial dialBorderWidth];
  v4 = v3;

  return v4;
}

- (void)setZoomButtonMaxYWhenContracted:(double)contracted
{
  if (self->_zoomButtonMaxYWhenContracted != contracted)
  {
    self->_zoomButtonMaxYWhenContracted = contracted;
    [(CAMZoomControl *)self setNeedsLayout];
  }
}

- (void)_updateZoomButtonTappableEdgeInsets
{
  [(CAMZoomControl *)self edgeMargin];
  if (v3 <= 0.0)
  {
    [(CAMZoomControl *)self edgeMargin];
    if (v6 >= 0.0)
    {
      v5 = 11.0;
    }

    else
    {
      v5 = 24.0;
    }

    if (v6 >= 0.0)
    {
      v4 = 11.0;
    }

    else
    {
      v4 = 16.0;
    }
  }

  else
  {
    v4 = 24.0;
    v5 = 16.0;
  }

  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton setTappableEdgeInsets:{11.0, v5, 4.0, v4}];
}

- (void)setHideFocalLengthLabels:(BOOL)labels
{
  labelsCopy = labels;
  _zoomDial = [(CAMZoomControl *)self _zoomDial];

  if (_zoomDial)
  {
    _zoomDial2 = [(CAMZoomControl *)self _zoomDial];
    [_zoomDial2 setHideFocalLengthLabels:labelsCopy];
  }
}

- (BOOL)hideFocalLengthLabels
{
  _zoomDial = [(CAMZoomControl *)self _zoomDial];

  if (!_zoomDial)
  {
    return 0;
  }

  _zoomDial2 = [(CAMZoomControl *)self _zoomDial];
  hideFocalLengthLabels = [_zoomDial2 hideFocalLengthLabels];

  return hideFocalLengthLabels;
}

- (void)_setZoomDialEnabled:(BOOL)enabled animationDuration:(int64_t)duration
{
  if (self->__zoomDialEnabled != enabled)
  {
    self->__zoomDialEnabled = enabled;
    if (!enabled)
    {
      [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:duration];
    }
  }
}

- (void)_setShouldShowZoomDial:(BOOL)dial animationDuration:(int64_t)duration
{
  dialCopy = dial;
  v38 = *MEMORY[0x1E69E9840];
  [(CAMZoomControl *)self _cancelDelayedZoomDialVisibilityChange];
  if (self->__shouldShowZoomDial != dialCopy)
  {
    [(CAMZoomControl *)self _setStartTimeForHideAnimationInProgress:0];
    v7 = 0.0;
    if ((duration - 1) <= 2)
    {
      v7 = dbl_1A3A68168[duration - 1];
    }

    _zoomDial = [(CAMZoomControl *)self _zoomDial];
    v9 = _zoomDial;
    if (dialCopy)
    {
      [_zoomDial prepareForDisplay];
    }

    if (v7 > 0.0)
    {
      [(CAMZoomControl *)self layoutIfNeeded];
      [v9 layoutIfNeeded];
    }

    self->__shouldShowZoomDial = dialCopy;
    [v9 setExpanded:dialCopy];
    if (dialCopy)
    {
      v10 = 0.23;
      v11 = 0.4;
    }

    else
    {
      [(CAMZoomControl *)self _setEligibleForZoomFactorLabelTaps:0];
      v10 = 0.18;
      v11 = 0.7;
    }

    if (v7 <= 0.0)
    {
      v10 = 0.0;
    }

    v12 = 1.0;
    if (v7 != 0.0)
    {
      v12 = v7;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v13 = v10 / v12;
    v35[1] = 3221225472;
    v35[2] = __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke;
    v35[3] = &unk_1E76F7850;
    v35[4] = self;
    v36 = dialCopy;
    [CAMView animateIfNeededWithDuration:v35 animations:v10 / v12];
    [(CAMZoomControl *)self setNeedsLayout];
    [(CAMZoomControl *)self _updateSubviewsAlphasWithDuration:0 forConfigurationChange:v13];
    if (v7 <= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v11;
    }

    if (v7 > 0.0)
    {
      _zoomDial2 = [(CAMZoomControl *)self _zoomDial];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      subviews = [_zoomDial2 subviews];
      v17 = [subviews countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(subviews);
            }

            [(CAMZoomControl *)self removeAnimationFromView:*(*(&v31 + 1) + 8 * i) forKeys:&unk_1F16C91D0];
          }

          v18 = [subviews countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v18);
      }

      [(CAMZoomControl *)self removeAnimationFromView:_zoomDial2 forKeys:&unk_1F16C91E8];
      _zoomButton = [(CAMZoomControl *)self _zoomButton];
      [(CAMZoomControl *)self removeAnimationFromView:_zoomButton forKeys:&unk_1F16C9200];

      if (!dialCopy)
      {
        date = [MEMORY[0x1E695DF00] date];
        [(CAMZoomControl *)self _setStartTimeForHideAnimationInProgress:date];

        [(CAMZoomControl *)self _setHideAnimationInProgressDuration:v14];
      }

      v23 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke_2;
      v28[3] = &unk_1E76F7960;
      v29 = _zoomDial2;
      selfCopy = self;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke_3;
      v26[3] = &unk_1E76F8AA0;
      v27 = dialCopy;
      v26[4] = self;
      v24 = _zoomDial2;
      [v23 animateWithDuration:6 delay:v28 usingSpringWithDamping:v26 initialSpringVelocity:v14 options:0.0 animations:0.758 completion:0.0];
    }

    if (dialCopy)
    {
      [(CAMZoomControl *)self _setHighlightedZoomButton:0];
    }

    else
    {
      [(CAMZoomControl *)self _setEligibleForSwipeDownToDismiss:0];
    }

    if (self->_delegateFlags.respondsToDidChangeShowingZoomDial)
    {
      delegate = [(CAMZoomControl *)self delegate];
      [delegate zoomControlDidChangeShowingZoomDial:self];
    }
  }
}

void __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;
  v2 = [*(a1 + 32) _zoomButton];
  [v2 setTintColor:v3];
}

uint64_t __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

uint64_t __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke_3(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _setStartTimeForHideAnimationInProgress:0];
  }

  return result;
}

- (void)_updateSubviewsAlphasWithDuration:(double)duration forConfigurationChange:(BOOL)change
{
  changeCopy = change;
  _shouldShowZoomDial = [(CAMZoomControl *)self _shouldShowZoomDial];
  _shouldShowButtonPlatter = [(CAMZoomControl *)self _shouldShowButtonPlatter];
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [_zoomButton alpha];
  v11 = v10;

  if (_shouldShowButtonPlatter)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  if (changeCopy)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke;
    v21[3] = &unk_1E76F8AC8;
    v21[4] = self;
    v22 = _shouldShowZoomDial;
    v23 = _shouldShowButtonPlatter;
    *&v21[5] = v12;
    [CAMView animateIfNeededWithDuration:v21 animations:duration];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke_2;
    v18[3] = &unk_1E76F8AC8;
    v18[4] = self;
    v19 = _shouldShowZoomDial;
    v20 = _shouldShowButtonPlatter;
    *&v18[5] = v12;
    [CAMView animateIfNeededWithDuration:v18 animations:duration];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke_3;
    v15[3] = &unk_1E76F8AC8;
    if (_shouldShowZoomDial)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 2.0;
    }

    v16 = _shouldShowButtonPlatter;
    v15[4] = self;
    *&v15[5] = v12;
    v17 = !_shouldShowZoomDial;
    [CAMView animateIfNeededWithDuration:4 usingSpringWithDamping:v15 initialSpringVelocity:0 options:duration animations:1.0 completion:v13];
  }

  if (duration == 0.0 || v12 != 0.0)
  {
    if (v12 != v11)
    {
      duration = 0.0;
    }

    _zoomButton2 = [(CAMZoomControl *)self _zoomButton];
    [_zoomButton2 setShouldHideBackground:-[CAMZoomControl _shouldHideZoomButtonBackground](self animationDuration:{"_shouldHideZoomButtonBackground"), duration}];
  }
}

void __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) _zoomDial];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) _buttonPlatter];

  if (v4)
  {
    if (*(a1 + 49))
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = [*(a1 + 32) _buttonPlatter];
    [v6 setAlpha:v5];

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) _zoomButton];
    [v8 setAlpha:v7];
  }
}

void __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) _zoomDial];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) _buttonPlatter];

  if (v4)
  {
    v5 = *(a1 + 49) ? 1.0 : 0.0;
    v6 = [*(a1 + 32) _buttonPlatter];
    [v6 setAlpha:v5];

    if ((*(a1 + 49) & 1) == 0)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) _zoomButton];
      [v8 setAlpha:v7];
    }
  }
}

void __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) _zoomButton];
    [v3 setAlpha:v2];
  }

  v4 = *(a1 + 49);
  v5 = [*(a1 + 32) _zoomDial];
  [v5 setHideLabels:v4];
}

- (void)setShouldShowZoomDial:(BOOL)dial animationDuration:(int64_t)duration
{
  dialCopy = dial;
  if ([(CAMZoomControl *)self _isZoomDialEnabled])
  {

    [(CAMZoomControl *)self _setShouldShowZoomDial:dialCopy animationDuration:duration afterDelay:0.0];
  }
}

- (void)_setShouldShowZoomDial:(BOOL)dial animationDuration:(int64_t)duration afterDelay:(double)delay
{
  dialCopy = dial;
  v16[2] = *MEMORY[0x1E69E9840];
  [(CAMZoomControl *)self _cancelDelayedZoomDialVisibilityChange];
  if (delay <= 0.0)
  {

    [(CAMZoomControl *)self _setShouldShowZoomDial:dialCopy animationDuration:duration];
  }

  else
  {
    v15[0] = CAMZoomControlShouldShowZoomDialKey;
    v9 = [MEMORY[0x1E696AD98] numberWithBool:dialCopy];
    v15[1] = CAMZoomControlAnimationDurationKey;
    v16[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:duration];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v12 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleZoomDialVisibilityTimerFiredWithUserInfo_ selector:v11 userInfo:0 repeats:delay];
    zoomDialVisibilityTimer = self->__zoomDialVisibilityTimer;
    self->__zoomDialVisibilityTimer = v12;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->__zoomDialVisibilityTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_handleZoomDialVisibilityTimerFiredWithUserInfo:(id)info
{
  userInfo = [info userInfo];
  v4 = [userInfo objectForKeyedSubscript:CAMZoomControlShouldShowZoomDialKey];
  bOOLValue = [v4 BOOLValue];

  v6 = [userInfo objectForKeyedSubscript:CAMZoomControlAnimationDurationKey];
  integerValue = [v6 integerValue];

  [(CAMZoomControl *)self _setShouldShowZoomDial:bOOLValue animationDuration:integerValue];
  zoomDialVisibilityTimer = self->__zoomDialVisibilityTimer;
  self->__zoomDialVisibilityTimer = 0;
}

- (void)_cancelDelayedZoomDialVisibilityChange
{
  zoomDialVisibilityTimer = self->__zoomDialVisibilityTimer;
  if (zoomDialVisibilityTimer)
  {
    [(NSTimer *)zoomDialVisibilityTimer invalidate];
    v4 = self->__zoomDialVisibilityTimer;
    self->__zoomDialVisibilityTimer = 0;
  }
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = CAMZoomControl;
  [(CAMZoomControl *)&v32 layoutSubviews];
  [(CAMZoomControl *)self bounds];
  [(CAMZoomControl *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  _dialClippingView = [(CAMZoomControl *)self _dialClippingView];
  [_zoomButton intrinsicContentSize];
  v31 = v14;
  v16 = v15;
  [(CAMZoomControl *)self zoomButtonMaxYWhenContracted];
  [(CAMZoomControl *)self zoomDialRadius];
  v18 = v17;
  [_dialClippingView setFrame:{v4, v6 + -40.0, v8, v10 + 40.0}];
  [_zoomDial setCenter:{v8 * 0.5, v18 + 40.0}];
  [_zoomDial setBounds:{0.0, 0.0, v18 + v18, v18 + v18}];
  [_zoomDial zoomFactor];
  v20 = v19;
  [_zoomDial textCenterForZoomFactor:1 assumeExpanded:?];
  v29 = v22;
  v30 = v21;
  UIRoundToViewScale();
  [_zoomDial setContractionDistance:?];
  [(CAMZoomControl *)self edgeMargin];
  [_zoomDial textCenterForZoomFactor:0 assumeExpanded:v20];
  [_zoomDial convertPoint:self toView:?];
  UIRoundToViewScale();
  v24 = v23;
  UIRoundToViewScale();
  [_zoomButton frameForAlignmentRect:{v24 - v31 * 0.5, v25 - v16 * 0.5, v31, v16}];
  UIRectIntegralWithScale();
  [_zoomButton setFrame:?];
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  v27 = _buttonPlatter;
  if (_buttonPlatter)
  {
    [_buttonPlatter intrinsicContentSize];
    [_zoomDial convertPoint:self toView:{v30, v29}];
    v28 = +[CAMCaptureCapabilities capabilities];
    [v28 isQuadraWideSupported];

    UIRectCenteredAboutPointScale();
    [v27 setFrame:?];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    _zoomDial = [(CAMZoomControl *)self _zoomDial];
    _zoomButton = [(CAMZoomControl *)self _zoomButton];
    [_zoomDial setOrientation:orientation animated:animatedCopy];
    [_zoomButton setOrientation:orientation animated:animatedCopy];
    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    [_buttonPlatter setOrientation:orientation animated:animatedCopy];
  }
}

- (double)_distanceFromDialClippingViewToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _dialClippingView = [(CAMZoomControl *)self _dialClippingView];
  [_dialClippingView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CAMZoomControl *)self convertPoint:_dialClippingView toView:x, y];
  v16 = v15;
  v18 = v17;
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v12;
  v24.size.height = v14;
  if (v16 >= CGRectGetMinX(v24))
  {
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    v19 = 0.0;
    if (v16 > CGRectGetMaxX(v26))
    {
      v27.origin.x = v8;
      v27.origin.y = v10;
      v27.size.width = v12;
      v27.size.height = v14;
      v19 = v16 - CGRectGetMaxX(v27);
    }
  }

  else
  {
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    v19 = CGRectGetMinX(v25) - v16;
  }

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  if (v18 >= CGRectGetMinY(v28))
  {
    v30.origin.x = v8;
    v30.origin.y = v10;
    v30.size.width = v12;
    v30.size.height = v14;
    MaxY = CGRectGetMaxY(v30);
    v20 = 0.0;
    if (v18 > MaxY)
    {
      v31.origin.x = v8;
      v31.origin.y = v10;
      v31.size.width = v12;
      v31.size.height = v14;
      v20 = v18 - CGRectGetMaxY(v31);
    }
  }

  else
  {
    v29.origin.x = v8;
    v29.origin.y = v10;
    v29.size.width = v12;
    v29.size.height = v14;
    v20 = CGRectGetMinY(v29) - v18;
  }

  v22 = sqrt(v20 * v20 + v19 * v19);

  return v22;
}

- (double)_dampingFactorForDistanceFromDialForPoint:(CGPoint)point
{
  [(CAMZoomControl *)self _distanceFromDialClippingViewToPoint:point.x, point.y];
  v4 = 1.0;
  if (v3 > 0.0)
  {
    v5 = v3 / -80.0 + 1.0;
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      return v5;
    }
  }

  return v4;
}

- (double)_dampingFactorForPerpendicularityFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v6 = point.y;
  v7 = point.x;
  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial dialCenter];
  v11 = v10;
  v13 = v12;
  [(CAMZoomControl *)self convertPoint:_zoomDial toView:v7, v6];
  v15 = v14;
  v17 = v16;
  [(CAMZoomControl *)self convertPoint:_zoomDial toView:x, y];
  v20 = v18 - v15;
  v21 = v19 - v17;
  v22 = sqrt(v21 * v21 + v20 * v20);
  v23 = 1.0;
  if (v22 > 0.0)
  {
    v24 = v18 - v11;
    v25 = v19 - v13;
    v26 = sqrt(v25 * v25 + v24 * v24);
    if (v26 > 0.0)
    {
      v27 = fabs(v21 / v22 * (v25 / v26) + v20 / v22 * (v24 / v26));
      if (v27 > 0.707)
      {
        v28 = (0.92 - v27) / 0.213;
        if (v28 >= 0.0)
        {
          v23 = v28;
        }

        else
        {
          v23 = 0.0;
        }

        if (v23 > 1.0)
        {
          v23 = 1.0;
        }
      }
    }
  }

  return v23;
}

- (double)_dampingFactorForMovementFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v6 = point.y;
  v7 = point.x;
  [(CAMZoomControl *)self _dampingFactorForDistanceFromDialForPoint:toPoint.x, toPoint.y];
  v10 = v9;
  [(CAMZoomControl *)self _dampingFactorForPerpendicularityFromPoint:v7 toPoint:v6, x, y];
  return v10 * v11;
}

- (double)_accelerationForMovementFromPointFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint elapsedTime:(double)time
{
  y = toPoint.y;
  x = toPoint.x;
  v8 = point.y;
  v9 = point.x;
  layoutStyle = [(CAMZoomControl *)self layoutStyle];
  result = 1.0;
  if (layoutStyle != 1)
  {
    timeCopy = 0.00833333333;
    if (time >= 0.00833333333)
    {
      timeCopy = time;
    }

    v14 = (x - v9) * (0.0166666667 / timeCopy);
    [(CAMZoomControl *)self _normalizeValue:fabs(v14) betweenMinimumValue:12.0 maximumValue:30.0];
    v16 = v15 * v15 + v15 * v15;
    [(CAMZoomControl *)self _additionalAccelerationForMovementFromPoint:v9 toPoint:v8 deltaX:x, y, v14];
    return v17 + v16 + 1.0;
  }

  return result;
}

- (double)_additionalAccelerationForMovementFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint deltaX:(double)x
{
  y = toPoint.y;
  x = toPoint.x;
  v7 = point.y;
  v8 = point.x;
  _dialClippingView = [(CAMZoomControl *)self _dialClippingView];
  [_dialClippingView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CAMZoomControl *)self convertPoint:_dialClippingView toView:v8, v7];
  v20 = v19;
  [(CAMZoomControl *)self convertPoint:_dialClippingView toView:x, y];
  v22 = v21;
  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  Width = CGRectGetWidth(v31);
  if (v22 <= v20)
  {
    [(CAMZoomControl *)self _normalizeValue:v22 betweenMinimumValue:0.0 maximumValue:Width * 0.4];
    v24 = 1.0 - v25;
  }

  else
  {
    [(CAMZoomControl *)self _normalizeValue:v22 betweenMinimumValue:Width * 0.6 maximumValue:?];
  }

  v26 = v24 * v24;
  [(CAMZoomControl *)self _normalizeValue:fabs(x) betweenMinimumValue:2.0 maximumValue:4.0];
  v28 = v27 * (v26 * 5.0);

  return v28;
}

- (double)_normalizeValue:(double)value betweenMinimumValue:(double)minimumValue maximumValue:(double)maximumValue
{
  result = (value - minimumValue) / (maximumValue - minimumValue);
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (void)removeAnimationFromView:(id)view forKeys:(id)keys
{
  keysCopy = keys;
  layer = [view layer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CAMZoomControl_removeAnimationFromView_forKeys___block_invoke;
  v8[3] = &unk_1E76F8AF0;
  v9 = layer;
  v7 = layer;
  [keysCopy enumerateObjectsUsingBlock:v8];
}

void __50__CAMZoomControl_removeAnimationFromView_forKeys___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) animationForKey:?];
  if (v3)
  {
    v4 = [*(a1 + 32) presentationLayer];
    v5 = [v4 valueForKey:v6];
    [*(a1 + 32) setValue:v5 forKey:v6];
    [*(a1 + 32) removeAnimationForKey:v6];
  }
}

- (BOOL)_shouldInterceptTouchesForHidingZoomDial
{
  _startTimeForHideAnimationInProgress = [(CAMZoomControl *)self _startTimeForHideAnimationInProgress];
  v4 = _startTimeForHideAnimationInProgress;
  if (_startTimeForHideAnimationInProgress)
  {
    [_startTimeForHideAnimationInProgress timeIntervalSinceNow];
    v6 = -v5;
    [(CAMZoomControl *)self _hideAnimationInProgressDuration];
    v8 = v7 * 0.7 > v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22.receiver = self;
  v22.super_class = CAMZoomControl;
  v7 = [(CAMZoomControl *)&v22 hitTest:event withEvent:?];
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [(CAMZoomControl *)self convertPoint:_zoomButton toView:x, y];
  v10 = v9;
  v12 = v11;
  v13 = [(CAMZoomControl *)self _isPointWithinZoomButtonAccessory:x, y];
  if (v7 == self || v13)
  {
    v15 = v13;
    [_zoomButton bounds];
    v24.x = v10;
    v24.y = v12;
    v16 = CGRectContainsPoint(v25, v24);
    v17 = [(CAMZoomControl *)self _isPointWithinButtonPlatter:x, y];
    _shouldShowZoomDial = [(CAMZoomControl *)self _shouldShowZoomDial];
    _shouldInterceptTouchesForHidingZoomDial = [(CAMZoomControl *)self _shouldInterceptTouchesForHidingZoomDial];
    if (v16 || v17 || v15 || _shouldShowZoomDial || _shouldInterceptTouchesForHidingZoomDial)
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v7 = selfCopy;
  }

LABEL_12:

  return v7;
}

- (BOOL)_isWithinZoomButtonBoundsWithTouch:(id)touch
{
  touchCopy = touch;
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  [touchCopy locationInView:_zoomButton];
  v7 = v6;
  v9 = v8;

  [_zoomButton bounds];
  v11.x = v7;
  v11.y = v9;
  LOBYTE(touchCopy) = CGRectContainsPoint(v12, v11);

  return touchCopy;
}

- (void)_setHighlightedZoomButton:(id)button
{
  buttonCopy = button;
  highlightedZoomButton = self->__highlightedZoomButton;
  if (highlightedZoomButton != buttonCopy)
  {
    [(CAMZoomButton *)highlightedZoomButton setHighlighted:0];
  }

  v6 = self->__highlightedZoomButton;
  self->__highlightedZoomButton = buttonCopy;
  v7 = buttonCopy;

  [(CAMZoomButton *)self->__highlightedZoomButton setHighlighted:1];
}

- (void)_resetSnapping
{
  [(CAMZoomControl *)self _setSnappedZoomFactor:0.0];

  [(CAMZoomControl *)self _setUnsnappingProgress:0.0];
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  v33.receiver = self;
  v33.super_class = CAMZoomControl;
  v8 = [(CAMZoomControl *)&v33 beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  if (v8)
  {
    _zoomDial = [(CAMZoomControl *)self _zoomDial];
    [_zoomDial prepareForDisplay];

    _zoomButton = [(CAMZoomControl *)self _zoomButton];
    [touchCopy locationInView:self];
    v12 = v11;
    v14 = v13;
    [eventCopy timestamp];
    v16 = v15;
    _isZoomDialEnabled = [(CAMZoomControl *)self _isZoomDialEnabled];
    _shouldShowZoomDial = [(CAMZoomControl *)self _shouldShowZoomDial];
    [(CAMZoomControl *)self _setStartTouchLocation:v12, v14];
    [(CAMZoomControl *)self _setPreviousTouchLocation:v12, v14];
    [(CAMZoomControl *)self _setPreviousTouchTime:v16];
    [(CAMZoomControl *)self _resetSnapping];
    [(CAMZoomControl *)self _cancelDelayedZoomDialVisibilityChange];
    v19 = [(CAMZoomControl *)self _isWithinZoomButtonBoundsWithTouch:touchCopy];
    v20 = [(CAMZoomControl *)self _isTouchWithinButtonPlatter:touchCopy];
    v21 = [(CAMZoomControl *)self _isTouchWithinZoomButtonAccessory:touchCopy];
    if (v20)
    {
      [(CAMZoomControl *)self _buttonPlatter];
      v32 = _shouldShowZoomDial;
      v22 = v19;
      v23 = _isZoomDialEnabled;
      v25 = v24 = _zoomButton;
      v26 = [v25 nearestZoomButtonForTouch:touchCopy];
      [(CAMZoomControl *)self _setHighlightedZoomButton:v26];

      _zoomButton = v24;
      _isZoomDialEnabled = v23;
      v19 = v22;
      _shouldShowZoomDial = v32;
    }

    else if (v19)
    {
      [(CAMZoomControl *)self _setHighlightedZoomButton:_zoomButton];
    }

    else if (v21)
    {
      _accessorizedZoomButton = [(CAMZoomControl *)self _accessorizedZoomButton];
      [(CAMZoomControl *)self _setHighlightedZoomButton:_accessorizedZoomButton];
    }

    if (_isZoomDialEnabled)
    {
      v28 = [(CAMZoomControl *)self _shouldInterceptTouchesForHidingZoomDial]&& !v20;
      if ((v28 & 1) != 0 || _shouldShowZoomDial != 1)
      {
        v29 = 0.23;
        if (v28)
        {
          v29 = 0.0;
        }

        [(CAMZoomControl *)self _setShouldShowZoomDial:1 animationDuration:1 afterDelay:v29];
      }
    }

    [(CAMZoomControl *)self _setEligibleForSwipeDownToDismiss:_shouldShowZoomDial & v19];
    [(CAMZoomControl *)self _setEligibleForZoomFactorLabelTaps:_shouldShowZoomDial];
    _feedbackController = [(CAMZoomControl *)self _feedbackController];
    [_feedbackController prepareDiscreteFeedback:3];
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  isTracking = [(CAMZoomControl *)self isTracking];
  name = [beginCopy name];
  v7 = [name isEqualToString:@"_UISheetInteractionBackgroundDismissRecognizer"];

  if (isTracking && (v7 & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CAMZoomControl;
    v8 = [(CAMZoomControl *)&v10 gestureRecognizerShouldBegin:beginCopy];
  }

  return v8;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v85 = *MEMORY[0x1E69E9840];
  touchCopy = touch;
  eventCopy = event;
  v83.receiver = self;
  v83.super_class = CAMZoomControl;
  if (![(CAMZoomControl *)&v83 continueTrackingWithTouch:touchCopy withEvent:eventCopy])
  {
    goto LABEL_75;
  }

  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  [(CAMZoomControl *)self _startTouchLocation];
  v13 = v12;
  v15 = v14;
  [(CAMZoomControl *)self _previousTouchLocation];
  v17 = v16;
  v19 = v18;
  [(CAMZoomControl *)self _previousTouchTime];
  v21 = v20;
  [eventCopy timestamp];
  v23 = v22;
  if ([(CAMZoomControl *)self _isZoomDialEnabled])
  {
    v24 = v11 - v15;
    v25 = vabdd_f64(v9, v13);
    if ([(CAMZoomControl *)self _isEligibleForSwipeDownToDismiss])
    {
      if (v24 > 13.0)
      {
        [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1];
        v26 = 0;
        if (![(CAMZoomControl *)self _shouldShowZoomDial])
        {
          goto LABEL_65;
        }

LABEL_19:
        v77 = v23;
        v75 = v23 - v21;
        v76 = v25;
        _zoomDial = [(CAMZoomControl *)self _zoomDial];
        [(CAMZoomControl *)self convertPoint:_zoomDial toView:v17, v19];
        v29 = v11;
        v31 = v30;
        v33 = v32;
        v78 = v29;
        [(CAMZoomControl *)self convertPoint:_zoomDial toView:v9, v29];
        v35 = v34;
        v37 = v36;
        [_zoomDial offsetAngleForPoint:{v31, v33}];
        v39 = v38;
        [_zoomDial offsetAngleForPoint:{v35, v37}];
        v41 = v40 - v39;
        if (v40 - v39 >= -3.14159265)
        {
          if (v41 <= 3.14159265)
          {
            goto LABEL_24;
          }

          v42 = -6.28318531;
        }

        else
        {
          v42 = 6.28318531;
        }

        v41 = v41 + v42;
LABEL_24:
        [(CAMZoomControl *)self _dampingFactorForMovementFromPoint:v17 toPoint:v19, v9, v78];
        v44 = v43;
        [(CAMZoomControl *)self _accelerationForMovementFromPointFromPoint:v17 toPoint:v19 elapsedTime:v9, v78, v75];
        v46 = -(v41 * v44) * v45;
        [_zoomDial zoomFactor];
        [_zoomDial offsetAngleForZoomFactor:?];
        v48 = v47;
        v49 = v46 + v47;
        if ([(CAMZoomControl *)self _shouldSnapDialToSwitchOverZoomFactors])
        {
          [_zoomDial dialCenter];
          v52 = sqrt((v37 - v51) * (v37 - v51) + (v35 - v50) * (v35 - v50));
          if (v52 <= 0.0)
          {
            v53 = 0.0;
          }

          else
          {
            v53 = 14.0 / v52;
          }

          [(CAMZoomControl *)self _snappedZoomFactor];
          if (v54 > 0.0)
          {
            [(CAMZoomControl *)self _snappedZoomFactor];
            [(CAMZoomControl *)self _displayZoomValueForZoomFactor:?];
            [_zoomDial offsetAngleForZoomFactor:?];
            v49 = v55;
            [(CAMZoomControl *)self _unsnappingProgress];
            v25 = v76;
            if (v46 > 0.0 && v56 < 0.0 || v46 < 0.0 && v56 > 0.0)
            {
              v56 = 0.0;
            }

            v57 = v46 + v56;
            if (v46 + v56 <= v53)
            {
              v11 = v78;
              if (v57 >= -v53)
              {
                [(CAMZoomControl *)self _setUnsnappingProgress:v57];
              }

              else
              {
                [(CAMZoomControl *)self _resetSnapping];
                v49 = v48 + v53 + v57;
              }
            }

            else
            {
              [(CAMZoomControl *)self _resetSnapping];
              v49 = v48 + v57 - v53;
              v11 = v78;
            }

            goto LABEL_61;
          }

          [(CAMZoomControl *)self _switchOverZoomFactors];
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v58 = v82 = 0u;
          v59 = [v58 countByEnumeratingWithState:&v79 objects:v84 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v80;
            do
            {
              for (i = 0; i != v60; ++i)
              {
                if (*v80 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                [*(*(&v79 + 1) + 8 * i) doubleValue];
                v64 = v63;
                [(CAMZoomControl *)self _displayZoomValueForZoomFactor:?];
                [_zoomDial offsetAngleForZoomFactor:?];
                v66 = v49 - v65;
                v67 = v48 > v65;
                if (v49 - v65 <= -v53)
                {
                  v67 = 0;
                }

                if (v66 > 0.0)
                {
                  v67 = 0;
                }

                if (v66 >= 0.0 && v66 < v53 && v48 < v65 || v67)
                {
                  [(CAMZoomControl *)self _setSnappedZoomFactor:v64];
                  [(CAMZoomControl *)self _setUnsnappingProgress:v66];
                  goto LABEL_59;
                }
              }

              v60 = [v58 countByEnumeratingWithState:&v79 objects:v84 count:16];
            }

            while (v60);
          }

LABEL_59:

          v11 = v78;
        }

        else
        {
          [(CAMZoomControl *)self _resetSnapping];
          v11 = v78;
        }

        v25 = v76;
LABEL_61:
        [(CAMZoomControl *)self _snappedZoomFactor];
        v23 = v77;
        if (v71 <= 0.0)
        {
          [_zoomDial zoomFactorForOffsetAngle:v49];
          [(CAMZoomControl *)self _zoomFactorForDisplayZoomValue:?];
        }

        else
        {
          [(CAMZoomControl *)self _snappedZoomFactor];
        }

        self->__dragZoomGestureInProgress = 1;
        [(CAMZoomControl *)self _setZoomFactor:0 interactionType:1 shouldNotifyDelegate:1 animated:?];

LABEL_65:
        if ([(CAMZoomControl *)self _shouldShowZoomDial])
        {
          _highlightedZoomButton = [(CAMZoomControl *)self _highlightedZoomButton];
          if (_highlightedZoomButton)
          {

LABEL_69:
            if (v25 > 4.0 || fabs(v24) > 4.0)
            {
              [(CAMZoomControl *)self _setHighlightedZoomButton:0];
              [(CAMZoomControl *)self _setEligibleForZoomFactorLabelTaps:0];
            }

            goto LABEL_72;
          }

          if ([(CAMZoomControl *)self _isEligibleForZoomFactorLabelTaps])
          {
            goto LABEL_69;
          }
        }

LABEL_72:
        [(CAMZoomControl *)self _setPreviousTouchLocation:v9, v11];
        [(CAMZoomControl *)self _setPreviousTouchTime:v23];
        if (v26)
        {
          goto LABEL_73;
        }

        [(CAMZoomControl *)self _cleanupForCancelTracking];
LABEL_75:
        v73 = 0;
        goto LABEL_76;
      }

      if (v24 < -13.0 || v25 > 15.0)
      {
        [(CAMZoomControl *)self _setEligibleForSwipeDownToDismiss:0];
      }
    }

    if ([(CAMZoomControl *)self _shouldShowZoomDial])
    {
      v26 = 1;
    }

    else
    {
      if (v25 <= 15.0 && v24 >= -13.0)
      {
        v26 = 1;
        goto LABEL_65;
      }

      v26 = 1;
      [(CAMZoomControl *)self _setShouldShowZoomDial:1 animationDuration:1];
    }

    goto LABEL_19;
  }

  [(CAMZoomControl *)self _setPreviousTouchLocation:v9, v11];
  [(CAMZoomControl *)self _setPreviousTouchTime:v23];
LABEL_73:
  v73 = 1;
LABEL_76:

  return v73;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v36 = *MEMORY[0x1E69E9840];
  touchCopy = touch;
  eventCopy = event;
  _zoomButton = [(CAMZoomControl *)self _zoomButton];
  _accessorizedZoomButton = [(CAMZoomControl *)self _accessorizedZoomButton];
  _highlightedZoomButton = [(CAMZoomControl *)self _highlightedZoomButton];
  [(CAMZoomControl *)self _setHighlightedZoomButton:0];
  if (touchCopy)
  {
    if (_highlightedZoomButton == _zoomButton || _accessorizedZoomButton && _highlightedZoomButton == _accessorizedZoomButton)
    {
      [touchCopy locationInView:_zoomButton];
      v12 = v11;
      v14 = v13;
      [_zoomButton bounds];
      v37.x = v12;
      v37.y = v14;
      v15 = CGRectContainsPoint(v38, v37);
      v16 = [(CAMZoomControl *)self _isTouchWithinZoomButtonAccessory:touchCopy];
      if (!v15 || v16)
      {
        if (v16)
        {
          [(CAMZoomControl *)self _handleAccessoryTappedForButton:_highlightedZoomButton];
          goto LABEL_33;
        }
      }

      else if (![(CAMZoomControl *)self _shouldShowZoomDial])
      {
LABEL_8:
        [(CAMZoomControl *)self _handleButtonTapped:_highlightedZoomButton forAccessoryTap:0];
        goto LABEL_33;
      }
    }

    else if (_highlightedZoomButton)
    {
      if ([(CAMZoomControl *)self _isTouchWithinButtonPlatter:touchCopy])
      {
        _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
        v18 = [_buttonPlatter nearestZoomButtonForTouch:touchCopy];

        if (_highlightedZoomButton == v18)
        {
          goto LABEL_8;
        }
      }
    }

    else if ([(CAMZoomControl *)self _isEligibleForZoomFactorLabelTaps])
    {
      _zoomDial = [(CAMZoomControl *)self _zoomDial];
      [_zoomDial activeZoomFactorLabels];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v34 = 0u;
      v20 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v20)
      {
        v27 = _zoomDial;
        v28 = _accessorizedZoomButton;
        v21 = *v32;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v31 + 1) + 8 * i);
            superview = [v23 superview];
            [touchCopy locationInView:superview];

            [v23 center];
            UIDistanceBetweenPoints();
            if (v25 <= 30.0)
            {
              v20 = v23;
              goto LABEL_26;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

LABEL_26:
        _zoomDial = v27;
        _accessorizedZoomButton = v28;
      }

      if (v20)
      {
        [v20 zoomFactor];
        [(CAMZoomControl *)self _zoomFactorForDisplayZoomValue:?];
        [(CAMZoomControl *)self _setZoomFactor:1 interactionType:1 shouldNotifyDelegate:1 animated:?];
        [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1 afterDelay:0.0];

        goto LABEL_33;
      }
    }

    if ([(CAMZoomControl *)self _dragZoomGestureInProgress])
    {
      self->__dragZoomGestureInProgress = 0;
      if (self->_delegateFlags.respondsToDidFinishDragZoom)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained zoomControlDidFinishDragZoom:self];
      }
    }

    [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1 afterDelay:1.5];
  }

LABEL_33:
  [(CAMZoomControl *)self _resetSnapping];
  v30.receiver = self;
  v30.super_class = CAMZoomControl;
  [(CAMZoomControl *)&v30 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  [(CAMZoomControl *)self _cleanupForCancelTracking];
  v5.receiver = self;
  v5.super_class = CAMZoomControl;
  [(CAMZoomControl *)&v5 cancelTrackingWithEvent:eventCopy];
}

- (void)_cleanupForCancelTracking
{
  _highlightedZoomButton = [(CAMZoomControl *)self _highlightedZoomButton];
  if (_highlightedZoomButton)
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring touches to zoom button because cancelTrackingWithEvent received before endTrackingWithTouch is received", v5, 2u);
    }

    [(CAMZoomControl *)self _setHighlightedZoomButton:0];
  }

  [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1 afterDelay:0.0];
  [(CAMZoomControl *)self _resetSnapping];
}

- (BOOL)_isButtonPlatterSupportedForConfiguration
{
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];

  if (!_buttonPlatter || [(CAMZoomControl *)self _zoomControlMode]> 1)
  {
    return 0;
  }

  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  v5 = [_displayZoomFactors count];
  _buttonPlatter2 = [(CAMZoomControl *)self _buttonPlatter];
  v7 = v5 >= [_buttonPlatter2 buttonCount];

  return v7;
}

- (unint64_t)_numberOfZoomPlatterButtonsForZoomFactorCount:(unint64_t)count
{
  _zoomControlMode = [(CAMZoomControl *)self _zoomControlMode];
  if (!_zoomControlMode)
  {
    return count - ([(CAMZoomControl *)self _createButtonForMaxZoomFactor]^ 1);
  }

  if (_zoomControlMode == 1)
  {
    return count;
  }

  return 0;
}

- (BOOL)_shouldShowButtonPlatter
{
  _isButtonPlatterSupportedForConfiguration = [(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration];
  if (_isButtonPlatterSupportedForConfiguration)
  {
    LOBYTE(_isButtonPlatterSupportedForConfiguration) = ![(CAMZoomControl *)self _shouldShowZoomDial];
  }

  return _isButtonPlatterSupportedForConfiguration;
}

- (BOOL)_isTouchWithinButtonPlatter:(id)platter
{
  [platter locationInView:self];

  return [(CAMZoomControl *)self _isPointWithinButtonPlatter:?];
}

- (BOOL)_isPointWithinButtonPlatter:(CGPoint)platter
{
  y = platter.y;
  x = platter.x;
  if (![(CAMZoomControl *)self _shouldShowButtonPlatter])
  {
    return 0;
  }

  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  [(CAMZoomControl *)self convertPoint:_buttonPlatter toView:x, y];
  v8 = v7;
  v10 = v9;

  _buttonPlatter2 = [(CAMZoomControl *)self _buttonPlatter];
  v12 = [_buttonPlatter2 nearestZoomButtonForPoint:{v8, v10}];

  v13 = v12 != 0;
  return v13;
}

- (void)setPlatterLayoutCompact:(BOOL)compact animated:(BOOL)animated
{
  if (self->_platterLayoutCompact != compact)
  {
    animatedCopy = animated;
    compactCopy = compact;
    self->_platterLayoutCompact = compact;
    _centerSelectedZoomEnabled = [(CAMZoomControl *)self _centerSelectedZoomEnabled];
    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    [_buttonPlatter setCenterSelectedZoomEnabled:_centerSelectedZoomEnabled animated:animatedCopy];

    [(CAMZoomControl *)self _setButtonPlatterCollapsed:compactCopy animated:animatedCopy];

    [(CAMZoomControl *)self _updateZoomDialEnablement];
  }
}

- (BOOL)hasPlatterConflictLeft
{
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  hasLayoutConflictLeft = [_buttonPlatter hasLayoutConflictLeft];

  return hasLayoutConflictLeft;
}

- (void)setHasPlatterConflictLeft:(BOOL)left animated:(BOOL)animated
{
  animatedCopy = animated;
  leftCopy = left;
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  [_buttonPlatter setHasLayoutConflictLeft:leftCopy animated:animatedCopy];
}

- (BOOL)hasPlatterConflictRight
{
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  hasLayoutConflictRight = [_buttonPlatter hasLayoutConflictRight];

  return hasLayoutConflictRight;
}

- (void)setHasPlatterConflictRight:(BOOL)right animated:(BOOL)animated
{
  animatedCopy = animated;
  rightCopy = right;
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  [_buttonPlatter setHasLayoutConflictRight:rightCopy animated:animatedCopy];
}

- (BOOL)_centerSelectedZoomEnabled
{
  if ([(CAMZoomControl *)self isPlatterLayoutCompact])
  {
    return 0;
  }

  return +[CAMUserPreferences solCamSelectedZoomCenteredEnabled];
}

- (void)_updateZoomDialEnablement
{
  _zoomControlMode = [(CAMZoomControl *)self _zoomControlMode];
  if (_zoomControlMode > 5)
  {
    [(CAMZoomControl *)self _setZoomDialEnabled:1];
  }

  else
  {
    if (((1 << _zoomControlMode) & 0x3A) != 0)
    {

      [(CAMZoomControl *)self _setZoomDialEnabled:0];
      return;
    }

    isPlatterLayoutCompact = [(CAMZoomControl *)self isPlatterLayoutCompact];
    v5 = isPlatterLayoutCompact;
    [(CAMZoomControl *)self _setZoomDialEnabled:!isPlatterLayoutCompact];
    if (v5)
    {
      return;
    }
  }

  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  firstObject = [_displayZoomFactors firstObject];
  [firstObject doubleValue];
  v9 = v8;

  _displayZoomFactors2 = [(CAMZoomControl *)self _displayZoomFactors];
  lastObject = [_displayZoomFactors2 lastObject];
  [lastObject doubleValue];
  v13 = v12;

  v14 = v9 != 0.0 && v13 / v9 <= 2.0;
  if ([(CAMZoomControl *)self layoutStyle]== 1 || v14)
  {
    v16 = 1.04719755;
  }

  else
  {
    v16 = 1.57079633;
  }

  _zoomDial = [(CAMZoomControl *)self _zoomDial];
  [_zoomDial setAngleDeltaForZoomRange:v16];
}

- (void)_setButtonPlatterCollapsed:(BOOL)collapsed animated:(BOOL)animated
{
  collapsedCopy = collapsed;
  if (animated)
  {
    [(CAMZoomControl *)self layoutIfNeeded];
    [(CAMZoomControl *)self setNeedsLayout];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__CAMZoomControl__setButtonPlatterCollapsed_animated___block_invoke;
    v7[3] = &unk_1E76F7850;
    v7[4] = self;
    v8 = collapsedCopy;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:1.0];
  }

  else
  {
    [(CAMZoomControl *)self setNeedsLayout];
    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    [_buttonPlatter setCollapsed:collapsedCopy];
  }
}

uint64_t __54__CAMZoomControl__setButtonPlatterCollapsed_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _buttonPlatter];
  [v3 setCollapsed:v2];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (BOOL)isPlatterExpanded
{
  selfCopy = self;
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  LODWORD(selfCopy) = [(CAMZoomControl *)selfCopy _isButtonPlatterSupportedForConfiguration];
  v4 = selfCopy & ([_buttonPlatter isCollapsed] ^ 1);
  if (_buttonPlatter)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPreferredCustomLens:(int64_t)lens
{
  if (self->_preferredCustomLens != lens)
  {
    self->_preferredCustomLens = lens;
    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    [_buttonPlatter setPreferredCustomLens:lens];
  }
}

- (void)_handleButtonTapped:(id)tapped forAccessoryTap:(BOOL)tap
{
  tappedCopy = tapped;
  if ([(CAMZoomControl *)self isPlatterLayoutCompact])
  {
    _isButtonPlatterSupportedForConfiguration = [(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration];
  }

  else
  {
    _isButtonPlatterSupportedForConfiguration = 0;
  }

  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  isCollapsed = [_buttonPlatter isCollapsed];

  _buttonPlatter2 = [(CAMZoomControl *)self _buttonPlatter];
  v10 = ([_buttonPlatter2 buttonCount] == 2) & _isButtonPlatterSupportedForConfiguration & isCollapsed;

  if (_isButtonPlatterSupportedForConfiguration && (isCollapsed & 1) != 0 && !tap && (v10 & 1) == 0)
  {
    [(CAMZoomControl *)self _setButtonPlatterCollapsed:0 animated:1];
    delegate = [(CAMZoomControl *)self delegate];
    [delegate zoomControlDidChangePlatterExpanded:self];
LABEL_9:

    goto LABEL_10;
  }

  _zoomControlMode = [(CAMZoomControl *)self _zoomControlMode];
  if (_zoomControlMode > 2)
  {
    if ((_zoomControlMode - 3) >= 2)
    {
      if (_zoomControlMode == 5)
      {
        [(CAMZoomControl *)self _handleButtonTappedForSingleCameraToggleOnly];
      }
    }

    else if (self->_delegateFlags.respondsToToggleBetweenZoomFactors)
    {
      delegate = [(CAMZoomControl *)self delegate];
      [delegate toggleBetweenZoomFactorsForZoomControl:self];
      goto LABEL_9;
    }
  }

  else if (_zoomControlMode)
  {
    if (_zoomControlMode == 1)
    {
      [(CAMZoomControl *)self _handleButtonTappedForSelection:tappedCopy];
    }

    else if (_zoomControlMode == 2)
    {
      [(CAMZoomControl *)self _handleButtonTappedForSingleCameraZoomPlusToggle];
    }
  }

  else
  {
    _buttonPlatter3 = [(CAMZoomControl *)self _buttonPlatter];
    v15 = (_buttonPlatter3 == 0) | v10;

    if (v15)
    {
      [(CAMZoomControl *)self _handleButtonTappedForDualCameraMode];
    }

    else
    {
      [(CAMZoomControl *)self _handleButtonTappedForContinuousModeWithPlatter:tappedCopy];
    }
  }

LABEL_10:
  if (((!_isButtonPlatterSupportedForConfiguration | isCollapsed) & 1) == 0)
  {
    [(CAMZoomControl *)self _setButtonPlatterCollapsed:1 animated:1];
    delegate2 = [(CAMZoomControl *)self delegate];
    [delegate2 zoomControlDidChangePlatterExpanded:self];
  }
}

- (void)_handleButtonTappedForDualCameraMode
{
  _zoomFactors = [(CAMZoomControl *)self _zoomFactors];
  v4 = [_zoomFactors objectAtIndexedSubscript:1];
  [v4 doubleValue];
  v6 = v5;

  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  v8 = [_displayZoomFactors objectAtIndexedSubscript:1];
  [v8 doubleValue];
  v10 = v9;

  [(CAMZoomControl *)self displayZoomValue];
  v22 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  [(CAMZoomControl *)self _displayMinimumZoomFactor];
  v11 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  v12 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:v10];
  v13 = [v22 isEqualToString:v11];
  v14 = [v22 isEqualToString:v12];
  [(CAMZoomControl *)self zoomFactor];
  v16 = v15;
  if ((v13 & 1) == 0)
  {
    if (!v14 && (([(CAMZoomControl *)self _displayMinimumZoomFactor], v17 == 1.0) || v10 == 1.0))
    {
      [(CAMZoomControl *)self _zoomFactorForDisplayZoomValue:1.0];
    }

    else
    {
      [(CAMZoomControl *)self minimumZoomFactor];
    }

    v6 = v18;
  }

  [(CAMZoomControl *)self minAvailableZoomFactor];
  if (v6 < v19 || ([(CAMZoomControl *)self maxAvailableZoomFactor], v6 > v20))
  {
    v6 = v16;
  }

  if (v6 == v16)
  {
    [(CAMZoomControl *)self _setShouldShowZoomDial:1 animationDuration:1 afterDelay:0.0];
    v21 = 1.5;
  }

  else
  {
    [(CAMZoomControl *)self _setZoomFactor:1 interactionType:1 shouldNotifyDelegate:1 animated:v6];
    v21 = 0.0;
  }

  [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1 afterDelay:v21];
}

- (void)_handleButtonTappedForContinuousModeWithPlatter:(id)platter
{
  platterCopy = platter;
  _zoomButton = [(CAMZoomControl *)self _zoomButton];

  if (_zoomButton == platterCopy)
  {
    v13 = 1.5;
  }

  else
  {
    _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
    v7 = [_buttonPlatter baseZoomPointForButton:platterCopy];
    [(CAMZoomControl *)self zoomFactor];
    v9 = v8;
    if (v7)
    {
      zoomFactorButton = [_buttonPlatter zoomFactorButton];

      if (zoomFactorButton == platterCopy)
      {
        allZoomPoints = [v7 allZoomPoints];
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0x7FEFFFFFFFFFFFFFLL;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __66__CAMZoomControl__handleButtonTappedForContinuousModeWithPlatter___block_invoke;
        v20[3] = &unk_1E76F8B18;
        *&v20[6] = v9;
        v20[4] = &v21;
        v20[5] = &v25;
        [allZoomPoints enumerateObjectsUsingBlock:v20];
        v12 = v22[3];
        if (vabdd_f64(v12, v9) < 0.001)
        {
          v15 = [allZoomPoints count];
          v16 = [allZoomPoints objectAtIndexedSubscript:(v15 + v26[3] - 1) % v15];
          [v16 zoomFactor];
          v12 = v17;
        }

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v25, 8);
      }

      else
      {
        [_buttonPlatter defaultZoomFactorForButton:platterCopy];
        [(CAMZoomControl *)self _zoomFactorForDisplayZoomValue:?];
        v12 = v11;
      }
    }

    else
    {
      v12 = 1.0;
    }

    [(CAMZoomControl *)self minAvailableZoomFactor];
    if (v12 >= v18 && ([(CAMZoomControl *)self maxAvailableZoomFactor], v12 <= v19))
    {
      if (v12 != v9)
      {
        [(CAMZoomControl *)self _setZoomFactor:1 interactionType:1 shouldNotifyDelegate:1 animated:v12];
      }

      v13 = 0.0;
    }

    else
    {
      v13 = 0.0;
      if ([(CAMZoomControl *)self _isZoomDialEnabled])
      {
        [(CAMZoomControl *)self _setShouldShowZoomDial:1 animationDuration:1 afterDelay:0.0];
        v13 = 1.5;
      }
    }
  }

  [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1 afterDelay:v13];
}

uint64_t __66__CAMZoomControl__handleButtonTappedForContinuousModeWithPlatter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 zoomFactor];
  v7 = *(*(a1 + 32) + 8);
  if (vabdd_f64(v6, *(a1 + 48)) < vabdd_f64(*(v7 + 24), *(a1 + 48)))
  {
    *(v7 + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

- (void)_handleButtonTappedForSelection:(id)selection
{
  selectionCopy = selection;
  _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
  v15 = [_buttonPlatter baseZoomPointForButton:selectionCopy];

  [v15 displayZoomFactor];
  if (v15)
  {
    v7 = v6;
    [(CAMZoomControl *)self displayZoomValue];
    if (v7 != v8)
    {
      _buttonPlatter2 = [(CAMZoomControl *)self _buttonPlatter];
      zoomFactors = [_buttonPlatter2 zoomFactors];
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      v12 = [zoomFactors indexOfObject:v11];

      delegate = [(CAMZoomControl *)self delegate];
      LOBYTE(zoomFactors) = objc_opt_respondsToSelector();

      if (zoomFactors)
      {
        delegate2 = [(CAMZoomControl *)self delegate];
        [delegate2 zoomControl:self didChangeSelectedButtonIndex:v12 displayZoomFactor:v7];
      }
    }
  }
}

- (void)_handleAccessoryTappedForButton:(id)button
{
  v25[1] = *MEMORY[0x1E69E9840];
  delegate = [(CAMZoomControl *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration])
    {
      _buttonPlatter = [(CAMZoomControl *)self _buttonPlatter];
      zoomFactors = [_buttonPlatter zoomFactors];

      _buttonPlatter2 = [(CAMZoomControl *)self _buttonPlatter];
      buttons = [_buttonPlatter2 buttons];
    }

    else
    {
      v10 = MEMORY[0x1E696AD98];
      _zoomButton = [(CAMZoomControl *)self _zoomButton];
      [_zoomButton zoomFactor];
      v12 = [v10 numberWithDouble:?];
      v25[0] = v12;
      zoomFactors = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

      _buttonPlatter2 = [(CAMZoomControl *)self _zoomButton];
      v24 = _buttonPlatter2;
      buttons = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

    v13 = buttons;

    delegate2 = [(CAMZoomControl *)self delegate];
    v15 = [delegate2 zoomControl:self accessoryButtonTapIndexInDisplayZoomFactors:zoomFactors];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v15 >= [v13 count])
      {
        v16 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 134218240;
          v21 = v15;
          v22 = 2048;
          v23 = [v13 count];
          _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "accessoryButtonTapIndexInDisplayZoomFactors %ld outside available count: %ld", &v20, 0x16u);
        }
      }

      else
      {
        v16 = [v13 objectAtIndexedSubscript:v15];
        [(CAMZoomControl *)self _handleButtonTapped:v16 forAccessoryTap:1];
      }
    }
  }

  delegate3 = [(CAMZoomControl *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate4 = [(CAMZoomControl *)self delegate];
    [delegate4 zoomControlDidTapZoomButtonAccessory:self];
  }
}

- (void)_handleButtonTappedForSingleCameraZoomPlusToggle
{
  [(CAMZoomControl *)self displayZoomValue];
  v8 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  [(CAMZoomControl *)self _displayMinimumZoomFactor];
  v3 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  if (![v8 isEqualToString:v3])
  {
    [(CAMZoomControl *)self minimumZoomFactor];
    [(CAMZoomControl *)self _setZoomFactor:1 interactionType:1 shouldNotifyDelegate:1 animated:?];
LABEL_7:
    v7 = 0.0;
    goto LABEL_9;
  }

  if (self->_delegateFlags.respondsToCanToggleBetweenZoomFactors)
  {
    delegate = [(CAMZoomControl *)self delegate];
    v5 = [delegate canToggleBetweenZoomFactorsForZoomControl:self];

    if (v5)
    {
      if (self->_delegateFlags.respondsToToggleBetweenZoomFactors)
      {
        delegate2 = [(CAMZoomControl *)self delegate];
        [delegate2 toggleBetweenZoomFactorsForZoomControl:self];
      }

      goto LABEL_7;
    }
  }

  [(CAMZoomControl *)self _setShouldShowZoomDial:1 animationDuration:1 afterDelay:0.0];
  v7 = 1.5;
LABEL_9:
  [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:1 afterDelay:v7];
}

- (void)_handleButtonTappedForSingleCameraToggleOnly
{
  [(CAMZoomControl *)self displayZoomValue];
  v4 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  [(CAMZoomControl *)self _displayMinimumZoomFactor];
  v3 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  if ([v4 isEqualToString:v3])
  {
    [(CAMZoomControl *)self maximumZoomFactor];
  }

  else
  {
    [(CAMZoomControl *)self minimumZoomFactor];
  }

  [(CAMZoomControl *)self _setZoomFactor:1 interactionType:1 shouldNotifyDelegate:1 animated:?];
}

- (void)_updateSignificantValuesForHaptics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _displayZoomFactors = [(CAMZoomControl *)self _displayZoomFactors];
  v6 = [_displayZoomFactors count];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__CAMZoomControl__updateSignificantValuesForHaptics__block_invoke;
  v13 = &unk_1E76F8B40;
  v14 = _displayZoomFactors;
  v15 = v3;
  v16 = v4;
  v17 = v6 - 1;
  v7 = v4;
  v8 = v3;
  v9 = _displayZoomFactors;
  [v9 enumerateObjectsUsingBlock:&v10];
  [(CAMZoomControl *)self _setSignificantHapticDisplayValues:v8, v10, v11, v12, v13];
  [(CAMZoomControl *)self _setSignificantHapticDisplayValueSwitchOverIndexes:v7];
  [(CAMZoomControl *)self displayZoomValue];
  [(CAMZoomControl *)self set_lastHapticZone:[(CAMZoomControl *)self _hapticZoneForDisplayValue:?]];
}

void __52__CAMZoomControl__updateSignificantValuesForHaptics__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  if (a3)
  {
    if (*(a1 + 56) == a3)
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
      [v5 doubleValue];
      v7 = v6;

      [v15 doubleValue];
      v9 = v8;
      v10 = floor(v7) + 1.0;
      if (v10 < v8)
      {
        do
        {
          v11 = *(a1 + 40);
          v12 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
          [v11 addObject:v12];

          v10 = v10 + 1.0;
        }

        while (v10 < v9);
      }
    }

    if (*(a1 + 56) > a3)
    {
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
      [v13 addObject:v14];
    }
  }

  [*(a1 + 40) addObject:v15];
}

- (void)_setSignificantHapticDisplayValues:(id)values
{
  valuesCopy = values;
  significantHapticDisplayValues = self->__significantHapticDisplayValues;
  if (significantHapticDisplayValues != valuesCopy)
  {
    v7 = valuesCopy;
    significantHapticDisplayValues = [significantHapticDisplayValues isEqualToArray:valuesCopy];
    valuesCopy = v7;
    if ((significantHapticDisplayValues & 1) == 0)
    {
      objc_storeStrong(&self->__significantHapticDisplayValues, values);
      significantHapticDisplayValues = [(CAMZoomControl *)self _updateHapticEpsilons];
      valuesCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](significantHapticDisplayValues, valuesCopy);
}

- (void)_updateHapticEpsilons
{
  [(CAMZoomControl *)self zoomDialRadius];
  if (v3 > 0.0)
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _zoomDial = [(CAMZoomControl *)self _zoomDial];
    _zoomDial2 = [(CAMZoomControl *)self _zoomDial];
    [_zoomDial2 angleDeltaForZoomRange];
    v9 = v8;

    if (v4 * v9 <= 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 2.0 / (v4 * v9);
    }

    _significantHapticDisplayValues = [(CAMZoomControl *)self _significantHapticDisplayValues];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __39__CAMZoomControl__updateHapticEpsilons__block_invoke;
    v18 = &unk_1E76F8B40;
    v19 = _zoomDial;
    v20 = _significantHapticDisplayValues;
    v22 = v10;
    v21 = v5;
    v12 = v5;
    v13 = _significantHapticDisplayValues;
    v14 = _zoomDial;
    [v13 enumerateObjectsUsingBlock:&v15];
    [(CAMZoomControl *)self _setSignificantHapticDisplayValueEpsilons:v12, v15, v16, v17, v18];
  }
}

void __39__CAMZoomControl__updateHapticEpsilons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 doubleValue];
  v6 = v5;
  [*(a1 + 32) normalizedValueForZoomFactor:?];
  v8 = v7;
  v9 = [*(a1 + 40) count] - 1;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  if (v9 == a3)
  {
    [v11 zoomFactorForNormalizedValue:v8 - v10];
    v13 = v6 - v12;
  }

  else
  {
    [v11 zoomFactorForNormalizedValue:v8 + v10];
    v13 = v14 - v6;
  }

  v15 = *(a1 + 48);
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [v15 addObject:v16];
}

- (int64_t)_hapticZoneForDisplayValue:(double)value
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _shouldSnapDialToSwitchOverZoomFactors = [(CAMZoomControl *)self _shouldSnapDialToSwitchOverZoomFactors];
  _significantHapticDisplayValues = [(CAMZoomControl *)self _significantHapticDisplayValues];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CAMZoomControl__hapticZoneForDisplayValue___block_invoke;
  v9[3] = &unk_1E76F8B68;
  v10 = _shouldSnapDialToSwitchOverZoomFactors;
  *&v9[6] = value;
  v9[4] = self;
  v9[5] = &v11;
  [_significantHapticDisplayValues enumerateObjectsUsingBlock:v9];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

void __45__CAMZoomControl__hapticZoneForDisplayValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 doubleValue];
  v8 = v7;
  v9 = [*(a1 + 32) _significantHapticDisplayValueEpsilons];
  v10 = [v9 objectAtIndexedSubscript:a3];
  [v10 doubleValue];
  v12 = v11;

  v13 = [*(a1 + 32) _significantHapticDisplayValueSwitchOverIndexes];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v15 = [v13 containsObject:v14];

  v16 = *(a1 + 48);
  if (v16 < v8)
  {
    goto LABEL_6;
  }

  v17 = 0.0;
  if ((*(a1 + 56) & v15 & 1) == 0)
  {
    v17 = v12;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  if (v16 <= v8 + v17)
  {
LABEL_6:
    *a4 = 1;
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)_updateHaptics:(BOOL)haptics
{
  hapticsCopy = haptics;
  _feedbackController = [(CAMZoomControl *)self _feedbackController];

  if (_feedbackController)
  {
    [(CAMZoomControl *)self displayZoomValue];
    v6 = [(CAMZoomControl *)self _hapticZoneForDisplayValue:?];
    _lastHapticZone = [(CAMZoomControl *)self _lastHapticZone];
    _zoomDial = [(CAMZoomControl *)self _zoomDial];
    isExpanded = [_zoomDial isExpanded];

    if (isExpanded)
    {
      if (hapticsCopy)
      {
        v10 = v6 - _lastHapticZone;
        if (v6 != _lastHapticZone)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_9;
          }

          if (v10 < 0)
          {
            v10 = _lastHapticZone - v6;
          }

          if (v10 >= 2)
          {
LABEL_9:
            _feedbackController2 = [(CAMZoomControl *)self _feedbackController];
            [_feedbackController2 performDiscreteFeedback:3];

            _feedbackController3 = [(CAMZoomControl *)self _feedbackController];
            [_feedbackController3 prepareDiscreteFeedback:3];
          }
        }
      }
    }

    [(CAMZoomControl *)self set_lastHapticZone:v6];
  }
}

- (CAMZoomControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)_startTouchLocation
{
  x = self->__startTouchLocation.x;
  y = self->__startTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_previousTouchLocation
{
  x = self->__previousTouchLocation.x;
  y = self->__previousTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)configureForContinuousZoomWithZoomFactor:(void *)a1 zoomPoints:(NSObject *)a2 createButtonForMaxZoomFactor:compactPlatterLayout:animated:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Unexpected count for zoomPoints: %lu", &v3, 0xCu);
}

@end