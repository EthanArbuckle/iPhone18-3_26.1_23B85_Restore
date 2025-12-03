@interface CAMDynamicShutterControl
+ (CAMShutterButtonSpec)shutterButtonSpecForLayoutStyle:(SEL)style;
+ (id)_counterNumberFormatter;
- ($01BB1521EC52D44A8E7628F5261DCEC8)_dragHandleColor;
- ($01BB1521EC52D44A8E7628F5261DCEC8)_innerShapeColor;
- ($76EADD4ED24426C67044446678BAA581)settings;
- ($7A910D035BC0C83CFFF052A09CDD67E6)_pauseResumeButtonShapeForView:(SEL)view;
- ($E50CC26D34D0158E20D4445E4757B7F2)_firstTouch;
- ($E50CC26D34D0158E20D4445E4757B7F2)_mostRecentTouch;
- ($E50CC26D34D0158E20D4445E4757B7F2)_touchForPoint:(SEL)point;
- (BOOL)_canDragCounter;
- (BOOL)_isDraggingEnabled;
- (BOOL)_isHandleWithinLockRing;
- (BOOL)_isPastCounterDragThreshold;
- (BOOL)_isPastStartStopDragThreshold;
- (BOOL)_isPointWithinLockRingTouchArea:(CGPoint)area;
- (BOOL)_isPointWithinPauseResumeRingTouchArea:(CGPoint)area;
- (BOOL)_isPointWithinShutterButtonTouchArea:(CGPoint)area;
- (BOOL)_isValidChangeFromState:(int64_t)state toState:(int64_t)toState;
- (BOOL)_shouldReceiveTouch:(id *)touch;
- (BOOL)_shouldShortPressOnTouchDown;
- (BOOL)_shouldShortPressOnTouchUp;
- (BOOL)_shouldStartStopOnTouchDown;
- (BOOL)externalButtonPressedWithBehavior:(int64_t)behavior;
- (BOOL)externalButtonReleased;
- (BOOL)externalLockButtonPressed;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMDynamicShutterControl)init;
- (CAMDynamicShutterControl)initWithExternalRendering:(BOOL)rendering;
- (CAMDynamicShutterControl)initWithMetalDevice:(id)device commandQueue:(id)queue;
- (CAMDynamicShutterControl)initWithMetalDevice:(id)device commandQueue:(id)queue layoutStyle:(int64_t)style liquidRenderingMethod:(int64_t)method;
- (CAMDynamicShutterControlDelegate)delegate;
- (CAMShutterButtonSpec)_lockButtonActiveSpec;
- (CAMShutterButtonSpec)_lockButtonInactiveSpec;
- (CAMShutterButtonSpec)_pauseResumeButtonSpec;
- (CAMShutterButtonSpec)_shutterButtonSpec;
- (CGPoint)_lockButtonCenter;
- (CGPoint)_pauseResumeButtonCenter;
- (CGPoint)_shutterButtonCenter;
- (CGRect)_lockButtonFrame;
- (CGRect)_pauseResumeButtonFrame;
- (CGRect)_shutterButtonFrame;
- (CGRect)centerButtonFrame;
- (CGRect)frameForAlignmentRect:(CGRect)rect availableWidth:(double)width;
- (CGSize)intrinsicContentSize;
- (double)_absoluteShutterToBottomDistance;
- (double)_centerOuterViewDiameter;
- (double)_dragHandleXPosition;
- (double)_liquidShutterAlpha;
- (double)_lockButtonBackgroundDiameter;
- (double)_pauseResumeButtonBackgroundDiameter;
- (double)_whiteHandleAlpha;
- (id)_outerImage;
- (id)_sdfPortalForElement:(id)element;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_consumeAndUpdateTouchSequencePhase;
- (int64_t)_startGestureForShutterState:(int64_t)state;
- (int64_t)incrementCounter;
- (void)_cancelTouchSequenceForReset:(BOOL)reset;
- (void)_createCenterOuterViewIfNeeded;
- (void)_createCounterLabelIfNeeded;
- (void)_createLeftLineViewIfNeeded;
- (void)_createLockButtonOuterViewIfNeeded;
- (void)_createPauseImageViewIfNeeded;
- (void)_createPauseResumeButtonOuterViewIfNeeded;
- (void)_createResumeCircleViewIfNeeded;
- (void)_createRightLineViewIfNeeded;
- (void)_createShutterHighlightLayersIfNeeded;
- (void)_createVideoLockImageViewIfNeeded;
- (void)_getLiquidShutterCenterShape:(id *)shape handleShape:(id *)handleShape forView:(id)view;
- (void)_handlePress:(id)press;
- (void)_handleTapToStartStop;
- (void)_resetShutterState;
- (void)_setCounterValue:(int64_t)value;
- (void)_setDragHandleState:(int64_t)state animated:(BOOL)animated;
- (void)_setExternalShutterPressed:(BOOL)pressed;
- (void)_setFirstTouch:(id *)touch;
- (void)_setInnerShapeState:(int64_t)state animated:(BOOL)animated;
- (void)_setMostRecentTouch:(id *)touch;
- (void)_setShutterState:(int64_t)state;
- (void)_suppressImplicitAnimationsForLayer:(id)layer;
- (void)_touchSequenceBegan:(id *)began;
- (void)_touchSequenceCancelledForReset:(BOOL)reset;
- (void)_touchSequenceChanged:(id *)changed;
- (void)_touchSequenceEnded:(id *)ended forReset:(BOOL)reset;
- (void)_updateCenterButton;
- (void)_updateCenterLegibilityView;
- (void)_updateCounterAlpha;
- (void)_updateCounterLabelAlphaTarget;
- (void)_updateCounterLabelText;
- (void)_updateDragHandleAlphaTarget;
- (void)_updateDragHandleColorIsWhiteTarget;
- (void)_updateDragHandleWidthTarget;
- (void)_updateDrawLockUITarget;
- (void)_updateExpandLockRingTarget;
- (void)_updateForTargetTimestamp:(double)timestamp;
- (void)_updateInnerShapeAlphaTarget;
- (void)_updateInnerShapeColorIsRedTarget;
- (void)_updateInnerShapePowerTarget;
- (void)_updateInnerShapeWidthTarget;
- (void)_updateLeftLine;
- (void)_updateLiquidShutter;
- (void)_updateLiquidShutterAlpha;
- (void)_updateLockGlyphTransformAndAlpha;
- (void)_updateLockUI;
- (void)_updateOuterAndInnerLayersAnimated:(BOOL)animated;
- (void)_updatePauseResumeDrawTarget;
- (void)_updatePauseResumeUI;
- (void)_updatePausedDuringVideoTarget;
- (void)_updateRightLine;
- (void)_updateShutterHighlightLayers;
- (void)_updateSpinningAnimations;
- (void)_updateSpringTargetsAnimated:(BOOL)animated;
- (void)_updateStateForTouchPoint:(CGPoint)point;
- (void)_updateStateToLongPressIfNeededWithPhase:(int64_t)phase;
- (void)_updateStaticDragHandleOffsetTargetAnimated:(BOOL)animated;
- (void)_updateTrackingDragHandleOffsetTargetWithPoint:(CGPoint)point;
- (void)_updateTrackingSpringTargets;
- (void)_updateViewsFromCurrentState;
- (void)cancelZoom;
- (void)captureMenuItemTapped;
- (void)convergeAllSprings;
- (void)dealloc;
- (void)externalButtonCancelled;
- (void)externalLockButtonReleased;
- (void)layoutSubviews;
- (void)metalViewDidChangeDrawableSize:(id)size;
- (void)resetAnimated:(BOOL)animated;
- (void)setBounds:(CGRect)bounds;
- (void)setDelegate:(id)delegate;
- (void)setDisableOptionalUIEffects:(BOOL)effects;
- (void)setFrame:(CGRect)frame;
- (void)setLockButtonCenterRightInset:(double)inset;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setPausedDuringVideo:(BOOL)video animated:(BOOL)animated;
- (void)setSettings:(id *)settings;
- (void)setSettings:(id *)settings animated:(BOOL)animated;
- (void)setSettings:(id *)settings privateSettings:(id)privateSettings animated:(BOOL)animated;
- (void)setShowContrastBorder:(BOOL)border;
- (void)setShowDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)setSpinning:(BOOL)spinning;
- (void)updateChromeViewModel:(id)model;
@end

@implementation CAMDynamicShutterControl

- (CAMDynamicShutterControl)init
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMDynamicShutterControl *)self initWithMetalDevice:0 commandQueue:0 layoutStyle:cam_initialLayoutStyle];
}

- (CAMDynamicShutterControl)initWithMetalDevice:(id)device commandQueue:(id)queue
{
  v6 = MEMORY[0x1E69DC938];
  queueCopy = queue;
  deviceCopy = device;
  currentDevice = [v6 currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  v11 = [(CAMDynamicShutterControl *)self initWithMetalDevice:deviceCopy commandQueue:queueCopy layoutStyle:cam_initialLayoutStyle];
  return v11;
}

- (CAMDynamicShutterControl)initWithExternalRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  if (renderingCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return [(CAMDynamicShutterControl *)self initWithMetalDevice:0 commandQueue:0 layoutStyle:cam_initialLayoutStyle liquidRenderingMethod:v7];
}

- (CAMDynamicShutterControl)initWithMetalDevice:(id)device commandQueue:(id)queue layoutStyle:(int64_t)style liquidRenderingMethod:(int64_t)method
{
  v111[13] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  queueCopy = queue;
  v110.receiver = self;
  v110.super_class = CAMDynamicShutterControl;
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(CAMDynamicShutterControl *)&v110 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  v15 = v14;
  if (v14)
  {
    v14->__liquidRenderingMethod = method;
    v14->__wantsLateralOuterViews = method == 0;
    v14->_settings.idleColor = 0;
    *&v14->_settings.allowsZoom = 0u;
    *&v14->_settings.ringStyle = 0u;
    *&v14->_settings.tapBehavior = 0u;
    *&v14->_settings.dragRightBehavior = 0u;
    v14->_privateSettings.allowPauseResume = 0;
    objc_initWeak(&location, v14);
    v16 = objc_alloc(MEMORY[0x1E6993840]);
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __95__CAMDynamicShutterControl_initWithMetalDevice_commandQueue_layoutStyle_liquidRenderingMethod___block_invoke;
    v107[3] = &unk_1E76FDF58;
    objc_copyWeak(&v108, &location);
    v17 = [v16 initWithHandler:v107];
    displayLinkTarget = v15->__displayLinkTarget;
    v15->__displayLinkTarget = v17;

    v19 = [MEMORY[0x1E6979330] displayLinkWithTarget:v15->__displayLinkTarget selector:sel_displayLinkDidFire_];
    displayLink = v15->__displayLink;
    v15->__displayLink = v19;

    v21 = v15->__displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v21 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    _liquidRenderingMethod = [(CAMDynamicShutterControl *)v15 _liquidRenderingMethod];
    if (_liquidRenderingMethod)
    {
      if (_liquidRenderingMethod == 1)
      {
        v24 = [_TtC8CameraUI20CAMLiquidShutterView alloc];
        [(CAMDynamicShutterControl *)v15 bounds];
        v25 = [(CAMLiquidShutterView *)v24 initWithFrame:?];
        liquidShutterView = v15->_liquidShutterView;
        v15->_liquidShutterView = v25;

        [(CAMLiquidShutterView *)v15->_liquidShutterView setUserInteractionEnabled:0];
        [(CAMDynamicShutterControl *)v15 addSubview:v15->_liquidShutterView];
      }
    }

    else
    {
      v27 = [[CAMLiquidShutterRenderer alloc] initWithDevice:deviceCopy commandQueue:queueCopy pixelFormat:80];
      liquidShutterRenderer = v15->__liquidShutterRenderer;
      v15->__liquidShutterRenderer = v27;

      v29 = [[CAMMetalView alloc] initWithFrame:v10, v11, v12, v13];
      metalView = v15->__metalView;
      v15->__metalView = v29;

      [(CAMMetalView *)v15->__metalView setMetalViewDelegate:v15];
      metalLayer = [(CAMMetalView *)v15->__metalView metalLayer];
      [metalLayer setDevice:deviceCopy];

      metalLayer2 = [(CAMMetalView *)v15->__metalView metalLayer];
      [metalLayer2 setPixelFormat:80];

      metalLayer3 = [(CAMMetalView *)v15->__metalView metalLayer];
      [(CAMLiquidShutterRenderer *)v15->__liquidShutterRenderer setMetalLayer:metalLayer3];

      layer = [(CAMMetalView *)v15->__metalView layer];
      [layer setOpaque:0];

      [(CAMMetalView *)v15->__metalView setUserInteractionEnabled:0];
      [(CAMDynamicShutterControl *)v15 addSubview:v15->__metalView];
      [(CAMDynamicShutterControl *)v15 bringSubviewToFront:v15->__metalView];
    }

    v15->__needsLiquidShutterUpdate = 1;
    v15->__needsInitialOuterAndInnerLayerUpdate = 1;
    v35 = objc_opt_class();
    if (v35)
    {
      [v35 shutterButtonSpecForLayoutStyle:style];
    }

    else
    {
      v106 = 0.0;
      v104 = 0u;
      v105 = 0u;
    }

    v36 = v104;
    v37 = v105;
    v15->__shutterButtonSpec.interRingSpacing = v106;
    *&v15->__shutterButtonSpec.outerRingDiameter = v36;
    *&v15->__shutterButtonSpec.stopSquareSideLength = v37;
    v38 = CAMPixelWidthForView(v15);
    CAMShutterButtonSpecMake(&v104, 55.0, 3.0 - v38, 0.0, 0.0, 2.0);
    v39 = v104;
    v40 = v105;
    v15->__lockButtonActiveSpec.interRingSpacing = v106;
    *&v15->__lockButtonActiveSpec.outerRingDiameter = v39;
    *&v15->__lockButtonActiveSpec.stopSquareSideLength = v40;
    v41 = CAMPixelWidthForView(v15);
    CAMShutterButtonSpecMake(&v104, 40.0, v41 + 1.0, 0.0, 0.0, 2.0);
    v42 = v104;
    v43 = v105;
    v15->__lockButtonInactiveSpec.interRingSpacing = v106;
    *&v15->__lockButtonInactiveSpec.outerRingDiameter = v42;
    *&v15->__lockButtonInactiveSpec.stopSquareSideLength = v43;
    v44 = CAMPixelWidthForView(v15);
    CAMShutterButtonSpecMake(&v104, 55.0, 3.0 - v44, 0.0, 0.0, 2.0);
    v45 = v104;
    v46 = v105;
    v15->__pauseResumeButtonSpec.interRingSpacing = v106;
    *&v15->__pauseResumeButtonSpec.outerRingDiameter = v45;
    *&v15->__pauseResumeButtonSpec.stopSquareSideLength = v46;
    v47 = [[CAMDynamicShutterGestureRecognizer alloc] initWithTarget:v15 action:sel__handlePress_];
    gestureRecognizer = v15->__gestureRecognizer;
    v15->__gestureRecognizer = v47;

    [(CAMDynamicShutterGestureRecognizer *)v15->__gestureRecognizer setMinimumPressDuration:0.0];
    [(CAMDynamicShutterGestureRecognizer *)v15->__gestureRecognizer setCancelsTouchesInView:0];
    [(CAMDynamicShutterGestureRecognizer *)v15->__gestureRecognizer setDelaysTouchesEnded:0];
    [(CAMDynamicShutterGestureRecognizer *)v15->__gestureRecognizer setDelegate:v15];
    [(CAMDynamicShutterControl *)v15 addGestureRecognizer:v15->__gestureRecognizer];
    v49 = +[CAMCaptureCapabilities capabilities];
    allowHaptics = [v49 allowHaptics];

    if (allowHaptics)
    {
      v51 = +[CAMFeedbackController sharedController];
      feedbackController = v15->__feedbackController;
      v15->__feedbackController = v51;
    }

    v15->__touchSequencePhase = 0;
    v53 = [[CAMTrackingSpring alloc] initWithTension:240.0 friction:30.0 epsilon:CAMPixelWidthForView(v15)];
    dragHandleOffsetSpring = v15->__dragHandleOffsetSpring;
    v15->__dragHandleOffsetSpring = v53;

    v55 = [[CAMSpring alloc] initWithTension:240.0 friction:30.0 epsilon:CAMPixelWidthForView(v15)];
    dragHandleWidthSpring = v15->__dragHandleWidthSpring;
    v15->__dragHandleWidthSpring = v55;

    v57 = [[CAMSpring alloc] initWithTension:240.0 friction:30.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    dragHandleColorIsWhiteSpring = v15->__dragHandleColorIsWhiteSpring;
    v15->__dragHandleColorIsWhiteSpring = v57;

    v59 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    dragHandleAlphaSpring = v15->__dragHandleAlphaSpring;
    v15->__dragHandleAlphaSpring = v59;

    v61 = [[CAMSpring alloc] initWithTension:240.0 friction:30.0 epsilon:CAMPixelWidthForView(v15)];
    innerShapeWidthSpring = v15->__innerShapeWidthSpring;
    v15->__innerShapeWidthSpring = v61;

    v63 = [[CAMSpring alloc] initWithTension:240.0 friction:30.0 epsilon:0.001 boundedBetween:2.0 and:6.0];
    innerShapePowerSpring = v15->__innerShapePowerSpring;
    v15->__innerShapePowerSpring = v63;

    v65 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    innerShapeColorIsRedSpring = v15->__innerShapeColorIsRedSpring;
    v15->__innerShapeColorIsRedSpring = v65;

    v67 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    innerShapeAlphaSpring = v15->__innerShapeAlphaSpring;
    v15->__innerShapeAlphaSpring = v67;

    v69 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    counterLabelAlphaSpring = v15->__counterLabelAlphaSpring;
    v15->__counterLabelAlphaSpring = v69;

    v71 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    drawLockUISpring = v15->__drawLockUISpring;
    v15->__drawLockUISpring = v71;

    v73 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    expandLockRingSpring = v15->__expandLockRingSpring;
    v15->__expandLockRingSpring = v73;

    v75 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    drawPauseResumeUISpring = v15->__drawPauseResumeUISpring;
    v15->__drawPauseResumeUISpring = v75;

    v77 = [[CAMSpring alloc] initWithTension:400.0 friction:40.0 epsilon:0.001 boundedBetween:0.0 and:1.0];
    pausedDuringVideoSpring = v15->__pausedDuringVideoSpring;
    v15->__pausedDuringVideoSpring = v77;

    _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)v15 _dragHandleOffsetSpring];
    v111[0] = _dragHandleOffsetSpring;
    _dragHandleWidthSpring = [(CAMDynamicShutterControl *)v15 _dragHandleWidthSpring];
    v111[1] = _dragHandleWidthSpring;
    _dragHandleColorIsWhiteSpring = [(CAMDynamicShutterControl *)v15 _dragHandleColorIsWhiteSpring];
    v111[2] = _dragHandleColorIsWhiteSpring;
    _dragHandleAlphaSpring = [(CAMDynamicShutterControl *)v15 _dragHandleAlphaSpring];
    v111[3] = _dragHandleAlphaSpring;
    _innerShapeWidthSpring = [(CAMDynamicShutterControl *)v15 _innerShapeWidthSpring];
    v111[4] = _innerShapeWidthSpring;
    _innerShapePowerSpring = [(CAMDynamicShutterControl *)v15 _innerShapePowerSpring];
    v111[5] = _innerShapePowerSpring;
    _innerShapeAlphaSpring = [(CAMDynamicShutterControl *)v15 _innerShapeAlphaSpring];
    v111[6] = _innerShapeAlphaSpring;
    _counterLabelAlphaSpring = [(CAMDynamicShutterControl *)v15 _counterLabelAlphaSpring];
    v111[7] = _counterLabelAlphaSpring;
    _innerShapeColorIsRedSpring = [(CAMDynamicShutterControl *)v15 _innerShapeColorIsRedSpring];
    v111[8] = _innerShapeColorIsRedSpring;
    _drawLockUISpring = [(CAMDynamicShutterControl *)v15 _drawLockUISpring];
    v111[9] = _drawLockUISpring;
    _expandLockRingSpring = [(CAMDynamicShutterControl *)v15 _expandLockRingSpring];
    v111[10] = _expandLockRingSpring;
    _drawPauseResumeUISpring = [(CAMDynamicShutterControl *)v15 _drawPauseResumeUISpring];
    v111[11] = _drawPauseResumeUISpring;
    _pausedDuringVideoSpring = [(CAMDynamicShutterControl *)v15 _pausedDuringVideoSpring];
    v111[12] = _pausedDuringVideoSpring;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:13];
    springs = v15->__springs;
    v15->__springs = v88;

    [(CAMSpring *)v15->__dragHandleWidthSpring resetToValue:45.0];
    [(CAMSpring *)v15->__dragHandleAlphaSpring resetToValue:1.0];
    v90 = v15->__innerShapeWidthSpring;
    [(CAMDynamicShutterControl *)v15 _shutterButtonSpec];
    [(CAMSpring *)v90 resetToValue:CAMShutterButtonSpecGetInnerCircleDiameter(&v104)];
    [(CAMSpring *)v15->__innerShapePowerSpring resetToValue:2.0];
    [(CAMSpring *)v15->__innerShapeAlphaSpring resetToValue:1.0];
    [(CAMSpring *)v15->__counterLabelAlphaSpring resetToValue:0.0];
    v15->__longPressVideoDuration = 0.55;
    v15->__externalLongPressVideoDuration = 0.55;
    v91 = +[CAMCaptureCapabilities capabilities];
    LODWORD(_counterLabelAlphaSpring) = [v91 isTrueVideoSupported];

    if (_counterLabelAlphaSpring)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMLongPressVideoDurationMS", @"com.apple.camera", 0);
      v93 = AppIntegerValue / 1000.0;
      if (AppIntegerValue <= 0)
      {
        v93 = 0.416;
      }

      v15->__longPressVideoDuration = v93;
      v94 = CFPreferencesGetAppIntegerValue(@"CAMExternalLongPressVideoDurationMS", @"com.apple.camera", 0);
      v95 = v94 / 1000.0;
      if (v94 <= 0)
      {
        v95 = 0.416;
      }

      v15->__externalLongPressVideoDuration = v95;
    }

    v96 = v15;
    objc_destroyWeak(&v108);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __95__CAMDynamicShutterControl_initWithMetalDevice_commandQueue_layoutStyle_liquidRenderingMethod___block_invoke(uint64_t a1, void *a2)
{
  [a2 targetTimestamp];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForTargetTimestamp:v4];
}

