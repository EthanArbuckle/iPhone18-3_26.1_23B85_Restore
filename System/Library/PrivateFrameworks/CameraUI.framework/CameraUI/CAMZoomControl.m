@interface CAMZoomControl
- (BOOL)_centerSelectedZoomEnabled;
- (BOOL)_isButtonPlatterSupportedForConfiguration;
- (BOOL)_isPointWithinButtonPlatter:(CGPoint)a3;
- (BOOL)_isPointWithinZoomButtonAccessory:(CGPoint)a3;
- (BOOL)_isTouchWithinButtonPlatter:(id)a3;
- (BOOL)_isTouchWithinZoomButtonAccessory:(id)a3;
- (BOOL)_isWithinZoomButtonBoundsWithTouch:(id)a3;
- (BOOL)_shouldInterceptTouchesForHidingZoomDial;
- (BOOL)_shouldShowButtonPlatter;
- (BOOL)_shouldSnapDialToSwitchOverZoomFactors;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)configureForContinuousZoomWithZoomFactor:(double)a3 zoomPoints:(id)a4 createButtonForMaxZoomFactor:(BOOL)a5 compactPlatterLayout:(BOOL)a6 animated:(BOOL)a7;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasPlatterConflictLeft;
- (BOOL)hasPlatterConflictRight;
- (BOOL)hideFocalLengthLabels;
- (BOOL)isPlatterExpanded;
- (CAMZoomControl)initWithLayoutStyle:(int64_t)a3;
- (CAMZoomControlDelegate)delegate;
- (CGPoint)_previousTouchLocation;
- (CGPoint)_startTouchLocation;
- (CGRect)buttonPlatterDefaultFrame;
- (NSArray)_switchOverZoomFactors;
- (UIEdgeInsets)contentInsets;
- (double)_accelerationForMovementFromPointFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 elapsedTime:(double)a5;
- (double)_additionalAccelerationForMovementFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 deltaX:(double)a5;
- (double)_dampingFactorForDistanceFromDialForPoint:(CGPoint)a3;
- (double)_dampingFactorForMovementFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
- (double)_dampingFactorForPerpendicularityFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
- (double)_displayMaximumZoomFactor;
- (double)_displayMinimumZoomFactor;
- (double)_displayZoomValueForZoomFactor:(double)a3;
- (double)_distanceFromDialClippingViewToPoint:(CGPoint)a3;
- (double)_normalizeValue:(double)a3 betweenMinimumValue:(double)a4 maximumValue:(double)a5;
- (double)_zoomFactorForDisplayZoomValue:(double)a3;
- (double)displayZoomValue;
- (double)maximumZoomFactor;
- (double)minimumZoomFactor;
- (double)zoomDialBorderWidth;
- (double)zoomDialContentMaskingHeight;
- (id)_accessorizedZoomButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_hapticZoneForDisplayValue:(double)a3;
- (int64_t)zoomButtonContentType;
- (int64_t)zoomButtonSymbol;
- (unint64_t)_numberOfZoomPlatterButtonsForZoomFactorCount:(unint64_t)a3;
- (void)_cancelDelayedZoomDialVisibilityChange;
- (void)_cleanupForCancelTracking;
- (void)_configureForControlMode:(int64_t)a3 zoomFactor:(double)a4 zoomFactors:(id)a5 displayZoomFactors:(id)a6 zoomButtonContentType:(int64_t)a7 animated:(BOOL)a8;
- (void)_configureForControlMode:(int64_t)a3 zoomFactor:(double)a4 zoomPoints:(id)a5 zoomButtonContentType:(int64_t)a6 animated:(BOOL)a7;
- (void)_configureForControlMode:(int64_t)a3 zoomFactor:(double)a4 zoomPoints:(id)a5 zoomFactors:(id)a6 displayZoomFactors:(id)a7 createButtonForMaxZoomFactor:(BOOL)a8 zoomButtonContentType:(int64_t)a9 compactPlatterLayout:(BOOL)a10 animated:(BOOL)a11;
- (void)_handleAccessoryTappedForButton:(id)a3;
- (void)_handleButtonTapped:(id)a3 forAccessoryTap:(BOOL)a4;
- (void)_handleButtonTappedForContinuousModeWithPlatter:(id)a3;
- (void)_handleButtonTappedForDualCameraMode;
- (void)_handleButtonTappedForSelection:(id)a3;
- (void)_handleButtonTappedForSingleCameraToggleOnly;
- (void)_handleButtonTappedForSingleCameraZoomPlusToggle;
- (void)_handleZoomDialVisibilityTimerFiredWithUserInfo:(id)a3;
- (void)_resetSnapping;
- (void)_setButtonPlatterCollapsed:(BOOL)a3 animated:(BOOL)a4;
- (void)_setHighlightedZoomButton:(id)a3;
- (void)_setShouldShowZoomDial:(BOOL)a3 animationDuration:(int64_t)a4;
- (void)_setShouldShowZoomDial:(BOOL)a3 animationDuration:(int64_t)a4 afterDelay:(double)a5;
- (void)_setSignificantHapticDisplayValues:(id)a3;
- (void)_setZoomDialEnabled:(BOOL)a3 animationDuration:(int64_t)a4;
- (void)_setZoomFactor:(double)a3 interactionType:(int64_t)a4 shouldNotifyDelegate:(BOOL)a5 animated:(BOOL)a6;
- (void)_updateButtonAccessoryAnimated:(BOOL)a3;
- (void)_updateDisplayZoomFactorsAnimated:(BOOL)a3;
- (void)_updateDisplayedValuesAllowingFlashingSubstate:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateHapticEpsilons;
- (void)_updateHaptics:(BOOL)a3;
- (void)_updateSignificantValuesForHaptics;
- (void)_updateSubviewsAlphasWithDuration:(double)a3 forConfigurationChange:(BOOL)a4;
- (void)_updateZoomButtonTappableEdgeInsets;
- (void)_updateZoomDialEnablement;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)configureForDualDeviceWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7 dualCameraSwitchOverZoomFactor:(double)a8 displayDualCameraSwitchOverZoomFactor:(double)a9;
- (void)configureForSelectionOnlyWithDisplayZoomFactors:(id)a3 selectedIndex:(unint64_t)a4 compactPlatterLayout:(BOOL)a5 animated:(BOOL)a6;
- (void)configureForSingleCameraPlusToggleWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7;
- (void)configureForSingleCameraToggleOnlyWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7;
- (void)configureForToggleOnlyWithZoomFactor:(double)a3 displayZoomFactor:(double)a4;
- (void)configureForTripleDeviceWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7 switchOverZoomFactor1:(double)a8 displaySwitchOverZoomFactor1:(double)a9 switchOverZoomFactor2:(double)a10 displaySwitchOverZoomFactor2:(double)a11;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)removeAnimationFromView:(id)a3 forKeys:(id)a4;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setEdgeMargin:(double)a3 animated:(BOOL)a4;
- (void)setHasPlatterConflictLeft:(BOOL)a3 animated:(BOOL)a4;
- (void)setHasPlatterConflictRight:(BOOL)a3 animated:(BOOL)a4;
- (void)setHideFocalLengthLabels:(BOOL)a3;
- (void)setMaxAvailableZoomFactor:(double)a3;
- (void)setMinAvailableZoomFactor:(double)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setPlatterLayoutCompact:(BOOL)a3 animated:(BOOL)a4;
- (void)setPreferredCustomLens:(int64_t)a3;
- (void)setShouldShowZoomDial:(BOOL)a3 animationDuration:(int64_t)a4;
- (void)setZoomButtonAccessoryState:(int64_t)a3 animated:(BOOL)a4;
- (void)setZoomButtonMaxYWhenContracted:(double)a3;
- (void)setZoomButtonSymbol:(int64_t)a3 animated:(BOOL)a4;
- (void)setZoomDialContentMaskingHeight:(double)a3;
- (void)setZoomDialRadius:(double)a3;
@end