- (void)dealloc
{
  [(CADisplayLink *)self->__displayLink invalidate];
  displayLink = self->__displayLink;
  self->__displayLink = 0;

  v4.receiver = self;
  v4.super_class = CAMDynamicShutterControl;
  [(CAMDynamicShutterControl *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToTopLevelSuperview = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidShortPress = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanStartOnTouchDown = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldBeginGesture = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToGesturesDidBegin = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToGesturesDidEnd = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToGesturesDidCancel = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidStart = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidStartWithGesture = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidStartZoomGesture = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidStopZoomGesture = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidChangeRelativeZoomProgress = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidStop = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidPressLockButton = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidPressPauseResumeButton = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidPresentCounter = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidDismissCounter = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToTouchAttemptedWhileDisabled = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidUpdateLiquidShutter = objc_opt_respondsToSelector() & 1;
  }
}

- (BOOL)_canDragCounter
{
  [(CAMDynamicShutterControl *)self settings];
  if (v4 == 1)
  {
    return ![(CAMDynamicShutterControl *)self _isStartStopShutterState:[(CAMDynamicShutterControl *)self _shutterState]];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isValidChangeFromState:(int64_t)state toState:(int64_t)toState
{
  if (!toState)
  {
    return 1;
  }

  if (state <= 3)
  {
    if (state)
    {
      if (state != 2)
      {
        return 0;
      }

      return toState == 3;
    }

    return 1;
  }

  if (state == 4)
  {
    return toState == 3;
  }

  v6 = toState == 4 || (toState & 0xFFFFFFFFFFFFFFFELL) == 2;
  return state == 5 && v6;
}

- (void)_resetShutterState
{
  if (self->__shutterState)
  {
    self->__shutterState = 0;
    if (self->_delegateFlags.respondsToGesturesDidCancel)
    {
      delegate = [(CAMDynamicShutterControl *)self delegate];
      [delegate dynamicShutterControlGesturesDidCancel:self];
    }

    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:0];

    [(CAMDynamicShutterControl *)self _updateOuterAndInnerLayersAnimated:0];
  }
}

- (void)_setShutterState:(int64_t)state
{
  shutterState = self->__shutterState;
  if (shutterState != state)
  {
    if ([(CAMDynamicShutterControl *)self _isValidChangeFromState:shutterState toState:state])
    {
      v6 = self->__shutterState;
      self->__shutterState = state;
      if (state <= 1)
      {
        if (state)
        {
          if (state == 1)
          {
            if (!v6)
            {
              if (!self->_delegateFlags.respondsToDidPresentCounter)
              {
                goto LABEL_35;
              }

              delegate = [(CAMDynamicShutterControl *)self delegate];
              [delegate dynamicShutterControlDidPresentCounter:self];
              goto LABEL_34;
            }

            if ([(CAMDynamicShutterControl *)self _isStartStopShutterState:v6])
            {
              delegate = os_log_create("com.apple.camera", "DynamicShutter");
              if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
              {
                [(CAMDynamicShutterControl *)delegate _setShutterState:v16, v17, v18, v19, v20, v21, v22];
              }

              goto LABEL_34;
            }
          }
        }

        else
        {
          if (![(CAMDynamicShutterControl *)self _isStartStopShutterState:v6])
          {
            if (v6 != 1 || !self->_delegateFlags.respondsToDidDismissCounter)
            {
              goto LABEL_35;
            }

            delegate = [(CAMDynamicShutterControl *)self delegate];
            [delegate dynamicShutterControlDidDismissCounter:self];
            goto LABEL_34;
          }

          if (self->_delegateFlags.respondsToDidStop)
          {
            delegate = [(CAMDynamicShutterControl *)self delegate];
            [delegate dynamicShutterControlDidStop:self];
            goto LABEL_34;
          }
        }
      }

      else
      {
        if ((state - 2) >= 2)
        {
          if (state == 4)
          {
            _innerShapeWidthSpring = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
            [_innerShapeWidthSpring setTension:100.0];

            _innerShapeWidthSpring2 = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
            [_innerShapeWidthSpring2 setFriction:10.0];

            _innerShapeWidthSpring3 = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
            [_innerShapeWidthSpring3 setVelocity:500.0];

            _feedbackController = [(CAMDynamicShutterControl *)self _feedbackController];
            [_feedbackController performDiscreteFeedback:4];
          }

          else if (state != 5)
          {
            goto LABEL_35;
          }
        }

        if (v6 == 1)
        {
          delegate = os_log_create("com.apple.camera", "DynamicShutter");
          if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
          {
            [(CAMDynamicShutterControl *)delegate _setShutterState:v29, v30, v31, v32, v33, v34, v35];
          }

          goto LABEL_34;
        }

        if (!v6)
        {
          if (self->_delegateFlags.respondsToDidStartWithGesture)
          {
            v27 = [(CAMDynamicShutterControl *)self _startGestureForShutterState:state];
            delegate2 = [(CAMDynamicShutterControl *)self delegate];
            [delegate2 dynamicShutterControlDidStart:self withGesture:v27];

            goto LABEL_35;
          }

          if (!self->_delegateFlags.respondsToDidStart)
          {
            goto LABEL_35;
          }

          delegate = [(CAMDynamicShutterControl *)self delegate];
          [delegate dynamicShutterControlDidStart:self];
LABEL_34:
        }
      }

LABEL_35:
      [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:0];
      [(CAMDynamicShutterControl *)self _updateOuterAndInnerLayersAnimated:0];
      return;
    }

    v7 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAMDynamicShutterControl *)v7 _setShutterState:v8, v9, v10, v11, v12, v13, v14];
    }
  }
}

- (int64_t)_startGestureForShutterState:(int64_t)state
{
  if ((state - 2) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A3A6AAA8[state - 2];
  }
}

- (void)_setDragHandleState:(int64_t)state animated:(BOOL)animated
{
  if (self->__dragHandleState != state)
  {
    self->__dragHandleState = state;
    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:animated];
    if (!animated)
    {
      _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
      [_dragHandleOffsetSpring converge];

      _dragHandleWidthSpring = [(CAMDynamicShutterControl *)self _dragHandleWidthSpring];
      [_dragHandleWidthSpring converge];

      _dragHandleColorIsWhiteSpring = [(CAMDynamicShutterControl *)self _dragHandleColorIsWhiteSpring];
      [_dragHandleColorIsWhiteSpring converge];

      _dragHandleAlphaSpring = [(CAMDynamicShutterControl *)self _dragHandleAlphaSpring];
      [_dragHandleAlphaSpring converge];
    }
  }
}

- (void)_setInnerShapeState:(int64_t)state animated:(BOOL)animated
{
  if (self->__innerShapeState != state)
  {
    self->__innerShapeState = state;
    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:animated];
    if (!animated)
    {
      _innerShapeWidthSpring = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
      [_innerShapeWidthSpring converge];

      _innerShapePowerSpring = [(CAMDynamicShutterControl *)self _innerShapePowerSpring];
      [_innerShapePowerSpring converge];

      _innerShapeColorIsRedSpring = [(CAMDynamicShutterControl *)self _innerShapeColorIsRedSpring];
      [_innerShapeColorIsRedSpring converge];

      _innerShapeAlphaSpring = [(CAMDynamicShutterControl *)self _innerShapeAlphaSpring];
      [_innerShapeAlphaSpring converge];

      _counterLabelAlphaSpring = [(CAMDynamicShutterControl *)self _counterLabelAlphaSpring];
      [_counterLabelAlphaSpring converge];
    }
  }
}

- (void)_setExternalShutterPressed:(BOOL)pressed
{
  if (self->__externalShutterPressed != pressed)
  {
    self->__externalShutterPressed = pressed;
    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:0];
  }
}

- (void)cancelZoom
{
  if (self->_zooming && self->_delegateFlags.respondsToDidStopZoomGesture)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicShutterControlDidStopZoomGesture:self];
  }

  [(CAMDynamicShutterControl *)self setZooming:0];

  [(CAMDynamicShutterControl *)self set_didCancelZoomForCurrentGesture:1];
}

- (void)resetAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.camera", "DynamicShutter");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (animatedCopy)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: ResetAnimated: %{public}@", &v10, 0xCu);
  }

  if ([(CAMDynamicShutterControl *)self _isActiveTouchSequencePhase:[(CAMDynamicShutterControl *)self _touchSequencePhase]])
  {
    [(CAMDynamicShutterControl *)self _cancelTouchSequenceForReset:1];
  }

  [(CAMDynamicShutterControl *)self _setExternalShutterPressed:0];
  [(CAMDynamicShutterControl *)self _setExternalLockButtonPressed:0];
  [(CAMDynamicShutterControl *)self _setDragHandleState:0 animated:animatedCopy];
  [(CAMDynamicShutterControl *)self _setInnerShapeState:0 animated:animatedCopy];
  [(CAMDynamicShutterControl *)self _resetShutterState];
  _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
  [_dragHandleOffsetSpring removeSecondaryTargetAnimated:animatedCopy];

  if (!animatedCopy)
  {
    [(CAMDynamicShutterControl *)self convergeAllSprings];
  }

  _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
  [_displayLink setPaused:0];
}

- (void)convergeAllSprings
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _springs = [(CAMDynamicShutterControl *)self _springs];
  v3 = [_springs countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(_springs);
        }

        [*(*(&v7 + 1) + 8 * v6++) converge];
      }

      while (v4 != v6);
      v4 = [_springs countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_orientation = orientation;
    [(CAMDynamicShutterControl *)self setNeedsLayout];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __52__CAMDynamicShutterControl_setOrientation_animated___block_invoke;
      v8[3] = &unk_1E76F77B0;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:0 animations:0.3 completion:0.0];
    }
  }
}

- (CGRect)frameForAlignmentRect:(CGRect)rect availableWidth:(double)width
{
  v5 = rect.origin.y + -16.0;
  v6 = rect.size.height + 16.0 + 16.0;
  v7 = 0.0;
  result.size.height = v6;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v7;
  return result;
}

- (void)setLockButtonCenterRightInset:(double)inset
{
  if (self->_lockButtonCenterRightInset != inset)
  {
    self->_lockButtonCenterRightInset = inset;
    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:0];
  }
}

- (CGSize)intrinsicContentSize
{
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  v3 = v5;
  v4 = v6;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)_updateCenterButton
{
  _pausedDuringVideoSpring = [(CAMDynamicShutterControl *)self _pausedDuringVideoSpring];
  [_pausedDuringVideoSpring value];

  [(CAMDynamicShutterControl *)self _centerOuterViewDiameter];
  v5 = v4;
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
  CEKInterpolateClamped();
  v7 = v6;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  v9 = v8;
  v11 = v10;
  _centerOuterView = [(CAMDynamicShutterControl *)self _centerOuterView];
  [_centerOuterView setCenter:{v9, v11}];

  _centerOuterView2 = [(CAMDynamicShutterControl *)self _centerOuterView];
  [_centerOuterView2 setBounds:{0.0, 0.0, v5, v5}];

  v14 = v5 * 0.5;
  _centerOuterView3 = [(CAMDynamicShutterControl *)self _centerOuterView];
  layer = [_centerOuterView3 layer];
  [layer setCornerRadius:v5 * 0.5];

  if (![(CAMDynamicShutterControl *)self _liquidRenderingMethod])
  {
    _centerOuterView4 = [(CAMDynamicShutterControl *)self _centerOuterView];
    layer2 = [_centerOuterView4 layer];
    [layer2 setBorderWidth:v7];
  }

  _centerOuterImageView = [(CAMDynamicShutterControl *)self _centerOuterImageView];
  [_centerOuterImageView setCenter:{v9, v11}];

  _centerOuterImageView2 = [(CAMDynamicShutterControl *)self _centerOuterImageView];
  [_centerOuterImageView2 setBounds:{0.0, 0.0, v5, v5}];

  _centerTimelapseOuterView = [(CAMDynamicShutterControl *)self _centerTimelapseOuterView];
  [_centerTimelapseOuterView setCenter:{v9, v11}];

  _centerTimelapseOuterView2 = [(CAMDynamicShutterControl *)self _centerTimelapseOuterView];
  [_centerTimelapseOuterView2 setBounds:{0.0, 0.0, v5, v5}];

  _centerOuterLegibilityView = [(CAMDynamicShutterControl *)self _centerOuterLegibilityView];
  [_centerOuterLegibilityView setCenter:{v9, v11}];

  UIRectInset();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  _centerOuterLegibilityView2 = [(CAMDynamicShutterControl *)self _centerOuterLegibilityView];
  [_centerOuterLegibilityView2 setBounds:{v25, v27, v29, v31}];

  _centerOuterLegibilityView3 = [(CAMDynamicShutterControl *)self _centerOuterLegibilityView];
  layer3 = [_centerOuterLegibilityView3 layer];
  [layer3 setCornerRadius:v14 + 1.0];

  [(CAMDynamicShutterControl *)self _updateShutterHighlightLayers];
}

- (double)_centerOuterViewDiameter
{
  _pausedDuringVideoSpring = [(CAMDynamicShutterControl *)self _pausedDuringVideoSpring];
  [_pausedDuringVideoSpring value];

  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
  CEKInterpolateClamped();
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CAMDynamicShutterControl;
  [(CAMDynamicShutterControl *)&v36 layoutSubviews];
  if ([(CAMDynamicShutterControl *)self _needsInitialOuterAndInnerLayerUpdate])
  {
    [(CAMDynamicShutterControl *)self _updateOuterAndInnerLayersAnimated:0];
  }

  [(CAMDynamicShutterControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _metalView = [(CAMDynamicShutterControl *)self _metalView];
  [_metalView setFrame:{v4, v6, v8, v10}];

  liquidShutterView = [(CAMDynamicShutterControl *)self liquidShutterView];
  [liquidShutterView setFrame:{v4, v6, v8, v10}];

  [(CAMDynamicShutterControl *)self _updateLockGlyphTransformAndAlpha];
  if ([(CAMDynamicShutterControl *)self _needsLiquidShutterUpdate])
  {
    [(CAMDynamicShutterControl *)self _updateLiquidShutter];
  }

  [(CAMDynamicShutterControl *)self _updateViewsFromCurrentState];
  [(CAMDynamicShutterControl *)self _lockButtonCenter];
  v14 = v13;
  v16 = v15;
  _lockButtonOuterView = [(CAMDynamicShutterControl *)self _lockButtonOuterView];
  [_lockButtonOuterView setCenter:{v14, v16}];

  _lockButtonOuterLegibilityView = [(CAMDynamicShutterControl *)self _lockButtonOuterLegibilityView];
  [_lockButtonOuterLegibilityView setCenter:{v14, v16}];

  _videoLockImageView = [(CAMDynamicShutterControl *)self _videoLockImageView];
  [_videoLockImageView setCenter:{v14, v16}];

  [(CAMDynamicShutterControl *)self settings];
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  if (v35 == 2)
  {
    v22 = v20 - ((v34 + 55.0) * 0.5 + 21.0);
    [(CAMDynamicShutterControl *)self _shutterButtonCenter];
    v24 = v23;
    _counterLabel = [(CAMDynamicShutterControl *)self _counterLabel];
    [_counterLabel setCenter:{v22, v24}];

    _counterLabel2 = [(CAMDynamicShutterControl *)self _counterLabel];
    [_counterLabel2 setBounds:{0.0, 0.0, 55.0, 55.0}];

    _counterLabel3 = [(CAMDynamicShutterControl *)self _counterLabel];
    [_counterLabel3 _setCornerRadius:27.5];

    _counterLabel4 = [(CAMDynamicShutterControl *)self _counterLabel];
    [_counterLabel4 setClipsToBounds:1];
  }

  else
  {
    v29 = v20;
    v30 = v21;
    _counterLabel5 = [(CAMDynamicShutterControl *)self _counterLabel];
    [_counterLabel5 setCenter:{v29, v30}];

    _counterLabel4 = [(CAMDynamicShutterControl *)self _counterLabel];
    [_counterLabel4 setBounds:{0.0, 0.0, v33, v33}];
  }

  _counterLabel6 = [(CAMDynamicShutterControl *)self _counterLabel];
  [CAMView rotateView:_counterLabel6 toInterfaceOrientation:[(CAMDynamicShutterControl *)self orientation] animated:0];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CAMDynamicShutterControl *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CAMDynamicShutterControl;
  [(CAMDynamicShutterControl *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(CAMDynamicShutterControl *)self set_needsLiquidShutterUpdate:1];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CAMDynamicShutterControl *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CAMDynamicShutterControl;
  [(CAMDynamicShutterControl *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(CAMDynamicShutterControl *)self set_needsLiquidShutterUpdate:1];
  }
}

- (CGRect)centerButtonFrame
{
  [(CAMDynamicShutterControl *)self _centerOuterViewDiameter];
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];

  UIRectCenteredAboutPointScale();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_isPastStartStopDragThreshold
{
  _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
  [_dragHandleOffsetSpring value];
  v4 = v3 >= 60.0;

  return v4;
}

- (BOOL)_isPastCounterDragThreshold
{
  _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
  [_dragHandleOffsetSpring value];
  v4 = v3 <= -60.0;

  return v4;
}

- (double)_dragHandleXPosition
{
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
  [_dragHandleOffsetSpring value];

  [(CAMDynamicShutterControl *)self _pauseResumeButtonCenter];
  [(CAMDynamicShutterControl *)self _lockButtonCenter];

  CEKClamp();
  return result;
}

+ (CAMShutterButtonSpec)shutterButtonSpecForLayoutStyle:(SEL)style
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  retstr->interRingSpacing = 0.0;
  *&retstr->outerRingDiameter = 0u;
  *&retstr->stopSquareSideLength = 0u;
  if ((a4 - 1) < 2)
  {

    CAMShutterButtonSpecForLayoutStyle(a4, retstr);
  }

  else
  {
    v10 = 1.0 / v8;
    if (a4)
    {
      if (a4 != 3)
      {
        return result;
      }

      v11 = 4.0 - v10;
      v12 = v10 + 2.0;
      v13 = 80.0;
      v14 = 36.0;
      v15 = 9.0;
    }

    else
    {
      v11 = 4.0 - v10;
      v13 = 66.0;
      v14 = 28.0;
      v15 = 5.0;
      v12 = 2.0;
    }

    CAMShutterButtonSpecMake(&retstr->outerRingDiameter, v13, v11, v14, v15, v12);
  }

  return result;
}

- (CGPoint)_shutterButtonCenter
{
  [(CAMDynamicShutterControl *)self bounds];

  UIRectGetCenter();
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)_shutterButtonFrame
{
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  UIRectCenteredAboutPoint();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_isPointWithinShutterButtonTouchArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  [(CAMDynamicShutterControl *)self _shutterButtonFrame];
  UIRectInset();
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (double)_absoluteShutterToBottomDistance
{
  superview = [(CAMDynamicShutterControl *)self superview];
  if (self->_delegateFlags.respondsToTopLevelSuperview)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained dynamicShutterControlTopLevelSuperview:self];

    superview = v5;
  }

  [superview safeAreaInsets];
  v7 = v6;
  [superview bounds];
  v9 = v8;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  [(CAMDynamicShutterControl *)self convertPoint:superview toView:?];
  v11 = v9 - v10 - v7;

  return v11;
}

- (CGPoint)_lockButtonCenter
{
  [(CAMDynamicShutterControl *)self bounds];
  v4 = v3;
  [(CAMDynamicShutterControl *)self lockButtonCenterRightInset];
  v6 = v4 - v5;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v8 = v6;
  result.y = v7;
  result.x = v8;
  return result;
}

- (CGRect)_lockButtonFrame
{
  [(CAMDynamicShutterControl *)self _lockButtonActiveSpec];
  [(CAMDynamicShutterControl *)self _lockButtonActiveSpec];
  [(CAMDynamicShutterControl *)self _lockButtonCenter];
  UIRectCenteredAboutPoint();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_isPointWithinLockRingTouchArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  [(CAMDynamicShutterControl *)self _lockButtonFrame];
  UIRectInset();
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (BOOL)_isHandleWithinLockRing
{
  [(CAMDynamicShutterControl *)self _dragHandleXPosition];
  v4 = v3;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];

  return [(CAMDynamicShutterControl *)self _isPointWithinLockRingTouchArea:v4];
}

- (CGPoint)_pauseResumeButtonCenter
{
  [(CAMDynamicShutterControl *)self pauseResumeButtonCenterLeftInset];
  v4 = v3;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v6 = v4;
  result.y = v5;
  result.x = v6;
  return result;
}

- (CGRect)_pauseResumeButtonFrame
{
  [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
  [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
  [(CAMDynamicShutterControl *)self _pauseResumeButtonCenter];
  UIRectCenteredAboutPoint();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_isPointWithinPauseResumeRingTouchArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  if (([(CAMDynamicShutterControl *)self privateSettings]& 1) == 0)
  {
    return 0;
  }

  [(CAMDynamicShutterControl *)self _pauseResumeButtonFrame];
  UIRectInset();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- ($E50CC26D34D0158E20D4445E4757B7F2)_touchForPoint:(SEL)point
{
  y = a4.y;
  x = a4.x;
  _isHandleWithinLockRing = [(CAMDynamicShutterControl *)self _isHandleWithinLockRing];
  *&retstr->var2 = 0;
  retstr->var0.x = x;
  retstr->var0.y = y;
  retstr->var1 = CFAbsoluteTimeGetCurrent();
  retstr->var2 = [(CAMDynamicShutterControl *)self _isPointWithinShutterButtonTouchArea:x, y];
  retstr->var3 = [(CAMDynamicShutterControl *)self _isPointWithinLockRingTouchArea:x, y]&& _isHandleWithinLockRing;
  result = [(CAMDynamicShutterControl *)self _isPointWithinPauseResumeRingTouchArea:x, y];
  retstr->var4 = result;
  return result;
}

- (BOOL)_shouldReceiveTouch:(id *)touch
{
  _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
  if ((_shutterState - 2) >= 2)
  {
    return !_shutterState && touch->var2;
  }

  else
  {
    return touch->var2 || touch->var3 || touch->var4;
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = CAMDynamicShutterControl;
  v7 = [(CAMDynamicShutterControl *)&v14 hitTest:event withEvent:?];
  [(CAMDynamicShutterControl *)self bounds];
  v16.x = x;
  v16.y = y;
  if (CGRectContainsPoint(v17, v16) && ([(CAMDynamicShutterControl *)self isEnabled]& 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    [(CAMDynamicShutterControl *)self _touchForPoint:x, y];
    v11[0] = v12;
    v11[1] = v13;
    if ([(CAMDynamicShutterControl *)self _shouldReceiveTouch:v11]&& self->_delegateFlags.respondsToTouchAttemptedWhileDisabled)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained shutterControlTouchAttemptedWhileDisabled:self];
    }

    selfCopy = self;

    v7 = selfCopy;
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v12.receiver = self;
  v12.super_class = CAMDynamicShutterControl;
  v7 = [(CAMDynamicShutterControl *)&v12 pointInside:event withEvent:?];
  if (v7)
  {
    v10 = 0u;
    v11 = 0u;
    [(CAMDynamicShutterControl *)self _touchForPoint:x, y];
    v9[0] = v10;
    v9[1] = v11;
    LOBYTE(v7) = [(CAMDynamicShutterControl *)self _shouldReceiveTouch:v9];
  }

  return v7;
}

- (void)_setFirstTouch:(id *)touch
{
  v25 = *MEMORY[0x1E69E9840];
  if (touch->var2)
  {
    v5 = @"WithinShutter";
  }

  else
  {
    v5 = &stru_1F1660A30;
  }

  v6 = v5;
  if (touch->var3)
  {
    v7 = @"WithinLockButton";
  }

  else
  {
    v7 = &stru_1F1660A30;
  }

  v8 = v7;
  if (touch->var4)
  {
    v9 = @"WithinPauseResumeButton";
  }

  else
  {
    v9 = &stru_1F1660A30;
  }

  v10 = v9;
  v11 = os_log_create("com.apple.camera", "DynamicShutter");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    x = touch->var0.x;
    y = touch->var0.y;
    v15 = 134219010;
    v16 = x;
    v17 = 2048;
    v18 = y;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: Updating first touch [(%.02f,%.02f) %{public}@ %{public}@ %{public}@]", &v15, 0x34u);
  }

  v14 = *&touch->var1;
  self->$2BE7AFF22295DED6A45A0E44EF7D16DF::point = touch->var0;
  *&self->$2BE7AFF22295DED6A45A0E44EF7D16DF::time = v14;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  [begin locationInView:self];
  v8 = 0u;
  v9 = 0u;
  [(CAMDynamicShutterControl *)self _touchForPoint:?];
  v7[0] = v8;
  v7[1] = v9;
  if (![(CAMDynamicShutterControl *)self _shouldReceiveTouch:v7]|| ![(CAMDynamicShutterControl *)self isEnabled])
  {
    return 0;
  }

  if (!self->_delegateFlags.respondsToShouldBeginGesture)
  {
    return 1;
  }

  delegate = [(CAMDynamicShutterControl *)self delegate];
  v5 = [delegate dynamicShutterControlShouldBeginGesture:self];

  return v5;
}

- (void)_handlePress:(id)press
{
  pressCopy = press;
  if (![(CAMDynamicShutterControl *)self _isExternalShutterPressed]&& ![(CAMDynamicShutterControl *)self _isExternalLockButtonPressed])
  {
    [pressCopy locationInView:self];
    *buf = 0u;
    v12 = 0u;
    [(CAMDynamicShutterControl *)self _touchForPoint:?];
    state = [pressCopy state];
    if (state <= 2)
    {
      if (state == 1)
      {
        v9 = *buf;
        v10 = v12;
        [(CAMDynamicShutterControl *)self _setFirstTouch:&v9];
        v8 = os_log_create("com.apple.camera", "DynamicShutter");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchBeganScreen", &v9, 2u);
        }

        v9 = *buf;
        v10 = v12;
        [(CAMDynamicShutterControl *)self _touchSequenceBegan:&v9];
      }

      else if (state == 2)
      {
        v9 = *buf;
        v10 = v12;
        [(CAMDynamicShutterControl *)self _touchSequenceChanged:&v9];
      }

      goto LABEL_22;
    }

    switch(state)
    {
      case 3:
        goto LABEL_10;
      case 4:
        if ([(CAMDynamicShutterControl *)self _ignoreNextCancelledGesture])
        {
          [(CAMDynamicShutterControl *)self _setIgnoreNextCancelledGesture:0];
        }

        else
        {
          [(CAMDynamicShutterControl *)self _touchSequenceCancelledForReset:0];
        }

        break;
      case 5:
LABEL_10:
        v9 = *buf;
        v10 = v12;
        [(CAMDynamicShutterControl *)self _touchSequenceEnded:&v9 forReset:0];
        v7 = os_log_create("com.apple.camera", "DynamicShutter");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchEndedScreen", &v9, 2u);
        }

        break;
    }

LABEL_22:
    v9 = *buf;
    v10 = v12;
    [(CAMDynamicShutterControl *)self _setMostRecentTouch:&v9];
    goto LABEL_23;
  }

  v5 = os_log_create("com.apple.camera", "DynamicShutter");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: Ignoring screen touch, handling external press", buf, 2u);
  }

LABEL_23:
}

- (BOOL)_shouldStartStopOnTouchDown
{
  [(CAMDynamicShutterControl *)self settings];
  _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
  [(CAMDynamicShutterControl *)self settings];
  if (self->_delegateFlags.respondsToCanStartOnTouchDown)
  {
    delegate = [(CAMDynamicShutterControl *)self delegate];
    v5 = [delegate dynamicShutterControlCanStartOnTouchDown:self];
  }

  else
  {
    v5 = 1;
  }

  v8 = v11 == 1 && _shutterState == 0 && v10 == 0;
  return v8 & v5;
}

- (BOOL)_shouldShortPressOnTouchDown
{
  [(CAMDynamicShutterControl *)self settings];
  v3 = v9;
  v4 = v3 | [(CAMDynamicShutterControl *)self _shutterState];
  [(CAMDynamicShutterControl *)self settings];
  v5 = v8;
  v6 = (v5 == 0) & ![(CAMDynamicShutterControl *)self _isDraggingEnabled];
  return !v4 && v6;
}

- (BOOL)_shouldShortPressOnTouchUp
{
  [(CAMDynamicShutterControl *)self settings];
  v3 = v9;
  v4 = v3 | [(CAMDynamicShutterControl *)self _shutterState];
  [(CAMDynamicShutterControl *)self settings];
  v5 = v8;
  v6 = (v5 != 0) | [(CAMDynamicShutterControl *)self _isDraggingEnabled];
  if (v4)
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)_updateStateForTouchPoint:(CGPoint)point
{
  x = point.x;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter:point.x];
  v6 = v5;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v8 = vabdd_f64(x, v7);
  [(CAMDynamicShutterControl *)self _lockButtonCenter];
  v10 = v9;
  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  if (_dragHandleState > 3)
  {
    v14 = v10 + -30.0;
    if (_dragHandleState == 4)
    {
      if (v8 < 60.0)
      {
        goto LABEL_13;
      }

      if (x <= v14)
      {
        goto LABEL_34;
      }

      selfCopy2 = self;
      v16 = 5;
    }

    else
    {
      if (_dragHandleState != 5 || x > v14)
      {
        goto LABEL_34;
      }

      selfCopy2 = self;
      v16 = 4;
    }

    [(CAMDynamicShutterControl *)selfCopy2 _setDragHandleState:v16 animated:1];
    [(CAMDynamicShutterControl *)self _setInnerShapeState:1 animated:1];
    goto LABEL_34;
  }

  if (_dragHandleState != 2)
  {
    if (_dragHandleState != 3)
    {
      goto LABEL_34;
    }

    v12 = x - v6;
    if (v12 < 0.0)
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      v13 = ![(CAMDynamicShutterControl *)self _canDragStartStop];
    }

    if (v12 >= 0.0)
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      v17 = ![(CAMDynamicShutterControl *)self _canDragCounter];
    }

    if (v8 < 60.0) | v13 & 1 || (v17)
    {
      goto LABEL_34;
    }

    if (v12 < 0.0)
    {
      v18 = 2;
    }

    else
    {
      v18 = 4;
    }

    if (v12 >= 0.0)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v12 < 0.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    [(CAMDynamicShutterControl *)self _setDragHandleState:v18 animated:1];
    [(CAMDynamicShutterControl *)self _setInnerShapeState:v19 animated:1];
    [(CAMDynamicShutterControl *)self _setShutterState:v20];
    goto LABEL_30;
  }

  if (v8 < 60.0)
  {
LABEL_13:
    [(CAMDynamicShutterControl *)self _setDragHandleState:3 animated:1];
    [(CAMDynamicShutterControl *)self _setInnerShapeState:0 animated:1];
LABEL_30:
    _feedbackController = [(CAMDynamicShutterControl *)self _feedbackController];
    [_feedbackController performDiscreteFeedback:4];
  }

LABEL_34:
  _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
  [_displayLink setPaused:0];
}

- (void)_touchSequenceBegan:(id *)began
{
  [(CAMDynamicShutterControl *)self _setTouchSequencePhase:1];
  _feedbackController = [(CAMDynamicShutterControl *)self _feedbackController];
  [_feedbackController prepareDiscreteFeedback:4];

  [(CAMDynamicShutterControl *)self set_shouldCheckTouchUpEvents:1];
  [(CAMDynamicShutterControl *)self set_didCancelZoomForCurrentGesture:0];
  if (self->_delegateFlags.respondsToGesturesDidBegin)
  {
    delegate = [(CAMDynamicShutterControl *)self delegate];
    [delegate dynamicShutterControlGesturesDidBegin:self];
  }

  if ([(CAMDynamicShutterControl *)self _isActiveTouchSequencePhase:[(CAMDynamicShutterControl *)self _touchSequencePhase]])
  {
    if (began->var2)
    {
      _shouldStartStopOnTouchDown = [(CAMDynamicShutterControl *)self _shouldStartStopOnTouchDown];
      v8 = [(CAMDynamicShutterControl *)self _isStartStopShutterState:[(CAMDynamicShutterControl *)self _shutterState]];
      if (_shouldStartStopOnTouchDown && !v8)
      {
        [(CAMDynamicShutterControl *)self settings];
        if (v18 || ([(CAMDynamicShutterControl *)self settings], v17))
        {
          v9 = os_log_create("com.apple.camera", "DynamicShutter");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchBeganUnresolvedStart", buf, 2u);
          }

          [(CAMDynamicShutterControl *)self _setShutterState:5];
        }

        else
        {
          v16 = os_log_create("com.apple.camera", "DynamicShutter");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchBeganTapStart", buf, 2u);
          }

          [(CAMDynamicShutterControl *)self _handleTapToStartStop];
          [(CAMDynamicShutterControl *)self set_shouldCheckTouchUpEvents:0];
        }
      }

      if ([(CAMDynamicShutterControl *)self _shouldShortPressOnTouchDown])
      {
        v10 = os_log_create("com.apple.camera", "DynamicShutter");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchBeganShortPress", buf, 2u);
        }

        if (self->_delegateFlags.respondsToDidShortPress)
        {
          delegate2 = [(CAMDynamicShutterControl *)self delegate];
          [delegate2 dynamicShutterControlDidShortPress:self];
        }

        [(CAMDynamicShutterControl *)self set_shouldCheckTouchUpEvents:0];
      }

      if (![(CAMDynamicShutterControl *)self _isDraggingEnabled]|| ![(CAMDynamicShutterControl *)self _shouldStartTrackingHandle]|| [(CAMDynamicShutterControl *)self _ignoreNextCancelledGesture])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!began->var3 || ![(CAMDynamicShutterControl *)self _isDraggingEnabled])
    {
      goto LABEL_37;
    }

    if ([(CAMDynamicShutterControl *)self _dragHandleState]== 7)
    {
      if (![(CAMDynamicShutterControl *)self _shouldStartTrackingHandle])
      {
LABEL_35:
        [(CAMDynamicShutterControl *)self _setDragHandleState:5 animated:1];
        selfCopy2 = self;
        v15 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
      if (![(CAMDynamicShutterControl *)self _shouldStartTrackingHandle])
      {
        if (_dragHandleState != 6)
        {
LABEL_37:
          if ([(CAMDynamicShutterControl *)self _isTrackingHandleState:[(CAMDynamicShutterControl *)self _dragHandleState]])
          {
            [(CAMDynamicShutterControl *)self _updateStateForTouchPoint:began->var0.x, began->var0.y];
            [(CAMDynamicShutterControl *)self _updateTrackingDragHandleOffsetTargetWithPoint:began->var0.x, began->var0.y];
          }

          _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
          [_displayLink setPaused:0];
          goto LABEL_40;
        }

        goto LABEL_35;
      }
    }

LABEL_30:
    [(CAMDynamicShutterControl *)self _setDragHandleState:3 animated:1];
    selfCopy2 = self;
    v15 = 0;
LABEL_36:
    [(CAMDynamicShutterControl *)selfCopy2 _setInnerShapeState:v15 animated:1];
    goto LABEL_37;
  }

  _displayLink = os_log_create("com.apple.camera", "DynamicShutter");
  if (os_log_type_enabled(_displayLink, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, _displayLink, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchBeganReset", buf, 2u);
  }

LABEL_40:
}