@implementation CAMZoomControl

- (CAMZoomControl)initWithLayoutStyle:(int64_t)a3
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
    v8->_layoutStyle = a3;
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
      v14 = [(CAMZoomControl *)v8 isPlatterLayoutCompact];
      v15 = 0;
      if (!v14)
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(CAMZoomControl *)self _buttonPlatter];
  [v3 frame];
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

- (void)_configureForControlMode:(int64_t)a3 zoomFactor:(double)a4 zoomFactors:(id)a5 displayZoomFactors:(id)a6 zoomButtonContentType:(int64_t)a7 animated:(BOOL)a8
{
  v14 = a6;
  v15 = a5;
  v17 = [CAMZoomPoint zoomPointsWithFactors:v15 displayZoomFactors:v14 customLensGroup:0];
  BYTE1(v16) = a8;
  LOBYTE(v16) = 0;
  [(CAMZoomControl *)self _configureForControlMode:a3 zoomFactor:v17 zoomPoints:v15 zoomFactors:v14 displayZoomFactors:0 createButtonForMaxZoomFactor:a7 zoomButtonContentType:a4 compactPlatterLayout:v16 animated:?];
}

- (void)_configureForControlMode:(int64_t)a3 zoomFactor:(double)a4 zoomPoints:(id)a5 zoomButtonContentType:(int64_t)a6 animated:(BOOL)a7
{
  v12 = a5;
  v15 = [CAMZoomPoint zoomFactorsFromZoomPoints:v12];
  v13 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:v12];
  BYTE1(v14) = a7;
  LOBYTE(v14) = 0;
  [(CAMZoomControl *)self _configureForControlMode:a3 zoomFactor:v12 zoomPoints:v15 zoomFactors:v13 displayZoomFactors:0 createButtonForMaxZoomFactor:a6 zoomButtonContentType:a4 compactPlatterLayout:v14 animated:?];
}

- (void)_configureForControlMode:(int64_t)a3 zoomFactor:(double)a4 zoomPoints:(id)a5 zoomFactors:(id)a6 displayZoomFactors:(id)a7 createButtonForMaxZoomFactor:(BOOL)a8 zoomButtonContentType:(int64_t)a9 compactPlatterLayout:(BOOL)a10 animated:(BOOL)a11
{
  v12 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  [(CAMZoomControl *)self zoomFactor];
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:?];
  v22 = v21;
  v23 = [(CAMZoomControl *)self _shouldShowButtonPlatter];
  [(CAMZoomControl *)self _setZoomControlMode:a3];
  [(CAMZoomControl *)self _setZoomPoints:v20];

  [(CAMZoomControl *)self _setZoomFactors:v19];
  [(CAMZoomControl *)self _setDisplayZoomFactors:v18];

  [(CAMZoomControl *)self _setCreateButtonForMaxZoomFactor:v12];
  [(CAMZoomControl *)self _updateDisplayZoomFactorsAnimated:a11];
  v24 = [v19 firstObject];
  [v24 doubleValue];
  [(CAMZoomControl *)self setMinAvailableZoomFactor:?];

  v25 = [v19 lastObject];

  [v25 doubleValue];
  [(CAMZoomControl *)self setMaxAvailableZoomFactor:?];

  [(CAMZoomControl *)self _setZoomFactor:0 interactionType:0 shouldNotifyDelegate:[(CAMZoomControl *)self _centerSelectedZoomEnabled]^ 1 | a11 animated:a4];
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:a4];
  v27 = v26;
  [(CAMZoomControl *)self setPlatterLayoutCompact:a10 animated:a11];
  [(CAMZoomControl *)self _updateZoomDialEnablement];
  [(CAMZoomControl *)self _snappedZoomFactor];
  if (v28 > 0.0)
  {
    if (v27 == v22)
    {
      [(CAMZoomControl *)self _setSnappedZoomFactor:a4];
    }

    else
    {
      [(CAMZoomControl *)self _resetSnapping];
    }
  }

  v29 = [(CAMZoomControl *)self _shouldShowButtonPlatter];
  v30 = 0.25;
  if (((a11 | v23 ^ v29) & 1) == 0)
  {
    v30 = 0.0;
  }

  [(CAMZoomControl *)self _updateSubviewsAlphasWithDuration:1 forConfigurationChange:v30];
  v31 = [(CAMZoomControl *)self _zoomButton];
  [v31 setContentType:a9 animated:a11];

  [(CAMZoomControl *)self _updateDisplayedValuesAllowingFlashingSubstate:0 animated:0];

  [(CAMZoomControl *)self setNeedsLayout];
}

- (BOOL)configureForContinuousZoomWithZoomFactor:(double)a3 zoomPoints:(id)a4 createButtonForMaxZoomFactor:(BOOL)a5 compactPlatterLayout:(BOOL)a6 animated:(BOOL)a7
{
  v9 = a5;
  v12 = a4;
  v13 = [CAMZoomPoint zoomFactorsFromZoomPoints:v12];
  v14 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:v12];
  v15 = [v12 count];
  if (v15 < 2)
  {
    v19 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CAMZoomControl configureForContinuousZoomWithZoomFactor:v12 zoomPoints:v19 createButtonForMaxZoomFactor:? compactPlatterLayout:? animated:?];
    }
  }

  else
  {
    v16 = [CAMZoomPoint significantIndexesInZoomPoints:v12];
    if ([v16 count] > 2 || v9)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    BYTE1(v21) = a7;
    LOBYTE(v21) = a6;
    [(CAMZoomControl *)self _configureForControlMode:v18 zoomFactor:v12 zoomPoints:v13 zoomFactors:v14 displayZoomFactors:v9 createButtonForMaxZoomFactor:0 zoomButtonContentType:a3 compactPlatterLayout:v21 animated:?];
  }

  return v15 > 1;
}

- (void)configureForTripleDeviceWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7 switchOverZoomFactor1:(double)a8 displaySwitchOverZoomFactor1:(double)a9 switchOverZoomFactor2:(double)a10 displaySwitchOverZoomFactor2:(double)a11
{
  v30[4] = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v30[0] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:a8];
  v30[1] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
  v30[2] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v30[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v29[0] = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:a9];
  v29[1] = v25;
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:a11];
  v29[2] = v26;
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v29[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

  [(CAMZoomControl *)self _configureForControlMode:0 zoomFactor:v23 zoomFactors:v28 displayZoomFactors:0 zoomButtonContentType:0 animated:a3];
}

- (void)configureForDualDeviceWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7 dualCameraSwitchOverZoomFactor:(double)a8 displayDualCameraSwitchOverZoomFactor:(double)a9
{
  v25[3] = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v25[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:a8];
  v25[1] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v25[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v24[0] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:a9];
  v24[1] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v24[2] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  [(CAMZoomControl *)self _configureForControlMode:0 zoomFactor:v19 zoomFactors:v23 displayZoomFactors:0 zoomButtonContentType:0 animated:a3];
}

- (void)configureForSingleCameraPlusToggleWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7
{
  v19[2] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v19[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v18[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v18[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  [(CAMZoomControl *)self _configureForControlMode:2 zoomFactor:v14 zoomFactors:v17 displayZoomFactors:0 zoomButtonContentType:0 animated:a3];
}

- (void)configureForSingleCameraToggleOnlyWithZoomFactor:(double)a3 minimumZoomFactor:(double)a4 displayMinimumZoomFactor:(double)a5 maximumZoomFactor:(double)a6 displayMaximumZoomFactor:(double)a7
{
  v19[2] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v19[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v18[0] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v18[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  [(CAMZoomControl *)self _configureForControlMode:5 zoomFactor:v14 zoomFactors:v17 displayZoomFactors:0 zoomButtonContentType:0 animated:a3];
}

- (void)configureForToggleOnlyWithZoomFactor:(double)a3 displayZoomFactor:(double)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v11 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];

  [(CAMZoomControl *)self _configureForControlMode:3 zoomFactor:v8 zoomFactors:v10 displayZoomFactors:0 zoomButtonContentType:0 animated:a3];
}

- (void)configureForSelectionOnlyWithDisplayZoomFactors:(id)a3 selectedIndex:(unint64_t)a4 compactPlatterLayout:(BOOL)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = [v10 objectAtIndexedSubscript:a4];
  [v11 doubleValue];
  v13 = v12;

  v15 = [CAMZoomPoint zoomPointsWithFactors:v10 displayZoomFactors:v10 customLensGroup:0];
  BYTE1(v14) = a6;
  LOBYTE(v14) = a5;
  [(CAMZoomControl *)self _configureForControlMode:1 zoomFactor:v15 zoomPoints:v10 zoomFactors:v10 displayZoomFactors:0 createButtonForMaxZoomFactor:0 zoomButtonContentType:v13 compactPlatterLayout:v14 animated:?];
}

- (double)minimumZoomFactor
{
  v2 = [(CAMZoomControl *)self _zoomFactors];
  v3 = [v2 firstObject];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)maximumZoomFactor
{
  v2 = [(CAMZoomControl *)self _zoomFactors];
  v3 = [v2 lastObject];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)_displayMinimumZoomFactor
{
  v2 = [(CAMZoomControl *)self _displayZoomFactors];
  v3 = [v2 firstObject];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)_displayMaximumZoomFactor
{
  v2 = [(CAMZoomControl *)self _displayZoomFactors];
  v3 = [v2 lastObject];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NSArray)_switchOverZoomFactors
{
  v3 = [(CAMZoomControl *)self _zoomFactors];
  v4 = [v3 count];

  if (v4 < 3)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(CAMZoomControl *)self _zoomFactors];
    v6 = [(CAMZoomControl *)self _zoomFactors];
    v7 = [v5 subarrayWithRange:{1, objc_msgSend(v6, "count") - 2}];
  }

  return v7;
}

- (BOOL)_shouldSnapDialToSwitchOverZoomFactors
{
  v3 = [(CAMZoomControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CAMZoomControl *)self delegate];
  v6 = [v5 zoomControlShouldSnapDialToSwitchOverZoomFactors:self];

  return v6;
}

- (void)_updateDisplayZoomFactorsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMZoomControl *)self _zoomPoints];
  v6 = [(CAMZoomControl *)self _zoomDial];
  [v6 setZoomPoints:v5];

  [(CAMZoomControl *)self _updateSignificantValuesForHaptics];
  v7 = [CAMZoomPoint significantIndexesInZoomPoints:v5];
  v8 = -[CAMZoomControl _numberOfZoomPlatterButtonsForZoomFactorCount:](self, "_numberOfZoomPlatterButtonsForZoomFactorCount:", [v7 count]);
  if (v8 >= 1)
  {
    v9 = v8;
    if (v3)
    {
      [(CAMZoomControl *)self layoutIfNeeded];
    }

    v10 = [v5 objectsAtIndexes:v7];
    v11 = [v10 subarrayWithRange:{0, v9}];

    v12 = [(CAMZoomControl *)self _buttonPlatter];
    [v12 setZoomPoints:v11 animated:v3];

    if (v3)
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

- (void)_updateDisplayedValuesAllowingFlashingSubstate:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(CAMZoomControl *)self displayZoomValue];
  v8 = v7;
  v9 = [(CAMZoomControl *)self _zoomDial];
  [v9 setZoomFactor:v8];

  v10 = [(CAMZoomControl *)self _zoomButton];
  [v10 setZoomFactor:v8];

  if ([(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration])
  {
    v11 = [(CAMZoomControl *)self _buttonPlatter];
    [v11 setZoomFactor:v5 allowFlashingSubstate:v4 animated:v8];
  }
}

- (double)displayZoomValue
{
  [(CAMZoomControl *)self zoomFactor];

  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:?];
  return result;
}

- (double)_displayZoomValueForZoomFactor:(double)a3
{
  v5 = [(CAMZoomControl *)self _zoomFactors];
  v6 = [(CAMZoomControl *)self _displayZoomFactors];
  [CAMZoomControlUtilities piecewiseLinearMappingForX:v5 fromXValues:v6 toYValues:a3];
  v8 = v7;

  return v8;
}

- (double)_zoomFactorForDisplayZoomValue:(double)a3
{
  v5 = [(CAMZoomControl *)self _displayZoomFactors];
  v6 = [(CAMZoomControl *)self _zoomFactors];
  [CAMZoomControlUtilities piecewiseLinearMappingForX:v5 fromXValues:v6 toYValues:a3];
  v8 = v7;

  return v8;
}

- (void)_setZoomFactor:(double)a3 interactionType:(int64_t)a4 shouldNotifyDelegate:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  [(CAMZoomControl *)self minimumZoomFactor];
  v12 = v11;
  [(CAMZoomControl *)self minAvailableZoomFactor];
  v14 = fmax(v12, v13);
  [(CAMZoomControl *)self maximumZoomFactor];
  v16 = v15;
  [(CAMZoomControl *)self maxAvailableZoomFactor];
  v18 = fmin(v16, v17);
  if (v18 >= a3)
  {
    v18 = a3;
  }

  if (v14 <= a3)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (self->_zoomFactor != v19)
  {
    self->_zoomFactor = v19;
    [(CAMZoomControl *)self _updateDisplayedValuesAllowingFlashingSubstate:a4 == 1 animated:v6];
    v20 = 0;
    if (!a4 && v7)
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
    if (v7 && self->_delegateFlags.respondsToDidChangeZoomFactor)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 zoomControl:self didChangeZoomFactor:a4 interactionType:v19];
    }
  }
}

- (void)setMinAvailableZoomFactor:(double)a3
{
  [(CAMZoomControl *)self minimumZoomFactor];
  v6 = fmax(a3, v5);
  self->_minAvailableZoomFactor = v6;
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:v6];
  v8 = v7;
  v9 = [(CAMZoomControl *)self _zoomDial];
  [v9 setMinAvailableZoomFactor:v8];

  [(CAMZoomControl *)self minimumZoomFactor];
  if (v6 != v10)
  {
    [(CAMZoomControl *)self zoomFactor];

    [(CAMZoomControl *)self _setZoomFactor:0 interactionType:1 shouldNotifyDelegate:1 animated:?];
  }
}

- (void)setMaxAvailableZoomFactor:(double)a3
{
  [(CAMZoomControl *)self maximumZoomFactor];
  v6 = fmin(a3, v5);
  self->_maxAvailableZoomFactor = v6;
  [(CAMZoomControl *)self _displayZoomValueForZoomFactor:v6];
  v8 = v7;
  v9 = [(CAMZoomControl *)self _zoomDial];
  [v9 setMaxAvailableZoomFactor:v8];

  [(CAMZoomControl *)self maximumZoomFactor];
  if (v6 != v10)
  {
    [(CAMZoomControl *)self zoomFactor];

    [(CAMZoomControl *)self _setZoomFactor:0 interactionType:1 shouldNotifyDelegate:1 animated:?];
  }
}

- (int64_t)zoomButtonContentType
{
  v2 = [(CAMZoomControl *)self _zoomButton];
  v3 = [v2 contentType];

  return v3;
}

- (int64_t)zoomButtonSymbol
{
  v2 = [(CAMZoomControl *)self _zoomButton];
  v3 = [v2 zoomSymbol];

  return v3;
}

- (void)setZoomButtonSymbol:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAMZoomControl *)self _zoomButton];
  [v6 setZoomSymbol:a3 animated:v4];
}

- (void)setZoomButtonAccessoryState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_zoomButtonAccessoryState != a3)
  {
    self->_zoomButtonAccessoryState = a3;
    [(CAMZoomControl *)self _updateButtonAccessoryAnimated:a4];
  }
}