- (void)_touchSequenceChanged:(id *)changed
{
  _feedbackController = [(CAMDynamicShutterControl *)self _feedbackController];
  [_feedbackController prepareDiscreteFeedback:4];

  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v7 = v6;
  y = changed->var0.y;
  if ([(CAMDynamicShutterControl *)self _isTrackingHandleState:[(CAMDynamicShutterControl *)self _dragHandleState]])
  {
    [(CAMDynamicShutterControl *)self _updateStateForTouchPoint:changed->var0.x, changed->var0.y];
    [(CAMDynamicShutterControl *)self _updateTrackingDragHandleOffsetTargetWithPoint:changed->var0.x, changed->var0.y];
  }

  v9 = v7 - y;
  [(CAMDynamicShutterControl *)self settings];
  if (v18 == 1 && ![(CAMDynamicShutterControl *)self _didCancelZoomForCurrentGesture]&& fabs(v9) > 55.0 && ![(CAMDynamicShutterControl *)self isZooming])
  {
    [(CAMDynamicShutterControl *)self setZooming:1];
    [(CAMDynamicShutterControl *)self set_initalZoomGestureOffsetY:v9];
    if (self->_delegateFlags.respondsToDidStartZoomGesture)
    {
      delegate = [(CAMDynamicShutterControl *)self delegate];
      [delegate dynamicShutterControlDidStartZoomGesture:self];
    }
  }

  if ([(CAMDynamicShutterControl *)self _isStartStopShutterState:[(CAMDynamicShutterControl *)self _shutterState]]&& [(CAMDynamicShutterControl *)self isZooming]&& self->_delegateFlags.respondsToDidChangeRelativeZoomProgress)
  {
    [(CAMDynamicShutterControl *)self _initalZoomGestureOffsetY];
    v12 = v9 - v11;
    [(CAMDynamicShutterControl *)self _absoluteShutterToBottomDistance];
    [(CAMDynamicShutterControl *)self _initalZoomGestureOffsetY];
    if (v12 >= 0.0)
    {
      CEKProgress();
      v14 = v15;
    }

    else
    {
      CEKProgressClamped();
      v14 = -v13;
    }

    delegate2 = [(CAMDynamicShutterControl *)self delegate];
    [delegate2 dynamicShutterControl:self didChangeRelativeZoomProgress:v14];
  }

  _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
  [_displayLink setPaused:0];
}

- (void)_touchSequenceEnded:(id *)ended forReset:(BOOL)reset
{
  resetCopy = reset;
  if (([(CAMDynamicShutterControl *)self _touchSequencePhase]- 1) <= 1)
  {
    [(CAMDynamicShutterControl *)self _setTouchSequencePhase:3];
  }

  [(CAMDynamicShutterControl *)self _firstTouch];
  v7 = v38 == 1 && [(CAMDynamicShutterControl *)self _isHandleWithinLockRing];
  [(CAMDynamicShutterControl *)self _firstTouch];
  v8 = v37 == 1 && ended->var2;
  [(CAMDynamicShutterControl *)self _firstTouch];
  v9 = v36;
  v10 = v36 != 1 || !ended->var4;
  [(CAMDynamicShutterControl *)self settings];
  if (v7)
  {
    v11 = self->_delegateFlags.respondsToDidPressLockButton && v35 == 2;
    if (v11 && !resetCopy)
    {
      delegate = [(CAMDynamicShutterControl *)self delegate];
      [delegate dynamicShutterControlDidPressLockButton:self];
    }
  }

  if (!v10 && !resetCopy && self->_delegateFlags.respondsToDidPressPauseResumeButton)
  {
    delegate2 = [(CAMDynamicShutterControl *)self delegate];
    [delegate2 dynamicShutterControlDidPressPauseResumeButton:self];
  }

  if (v8 && [(CAMDynamicShutterControl *)self _shouldCheckTouchUpEvents]&& !resetCopy)
  {
    _shouldShortPressOnTouchUp = [(CAMDynamicShutterControl *)self _shouldShortPressOnTouchUp];
    if ([(CAMDynamicShutterControl *)self _isExternalShutterPressed])
    {
      [(CAMDynamicShutterControl *)self _externalLongPressVideoDuration];
    }

    else
    {
      [(CAMDynamicShutterControl *)self _longPressVideoDuration];
    }

    v16 = v15;
    var1 = ended->var1;
    [(CAMDynamicShutterControl *)self _firstTouch];
    [(CAMDynamicShutterControl *)self settings];
    if (v33)
    {
      _isDraggingEnabled = var1 - v34 < v16;
    }

    else
    {
      _isDraggingEnabled = [(CAMDynamicShutterControl *)self _isDraggingEnabled];
    }

    if (_shouldShortPressOnTouchUp && _isDraggingEnabled)
    {
      if (!self->_delegateFlags.respondsToDidShortPress)
      {
        goto LABEL_41;
      }

      v19 = os_log_create("com.apple.camera", "DynamicShutter");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchEndedShortPress", buf, 2u);
      }

      delegate3 = [(CAMDynamicShutterControl *)self delegate];
      [delegate3 dynamicShutterControlDidShortPress:self];
    }

    else
    {
      if (_isDraggingEnabled)
      {
        goto LABEL_41;
      }

      delegate3 = os_log_create("com.apple.camera", "DynamicShutter");
      if (os_log_type_enabled(delegate3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, delegate3, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchEndedIgnoredShortPressTimeout", buf, 2u);
      }
    }

LABEL_41:
    _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
    if (_shutterState <= 2)
    {
      if (!_shutterState)
      {
LABEL_49:
        [(CAMDynamicShutterControl *)self settings];
        if (v31 == 1)
        {
          v22 = os_log_create("com.apple.camera", "DynamicShutter");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchEndedTapStart", buf, 2u);
          }

          [(CAMDynamicShutterControl *)self _handleTapToStartStop];
        }

        goto LABEL_53;
      }

      if (_shutterState != 2)
      {
        goto LABEL_53;
      }

      [(CAMDynamicShutterControl *)self _setDragHandleState:1 animated:0];
      [(CAMDynamicShutterControl *)self _setDragHandleState:0 animated:1];
      [(CAMDynamicShutterControl *)self _setInnerShapeState:0 animated:1];
    }

    else if ((_shutterState - 3) >= 2)
    {
      if (_shutterState != 5)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }

    [(CAMDynamicShutterControl *)self _setShutterState:0];
  }

LABEL_53:
  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  if (_dragHandleState > 8)
  {
    goto LABEL_67;
  }

  if (((1 << _dragHandleState) & 0x1C3) != 0)
  {
    if (v9)
    {
      goto LABEL_67;
    }

    _shutterState2 = [(CAMDynamicShutterControl *)self _shutterState];
    if ((_shutterState2 - 3) < 3)
    {
      goto LABEL_61;
    }

    if (_shutterState2 != 1)
    {
      goto LABEL_67;
    }

LABEL_60:
    [(CAMDynamicShutterControl *)self _setDragHandleState:0 animated:1];
    [(CAMDynamicShutterControl *)self _setInnerShapeState:0 animated:1];
LABEL_61:
    [(CAMDynamicShutterControl *)self _setShutterState:0];
    goto LABEL_67;
  }

  if (((1 << _dragHandleState) & 0xC) != 0)
  {
    goto LABEL_60;
  }

  [(CAMDynamicShutterControl *)self settings];
  if (v30 == 2)
  {
    selfCopy2 = self;
    v26 = 7;
  }

  else
  {
    if (v30 != 1)
    {
      goto LABEL_67;
    }

    selfCopy2 = self;
    v26 = 6;
  }

  [(CAMDynamicShutterControl *)selfCopy2 _setDragHandleState:v26 animated:1];
  [(CAMDynamicShutterControl *)self _setInnerShapeState:1 animated:1];
LABEL_67:
  if (self->_delegateFlags.respondsToGesturesDidEnd)
  {
    delegate4 = [(CAMDynamicShutterControl *)self delegate];
    [delegate4 dynamicShutterControlGesturesDidEnd:self];
  }

  [(CAMDynamicShutterControl *)self set_shouldCheckTouchUpEvents:0];
  if ([(CAMDynamicShutterControl *)self isZooming]&& self->_delegateFlags.respondsToDidStopZoomGesture)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicShutterControlDidStopZoomGesture:self];
  }

  [(CAMDynamicShutterControl *)self setZooming:0];
  _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
  [_displayLink setPaused:0];
}

- (void)_touchSequenceCancelledForReset:(BOOL)reset
{
  resetCopy = reset;
  [(CAMDynamicShutterControl *)self _mostRecentTouch];
  [(CAMDynamicShutterControl *)self _touchSequenceEnded:v7 forReset:resetCopy];
  if (self->_delegateFlags.respondsToGesturesDidCancel)
  {
    delegate = [(CAMDynamicShutterControl *)self delegate];
    [delegate dynamicShutterControlGesturesDidCancel:self];
  }

  v6 = os_log_create("com.apple.camera", "DynamicShutter");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchEndedCancelled", v7, 2u);
  }
}

- (void)_cancelTouchSequenceForReset:(BOOL)reset
{
  [(CAMDynamicShutterControl *)self _touchSequenceCancelledForReset:reset];
  _gestureRecognizer = [(CAMDynamicShutterControl *)self _gestureRecognizer];
  state = [_gestureRecognizer state];

  if ((state - 1) <= 1)
  {
    [(CAMDynamicShutterControl *)self _setIgnoreNextCancelledGesture:1];
    _gestureRecognizer2 = [(CAMDynamicShutterControl *)self _gestureRecognizer];
    [_gestureRecognizer2 cancelGesture];
  }
}

- (void)_handleTapToStartStop
{
  [(CAMDynamicShutterControl *)self settings];
  if (v6 < 2)
  {
    selfCopy2 = self;
    v4 = 1;
    v5 = 0;
LABEL_5:
    [(CAMDynamicShutterControl *)selfCopy2 _setDragHandleState:v4 animated:v5];
    goto LABEL_6;
  }

  if (v6 == 2)
  {
    [(CAMDynamicShutterControl *)self _setDragHandleState:8 animated:0];
    selfCopy2 = self;
    v4 = 7;
    v5 = 1;
    goto LABEL_5;
  }

LABEL_6:
  [(CAMDynamicShutterControl *)self _setInnerShapeState:1 animated:1];
  [(CAMDynamicShutterControl *)self _setShutterState:2];
}

- (BOOL)externalButtonPressedWithBehavior:(int64_t)behavior
{
  _isExternalShutterPressed = [(CAMDynamicShutterControl *)self _isExternalShutterPressed];
  isTracking = [(CAMDynamicShutterControl *)self isTracking];
  isEnabled = [(CAMDynamicShutterControl *)self isEnabled];
  v8 = !_isExternalShutterPressed & isEnabled & (isTracking ^ 1);
  if ((isEnabled & 1) == 0 && self->_delegateFlags.respondsToTouchAttemptedWhileDisabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shutterControlTouchAttemptedWhileDisabled:self];
  }

  if (v8)
  {
    [(CAMDynamicShutterControl *)self _setExternalShutterPressed:1];
    [(CAMDynamicShutterControl *)self _shutterButtonCenter];
    *buf = 0u;
    v16 = 0u;
    [(CAMDynamicShutterControl *)self _touchForPoint:?];
    v13 = *buf;
    v14 = v16;
    [(CAMDynamicShutterControl *)self _setFirstTouch:&v13];
    v10 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: TouchBeganExternal", &v13, 2u);
    }

    v13 = *buf;
    v14 = v16;
    [(CAMDynamicShutterControl *)self _touchSequenceBegan:&v13];
    v13 = *buf;
    v14 = v16;
    [(CAMDynamicShutterControl *)self _setMostRecentTouch:&v13];
    [(CAMDynamicShutterControl *)self set_externalShutterLongPressBehavior:behavior];
  }

  else
  {
    v11 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: External shutter button press ignored", buf, 2u);
    }
  }

  return v8;
}

- (BOOL)externalButtonReleased
{
  _isExternalShutterPressed = [(CAMDynamicShutterControl *)self _isExternalShutterPressed];
  if (_isExternalShutterPressed)
  {
    *buf = 0u;
    v11 = 0u;
    [(CAMDynamicShutterControl *)self _shutterButtonCenter];
    [(CAMDynamicShutterControl *)self _touchForPoint:?];
    v8 = *buf;
    v9 = v11;
    [(CAMDynamicShutterControl *)self _touchSequenceEnded:&v8 forReset:0];
    v8 = *buf;
    v9 = v11;
    [(CAMDynamicShutterControl *)self _setMostRecentTouch:&v8];
    v4 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "Dynamic Shutter: TouchEndedExternal";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Dynamic Shutter: External shutter button release ignored, external shutter not pressed";
      v6 = buf;
      goto LABEL_6;
    }
  }

  [(CAMDynamicShutterControl *)self _setExternalShutterPressed:0];
  [(CAMDynamicShutterControl *)self set_externalShutterLongPressBehavior:0];
  return _isExternalShutterPressed;
}

- (void)externalButtonCancelled
{
  [(CAMDynamicShutterControl *)self externalButtonReleased];
  [(CAMDynamicShutterControl *)self set_externalShutterLongPressBehavior:0];
  if (self->_delegateFlags.respondsToGesturesDidCancel)
  {
    delegate = [(CAMDynamicShutterControl *)self delegate];
    [delegate dynamicShutterControlGesturesDidCancel:self];
  }
}

- (BOOL)externalLockButtonPressed
{
  [(CAMDynamicShutterControl *)self _dragHandleXPosition];
  v4 = v3;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v5 = [(CAMDynamicShutterControl *)self _isPointWithinLockRingTouchArea:v4];
  _isExternalLockButtonPressed = [(CAMDynamicShutterControl *)self _isExternalLockButtonPressed];
  isTracking = [(CAMDynamicShutterControl *)self isTracking];
  isEnabled = [(CAMDynamicShutterControl *)self isEnabled];
  v9 = (v5 && !_isExternalLockButtonPressed) & isEnabled & (isTracking ^ 1);
  if ((isEnabled & 1) == 0 && self->_delegateFlags.respondsToTouchAttemptedWhileDisabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shutterControlTouchAttemptedWhileDisabled:self];
  }

  if (v9)
  {
    [(CAMDynamicShutterControl *)self _setExternalLockButtonPressed:1];
    *buf = 0u;
    v16 = 0u;
    [(CAMDynamicShutterControl *)self _lockButtonCenter];
    [(CAMDynamicShutterControl *)self _touchForPoint:?];
    v13 = *buf;
    v14 = v16;
    [(CAMDynamicShutterControl *)self _setFirstTouch:&v13];
    v13 = *buf;
    v14 = v16;
    [(CAMDynamicShutterControl *)self _touchSequenceBegan:&v13];
    v13 = *buf;
    v14 = v16;
    [(CAMDynamicShutterControl *)self _setMostRecentTouch:&v13];
  }

  else
  {
    v11 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: External lock button press ignored", buf, 2u);
    }
  }

  return v9;
}

- (void)externalLockButtonReleased
{
  _isExternalLockButtonPressed = [(CAMDynamicShutterControl *)self _isExternalLockButtonPressed];
  [(CAMDynamicShutterControl *)self _setExternalLockButtonPressed:0];
  if (_isExternalLockButtonPressed)
  {
    *buf = 0u;
    v8 = 0u;
    [(CAMDynamicShutterControl *)self _lockButtonCenter];
    [(CAMDynamicShutterControl *)self _touchForPoint:?];
    v5 = *buf;
    v6 = v8;
    [(CAMDynamicShutterControl *)self _touchSequenceEnded:&v5 forReset:0];
    v5 = *buf;
    v6 = v8;
    [(CAMDynamicShutterControl *)self _setMostRecentTouch:&v5];
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: External lock button button release ignored, external lock button not pressed", buf, 2u);
    }
  }
}

- (void)captureMenuItemTapped
{
  if ([(CAMDynamicShutterControl *)self isEnabled])
  {
    v3 = os_log_create("com.apple.camera", "DynamicShutter");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Shutter: Handling capture menu item action as external button press/release", buf, 2u);
    }

    [(CAMDynamicShutterControl *)self externalButtonPressedWithBehavior:0];
    [(CAMDynamicShutterControl *)self externalButtonReleased];
  }

  else if (self->_delegateFlags.respondsToTouchAttemptedWhileDisabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shutterControlTouchAttemptedWhileDisabled:self];
  }
}

- (void)_setCounterValue:(int64_t)value
{
  if (self->__counterValue != value)
  {
    self->__counterValue = value;
    [(CAMDynamicShutterControl *)self _updateCounterLabelText];
  }
}

- (void)_updateCounterLabelText
{
  _counterLabel = [(CAMDynamicShutterControl *)self _counterLabel];
  if (_counterLabel)
  {
    v7 = _counterLabel;
    _counterNumberFormatter = [objc_opt_class() _counterNumberFormatter];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMDynamicShutterControl _counterValue](self, "_counterValue")}];
    v6 = [_counterNumberFormatter stringFromNumber:v5];

    [v7 setText:v6];
    _counterLabel = v7;
  }
}

- (int64_t)incrementCounter
{
  v3 = ([(CAMDynamicShutterControl *)self _counterValue]+ 1);
  if (v3 > 999.0)
  {
    v3 = 999.0;
  }

  [(CAMDynamicShutterControl *)self _setCounterValue:v3];

  return [(CAMDynamicShutterControl *)self _counterValue];
}

+ (id)_counterNumberFormatter
{
  if (_counterNumberFormatter_onceToken_0 != -1)
  {
    +[CAMDynamicShutterControl _counterNumberFormatter];
  }

  v3 = _counterNumberFormatter_formatter_0;

  return v3;
}

uint64_t __51__CAMDynamicShutterControl__counterNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _counterNumberFormatter_formatter_0;
  _counterNumberFormatter_formatter_0 = v0;

  [_counterNumberFormatter_formatter_0 setGeneratesDecimalNumbers:0];
  [_counterNumberFormatter_formatter_0 setNumberStyle:0];
  v2 = _counterNumberFormatter_formatter_0;

  return [v2 setMinimumIntegerDigits:2];
}

- (void)setSettings:(id *)settings
{
  v3 = *&settings->var6;
  v5[2] = *&settings->var4;
  v5[3] = v3;
  var8 = settings->var8;
  v4 = *&settings->var2;
  v5[0] = *&settings->var0;
  v5[1] = v4;
  [(CAMDynamicShutterControl *)self setSettings:v5 animated:0];
}

- (void)setSettings:(id *)settings animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.var0 = [(CAMDynamicShutterControl *)self privateSettings];
  v8 = *&settings->var6;
  v10[2] = *&settings->var4;
  v10[3] = v8;
  var8 = settings->var8;
  v9 = *&settings->var2;
  v10[0] = *&settings->var0;
  v10[1] = v9;
  [(CAMDynamicShutterControl *)self setSettings:v10 privateSettings:v7.var0 animated:animatedCopy];
}