- (void)_updateButtonAccessoryAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMZoomControl *)self zoomButtonAccessoryState];
  v6 = [(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v5 = 0;
  }

  [(CAMZoomControl *)self edgeMargin];
  v9 = v8 < 0.0;
  v10 = [(CAMZoomControl *)self _zoomButton];
  [v10 setAccessoryState:v5 animated:v3];

  v11 = [(CAMZoomControl *)self _buttonPlatter];
  [v11 setButtonAccessoryState:v7 animated:v3];

  v12 = [(CAMZoomControl *)self _zoomButton];
  [v12 setAccessoryPosition:v9 animated:v3];

  v13 = [(CAMZoomControl *)self _buttonPlatter];
  [v13 setButtonAccessoryPosition:v9 animated:v3];
}

- (id)_accessorizedZoomButton
{
  if ([(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration])
  {
    if ([(CAMZoomControl *)self isPlatterExpanded])
    {
      v3 = 0;
    }

    else
    {
      v4 = [(CAMZoomControl *)self _buttonPlatter];
      v3 = [v4 zoomFactorButton];
    }
  }

  else
  {
    v3 = [(CAMZoomControl *)self _zoomButton];
  }

  return v3;
}

- (BOOL)_isTouchWithinZoomButtonAccessory:(id)a3
{
  [a3 locationInView:self];

  return [(CAMZoomControl *)self _isPointWithinZoomButtonAccessory:?];
}

- (BOOL)_isPointWithinZoomButtonAccessory:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CAMZoomControl *)self zoomButtonAccessoryState];
  if (v6)
  {
    v7 = [(CAMZoomControl *)self _accessorizedZoomButton];
    [v7 tappableEdgeInsets];
    [v7 accessoryFrame];
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

    [(CAMZoomControl *)self convertPoint:v7 toView:x, y];
    v20.x = v16;
    v20.y = v17;
    v22.origin.x = v8;
    v22.origin.y = v9;
    v22.size.width = width;
    v22.size.height = height;
    v18 = CGRectContainsPoint(v22, v20);

    LOBYTE(v6) = v18;
  }

  return v6;
}

- (void)setEdgeMargin:(double)a3 animated:(BOOL)a4
{
  if (self->_edgeMargin != a3)
  {
    if (a4)
    {
      [(CAMZoomControl *)self layoutIfNeeded];
      self->_edgeMargin = a3;
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
      self->_edgeMargin = a3;
      [(CAMZoomControl *)self _updateZoomButtonTappableEdgeInsets];
      [(CAMZoomControl *)self _updateButtonAccessoryAnimated:0];

      [(CAMZoomControl *)self setNeedsLayout];
    }
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(CAMZoomControl *)self setNeedsLayout];
  }
}

- (void)setZoomDialRadius:(double)a3
{
  if (self->_zoomDialRadius != a3)
  {
    self->_zoomDialRadius = a3;
    [(CAMZoomControl *)self _updateHapticEpsilons];

    [(CAMZoomControl *)self setNeedsLayout];
  }
}

- (double)zoomDialContentMaskingHeight
{
  v2 = [(CAMZoomControl *)self _zoomDial];
  [v2 contentMaskingHeight];
  v4 = v3;

  return v4;
}

- (void)setZoomDialContentMaskingHeight:(double)a3
{
  v4 = [(CAMZoomControl *)self _zoomDial];
  [v4 setContentMaskingHeight:a3];
}

- (double)zoomDialBorderWidth
{
  v2 = [(CAMZoomControl *)self _zoomDial];
  [v2 dialBorderWidth];
  v4 = v3;

  return v4;
}

- (void)setZoomButtonMaxYWhenContracted:(double)a3
{
  if (self->_zoomButtonMaxYWhenContracted != a3)
  {
    self->_zoomButtonMaxYWhenContracted = a3;
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

  v7 = [(CAMZoomControl *)self _zoomButton];
  [v7 setTappableEdgeInsets:{11.0, v5, 4.0, v4}];
}

- (void)setHideFocalLengthLabels:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMZoomControl *)self _zoomDial];

  if (v5)
  {
    v6 = [(CAMZoomControl *)self _zoomDial];
    [v6 setHideFocalLengthLabels:v3];
  }
}

- (BOOL)hideFocalLengthLabels
{
  v3 = [(CAMZoomControl *)self _zoomDial];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CAMZoomControl *)self _zoomDial];
  v5 = [v4 hideFocalLengthLabels];

  return v5;
}

- (void)_setZoomDialEnabled:(BOOL)a3 animationDuration:(int64_t)a4
{
  if (self->__zoomDialEnabled != a3)
  {
    self->__zoomDialEnabled = a3;
    if (!a3)
    {
      [(CAMZoomControl *)self _setShouldShowZoomDial:0 animationDuration:a4];
    }
  }
}