- (void)setSettings:(id *)settings privateSettings:(id)privateSettings animated:(BOOL)animated
{
  animatedCopy = animated;
  if (settings->var0 != self->_settings.tapBehavior || settings->var1 != self->_settings.longPressBehavior || settings->var2 != self->_settings.dragRightBehavior || settings->var3 != self->_settings.dragLeftBehavior || settings->var5 != self->_settings.lockBehavior || settings->var6 != self->_settings.ringStyle || settings->var7 != self->_settings.stopColor || settings->var8 != self->_settings.idleColor || settings->var4 != self->_settings.allowsZoom || privateSettings.var0 != self->_privateSettings.allowPauseResume)
  {
    *&self->_settings.tapBehavior = *&settings->var0;
    v7 = *&settings->var2;
    v8 = *&settings->var4;
    v9 = *&settings->var6;
    self->_settings.idleColor = settings->var8;
    *&self->_settings.allowsZoom = v8;
    *&self->_settings.ringStyle = v9;
    *&self->_settings.dragRightBehavior = v7;
    self->_privateSettings.allowPauseResume = privateSettings.var0;
    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:animated];
    [(CAMDynamicShutterControl *)self _updateOuterAndInnerLayersAnimated:animatedCopy];

    [(CAMDynamicShutterControl *)self _updateCenterLegibilityView];
  }
}

- (BOOL)_isDraggingEnabled
{
  [(CAMDynamicShutterControl *)self settings];
  if (v5)
  {
    return 1;
  }

  [(CAMDynamicShutterControl *)self settings];
  return v4 != 0;
}

- (id)_outerImage
{
  [(CAMDynamicShutterControl *)self settings];
  if (v13 == 1)
  {
    [(CAMDynamicShutterControl *)self _shutterButtonSpec];
    v3 = objc_opt_class();
    if (v3)
    {
      [v3 shutterButtonSpecForLayoutStyle:0];
      v4 = v11;
    }

    else
    {
      v4 = 0.0;
    }

    if (v12 <= v4)
    {
      v6 = @"CAMDynamicShutterButtonSlomoLegacyPhone";
    }

    else
    {
      v6 = @"CAMShutterButtonThinSlomo";
    }

    v7 = MEMORY[0x1E69DCAB8];
    v8 = CAMCameraUIFrameworkBundle();
    v9 = [v7 imageNamed:v6 inBundle:v8];
    v5 = [v9 imageWithRenderingMode:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateOuterAndInnerLayersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMDynamicShutterControl *)self settings];
  v5 = v37;
  [(CAMDynamicShutterControl *)self settings];
  v6 = v36;
  _liquidRenderingMethod = [(CAMDynamicShutterControl *)self _liquidRenderingMethod];
  v8 = v36 != 2 && v37 != 1;
  v9 = _liquidRenderingMethod < 2 && v8;
  if (v37 == 1)
  {
    _centerOuterImageView = [(CAMDynamicShutterControl *)self _centerOuterImageView];

    if (!_centerOuterImageView)
    {
      v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
      _centerOuterView = [(CAMDynamicShutterControl *)self _centerOuterView];
      [_centerOuterView frame];
      v13 = [v11 initWithFrame:?];
      [(CAMDynamicShutterControl *)self set_centerOuterImageView:v13];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      _centerOuterImageView2 = [(CAMDynamicShutterControl *)self _centerOuterImageView];
      [_centerOuterImageView2 setTintColor:whiteColor];

      _centerOuterImageView3 = [(CAMDynamicShutterControl *)self _centerOuterImageView];
      _centerOuterView2 = [(CAMDynamicShutterControl *)self _centerOuterView];
      [CAMView view:self insertSubview:_centerOuterImageView3 belowSubview:_centerOuterView2];
    }

    _outerImage = [(CAMDynamicShutterControl *)self _outerImage];
    _centerOuterImageView4 = [(CAMDynamicShutterControl *)self _centerOuterImageView];
    [_centerOuterImageView4 setImage:_outerImage];
  }

  if (v36 == 2)
  {
    _centerTimelapseOuterView = [(CAMDynamicShutterControl *)self _centerTimelapseOuterView];

    if (!_centerTimelapseOuterView)
    {
      v21 = [CAMTimelapseShutterRingView alloc];
      _centerOuterView3 = [(CAMDynamicShutterControl *)self _centerOuterView];
      [_centerOuterView3 frame];
      v35[0] = xmmword_1A3A6AA88;
      v35[1] = unk_1A3A6AA98;
      v23 = [(CAMTimelapseShutterRingView *)v21 initWithFrame:v35 spec:?];
      [(CAMDynamicShutterControl *)self set_centerTimelapseOuterView:v23];

      _centerTimelapseOuterView2 = [(CAMDynamicShutterControl *)self _centerTimelapseOuterView];
      _centerOuterView4 = [(CAMDynamicShutterControl *)self _centerOuterView];
      [CAMView view:self insertSubview:_centerTimelapseOuterView2 belowSubview:_centerOuterView4];
    }

    v26 = [(CAMDynamicShutterControl *)self _isStartStopShutterState:[(CAMDynamicShutterControl *)self _shutterState]];
    _centerTimelapseOuterView3 = [(CAMDynamicShutterControl *)self _centerTimelapseOuterView];
    [_centerTimelapseOuterView3 setAnimating:v26];
  }

  showDisabled = [(CAMDynamicShutterControl *)self showDisabled];
  if (v9)
  {
    [(CAMDynamicShutterControl *)self _createCenterOuterViewIfNeeded];
  }

  v29 = 1.0;
  if (showDisabled)
  {
    v29 = 0.4;
  }

  v30 = 0.3;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__CAMDynamicShutterControl__updateOuterAndInnerLayersAnimated___block_invoke;
  v31[3] = &unk_1E76FDF80;
  v31[4] = self;
  v32 = v9;
  if (!animatedCopy)
  {
    v30 = 0.0;
  }

  *&v31[5] = v29;
  v33 = v5 == 1;
  v34 = v6 == 2;
  [CAMView animateIfNeededWithDuration:v31 animations:v30];
  [(CAMDynamicShutterControl *)self set_needsInitialOuterAndInnerLayerUpdate:0];
}

void __63__CAMDynamicShutterControl__updateOuterAndInnerLayersAnimated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  v3 = 0.0;
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
  }

  v4 = [*(a1 + 32) _centerOuterView];
  [v4 setAlpha:v3];

  if (*(a1 + 49) == 1)
  {
    v2 = *(a1 + 40);
  }

  v5 = [*(a1 + 32) _centerOuterImageView];
  [v5 setAlpha:v2];

  v6 = 0.0;
  if (*(a1 + 50) == 1)
  {
    v6 = *(a1 + 40);
  }

  v7 = [*(a1 + 32) _centerTimelapseOuterView];
  [v7 setAlpha:v6];
}

- (void)setSpinning:(BOOL)spinning
{
  if (self->_spinning != spinning)
  {
    self->_spinning = spinning;
    [(CAMDynamicShutterControl *)self _updateSpinningAnimations];
  }
}

- (void)_updateSpinningAnimations
{
  isSpinning = [(CAMDynamicShutterControl *)self isSpinning];
  _spinnerView = [(CAMDynamicShutterControl *)self _spinnerView];
  if (!_spinnerView)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = CAMCameraUIFrameworkBundle();
    v7 = [v5 imageNamed:@"CAMDynamicShutterButtonSpinner" inBundle:v6];
    v8 = [v7 imageWithRenderingMode:2];

    _spinnerView = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    [(CAMDynamicShutterControl *)self set_spinnerView:_spinnerView];
  }

  layer = [_spinnerView layer];
  if (isSpinning)
  {
    [(CAMDynamicShutterControl *)self addSubview:_spinnerView];
    [(CAMDynamicShutterControl *)self _shutterButtonCenter];
    [_spinnerView setCenter:?];
    [(CAMDynamicShutterControl *)self _shutterButtonSpec];
    InnerCircleDiameter = CAMShutterButtonSpecGetInnerCircleDiameter(v22);
    [_spinnerView setBounds:{0.0, 0.0, InnerCircleDiameter, InnerCircleDiameter}];
    [(CAMDynamicShutterControl *)self settings];
    v11 = 0.8;
    if (v21 != 1)
    {
      v11 = 0.0;
    }

    if (!v21)
    {
      v11 = 0.501960784;
    }

    v12 = [MEMORY[0x1E69DC888] colorWithRed:v11 green:v11 blue:v11 alpha:1.0];
    [_spinnerView setTintColor:v12];

    [(CAMDynamicShutterControl *)self _updateLiquidShutterAlpha];
    [_spinnerView setAlpha:1.0];
    v13 = +[CAMShutterUtilities spinnerAnimation];
    [layer addAnimation:v13 forKey:@"spinnerRotation"];
  }

  else
  {
    v14 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__CAMDynamicShutterControl__updateSpinningAnimations__block_invoke;
    v19[3] = &unk_1E76F7960;
    v19[4] = self;
    v20 = _spinnerView;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__CAMDynamicShutterControl__updateSpinningAnimations__block_invoke_2;
    v15[3] = &unk_1E76FB068;
    v15[4] = self;
    v16 = v20;
    v17 = layer;
    v18 = @"spinnerRotation";
    [v14 animateWithDuration:327680 delay:v19 options:v15 animations:0.3 completion:0.0];
  }
}

uint64_t __53__CAMDynamicShutterControl__updateSpinningAnimations__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLiquidShutterAlpha];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __53__CAMDynamicShutterControl__updateSpinningAnimations__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isSpinning];
  if ((result & 1) == 0)
  {
    [*(a1 + 40) removeFromSuperview];
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [v3 removeAnimationForKey:v4];
  }

  return result;
}

- (void)setPausedDuringVideo:(BOOL)video animated:(BOOL)animated
{
  if (self->_pausedDuringVideo != video)
  {
    self->_pausedDuringVideo = video;
    [(CAMDynamicShutterControl *)self _updateSpringTargetsAnimated:animated];
  }
}

- (void)setShowContrastBorder:(BOOL)border
{
  if (self->_showContrastBorder != border)
  {
    self->_showContrastBorder = border;
    if (border)
    {
      if (!self->__leftLineLegibilityView)
      {
        v5 = objc_alloc(MEMORY[0x1E69DD250]);
        v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        leftLineLegibilityView = self->__leftLineLegibilityView;
        self->__leftLineLegibilityView = v6;

        v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
        cGColor = [v8 CGColor];
        layer = [(UIView *)self->__leftLineLegibilityView layer];
        [layer setBorderColor:cGColor];

        layer2 = [(UIView *)self->__leftLineLegibilityView layer];
        [layer2 setBorderWidth:1.0];

        [(UIView *)self->__leftLineLegibilityView setUserInteractionEnabled:0];
        v12 = self->__leftLineLegibilityView;
        _leftLineView = [(CAMDynamicShutterControl *)self _leftLineView];
        [CAMView view:self insertSubview:v12 belowSubview:_leftLineView];
      }

      if (!self->__rightLineLegibilityView)
      {
        v14 = objc_alloc(MEMORY[0x1E69DD250]);
        v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        rightLineLegibilityView = self->__rightLineLegibilityView;
        self->__rightLineLegibilityView = v15;

        v17 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
        cGColor2 = [v17 CGColor];
        layer3 = [(UIView *)self->__rightLineLegibilityView layer];
        [layer3 setBorderColor:cGColor2];

        layer4 = [(UIView *)self->__rightLineLegibilityView layer];
        [layer4 setBorderWidth:1.0];

        [(UIView *)self->__rightLineLegibilityView setUserInteractionEnabled:0];
        v21 = self->__rightLineLegibilityView;
        _rightLineView = [(CAMDynamicShutterControl *)self _rightLineView];
        [CAMView view:self insertSubview:v21 belowSubview:_rightLineView];
      }

      if ([(CAMDynamicShutterControl *)self _wantsLateralOuterViews]&& !self->__centerOuterLegibilityView)
      {
        v23 = objc_alloc(MEMORY[0x1E69DD250]);
        v24 = [v23 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        centerOuterLegibilityView = self->__centerOuterLegibilityView;
        self->__centerOuterLegibilityView = v24;

        v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
        [(UIView *)self->__centerOuterLegibilityView setBackgroundColor:v26];

        [(UIView *)self->__centerOuterLegibilityView setUserInteractionEnabled:0];
        v27 = self->__centerOuterLegibilityView;
        _centerOuterView = [(CAMDynamicShutterControl *)self _centerOuterView];
        [CAMView view:self insertSubview:v27 belowSubview:_centerOuterView];
      }

      if ([(CAMDynamicShutterControl *)self _wantsLateralOuterViews]&& !self->__lockButtonOuterLegibilityView)
      {
        v29 = objc_alloc(MEMORY[0x1E69DD250]);
        v30 = [v29 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        lockButtonOuterLegibilityView = self->__lockButtonOuterLegibilityView;
        self->__lockButtonOuterLegibilityView = v30;

        v32 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
        [(UIView *)self->__lockButtonOuterLegibilityView setBackgroundColor:v32];

        [(UIView *)self->__lockButtonOuterLegibilityView setUserInteractionEnabled:0];
        v33 = self->__lockButtonOuterLegibilityView;
        _lockButtonOuterView = [(CAMDynamicShutterControl *)self _lockButtonOuterView];
        [CAMView view:self insertSubview:v33 belowSubview:_lockButtonOuterView];
      }

      if ([(CAMDynamicShutterControl *)self _wantsLateralOuterViews]&& !self->__pauseResumeButtonLegibilityView)
      {
        v35 = objc_alloc(MEMORY[0x1E69DD250]);
        v36 = [v35 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        pauseResumeButtonLegibilityView = self->__pauseResumeButtonLegibilityView;
        self->__pauseResumeButtonLegibilityView = v36;

        v38 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
        [(UIView *)self->__pauseResumeButtonLegibilityView setBackgroundColor:v38];

        [(UIView *)self->__pauseResumeButtonLegibilityView setUserInteractionEnabled:0];
        v39 = self->__pauseResumeButtonLegibilityView;
        _pauseResumeButtonOuterView = [(CAMDynamicShutterControl *)self _pauseResumeButtonOuterView];
        [CAMView view:self insertSubview:v39 belowSubview:_pauseResumeButtonOuterView];
      }
    }

    [(CAMDynamicShutterControl *)self _updateCenterLegibilityView];
    [(CAMDynamicShutterControl *)self setNeedsLayout];
    _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
    [_displayLink setPaused:0];
  }
}

- (void)_updateCenterLegibilityView
{
  [(CAMDynamicShutterControl *)self settings];
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(CAMDynamicShutterControl *)self showContrastBorder]^ 1;
  }

  _centerOuterLegibilityView = [(CAMDynamicShutterControl *)self _centerOuterLegibilityView];
  [_centerOuterLegibilityView setHidden:v3];
}

- (void)setShowDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_showDisabled != disabled)
  {
    v7[5] = v4;
    v7[6] = v5;
    self->_showDisabled = disabled;
    v6 = 0.3;
    if (!animated)
    {
      v6 = 0.0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__CAMDynamicShutterControl_setShowDisabled_animated___block_invoke;
    v7[3] = &unk_1E76F77B0;
    v7[4] = self;
    [CAMView animateIfNeededWithDuration:2 options:v7 animations:0 completion:v6];
  }
}

uint64_t __53__CAMDynamicShutterControl_setShowDisabled_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLiquidShutterAlpha];
  v2 = *(a1 + 32);

  return [v2 _updateOuterAndInnerLayersAnimated:0];
}

- (double)_liquidShutterAlpha
{
  if ([(CAMDynamicShutterControl *)self isSpinning])
  {
    return 0.2;
  }

  showDisabled = [(CAMDynamicShutterControl *)self showDisabled];
  result = 0.4;
  if (!showDisabled)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateLiquidShutterAlpha
{
  [(CAMDynamicShutterControl *)self _liquidShutterAlpha];
  v4 = v3;
  _metalView = [(CAMDynamicShutterControl *)self _metalView];
  [_metalView setAlpha:v4];

  liquidShutterView = [(CAMDynamicShutterControl *)self liquidShutterView];
  [liquidShutterView setAlpha:v4];

  if (self->_delegateFlags.respondsToDidUpdateLiquidShutter)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shutterControlDidUpdateLiquidShutter:self];
  }
}

- (int64_t)_consumeAndUpdateTouchSequencePhase
{
  _touchSequencePhase = [(CAMDynamicShutterControl *)self _touchSequencePhase];
  v4 = _touchSequencePhase;
  if (_touchSequencePhase == 1)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (_touchSequencePhase == 3)
  {
    v5 = 0;
LABEL_5:
    [(CAMDynamicShutterControl *)self _setTouchSequencePhase:v5];
  }

  return v4;
}