- (void)_setShouldShowZoomDial:(BOOL)a3 animationDuration:(int64_t)a4
{
  v5 = a3;
  v38 = *MEMORY[0x1E69E9840];
  [(CAMZoomControl *)self _cancelDelayedZoomDialVisibilityChange];
  if (self->__shouldShowZoomDial != v5)
  {
    [(CAMZoomControl *)self _setStartTimeForHideAnimationInProgress:0];
    v7 = 0.0;
    if ((a4 - 1) <= 2)
    {
      v7 = dbl_1A3A68168[a4 - 1];
    }

    v8 = [(CAMZoomControl *)self _zoomDial];
    v9 = v8;
    if (v5)
    {
      [v8 prepareForDisplay];
    }

    if (v7 > 0.0)
    {
      [(CAMZoomControl *)self layoutIfNeeded];
      [v9 layoutIfNeeded];
    }

    self->__shouldShowZoomDial = v5;
    [v9 setExpanded:v5];
    if (v5)
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
    v36 = v5;
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
      v15 = [(CAMZoomControl *)self _zoomDial];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = [v15 subviews];
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v37 count:16];
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
              objc_enumerationMutation(v16);
            }

            [(CAMZoomControl *)self removeAnimationFromView:*(*(&v31 + 1) + 8 * i) forKeys:&unk_1F16C91D0];
          }

          v18 = [v16 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v18);
      }

      [(CAMZoomControl *)self removeAnimationFromView:v15 forKeys:&unk_1F16C91E8];
      v21 = [(CAMZoomControl *)self _zoomButton];
      [(CAMZoomControl *)self removeAnimationFromView:v21 forKeys:&unk_1F16C9200];

      if (!v5)
      {
        v22 = [MEMORY[0x1E695DF00] date];
        [(CAMZoomControl *)self _setStartTimeForHideAnimationInProgress:v22];

        [(CAMZoomControl *)self _setHideAnimationInProgressDuration:v14];
      }

      v23 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke_2;
      v28[3] = &unk_1E76F7960;
      v29 = v15;
      v30 = self;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__CAMZoomControl__setShouldShowZoomDial_animationDuration___block_invoke_3;
      v26[3] = &unk_1E76F8AA0;
      v27 = v5;
      v26[4] = self;
      v24 = v15;
      [v23 animateWithDuration:6 delay:v28 usingSpringWithDamping:v26 initialSpringVelocity:v14 options:0.0 animations:0.758 completion:0.0];
    }

    if (v5)
    {
      [(CAMZoomControl *)self _setHighlightedZoomButton:0];
    }

    else
    {
      [(CAMZoomControl *)self _setEligibleForSwipeDownToDismiss:0];
    }

    if (self->_delegateFlags.respondsToDidChangeShowingZoomDial)
    {
      v25 = [(CAMZoomControl *)self delegate];
      [v25 zoomControlDidChangeShowingZoomDial:self];
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

- (void)_updateSubviewsAlphasWithDuration:(double)a3 forConfigurationChange:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMZoomControl *)self _shouldShowZoomDial];
  v8 = [(CAMZoomControl *)self _shouldShowButtonPlatter];
  v9 = [(CAMZoomControl *)self _zoomButton];
  [v9 alpha];
  v11 = v10;

  if (v8)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  if (v4)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke;
    v21[3] = &unk_1E76F8AC8;
    v21[4] = self;
    v22 = v7;
    v23 = v8;
    *&v21[5] = v12;
    [CAMView animateIfNeededWithDuration:v21 animations:a3];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke_2;
    v18[3] = &unk_1E76F8AC8;
    v18[4] = self;
    v19 = v7;
    v20 = v8;
    *&v18[5] = v12;
    [CAMView animateIfNeededWithDuration:v18 animations:a3];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__CAMZoomControl__updateSubviewsAlphasWithDuration_forConfigurationChange___block_invoke_3;
    v15[3] = &unk_1E76F8AC8;
    if (v7)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 2.0;
    }

    v16 = v8;
    v15[4] = self;
    *&v15[5] = v12;
    v17 = !v7;
    [CAMView animateIfNeededWithDuration:4 usingSpringWithDamping:v15 initialSpringVelocity:0 options:a3 animations:1.0 completion:v13];
  }

  if (a3 == 0.0 || v12 != 0.0)
  {
    if (v12 != v11)
    {
      a3 = 0.0;
    }

    v14 = [(CAMZoomControl *)self _zoomButton];
    [v14 setShouldHideBackground:-[CAMZoomControl _shouldHideZoomButtonBackground](self animationDuration:{"_shouldHideZoomButtonBackground"), a3}];
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

- (void)setShouldShowZoomDial:(BOOL)a3 animationDuration:(int64_t)a4
{
  v5 = a3;
  if ([(CAMZoomControl *)self _isZoomDialEnabled])
  {

    [(CAMZoomControl *)self _setShouldShowZoomDial:v5 animationDuration:a4 afterDelay:0.0];
  }
}

- (void)_setShouldShowZoomDial:(BOOL)a3 animationDuration:(int64_t)a4 afterDelay:(double)a5
{
  v7 = a3;
  v16[2] = *MEMORY[0x1E69E9840];
  [(CAMZoomControl *)self _cancelDelayedZoomDialVisibilityChange];
  if (a5 <= 0.0)
  {

    [(CAMZoomControl *)self _setShouldShowZoomDial:v7 animationDuration:a4];
  }

  else
  {
    v15[0] = CAMZoomControlShouldShowZoomDialKey;
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v15[1] = CAMZoomControlAnimationDurationKey;
    v16[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v12 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleZoomDialVisibilityTimerFiredWithUserInfo_ selector:v11 userInfo:0 repeats:a5];
    zoomDialVisibilityTimer = self->__zoomDialVisibilityTimer;
    self->__zoomDialVisibilityTimer = v12;

    v14 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v14 addTimer:self->__zoomDialVisibilityTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_handleZoomDialVisibilityTimerFiredWithUserInfo:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKeyedSubscript:CAMZoomControlShouldShowZoomDialKey];
  v5 = [v4 BOOLValue];

  v6 = [v9 objectForKeyedSubscript:CAMZoomControlAnimationDurationKey];
  v7 = [v6 integerValue];

  [(CAMZoomControl *)self _setShouldShowZoomDial:v5 animationDuration:v7];
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
  v11 = [(CAMZoomControl *)self _zoomButton];
  v12 = [(CAMZoomControl *)self _zoomDial];
  v13 = [(CAMZoomControl *)self _dialClippingView];
  [v11 intrinsicContentSize];
  v31 = v14;
  v16 = v15;
  [(CAMZoomControl *)self zoomButtonMaxYWhenContracted];
  [(CAMZoomControl *)self zoomDialRadius];
  v18 = v17;
  [v13 setFrame:{v4, v6 + -40.0, v8, v10 + 40.0}];
  [v12 setCenter:{v8 * 0.5, v18 + 40.0}];
  [v12 setBounds:{0.0, 0.0, v18 + v18, v18 + v18}];
  [v12 zoomFactor];
  v20 = v19;
  [v12 textCenterForZoomFactor:1 assumeExpanded:?];
  v29 = v22;
  v30 = v21;
  UIRoundToViewScale();
  [v12 setContractionDistance:?];
  [(CAMZoomControl *)self edgeMargin];
  [v12 textCenterForZoomFactor:0 assumeExpanded:v20];
  [v12 convertPoint:self toView:?];
  UIRoundToViewScale();
  v24 = v23;
  UIRoundToViewScale();
  [v11 frameForAlignmentRect:{v24 - v31 * 0.5, v25 - v16 * 0.5, v31, v16}];
  UIRectIntegralWithScale();
  [v11 setFrame:?];
  v26 = [(CAMZoomControl *)self _buttonPlatter];
  v27 = v26;
  if (v26)
  {
    [v26 intrinsicContentSize];
    [v12 convertPoint:self toView:{v30, v29}];
    v28 = +[CAMCaptureCapabilities capabilities];
    [v28 isQuadraWideSupported];

    UIRectCenteredAboutPointScale();
    [v27 setFrame:?];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    v10 = [(CAMZoomControl *)self _zoomDial];
    v8 = [(CAMZoomControl *)self _zoomButton];
    [v10 setOrientation:a3 animated:v5];
    [v8 setOrientation:a3 animated:v5];
    v9 = [(CAMZoomControl *)self _buttonPlatter];
    [v9 setOrientation:a3 animated:v5];
  }
}

- (double)_distanceFromDialClippingViewToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CAMZoomControl *)self _dialClippingView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CAMZoomControl *)self convertPoint:v6 toView:x, y];
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

- (double)_dampingFactorForDistanceFromDialForPoint:(CGPoint)a3
{
  [(CAMZoomControl *)self _distanceFromDialClippingViewToPoint:a3.x, a3.y];
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

- (double)_dampingFactorForPerpendicularityFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(CAMZoomControl *)self _zoomDial];
  [v9 dialCenter];
  v11 = v10;
  v13 = v12;
  [(CAMZoomControl *)self convertPoint:v9 toView:v7, v6];
  v15 = v14;
  v17 = v16;
  [(CAMZoomControl *)self convertPoint:v9 toView:x, y];
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

- (double)_dampingFactorForMovementFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  [(CAMZoomControl *)self _dampingFactorForDistanceFromDialForPoint:a4.x, a4.y];
  v10 = v9;
  [(CAMZoomControl *)self _dampingFactorForPerpendicularityFromPoint:v7 toPoint:v6, x, y];
  return v10 * v11;
}

- (double)_accelerationForMovementFromPointFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 elapsedTime:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = [(CAMZoomControl *)self layoutStyle];
  result = 1.0;
  if (v11 != 1)
  {
    v13 = 0.00833333333;
    if (a5 >= 0.00833333333)
    {
      v13 = a5;
    }

    v14 = (x - v9) * (0.0166666667 / v13);
    [(CAMZoomControl *)self _normalizeValue:fabs(v14) betweenMinimumValue:12.0 maximumValue:30.0];
    v16 = v15 * v15 + v15 * v15;
    [(CAMZoomControl *)self _additionalAccelerationForMovementFromPoint:v9 toPoint:v8 deltaX:x, y, v14];
    return v17 + v16 + 1.0;
  }

  return result;
}

- (double)_additionalAccelerationForMovementFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 deltaX:(double)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10 = [(CAMZoomControl *)self _dialClippingView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CAMZoomControl *)self convertPoint:v10 toView:v8, v7];
  v20 = v19;
  [(CAMZoomControl *)self convertPoint:v10 toView:x, y];
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
  [(CAMZoomControl *)self _normalizeValue:fabs(a5) betweenMinimumValue:2.0 maximumValue:4.0];
  v28 = v27 * (v26 * 5.0);

  return v28;
}

- (double)_normalizeValue:(double)a3 betweenMinimumValue:(double)a4 maximumValue:(double)a5
{
  result = (a3 - a4) / (a5 - a4);
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

- (void)removeAnimationFromView:(id)a3 forKeys:(id)a4
{
  v5 = a4;
  v6 = [a3 layer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CAMZoomControl_removeAnimationFromView_forKeys___block_invoke;
  v8[3] = &unk_1E76F8AF0;
  v9 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v8];
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
  v3 = [(CAMZoomControl *)self _startTimeForHideAnimationInProgress];
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSinceNow];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22.receiver = self;
  v22.super_class = CAMZoomControl;
  v7 = [(CAMZoomControl *)&v22 hitTest:a4 withEvent:?];
  v8 = [(CAMZoomControl *)self _zoomButton];
  [(CAMZoomControl *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;
  v13 = [(CAMZoomControl *)self _isPointWithinZoomButtonAccessory:x, y];
  if (v7 == self || v13)
  {
    v15 = v13;
    [v8 bounds];
    v24.x = v10;
    v24.y = v12;
    v16 = CGRectContainsPoint(v25, v24);
    v17 = [(CAMZoomControl *)self _isPointWithinButtonPlatter:x, y];
    v18 = [(CAMZoomControl *)self _shouldShowZoomDial];
    v19 = [(CAMZoomControl *)self _shouldInterceptTouchesForHidingZoomDial];
    if (v16 || v17 || v15 || v18 || v19)
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      v20 = self;
    }

    else
    {
      v20 = 0;
    }

    v7 = v20;
  }

LABEL_12:

  return v7;
}

- (BOOL)_isWithinZoomButtonBoundsWithTouch:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomControl *)self _zoomButton];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [v5 bounds];
  v11.x = v7;
  v11.y = v9;
  LOBYTE(v4) = CGRectContainsPoint(v12, v11);

  return v4;
}

- (void)_setHighlightedZoomButton:(id)a3
{
  v4 = a3;
  highlightedZoomButton = self->__highlightedZoomButton;
  if (highlightedZoomButton != v4)
  {
    [(CAMZoomButton *)highlightedZoomButton setHighlighted:0];
  }

  v6 = self->__highlightedZoomButton;
  self->__highlightedZoomButton = v4;
  v7 = v4;

  [(CAMZoomButton *)self->__highlightedZoomButton setHighlighted:1];
}

- (void)_resetSnapping
{
  [(CAMZoomControl *)self _setSnappedZoomFactor:0.0];

  [(CAMZoomControl *)self _setUnsnappingProgress:0.0];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = CAMZoomControl;
  v8 = [(CAMZoomControl *)&v33 beginTrackingWithTouch:v6 withEvent:v7];
  if (v8)
  {
    v9 = [(CAMZoomControl *)self _zoomDial];
    [v9 prepareForDisplay];

    v10 = [(CAMZoomControl *)self _zoomButton];
    [v6 locationInView:self];
    v12 = v11;
    v14 = v13;
    [v7 timestamp];
    v16 = v15;
    v17 = [(CAMZoomControl *)self _isZoomDialEnabled];
    v18 = [(CAMZoomControl *)self _shouldShowZoomDial];
    [(CAMZoomControl *)self _setStartTouchLocation:v12, v14];
    [(CAMZoomControl *)self _setPreviousTouchLocation:v12, v14];
    [(CAMZoomControl *)self _setPreviousTouchTime:v16];
    [(CAMZoomControl *)self _resetSnapping];
    [(CAMZoomControl *)self _cancelDelayedZoomDialVisibilityChange];
    v19 = [(CAMZoomControl *)self _isWithinZoomButtonBoundsWithTouch:v6];
    v20 = [(CAMZoomControl *)self _isTouchWithinButtonPlatter:v6];
    v21 = [(CAMZoomControl *)self _isTouchWithinZoomButtonAccessory:v6];
    if (v20)
    {
      [(CAMZoomControl *)self _buttonPlatter];
      v32 = v18;
      v22 = v19;
      v23 = v17;
      v25 = v24 = v10;
      v26 = [v25 nearestZoomButtonForTouch:v6];
      [(CAMZoomControl *)self _setHighlightedZoomButton:v26];

      v10 = v24;
      v17 = v23;
      v19 = v22;
      v18 = v32;
    }

    else if (v19)
    {
      [(CAMZoomControl *)self _setHighlightedZoomButton:v10];
    }

    else if (v21)
    {
      v27 = [(CAMZoomControl *)self _accessorizedZoomButton];
      [(CAMZoomControl *)self _setHighlightedZoomButton:v27];
    }

    if (v17)
    {
      v28 = [(CAMZoomControl *)self _shouldInterceptTouchesForHidingZoomDial]&& !v20;
      if ((v28 & 1) != 0 || v18 != 1)
      {
        v29 = 0.23;
        if (v28)
        {
          v29 = 0.0;
        }

        [(CAMZoomControl *)self _setShouldShowZoomDial:1 animationDuration:1 afterDelay:v29];
      }
    }

    [(CAMZoomControl *)self _setEligibleForSwipeDownToDismiss:v18 & v19];
    [(CAMZoomControl *)self _setEligibleForZoomFactorLabelTaps:v18];
    v30 = [(CAMZoomControl *)self _feedbackController];
    [v30 prepareDiscreteFeedback:3];
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomControl *)self isTracking];
  v6 = [v4 name];
  v7 = [v6 isEqualToString:@"_UISheetInteractionBackgroundDismissRecognizer"];

  if (v5 && (v7 & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CAMZoomControl;
    v8 = [(CAMZoomControl *)&v10 gestureRecognizerShouldBegin:v4];
  }

  return v8;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v83.receiver = self;
  v83.super_class = CAMZoomControl;
  if (![(CAMZoomControl *)&v83 continueTrackingWithTouch:v6 withEvent:v7])
  {
    goto LABEL_75;
  }

  [v6 locationInView:self];
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
  [v7 timestamp];
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
        v28 = [(CAMZoomControl *)self _zoomDial];
        [(CAMZoomControl *)self convertPoint:v28 toView:v17, v19];
        v29 = v11;
        v31 = v30;
        v33 = v32;
        v78 = v29;
        [(CAMZoomControl *)self convertPoint:v28 toView:v9, v29];
        v35 = v34;
        v37 = v36;
        [v28 offsetAngleForPoint:{v31, v33}];
        v39 = v38;
        [v28 offsetAngleForPoint:{v35, v37}];
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
        [v28 zoomFactor];
        [v28 offsetAngleForZoomFactor:?];
        v48 = v47;
        v49 = v46 + v47;
        if ([(CAMZoomControl *)self _shouldSnapDialToSwitchOverZoomFactors])
        {
          [v28 dialCenter];
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
            [v28 offsetAngleForZoomFactor:?];
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
                [v28 offsetAngleForZoomFactor:?];
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
          [v28 zoomFactorForOffsetAngle:v49];
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
          v72 = [(CAMZoomControl *)self _highlightedZoomButton];
          if (v72)
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

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CAMZoomControl *)self _zoomButton];
  v9 = [(CAMZoomControl *)self _accessorizedZoomButton];
  v10 = [(CAMZoomControl *)self _highlightedZoomButton];
  [(CAMZoomControl *)self _setHighlightedZoomButton:0];
  if (v6)
  {
    if (v10 == v8 || v9 && v10 == v9)
    {
      [v6 locationInView:v8];
      v12 = v11;
      v14 = v13;
      [v8 bounds];
      v37.x = v12;
      v37.y = v14;
      v15 = CGRectContainsPoint(v38, v37);
      v16 = [(CAMZoomControl *)self _isTouchWithinZoomButtonAccessory:v6];
      if (!v15 || v16)
      {
        if (v16)
        {
          [(CAMZoomControl *)self _handleAccessoryTappedForButton:v10];
          goto LABEL_33;
        }
      }

      else if (![(CAMZoomControl *)self _shouldShowZoomDial])
      {
LABEL_8:
        [(CAMZoomControl *)self _handleButtonTapped:v10 forAccessoryTap:0];
        goto LABEL_33;
      }
    }

    else if (v10)
    {
      if ([(CAMZoomControl *)self _isTouchWithinButtonPlatter:v6])
      {
        v17 = [(CAMZoomControl *)self _buttonPlatter];
        v18 = [v17 nearestZoomButtonForTouch:v6];

        if (v10 == v18)
        {
          goto LABEL_8;
        }
      }
    }

    else if ([(CAMZoomControl *)self _isEligibleForZoomFactorLabelTaps])
    {
      v19 = [(CAMZoomControl *)self _zoomDial];
      [v19 activeZoomFactorLabels];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v34 = 0u;
      v20 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v20)
      {
        v27 = v19;
        v28 = v9;
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
            v24 = [v23 superview];
            [v6 locationInView:v24];

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
        v19 = v27;
        v9 = v28;
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
  [(CAMZoomControl *)&v30 endTrackingWithTouch:v6 withEvent:v7];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  [(CAMZoomControl *)self _cleanupForCancelTracking];
  v5.receiver = self;
  v5.super_class = CAMZoomControl;
  [(CAMZoomControl *)&v5 cancelTrackingWithEvent:v4];
}

- (void)_cleanupForCancelTracking
{
  v3 = [(CAMZoomControl *)self _highlightedZoomButton];
  if (v3)
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
  v3 = [(CAMZoomControl *)self _buttonPlatter];

  if (!v3 || [(CAMZoomControl *)self _zoomControlMode]> 1)
  {
    return 0;
  }

  v4 = [(CAMZoomControl *)self _displayZoomFactors];
  v5 = [v4 count];
  v6 = [(CAMZoomControl *)self _buttonPlatter];
  v7 = v5 >= [v6 buttonCount];

  return v7;
}

- (unint64_t)_numberOfZoomPlatterButtonsForZoomFactorCount:(unint64_t)a3
{
  v5 = [(CAMZoomControl *)self _zoomControlMode];
  if (!v5)
  {
    return a3 - ([(CAMZoomControl *)self _createButtonForMaxZoomFactor]^ 1);
  }

  if (v5 == 1)
  {
    return a3;
  }

  return 0;
}

- (BOOL)_shouldShowButtonPlatter
{
  v3 = [(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration];
  if (v3)
  {
    LOBYTE(v3) = ![(CAMZoomControl *)self _shouldShowZoomDial];
  }

  return v3;
}

- (BOOL)_isTouchWithinButtonPlatter:(id)a3
{
  [a3 locationInView:self];

  return [(CAMZoomControl *)self _isPointWithinButtonPlatter:?];
}

- (BOOL)_isPointWithinButtonPlatter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CAMZoomControl *)self _shouldShowButtonPlatter])
  {
    return 0;
  }

  v6 = [(CAMZoomControl *)self _buttonPlatter];
  [(CAMZoomControl *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;

  v11 = [(CAMZoomControl *)self _buttonPlatter];
  v12 = [v11 nearestZoomButtonForPoint:{v8, v10}];

  v13 = v12 != 0;
  return v13;
}

- (void)setPlatterLayoutCompact:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_platterLayoutCompact != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_platterLayoutCompact = a3;
    v8 = [(CAMZoomControl *)self _centerSelectedZoomEnabled];
    v9 = [(CAMZoomControl *)self _buttonPlatter];
    [v9 setCenterSelectedZoomEnabled:v8 animated:v5];

    [(CAMZoomControl *)self _setButtonPlatterCollapsed:v6 animated:v5];

    [(CAMZoomControl *)self _updateZoomDialEnablement];
  }
}