- (void)_updateForTargetTimestamp:(double)timestamp
{
  v32 = *MEMORY[0x1E69E9840];
  _consumeAndUpdateTouchSequencePhase = [(CAMDynamicShutterControl *)self _consumeAndUpdateTouchSequencePhase];
  v6 = [(CAMDynamicShutterControl *)self _isActiveTouchSequencePhase:_consumeAndUpdateTouchSequencePhase];
  [(CAMDynamicShutterControl *)self _updateTrackingSpringTargets];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  _springs = [(CAMDynamicShutterControl *)self _springs];
  v8 = [_springs countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(_springs);
        }

        [*(*(&v26 + 1) + 8 * v11++) updateForTimestamp:timestamp];
      }

      while (v9 != v11);
      v9 = [_springs countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  _innerShapeWidthSpring = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
  isConverged = [_innerShapeWidthSpring isConverged];

  if (isConverged)
  {
    _innerShapeWidthSpring2 = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
    [_innerShapeWidthSpring2 setTension:240.0];

    _innerShapeWidthSpring3 = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
    [_innerShapeWidthSpring3 setFriction:30.0];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  _springs2 = [(CAMDynamicShutterControl *)self _springs];
  v17 = [_springs2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
LABEL_12:
    v20 = 0;
    while (1)
    {
      if (*v23 != v19)
      {
        objc_enumerationMutation(_springs2);
      }

      if (![*(*(&v22 + 1) + 8 * v20) isConverged])
      {
        goto LABEL_20;
      }

      if (v18 == ++v20)
      {
        v18 = [_springs2 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v18)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  if (!v6)
  {
    _springs2 = [(CAMDynamicShutterControl *)self _displayLink];
    [_springs2 setPaused:1];
LABEL_20:
  }

  [(CAMDynamicShutterControl *)self _updateStateToLongPressIfNeededWithPhase:_consumeAndUpdateTouchSequencePhase];
  [(CAMDynamicShutterControl *)self _updateViewsFromCurrentState];
  [(CAMDynamicShutterControl *)self _updateLiquidShutter];
  _liquidShutterRenderer = [(CAMDynamicShutterControl *)self _liquidShutterRenderer];
  [_liquidShutterRenderer renderIfNecessary];
}

- (void)_updateStateToLongPressIfNeededWithPhase:(int64_t)phase
{
  v4 = [(CAMDynamicShutterControl *)self _isActiveTouchSequencePhase:phase];
  _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
  if ((_shutterState == 5 || !_shutterState) && v4)
  {
    _isExternalShutterPressed = [(CAMDynamicShutterControl *)self _isExternalShutterPressed];
    [(CAMDynamicShutterControl *)self settings];
    _externalShutterLongPressBehavior = [(CAMDynamicShutterControl *)self _externalShutterLongPressBehavior];
    [(CAMDynamicShutterControl *)self settings];
    v8 = _externalShutterLongPressBehavior == 1 && _isExternalShutterPressed;
    v9 = v8 || !_isExternalShutterPressed;
    v10 = v18 == 1 ? v9 : 0;
    v11 = (v17 == 1 || v18 == 2) && _externalShutterLongPressBehavior == 2 && _isExternalShutterPressed;
    Current = CFAbsoluteTimeGetCurrent();
    [(CAMDynamicShutterControl *)self _firstTouch];
    v13 = Current - v16;
    if (_isExternalShutterPressed)
    {
      [(CAMDynamicShutterControl *)self _externalLongPressVideoDuration];
    }

    else
    {
      [(CAMDynamicShutterControl *)self _longPressVideoDuration];
    }

    if (v13 >= v14)
    {
      if (v10)
      {
        [(CAMDynamicShutterControl *)self _setShutterState:4];
      }

      else if (v18 == 2 && !_isExternalShutterPressed || v11)
      {
        [(CAMDynamicShutterControl *)self _setShutterState:1];
        [(CAMDynamicShutterControl *)self settings];
        if (v15 != 2)
        {
          [(CAMDynamicShutterControl *)self _setInnerShapeState:2 animated:1];
        }

        [(CAMDynamicShutterControl *)self _updateCounterLabelAlphaTarget];
        [(CAMDynamicShutterControl *)self _setDragHandleState:1];
      }
    }
  }
}

- (void)_updateTrackingSpringTargets
{
  [(CAMDynamicShutterControl *)self _updateDragHandleWidthTarget];

  [(CAMDynamicShutterControl *)self _updateInnerShapeWidthTarget];
}

- (void)_updateSpringTargetsAnimated:(BOOL)animated
{
  [(CAMDynamicShutterControl *)self _updateStaticDragHandleOffsetTargetAnimated:animated];
  [(CAMDynamicShutterControl *)self _updateDragHandleWidthTarget];
  [(CAMDynamicShutterControl *)self _updateDragHandleColorIsWhiteTarget];
  [(CAMDynamicShutterControl *)self _updateDragHandleAlphaTarget];
  [(CAMDynamicShutterControl *)self _updateInnerShapeWidthTarget];
  [(CAMDynamicShutterControl *)self _updateInnerShapePowerTarget];
  [(CAMDynamicShutterControl *)self _updateInnerShapeColorIsRedTarget];
  [(CAMDynamicShutterControl *)self _updateInnerShapeAlphaTarget];
  [(CAMDynamicShutterControl *)self _updateCounterLabelAlphaTarget];
  [(CAMDynamicShutterControl *)self _updateDrawLockUITarget];
  [(CAMDynamicShutterControl *)self _updateExpandLockRingTarget];
  [(CAMDynamicShutterControl *)self _updatePauseResumeDrawTarget];
  [(CAMDynamicShutterControl *)self _updatePausedDuringVideoTarget];
  _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
  [_displayLink setPaused:0];
}

- (void)_updateStaticDragHandleOffsetTargetAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMDynamicShutterControl *)self _lockButtonCenter];
  v6 = v5;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v8 = v7;
  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  if (_dragHandleState - 6 >= 3)
  {
    v10 = 0.0;
    if (_dragHandleState >= 2)
    {
      return;
    }
  }

  else
  {
    v10 = v6 - v8;
  }

  _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
  [_dragHandleOffsetSpring setTarget:animatedCopy animated:v10];
}

- (void)_updateTrackingDragHandleOffsetTargetWithPoint:(CGPoint)point
{
  x = point.x;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter:point.x];
  v6 = x - v5;
  if ([(CAMDynamicShutterControl *)self _isTrackingHandleState:[(CAMDynamicShutterControl *)self _dragHandleState]])
  {
    _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
    [_dragHandleOffsetSpring setTarget:v6];
  }

  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  if (_dragHandleState <= 8)
  {
    if (((1 << _dragHandleState) & 0x1D7) != 0)
    {
      _dragHandleOffsetSpring2 = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
      hasSecondaryTarget = [_dragHandleOffsetSpring2 hasSecondaryTarget];

      if (!hasSecondaryTarget)
      {
        return;
      }

      _dragHandleOffsetSpring3 = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
      [_dragHandleOffsetSpring3 removeSecondaryTargetAnimated:1];
    }

    else
    {
      if (_dragHandleState == 3)
      {
        if (v6 >= 0.0)
        {
          v11 = ![(CAMDynamicShutterControl *)self _canDragStartStop];
        }

        else
        {
          v11 = 0;
        }

        if (v6 >= 0.0)
        {
          v19 = 0;
        }

        else
        {
          v19 = ![(CAMDynamicShutterControl *)self _canDragCounter];
        }

        if ((v11 | v19))
        {
          v20 = 0.85;
        }

        else
        {
          v20 = 0.6;
        }

        _dragHandleOffsetSpring4 = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
        v18 = 0.0;
        _dragHandleOffsetSpring3 = _dragHandleOffsetSpring4;
        v17 = v20;
      }

      else
      {
        [(CAMDynamicShutterControl *)self _lockButtonCenter];
        v13 = v12;
        [(CAMDynamicShutterControl *)self _shutterButtonCenter];
        v15 = v13 - v14;
        _dragHandleOffsetSpring4 = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
        v17 = 0.9;
        _dragHandleOffsetSpring3 = _dragHandleOffsetSpring4;
        v18 = v15;
      }

      [_dragHandleOffsetSpring4 setSecondaryTarget:1 withStrength:v18 animated:v17];
    }
  }
}