- (BOOL)hasPlatterConflictLeft
{
  v2 = [(CAMZoomControl *)self _buttonPlatter];
  v3 = [v2 hasLayoutConflictLeft];

  return v3;
}

- (void)setHasPlatterConflictLeft:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CAMZoomControl *)self _buttonPlatter];
  [v6 setHasLayoutConflictLeft:v5 animated:v4];
}

- (BOOL)hasPlatterConflictRight
{
  v2 = [(CAMZoomControl *)self _buttonPlatter];
  v3 = [v2 hasLayoutConflictRight];

  return v3;
}

- (void)setHasPlatterConflictRight:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CAMZoomControl *)self _buttonPlatter];
  [v6 setHasLayoutConflictRight:v5 animated:v4];
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
  v3 = [(CAMZoomControl *)self _zoomControlMode];
  if (v3 > 5)
  {
    [(CAMZoomControl *)self _setZoomDialEnabled:1];
  }

  else
  {
    if (((1 << v3) & 0x3A) != 0)
    {

      [(CAMZoomControl *)self _setZoomDialEnabled:0];
      return;
    }

    v4 = [(CAMZoomControl *)self isPlatterLayoutCompact];
    v5 = v4;
    [(CAMZoomControl *)self _setZoomDialEnabled:!v4];
    if (v5)
    {
      return;
    }
  }

  v6 = [(CAMZoomControl *)self _displayZoomFactors];
  v7 = [v6 firstObject];
  [v7 doubleValue];
  v9 = v8;

  v10 = [(CAMZoomControl *)self _displayZoomFactors];
  v11 = [v10 lastObject];
  [v11 doubleValue];
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

  v17 = [(CAMZoomControl *)self _zoomDial];
  [v17 setAngleDeltaForZoomRange:v16];
}