- (void)_updateDragHandleWidthTarget
{
  CAMPixelWidthForView(self);
  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  v4 = 0.0;
  if (_dragHandleState <= 3)
  {
    if (_dragHandleState <= 1)
    {
      if (_dragHandleState)
      {
        if (_dragHandleState != 1)
        {
          return;
        }
      }

      else
      {
        v4 = 35.0;
      }

      goto LABEL_18;
    }

    if (_dragHandleState == 2)
    {
LABEL_12:
      v4 = 40.5;
      goto LABEL_18;
    }

    _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
    [_dragHandleOffsetSpring value];

    CEKProgressClamped();
    CEKInterpolate();
    v4 = v6 * 0.9;
  }

  else
  {
    if (_dragHandleState <= 6)
    {
      if ((_dragHandleState - 4) >= 2)
      {
        if (_dragHandleState != 6)
        {
          return;
        }

        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (_dragHandleState == 7)
    {
      v4 = 45.0;
    }

    else if (_dragHandleState != 8)
    {
      return;
    }
  }

LABEL_18:
  _dragHandleWidthSpring = [(CAMDynamicShutterControl *)self _dragHandleWidthSpring];
  [_dragHandleWidthSpring setTarget:v4];
}

- (void)_updateDragHandleColorIsWhiteTarget
{
  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  if (_dragHandleState <= 8)
  {
    v4 = dbl_1A3A6AAC0[_dragHandleState];
    _dragHandleColorIsWhiteSpring = [(CAMDynamicShutterControl *)self _dragHandleColorIsWhiteSpring];
    [_dragHandleColorIsWhiteSpring setTarget:v4];
  }
}

- (void)_updateDragHandleAlphaTarget
{
  v3 = 0.0;
  if ([(CAMDynamicShutterControl *)self _isDraggingEnabled])
  {
    _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
    if (_dragHandleState > 8)
    {
      return;
    }

    v3 = dbl_1A3A6AB08[_dragHandleState];
  }

  _dragHandleAlphaSpring = [(CAMDynamicShutterControl *)self _dragHandleAlphaSpring];
  [_dragHandleAlphaSpring setTarget:v3];
}

- (void)_updateInnerShapeWidthTarget
{
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  CAMShutterButtonSpecGetInnerCircleDiameter(v15);
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  if ([(CAMDynamicShutterControl *)self _dragHandleState]== 3)
  {
    _dragHandleOffsetSpring = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
    [_dragHandleOffsetSpring value];

    _dragHandleOffsetSpring2 = [(CAMDynamicShutterControl *)self _dragHandleOffsetSpring];
    [_dragHandleOffsetSpring2 value];
    CEKProgressClamped();

    CEKInterpolate();
    InnerCircleDiameter = v6;
    v8 = 1;
  }

  else
  {
    _innerShapeState = [(CAMDynamicShutterControl *)self _innerShapeState];
    if (_innerShapeState == 1)
    {
      [(CAMDynamicShutterControl *)self _shutterButtonSpec];
      InnerCircleDiameter = v14;
    }

    else
    {
      InnerCircleDiameter = 0.0;
      if (!_innerShapeState)
      {
        [(CAMDynamicShutterControl *)self _shutterButtonSpec];
        InnerCircleDiameter = CAMShutterButtonSpecGetInnerCircleDiameter(v15);
      }
    }

    v9 = [(CAMDynamicShutterControl *)self _isActiveTouchSequencePhase:[(CAMDynamicShutterControl *)self _touchSequencePhase]];
    [(CAMDynamicShutterControl *)self _mostRecentTouch];
    v8 = v9 & v13;
  }

  if ([(CAMDynamicShutterControl *)self isPausedDuringVideo])
  {
    [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
    [(CAMDynamicShutterControl *)self _shutterButtonSpec];
    InnerCircleDiameter = InnerCircleDiameter * (v12 / v11);
  }

  if (v8)
  {
    InnerCircleDiameter = InnerCircleDiameter * 0.9;
  }

  _innerShapeWidthSpring = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
  [_innerShapeWidthSpring setTarget:InnerCircleDiameter];
}

- (void)_updateInnerShapePowerTarget
{
  _innerShapeState = [(CAMDynamicShutterControl *)self _innerShapeState];
  if (_innerShapeState <= 2)
  {
    v4 = *off_1E76FDFA0[_innerShapeState];
    _innerShapePowerSpring = [(CAMDynamicShutterControl *)self _innerShapePowerSpring];
    [_innerShapePowerSpring setTarget:v4];
  }
}

- (void)_updateInnerShapeColorIsRedTarget
{
  v3 = [(CAMDynamicShutterControl *)self _isStartStopShutterState:[(CAMDynamicShutterControl *)self _shutterState]];
  [(CAMDynamicShutterControl *)self settings];
  [(CAMDynamicShutterControl *)self settings];
  if ((v3 & (v7 == 1)) != 0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = ((v6 == 1) & ~v3);
  }

  _innerShapeColorIsRedSpring = [(CAMDynamicShutterControl *)self _innerShapeColorIsRedSpring];
  [_innerShapeColorIsRedSpring setTarget:v4];
}

- (void)_updateInnerShapeAlphaTarget
{
  _innerShapeState = [(CAMDynamicShutterControl *)self _innerShapeState];
  if (_innerShapeState <= 2)
  {
    v4 = dbl_1A3A6AB50[_innerShapeState];
    _innerShapeAlphaSpring = [(CAMDynamicShutterControl *)self _innerShapeAlphaSpring];
    [_innerShapeAlphaSpring setTarget:v4];
  }
}

- (void)_updateCounterLabelAlphaTarget
{
  _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
  _counterLabelAlphaSpring = [(CAMDynamicShutterControl *)self _counterLabelAlphaSpring];
  v6 = _counterLabelAlphaSpring;
  v5 = 0.0;
  if (_shutterState == 1)
  {
    v5 = 1.0;
  }

  [_counterLabelAlphaSpring setTarget:v5];
}

- (void)_updateDrawLockUITarget
{
  v3 = [(CAMDynamicShutterControl *)self _isStartStopShutterState:[(CAMDynamicShutterControl *)self _shutterState]];
  _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
  _isExternalShutterPressed = [(CAMDynamicShutterControl *)self _isExternalShutterPressed];
  _isDraggingEnabled = [(CAMDynamicShutterControl *)self _isDraggingEnabled];
  v7 = 0.0;
  if (v3 && _shutterState != 5 && !_isExternalShutterPressed && _isDraggingEnabled)
  {
    _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
    if (_dragHandleState > 8)
    {
      return;
    }

    v7 = dbl_1A3A6AB68[_dragHandleState];
  }

  _drawLockUISpring = [(CAMDynamicShutterControl *)self _drawLockUISpring];
  [_drawLockUISpring setTarget:v7];
}

- (void)_updateExpandLockRingTarget
{
  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  if (_dragHandleState <= 8)
  {
    v4 = dbl_1A3A6ABB0[_dragHandleState];
    _expandLockRingSpring = [(CAMDynamicShutterControl *)self _expandLockRingSpring];
    [_expandLockRingSpring setTarget:v4];
  }
}

- (void)_updatePauseResumeDrawTarget
{
  v3 = 0.0;
  if (([(CAMDynamicShutterControl *)self privateSettings]& 1) != 0)
  {
    if (([(CAMDynamicShutterControl *)self _shutterState]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  _drawPauseResumeUISpring = [(CAMDynamicShutterControl *)self _drawPauseResumeUISpring];
  [_drawPauseResumeUISpring setTarget:v3];
}

- (void)_updatePausedDuringVideoTarget
{
  v3 = 0.0;
  if (([(CAMDynamicShutterControl *)self privateSettings]& 1) != 0)
  {
    if ([(CAMDynamicShutterControl *)self isPausedDuringVideo])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  _pausedDuringVideoSpring = [(CAMDynamicShutterControl *)self _pausedDuringVideoSpring];
  [_pausedDuringVideoSpring setTarget:v3];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_dragHandleColor
{
  [(CAMDynamicShutterControl *)self _innerShapeColor];
  [(CAMDynamicShutterControl *)self _whiteHandleAlpha];
  CAMLiquidShutterColorForShutterColorAndAlpha(0, v3);
  [(CAMDynamicShutterControl *)self _liquidRenderingMethod];
  _dragHandleColorIsWhiteSpring = [(CAMDynamicShutterControl *)self _dragHandleColorIsWhiteSpring];
  [_dragHandleColorIsWhiteSpring value];
  CEKProgressClamped();

  CEKInterpolate();
  v6 = v5;
  CEKInterpolate();
  v8 = v7;
  CEKInterpolate();
  v10 = v9;
  CEKInterpolate();
  v12 = v11;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.var3 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (double)_whiteHandleAlpha
{
  _liquidRenderingMethod = [(CAMDynamicShutterControl *)self _liquidRenderingMethod];
  result = 1.0;
  if (_liquidRenderingMethod == 2)
  {
    v4 = +[CAMUserPreferences solCamShutterButtonCenterMaterialEnabled];
    result = 0.85;
    if (!v4)
    {
      return 1.0;
    }
  }

  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_innerShapeColor
{
  _innerShapeColorIsRedSpring = [(CAMDynamicShutterControl *)self _innerShapeColorIsRedSpring];
  [_innerShapeColorIsRedSpring value];
  v5 = v4;

  if (v5 == 0.0)
  {
    [(CAMDynamicShutterControl *)self _whiteHandleAlpha];
    v7 = 0;
  }

  else
  {
    v6 = 1.0;
    if (v5 != 1.0)
    {
      [(CAMDynamicShutterControl *)self _whiteHandleAlpha];
      CAMLiquidShutterColorForShutterColorAndAlpha(0, v22);
      CAMLiquidShutterColorForShutterColorAndAlpha(1, 1.0);
      CEKInterpolate();
      v8 = v23;
      CEKInterpolate();
      v10 = v24;
      CEKInterpolate();
      v12 = v25;
      CEKInterpolate();
      v14 = v26;
      goto LABEL_6;
    }

    v7 = 1;
  }

  v8 = CAMLiquidShutterColorForShutterColorAndAlpha(v7, v6);
  v10 = v9;
  v12 = v11;
  v14 = v13;
LABEL_6:
  _innerShapeAlphaSpring = [(CAMDynamicShutterControl *)self _innerShapeAlphaSpring];
  [_innerShapeAlphaSpring value];
  v17 = v14 * v16;

  v18 = v8;
  v19 = v10;
  v20 = v12;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (void)_getLiquidShutterCenterShape:(id *)shape handleShape:(id *)handleShape forView:(id)view
{
  viewCopy = view;
  [(CAMDynamicShutterControl *)self _shutterButtonCenter];
  v10 = v9;
  v12 = v11;
  [(CAMDynamicShutterControl *)self _dragHandleXPosition];
  v14 = v13;
  [(CAMDynamicShutterControl *)self _innerShapeColor];
  v54 = v16;
  v55 = v15;
  v52 = v18;
  v53 = v17;
  [(CAMDynamicShutterControl *)self convertPoint:viewCopy toView:v10, v12];
  v50 = v20;
  v51 = v19;
  _innerShapePowerSpring = [(CAMDynamicShutterControl *)self _innerShapePowerSpring];
  [_innerShapePowerSpring value];
  v49 = v22;

  _innerShapeWidthSpring = [(CAMDynamicShutterControl *)self _innerShapeWidthSpring];
  [_innerShapeWidthSpring value];
  v25 = v24;

  [(CAMDynamicShutterControl *)self _centerOuterViewDiameter];
  v27 = v26;
  [(CAMDynamicShutterControl *)self _dragHandleColor];
  v29 = v28;
  v48 = v30;
  v32 = v31;
  v34 = v33;
  [(CAMDynamicShutterControl *)self convertPoint:viewCopy toView:v14, v12];
  v36 = v35;
  v38 = v37;

  _drawLockUISpring = [(CAMDynamicShutterControl *)self _drawLockUISpring];
  [_drawLockUISpring value];
  v41 = v40;
  _dragHandleWidthSpring = [(CAMDynamicShutterControl *)self _dragHandleWidthSpring];
  [_dragHandleWidthSpring value];
  if (v41 > v43)
  {
    [(CAMDynamicShutterControl *)self _drawLockUISpring];
  }

  else
  {
    [(CAMDynamicShutterControl *)self _dragHandleWidthSpring];
  }
  v44 = ;
  [v44 value];
  v46 = v45;

  [(CAMDynamicShutterControl *)self _lockButtonBackgroundDiameter];
  if (shape)
  {
    shape->var0.x = v51;
    shape->var0.y = v50;
    shape->var1 = v25;
    shape->var2 = v27;
    shape->var3.var0 = v55;
    shape->var3.var1 = v54;
    shape->var3.var2 = v53;
    shape->var3.var3 = v52;
    shape->var4 = v49;
  }

  if (handleShape)
  {
    handleShape->var0.x = v36;
    handleShape->var0.y = v38;
    handleShape->var1 = v46;
    handleShape->var2 = v47;
    handleShape->var3.var0 = v29;
    handleShape->var3.var1 = v48;
    handleShape->var3.var2 = v32;
    handleShape->var3.var3 = v34;
    handleShape->var4 = 2.0;
  }
}

- ($7A910D035BC0C83CFFF052A09CDD67E6)_pauseResumeButtonShapeForView:(SEL)view
{
  retstr->var3 = *ymmword_1A3A6AD10;
  retstr->var4 = 0.0;
  retstr->var0 = CAMLiquidShutterShapeZero;
  *&retstr->var1 = unk_1A3A6AD00;
  v6 = a4;
  [(CAMDynamicShutterControl *)self _pauseResumeButtonCenter];
  [(CAMDynamicShutterControl *)self convertPoint:v6 toView:?];
  v8 = v7;
  v10 = v9;

  retstr->var0.x = v8;
  retstr->var0.y = v10;
  result = [(CAMDynamicShutterControl *)self _pauseResumeButtonBackgroundDiameter];
  retstr->var2 = v12;
  return result;
}

- (void)_updateLiquidShutter
{
  v51 = *ymmword_1A3A6AD10;
  v52 = *&ymmword_1A3A6AD10[16];
  v53 = 0;
  v49 = CAMLiquidShutterShapeZero;
  v50 = unk_1A3A6AD00;
  v46 = *ymmword_1A3A6AD10;
  v47 = *&ymmword_1A3A6AD10[16];
  v48 = 0;
  v44 = CAMLiquidShutterShapeZero;
  v45 = unk_1A3A6AD00;
  _liquidRenderingMethod = [(CAMDynamicShutterControl *)self _liquidRenderingMethod];
  if (_liquidRenderingMethod == 1)
  {
    liquidShutterView = [(CAMDynamicShutterControl *)self liquidShutterView];
    [(CAMDynamicShutterControl *)self _getLiquidShutterCenterShape:&v49 handleShape:&v44 forView:liquidShutterView];

    v26 = v51;
    v27 = v52;
    v28 = v53;
    v24 = v49;
    v25 = v50;
    liquidShutterView2 = [(CAMDynamicShutterControl *)self liquidShutterView];
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v34 = v24;
    v35 = v25;
    [liquidShutterView2 setCenterShape:&v34];

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v19 = v44;
    v20 = v45;
    liquidShutterView3 = [(CAMDynamicShutterControl *)self liquidShutterView];
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v34 = v19;
    v35 = v20;
    [liquidShutterView3 setDragHandleShape:&v34];

    _isDraggingEnabled = [(CAMDynamicShutterControl *)self _isDraggingEnabled];
    liquidShutterView4 = [(CAMDynamicShutterControl *)self liquidShutterView];
    [liquidShutterView4 setShowDragHandle:_isDraggingEnabled];
LABEL_8:

    goto LABEL_9;
  }

  if (!_liquidRenderingMethod)
  {
    _metalView = [(CAMDynamicShutterControl *)self _metalView];
    [(CAMDynamicShutterControl *)self _getLiquidShutterCenterShape:&v49 handleShape:&v44 forView:_metalView];

    v41 = v51;
    v42 = v52;
    v43 = v53;
    v39 = v49;
    v40 = v50;
    _liquidShutterRenderer = [(CAMDynamicShutterControl *)self _liquidShutterRenderer];
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v34 = v39;
    v35 = v40;
    [_liquidShutterRenderer setCenterShape:&v34];

    v31 = v46;
    v32 = v47;
    v33 = v48;
    v29 = v44;
    v30 = v45;
    _liquidShutterRenderer2 = [(CAMDynamicShutterControl *)self _liquidShutterRenderer];
    v36 = v31;
    v37 = v32;
    v38 = v33;
    v34 = v29;
    v35 = v30;
    [_liquidShutterRenderer2 setDragHandleShape:&v34];

    liquidShutterView4 = [(CAMDynamicShutterControl *)self _isDraggingEnabled];
    _liquidShutterRenderer3 = [(CAMDynamicShutterControl *)self _liquidShutterRenderer];
    [_liquidShutterRenderer3 setShowDragHandle:liquidShutterView4];

    showContrastBorder = [(CAMDynamicShutterControl *)self showContrastBorder];
    v10 = showContrastBorder;
    if (showContrastBorder)
    {
      liquidShutterView4 = [(CAMDynamicShutterControl *)self traitCollection];
      [liquidShutterView4 displayScale];
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }

    _liquidShutterRenderer4 = [(CAMDynamicShutterControl *)self _liquidShutterRenderer];
    [_liquidShutterRenderer4 setShadowSize:v12];

    if (v10)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  [(CAMDynamicShutterControl *)self set_needsLiquidShutterUpdate:0];
  if (self->_delegateFlags.respondsToDidUpdateLiquidShutter)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained shutterControlDidUpdateLiquidShutter:self];
  }
}

- (void)updateChromeViewModel:(id)model
{
  modelCopy = model;
  if ([(CAMDynamicShutterControl *)self _liquidRenderingMethod]== 2)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    [(CAMDynamicShutterControl *)self _getLiquidShutterCenterShape:&v20 handleShape:&v15 forView:self];
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v10 = v20;
    v11 = v21;
    [modelCopy setDynamicShutterCenterShape:&v10];
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v10 = v15;
    v11 = v16;
    [modelCopy setDynamicShutterHandleShape:&v10];
    [(CAMDynamicShutterControl *)self _pauseResumeButtonShapeForView:self];
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v10 = v5;
    v11 = v6;
    [modelCopy setDynamicShutterPauseResumeButtonShape:&v10];
    [modelCopy setDynamicShutterShowDragHandle:{-[CAMDynamicShutterControl _isDraggingEnabled](self, "_isDraggingEnabled")}];
    [(CAMDynamicShutterControl *)self _liquidShutterAlpha];
    [modelCopy setDynamicShutterShapeOpacity:?];
  }
}

- (void)_updateViewsFromCurrentState
{
  [(CAMDynamicShutterControl *)self _updateCenterButton];
  [(CAMDynamicShutterControl *)self _updateLeftLine];
  [(CAMDynamicShutterControl *)self _updateRightLine];
  [(CAMDynamicShutterControl *)self _updateLockUI];
  [(CAMDynamicShutterControl *)self _updatePauseResumeUI];

  [(CAMDynamicShutterControl *)self _updateCounterAlpha];
}

- (void)_updateLeftLine
{
  _shutterState = [(CAMDynamicShutterControl *)self _shutterState];
  if (_shutterState - 2 >= 4)
  {
    if (_shutterState <= 1)
    {
      [(CAMDynamicShutterControl *)self _createLeftLineViewIfNeeded];
      _leftLineView = [(CAMDynamicShutterControl *)self _leftLineView];
      v6 = 1.0;
      [_leftLineView setAlpha:1.0];

      if (![(CAMDynamicShutterControl *)self showContrastBorder])
      {
        v6 = 0.0;
      }

      _leftLineLegibilityView = [(CAMDynamicShutterControl *)self _leftLineLegibilityView];
      [_leftLineLegibilityView setAlpha:v6];

      _dragHandleWidthSpring = [(CAMDynamicShutterControl *)self _dragHandleWidthSpring];
      [_dragHandleWidthSpring value];
      v10 = v9;

      [(CAMDynamicShutterControl *)self _shutterButtonCenter];
      v12 = v11;
      [(CAMDynamicShutterControl *)self _shutterButtonSpec];
      [(CAMDynamicShutterControl *)self _dragHandleXPosition];
      v14 = fmax(v12 + v30 * -0.5 - v13 - v10, 0.0);
      [(CAMDynamicShutterControl *)self _dragHandleXPosition];
      v16 = v15 + v10 * 0.5;
      [(CAMDynamicShutterControl *)self _shutterButtonCenter];
      v18 = v17 + -0.5;
      _leftLineView2 = [(CAMDynamicShutterControl *)self _leftLineView];
      [_leftLineView2 setFrame:{v16, v18, v14, 1.0}];

      UIRectInset();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      _leftLineLegibilityView2 = [(CAMDynamicShutterControl *)self _leftLineLegibilityView];
      [_leftLineLegibilityView2 setFrame:{v21, v23, v25, v27}];
    }
  }

  else
  {
    _leftLineView3 = [(CAMDynamicShutterControl *)self _leftLineView];
    [_leftLineView3 setAlpha:0.0];

    _leftLineLegibilityView3 = [(CAMDynamicShutterControl *)self _leftLineLegibilityView];
    [_leftLineLegibilityView3 setAlpha:0.0];
  }
}

- (void)_updateRightLine
{
  if (-[CAMDynamicShutterControl _dragHandleState](self, "_dragHandleState") == 1 || !-[CAMDynamicShutterControl _isStartStopShutterState:](self, "_isStartStopShutterState:", -[CAMDynamicShutterControl _shutterState](self, "_shutterState")) || (-[CAMDynamicShutterControl _drawLockUISpring](self, "_drawLockUISpring"), v3 = objc_claimAutoreleasedReturnValue(), [v3 value], v5 = v4, v3, v5 <= 0.0))
  {
    _rightLineView = [(CAMDynamicShutterControl *)self _rightLineView];
    [_rightLineView setAlpha:0.0];

    _rightLineLegibilityView = [(CAMDynamicShutterControl *)self _rightLineLegibilityView];
    [_rightLineLegibilityView setAlpha:0.0];
  }

  else
  {
    [(CAMDynamicShutterControl *)self _createRightLineViewIfNeeded];
    v6 = 4.0 - CAMPixelWidthForView(self);
    [(CAMDynamicShutterControl *)self _shutterButtonCenter];
    v8 = v7;
    [(CAMDynamicShutterControl *)self _shutterButtonSpec];
    v9 = v6 + v8 + v40 * 0.5;
    [(CAMDynamicShutterControl *)self _dragHandleXPosition];
    v11 = v10;
    _dragHandleWidthSpring = [(CAMDynamicShutterControl *)self _dragHandleWidthSpring];
    [_dragHandleWidthSpring value];
    v14 = v11 + v13 * 0.5;

    if (v9 >= v14)
    {
      v14 = v9;
    }

    [(CAMDynamicShutterControl *)self _shutterButtonCenter];
    v16 = v15 + -0.5;
    [(CAMDynamicShutterControl *)self _lockButtonInactiveSpec];
    [(CAMDynamicShutterControl *)self _lockButtonActiveSpec];
    _expandLockRingSpring = [(CAMDynamicShutterControl *)self _expandLockRingSpring];
    [_expandLockRingSpring value];
    CEKInterpolate();
    v19 = v18;

    [(CAMDynamicShutterControl *)self _lockButtonCenter];
    v21 = v20 + v19 * -0.5 - v6 - v14;
    _drawLockUISpring = [(CAMDynamicShutterControl *)self _drawLockUISpring];
    [_drawLockUISpring value];
    v24 = v23 * v21;

    _rightLineView2 = [(CAMDynamicShutterControl *)self _rightLineView];
    [_rightLineView2 setFrame:{v14, v16, fmax(v24, 0.0), 1.0}];

    UIRectInset();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    _rightLineLegibilityView2 = [(CAMDynamicShutterControl *)self _rightLineLegibilityView];
    [_rightLineLegibilityView2 setFrame:{v27, v29, v31, v33}];

    _rightLineView3 = [(CAMDynamicShutterControl *)self _rightLineView];
    [_rightLineView3 setAlpha:0.5];

    if ([(CAMDynamicShutterControl *)self showContrastBorder])
    {
      v36 = 0.5;
    }

    else
    {
      v36 = 0.0;
    }

    _rightLineLegibilityView3 = [(CAMDynamicShutterControl *)self _rightLineLegibilityView];
    [_rightLineLegibilityView3 setAlpha:v36];
  }
}

- (void)_updateLockUI
{
  _drawLockUISpring = [(CAMDynamicShutterControl *)self _drawLockUISpring];
  [_drawLockUISpring value];

  _expandLockRingSpring = [(CAMDynamicShutterControl *)self _expandLockRingSpring];
  [_expandLockRingSpring value];

  CEKInterpolate();
  CEKInterpolate();
  v6 = v5;
  if (v5 > 0.0)
  {
    [(CAMDynamicShutterControl *)self _createLockButtonOuterViewIfNeeded];
  }

  _lockButtonOuterView = [(CAMDynamicShutterControl *)self _lockButtonOuterView];
  [_lockButtonOuterView setAlpha:v6];

  if (![(CAMDynamicShutterControl *)self showContrastBorder])
  {
    v6 = 0.0;
  }

  _lockButtonOuterLegibilityView = [(CAMDynamicShutterControl *)self _lockButtonOuterLegibilityView];
  [_lockButtonOuterLegibilityView setAlpha:v6];

  [(CAMDynamicShutterControl *)self _lockButtonBackgroundDiameter];
  CEKInterpolate();
  v10 = v9;
  v11 = v9 * 0.5;
  _lockButtonOuterView2 = [(CAMDynamicShutterControl *)self _lockButtonOuterView];
  [_lockButtonOuterView2 setBounds:{0.0, 0.0, v10, v10}];

  _lockButtonOuterView3 = [(CAMDynamicShutterControl *)self _lockButtonOuterView];
  layer = [_lockButtonOuterView3 layer];
  [layer setCornerRadius:v11];

  UIRectInset();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  _lockButtonOuterLegibilityView2 = [(CAMDynamicShutterControl *)self _lockButtonOuterLegibilityView];
  [_lockButtonOuterLegibilityView2 setBounds:{v16, v18, v20, v22}];

  _lockButtonOuterLegibilityView3 = [(CAMDynamicShutterControl *)self _lockButtonOuterLegibilityView];
  layer2 = [_lockButtonOuterLegibilityView3 layer];
  [layer2 setCornerRadius:v11 + 1.0];

  if ([(CAMDynamicShutterControl *)self _wantsLateralOuterViews])
  {
    [(CAMDynamicShutterControl *)self _lockButtonInactiveSpec];
    [(CAMDynamicShutterControl *)self _lockButtonActiveSpec];
    CEKInterpolate();
    v27 = v26;
    _lockButtonOuterView4 = [(CAMDynamicShutterControl *)self _lockButtonOuterView];
    layer3 = [_lockButtonOuterView4 layer];
    [layer3 setBorderWidth:v27];
  }

  [(CAMDynamicShutterControl *)self _updateLockGlyphTransformAndAlpha];
}

- (double)_lockButtonBackgroundDiameter
{
  _expandLockRingSpring = [(CAMDynamicShutterControl *)self _expandLockRingSpring];
  [_expandLockRingSpring value];

  [(CAMDynamicShutterControl *)self _lockButtonInactiveSpec];
  [(CAMDynamicShutterControl *)self _lockButtonActiveSpec];
  CEKInterpolate();
  return result;
}

- (void)_updatePauseResumeUI
{
  _drawPauseResumeUISpring = [(CAMDynamicShutterControl *)self _drawPauseResumeUISpring];
  [_drawPauseResumeUISpring value];
  v5 = v4;

  _pausedDuringVideoSpring = [(CAMDynamicShutterControl *)self _pausedDuringVideoSpring];
  [_pausedDuringVideoSpring value];

  CEKInterpolateClamped();
  v8 = v7;
  CEKInterpolateClamped();
  v38 = v9;
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  InnerCircleDiameter = CAMShutterButtonSpecGetInnerCircleDiameter(&v46.a);
  [(CAMDynamicShutterControl *)self _pauseResumeButtonBackgroundDiameter];
  v11 = v10;
  [(CAMDynamicShutterControl *)self _pauseResumeButtonCenter];
  v13 = v12;
  v15 = v14;
  if (v5 * v5 > 0.0)
  {
    [(CAMDynamicShutterControl *)self _createPauseResumeButtonOuterViewIfNeeded];
  }

  _pauseResumeButtonOuterView = [(CAMDynamicShutterControl *)self _pauseResumeButtonOuterView];
  [_pauseResumeButtonOuterView setCenter:{v13, v15}];

  _pauseResumeButtonOuterView2 = [(CAMDynamicShutterControl *)self _pauseResumeButtonOuterView];
  [_pauseResumeButtonOuterView2 setBounds:{0.0, 0.0, v11, v11}];

  _pauseResumeButtonOuterView3 = [(CAMDynamicShutterControl *)self _pauseResumeButtonOuterView];
  layer = [_pauseResumeButtonOuterView3 layer];
  [layer setCornerRadius:v11 * 0.5];

  _pauseResumeButtonOuterView4 = [(CAMDynamicShutterControl *)self _pauseResumeButtonOuterView];
  [_pauseResumeButtonOuterView4 setAlpha:v5 * v5];

  _pauseResumeButtonLegibilityView = [(CAMDynamicShutterControl *)self _pauseResumeButtonLegibilityView];
  [_pauseResumeButtonLegibilityView setCenter:{v13, v15}];

  _pauseResumeButtonLegibilityView2 = [(CAMDynamicShutterControl *)self _pauseResumeButtonLegibilityView];
  [_pauseResumeButtonLegibilityView2 setBounds:{0.0, 0.0, v11 + 2.0, v11 + 2.0}];

  _pauseResumeButtonLegibilityView3 = [(CAMDynamicShutterControl *)self _pauseResumeButtonLegibilityView];
  layer2 = [_pauseResumeButtonLegibilityView3 layer];
  [layer2 setCornerRadius:(v11 + 2.0) * 0.5];

  if ([(CAMDynamicShutterControl *)self showContrastBorder])
  {
    v25 = v5 * v5;
  }

  else
  {
    v25 = 0.0;
  }

  _pauseResumeButtonLegibilityView4 = [(CAMDynamicShutterControl *)self _pauseResumeButtonLegibilityView];
  [_pauseResumeButtonLegibilityView4 setAlpha:v25];

  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeScale(&v46, v8, v8);
  memset(&v45, 0, sizeof(v45));
  CGAffineTransformMakeScale(&v45, v38, v38);
  memset(&v44, 0, sizeof(v44));
  CAMOrientationTransform([(CAMDynamicShutterControl *)self orientation], &v44);
  CEKInterpolateClamped();
  v28 = v27;
  if (v27 > 0.0)
  {
    [(CAMDynamicShutterControl *)self _createPauseImageViewIfNeeded];
  }

  _pauseImageView = [(CAMDynamicShutterControl *)self _pauseImageView];
  [_pauseImageView setCenter:{v13, v15}];
  [_pauseImageView setAlpha:v28];
  t1 = v44;
  t2 = v46;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  [_pauseImageView setTransform:&t1];
  CEKInterpolateClamped();
  v31 = v30;
  if (v30 > 0.0)
  {
    [(CAMDynamicShutterControl *)self _createResumeCircleViewIfNeeded];
  }

  _resumeCircleView = [(CAMDynamicShutterControl *)self _resumeCircleView];
  [_resumeCircleView setCenter:{v13, v15}];

  _resumeCircleView2 = [(CAMDynamicShutterControl *)self _resumeCircleView];
  [_resumeCircleView2 setBounds:{0.0, 0.0, InnerCircleDiameter, InnerCircleDiameter}];

  _resumeCircleView3 = [(CAMDynamicShutterControl *)self _resumeCircleView];
  layer3 = [_resumeCircleView3 layer];
  [layer3 setCornerRadius:InnerCircleDiameter * 0.5];

  _resumeCircleView4 = [(CAMDynamicShutterControl *)self _resumeCircleView];
  [_resumeCircleView4 setAlpha:v31];

  v40 = v45;
  _resumeCircleView5 = [(CAMDynamicShutterControl *)self _resumeCircleView];
  t1 = v40;
  [_resumeCircleView5 setTransform:&t1];
}

- (double)_pauseResumeButtonBackgroundDiameter
{
  _drawPauseResumeUISpring = [(CAMDynamicShutterControl *)self _drawPauseResumeUISpring];
  [_drawPauseResumeUISpring value];

  _pausedDuringVideoSpring = [(CAMDynamicShutterControl *)self _pausedDuringVideoSpring];
  [_pausedDuringVideoSpring value];

  CEKInterpolateClamped();
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  CAMShutterButtonSpecGetInnerCircleDiameter(v6);
  [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
  CAMShutterButtonSpecGetInnerCircleDiameter(v6);
  CEKInterpolateClamped();
  CEKProgressClamped();
  [(CAMDynamicShutterControl *)self _pauseResumeButtonSpec];
  [(CAMDynamicShutterControl *)self _shutterButtonSpec];
  CEKInterpolateClamped();
  CEKInterpolateClamped();
  return result;
}

- (void)_updateLockGlyphTransformAndAlpha
{
  _drawLockUISpring = [(CAMDynamicShutterControl *)self _drawLockUISpring];
  [_drawLockUISpring value];
  v5 = v4;

  _expandLockRingSpring = [(CAMDynamicShutterControl *)self _expandLockRingSpring];
  [_expandLockRingSpring value];
  v8 = v7;

  _dragHandleState = [(CAMDynamicShutterControl *)self _dragHandleState];
  v10 = 0.0;
  if (_dragHandleState == 6)
  {
    v10 = v8;
  }

  memset(&v19.c, 0, 32);
  if (_dragHandleState == 3)
  {
    v11 = v5 * (1.0 - v8);
  }

  else
  {
    v11 = v10;
  }

  *&v19.a = 0uLL;
  CGAffineTransformMakeScale(&v19, v11, v11);
  memset(&v18, 0, sizeof(v18));
  CAMOrientationTransform([(CAMDynamicShutterControl *)self orientation], &v18);
  CEKInterpolateClamped();
  v13 = v12;
  if (v12 > 0.0)
  {
    [(CAMDynamicShutterControl *)self _createVideoLockImageViewIfNeeded];
  }

  _videoLockImageView = [(CAMDynamicShutterControl *)self _videoLockImageView];
  [_videoLockImageView setAlpha:v13];
  t1 = v18;
  v15 = v19;
  CGAffineTransformConcat(&v17, &t1, &v15);
  t1 = v17;
  [_videoLockImageView setTransform:&t1];
}

- (void)_updateCounterAlpha
{
  if ([(CAMDynamicShutterControl *)self _shutterState]== 1)
  {
    _counterLabelAlphaSpring = [(CAMDynamicShutterControl *)self _counterLabelAlphaSpring];
    [_counterLabelAlphaSpring value];
    v5 = v4;

    if (v5 > 0.0)
    {
      [(CAMDynamicShutterControl *)self _createCounterLabelIfNeeded];
    }
  }

  _counterLabelAlphaSpring2 = [(CAMDynamicShutterControl *)self _counterLabelAlphaSpring];
  [_counterLabelAlphaSpring2 value];
  v7 = v6;
  _counterLabel = [(CAMDynamicShutterControl *)self _counterLabel];
  [_counterLabel setAlpha:v7];
}

- (void)_createPauseResumeButtonOuterViewIfNeeded
{
  if (!self->__pauseResumeButtonOuterView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    pauseResumeButtonOuterView = self->__pauseResumeButtonOuterView;
    self->__pauseResumeButtonOuterView = v4;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)self->__pauseResumeButtonOuterView setBackgroundColor:clearColor];

    v7 = +[CAMUserPreferences shutterPauseResumeButtonGlassEnabled];
    v8 = self->__pauseResumeButtonOuterView;
    if (v7)
    {
      [(UIView *)v8 installGlassBackgroundWithSmoothness:5 area:0.0];
    }

    else
    {
      [(UIView *)v8 installThinMaterial];
      [(UIView *)self->__pauseResumeButtonOuterView setClipsToBounds:1];
    }

    [(UIView *)self->__pauseResumeButtonOuterView setUserInteractionEnabled:0];
    [(UIView *)self->__pauseResumeButtonOuterView setAlpha:0.0];
    v9 = self->__pauseResumeButtonOuterView;

    [(CAMDynamicShutterControl *)self addSubview:v9];
  }
}

- (void)_createPauseImageViewIfNeeded
{
  if (!self->__pauseImageView)
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v8 = [v3 systemImageNamed:@"pause.fill" withConfiguration:v4];

    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    pauseImageView = self->__pauseImageView;
    self->__pauseImageView = v5;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)self->__pauseImageView setTintColor:whiteColor];

    [(UIImageView *)self->__pauseImageView setAlpha:0.0];
    [(CAMDynamicShutterControl *)self addSubview:self->__pauseImageView];
  }
}

- (void)_createResumeCircleViewIfNeeded
{
  if (!self->__resumeCircleView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    resumeCircleView = self->__resumeCircleView;
    self->__resumeCircleView = v4;

    v6 = CAMRedColor();
    [(UIView *)self->__resumeCircleView setBackgroundColor:v6];

    [(UIView *)self->__resumeCircleView setUserInteractionEnabled:0];
    [(UIView *)self->__resumeCircleView setAlpha:0.0];
    v7 = self->__resumeCircleView;

    [(CAMDynamicShutterControl *)self addSubview:v7];
  }
}

- (void)_createVideoLockImageViewIfNeeded
{
  if (!self->__videoLockImageView)
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v8 = [v3 systemImageNamed:@"lock.fill" withConfiguration:v4];

    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    videoLockImageView = self->__videoLockImageView;
    self->__videoLockImageView = v5;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)self->__videoLockImageView setTintColor:whiteColor];

    [(UIImageView *)self->__videoLockImageView setAlpha:0.0];
    [(CAMDynamicShutterControl *)self addSubview:self->__videoLockImageView];
  }
}

- (void)_createCenterOuterViewIfNeeded
{
  if (!self->__centerOuterView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    centerOuterView = self->__centerOuterView;
    self->__centerOuterView = v4;

    [(UIView *)self->__centerOuterView setUserInteractionEnabled:0];
    [(UIView *)self->__centerOuterView setAlpha:0.0];
    if (self->_liquidShutterView)
    {
      [(UIView *)self->__centerOuterView installGlassBackgroundWithSmoothness:5 area:0.0];
      [(CAMDynamicShutterControl *)self _createShutterHighlightLayersIfNeeded];
      v6 = self->__centerOuterView;
      liquidShutterView = self->_liquidShutterView;

      [(CAMDynamicShutterControl *)self insertSubview:v6 belowSubview:liquidShutterView];
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      cGColor = [whiteColor CGColor];
      layer = [(UIView *)self->__centerOuterView layer];
      [layer setBorderColor:cGColor];

      v11 = self->__centerOuterView;

      [(CAMDynamicShutterControl *)self addSubview:v11];
    }
  }
}

- (void)_createLockButtonOuterViewIfNeeded
{
  if (!self->__lockButtonOuterView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    lockButtonOuterView = self->__lockButtonOuterView;
    self->__lockButtonOuterView = v4;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)self->__lockButtonOuterView setBackgroundColor:clearColor];

    if (self->_liquidShutterView)
    {
      v7 = +[CAMUserPreferences shutterStillDuringVideoButtonGlassEnabled];
      v8 = self->__lockButtonOuterView;
      if (v7)
      {
        [(UIView *)v8 installGlassBackgroundWithSmoothness:5 area:0.0];
      }

      else
      {
        [(UIView *)v8 installThinMaterial];
        [(UIView *)self->__lockButtonOuterView setClipsToBounds:1];
      }

      v12 = self->__lockButtonOuterView;
      liquidShutterView = [(CAMDynamicShutterControl *)self liquidShutterView];
      [(CAMDynamicShutterControl *)self insertSubview:v12 belowSubview:liquidShutterView];
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      cGColor = [whiteColor CGColor];
      layer = [(UIView *)self->__lockButtonOuterView layer];
      [layer setBorderColor:cGColor];

      [(CAMDynamicShutterControl *)self addSubview:self->__lockButtonOuterView];
    }

    [(UIView *)self->__lockButtonOuterView setUserInteractionEnabled:0];
    v14 = self->__lockButtonOuterView;

    [(UIView *)v14 setAlpha:0.0];
  }
}