- (void)_setButtonPlatterCollapsed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    [(CAMZoomControl *)self layoutIfNeeded];
    [(CAMZoomControl *)self setNeedsLayout];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__CAMZoomControl__setButtonPlatterCollapsed_animated___block_invoke;
    v7[3] = &unk_1E76F7850;
    v7[4] = self;
    v8 = v4;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:1.0];
  }

  else
  {
    [(CAMZoomControl *)self setNeedsLayout];
    v6 = [(CAMZoomControl *)self _buttonPlatter];
    [v6 setCollapsed:v4];
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
  v2 = self;
  v3 = [(CAMZoomControl *)self _buttonPlatter];
  LODWORD(v2) = [(CAMZoomControl *)v2 _isButtonPlatterSupportedForConfiguration];
  v4 = v2 & ([v3 isCollapsed] ^ 1);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPreferredCustomLens:(int64_t)a3
{
  if (self->_preferredCustomLens != a3)
  {
    self->_preferredCustomLens = a3;
    v5 = [(CAMZoomControl *)self _buttonPlatter];
    [v5 setPreferredCustomLens:a3];
  }
}

- (void)_handleButtonTapped:(id)a3 forAccessoryTap:(BOOL)a4
{
  v16 = a3;
  if ([(CAMZoomControl *)self isPlatterLayoutCompact])
  {
    v6 = [(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CAMZoomControl *)self _buttonPlatter];
  v8 = [v7 isCollapsed];

  v9 = [(CAMZoomControl *)self _buttonPlatter];
  v10 = ([v9 buttonCount] == 2) & v6 & v8;

  if (v6 && (v8 & 1) != 0 && !a4 && (v10 & 1) == 0)
  {
    [(CAMZoomControl *)self _setButtonPlatterCollapsed:0 animated:1];
    v11 = [(CAMZoomControl *)self delegate];
    [v11 zoomControlDidChangePlatterExpanded:self];
LABEL_9:

    goto LABEL_10;
  }

  v13 = [(CAMZoomControl *)self _zoomControlMode];
  if (v13 > 2)
  {
    if ((v13 - 3) >= 2)
    {
      if (v13 == 5)
      {
        [(CAMZoomControl *)self _handleButtonTappedForSingleCameraToggleOnly];
      }
    }

    else if (self->_delegateFlags.respondsToToggleBetweenZoomFactors)
    {
      v11 = [(CAMZoomControl *)self delegate];
      [v11 toggleBetweenZoomFactorsForZoomControl:self];
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    if (v13 == 1)
    {
      [(CAMZoomControl *)self _handleButtonTappedForSelection:v16];
    }

    else if (v13 == 2)
    {
      [(CAMZoomControl *)self _handleButtonTappedForSingleCameraZoomPlusToggle];
    }
  }

  else
  {
    v14 = [(CAMZoomControl *)self _buttonPlatter];
    v15 = (v14 == 0) | v10;

    if (v15)
    {
      [(CAMZoomControl *)self _handleButtonTappedForDualCameraMode];
    }

    else
    {
      [(CAMZoomControl *)self _handleButtonTappedForContinuousModeWithPlatter:v16];
    }
  }

LABEL_10:
  if (((!v6 | v8) & 1) == 0)
  {
    [(CAMZoomControl *)self _setButtonPlatterCollapsed:1 animated:1];
    v12 = [(CAMZoomControl *)self delegate];
    [v12 zoomControlDidChangePlatterExpanded:self];
  }
}

- (void)_handleButtonTappedForDualCameraMode
{
  v3 = [(CAMZoomControl *)self _zoomFactors];
  v4 = [v3 objectAtIndexedSubscript:1];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(CAMZoomControl *)self _displayZoomFactors];
  v8 = [v7 objectAtIndexedSubscript:1];
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

- (void)_handleButtonTappedForContinuousModeWithPlatter:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomControl *)self _zoomButton];

  if (v5 == v4)
  {
    v13 = 1.5;
  }

  else
  {
    v6 = [(CAMZoomControl *)self _buttonPlatter];
    v7 = [v6 baseZoomPointForButton:v4];
    [(CAMZoomControl *)self zoomFactor];
    v9 = v8;
    if (v7)
    {
      v10 = [v6 zoomFactorButton];

      if (v10 == v4)
      {
        v14 = [v7 allZoomPoints];
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
        [v14 enumerateObjectsUsingBlock:v20];
        v12 = v22[3];
        if (vabdd_f64(v12, v9) < 0.001)
        {
          v15 = [v14 count];
          v16 = [v14 objectAtIndexedSubscript:(v15 + v26[3] - 1) % v15];
          [v16 zoomFactor];
          v12 = v17;
        }

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v25, 8);
      }

      else
      {
        [v6 defaultZoomFactorForButton:v4];
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

- (void)_handleButtonTappedForSelection:(id)a3
{
  v4 = a3;
  v5 = [(CAMZoomControl *)self _buttonPlatter];
  v15 = [v5 baseZoomPointForButton:v4];

  [v15 displayZoomFactor];
  if (v15)
  {
    v7 = v6;
    [(CAMZoomControl *)self displayZoomValue];
    if (v7 != v8)
    {
      v9 = [(CAMZoomControl *)self _buttonPlatter];
      v10 = [v9 zoomFactors];
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      v12 = [v10 indexOfObject:v11];

      v13 = [(CAMZoomControl *)self delegate];
      LOBYTE(v10) = objc_opt_respondsToSelector();

      if (v10)
      {
        v14 = [(CAMZoomControl *)self delegate];
        [v14 zoomControl:self didChangeSelectedButtonIndex:v12 displayZoomFactor:v7];
      }
    }
  }
}

- (void)_handleAccessoryTappedForButton:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = [(CAMZoomControl *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([(CAMZoomControl *)self _isButtonPlatterSupportedForConfiguration])
    {
      v6 = [(CAMZoomControl *)self _buttonPlatter];
      v7 = [v6 zoomFactors];

      v8 = [(CAMZoomControl *)self _buttonPlatter];
      v9 = [v8 buttons];
    }

    else
    {
      v10 = MEMORY[0x1E696AD98];
      v11 = [(CAMZoomControl *)self _zoomButton];
      [v11 zoomFactor];
      v12 = [v10 numberWithDouble:?];
      v25[0] = v12;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

      v8 = [(CAMZoomControl *)self _zoomButton];
      v24 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

    v13 = v9;

    v14 = [(CAMZoomControl *)self delegate];
    v15 = [v14 zoomControl:self accessoryButtonTapIndexInDisplayZoomFactors:v7];

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

  v17 = [(CAMZoomControl *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(CAMZoomControl *)self delegate];
    [v19 zoomControlDidTapZoomButtonAccessory:self];
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
    v4 = [(CAMZoomControl *)self delegate];
    v5 = [v4 canToggleBetweenZoomFactorsForZoomControl:self];

    if (v5)
    {
      if (self->_delegateFlags.respondsToToggleBetweenZoomFactors)
      {
        v6 = [(CAMZoomControl *)self delegate];
        [v6 toggleBetweenZoomFactorsForZoomControl:self];
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
  v5 = [(CAMZoomControl *)self _displayZoomFactors];
  v6 = [v5 count];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__CAMZoomControl__updateSignificantValuesForHaptics__block_invoke;
  v13 = &unk_1E76F8B40;
  v14 = v5;
  v15 = v3;
  v16 = v4;
  v17 = v6 - 1;
  v7 = v4;
  v8 = v3;
  v9 = v5;
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

- (void)_setSignificantHapticDisplayValues:(id)a3
{
  v5 = a3;
  significantHapticDisplayValues = self->__significantHapticDisplayValues;
  if (significantHapticDisplayValues != v5)
  {
    v7 = v5;
    significantHapticDisplayValues = [significantHapticDisplayValues isEqualToArray:v5];
    v5 = v7;
    if ((significantHapticDisplayValues & 1) == 0)
    {
      objc_storeStrong(&self->__significantHapticDisplayValues, a3);
      significantHapticDisplayValues = [(CAMZoomControl *)self _updateHapticEpsilons];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](significantHapticDisplayValues, v5);
}

- (void)_updateHapticEpsilons
{
  [(CAMZoomControl *)self zoomDialRadius];
  if (v3 > 0.0)
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(CAMZoomControl *)self _zoomDial];
    v7 = [(CAMZoomControl *)self _zoomDial];
    [v7 angleDeltaForZoomRange];
    v9 = v8;

    if (v4 * v9 <= 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 2.0 / (v4 * v9);
    }

    v11 = [(CAMZoomControl *)self _significantHapticDisplayValues];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __39__CAMZoomControl__updateHapticEpsilons__block_invoke;
    v18 = &unk_1E76F8B40;
    v19 = v6;
    v20 = v11;
    v22 = v10;
    v21 = v5;
    v12 = v5;
    v13 = v11;
    v14 = v6;
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

- (int64_t)_hapticZoneForDisplayValue:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v5 = [(CAMZoomControl *)self _shouldSnapDialToSwitchOverZoomFactors];
  v6 = [(CAMZoomControl *)self _significantHapticDisplayValues];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CAMZoomControl__hapticZoneForDisplayValue___block_invoke;
  v9[3] = &unk_1E76F8B68;
  v10 = v5;
  *&v9[6] = a3;
  v9[4] = self;
  v9[5] = &v11;
  [v6 enumerateObjectsUsingBlock:v9];

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

- (void)_updateHaptics:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMZoomControl *)self _feedbackController];

  if (v5)
  {
    [(CAMZoomControl *)self displayZoomValue];
    v6 = [(CAMZoomControl *)self _hapticZoneForDisplayValue:?];
    v7 = [(CAMZoomControl *)self _lastHapticZone];
    v8 = [(CAMZoomControl *)self _zoomDial];
    v9 = [v8 isExpanded];

    if (v9)
    {
      if (v3)
      {
        v10 = v6 - v7;
        if (v6 != v7)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_9;
          }

          if (v10 < 0)
          {
            v10 = v7 - v6;
          }

          if (v10 >= 2)
          {
LABEL_9:
            v11 = [(CAMZoomControl *)self _feedbackController];
            [v11 performDiscreteFeedback:3];

            v12 = [(CAMZoomControl *)self _feedbackController];
            [v12 prepareDiscreteFeedback:3];
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