- (void)_createRightLineViewIfNeeded
{
  if (!self->__rightLineView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    rightLineView = self->__rightLineView;
    self->__rightLineView = v4;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->__rightLineView setBackgroundColor:whiteColor];

    [(UIView *)self->__rightLineView setUserInteractionEnabled:0];
    [(UIView *)self->__rightLineView setAlpha:0.0];
    v7 = self->__rightLineView;
    liquidShutterView = [(CAMDynamicShutterControl *)self liquidShutterView];
    [(CAMDynamicShutterControl *)self insertSubview:v7 belowSubview:liquidShutterView];
  }
}

- (void)_createLeftLineViewIfNeeded
{
  if (!self->__leftLineView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    leftLineView = self->__leftLineView;
    self->__leftLineView = v4;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->__leftLineView setBackgroundColor:whiteColor];

    [(UIView *)self->__leftLineView setUserInteractionEnabled:0];
    [(UIView *)self->__leftLineView setAlpha:0.0];
    v7 = self->__leftLineView;
    liquidShutterView = [(CAMDynamicShutterControl *)self liquidShutterView];
    [(CAMDynamicShutterControl *)self insertSubview:v7 belowSubview:liquidShutterView];
  }
}

- (void)_createCounterLabelIfNeeded
{
  if (!self->__counterLabel)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCC10]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    counterLabel = self->__counterLabel;
    self->__counterLabel = v4;

    [(UILabel *)self->__counterLabel setUserInteractionEnabled:0];
    [(CAMDynamicShutterControl *)self settings];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->__counterLabel setTextColor:whiteColor];

    if (v9 == 2)
    {
      [MEMORY[0x1E69DC888] colorWithWhite:0.1 alpha:0.8];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v7 = ;
    [(UILabel *)self->__counterLabel setBackgroundColor:v7];

    [(UILabel *)self->__counterLabel setTextAlignment:1];
    v8 = [CAMFont cameraMonospacedFontOfSize:20.0];
    [(UILabel *)self->__counterLabel setFont:v8];

    [(UILabel *)self->__counterLabel setAlpha:0.0];
    [(CAMDynamicShutterControl *)self _updateCounterLabelText];
    [(CAMDynamicShutterControl *)self addSubview:self->__counterLabel];
  }
}

- (void)metalViewDidChangeDrawableSize:(id)size
{
  _liquidShutterRenderer = [(CAMDynamicShutterControl *)self _liquidShutterRenderer];
  [_liquidShutterRenderer markNeedsRender];

  _displayLink = [(CAMDynamicShutterControl *)self _displayLink];
  [_displayLink setPaused:0];
}

- (id)_sdfPortalForElement:(id)element
{
  v3 = MEMORY[0x1E6979408];
  elementCopy = element;
  v5 = objc_alloc_init(v3);
  [v5 setSourceLayer:elementCopy];

  [v5 setHidesSourceLayer:1];
  [v5 setMatchesPosition:1];
  [v5 setMatchesTransform:1];

  return v5;
}

- (void)_createShutterHighlightLayersIfNeeded
{
  if (!self->__shutterElementLayer)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979438]);
    shutterElementLayer = self->__shutterElementLayer;
    self->__shutterElementLayer = v3;

    v5 = *MEMORY[0x1E69796E0];
    [(CASDFElementLayer *)self->__shutterElementLayer setCornerCurve:*MEMORY[0x1E69796E0]];
    [(CASDFElementLayer *)self->__shutterElementLayer setAllowsEdgeAntialiasing:1];
    v6 = objc_alloc_init(MEMORY[0x1E6979478]);
    shutterTopEdgeGlareSdfLayer = self->__shutterTopEdgeGlareSdfLayer;
    self->__shutterTopEdgeGlareSdfLayer = v6;

    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setName:@"shutterTopEdgeGlareSdfLayer"];
    v23 = objc_alloc_init(MEMORY[0x1E6979460]);
    [v23 setAmount:0.5];
    [v23 setAngle:5.61];
    [v23 setCurvature:0.65];
    [v23 setHeight:1.0];
    [v23 setSpread:1.605];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setEffect:v23];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setCornerCurve:v5];
    v8 = self->__shutterTopEdgeGlareSdfLayer;
    v9 = [(CAMDynamicShutterControl *)self _sdfPortalForElement:self->__shutterElementLayer];
    [(CASDFLayer *)v8 addSublayer:v9];

    v10 = *MEMORY[0x1E6979CF8];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setCompositingFilter:v11];

    LODWORD(v12) = 1055622431;
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setOpacity:v12];
    v13 = objc_alloc_init(MEMORY[0x1E6979478]);
    shutterBottomEdgeGlareSdfLayer = self->__shutterBottomEdgeGlareSdfLayer;
    self->__shutterBottomEdgeGlareSdfLayer = v13;

    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setName:@"shutterBottomEdgeGlareSdfLayer"];
    v15 = objc_alloc_init(MEMORY[0x1E6979460]);
    [v15 setAmount:0.5];
    [v15 setAngle:2.495];
    [v15 setCurvature:0.65];
    [v15 setHeight:1.0];
    [v15 setSpread:1.039];
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setEffect:v15];
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setCornerCurve:v5];
    v16 = self->__shutterBottomEdgeGlareSdfLayer;
    v17 = [(CAMDynamicShutterControl *)self _sdfPortalForElement:self->__shutterElementLayer];
    [(CASDFLayer *)v16 addSublayer:v17];

    v18 = [MEMORY[0x1E6979378] filterWithType:v10];
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setCompositingFilter:v18];

    LODWORD(v19) = 1055622431;
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setOpacity:v19];
    [(CAMDynamicShutterControl *)self _suppressImplicitAnimationsForLayer:self->__shutterElementLayer];
    [(CAMDynamicShutterControl *)self _suppressImplicitAnimationsForLayer:self->__shutterTopEdgeGlareSdfLayer];
    [(CAMDynamicShutterControl *)self _suppressImplicitAnimationsForLayer:self->__shutterBottomEdgeGlareSdfLayer];
    layer = [(UIView *)self->__centerOuterView layer];
    [layer addSublayer:self->__shutterElementLayer];

    layer2 = [(UIView *)self->__centerOuterView layer];
    [layer2 addSublayer:self->__shutterTopEdgeGlareSdfLayer];

    layer3 = [(UIView *)self->__centerOuterView layer];
    [layer3 addSublayer:self->__shutterBottomEdgeGlareSdfLayer];
  }
}

- (void)_suppressImplicitAnimationsForLayer:(id)layer
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"bounds";
  v3 = MEMORY[0x1E695DFB0];
  layerCopy = layer;
  null = [v3 null];
  v11[0] = null;
  v10[1] = @"position";
  null2 = [MEMORY[0x1E695DFB0] null];
  v11[1] = null2;
  v10[2] = @"opacity";
  null3 = [MEMORY[0x1E695DFB0] null];
  v11[2] = null3;
  v10[3] = @"cornerRadius";
  null4 = [MEMORY[0x1E695DFB0] null];
  v11[3] = null4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  [layerCopy setActions:v9];
}

- (void)_updateShutterHighlightLayers
{
  if (self->__shutterElementLayer)
  {
    [(UIView *)self->__centerOuterView bounds];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    MidY = CGRectGetMidY(v16);
    layer = [(UIView *)self->__centerOuterView layer];
    [layer cornerRadius];
    v11 = v10;

    disableOptionalUIEffects = [(CAMDynamicShutterControl *)self disableOptionalUIEffects];
    [(CASDFElementLayer *)self->__shutterElementLayer setBounds:x, y, width, height];
    [(CASDFElementLayer *)self->__shutterElementLayer setPosition:MidX, MidY];
    [(CASDFElementLayer *)self->__shutterElementLayer setCornerRadius:v11];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setBounds:x, y, width, height];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setPosition:MidX, MidY];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setCornerRadius:v11];
    [(CASDFLayer *)self->__shutterTopEdgeGlareSdfLayer setHidden:disableOptionalUIEffects];
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setBounds:x, y, width, height];
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setPosition:MidX, MidY];
    [(CASDFLayer *)self->__shutterBottomEdgeGlareSdfLayer setCornerRadius:v11];
    shutterBottomEdgeGlareSdfLayer = self->__shutterBottomEdgeGlareSdfLayer;

    [(CASDFLayer *)shutterBottomEdgeGlareSdfLayer setHidden:disableOptionalUIEffects];
  }
}

- (void)setDisableOptionalUIEffects:(BOOL)effects
{
  if (self->_disableOptionalUIEffects != effects)
  {
    self->_disableOptionalUIEffects = effects;
    [(CAMDynamicShutterControl *)self _updateShutterHighlightLayers];
  }
}

- (CAMDynamicShutterControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($76EADD4ED24426C67044446678BAA581)settings
{
  v3 = *&self[16].var8;
  *&retstr->var4 = *&self[16].var6;
  *&retstr->var6 = v3;
  retstr->var8 = self[17].var1;
  v4 = *&self[16].var4;
  *&retstr->var0 = *&self[16].var2;
  *&retstr->var2 = v4;
  return self;
}

- (CAMShutterButtonSpec)_shutterButtonSpec
{
  v3 = *&self[25].stopSquareCornerRadius;
  *&retstr->outerRingDiameter = *&self[25].outerRingStrokeWidth;
  *&retstr->stopSquareSideLength = v3;
  retstr->interRingSpacing = self[26].outerRingDiameter;
  return self;
}

- (CAMShutterButtonSpec)_lockButtonActiveSpec
{
  v3 = *&self[26].stopSquareCornerRadius;
  *&retstr->outerRingDiameter = *&self[26].outerRingStrokeWidth;
  *&retstr->stopSquareSideLength = v3;
  retstr->interRingSpacing = self[27].outerRingDiameter;
  return self;
}

- (CAMShutterButtonSpec)_pauseResumeButtonSpec
{
  v3 = *&self[27].stopSquareCornerRadius;
  *&retstr->outerRingDiameter = *&self[27].outerRingStrokeWidth;
  *&retstr->stopSquareSideLength = v3;
  retstr->interRingSpacing = self[28].outerRingDiameter;
  return self;
}

- (CAMShutterButtonSpec)_lockButtonInactiveSpec
{
  v3 = *&self[28].stopSquareCornerRadius;
  *&retstr->outerRingDiameter = *&self[28].outerRingStrokeWidth;
  *&retstr->stopSquareSideLength = v3;
  retstr->interRingSpacing = self[29].outerRingDiameter;
  return self;
}

- ($E50CC26D34D0158E20D4445E4757B7F2)_firstTouch
{
  var0 = self[30].var0;
  retstr->var0 = *&self[29].var1;
  *&retstr->var1 = var0;
  return self;
}

- ($E50CC26D34D0158E20D4445E4757B7F2)_mostRecentTouch
{
  var0 = self[31].var0;
  retstr->var0 = *&self[30].var1;
  *&retstr->var1 = var0;
  return self;
}

- (void)_setMostRecentTouch:(id *)touch
{
  v3 = *&touch->var1;
  self->$2BE7AFF22295DED6A45A0E44EF7D16DF::point = touch->var0;
  *&self->$2BE7AFF22295DED6A45A0E44EF7D16DF::time = v3;
}

@end