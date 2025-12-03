@interface CAMPreviewViewController
- ($A7BD2C69B781C0BFC9847BBC3FF98882)_geometryAnimationParametersForViewType:(SEL)type;
- (BOOL)_allowUserToChangeFocusAndExposure;
- (BOOL)_canModifyExposureBias;
- (BOOL)_dockKitModeIndicatorViewsContainPoint:(CGPoint)point;
- (BOOL)_focusOnPoint:(CGPoint)point shouldShowFocusAndExposureIndicator:(BOOL)indicator;
- (BOOL)_isFocusAndExposureLockedByUserOrExternally;
- (BOOL)_isFullyAutomaticFocus:(id)focus andExposure:(id)exposure;
- (BOOL)_isLongPressingToLock;
- (BOOL)_isPanningExposureBias;
- (BOOL)_isPointOnVisibleFocusIndicator:(CGPoint)indicator;
- (BOOL)_isShowingContinuousIndicator;
- (BOOL)_isShowingIndicatorsOfType:(id)type;
- (BOOL)_mrcIndicatorButtonContainsTouch:(id)touch;
- (BOOL)_setCinematicFocusForMetadataObject:(id)object atPoint:(CGPoint)point useFixedOpticalFocus:(BOOL)focus useHardFocus:(BOOL)hardFocus;
- (BOOL)_shouldAllowFaceIndicators;
- (BOOL)_shouldAllowTextRegionIndicators;
- (BOOL)_shouldDisableAspectRatioToggle;
- (BOOL)_shouldResetFocusAndExposureForSubjectAreaDidChange;
- (BOOL)_shouldShowContinuousIndicator;
- (BOOL)_shouldShowPortraitModeIndicatorViews;
- (BOOL)_shouldShowStageLightOverlayViewForMode:(int64_t)mode device:(int64_t)device lightingType:(int64_t)type shallowDepthOfFieldStatus:(int64_t)status stagePreviewStatus:(int64_t)previewStatus;
- (BOOL)_shouldSuppressNewFaces;
- (BOOL)_shouldSuppressNewPortraitModeTrackedSubjectIndicators;
- (BOOL)_shouldUpdateIndicatorSizeFrom:(CGSize)from to:(CGSize)to minimumAreaChangeThreshold:(double)threshold minimumAreaFractionChangeThreshold:(double)changeThreshold;
- (BOOL)_showExposureBiasSliderForPointView;
- (BOOL)captureController:(id)controller shouldResetFocusAndExposureForReason:(int64_t)reason;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isFocusLockedByUser;
- (BOOL)isFocusLockedOnCinematicSubject;
- (BOOL)isFocusLockedOnDockKitSubject;
- (BOOL)isShowingPointIndicator;
- (CAMPreviewViewController)initWithCaptureController:(id)controller motionController:(id)motionController timelapseController:(id)timelapseController;
- (CAMPreviewViewController)initWithCoder:(id)coder;
- (CAMPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CAMPreviewViewControllerDelegate)delegate;
- (CAMTimelapseController)_timelapseController;
- (CGPoint)pointOfInterestInNormalizedCaptureDeviceSpace;
- (CGRect)normalizedZoomPIPRect;
- (UIPanGestureRecognizer)activeExposureBiasPanGestureRecognizer;
- (double)_effectiveExposureBiasMovementForTranslation:(CGPoint)translation;
- (double)_exposureBiasForVirtualSliderPosition:(double)position;
- (double)_virtualSliderPositionForExposureBias:(double)bias;
- (double)captureControllerDelayBeforeResettingFocusAndExposureAfterCapture:(id)capture;
- (float)_exposureTargetBiasMaximum;
- (float)_exposureTargetBiasMinimum;
- (float)baselineExposureValueForCaptureController:(id)controller;
- (float)totalExposureBias;
- (id)_cinematicModeIndicatorViewAtPoint:(CGPoint)point;
- (id)_focusIndicatorViewsWithExposureBiasSliders;
- (id)_groupIDForMetadataObject:(id)object;
- (id)_subjectGroupResultsFromMetadataObjects:(id)objects;
- (int)_exposureBiasSide;
- (int64_t)_device;
- (int64_t)_devicePosition;
- (int64_t)_interfaceOrientation;
- (int64_t)_mode;
- (int64_t)_styleForPointIndicatorWithRectSize:(int64_t)size;
- (void)_activateFocusIndicator:(id)indicator;
- (void)_addIndicatorView:(id)view forType:(id)type identifier:(id)identifier underlyingMetadataObject:(id)object;
- (void)_animateFrontPIPToCenter:(CGPoint)center animationUpdateMode:(int64_t)mode resetFocusAndExposure:(BOOL)exposure;
- (void)_animateFrontPIPVideoPreviewToAnchor:(int64_t)anchor;
- (void)_animateIfNeededWithParameters:(id *)parameters animations:(id)animations completion:(id)completion;
- (void)_animateView:(id)view type:(id)type withCenter:(CGPoint)center bounds:(CGRect)bounds transform:(CGAffineTransform *)transform;
- (void)_applicationDidEnterBackground;
- (void)_cancelDelayedActions;
- (void)_cancelDelayedFadeOutOfViewType:(id)type;
- (void)_cancelDelayedFocusAndExposureLock;
- (void)_cancelDelayedHideOrDeactivateForFocusIndicator:(id)indicator;
- (void)_captureOrientationChanged:(id)changed;
- (void)_createAspectRatioToggleDoubleTapGestureRecognizerIfNecessary;
- (void)_createCommonGestureRecognizersIfNecessary;
- (void)_createContinuousIndicatorIfNecessary;
- (void)_createExposureBiasPanGestureRecognizerIfNecessary;
- (void)_createExternalFocusLockIndicatorIfNecessary;
- (void)_createFrontPIPVideoPreviewViewPanGestureRecognizerIfNecessary;
- (void)_createLongPressToLockGestureRecognizersIfNecessary;
- (void)_createPointIndicatorIfNecessary;
- (void)_createPortraitModeCenteredIndicatorViewIfNecessary;
- (void)_createStageLightOverlayViewIfNeededWillAnimate:(BOOL)animate;
- (void)_createTapToFocusAndExposeGestureRecognizerIfNecessary;
- (void)_deactivateFocusIndicator:(id)indicator;
- (void)_deactivateFocusIndicator:(id)indicator afterDelay:(double)delay;
- (void)_didChangeGraphConfigurationAnimated:(BOOL)animated;
- (void)_fadeInView:(id)view withDuration:(double)duration;
- (void)_fadeOutAndRemoveIndicatorView:(id)view forType:(id)type identifier:(id)identifier withDuration:(double)duration;
- (void)_fadeOutAndRemoveIndicatorViewsOfType:(id)type withDuration:(double)duration;
- (void)_fadeOutIndicatorsOfViewType:(id)type afterDelay:(double)delay;
- (void)_fadeOutView:(id)view withDuration:(double)duration completion:(id)completion;
- (void)_finishFocusingLockedPointOfInterestIndicator;
- (void)_handleAspectRatioToggleDoubleTap:(id)tap;
- (void)_handleExposureBiasPan:(id)pan;
- (void)_handleFocusTapForPointInPreviewView:(CGPoint)view;
- (void)_handleFrontPIPVideoPreviewViewPan:(id)pan;
- (void)_handleFrontPIPVideoPreviewViewPanDidEndAtPosition:(CGPoint)position withVelocity:(CGPoint)velocity inView:(id)view timestamp:(id *)timestamp;
- (void)_handleFrontPIPVideoPreviewViewPanDidMoveWithTranslation:(CGPoint)translation withGesture:(id)gesture inView:(id)view timestamp:(id *)timestamp;
- (void)_handleLongPressToLock:(id)lock;
- (void)_handleSignificantMRCIndicatorButtonTapped:(id)tapped;
- (void)_handleTapToFocusAndExpose:(id)expose;
- (void)_hideAllCinematicIndicatorsAnimated:(BOOL)animated;
- (void)_hideAllFocusIndicatorsAnimated:(BOOL)animated;
- (void)_hideAllFocusIndicatorsExceptForIndicator:(id)indicator;
- (void)_hideFocusIndicator:(id)indicator afterDelay:(double)delay;
- (void)_hideFocusIndicator:(id)indicator animated:(BOOL)animated;
- (void)_hideFrontPIPVideoPreviewView;
- (void)_hideIndicatorsOfViewType:(id)type animated:(BOOL)animated;
- (void)_initializeExposureBiasParametersForFocusIndicatorView:(id)view;
- (void)_initializeExposureBiasSliderParameters;
- (void)_lockFocusAndExposure;
- (void)_lockFocusAndExposureAfterDelay:(double)delay;
- (void)_previewDidStartRunning:(id)running;
- (void)_removeIndicatorViewForType:(id)type identifier:(id)identifier;
- (void)_resetCachedTimes;
- (void)_resetFaceTracking;
- (void)_resetFocusAndExposureIfFrontPIPObscuresIndicator;
- (void)_scaleDownLockedPointOfInterest;
- (void)_scalePortraitModeFocusIndicators;
- (void)_setCinematicIsFixedFocusLocked:(BOOL)locked shouldAnimate:(BOOL)animate;
- (void)_setCinematicSubjectIsTrackingLocked:(BOOL)locked shouldAnimate:(BOOL)animate;
- (void)_setDockKitFocusAtPoint:(CGPoint)point;
- (void)_setDockKitSubjectIsTrackingLocked:(BOOL)locked shouldAnimate:(BOOL)animate;
- (void)_setFocusIndicatorsPulsing:(BOOL)pulsing;
- (void)_setLastExposureResult:(id)result;
- (void)_setLastFocusResult:(id)result;
- (void)_setPreviewAspectModeForCurrentWindowSize:(int64_t)size;
- (void)_setUserLockedFocusAndExposure:(BOOL)exposure shouldAnimate:(BOOL)animate;
- (void)_showIndicatorAtPointOfInterest:(CGPoint)interest rectSize:(int64_t)size animateInPlace:(BOOL)place;
- (void)_showLockedAtPointOfInterest:(CGPoint)interest;
- (void)_showUIForResetFocusAndExposure;
- (void)_subjectGroupResultsFromMetadataObjects:(id)objects nonFixedFocusResults:(id *)results fixedFocusResults:(id *)focusResults;
- (void)_updateCaptureControllerExposureTargetBias;
- (void)_updateCaptureControllerWithFrontPIPFrameRelativeToViewport:(CGRect)viewport cornerRadius:(double)radius timestamp:(id *)timestamp;
- (void)_updateCinematicModeViewsForResults:(id)results;
- (void)_updateCinematicModeViewsForTrackingChange;
- (void)_updateDockKitModeViewsForResults:(id)results;
- (void)_updateDockKitModeViewsForTrackingChange;
- (void)_updateExposureBiasPanGestureRecognizerForOrientation;
- (void)_updateExposureBiasSideAnimated:(BOOL)animated;
- (void)_updateExposureBiasViews;
- (void)_updateExposureBiasViews:(id)views;
- (void)_updateFaceIndicatorsForResults:(id)results;
- (void)_updateForOrientationAnimated:(BOOL)animated;
- (void)_updateIndicatorsForMetadataObjectResults:(id)results allowNewAndReappearingIndicators:(BOOL)indicators viewType:(id)type viewClass:(Class)class geometryCallback:(id)callback minimumAreaChangeThreshold:(double)threshold minimumAreaFractionChangeThreshold:(double)changeThreshold viewInitializerCallback:(id)self0;
- (void)_updateMRCIndicatorsAnimated:(BOOL)animated;
- (void)_updateMRCIndicatorsIfNecessaryAnimated:(BOOL)animated;
- (void)_updatePhotoModeIndicatorsStyle;
- (void)_updatePortraitModeViewsAnimated:(BOOL)animated;
- (void)_updatePortraitModeViewsForResults:(id)results;
- (void)_updatePreviewIndicatorClippingStyleForGraphConfiguration:(id)configuration;
- (void)_updatePreviewViewAspectMode;
- (void)_updateTextRegionIndicators;
- (void)_updateTextRegionIndicatorsIfNecessary;
- (void)_updateUIForCenteredContrastBasedFocusDidEnd;
- (void)_validateExposureTargetBiasFromExposureResult:(id)result;
- (void)_validateInternalProperties;
- (void)_validateLastExposureBiasModificationTime;
- (void)_willChangeGraphConfiguration;
- (void)captureController:(id)controller didOutputExposureResult:(id)result;
- (void)captureController:(id)controller didOutputFaceResults:(id)results headResults:(id)headResults bodyResults:(id)bodyResults salientObjectResults:(id)objectResults;
- (void)captureController:(id)controller didOutputFocusResult:(id)result;
- (void)captureController:(id)controller willResetFocus:(BOOL)focus exposure:(BOOL)exposure;
- (void)dealloc;
- (void)didChangeToGraphConfiguration:(id)configuration animated:(BOOL)animated;
- (void)focusOnNormalizedPoint:(CGPoint)point;
- (void)loadView;
- (void)notifyCaptureSessionDidStopRunning;
- (void)notifyDidStopCapture;
- (void)notifyWillStartCapturing;
- (void)setBaselineExposureBias:(float)bias;
- (void)setCachedExposureTargetBias:(float)bias;
- (void)setCachedMRCResults:(id)results;
- (void)setCachedSignificantMRCResult:(id)result;
- (void)setCachedSignificantTextRegionResult:(id)result;
- (void)setCachedTextRegionResults:(id)results;
- (void)setFocusAndExposureExternallyLocked:(BOOL)locked;
- (void)setLayoutStyle:(int64_t)style;
- (void)setLightingType:(int64_t)type animated:(BOOL)animated;
- (void)setNormalizedZoomPIPRect:(CGRect)rect;
- (void)setShallowDepthOfFieldStatus:(int64_t)status;
- (void)setShallowDepthOfFieldStatus:(int64_t)status stagePreviewStatus:(int64_t)previewStatus;
- (void)setShouldUsePortraitStyleIndicatorsInPhotoMode:(BOOL)mode;
- (void)setShowingStandardControls:(BOOL)controls;
- (void)setStagePreviewStatus:(int64_t)status;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willChangeToGraphConfiguration:(id)configuration;
@end

@implementation CAMPreviewViewController

- (void)_initializeExposureBiasSliderParameters
{
  [(CAMPreviewViewController *)self _setExposureBiasVirtualSliderExponent:1.4];

  [(CAMPreviewViewController *)self _setExposureBiasVirtualSliderPointsForFirstStop:120.0];
}

- (void)_resetFaceTracking
{
  [(CAMPreviewViewController *)self _setCurrentFacesCount:0];
  [(CAMPreviewViewController *)self _setShouldSuppressExistingFaceIndicators:0];

  [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:0.0];
}

- (void)loadView
{
  v3 = +[CAMUserPreferences preferences];
  v4 = [v3 previewViewAspectModeForMode:-[CAMPreviewViewController _mode](self isFullScreen:{"_mode"), 1}];

  v5 = +[CAMUserPreferences preferences];
  v6 = [v5 previewViewAspectModeForMode:-[CAMPreviewViewController _mode](self isFullScreen:{"_mode"), 0}];

  v7 = [CAMPreviewView alloc];
  v9 = [(CAMPreviewView *)v7 initWithFrame:v4 initialPreviewAspectMode:v6 initialWindowedPreviewAspectMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if ([(CAMPreviewViewController *)self _disableAllIndicators])
  {
    indicatorContainerView = [(CAMPreviewView *)v9 indicatorContainerView];
    [indicatorContainerView setHidden:1];
  }

  [(CAMPreviewViewController *)self setView:v9];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v5 viewDidLoad];
  _interfaceOrientation = [(CAMPreviewViewController *)self _interfaceOrientation];
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView setOrientation:_interfaceOrientation];
}

- (void)_createCommonGestureRecognizersIfNecessary
{
  [(CAMPreviewViewController *)self _createTapToFocusAndExposeGestureRecognizerIfNecessary];
  [(CAMPreviewViewController *)self _createLongPressToLockGestureRecognizersIfNecessary];
  [(CAMPreviewViewController *)self _createExposureBiasPanGestureRecognizerIfNecessary];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = CAMIsTallScreen(mainScreen);

  if (!v4)
  {

    [(CAMPreviewViewController *)self _createAspectRatioToggleDoubleTapGestureRecognizerIfNecessary];
  }
}

- (void)_createTapToFocusAndExposeGestureRecognizerIfNecessary
{
  if (!self->__tapToFocusAndExposeGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToFocusAndExpose_];
    tapToFocusAndExposeGestureRecognizer = self->__tapToFocusAndExposeGestureRecognizer;
    self->__tapToFocusAndExposeGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->__tapToFocusAndExposeGestureRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->__tapToFocusAndExposeGestureRecognizer setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)self->__tapToFocusAndExposeGestureRecognizer setDelegate:self];
    view = [(CAMPreviewViewController *)self view];
    [view addGestureRecognizer:self->__tapToFocusAndExposeGestureRecognizer];
  }
}

- (void)_createLongPressToLockGestureRecognizersIfNecessary
{
  if (!self->__longPressToLockGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPressToLock_];
    longPressToLockGestureRecognizer = self->__longPressToLockGestureRecognizer;
    self->__longPressToLockGestureRecognizer = v3;

    [(UILongPressGestureRecognizer *)self->__longPressToLockGestureRecognizer setMinimumPressDuration:0.5];
    [(UILongPressGestureRecognizer *)self->__longPressToLockGestureRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)self->__longPressToLockGestureRecognizer setDelaysTouchesEnded:0];
    [(UILongPressGestureRecognizer *)self->__longPressToLockGestureRecognizer setDelegate:self];
    view = [(CAMPreviewViewController *)self view];
    [view addGestureRecognizer:self->__longPressToLockGestureRecognizer];
  }
}

- (void)_createExposureBiasPanGestureRecognizerIfNecessary
{
  if (!self->__exposureBiasPanGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleExposureBiasPan_];
    exposureBiasPanGestureRecognizer = self->__exposureBiasPanGestureRecognizer;
    self->__exposureBiasPanGestureRecognizer = v3;

    [(UIPanGestureRecognizer *)self->__exposureBiasPanGestureRecognizer _setCanPanHorizontally:0];
    [(UIPanGestureRecognizer *)self->__exposureBiasPanGestureRecognizer _setCanPanVertically:1];
    [(UIPanGestureRecognizer *)self->__exposureBiasPanGestureRecognizer setCancelsTouchesInView:0];
    [(UIPanGestureRecognizer *)self->__exposureBiasPanGestureRecognizer setDelaysTouchesEnded:0];
    [(UIPanGestureRecognizer *)self->__exposureBiasPanGestureRecognizer setDelegate:self];
    view = [(CAMPreviewViewController *)self view];
    [view addGestureRecognizer:self->__exposureBiasPanGestureRecognizer];

    [(CAMPreviewViewController *)self _updateExposureBiasPanGestureRecognizerForOrientation];
  }
}

- (void)_updateExposureBiasPanGestureRecognizerForOrientation
{
  v3 = [(CAMPreviewViewController *)self _interfaceOrientation]- 3;
  v4 = v3 > 1;
  [(UIPanGestureRecognizer *)self->__exposureBiasPanGestureRecognizer _setCanPanHorizontally:v3 < 2];
  exposureBiasPanGestureRecognizer = self->__exposureBiasPanGestureRecognizer;

  [(UIPanGestureRecognizer *)exposureBiasPanGestureRecognizer _setCanPanVertically:v4];
}

- (int64_t)_interfaceOrientation
{
  _motionController = [(CAMPreviewViewController *)self _motionController];
  captureOrientation = [_motionController captureOrientation];

  return captureOrientation;
}

- (BOOL)isFocusLockedByUser
{
  if ([(CAMFocusResult *)self->__lastFocusResult deviceSupportsFocus]&& [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally])
  {
    return 1;
  }

  return [(CAMPreviewViewController *)self _cinematicIsFixedFocusLocked];
}

- (int64_t)_mode
{
  _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
  mode = [_graphConfiguration mode];

  return mode;
}

- (int64_t)_device
{
  _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
  device = [_graphConfiguration device];

  return device;
}

- (BOOL)_shouldShowPortraitModeIndicatorViews
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isDockAccessoryConnectedAndTracking = [WeakRetained isDockAccessoryConnectedAndTracking];

  if (isDockAccessoryConnectedAndTracking)
  {
    return 0;
  }

  v6 = [(CAMPreviewViewController *)self _mode]== 6;
  return v6 & ![(CAMPreviewViewController *)self _isChangingGraphConfiguration];
}

- (void)_updatePreviewViewAspectMode
{
  v9 = +[CAMCaptureCapabilities capabilities];
  _mode = [(CAMPreviewViewController *)self _mode];
  previewView = [(CAMPreviewViewController *)self previewView];
  videoPreviewView = [previewView videoPreviewView];
  previewViewWindowIsFullScreen = [videoPreviewView previewViewWindowIsFullScreen];
  if (([v9 isPreviewAspectRatioToggleSupportedForMode:_mode] & 1) != 0 || !previewViewWindowIsFullScreen)
  {
    v8 = +[CAMUserPreferences preferences];
    v7 = [v8 previewViewAspectModeForMode:_mode isFullScreen:previewViewWindowIsFullScreen];
  }

  else if ([v9 isSpatialOverCaptureSupported])
  {
    v7 = ~([v9 spatialOverCaptureSupportForMode:-[CAMPreviewViewController _mode](self device:{"_mode"), -[CAMPreviewViewController _device](self, "_device")}] >> 1) & 1;
  }

  else
  {
    v7 = 0;
  }

  [(CAMPreviewViewController *)self _setPreviewAspectModeForCurrentWindowSize:v7];
}

- (void)_validateInternalProperties
{
  _lastExposureResult = [(CAMPreviewViewController *)self _lastExposureResult];
  [(CAMPreviewViewController *)self _validateExposureTargetBiasFromExposureResult:_lastExposureResult];

  [(CAMPreviewViewController *)self _validateLastExposureBiasModificationTime];

  [(CAMPreviewViewController *)self _validateUserLockedFocusAndExposure];
}

- (void)_validateLastExposureBiasModificationTime
{
  _lastExposureBiasModificationTime = [(CAMPreviewViewController *)self _lastExposureBiasModificationTime];
  if (_lastExposureBiasModificationTime)
  {
    v4 = _lastExposureBiasModificationTime;
    _isFullyAutomaticFocusAndExposure = [(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure];

    if (_isFullyAutomaticFocusAndExposure)
    {

      [(CAMPreviewViewController *)self _setLastExposureBiasModifiedTime:0];
    }
  }
}

- (CAMTimelapseController)_timelapseController
{
  WeakRetained = objc_loadWeakRetained(&self->__timelapseController);

  return WeakRetained;
}

- (void)_showUIForResetFocusAndExposure
{
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsExceptForIndicator:_continuousIndicator];
    _shouldShowContinuousIndicator = [(CAMPreviewViewController *)self _shouldShowContinuousIndicator];
    if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
    {
      [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
    }

    else if (_shouldShowContinuousIndicator)
    {
      _isShowingContinuousIndicator = [(CAMPreviewViewController *)self _isShowingContinuousIndicator];
      if (!_continuousIndicator)
      {
        [(CAMPreviewViewController *)self _createContinuousIndicatorIfNecessary];
        _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
      }

      [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:_continuousIndicator];
      if (!_isShowingContinuousIndicator)
      {
        date = [MEMORY[0x1E695DF00] date];
        [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:date];

        [_continuousIndicator startScalingWithExpansionWidth:1 duration:31.0 repeatCount:0.3];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __59__CAMPreviewViewController__showUIForResetFocusAndExposure__block_invoke;
      aBlock[3] = &unk_1E76F77B0;
      _continuousIndicator = _continuousIndicator;
      v9 = _continuousIndicator;
      v7 = _Block_copy(aBlock);
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v7 options:0 animations:0.25 completion:0.0];
    }
  }
}

- (BOOL)_shouldShowContinuousIndicator
{
  _mode = [(CAMPreviewViewController *)self _mode];
  LOBYTE(v4) = 1;
  if (_mode <= 8)
  {
    if (((1 << _mode) & 0x187) != 0)
    {
      _captureController = [(CAMPreviewViewController *)self _captureController];
      v4 = [_captureController isCapturingVideo] ^ 1;
    }

    else
    {
      LOBYTE(v4) = _mode != 3;
    }
  }

  _device = [(CAMPreviewViewController *)self _device];
  if ((_device - 1) <= 0xA)
  {
    v7 = ((0x781u >> (_device - 1)) ^ 1) & v4;
  }

  else
  {
    v7 = v4;
  }

  return ![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"face"]& v7;
}

- (void)_createContinuousIndicatorIfNecessary
{
  if (!self->__continuousIndicator)
  {
    v3 = [[CAMFocusIndicatorView alloc] initWithStyle:0];
    continuousIndicator = self->__continuousIndicator;
    self->__continuousIndicator = v3;

    [(CAMFocusIndicatorView *)self->__continuousIndicator setDelegate:self];
    previewView = [(CAMPreviewViewController *)self previewView];
    [previewView setContinuousIndicator:self->__continuousIndicator];
  }
}

- (void)_updateUIForCenteredContrastBasedFocusDidEnd
{
  if (![(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
  {
    _lastFocusIndictorStartTime = [(CAMPreviewViewController *)self _lastFocusIndictorStartTime];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:_lastFocusIndictorStartTime];
    v5 = v4;

    _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator afterDelay:0.8 - v5];
  }
}

- (UIPanGestureRecognizer)activeExposureBiasPanGestureRecognizer
{
  if ([(CAMPreviewViewController *)self _canModifyExposureBias])
  {
    _exposureBiasPanGestureRecognizer = [(CAMPreviewViewController *)self _exposureBiasPanGestureRecognizer];
  }

  else
  {
    _exposureBiasPanGestureRecognizer = 0;
  }

  return _exposureBiasPanGestureRecognizer;
}

- (BOOL)_canModifyExposureBias
{
  if ([(CAMPreviewViewController *)self _shouldDisableFocusUI])
  {
    goto LABEL_2;
  }

  isShowingStandardControls = [(CAMPreviewViewController *)self isShowingStandardControls];
  if (!isShowingStandardControls)
  {
    return isShowingStandardControls;
  }

  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 isTapAndBiasSupportedForMode:{-[CAMPreviewViewController _mode](self, "_mode")}];

  if (!v5 || [(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure])
  {
LABEL_2:
    LOBYTE(isShowingStandardControls) = 0;
  }

  else
  {
    isShowingStandardControls = [(CAMPreviewViewController *)self isShowingPointIndicator];
    if (isShowingStandardControls)
    {
      LOBYTE(isShowingStandardControls) = ![(CUCaptureController *)self->__captureController isCapturingTimelapse];
    }
  }

  return isShowingStandardControls;
}

- (void)notifyWillStartCapturing
{
  _mode = [(CAMPreviewViewController *)self _mode];
  if (_mode <= 9)
  {
    if (((1 << _mode) & 0x251) != 0)
    {
      _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator animated:0];

      [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:0];
    }

    else if (_mode == 3)
    {

      [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];
    }
  }
}

- (void)notifyDidStopCapture
{
  _mode = [(CAMPreviewViewController *)self _mode];
  if (_mode <= 8 && ((1 << _mode) & 0x187) != 0)
  {
    _captureController = [(CAMPreviewViewController *)self _captureController];
    isCapturingVideo = [_captureController isCapturingVideo];
    isCapturingBurst = [_captureController isCapturingBurst];
    if ((isCapturingVideo & 1) == 0 && (isCapturingBurst & 1) == 0)
    {
      [(CAMPreviewViewController *)self _resetFaceTracking];
    }
  }
}

- (void)_applicationDidEnterBackground
{
  [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];

  [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0 shouldAnimate:0];
}

- (void)notifyCaptureSessionDidStopRunning
{
  [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:0];
  [(CAMPreviewViewController *)self _hideAllCinematicIndicatorsAnimated:0];
  [(CAMPreviewViewController *)self _resetFaceTracking];

  [(CAMPreviewViewController *)self _hideFrontPIPVideoPreviewView];
}

- (CAMPreviewViewController)initWithCaptureController:(id)controller motionController:(id)motionController timelapseController:(id)timelapseController
{
  controllerCopy = controller;
  motionControllerCopy = motionController;
  timelapseControllerCopy = timelapseController;
  v23.receiver = self;
  v23.super_class = CAMPreviewViewController;
  v12 = [(CAMPreviewViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    [(CAMPreviewViewController *)v12 _initializeExposureBiasSliderParameters];
    v13->_showingStandardControls = 1;
    objc_storeStrong(&v13->__captureController, controller);
    objc_storeStrong(&v13->__motionController, motionController);
    objc_storeWeak(&v13->__timelapseController, timelapseControllerCopy);
    [(CUCaptureController *)v13->__captureController setFocusDelegate:v13];
    [(CUCaptureController *)v13->__captureController setExposureDelegate:v13];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__captureOrientationChanged_ name:@"CAMMotionControllerCaptureOrientationChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v13 selector:sel__previewDidStartRunning_ name:*MEMORY[0x1E6986B70] object:0];

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indicatorViewsByType = v13->__indicatorViewsByType;
    v13->__indicatorViewsByType = v17;

    v19 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:6];
    metadataObjectsForView = v13->__metadataObjectsForView;
    v13->__metadataObjectsForView = v19;

    v13->__disableDelayedFadeOutForFaces = CFPreferencesGetAppBooleanValue(@"CAMDebugDisableDelayedFadeOutForFaces", @"com.apple.camera", 0) != 0;
    v13->__disableIndicatorGeometryAnimations = CFPreferencesGetAppBooleanValue(@"CAMDebugDisablePreviewIndicatorViewAnimations", @"com.apple.camera", 0) != 0;
    v13->__disableAllIndicators = CFPreferencesGetAppBooleanValue(@"CAMDebugDisablePreviewIndicators", @"com.apple.camera", 0) != 0;
    [(CAMPreviewViewController *)v13 _resetFaceTracking];
    v21 = v13;
  }

  return v13;
}

- (CAMPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(CAMPreviewViewController *)self doesNotRecognizeSelector:a2, bundle];

  return [(CAMPreviewViewController *)self initWithCaptureController:0 motionController:0 timelapseController:0];
}

- (CAMPreviewViewController)initWithCoder:(id)coder
{
  [(CAMPreviewViewController *)self doesNotRecognizeSelector:a2];

  return [(CAMPreviewViewController *)self initWithCaptureController:0 motionController:0 timelapseController:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CUCaptureController *)self->__captureController setFocusDelegate:0];
  [(CUCaptureController *)self->__captureController setExposureDelegate:0];
  [(CAMFocusIndicatorView *)self->__continuousIndicator setDelegate:0];
  [(CAMFocusIndicatorView *)self->__pointIndicator setDelegate:0];
  v4.receiver = self;
  v4.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v4 viewDidAppear:appear];
  [(CAMPreviewViewController *)self _createCommonGestureRecognizersIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v4 viewWillDisappear:disappear];
  [(CAMPreviewViewController *)self _cancelDelayedActions];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v40 viewDidLayoutSubviews];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];

  [CAMChromeViewSpec topBarItemCornerRadiusForContentSize:preferredContentSizeCategory];
  v6 = v5;
  chromeConfigurator = [(CAMPreviewViewController *)self chromeConfigurator];

  if (chromeConfigurator)
  {
    previewView = [(CAMPreviewViewController *)self previewView];
    chromeConfigurator2 = [(CAMPreviewViewController *)self chromeConfigurator];
    [chromeConfigurator2 collapsedTopBarFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    previewView2 = [(CAMPreviewViewController *)self previewView];
    superview = [previewView2 superview];
    [previewView convertRect:superview toView:{v11, v13, v15, v17}];
    v21 = v20;
    v23 = v22;
    v25 = v24;

    previewView3 = [(CAMPreviewViewController *)self previewView];
    frontPIPVideoPreviewView = [previewView3 frontPIPVideoPreviewView];
    [frontPIPVideoPreviewView frame];
    v29 = v28;
    v31 = v30;

    v39 = 0u;
    v32 = [(CAMPreviewViewController *)self previewView:0];
    v33 = v32;
    if (v32)
    {
      [v32 viewportAnchorsForFrontPIPOriginWithSize:{v29, v31}];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v34 = v29 + *&v39 - (v21 + v25);
    if (v34 >= v23 - *(&v39 + 1))
    {
      v34 = v23 - *(&v39 + 1);
    }

    v6 = fmax(v6 + fmax(v34, 0.0), 0.0);
  }

  previewView4 = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView2 = [previewView4 frontPIPVideoPreviewView];
  layer = [frontPIPVideoPreviewView2 layer];
  [layer setCornerRadius:v6];
}

- (void)_cancelDelayedActions
{
  [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];
  [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:@"face"];
  [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:@"MRC"];
  [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:@"textRegion"];
  [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:self->__continuousIndicator];
  [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:self->__pointIndicator];
  [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:self->__externalFocusLockIndicator];
  captureController = self->__captureController;

  [(CUCaptureController *)captureController cancelDelayedFocusAndExposureReset];
}

- (void)_createPointIndicatorIfNecessary
{
  if (!self->__pointIndicator)
  {
    v3 = [[CAMFocusIndicatorView alloc] initWithStyle:[(CAMPreviewViewController *)self _styleForPointIndicatorWithRectSize:0]];
    pointIndicator = self->__pointIndicator;
    self->__pointIndicator = v3;

    [(CAMFocusIndicatorView *)self->__pointIndicator setDelegate:self];
    previewView = [(CAMPreviewViewController *)self previewView];
    [previewView setPointIndicator:self->__pointIndicator];
    [(CAMPreviewViewController *)self _initializeExposureBiasParametersForFocusIndicatorView:self->__pointIndicator];
  }
}

- (void)_createExternalFocusLockIndicatorIfNecessary
{
  if (!self->__externalFocusLockIndicator)
  {
    v3 = [[CAMFocusIndicatorView alloc] initWithStyle:1];
    externalFocusLockIndicator = self->__externalFocusLockIndicator;
    self->__externalFocusLockIndicator = v3;

    v5 = self->__externalFocusLockIndicator;
    previewView = [(CAMPreviewViewController *)self previewView];
    [previewView setExternalFocusLockIndicator:v5];
  }
}

- (void)_createStageLightOverlayViewIfNeededWillAnimate:(BOOL)animate
{
  if (!self->__stageLightOverlayView)
  {
    animateCopy = animate;
    v5 = objc_alloc_init(CAMStageLightOverlayView);
    stageLightOverlayView = self->__stageLightOverlayView;
    self->__stageLightOverlayView = v5;

    [(CAMStageLightOverlayView *)self->__stageLightOverlayView setVisible:0];
    v7 = self->__stageLightOverlayView;
    previewView = [(CAMPreviewViewController *)self previewView];
    [previewView setStageLightOverlayView:v7];

    if (animateCopy)
    {
      previewView2 = [(CAMPreviewViewController *)self previewView];
      [previewView2 layoutIfNeeded];
    }
  }
}

- (int64_t)_devicePosition
{
  _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
  devicePosition = [_graphConfiguration devicePosition];

  return devicePosition;
}

- (void)willChangeToGraphConfiguration:(id)configuration
{
  [(CAMPreviewViewController *)self _setGraphConfiguration:configuration];

  [(CAMPreviewViewController *)self _willChangeGraphConfiguration];
}

- (void)didChangeToGraphConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  [(CAMPreviewViewController *)self _setGraphConfiguration:configurationCopy];
  [(CAMPreviewViewController *)self _didChangeGraphConfigurationAnimated:animatedCopy];
  v7 = [configurationCopy mode] == 4;
  previewView = [(CAMPreviewViewController *)self previewView];
  videoPreviewView = [previewView videoPreviewView];

  [videoPreviewView setSquare:v7 animated:animatedCopy];
  [(CAMPreviewViewController *)self _updatePreviewViewAspectMode];
  [(CAMPreviewViewController *)self _updatePreviewIndicatorClippingStyleForGraphConfiguration:configurationCopy];
  videoConfiguration = [configurationCopy videoConfiguration];
  videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
  if (videoConfiguration <= 0xE)
  {
    if (((1 << videoConfiguration) & 0x7620) != 0)
    {
      if (videoStabilizationStrength < 4)
      {
        v12 = dbl_1A3A6A8D0[videoStabilizationStrength];
        goto LABEL_10;
      }
    }

    else
    {
      if (((1 << videoConfiguration) & 0x992) != 0)
      {
        v12 = 1080.0;
        goto LABEL_10;
      }

      if (((1 << videoConfiguration) & 0x4C) != 0)
      {
        v12 = 720.0;
        goto LABEL_10;
      }
    }
  }

  v12 = *(MEMORY[0x1E695F060] + 8);
LABEL_10:
  [CAMPIPVideoPreviewView cornerRadiusForContainerWidth:v12];
  [(CAMPreviewViewController *)self set_frontPIPVideoPreviewRenderedCornerRadius:?];
  frontRearSimultaneousVideoEnabled = [configurationCopy frontRearSimultaneousVideoEnabled];
  previewView2 = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView = [previewView2 frontPIPVideoPreviewView];

  [frontPIPVideoPreviewView setHidden:frontRearSimultaneousVideoEnabled ^ 1u];
  v16 = +[CAMCaptureCapabilities capabilities];
  isFrontRearSimultaneousVideoDeferredFrontCameraEnabled = [v16 isFrontRearSimultaneousVideoDeferredFrontCameraEnabled];

  if (!isFrontRearSimultaneousVideoDeferredFrontCameraEnabled)
  {
    delegate = [(CAMPreviewViewController *)self delegate];
    previewView3 = [(CAMPreviewViewController *)self previewView];
    frontPIPAnchor = [previewView3 frontPIPAnchor];
    [frontPIPVideoPreviewView frame];
    [delegate frontPIPWillAnimateToAnchor:frontPIPAnchor withFrame:?];

    if (!frontRearSimultaneousVideoEnabled)
    {
      goto LABEL_12;
    }

LABEL_14:
    HostTimeClock = CMClockGetHostTimeClock();
    memset(&v34, 0, sizeof(v34));
    CMClockGetTime(&v34, HostTimeClock);
    [frontPIPVideoPreviewView frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(CAMPreviewViewController *)self _frontPIPVideoPreviewRenderedCornerRadius];
    v33 = v34;
    [(CAMPreviewViewController *)self _updateCaptureControllerWithFrontPIPFrameRelativeToViewport:&v33 cornerRadius:v25 timestamp:v27, v29, v31, v32];
    [(CAMPreviewViewController *)self _createFrontPIPVideoPreviewViewPanGestureRecognizerIfNecessary];
    goto LABEL_15;
  }

  [frontPIPVideoPreviewView setAlpha:0.0];
  if (frontRearSimultaneousVideoEnabled)
  {
    goto LABEL_14;
  }

LABEL_12:
  delegate2 = [(CAMPreviewViewController *)self delegate];
  v19 = +[CAMPIPVideoPreviewView defaultAnchor];
  [delegate2 frontPIPWillAnimateToAnchor:v19 withFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

LABEL_15:
}

- (void)_willChangeGraphConfiguration
{
  [(CAMPreviewViewController *)self _setChangingGraphConfiguration:1];
  [(CAMPreviewViewController *)self _resetCachedTimes];
  [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];

  [(CAMPreviewViewController *)self _resetFaceTracking];
}

- (void)_didChangeGraphConfigurationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMPreviewViewController *)self _setChangingGraphConfiguration:0];

  [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:animatedCopy];
}

- (void)setLightingType:(int64_t)type animated:(BOOL)animated
{
  if (self->_lightingType != type)
  {
    self->_lightingType = type;
    if (![(CAMPreviewViewController *)self _shouldShowPortraitModeTrackedSubjectIndicatorsForLightingType:?])
    {
      [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:0];
    }

    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)_resetCachedTimes
{
  [(CAMPreviewViewController *)self _setLastTapToFocusTime:0];
  [(CAMPreviewViewController *)self _setLastExposureBiasModifiedTime:0];

  [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:0];
}

- (void)_createAspectRatioToggleDoubleTapGestureRecognizerIfNecessary
{
  if (!self->__aspectRatioToggleDoubleTapGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleAspectRatioToggleDoubleTap_];
    aspectRatioToggleDoubleTapGestureRecognizer = self->__aspectRatioToggleDoubleTapGestureRecognizer;
    self->__aspectRatioToggleDoubleTapGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->__aspectRatioToggleDoubleTapGestureRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)self->__aspectRatioToggleDoubleTapGestureRecognizer setDelaysTouchesEnded:0];
    [(UITapGestureRecognizer *)self->__aspectRatioToggleDoubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->__aspectRatioToggleDoubleTapGestureRecognizer setDelegate:self];
    view = [(CAMPreviewViewController *)self view];
    [view addGestureRecognizer:self->__aspectRatioToggleDoubleTapGestureRecognizer];
  }
}

- (void)_createFrontPIPVideoPreviewViewPanGestureRecognizerIfNecessary
{
  previewView = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView = [previewView frontPIPVideoPreviewView];

  if (self->__frontPIPVideoPreviewPanGestureRecognizer)
  {
    v4 = 1;
  }

  else
  {
    v4 = frontPIPVideoPreviewView == 0;
  }

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleFrontPIPVideoPreviewViewPan_];
    frontPIPVideoPreviewPanGestureRecognizer = self->__frontPIPVideoPreviewPanGestureRecognizer;
    self->__frontPIPVideoPreviewPanGestureRecognizer = v5;

    [frontPIPVideoPreviewView addGestureRecognizer:self->__frontPIPVideoPreviewPanGestureRecognizer];
    v7 = objc_alloc_init(MEMORY[0x1E6993858]);
    frontPIPVideoPreviewAnimationSpringSettings = self->__frontPIPVideoPreviewAnimationSpringSettings;
    self->__frontPIPVideoPreviewAnimationSpringSettings = v7;

    [(CEKFluidBehaviorSettings *)self->__frontPIPVideoPreviewAnimationSpringSettings setDefaultValues];
  }
}

- (void)_updateForOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMPreviewViewController *)self _updateExposureBiasPanGestureRecognizerForOrientation];
  [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:animatedCopy];
  [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:animatedCopy];
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView setOrientation:-[CAMPreviewViewController _interfaceOrientation](self animated:{"_interfaceOrientation"), animatedCopy}];
}

- (void)_setFocusIndicatorsPulsing:(BOOL)pulsing
{
  pulsingCopy = pulsing;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
    {
      _portraitModeCenteredIndicatorView = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];
      [_portraitModeCenteredIndicatorView setPulsing:pulsingCopy];
      _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
      v7 = [_indicatorViewsByType objectForKeyedSubscript:@"portraitSubject"];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__CAMPreviewViewController__setFocusIndicatorsPulsing___block_invoke;
      v9[3] = &__block_descriptor_33_e33_v32__0__NSString_8__UIView_16_B24l;
      v10 = pulsingCopy;
      [v7 enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      _portraitModeCenteredIndicatorView = [(CAMPreviewViewController *)self _continuousIndicator];
      [_portraitModeCenteredIndicatorView setPulsing:pulsingCopy];
    }

    _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
    [_pointIndicator setPulsing:pulsingCopy];
  }
}

- (void)_scalePortraitModeFocusIndicators
{
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls]&& [(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
  {
    _portraitModeCenteredIndicatorView = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];
    [_portraitModeCenteredIndicatorView startScalingWithExpansionWidth:2 duration:8.0 repeatCount:0.35];
    _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v4 = [_indicatorViewsByType objectForKeyedSubscript:@"portraitSubject"];

    [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_54];
  }
}

- (void)_hideAllFocusIndicatorsExceptForIndicator:(id)indicator
{
  indicatorCopy = indicator;
  _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
  if (_continuousIndicator != indicatorCopy)
  {
    [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator animated:0];
  }

  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  if (_pointIndicator != indicatorCopy)
  {
    [(CAMPreviewViewController *)self _hideFocusIndicator:_pointIndicator animated:0];
  }
}

- (void)_hideFocusIndicator:(id)indicator afterDelay:(double)delay
{
  indicatorCopy = indicator;
  v7 = indicatorCopy;
  if (indicatorCopy)
  {
    v8 = indicatorCopy;
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:indicatorCopy];
    if (delay <= 0.0)
    {
      indicatorCopy = [(CAMPreviewViewController *)self _hideFocusIndicator:v8];
    }

    else
    {
      indicatorCopy = [(CAMPreviewViewController *)self performSelector:sel__hideFocusIndicator_ withObject:v8 afterDelay:delay];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](indicatorCopy, v7);
}

- (void)_hideFocusIndicator:(id)indicator animated:(BOOL)animated
{
  animatedCopy = animated;
  indicatorCopy = indicator;
  if (indicatorCopy)
  {
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:indicatorCopy];
    [indicatorCopy setPulsing:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__CAMPreviewViewController__hideFocusIndicator_animated___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    v7 = indicatorCopy;
    v16 = v7;
    v8 = _Block_copy(aBlock);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __57__CAMPreviewViewController__hideFocusIndicator_animated___block_invoke_2;
    v13 = &unk_1E76F7988;
    v14 = v7;
    v9 = _Block_copy(&v10);
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v8 options:v9 animations:0.25 completion:{0.0, v10, v11, v12, v13}];
    }

    else
    {
      v8[2](v8);
      v9[2](v9, 1);
    }
  }
}

- (void)_cancelDelayedHideOrDeactivateForFocusIndicator:(id)indicator
{
  if (indicator)
  {
    indicatorCopy = indicator;
    [CAMPreviewViewController cancelPreviousPerformRequestsWithTarget:self selector:sel__hideFocusIndicator_ object:indicatorCopy];
    [CAMPreviewViewController cancelPreviousPerformRequestsWithTarget:self selector:sel__deactivateFocusIndicator_ object:indicatorCopy];
  }
}

- (void)_hideAllFocusIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
  [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator animated:animatedCopy];

  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  [(CAMPreviewViewController *)self _hideFocusIndicator:_pointIndicator animated:animatedCopy];

  _externalFocusLockIndicator = [(CAMPreviewViewController *)self _externalFocusLockIndicator];
  [(CAMPreviewViewController *)self _hideFocusIndicator:_externalFocusLockIndicator animated:animatedCopy];

  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:animatedCopy];
  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"MRC" animated:animatedCopy];
  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"textRegion" animated:animatedCopy];
  [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:animatedCopy];
  [(CAMPreviewViewController *)self _hideAllCinematicIndicatorsAnimated:animatedCopy];
  [(CAMPreviewViewController *)self _updateCinematicModeViewsForTrackingChange];

  [(CAMPreviewViewController *)self _hideAllDockKitIndicatorsAnimated:animatedCopy];
}

- (BOOL)_isShowingContinuousIndicator
{
  selfCopy = self;
  _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
  LOBYTE(selfCopy) = [(CAMPreviewViewController *)selfCopy _isShowingFocusIndicator:_continuousIndicator];

  return selfCopy;
}

- (BOOL)isShowingPointIndicator
{
  selfCopy = self;
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  LOBYTE(selfCopy) = [(CAMPreviewViewController *)selfCopy _isShowingFocusIndicator:_pointIndicator];

  return selfCopy;
}

- (void)_activateFocusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (indicatorCopy)
  {
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:indicatorCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__CAMPreviewViewController__activateFocusIndicator___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    v7 = indicatorCopy;
    v5 = _Block_copy(aBlock);
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v5 options:0 animations:0.25 completion:0.0];
  }
}

- (void)_deactivateFocusIndicator:(id)indicator afterDelay:(double)delay
{
  indicatorCopy = indicator;
  v7 = indicatorCopy;
  if (indicatorCopy)
  {
    v8 = indicatorCopy;
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:indicatorCopy];
    [v8 setPulsing:0];
    if (delay <= 0.0)
    {
      indicatorCopy = [(CAMPreviewViewController *)self _deactivateFocusIndicator:v8];
    }

    else
    {
      indicatorCopy = [(CAMPreviewViewController *)self performSelector:sel__deactivateFocusIndicator_ withObject:v8 afterDelay:delay];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](indicatorCopy, v7);
}

- (void)_deactivateFocusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (indicatorCopy)
  {
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:indicatorCopy];
    [indicatorCopy setPulsing:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__CAMPreviewViewController__deactivateFocusIndicator___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    v7 = indicatorCopy;
    v5 = _Block_copy(aBlock);
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v5 options:0 animations:0.25 completion:0.0];
  }
}

uint64_t __54__CAMPreviewViewController__deactivateFocusIndicator___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) alpha];
  if (v3 > 0.0)
  {
    v4 = *(a1 + 32);

    return [v4 setAlpha:0.36];
  }

  return result;
}

- (CGPoint)pointOfInterestInNormalizedCaptureDeviceSpace
{
  previewView = [(CAMPreviewViewController *)self previewView];
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  v5 = 0.5;
  v6 = 0.5;
  if ([(CAMPreviewViewController *)self isShowingPointIndicator])
  {
    superview = [_pointIndicator superview];
    [_pointIndicator center];
    [superview convertPoint:previewView toView:?];
    v9 = v8;
    v11 = v10;

    [previewView captureDevicePointOfInterestForPoint:{v9, v11}];
    v5 = v12;
    v6 = v13;
  }

  v14 = v5;
  v15 = v6;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_showIndicatorAtPointOfInterest:(CGPoint)interest rectSize:(int64_t)size animateInPlace:(BOOL)place
{
  placeCopy = place;
  y = interest.y;
  x = interest.x;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    [(CAMPreviewViewController *)self _createPointIndicatorIfNecessary];
    _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
    v11 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__CAMPreviewViewController__showIndicatorAtPointOfInterest_rectSize_animateInPlace___block_invoke;
    v25[3] = &unk_1E76FDCB0;
    v25[4] = self;
    sizeCopy = size;
    v12 = _pointIndicator;
    v26 = v12;
    v28 = placeCopy;
    [v11 performWithoutAnimation:v25];
    previewView = [(CAMPreviewViewController *)self previewView];
    [previewView indicatePointOfInterest:placeCopy animated:{x, y}];
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsExceptForIndicator:v12];
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v12];
    [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:1];
    [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:1];
    layer = [v12 layer];
    v15 = NSStringFromSelector(sel_opacity);
    [layer removeAnimationForKey:v15];

    if (!placeCopy)
    {
      [v12 startScalingWithExpansionWidth:1 duration:37.0 repeatCount:0.2];
    }

    [v12 setPulsing:1];
    date = [MEMORY[0x1E695DF00] date];
    [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:date];

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __84__CAMPreviewViewController__showIndicatorAtPointOfInterest_rectSize_animateInPlace___block_invoke_2;
    v22 = &unk_1E76F7960;
    v23 = v12;
    selfCopy = self;
    v17 = v12;
    v18 = _Block_copy(&v19);
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v18 options:0 animations:0.25 completion:{0.0, v19, v20, v21, v22}];
  }
}

uint64_t __84__CAMPreviewViewController__showIndicatorAtPointOfInterest_rectSize_animateInPlace___block_invoke(uint64_t a1)
{
  [*(a1 + 40) setStyle:{objc_msgSend(*(a1 + 32), "_styleForPointIndicatorWithRectSize:", *(a1 + 48))}];
  [*(a1 + 40) setShowExposureBias:{objc_msgSend(*(a1 + 32), "_showExposureBiasSliderForPointView")}];
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 40) setAlpha:0.0];
  }

  v2 = [*(a1 + 32) _shouldShowIndicatorsAsInactive];
  v3 = *(a1 + 40);

  return [v3 setInactive:v2];
}

uint64_t __84__CAMPreviewViewController__showIndicatorAtPointOfInterest_rectSize_animateInPlace___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 _updatePortraitModeViewsAnimated:1];
}

- (int64_t)_styleForPointIndicatorWithRectSize:(int64_t)size
{
  _mode = [(CAMPreviewViewController *)self _mode];
  v5 = 2;
  if (size == 1)
  {
    v5 = 3;
  }

  if (_mode == 6)
  {
    v5 = 5;
  }

  if (_mode <= 9)
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

- (void)_showLockedAtPointOfInterest:(CGPoint)interest
{
  y = interest.y;
  x = interest.x;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI])
  {
    if ([(CAMPreviewViewController *)self isShowingStandardControls])
    {
      [(CAMPreviewViewController *)self _createPointIndicatorIfNecessary];
      _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
      v7 = MEMORY[0x1E69DD250];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__CAMPreviewViewController__showLockedAtPointOfInterest___block_invoke;
      v21[3] = &unk_1E76F7960;
      v21[4] = self;
      v8 = _pointIndicator;
      v22 = v8;
      [v7 performWithoutAnimation:v21];
      [(CAMPreviewViewController *)self _hideAllFocusIndicatorsExceptForIndicator:v8];
      [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v8];
      [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:1];
      [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:1];
      previewView = [(CAMPreviewViewController *)self previewView];
      [previewView indicatePointOfInterest:0 animated:{x, y}];
      layer = [v8 layer];
      v11 = NSStringFromSelector(sel_opacity);
      [layer removeAnimationForKey:v11];

      [v8 setPulsing:1];
      date = [MEMORY[0x1E695DF00] date];
      [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:date];

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __57__CAMPreviewViewController__showLockedAtPointOfInterest___block_invoke_2;
      v18 = &unk_1E76F7960;
      v19 = v8;
      selfCopy = self;
      v13 = v8;
      v14 = _Block_copy(&v15);
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v14 options:0 animations:0.25 completion:{0.0, v15, v16, v17, v18}];
    }
  }
}

uint64_t __57__CAMPreviewViewController__showLockedAtPointOfInterest___block_invoke(uint64_t a1)
{
  [*(a1 + 40) setStyle:{objc_msgSend(*(a1 + 32), "_largeStyleForPointIndicator")}];
  [*(a1 + 40) setShowExposureBias:0];
  [*(a1 + 40) setAlpha:0.0];
  v2 = [*(a1 + 32) _shouldShowIndicatorsAsInactive];
  v3 = *(a1 + 40);

  return [v3 setInactive:v2];
}

uint64_t __57__CAMPreviewViewController__showLockedAtPointOfInterest___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 _updatePortraitModeViewsAnimated:1];
}

- (void)_finishFocusingLockedPointOfInterestIndicator
{
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  [_pointIndicator startScalingWithExpansionWidth:2 duration:31.0 repeatCount:0.3];
  [_pointIndicator setPulsing:0];
}

- (void)_scaleDownLockedPointOfInterest
{
  v3 = [(CAMPreviewViewController *)self _styleForPointIndicatorWithRectSize:0];
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  objc_initWeak(&location, _pointIndicator);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__CAMPreviewViewController__scaleDownLockedPointOfInterest__block_invoke;
  v5[3] = &unk_1E76F7DC0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [_pointIndicator setStyle:v3 animated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__CAMPreviewViewController__scaleDownLockedPointOfInterest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowExposureBias:{objc_msgSend(*(a1 + 32), "_showExposureBiasSliderForPointView")}];
}

- (void)_fadeInView:(id)view withDuration:(double)duration
{
  viewCopy = view;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CAMPreviewViewController__fadeInView_withDuration___block_invoke;
  v7[3] = &unk_1E76F77B0;
  v8 = viewCopy;
  v6 = viewCopy;
  [CAMView animateIfNeededWithDuration:6 options:v7 animations:0 completion:duration];
}

- (void)_fadeOutView:(id)view withDuration:(double)duration completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CAMPreviewViewController__fadeOutView_withDuration_completion___block_invoke;
  v13[3] = &unk_1E76F77B0;
  v14 = viewCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CAMPreviewViewController__fadeOutView_withDuration_completion___block_invoke_2;
  v11[3] = &unk_1E76F97A0;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = viewCopy;
  [CAMView animateIfNeededWithDuration:6 options:v13 animations:v11 completion:duration];
}

uint64_t __65__CAMPreviewViewController__fadeOutView_withDuration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- ($A7BD2C69B781C0BFC9847BBC3FF98882)_geometryAnimationParametersForViewType:(SEL)type
{
  v6 = a4;
  v7 = [v6 isEqual:@"textRegion"];
  v8 = [v6 isEqual:@"MRC"];

  v9 = 0.6;
  if (v8)
  {
    v9 = 0.15;
  }

  if (v7)
  {
    v10 = 0.3;
  }

  else
  {
    v10 = 0.4;
  }

  if (v7)
  {
    v11 = 0.3;
  }

  else
  {
    v11 = v9;
  }

  result = [(CAMPreviewViewController *)self _disableIndicatorGeometryAnimations];
  v13 = 0.0;
  if (result)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  if (!result)
  {
    v13 = v11;
  }

  retstr->var0.var0 = v13;
  retstr->var0.var1 = 2;
  retstr->var0.var2 = ((v7 | v8) & 1) == 0;
  *(&retstr->var0.var2 + 1) = 0;
  *(&retstr->var0.var2 + 1) = 0;
  *&retstr->var0.var3 = xmmword_1A3A6A8B0;
  retstr->var1.var0 = v14;
  *&retstr->var1.var1 = xmmword_1A3A6A8C0;
  *&retstr->var1.var3 = xmmword_1A3A6A8B0;
  return result;
}

- (void)_animateIfNeededWithParameters:(id *)parameters animations:(id)animations completion:(id)completion
{
  var0 = parameters->var0;
  if (parameters->var2)
  {
    [CAMView animateIfNeededWithDuration:parameters->var1 usingSpringWithDamping:animations initialSpringVelocity:completion options:var0 animations:parameters->var3 completion:parameters->var4];
  }

  else
  {
    [CAMView animateIfNeededWithDuration:parameters->var1 options:animations animations:completion completion:var0];
  }
}

- (void)_animateView:(id)view type:(id)type withCenter:(CGPoint)center bounds:(CGRect)bounds transform:(CGAffineTransform *)transform
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12 = center.y;
  v13 = center.x;
  viewCopy = view;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  [(CAMPreviewViewController *)self _geometryAnimationParametersForViewType:type];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __74__CAMPreviewViewController__animateView_type_withCenter_bounds_transform___block_invoke;
  v39[3] = &unk_1E76FA580;
  v17 = viewCopy;
  v40 = v17;
  v41 = v13;
  v42 = v12;
  v36 = v43;
  v37 = v44;
  *&v38 = v45[0];
  [(CAMPreviewViewController *)self _animateIfNeededWithParameters:&v36 animations:v39 completion:0];
  layer = [v17 layer];
  v19 = [layer valueForKeyPath:@"transform.rotation.z"];
  [v19 doubleValue];
  v21 = v20;

  v22 = atan2(transform->b, transform->a);
  v23 = vabdd_f64(v22, v21);
  if (v23 <= vabdd_f64(v22, v21 + 1.57079633) && v23 <= vabdd_f64(v22, v21 + -1.57079633))
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __74__CAMPreviewViewController__animateView_type_withCenter_bounds_transform___block_invoke_2;
    v27[3] = &unk_1E76FC540;
    v28 = v17;
    v29 = x;
    v30 = y;
    v31 = width;
    v32 = height;
    v26 = *&transform->c;
    v33 = *&transform->a;
    v34 = v26;
    v35 = *&transform->tx;
    v36 = *&v45[1];
    v37 = *&v45[3];
    *&v38 = v45[5];
    [(CAMPreviewViewController *)self _animateIfNeededWithParameters:&v36 animations:v27 completion:0];
  }

  else
  {
    v24 = *&transform->c;
    v36 = *&transform->a;
    v25 = *&transform->tx;
    v37 = v24;
    v38 = v25;
    [v17 setTransform:&v36];
    [v17 setBounds:{x, y, width, height}];
  }
}

uint64_t __74__CAMPreviewViewController__animateView_type_withCenter_bounds_transform___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 88);
  v4[0] = *(a1 + 72);
  v4[1] = v2;
  v4[2] = *(a1 + 104);
  [*(a1 + 32) setTransform:v4];
  return [*(a1 + 32) layoutIfNeeded];
}

- (void)_updatePreviewIndicatorClippingStyleForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[CAMCaptureCapabilities capabilities];
  mode = [configurationCopy mode];
  device = [configurationCopy device];

  LODWORD(configurationCopy) = [v5 spatialOverCaptureSupportForMode:mode device:device];
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView setIndicatorClippingStyle:~(configurationCopy >> 1) & 1];
}

- (void)_addIndicatorView:(id)view forType:(id)type identifier:(id)identifier underlyingMetadataObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  typeCopy = type;
  identifierCopy = identifier;
  if (viewCopy)
  {
    _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v13 = [_indicatorViewsByType objectForKeyedSubscript:typeCopy];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      _indicatorViewsByType2 = [(CAMPreviewViewController *)self _indicatorViewsByType];
      [_indicatorViewsByType2 setObject:v13 forKeyedSubscript:typeCopy];
    }

    v15 = [v13 objectForKeyedSubscript:identifierCopy];
    v16 = v15;
    if (v15 && v15 != viewCopy)
    {
      [v15 removeFromSuperview];
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        v21 = typeCopy;
        v22 = 2114;
        v23 = identifierCopy;
        _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Removed an existing client-managed view that shares the same identifier as a view that is being added (type/identifier: %{public}@/%{public}@", &v20, 0x16u);
      }
    }

    previewView = [(CAMPreviewViewController *)self previewView];
    indicatorContainerView = [previewView indicatorContainerView];
    [indicatorContainerView addSubview:viewCopy];

    [v13 setObject:viewCopy forKeyedSubscript:identifierCopy];
  }

  else
  {
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = typeCopy;
      v22 = 2114;
      v23 = identifierCopy;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Trying to add nil view for type/identifier: %{public}@/%{public}@", &v20, 0x16u);
    }
  }
}

- (void)_removeIndicatorViewForType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v8 = [_indicatorViewsByType objectForKeyedSubscript:typeCopy];

  v9 = [v8 count];
  v10 = [v8 objectForKeyedSubscript:identifierCopy];
  [v10 removeFromSuperview];
  [v8 setObject:0 forKeyedSubscript:identifierCopy];

  v11 = [v8 count];
  if (v9 == 1 && !v11 && [typeCopy isEqualToString:@"portraitSubject"])
  {
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)_fadeOutAndRemoveIndicatorView:(id)view forType:(id)type identifier:(id)identifier withDuration:(double)duration
{
  viewCopy = view;
  typeCopy = type;
  identifierCopy = identifier;
  _metadataObjectsForView = [(CAMPreviewViewController *)self _metadataObjectsForView];
  [_metadataObjectsForView removeObjectForKey:viewCopy];

  [viewCopy alpha];
  if (v14 != 0.0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__CAMPreviewViewController__fadeOutAndRemoveIndicatorView_forType_identifier_withDuration___block_invoke;
    v15[3] = &unk_1E76F8230;
    v16 = viewCopy;
    selfCopy = self;
    v18 = typeCopy;
    v19 = identifierCopy;
    [(CAMPreviewViewController *)self _fadeOutView:v16 withDuration:v15 completion:duration];
  }
}

uint64_t __91__CAMPreviewViewController__fadeOutAndRemoveIndicatorView_forType_identifier_withDuration___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) alpha];
  if (v3 == 0.0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v4 _removeIndicatorViewForType:v5 identifier:v6];
  }

  return result;
}

- (void)_fadeOutAndRemoveIndicatorViewsOfType:(id)type withDuration:(double)duration
{
  typeCopy = type;
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v8 = [_indicatorViewsByType objectForKeyedSubscript:typeCopy];
  v9 = [v8 copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CAMPreviewViewController__fadeOutAndRemoveIndicatorViewsOfType_withDuration___block_invoke;
  v11[3] = &unk_1E76FDCD8;
  v11[4] = self;
  v12 = typeCopy;
  durationCopy = duration;
  v10 = typeCopy;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_updateIndicatorsForMetadataObjectResults:(id)results allowNewAndReappearingIndicators:(BOOL)indicators viewType:(id)type viewClass:(Class)class geometryCallback:(id)callback minimumAreaChangeThreshold:(double)threshold minimumAreaFractionChangeThreshold:(double)changeThreshold viewInitializerCallback:(id)self0
{
  indicatorsCopy = indicators;
  v97 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  typeCopy = type;
  callbackCopy = callback;
  initializerCallbackCopy = initializerCallback;
  v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v19 = resultsCopy;
  v20 = [v19 countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v92;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v92 != v22)
        {
          objc_enumerationMutation(v19);
        }

        uniqueIdentifier = [*(*(&v91 + 1) + 8 * i) uniqueIdentifier];
        [v18 addObject:uniqueIdentifier];
      }

      v21 = [v19 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v21);
  }

  v70 = initializerCallbackCopy;

  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v26 = [_indicatorViewsByType objectForKeyedSubscript:typeCopy];
  v27 = [v26 copy];

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __225__CAMPreviewViewController__updateIndicatorsForMetadataObjectResults_allowNewAndReappearingIndicators_viewType_viewClass_geometryCallback_minimumAreaChangeThreshold_minimumAreaFractionChangeThreshold_viewInitializerCallback___block_invoke;
  v87[3] = &unk_1E76FDD00;
  v66 = v18;
  v88 = v66;
  selfCopy = self;
  v72 = typeCopy;
  v90 = v72;
  v74 = v27;
  [v27 enumerateKeysAndObjectsUsingBlock:v87];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v19;
  v28 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v28)
  {
    v29 = v28;
    v73 = *v84;
    v30 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 8);
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v84 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v83 + 1) + 8 * j);
        uniqueIdentifier2 = [v33 uniqueIdentifier];
        v81 = 0u;
        v82 = 0u;
        v80 = 0u;
        memset(v79, 0, sizeof(v79));
        callbackCopy[2](v79, callbackCopy, v33);
        UIRectCenteredAboutPointScale();
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        previewView = [(CAMPreviewViewController *)self previewView];
        previewView2 = [(CAMPreviewViewController *)self previewView];
        indicatorContainerView = [previewView2 indicatorContainerView];
        [previewView convertRect:indicatorContainerView toView:{v36, v38, v40, v42}];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;

        v54 = [v74 objectForKeyedSubscript:uniqueIdentifier2];
        if (v54)
        {
          v55 = 1;
        }

        else
        {
          v55 = !indicatorsCopy;
        }

        if (v55)
        {
          v56 = v54;
          if (v54)
          {
            UIRectGetCenter();
            v58 = v57;
            v60 = v59;
            [v56 bounds];
            v62 = v61;
            v64 = v63;
            if (![(CAMPreviewViewController *)self _shouldUpdateIndicatorSizeFrom:v61 to:v63 minimumAreaChangeThreshold:v51 minimumAreaFractionChangeThreshold:v53, threshold, changeThreshold])
            {
              v51 = v62;
              v53 = v64;
            }

            if (indicatorsCopy)
            {
              [(CAMPreviewViewController *)self _fadeInView:v56 withDuration:0.25];
            }

            v76 = v80;
            v77 = v81;
            v78 = v82;
            [(CAMPreviewViewController *)self _animateView:v56 type:v72 withCenter:&v76 bounds:v58 transform:v60, v30, v31, v51, v53];
          }
        }

        else
        {
          v56 = [[class alloc] initWithFrame:{v47, v49, v51, v53}];
          if (v70)
          {
            v70[2]();
          }

          v76 = v80;
          v77 = v81;
          v78 = v82;
          [v56 setTransform:&v76];
          [v56 layoutIfNeeded];
          [(CAMPreviewViewController *)self _addIndicatorView:v56 forType:v72 identifier:uniqueIdentifier2 underlyingMetadataObject:v33];
          [v56 setAlpha:0.0];
          [(CAMPreviewViewController *)self _fadeInView:v56 withDuration:0.25];
        }

        _metadataObjectsForView = [(CAMPreviewViewController *)self _metadataObjectsForView];
        [_metadataObjectsForView setObject:v33 forKey:v56];
      }

      v29 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v29);
  }
}

void __225__CAMPreviewViewController__updateIndicatorsForMetadataObjectResults_allowNewAndReappearingIndicators_viewType_viewClass_geometryCallback_minimumAreaChangeThreshold_minimumAreaFractionChangeThreshold_viewInitializerCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 40) _fadeOutAndRemoveIndicatorView:v5 forType:*(a1 + 48) identifier:v6 withDuration:0.15];
  }
}

- (BOOL)_isShowingIndicatorsOfType:(id)type
{
  typeCopy = type;
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v6 = [_indicatorViewsByType objectForKeyedSubscript:typeCopy];

  LOBYTE(_indicatorViewsByType) = [v6 count] != 0;
  return _indicatorViewsByType;
}

- (void)_fadeOutIndicatorsOfViewType:(id)type afterDelay:(double)delay
{
  typeCopy = type;
  _disableDelayedFadeOutForFaces = [(CAMPreviewViewController *)self _disableDelayedFadeOutForFaces];
  v7 = delay <= 0.0 || !_disableDelayedFadeOutForFaces;
  if ((v7 || ([typeCopy isEqualToString:@"face"] & 1) == 0) && (!-[CAMPreviewViewController isFocusAndExposureExternallyLocked](self, "isFocusAndExposureExternallyLocked") || (objc_msgSend(typeCopy, "isEqualToString:", @"face") & 1) == 0))
  {
    [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:typeCopy];
    [(CAMPreviewViewController *)self performSelector:sel__fadeOutIndicatorsOfViewType_ withObject:typeCopy afterDelay:delay];
  }
}

- (void)_cancelDelayedFadeOutOfViewType:(id)type
{
  typeCopy = type;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__fadeOutIndicatorsOfViewType_ object:typeCopy];
}

- (void)_hideIndicatorsOfViewType:(id)type animated:(BOOL)animated
{
  animatedCopy = animated;
  typeCopy = type;
  [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:typeCopy];
  if ([typeCopy isEqualToString:@"face"])
  {
    [(CAMPreviewViewController *)self _setShouldSuppressExistingFaceIndicators:1];
  }

  v6 = 0.0;
  if (animatedCopy)
  {
    v6 = 0.75;
  }

  [(CAMPreviewViewController *)self _fadeOutAndRemoveIndicatorViewsOfType:typeCopy withDuration:v6];
}

- (BOOL)_shouldSuppressNewFaces
{
  selfCopy = self;
  _captureController = [(CAMPreviewViewController *)self _captureController];
  isShowingPointIndicator = [(CAMPreviewViewController *)selfCopy isShowingPointIndicator];
  LOBYTE(selfCopy) = [(CAMPreviewViewController *)selfCopy _isFocusAndExposureLockedByUserOrExternally];
  LOBYTE(selfCopy) = isShowingPointIndicator | selfCopy | [_captureController isCapturingVideo];

  return selfCopy & 1;
}

- (void)captureController:(id)controller didOutputFaceResults:(id)results headResults:(id)headResults bodyResults:(id)bodyResults salientObjectResults:(id)objectResults
{
  resultsCopy = results;
  headResultsCopy = headResults;
  bodyResultsCopy = bodyResults;
  objectResultsCopy = objectResults;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    if ([resultsCopy count] && objc_msgSend(bodyResultsCopy, "count"))
    {
      v14 = [resultsCopy arrayByAddingObjectsFromArray:bodyResultsCopy];
    }

    else if ([resultsCopy count])
    {
      v14 = resultsCopy;
    }

    else
    {
      v14 = bodyResultsCopy;
    }

    v15 = v14;
    if ([objectResultsCopy count])
    {
      v16 = [v15 arrayByAddingObjectsFromArray:objectResultsCopy];

      v15 = v16;
    }

    if ([headResultsCopy count])
    {
      v17 = [v15 arrayByAddingObjectsFromArray:headResultsCopy];

      v15 = v17;
    }

    if ([(CAMPreviewViewController *)self _shouldAllowFaceIndicators])
    {
      [(CAMPreviewViewController *)self _updateFaceIndicatorsForResults:v15];
    }

    [(CAMPreviewViewController *)self _updatePortraitModeViewsForResults:v15];
    [(CAMPreviewViewController *)self _updateCinematicModeViewsForResults:v15];
    [(CAMPreviewViewController *)self _updateDockKitModeViewsForResults:v15];
  }
}

- (void)_updateFaceIndicatorsForResults:(id)results
{
  resultsCopy = results;
  if (![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked]|| [(CAMPreviewViewController *)self _externalLockNeedsCurrentFacesToAppear])
  {
    v5 = [resultsCopy count];
    _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
    mode = [_graphConfiguration mode];

    if (mode)
    {
      shouldUsePortraitStyleIndicatorsInPhotoMode = 0;
    }

    else
    {
      shouldUsePortraitStyleIndicatorsInPhotoMode = [(CAMPreviewViewController *)self shouldUsePortraitStyleIndicatorsInPhotoMode];
    }

    _externalLockNeedsCurrentFacesToAppear = [(CAMPreviewViewController *)self _externalLockNeedsCurrentFacesToAppear];
    [(CAMPreviewViewController *)self _setExternalLockNeedsCurrentFacesToAppear:0];
    if (shouldUsePortraitStyleIndicatorsInPhotoMode)
    {
      [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:@"face"];
    }

    if (_externalLockNeedsCurrentFacesToAppear)
    {
      [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:@"face"];
      [(CAMPreviewViewController *)self _setCurrentFacesCount:v5];
      [(CAMPreviewViewController *)self _setShouldSuppressExistingFaceIndicators:0];
    }

    else if ([(CAMPreviewViewController *)self _currentFacesCount]!= v5)
    {
      if ([(CAMPreviewViewController *)self _shouldSuppressNewFaces])
      {
        [(CAMPreviewViewController *)self _setCurrentFacesCount:0];
      }

      else
      {
        [(CAMPreviewViewController *)self _setShouldSuppressExistingFaceIndicators:0];
        [(CAMPreviewViewController *)self _setCurrentFacesCount:v5];
        if (!shouldUsePortraitStyleIndicatorsInPhotoMode)
        {
          [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:1.5];
        }
      }
    }

    _shouldSuppressExistingFaceIndicators = [(CAMPreviewViewController *)self _shouldSuppressExistingFaceIndicators];
    v11 = objc_opt_class();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__CAMPreviewViewController__updateFaceIndicatorsForResults___block_invoke;
    v14[3] = &unk_1E76FDD28;
    v14[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__CAMPreviewViewController__updateFaceIndicatorsForResults___block_invoke_2;
    v13[3] = &unk_1E76FDD50;
    v13[4] = self;
    [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:resultsCopy allowNewAndReappearingIndicators:!_shouldSuppressExistingFaceIndicators viewType:@"face" viewClass:v11 geometryCallback:v14 minimumAreaChangeThreshold:v13 minimumAreaFractionChangeThreshold:2500.0 viewInitializerCallback:0.21];
    if (![(CAMPreviewViewController *)self _shouldSuppressExistingFaceIndicators]&& v5)
    {
      _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator animated:0];
    }
  }
}

void __60__CAMPreviewViewController__updateFaceIndicatorsForResults___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    v7 = v15;
    v8 = [v6 previewView];
    [v8 faceIndicatorFrameForFaceResult:v7];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v8 = [v6 previewView];
    [v8 frameForMetadataObjectResult:v15];
    v10 = v13;
    v12 = v14;
  }

  CAMViewGeometryForFrame(a3, v10, v12);
}

void __60__CAMPreviewViewController__updateFaceIndicatorsForResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  if ([v2 shouldUsePortraitStyleIndicatorsInPhotoMode])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v4 setShape:v3 shouldUseCrosshairForAnimation:0 animated:0];
}

- (void)setShouldUsePortraitStyleIndicatorsInPhotoMode:(BOOL)mode
{
  if (self->_shouldUsePortraitStyleIndicatorsInPhotoMode != mode)
  {
    self->_shouldUsePortraitStyleIndicatorsInPhotoMode = mode;
    if (mode)
    {
      [(CAMPreviewViewController *)self _setCurrentFacesCount:0];
    }

    else
    {
      [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:1.5];
    }

    _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
    mode = [_graphConfiguration mode];

    if (!mode)
    {

      [(CAMPreviewViewController *)self _updatePhotoModeIndicatorsStyle];
    }
  }
}

- (void)_updatePhotoModeIndicatorsStyle
{
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v4 = [_indicatorViewsByType objectForKeyedSubscript:@"face"];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__CAMPreviewViewController__updatePhotoModeIndicatorsStyle__block_invoke;
  v5[3] = &unk_1E76FDD78;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __59__CAMPreviewViewController__updatePhotoModeIndicatorsStyle__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) shouldUsePortraitStyleIndicatorsInPhotoMode])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [v5 setShape:v4 shouldUseCrosshairForAnimation:0 animated:1];
  }
}

- (BOOL)_shouldAllowFaceIndicators
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isDockAccessoryConnectedAndTracking = [WeakRetained isDockAccessoryConnectedAndTracking];

  if (isDockAccessoryConnectedAndTracking)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    _mode = [(CAMPreviewViewController *)self _mode];
    v5 = 0x33Fu >> _mode;
    if (_mode > 9)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (void)_updateCinematicModeViewsForResults:(id)results
{
  resultsCopy = results;
  if ([(CAMPreviewViewController *)self _shouldShowCinematicModeIndicatorViews]&& ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked])
  {
    v12 = 0;
    v11 = 0;
    [(CAMPreviewViewController *)self _subjectGroupResultsFromMetadataObjects:resultsCopy nonFixedFocusResults:&v12 fixedFocusResults:&v11];
    v5 = v12;
    v6 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CAMPreviewViewController__updateCinematicModeViewsForResults___block_invoke;
    aBlock[3] = &unk_1E76FDD28;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__CAMPreviewViewController__updateCinematicModeViewsForResults___block_invoke_2;
    v9[3] = &unk_1E76FDD28;
    v9[4] = self;
    v8 = _Block_copy(v9);
    [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v5 allowNewAndReappearingIndicators:1 viewType:@"cinematicSubject" viewClass:objc_opt_class() geometryCallback:v7 minimumAreaChangeThreshold:2500.0 minimumAreaFractionChangeThreshold:0.21];
    [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v6 allowNewAndReappearingIndicators:1 viewType:@"cinematicFixedFocus" viewClass:objc_opt_class() geometryCallback:v8 minimumAreaChangeThreshold:2500.0 minimumAreaFractionChangeThreshold:0.21];
    [(CAMPreviewViewController *)self _updateCinematicModeViewsForTrackingChange];
  }
}

void __64__CAMPreviewViewController__updateCinematicModeViewsForResults___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v12 = [v4 previewView];
  [MEMORY[0x1E6993838] minimumSuggestedBounds];
  [v12 frameForSubjectGroupResult:v5 minimumSize:{v6, v7}];
  v9 = v8;
  v11 = v10;

  CAMViewGeometryForFrame(a3, v9, v11);
}

void __64__CAMPreviewViewController__updateCinematicModeViewsForResults___block_invoke_2(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v10 = [v4 previewView];
  [v10 frameForMetadataObjectResult:v5 fixedSize:{75.0, 75.0}];
  v7 = v6;
  v9 = v8;

  CAMViewGeometryForFrame(a3, v7, v9);
}

- (void)_subjectGroupResultsFromMetadataObjects:(id)objects nonFixedFocusResults:(id *)results fixedFocusResults:(id *)focusResults
{
  v33 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objectsCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [(CAMPreviewViewController *)self _groupIDForMetadataObject:v13];
        v15 = [v7 objectForKey:v14];

        if (v15)
        {
          v16 = [v7 objectForKeyedSubscript:v14];
          [v16 addObject:v13];
        }

        else
        {
          v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
          [v7 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __107__CAMPreviewViewController__subjectGroupResultsFromMetadataObjects_nonFixedFocusResults_fixedFocusResults___block_invoke;
  v25[3] = &unk_1E76FDDA0;
  v26 = v21;
  v27 = v22;
  v17 = v22;
  v18 = v21;
  [v7 enumerateKeysAndObjectsUsingBlock:v25];
  v19 = v18;
  *focusResults = v18;
  v20 = v17;
  *results = v17;
}

void __107__CAMPreviewViewController__subjectGroupResultsFromMetadataObjects_nonFixedFocusResults_fixedFocusResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [CAMSubjectGroupResult alloc];
  v8 = [v6 integerValue];

  v11 = [(CAMSubjectGroupResult *)v7 initWithMetadataObjects:v5 groupID:v8];
  v9 = [(CAMSubjectGroupResult *)v11 syntheticFocusMode];
  v10 = 32;
  if ((v9 & 4) == 0)
  {
    v10 = 40;
  }

  [*(a1 + v10) addObject:v11];
}

- (id)_groupIDForMetadataObject:(id)object
{
  underlyingMetadataObject = [object underlyingMetadataObject];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [underlyingMetadataObject groupID] != -1)
  {
    groupID = [underlyingMetadataObject groupID];
LABEL_6:
    v5 = groupID;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupID = [underlyingMetadataObject faceID];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [underlyingMetadataObject bodyID] + 1000;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [underlyingMetadataObject objectID] + 2000;
    }

    else
    {
      v5 = arc4random_uniform(0x3E8u);
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Trying to group a metadata object that is not a body, assigning a random groupID", v9, 2u);
      }
    }
  }

LABEL_14:
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];

  return v7;
}

- (id)_cinematicModeIndicatorViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v42 = *MEMORY[0x1E69E9840];
  if ([(CAMPreviewViewController *)self _shouldShowCinematicModeIndicatorViews])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v8 = [_indicatorViewsByType objectForKeyedSubscript:@"cinematicSubject"];

    previewView = [(CAMPreviewViewController *)self previewView];
    previewView2 = [(CAMPreviewViewController *)self previewView];
    indicatorContainerView = [previewView2 indicatorContainerView];
    [previewView convertPoint:indicatorContainerView toView:{x, y}];
    v13 = v12;
    v15 = v14;

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __63__CAMPreviewViewController__cinematicModeIndicatorViewAtPoint___block_invoke;
    v37[3] = &unk_1E76FDDC8;
    v39 = v13;
    v40 = v15;
    v16 = v6;
    v38 = v16;
    [v8 enumerateKeysAndObjectsUsingBlock:v37];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v34;
      v22 = 1.79769313e308;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          [v24 frame];
          v25 = v44.origin.x;
          v26 = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
          v29 = CGRectGetWidth(v44);
          v45.origin.x = v25;
          v45.origin.y = v26;
          v45.size.width = width;
          v45.size.height = height;
          v30 = v29 * CGRectGetHeight(v45);
          if (v22 > v30)
          {
            v31 = v24;

            v20 = v31;
            v22 = v30;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __63__CAMPreviewViewController__cinematicModeIndicatorViewAtPoint___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 frame];
  if (CGRectContainsPoint(v6, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)_updateCinematicModeViewsForTrackingChange
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(CAMPreviewViewController *)self _shouldShowCinematicModeIndicatorViews])
  {
    _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v4 = [_indicatorViewsByType objectForKeyedSubscript:@"cinematicSubject"];

    _indicatorViewsByType2 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v6 = [_indicatorViewsByType2 objectForKeyedSubscript:@"cinematicFixedFocus"];

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
    [v7 addEntriesFromDictionary:v6];
    _metadataObjectsForView = [(CAMPreviewViewController *)self _metadataObjectsForView];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__30;
    v32 = __Block_byref_object_dispose__30;
    v9 = MEMORY[0x1E696AEC0];
    allKeys = [v7 allKeys];
    v33 = [v9 stringWithFormat:@"Tracking %ld cinematic subject indicators\n", objc_msgSend(allKeys, "count")];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__CAMPreviewViewController__updateCinematicModeViewsForTrackingChange__block_invoke;
    v15[3] = &unk_1E76FDDF0;
    v11 = _metadataObjectsForView;
    v16 = v11;
    v17 = &v24;
    v18 = &v28;
    v19 = &v20;
    [v7 enumerateKeysAndObjectsUsingBlock:v15];
    if (([v29[5] isEqualToString:cinematicLogString] & 1) == 0)
    {
      objc_storeStrong(&cinematicLogString, v29[5]);
      v12 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = cinematicLogString;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@\n", buf, 0xCu);
      }
    }

    v13 = *(v25 + 24);
    v14 = *(v21 + 24);
    [(CAMPreviewViewController *)self _setCinematicSubjectIsTrackingLocked:v13 & (v14 ^ 1u) shouldAnimate:1];
    [(CAMPreviewViewController *)self _setCinematicIsFixedFocusLocked:(v14 & v13) shouldAnimate:1];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    [(CAMPreviewViewController *)self _setCinematicSubjectIsTrackingLocked:0 shouldAnimate:1];

    [(CAMPreviewViewController *)self _setCinematicIsFixedFocusLocked:0 shouldAnimate:1];
  }
}

void __70__CAMPreviewViewController__updateCinematicModeViewsForTrackingChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v4 = [*(a1 + 32) objectForKey:?];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 syntheticFocusMode];
    v6 = (v5 & 1) == 0;
    v7 = (v5 & 4) == 0;
    v8 = 1;
    if ((v5 & 2) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v8 = 0;
    }
  }

  else
  {
    v7 = 1;
    v8 = 1;
    v6 = 1;
  }

  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = [v4 uniqueIdentifier];
  v11 = [v4 underlyingMetadataObject];
  v12 = [v11 type];
  v13 = [v9 stringByAppendingFormat:@"%@ type:%@ ", v10, v12];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v7)
  {
    v16 = 2;
    if (v6)
    {
      v16 = 0;
    }

    v17 = @"is Primary Cinematic Subject with soft focus";
    if (v6)
    {
      v17 = @"is inactive indicator";
    }

    if (v8)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1;
    }

    if (v8)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"is Primary Cinematic Subject with hard focus";
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v20 = @"is hard fixed focus point";
    if (v8)
    {
      v20 = @"is soft fixed focus point";
    }

    v19 = v20;
    v18 = 0;
  }

  [v24 setHidden:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    v18 = 3;
  }

  [v24 setShape:v18 animated:1];
LABEL_23:
  v21 = [*(*(*(a1 + 48) + 8) + 40) stringByAppendingFormat:@"%@\n", v19];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;
}

- (id)_subjectGroupResultsFromMetadataObjects:(id)objects
{
  v25 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(CAMPreviewViewController *)self _groupIDForMetadataObject:v11];
        v13 = [v5 objectForKey:v12];

        if (v13)
        {
          v14 = [v5 objectForKeyedSubscript:v12];
          [v14 addObject:v11];
        }

        else
        {
          v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
          [v5 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__CAMPreviewViewController__subjectGroupResultsFromMetadataObjects___block_invoke;
  v18[3] = &unk_1E76FDE18;
  v15 = v17;
  v19 = v15;
  [v5 enumerateKeysAndObjectsUsingBlock:v18];

  return v15;
}

void __68__CAMPreviewViewController__subjectGroupResultsFromMetadataObjects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [CAMSubjectGroupResult alloc];
  v8 = [v6 integerValue];

  v9 = [(CAMSubjectGroupResult *)v7 initWithMetadataObjects:v5 groupID:v8];
  [*(a1 + 32) addObject:v9];
}

- (void)_updateDockKitModeViewsForResults:(id)results
{
  resultsCopy = results;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![WeakRetained isDockAccessoryConnectedAndTracking])
  {

    goto LABEL_5;
  }

  _shouldShowDockKitModeIndicatorViews = [(CAMPreviewViewController *)self _shouldShowDockKitModeIndicatorViews];

  if (!_shouldShowDockKitModeIndicatorViews)
  {
LABEL_5:
    [(CAMPreviewViewController *)self _setDockKitSubjectIsTrackingLocked:0 shouldAnimate:1];
    goto LABEL_6;
  }

  v7 = [(CAMPreviewViewController *)self _subjectGroupResultsFromMetadataObjects:resultsCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__CAMPreviewViewController__updateDockKitModeViewsForResults___block_invoke;
  aBlock[3] = &unk_1E76FDD28;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v7 allowNewAndReappearingIndicators:1 viewType:@"dockkitTrackedSubject" viewClass:objc_opt_class() geometryCallback:v8 minimumAreaChangeThreshold:2500.0 minimumAreaFractionChangeThreshold:0.21];
  [(CAMPreviewViewController *)self _updateDockKitModeViewsForTrackingChange];
  [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"dockkitTrackedSubject" afterDelay:0.3];

LABEL_6:
}

void __62__CAMPreviewViewController__updateDockKitModeViewsForResults___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v12 = [v4 previewView];
  [MEMORY[0x1E6993838] minimumSuggestedBounds];
  [v12 frameForSubjectGroupResult:v5 minimumSize:{v6, v7}];
  v9 = v8;
  v11 = v10;

  CAMViewGeometryForFrame(a3, v9, v11);
}

- (void)_updateDockKitModeViewsForTrackingChange
{
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v4 = [_indicatorViewsByType objectForKeyedSubscript:@"dockkitTrackedSubject"];

  _metadataObjectsForView = [(CAMPreviewViewController *)self _metadataObjectsForView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isDockKitTrackingLocked = [WeakRetained isDockKitTrackingLocked];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __68__CAMPreviewViewController__updateDockKitModeViewsForTrackingChange__block_invoke;
  v12 = &unk_1E76FDE40;
  v13 = _metadataObjectsForView;
  selfCopy = self;
  v8 = _metadataObjectsForView;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  [(CAMPreviewViewController *)self _setDockKitSubjectIsTrackingLocked:isDockKitTrackingLocked shouldAnimate:1, v9, v10, v11, v12];
}

void __68__CAMPreviewViewController__updateDockKitModeViewsForTrackingChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [*(a1 + 32) objectForKey:?];
  v5 = [*(a1 + 40) _groupIDForMetadataObject:v4];
  v6 = [v5 integerValue];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1024));
  v8 = [WeakRetained matchingDockKitTrackedSubjectForAnstID:v6];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v11;
      if ([v8 trackingLock])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * ([v8 saliency] > 0);
      }

      [v9 setShape:v10 animated:1];
    }
  }
}

- (BOOL)_dockKitModeIndicatorViewsContainPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isDockAccessoryConnectedAndTracking = [WeakRetained isDockAccessoryConnectedAndTracking];

  if (isDockAccessoryConnectedAndTracking)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v9 = [_indicatorViewsByType objectForKeyedSubscript:@"dockkitTrackedSubject"];

    previewView = [(CAMPreviewViewController *)self previewView];
    previewView2 = [(CAMPreviewViewController *)self previewView];
    indicatorContainerView = [previewView2 indicatorContainerView];
    [previewView convertPoint:indicatorContainerView toView:{x, y}];
    v14 = v13;
    v16 = v15;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__CAMPreviewViewController__dockKitModeIndicatorViewsContainPoint___block_invoke;
    v19[3] = &unk_1E76FDE68;
    v19[5] = v14;
    v19[6] = v16;
    v19[4] = &v20;
    [v9 enumerateKeysAndObjectsUsingBlock:v19];
    v17 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL __67__CAMPreviewViewController__dockKitModeIndicatorViewsContainPoint___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 frame];
  result = CGRectContainsPoint(v5, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updatePortraitModeViewsForResults:(id)results
{
  resultsCopy = results;
  if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
  {
    if (![(CAMPreviewViewController *)self _shouldSuppressNewPortraitModeTrackedSubjectIndicators])
    {
      v5 = [resultsCopy count];
      v6 = v5 < 2;
      if (v5 >= 2)
      {
        v7 = 2500.0;
      }

      else
      {
        v7 = 0.0;
      }

      if (v5 >= 2)
      {
        v8 = 0.21;
      }

      else
      {
        v8 = 0.0;
      }

      v9 = objc_opt_class();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __63__CAMPreviewViewController__updatePortraitModeViewsForResults___block_invoke;
      v10[3] = &unk_1E76FDE90;
      v11 = v6;
      v10[4] = self;
      [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:resultsCopy allowNewAndReappearingIndicators:1 viewType:@"portraitSubject" viewClass:v9 geometryCallback:v10 minimumAreaChangeThreshold:v7 minimumAreaFractionChangeThreshold:v8];
    }

    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

void __63__CAMPreviewViewController__updatePortraitModeViewsForResults___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v16;
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) previewView];
    v8 = v7;
    if (v6 == 1)
    {
      [v7 fixedSizeSubjectIndicatorFrameForFaceResult:v5];
    }

    else
    {
      [v7 faceIndicatorFrameForFaceResult:v5];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = *(MEMORY[0x1E695F058] + 16);
      v15 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_11;
    }

    v11 = v16;
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) previewView];
    v8 = v13;
    if (v12 == 1)
    {
      [v13 fixedSizeSubjectIndicatorFrameForBodyResult:v11];
    }

    else
    {
      [v13 frameForMetadataObjectResult:v11];
    }
  }

  v14 = v9;
  v15 = v10;

LABEL_11:
  CAMViewGeometryForFrame(a3, v14, v15);
}

- (BOOL)_shouldUpdateIndicatorSizeFrom:(CGSize)from to:(CGSize)to minimumAreaChangeThreshold:(double)threshold minimumAreaFractionChangeThreshold:(double)changeThreshold
{
  v6 = from.width * from.height;
  v7 = to.width * to.height;
  v8 = changeThreshold + 1.0;
  v9 = v6 <= 0.0 || v7 / v6 >= v8;
  v10 = vabdd_f64(v7, v6);
  v11 = v7 > 0.0 && v6 / v7 >= v8;
  return v10 >= threshold && (v9 || v11);
}

- (void)setCachedMRCResults:(id)results
{
  resultsCopy = results;
  if (self->_cachedMRCResults != resultsCopy)
  {
    v6 = resultsCopy;
    objc_storeStrong(&self->_cachedMRCResults, results);
    [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:0];
    resultsCopy = v6;
  }
}

- (void)setCachedSignificantMRCResult:(id)result
{
  resultCopy = result;
  if (self->_cachedSignificantMRCResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_cachedSignificantMRCResult, result);
    [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:0];
    [(CAMPreviewViewController *)self _updateTextRegionIndicatorsIfNecessary];
    resultCopy = v6;
  }
}

- (void)_updateMRCIndicatorsIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls]&& ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked]&& [(CAMPreviewViewController *)self _shouldAllowMRCIndicators])
  {
    [(CAMPreviewViewController *)self _updateMRCIndicatorsAnimated:animatedCopy];

    [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"MRC" afterDelay:0.3];
  }
}

- (void)_updateMRCIndicatorsAnimated:(BOOL)animated
{
  v33 = *MEMORY[0x1E69E9840];
  cachedSignificantMRCResult = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  v5 = cachedSignificantMRCResult;
  if (cachedSignificantMRCResult)
  {
    uniqueIdentifier = [cachedSignificantMRCResult uniqueIdentifier];
  }

  else
  {
    uniqueIdentifier = &stru_1F1660A30;
  }

  cachedSignificantTextRegionResult = [(CAMPreviewViewController *)self cachedSignificantTextRegionResult];
  if (cachedSignificantTextRegionResult)
  {
    cachedMRCResults = MEMORY[0x1E695E0F0];
  }

  else
  {
    cachedMRCResults = [(CAMPreviewViewController *)self cachedMRCResults];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = cachedMRCResults;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  v11 = v9;
  if (v10)
  {
    v12 = v10;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        uniqueIdentifier2 = [v15 uniqueIdentifier];
        if ([uniqueIdentifier2 isEqualToString:uniqueIdentifier])
        {
          isOfSignificantSize = [v15 isOfSignificantSize];

          if (isOfSignificantSize)
          {
            v31 = v15;
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];

            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
    v11 = v9;
  }

LABEL_19:

  v18 = objc_opt_class();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__CAMPreviewViewController__updateMRCIndicatorsAnimated___block_invoke;
  v26[3] = &unk_1E76FDD28;
  v26[4] = self;
  [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v11 allowNewAndReappearingIndicators:1 viewType:@"MRC" viewClass:v18 geometryCallback:v26 minimumAreaChangeThreshold:0.0 minimumAreaFractionChangeThreshold:0.0];
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v20 = [_indicatorViewsByType objectForKeyedSubscript:@"MRC"];
  v21 = [v20 copy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __57__CAMPreviewViewController__updateMRCIndicatorsAnimated___block_invoke_2;
  v23[3] = &unk_1E76FDE40;
  v24 = uniqueIdentifier;
  selfCopy = self;
  v22 = uniqueIdentifier;
  [v21 enumerateKeysAndObjectsUsingBlock:v23];
}

void __57__CAMPreviewViewController__updateMRCIndicatorsAnimated___block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v10 = [v4 previewView];
  [v10 frameForMetadataObjectResult:v5];
  v7 = v6;
  v9 = v8;

  CAMViewGeometryForFrame(a3, v7, v9);
}

void __57__CAMPreviewViewController__updateMRCIndicatorsAnimated___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  v6 = [v13 isInactive];
  v7 = [v5 isEqualToString:*(a1 + 32)];

  [v13 setInactive:v7 ^ 1u];
  if (v6 && v7)
  {
    v8 = +[CAMCaptureCapabilities capabilities];
    if ([v8 isImageAnalysisSupported])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [v13 startScalingWithExpansionWidth:v9 duration:10.0 repeatCount:0.2];
  }

  if (v7)
  {
    v10 = *(a1 + 40);
    v11 = sel__handleSignificantMRCIndicatorButtonTapped_;
    v12 = v13;
  }

  else
  {
    v12 = v13;
    v10 = 0;
    v11 = 0;
  }

  [v12 setTitleTarget:v10 action:v11];
}

- (void)_handleSignificantMRCIndicatorButtonTapped:(id)tapped
{
  delegate = [(CAMPreviewViewController *)self delegate];
  cachedSignificantMRCResult = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  [delegate previewViewController:self didSelectMRCResult:cachedSignificantMRCResult];
}

- (BOOL)_mrcIndicatorButtonContainsTouch:(id)touch
{
  touchCopy = touch;
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v6 = [_indicatorViewsByType objectForKeyedSubscript:@"MRC"];

  cachedSignificantMRCResult = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  uniqueIdentifier = [cachedSignificantMRCResult uniqueIdentifier];
  v9 = [v6 objectForKeyedSubscript:uniqueIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    [touchCopy locationInView:v10];
    v11 = [v10 pointInside:0 withEvent:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setCachedSignificantTextRegionResult:(id)result
{
  resultCopy = result;
  if (self->_cachedSignificantTextRegionResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_cachedSignificantTextRegionResult, result);
    [(CAMPreviewViewController *)self _updateTextRegionIndicatorsIfNecessary];
    [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:0];
    resultCopy = v6;
  }
}

- (void)setCachedTextRegionResults:(id)results
{
  resultsCopy = results;
  if (self->_cachedTextRegionResults != resultsCopy)
  {
    v6 = resultsCopy;
    objc_storeStrong(&self->_cachedTextRegionResults, results);
    [(CAMPreviewViewController *)self _updateTextRegionIndicatorsIfNecessary];
    resultsCopy = v6;
  }
}

- (void)_updateTextRegionIndicatorsIfNecessary
{
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls]&& [(CAMPreviewViewController *)self _shouldAllowTextRegionIndicators])
  {
    [(CAMPreviewViewController *)self _updateTextRegionIndicators];

    [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"textRegion" afterDelay:0.3];
  }
}

- (BOOL)_shouldAllowTextRegionIndicators
{
  v3 = +[CAMCaptureCapabilities capabilities];
  if ([v3 isImageAnalysisSupportedForMode:-[CAMPreviewViewController _mode](self devicePosition:{"_mode"), -[CAMPreviewViewController _devicePosition](self, "_devicePosition")}])
  {
    v4 = ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateTextRegionIndicators
{
  v31[1] = *MEMORY[0x1E69E9840];
  cachedSignificantTextRegionResult = [(CAMPreviewViewController *)self cachedSignificantTextRegionResult];
  v4 = cachedSignificantTextRegionResult;
  if (cachedSignificantTextRegionResult)
  {
    uniqueIdentifier = [cachedSignificantTextRegionResult uniqueIdentifier];
  }

  else
  {
    uniqueIdentifier = &stru_1F1660A30;
  }

  cachedSignificantMRCResult = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  if (cachedSignificantMRCResult)
  {
    cachedTextRegionResults = MEMORY[0x1E695E0F0];
  }

  else
  {
    cachedTextRegionResults = [(CAMPreviewViewController *)self cachedTextRegionResults];
  }

  v8 = +[CAMCaptureCapabilities capabilities];
  imageAnalysisShowsInactiveTextRegions = [v8 imageAnalysisShowsInactiveTextRegions];

  if ((imageAnalysisShowsInactiveTextRegions & 1) == 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55__CAMPreviewViewController__updateTextRegionIndicators__block_invoke;
    v28[3] = &unk_1E76FDEB8;
    v29 = uniqueIdentifier;
    v10 = [cachedTextRegionResults indexOfObjectPassingTest:v28];
    v11 = MEMORY[0x1E695E0F0];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL && cachedTextRegionResults)
    {
      v12 = [cachedTextRegionResults objectAtIndexedSubscript:v10];
      v31[0] = v12;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

      cachedTextRegionResults = v12;
    }

    cachedTextRegionResults = v11;
  }

  v13 = objc_opt_class();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __55__CAMPreviewViewController__updateTextRegionIndicators__block_invoke_2;
  v27[3] = &unk_1E76FDD28;
  v27[4] = self;
  [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:cachedTextRegionResults allowNewAndReappearingIndicators:1 viewType:@"textRegion" viewClass:v13 geometryCallback:v27 minimumAreaChangeThreshold:0.0 minimumAreaFractionChangeThreshold:0.0];
  if (imageAnalysisShowsInactiveTextRegions)
  {
    _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v15 = [_indicatorViewsByType objectForKeyedSubscript:@"textRegion"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:{v21, v23}];
          [v22 setInactive:{objc_msgSend(v21, "isEqualToString:", uniqueIdentifier) ^ 1}];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v18);
    }
  }
}

uint64_t __55__CAMPreviewViewController__updateTextRegionIndicators__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __55__CAMPreviewViewController__updateTextRegionIndicators__block_invoke_2(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 previewView];
  [v6 frameForTextRegionResult:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 viewportFrame];
  v22 = CGRectInset(v19, 3.0, 3.0);
  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  v21 = CGRectIntersection(v20, v22);
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  [v5 baselineAngle];
  v16 = v15;

  CGAffineTransformMakeRotation(&v18, -v16);
  v17 = *&v18.c;
  a3[3] = *&v18.a;
  a3[4] = v17;
  a3[5] = *&v18.tx;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _captureController = [(CAMPreviewViewController *)self _captureController];
  isCapturingNightModeImage = [_captureController isCapturingNightModeImage];

  if (isCapturingNightModeImage)
  {
    LOBYTE(self) = 0;
  }

  else if (self->__exposureBiasPanGestureRecognizer == beginCopy)
  {
    previewView = [(CAMPreviewViewController *)self previewView];
    pointIndicator = [previewView pointIndicator];

    delegate = [(CAMPreviewViewController *)self delegate];
    v10 = [delegate previewViewControllerShouldRestrictExposureBiasPanToTouchesNearSlider:self];

    if (pointIndicator && v10)
    {
      [(UITapGestureRecognizer *)beginCopy locationInView:previewView];
      v12 = v11;
      v14 = v13;
      pointIndicator2 = [previewView pointIndicator];
      [pointIndicator2 boundsIncludingExposureBiasSlider];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      pointIndicator3 = [previewView pointIndicator];
      [previewView convertRect:pointIndicator3 fromView:{v17, v19, v21, v23}];

      UIRectCenteredIntegralRectScale();
      v26.x = v12;
      v26.y = v14;
      LODWORD(pointIndicator3) = CGRectContainsPoint(v27, v26);
      LODWORD(self) = [(CAMPreviewViewController *)self _canModifyExposureBias]& pointIndicator3;
    }

    else
    {
      LOBYTE(self) = [(CAMPreviewViewController *)self _canModifyExposureBias];
    }
  }

  else if (self->__tapToFocusAndExposeGestureRecognizer == beginCopy || self->__longPressToLockGestureRecognizer == beginCopy)
  {
    LOBYTE(self) = [(CAMPreviewViewController *)self _allowUserToChangeFocusAndExposure];
  }

  else if (self->__aspectRatioToggleDoubleTapGestureRecognizer == beginCopy)
  {
    LODWORD(self) = ![(CAMPreviewViewController *)self _shouldDisableAspectRatioToggle];
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->__tapToFocusAndExposeGestureRecognizer == recognizerCopy || self->__longPressToLockGestureRecognizer == recognizerCopy || (aspectRatioToggleDoubleTapGestureRecognizer = self->__aspectRatioToggleDoubleTapGestureRecognizer, aspectRatioToggleDoubleTapGestureRecognizer == recognizerCopy))
  {
    previewView = [(CAMPreviewViewController *)self previewView];
    [touchCopy locationInView:previewView];
    v12 = v11;
    v14 = v13;
    [previewView bounds];
    v19 = CGRectInset(v18, 10.0, 10.0);
    v17.x = v12;
    v17.y = v14;
    v9 = CGRectContainsPoint(v19, v17);

    aspectRatioToggleDoubleTapGestureRecognizer = self->__aspectRatioToggleDoubleTapGestureRecognizer;
  }

  else
  {
    v9 = 1;
  }

  if (aspectRatioToggleDoubleTapGestureRecognizer == recognizerCopy)
  {
    v9 &= ![(CAMPreviewViewController *)self _shouldDisableAspectRatioToggle];
  }

  v15 = ![(CAMPreviewViewController *)self _mrcIndicatorButtonContainsTouch:touchCopy];

  return v15 & v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained previewViewController:self gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];

  if (v9)
  {
    LOBYTE(v10) = 1;
  }

  else if (self->__tapToFocusAndExposeGestureRecognizer == recognizerCopy && self->__aspectRatioToggleDoubleTapGestureRecognizer == gestureRecognizerCopy)
  {
    v10 = ![(CAMPreviewViewController *)self _shouldDisableAspectRatioToggle];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_allowUserToChangeFocusAndExposure
{
  shouldAllowUserToChangeFocusAndExposure = [(CUCaptureController *)self->__captureController shouldAllowUserToChangeFocusAndExposure];
  if (shouldAllowUserToChangeFocusAndExposure)
  {
    if ([(CAMPreviewViewController *)self _shouldDisableFocusUI])
    {
      LOBYTE(shouldAllowUserToChangeFocusAndExposure) = 0;
    }

    else
    {
      LOBYTE(shouldAllowUserToChangeFocusAndExposure) = ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked];
    }
  }

  return shouldAllowUserToChangeFocusAndExposure;
}

- (BOOL)_isPointOnVisibleFocusIndicator:(CGPoint)indicator
{
  y = indicator.y;
  x = indicator.x;
  previewView = [(CAMPreviewViewController *)self previewView];
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  v8 = _pointIndicator;
  if (_pointIndicator && ([_pointIndicator alpha], v9 > 0.0))
  {
    [previewView convertPoint:v8 toView:{x, y}];
    v11 = v10;
    v13 = v12;
    [v8 bounds];
    v16.x = v11;
    v16.y = v13;
    v14 = CGRectContainsPoint(v17, v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_focusOnPoint:(CGPoint)point shouldShowFocusAndExposureIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  y = point.y;
  x = point.x;
  if ([(CAMPreviewViewController *)self _allowUserToChangeFocusAndExposure])
  {
    previewView = [(CAMPreviewViewController *)self previewView];
    v9 = +[CAMCaptureCapabilities capabilities];
    isSmallerFocusPointOfInterestSupported = [v9 isSmallerFocusPointOfInterestSupported];

    if (isSmallerFocusPointOfInterestSupported && [(CAMPreviewViewController *)self _isPointOnVisibleFocusIndicator:x, y])
    {
      _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
      v12 = 1;
      v13 = [(CAMPreviewViewController *)self _styleForPointIndicatorWithRectSize:1];
      v14 = [_pointIndicator style] != v13;
      [_pointIndicator setStyle:-[CAMPreviewViewController _styleForPointIndicatorWithRectSize:](self animated:"_styleForPointIndicatorWithRectSize:" completion:{v14), 1, 0}];
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    [previewView bounds];
    v58.x = x;
    v58.y = y;
    if (CGRectContainsPoint(v60, v58))
    {
      [previewView captureDevicePointOfInterestForPoint:{x, y}];
      if (v16 < 0.0 || (v18 = v16, v16 > 1.0) || (v19 = v17, v17 < 0.0) || v17 > 1.0)
      {
        v45 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v46 = "Ignoring tap outside of the preview layer area";
          v47 = buf;
          goto LABEL_21;
        }
      }

      else
      {
        v20 = +[CAMCaptureCapabilities capabilities];
        isFrontRearSimultaneousVideoSupported = [v20 isFrontRearSimultaneousVideoSupported];

        if (!isFrontRearSimultaneousVideoSupported || (-[CAMPreviewViewController previewView](self, "previewView"), v22 = objc_claimAutoreleasedReturnValue(), [v22 frontPIPVideoPreviewView], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isHidden"), v23, v22, -[CAMPreviewViewController previewView](self, "previewView"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "viewportFrame"), +[CAMPIPVideoPreviewView pipOutsetForViewportSize:](CAMPIPVideoPreviewView, "pipOutsetForViewportSize:", v26, v27), v29 = v28, v31 = v30, v53 = v33, v54 = v32, v25, -[CAMPreviewViewController previewView](self, "previewView"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "frontPIPVideoPreviewView"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "frame"), v37 = v31 + v36, v39 = v29 + v38, v41 = v40 - (v31 + v53), v43 = v42 - (v29 + v54), v35, v34, v61.origin.x = v37, v61.origin.y = v39, v61.size.width = v41, v61.size.height = v43, v59.x = x, v59.y = y, v44 = CGRectContainsPoint(v61, v59), (v24 & 1) != 0) || !v44)
        {
          [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0, *&v53, *&v54];
          date = [MEMORY[0x1E695DF00] date];
          [(CAMPreviewViewController *)self _setLastTapToFocusTime:date];

          v50 = +[CAMCaptureCapabilities capabilities];
          v51 = [v50 isTapToExposeSupportedForMode:{-[CAMPreviewViewController _mode](self, "_mode")}];

          captureController = self->__captureController;
          if (v51)
          {
            [(CUCaptureController *)captureController focusAndExposeAtPoint:1 lockFocus:v14 rectSize:1 resetExposureTargetBias:v18, v19];
          }

          else
          {
            [(CUCaptureController *)captureController focusAtPoint:1 lockFocus:v14 rectSize:v18, v19];
          }

          if (indicatorCopy)
          {
            [(CAMPreviewViewController *)self _showIndicatorAtPointOfInterest:v14 rectSize:v12 animateInPlace:v18, v19];
          }

          [(CAMPreviewViewController *)self setCachedExposureTargetBias:0.0];
          v15 = 1;
          goto LABEL_23;
        }

        v45 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v55 = 0;
          v46 = "Ignoring tap inside the front PIP preview view area";
          v47 = &v55;
LABEL_21:
          _os_log_impl(&dword_1A3640000, v45, OS_LOG_TYPE_DEFAULT, v46, v47, 2u);
        }
      }
    }

    else
    {
      v45 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 0;
        v46 = "Ignoring tap outside of the preview view bounds";
        v47 = &v57;
        goto LABEL_21;
      }
    }

    v15 = 0;
LABEL_23:

    return v15;
  }

  return 0;
}

- (BOOL)_setCinematicFocusForMetadataObject:(id)object atPoint:(CGPoint)point useFixedOpticalFocus:(BOOL)focus useHardFocus:(BOOL)hardFocus
{
  hardFocusCopy = hardFocus;
  focusCopy = focus;
  y = point.y;
  x = point.x;
  v49 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView captureDevicePointOfInterestForPoint:{x, y}];
  v15 = v13;
  v16 = v13 < 0.0 || v13 > 1.0;
  if (v16 || ((v17 = v14, v14 >= 0.0) ? (v18 = v14 > 1.0) : (v18 = 1), v18))
  {
    v19 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring tap request for cinematic tracker outside of the preview layer area", buf, 2u);
    }

    v20 = 0;
  }

  else
  {
    v21 = os_log_create("com.apple.camera", "Camera");
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (objectCopy)
    {
      if (v22)
      {
        v23 = [objectCopy description];
        v50.x = x;
        v50.y = y;
        v24 = NSStringFromCGPoint(v50);
        v38 = v24;
        v51.x = v15;
        v51.y = v17;
        v25 = NSStringFromCGPoint(v51);
        v26 = @"YES";
        if (!focusCopy)
        {
          v26 = @"NO";
        }

        v27 = v26;
        v28 = @"YES";
        if (!hardFocusCopy)
        {
          v28 = @"NO";
        }

        *buf = 138544386;
        v40 = v23;
        v41 = 2114;
        v42 = v24;
        v43 = 2114;
        v44 = v25;
        v45 = 2114;
        v46 = v27;
        v47 = 2114;
        v48 = v28;
        v29 = v48;
        _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "Cinematic: Tapped on CinematicSubjectView, attempting to set cinematic focus on:%{public}@ at point:%{public}@, normalized point:%{public}@, useFixedOpticalFocus:%{public}@, hardFocus:%{public}@", buf, 0x34u);
      }

      _captureController = [(CAMPreviewViewController *)self _captureController];
      [_captureController setCinematicFocusForMetadataObject:objectCopy atPoint:focusCopy useFixedOpticalFocus:hardFocusCopy useHardFocus:{v15, v17}];
    }

    else
    {
      if (v22)
      {
        v52.x = x;
        v52.y = y;
        v31 = NSStringFromCGPoint(v52);
        v53.x = v15;
        v53.y = v17;
        v32 = NSStringFromCGPoint(v53);
        v33 = @"NO";
        if (focusCopy)
        {
          v33 = @"YES";
        }

        v34 = v33;
        v35 = @"NO";
        if (hardFocusCopy)
        {
          v35 = @"YES";
        }

        v36 = v35;
        *buf = 138544130;
        v40 = v31;
        v41 = 2114;
        v42 = v32;
        v43 = 2114;
        v44 = v34;
        v45 = 2114;
        v46 = v36;
        _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "Cinematic: Tapped outside of CinematicSubjectView, attempting to set cinematic focus at point:%{public}@, normalized point:%{public}@ , useFixedOpticalFocus:%{public}@, hardFocus:%{public}@", buf, 0x2Au);
      }

      _captureController = [(CAMPreviewViewController *)self _captureController];
      [_captureController setCinematicFocusAtPoint:focusCopy useFixedOpticalFocus:hardFocusCopy useHardFocus:{v15, v17}];
    }

    [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0];
    v20 = 1;
  }

  return v20;
}

- (void)_handleTapToFocusAndExpose:(id)expose
{
  exposeCopy = expose;
  previewView = [(CAMPreviewViewController *)self previewView];
  [exposeCopy locationInView:previewView];
  v6 = v5;
  v8 = v7;

  [(CAMPreviewViewController *)self _handleFocusTapForPointInPreviewView:v6, v8];
}

- (void)_handleFocusTapForPointInPreviewView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  v19 = [(CAMPreviewViewController *)self _cinematicModeIndicatorViewAtPoint:?];
  if (v19)
  {
    _metadataObjectsForView = [(CAMPreviewViewController *)self _metadataObjectsForView];
    v7 = [_metadataObjectsForView objectForKey:v19];

    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 syntheticFocusMode] & 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(CAMPreviewViewController *)self _setCinematicFocusForMetadataObject:v7 atPoint:0 useFixedOpticalFocus:v8 useHardFocus:x, y];
    _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator animated:1];

    _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:_pointIndicator animated:1];

    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([(CAMPreviewViewController *)self _mode]== 7)
  {
    if (![(CAMPreviewViewController *)self _setCinematicFocusForMetadataObject:0 atPoint:0 useFixedOpticalFocus:0 useHardFocus:x, y])
    {
      goto LABEL_10;
    }

LABEL_9:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposure:self];

    goto LABEL_10;
  }

  v13 = objc_loadWeakRetained(&self->_delegate);
  isDockAccessoryConnectedAndTracking = [v13 isDockAccessoryConnectedAndTracking];

  if (isDockAccessoryConnectedAndTracking)
  {
    v15 = [(CAMPreviewViewController *)self _dockKitModeIndicatorViewsContainPoint:x, y];
    v16 = v15 | [(CAMPreviewViewController *)self isFocusLockedOnDockKitSubject];
    if (v16)
    {
      _continuousIndicator2 = [(CAMPreviewViewController *)self _continuousIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator2 animated:1];

      _pointIndicator2 = [(CAMPreviewViewController *)self _pointIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:_pointIndicator2 animated:1];

      [(CAMPreviewViewController *)self _setDockKitFocusAtPoint:x, y];
    }

    if ([(CAMPreviewViewController *)self _focusOnPoint:(v16 & 1) == 0 shouldShowFocusAndExposureIndicator:x, y])
    {
      goto LABEL_9;
    }
  }

  else if ([(CAMPreviewViewController *)self _focusOnPoint:1 shouldShowFocusAndExposureIndicator:x, y])
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setDockKitFocusAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView captureDevicePointOfInterestForPoint:{x, y}];
  v9 = v7;
  v10 = v7 < 0.0 || v7 > 1.0;
  if (v10 || ((v11 = v8, v8 >= 0.0) ? (v12 = v8 > 1.0) : (v12 = 1), v12))
  {
    WeakRetained = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A3640000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Ignoring tap request for dockkit tracker outside of the preview layer area", v14, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tapToFocusTriggeredAtPoint:v9, v11];
  }
}

- (BOOL)_isLongPressingToLock
{
  _longPressToLockGestureRecognizer = [(CAMPreviewViewController *)self _longPressToLockGestureRecognizer];
  state = [_longPressToLockGestureRecognizer state];

  return (state - 1) < 2;
}

- (void)_handleLongPressToLock:(id)lock
{
  lockCopy = lock;
  if ([(CAMPreviewViewController *)self _allowUserToChangeFocusAndExposure])
  {
    previewView = [(CAMPreviewViewController *)self previewView];
    state = [lockCopy state];
    if ((state - 3) >= 3)
    {
      if (state != 1)
      {
        goto LABEL_10;
      }

      [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];
      [lockCopy locationInView:previewView];
      v9 = v8;
      v11 = v10;
      [previewView captureDevicePointOfInterestForPoint:?];
      v13 = v12;
      v15 = v14;
      previewView2 = [(CAMPreviewViewController *)self previewView];
      frontPIPVideoPreviewView = [previewView2 frontPIPVideoPreviewView];

      [frontPIPVideoPreviewView frame];
      v21.x = v9;
      v21.y = v11;
      v17 = CGRectContainsPoint(v22, v21);
      _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
      frontRearSimultaneousVideoEnabled = [_graphConfiguration frontRearSimultaneousVideoEnabled];

      if (!frontRearSimultaneousVideoEnabled || !v17)
      {
        [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0];
        [(CAMPreviewViewController *)self setCachedExposureTargetBias:0.0];
        date = [MEMORY[0x1E695DF00] date];
        [(CAMPreviewViewController *)self _setLastTapToFocusTime:date];

        if ([(CAMPreviewViewController *)self _mode]== 7)
        {
          [(CAMPreviewViewController *)self _setCinematicFocusForMetadataObject:0 atPoint:1 useFixedOpticalFocus:1 useHardFocus:v9, v11];
        }

        else
        {
          [(CUCaptureController *)self->__captureController focusAndExposeAtPoint:1 lockFocus:0 rectSize:1 resetExposureTargetBias:v15, v13];
          [(CAMPreviewViewController *)self _showLockedAtPointOfInterest:v15, v13];
          [(CAMPreviewViewController *)self _lockFocusAndExposureAfterDelay:1.0];
        }
      }
    }

    else
    {
      [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];
      [(CAMPreviewViewController *)self _scaleDownLockedPointOfInterest];
      frontPIPVideoPreviewView = [(CAMPreviewViewController *)self _pointIndicator];
      [(CAMPreviewViewController *)self _deactivateFocusIndicator:frontPIPVideoPreviewView afterDelay:1.2];
    }

LABEL_10:
  }
}

- (void)_lockFocusAndExposureAfterDelay:(double)delay
{
  [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];

  [(CAMPreviewViewController *)self performSelector:sel__lockFocusAndExposure withObject:0 afterDelay:delay];
}

- (void)_cancelDelayedFocusAndExposureLock
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__lockFocusAndExposure object:0];
}

- (void)_lockFocusAndExposure
{
  [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];
  _captureController = [(CAMPreviewViewController *)self _captureController];
  [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:1];
  [_captureController forceDisableSubjectAreaChangeMonitoring];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isTapToExposeSupportedForMode:{-[CAMPreviewViewController _mode](self, "_mode")}];

  if (v4)
  {
    [_captureController changeToLockedExposure];
  }

  [(CAMPreviewViewController *)self _finishFocusingLockedPointOfInterestIndicator];
}

- (void)setCachedExposureTargetBias:(float)bias
{
  if (self->_cachedExposureTargetBias != bias)
  {
    self->_cachedExposureTargetBias = bias;
    [(CAMPreviewViewController *)self _updateExposureBiasViews];
  }
}

- (BOOL)_showExposureBiasSliderForPointView
{
  v3 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(self) = [v3 isTapAndBiasSupportedForMode:{-[CAMPreviewViewController _mode](self, "_mode")}];

  return self;
}

- (float)_exposureTargetBiasMinimum
{
  v8 = 0;
  [CAMPreferencesUtilities doubleForKey:@"CAMExposureBiasMin" applicationID:@"com.apple.camera" keyIsValidAndExists:&v8];
  if (v8 != 1 || v3 >= 0.0)
  {
    [(CAMPreviewViewController *)self _exposureTargetBiasMaximum];
    v5 = -v4;
    +[CAMExposureSlider minimumValue];
    return fmin(v5, v6);
  }

  return v3;
}

- (float)_exposureTargetBiasMaximum
{
  [CAMPreferencesUtilities doubleForKey:@"CAMExposureBiasMax" applicationID:@"com.apple.camera" defaultValue:4.0];
  v3 = v2;
  +[CAMExposureSlider maximumValue];
  return fmax(v3, v4);
}

- (int)_exposureBiasSide
{
  _interfaceOrientation = [(CAMPreviewViewController *)self _interfaceOrientation];
  if ((_interfaceOrientation - 2) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1A3A6A8F0[_interfaceOrientation - 2];
  }
}

- (void)_initializeExposureBiasParametersForFocusIndicatorView:(id)view
{
  v6[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy setExposureBiasSide:-[CAMPreviewViewController _exposureBiasSide](self animated:{"_exposureBiasSide"), 0}];
  v6[0] = viewCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  [(CAMPreviewViewController *)self _updateExposureBiasViews:v5];
}

- (void)_updateExposureBiasViews
{
  _focusIndicatorViewsWithExposureBiasSliders = [(CAMPreviewViewController *)self _focusIndicatorViewsWithExposureBiasSliders];
  [(CAMPreviewViewController *)self _updateExposureBiasViews:_focusIndicatorViewsWithExposureBiasSliders];
}

- (void)_updateExposureBiasViews:(id)views
{
  v34 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  [(CAMPreviewViewController *)self cachedExposureTargetBias];
  v6 = v5;
  [(CAMPreviewViewController *)self _exposureTargetBiasMinimum];
  v8 = v7;
  [(CAMPreviewViewController *)self _exposureTargetBiasMaximum];
  v10 = v9;
  [(CAMPreviewViewController *)self _virtualSliderPositionForExposureBias:v8];
  v12 = v11;
  [(CAMPreviewViewController *)self _virtualSliderPositionForExposureBias:v10];
  v14 = v13;
  [(CAMPreviewViewController *)self _virtualSliderPositionForExposureBias:v6];
  v16 = v15;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = viewsCopy;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v30;
    v22 = v12;
    v23 = v14;
    v24 = v16;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v29 + 1) + 8 * i);
        *&v19 = v22;
        [v26 setExposureBiasMinimum:{v19, v29}];
        *&v27 = v23;
        [v26 setExposureBiasMaximum:v27];
        *&v28 = v24;
        [v26 setExposureBiasValue:v28];
      }

      v20 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }
}

- (id)_focusIndicatorViewsWithExposureBiasSliders
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  if (_pointIndicator)
  {
    [v3 addObject:_pointIndicator];
  }

  return v3;
}

- (BOOL)_isPanningExposureBias
{
  exposureBiasPanGestureRecognizer = self->__exposureBiasPanGestureRecognizer;
  if (exposureBiasPanGestureRecognizer)
  {
    LOBYTE(exposureBiasPanGestureRecognizer) = ([(UIPanGestureRecognizer *)exposureBiasPanGestureRecognizer state]- 1) < 2;
  }

  return exposureBiasPanGestureRecognizer;
}

- (void)_handleExposureBiasPan:(id)pan
{
  panCopy = pan;
  _captureController = [(CAMPreviewViewController *)self _captureController];
  state = [panCopy state];
  if ((state - 3) >= 3)
  {
    if ((state - 1) > 1)
    {
      goto LABEL_14;
    }

    if ([panCopy state] == 1)
    {
      [(CAMPreviewViewController *)self cachedExposureTargetBias];
      self->__exposureBiasPanStartValue = v7;
      _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
      [(CAMPreviewViewController *)self _activateFocusIndicator:_pointIndicator];
      _mode = [(CAMPreviewViewController *)self _mode];
      if (_mode <= 9 && ((1 << _mode) & 0x251) != 0)
      {
        [_captureController changeToLockedExposure];
      }
    }

    _pointIndicator2 = [(CAMPreviewViewController *)self _pointIndicator];
    [panCopy translationInView:_pointIndicator2];
    [(CAMPreviewViewController *)self _effectiveExposureBiasMovementForTranslation:?];
    v11 = v10;
    [(CAMPreviewViewController *)self _virtualSliderPositionForExposureBias:self->__exposureBiasPanStartValue];
    [(CAMPreviewViewController *)self _exposureBiasForVirtualSliderPosition:v11 + v12];
    v14 = v13;
    [(CAMPreviewViewController *)self _exposureTargetBiasMinimum];
    v16 = v15;
    [(CAMPreviewViewController *)self _exposureTargetBiasMaximum];
    v18 = v16;
    if (v14 >= v16)
    {
      v17 = *&v17;
      v18 = v14;
      if (v14 > v17)
      {
        v18 = v17;
      }
    }

    *&v17 = v18;
    [(CAMPreviewViewController *)self setCachedExposureTargetBias:v17];
    [(CAMPreviewViewController *)self _updateCaptureControllerExposureTargetBias];
    date = [MEMORY[0x1E695DF00] date];
    [(CAMPreviewViewController *)self _setLastExposureBiasModifiedTime:date];
  }

  else
  {
    [(CAMPreviewViewController *)self _updateExposureBiasViews];
    _pointIndicator2 = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _deactivateFocusIndicator:_pointIndicator2 afterDelay:1.2];
  }

LABEL_14:
}

- (double)_effectiveExposureBiasMovementForTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  _exposureBiasSide = [(CAMPreviewViewController *)self _exposureBiasSide];
  result = 0.0;
  v7 = -x;
  if (_exposureBiasSide != 2)
  {
    v7 = 0.0;
  }

  if (_exposureBiasSide == 3)
  {
    v7 = x;
  }

  if (_exposureBiasSide == 1)
  {
    result = y;
  }

  if (!_exposureBiasSide)
  {
    result = -y;
  }

  if (_exposureBiasSide > 1)
  {
    return v7;
  }

  return result;
}

- (double)_virtualSliderPositionForExposureBias:(double)bias
{
  v5 = -bias;
  if (bias >= 0.0)
  {
    biasCopy = bias;
  }

  else
  {
    biasCopy = v5;
  }

  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderPointsForFirstStop];
  v8 = v7;
  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderExponent];
  result = v8 * (1.0 - pow(v9, biasCopy)) / (1.0 - v9);
  if (bias < 0.0)
  {
    return -result;
  }

  return result;
}

- (double)_exposureBiasForVirtualSliderPosition:(double)position
{
  v5 = -position;
  if (position >= 0.0)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = v5;
  }

  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderPointsForFirstStop];
  v8 = v7;
  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderExponent];
  v10 = v9;
  v11 = log(1.0 - positionCopy * (1.0 - v9) / v8);
  result = v11 / log(v10);
  if (position < 0.0)
  {
    return -result;
  }

  return result;
}

- (void)captureController:(id)controller willResetFocus:(BOOL)focus exposure:(BOOL)exposure
{
  exposureCopy = exposure;
  focusCopy = focus;
  [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0];
  [(CAMPreviewViewController *)self _setCinematicIsFixedFocusLocked:0];
  [(CAMPreviewViewController *)self _setCinematicSubjectIsTrackingLocked:0];
  [(CAMPreviewViewController *)self _setDockKitSubjectIsTrackingLocked:0];
  if ([(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure])
  {
    _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:_pointIndicator animated:0];
  }

  else
  {
    [(CAMPreviewViewController *)self _showUIForResetFocusAndExposure];
    if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
    {
      [(CAMPreviewViewController *)self _scalePortraitModeFocusIndicators];
      goto LABEL_7;
    }

    _pointIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
    [_pointIndicator setPulsing:1];
    _continuousIndicator = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:_continuousIndicator afterDelay:0.8];
  }

LABEL_7:
  delegate = [(CAMPreviewViewController *)self delegate];
  [delegate previewViewController:self willResetFocus:focusCopy exposure:exposureCopy];
}

- (BOOL)captureController:(id)controller shouldResetFocusAndExposureForReason:(int64_t)reason
{
  _isFocusAndExposureLockedByUserOrExternally = [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally];
  if (reason > 1)
  {
    v7 = !_isFocusAndExposureLockedByUserOrExternally;
    v8 = reason == 3 && !_isFocusAndExposureLockedByUserOrExternally;
    if (reason != 2)
    {
      v7 = v8;
    }

    return v7 & 1;
  }

  if (reason)
  {
    if (reason == 1)
    {
      v7 = (_isFocusAndExposureLockedByUserOrExternally | [(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure]) ^ 1;
      return v7 & 1;
    }

LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  if (_isFocusAndExposureLockedByUserOrExternally)
  {
    goto LABEL_11;
  }

  return [(CAMPreviewViewController *)self _shouldResetFocusAndExposureForSubjectAreaDidChange];
}

- (BOOL)_shouldResetFocusAndExposureForSubjectAreaDidChange
{
  if ([(CAMPreviewViewController *)self _isPanningExposureBias]|| [(CAMPreviewViewController *)self _isLongPressingToLock])
  {
    return 0;
  }

  _lastExposureBiasModificationTime = [(CAMPreviewViewController *)self _lastExposureBiasModificationTime];
  if (!_lastExposureBiasModificationTime)
  {
    goto LABEL_8;
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:_lastExposureBiasModificationTime];
  v7 = v6;

  if (v7 >= 1.5)
  {
    [(CAMPreviewViewController *)self _setLastExposureBiasModifiedTime:0];
LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = 0;
LABEL_9:
  _lastTapToFocusTime = [(CAMPreviewViewController *)self _lastTapToFocusTime];
  if (_lastTapToFocusTime)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:_lastTapToFocusTime];
    v11 = v10;

    if (v11 >= 1.0)
    {
      [(CAMPreviewViewController *)self _setLastTapToFocusTime:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)captureController:(id)controller didOutputFocusResult:(id)result
{
  resultCopy = result;
  [(CAMPreviewViewController *)self _setLastFocusResult:resultCopy];
  _timelapseController = [(CAMPreviewViewController *)self _timelapseController];
  [_timelapseController setLastFocusResult:resultCopy];
  if (-[CAMPreviewViewController _mode](self, "_mode") != 7 && [resultCopy deviceSupportsFocus])
  {
    focusMode = [resultCopy focusMode];
    contrastBasedFocusDidStart = [resultCopy contrastBasedFocusDidStart];
    contrastBasedFocusDidEnd = [resultCopy contrastBasedFocusDidEnd];
    [resultCopy pointOfInterest];
    v10 = v9;
    v12 = v11 == 0.5;
    _isLongPressingToLock = [(CAMPreviewViewController *)self _isLongPressingToLock];
    v14 = v10 == 0.5 && v12;
    v15 = focusMode == 3 && v14;
    if (contrastBasedFocusDidStart)
    {
      if (v15)
      {
        [(CAMPreviewViewController *)self _showUIForResetFocusAndExposure];
      }

      [(CAMPreviewViewController *)self _setFocusIndicatorsPulsing:1];
    }

    if (contrastBasedFocusDidEnd)
    {
      if (v15)
      {
        [(CAMPreviewViewController *)self _updateUIForCenteredContrastBasedFocusDidEnd];
        [(CAMPreviewViewController *)self _setFocusIndicatorsPulsing:0];
      }

      else
      {
        [(CAMPreviewViewController *)self _setFocusIndicatorsPulsing:0];
        if (!_isLongPressingToLock && ![(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally])
        {
          _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
          [(CAMPreviewViewController *)self _deactivateFocusIndicator:_pointIndicator afterDelay:1.2];
        }
      }

      [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:0.5];
    }
  }
}

- (void)captureController:(id)controller didOutputExposureResult:(id)result
{
  resultCopy = result;
  exposureMode = [resultCopy exposureMode];
  [resultCopy pointOfInterest];
  v8 = v7;
  v10 = v9;
  exposureDidEnd = [resultCopy exposureDidEnd];
  [(CAMPreviewViewController *)self _setLastExposureResult:resultCopy];
  deviceSupportsFocus = [resultCopy deviceSupportsFocus];

  if (deviceSupportsFocus)
  {
    return;
  }

  if (exposureMode == 2 && v8 == 0.5 && v10 == 0.5)
  {
    _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:_pointIndicator animated:0];
LABEL_6:

    goto LABEL_7;
  }

  _isLongPressingToLock = [(CAMPreviewViewController *)self _isLongPressingToLock];
  if (exposureDidEnd && !_isLongPressingToLock && ![(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally])
  {
    _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _deactivateFocusIndicator:_pointIndicator afterDelay:1.2];
    goto LABEL_6;
  }

LABEL_7:
  if (exposureDidEnd)
  {

    [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:0.5];
  }
}

- (float)baselineExposureValueForCaptureController:(id)controller
{
  [(CAMPreviewViewController *)self setCachedExposureTargetBias:controller, 0.0];

  [(CAMPreviewViewController *)self baselineExposureBias];
  return result;
}

- (void)_hideAllCinematicIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"cinematicSubject" animated:animated];

  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"cinematicFixedFocus" animated:animatedCopy];
}

- (void)_setCinematicSubjectIsTrackingLocked:(BOOL)locked shouldAnimate:(BOOL)animate
{
  if (self->__cinematicSubjectIsTrackingLocked != locked)
  {
    animateCopy = animate;
    self->__cinematicSubjectIsTrackingLocked = locked;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:animateCopy];
  }
}

- (BOOL)isFocusLockedOnCinematicSubject
{
  if ([(CAMPreviewViewController *)self _mode]!= 7)
  {
    return 0;
  }

  return [(CAMPreviewViewController *)self _cinematicSubjectIsTrackingLocked];
}

- (void)_setCinematicIsFixedFocusLocked:(BOOL)locked shouldAnimate:(BOOL)animate
{
  if (self->__cinematicIsFixedFocusLocked != locked)
  {
    animateCopy = animate;
    self->__cinematicIsFixedFocusLocked = locked;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:animateCopy];
  }
}

- (void)_setUserLockedFocusAndExposure:(BOOL)exposure shouldAnimate:(BOOL)animate
{
  if (self->__userLockedFocusAndExposure != exposure)
  {
    animateCopy = animate;
    self->__userLockedFocusAndExposure = exposure;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:animateCopy];
  }
}

- (void)setFocusAndExposureExternallyLocked:(BOOL)locked
{
  if (self->_focusAndExposureExternallyLocked != locked)
  {
    v15 = v3;
    v16 = v4;
    self->_focusAndExposureExternallyLocked = locked;
    if (locked)
    {
      _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
      if ([(CAMPreviewViewController *)self _isShowingFocusIndicator:_pointIndicator])
      {
        if (![(CAMPreviewViewController *)self _userLockedFocusAndExposure])
        {
          [(CAMPreviewViewController *)self _activateFocusIndicator:_pointIndicator];
          [(CAMPreviewViewController *)self _deactivateFocusIndicator:_pointIndicator afterDelay:1.2];
          [_pointIndicator startScalingWithExpansionWidth:2 duration:31.0 repeatCount:0.3];
        }
      }

      else if ([(CAMPreviewViewController *)self _currentFacesCount])
      {
        [(CAMPreviewViewController *)self _setExternalLockNeedsCurrentFacesToAppear:1];
      }

      else if (![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"portraitSubject"]&& ![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"cinematicSubject"]&& ![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"cinematicFixedFocus"])
      {
        [(CAMPreviewViewController *)self _createExternalFocusLockIndicatorIfNecessary];
        _externalFocusLockIndicator = [(CAMPreviewViewController *)self _externalFocusLockIndicator];
        [_externalFocusLockIndicator setAlpha:0.0];
        v10 = MEMORY[0x1E69DD250];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __64__CAMPreviewViewController_setFocusAndExposureExternallyLocked___block_invoke;
        v13[3] = &unk_1E76F77B0;
        v14 = _externalFocusLockIndicator;
        v11 = _externalFocusLockIndicator;
        [v10 animateWithDuration:v13 animations:0.25];
        [v11 startScalingWithExpansionWidth:2 duration:31.0 repeatCount:0.3];
        [(CAMPreviewViewController *)self _deactivateFocusIndicator:v11 afterDelay:1.2];
      }

      _captureController = [(CAMPreviewViewController *)self _captureController];
      [_captureController changeToLockedFocusAndExposure];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
      [(CAMPreviewViewController *)self _updateFaceIndicatorsForResults:MEMORY[0x1E695E0F0]];
      [(CAMPreviewViewController *)self _updatePortraitModeViewsForResults:v7];
      [(CAMPreviewViewController *)self _updateCinematicModeViewsForResults:v7];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__CAMPreviewViewController_setFocusAndExposureExternallyLocked___block_invoke_2;
      v12[3] = &unk_1E76F77B0;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.25];
      if ([(CAMPreviewViewController *)self _userLockedFocusAndExposure])
      {
        return;
      }

      _captureController = [(CAMPreviewViewController *)self _captureController];
      [_captureController resetFocusAndExposure];
    }
  }
}

void __64__CAMPreviewViewController_setFocusAndExposureExternallyLocked___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _externalFocusLockIndicator];
  [v1 setAlpha:0.0];
}

- (BOOL)_isFocusAndExposureLockedByUserOrExternally
{
  if ([(CAMPreviewViewController *)self _userLockedFocusAndExposure])
  {
    return 1;
  }

  return [(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked];
}

- (BOOL)isFocusLockedOnDockKitSubject
{
  if ([(CAMPreviewViewController *)self _mode]== 7)
  {
    return 0;
  }

  return [(CAMPreviewViewController *)self _dockKitSubjectIsTrackingLocked];
}

- (void)_setDockKitSubjectIsTrackingLocked:(BOOL)locked shouldAnimate:(BOOL)animate
{
  animateCopy = animate;
  if ([(CAMPreviewViewController *)self _dockKitSubjectIsTrackingLocked]!= locked)
  {
    self->__dockKitSubjectIsTrackingLocked = locked;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:animateCopy];
  }
}

- (void)_setLastFocusResult:(id)result
{
  resultCopy = result;
  if (self->__lastFocusResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->__lastFocusResult, result);
    [(CAMPreviewViewController *)self _validateInternalProperties];
    resultCopy = v6;
  }
}

- (void)_setLastExposureResult:(id)result
{
  resultCopy = result;
  if (self->__lastExposureResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->__lastExposureResult, result);
    [(CAMPreviewViewController *)self _validateInternalProperties];
    resultCopy = v6;
  }
}

- (void)setBaselineExposureBias:(float)bias
{
  if (self->_baselineExposureBias != bias)
  {
    self->_baselineExposureBias = bias;
    [(CAMPreviewViewController *)self _updateCaptureControllerExposureTargetBias];
  }
}

- (float)totalExposureBias
{
  [(CAMPreviewViewController *)self cachedExposureTargetBias];
  v4 = v3;
  [(CAMPreviewViewController *)self baselineExposureBias];
  v6 = v4 + v5;
  [(CAMPreviewViewController *)self _exposureTargetBiasMinimum];
  v8 = v7;
  [(CAMPreviewViewController *)self _exposureTargetBiasMaximum];
  return fminf(fmaxf(v8, v6), v9);
}

- (void)_updateCaptureControllerExposureTargetBias
{
  [(CAMPreviewViewController *)self totalExposureBias];
  v4 = v3;
  _captureController = [(CAMPreviewViewController *)self _captureController];
  LODWORD(v5) = v4;
  [_captureController changeExposureTargetBias:v5];
}

- (void)_validateExposureTargetBiasFromExposureResult:(id)result
{
  [result exposureTargetBias];
  v4 = [(CAMPreviewViewController *)self _isExposureTargetBiasAtBaseline:?];
  [(CAMPreviewViewController *)self cachedExposureTargetBias];
  if (v4 && v5 != 0.0 && ![(CAMPreviewViewController *)self _isPanningExposureBias])
  {

    [(CAMPreviewViewController *)self setCachedExposureTargetBias:0.0];
  }
}

- (BOOL)_isFullyAutomaticFocus:(id)focus andExposure:(id)exposure
{
  focusCopy = focus;
  exposureCopy = exposure;
  v8 = exposureCopy;
  v9 = 1;
  if (!focusCopy || !exposureCopy)
  {
    goto LABEL_12;
  }

  if ([focusCopy deviceSupportsFocus])
  {
    if ([focusCopy focusMode] != 3)
    {
LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }

    [focusCopy pointOfInterest];
    v9 = 0;
    if (v11 != 0.5 || v10 != 0.5)
    {
      goto LABEL_12;
    }
  }

  if ([v8 exposureMode] != 2)
  {
    goto LABEL_11;
  }

  [v8 pointOfInterest];
  v9 = 0;
  if (v13 == 0.5 && v12 == 0.5)
  {
    [v8 exposureTargetBias];
    v9 = [(CAMPreviewViewController *)self _isExposureTargetBiasAtBaseline:?];
  }

LABEL_12:

  return v9;
}

- (double)captureControllerDelayBeforeResettingFocusAndExposureAfterCapture:(id)capture
{
  _mode = [(CAMPreviewViewController *)self _mode];
  result = 0.0;
  if (_mode <= 9 && ((1 << _mode) & 0x251) != 0)
  {
    [(CAMPreviewViewController *)self cachedExposureTargetBias];
    v7 = v6 == 0.0;
    result = 1.0;
    if (!v7)
    {
      return 1.5;
    }
  }

  return result;
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];
  }
}

- (void)_setPreviewAspectModeForCurrentWindowSize:(int64_t)size
{
  previewView = [(CAMPreviewViewController *)self previewView];
  videoPreviewView = [previewView videoPreviewView];
  if ([videoPreviewView previewViewWindowIsFullScreen])
  {
    [videoPreviewView setPreviewViewAspectMode:size];
  }

  else
  {
    [videoPreviewView setPreviewViewAspectModeWindowed:size];
  }
}

- (BOOL)_shouldDisableAspectRatioToggle
{
  selfCopy = self;
  _mode = [(CAMPreviewViewController *)self _mode];
  LOBYTE(selfCopy) = [(CAMPreviewViewController *)selfCopy _isChangingGraphConfiguration];
  v4 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(_mode) = [v4 isPreviewAspectRatioToggleSupportedForMode:_mode];

  return selfCopy & 1 | ((_mode & 1) == 0);
}

- (void)_handleAspectRatioToggleDoubleTap:(id)tap
{
  previewView = [(CAMPreviewViewController *)self previewView];
  videoPreviewView = [previewView videoPreviewView];
  previewViewWindowIsFullScreen = [videoPreviewView previewViewWindowIsFullScreen];
  if (previewViewWindowIsFullScreen)
  {
    previewViewAspectMode = [videoPreviewView previewViewAspectMode];
  }

  else
  {
    previewViewAspectMode = [videoPreviewView previewViewAspectModeWindowed];
  }

  v7 = 1;
  if (previewViewAspectMode)
  {
    v7 = previewViewAspectMode;
  }

  if (previewViewAspectMode == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [(CAMPreviewViewController *)self _setPreviewAspectModeForCurrentWindowSize:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained previewViewControllerDidChangeVideoFillAspectRatio:self];

  v10 = +[CAMUserPreferences preferences];
  [v10 setPreviewViewAspectMode:v8 forMode:-[CAMPreviewViewController _mode](self isFullScreen:{"_mode"), previewViewWindowIsFullScreen}];
}

- (void)_captureOrientationChanged:(id)changed
{
  v4 = +[CAMApplication appOrPlugInState]== 0;
  [(CAMPreviewViewController *)self _updateForOrientationAnimated:v4];

  [(CAMPreviewViewController *)self _updateExposureBiasSideAnimated:v4];
}

- (void)_updateExposureBiasSideAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  _exposureBiasSide = [(CAMPreviewViewController *)self _exposureBiasSide];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _focusIndicatorViewsWithExposureBiasSliders = [(CAMPreviewViewController *)self _focusIndicatorViewsWithExposureBiasSliders];
  v7 = [_focusIndicatorViewsWithExposureBiasSliders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(_focusIndicatorViewsWithExposureBiasSliders);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([(CAMPreviewViewController *)self _isShowingFocusIndicator:v11])
        {
          [(CAMPreviewViewController *)self _activateFocusIndicator:v11];
          [(CAMPreviewViewController *)self _deactivateFocusIndicator:v11 afterDelay:1.2];
        }

        [v11 setExposureBiasSide:_exposureBiasSide animated:animatedCopy];
      }

      v8 = [_focusIndicatorViewsWithExposureBiasSliders countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)focusOnNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView viewportFrame];
  v6 = v13.origin.x;
  v7 = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v10 = v13.origin.x + x * CGRectGetWidth(v13);
  v14.origin.x = v6;
  v14.origin.y = v7;
  v14.size.width = width;
  v14.size.height = height;
  [(CAMPreviewViewController *)self _handleFocusTapForPointInPreviewView:v10, v7 + y * CGRectGetHeight(v14)];
}

- (void)setShowingStandardControls:(BOOL)controls
{
  if (self->_showingStandardControls != controls)
  {
    self->_showingStandardControls = controls;
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)status
{
  if (self->_shallowDepthOfFieldStatus != status)
  {
    self->_shallowDepthOfFieldStatus = status;
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)setStagePreviewStatus:(int64_t)status
{
  if (self->_stagePreviewStatus != status)
  {
    self->_stagePreviewStatus = status;
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)status stagePreviewStatus:(int64_t)previewStatus
{
  if (self->_stagePreviewStatus != previewStatus || self->_shallowDepthOfFieldStatus != status)
  {
    self->_stagePreviewStatus = previewStatus;
    self->_shallowDepthOfFieldStatus = status;
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)_createPortraitModeCenteredIndicatorViewIfNecessary
{
  if (!self->__portraitModeCenteredIndicatorView)
  {
    v3 = objc_alloc(MEMORY[0x1E6993898]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    portraitModeCenteredIndicatorView = self->__portraitModeCenteredIndicatorView;
    self->__portraitModeCenteredIndicatorView = v4;

    [(CEKSubjectIndicatorView *)self->__portraitModeCenteredIndicatorView setHidden:1 animated:0];
    previewView = [(CAMPreviewViewController *)self previewView];
    [previewView setCenteredSubjectIndicatorView:self->__portraitModeCenteredIndicatorView];
  }
}

- (BOOL)_shouldShowStageLightOverlayViewForMode:(int64_t)mode device:(int64_t)device lightingType:(int64_t)type shallowDepthOfFieldStatus:(int64_t)status stagePreviewStatus:(int64_t)previewStatus
{
  if ((device - 1) > 0xA)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1A3A6A900[device - 1];
  }

  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = [v11 isLightingControlSupportedForMode:mode];

  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 isLivePreviewSupportedForLightingType:type devicePosition:v10];

  v16 = (type - 4) < 3 && previewStatus == 1;
  return v12 & (v16 | v14 ^ 1);
}

- (BOOL)_shouldSuppressNewPortraitModeTrackedSubjectIndicators
{
  isShowingPointIndicator = [(CAMPreviewViewController *)self isShowingPointIndicator];
  _isFocusAndExposureLockedByUserOrExternally = [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally];
  v5 = _isFocusAndExposureLockedByUserOrExternally | ![(CAMPreviewViewController *)self _shouldShowPortraitModeTrackedSubjectIndicatorsForLightingType:[(CAMPreviewViewController *)self lightingType]];
  if (isShowingPointIndicator)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6 & 1;
}

- (void)_updatePortraitModeViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(CAMPreviewViewController *)self _shouldShowStageLightOverlayViewForMode:[(CAMPreviewViewController *)self _mode] device:[(CAMPreviewViewController *)self _device] lightingType:[(CAMPreviewViewController *)self lightingType] shallowDepthOfFieldStatus:[(CAMPreviewViewController *)self shallowDepthOfFieldStatus] stagePreviewStatus:[(CAMPreviewViewController *)self stagePreviewStatus]];
  if (v5)
  {
    [(CAMPreviewViewController *)self _createStageLightOverlayViewIfNeededWillAnimate:animatedCopy];
    _shouldShowStageLightOverlayActive = [(CAMPreviewViewController *)self _shouldShowStageLightOverlayActive];
    _stageLightOverlayView = [(CAMPreviewViewController *)self _stageLightOverlayView];
    [_stageLightOverlayView setActive:_shouldShowStageLightOverlayActive animated:animatedCopy];

    _interfaceOrientation = [(CAMPreviewViewController *)self _interfaceOrientation];
    _stageLightOverlayView2 = [(CAMPreviewViewController *)self _stageLightOverlayView];
    [_stageLightOverlayView2 setOrientation:_interfaceOrientation animated:animatedCopy];
  }

  _stageLightOverlayView3 = [(CAMPreviewViewController *)self _stageLightOverlayView];
  [_stageLightOverlayView3 setVisible:v5 animated:animatedCopy];

  _shouldShowIndicatorsAsInactive = [(CAMPreviewViewController *)self _shouldShowIndicatorsAsInactive];
  _indicatorViewsByType = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v13 = [_indicatorViewsByType objectForKeyedSubscript:@"portraitSubject"];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __61__CAMPreviewViewController__updatePortraitModeViewsAnimated___block_invoke;
  v38[3] = &__block_descriptor_33_e33_v32__0__NSString_8__UIView_16_B24l;
  v39 = _shouldShowIndicatorsAsInactive;
  [v13 enumerateKeysAndObjectsUsingBlock:v38];
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  isInactive = [_pointIndicator isInactive];
  [_pointIndicator setInactive:_shouldShowIndicatorsAsInactive];
  if (isInactive && !_shouldShowIndicatorsAsInactive)
  {
    [_pointIndicator startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.3];
  }

  _shouldShowPortraitModeIndicatorViews = [(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews];
  isShowingPointIndicator = [(CAMPreviewViewController *)self isShowingPointIndicator];
  v18 = [v13 count];
  _device = [(CAMPreviewViewController *)self _device];
  if ((_device - 1) > 0xA)
  {
    v20 = 0;
  }

  else
  {
    v20 = qword_1A3A6A900[_device - 1];
  }

  v21 = +[CAMCaptureCapabilities capabilities];
  v22 = [v21 portraitModeRequiresSubjectForDevicePosition:v20];

  v23 = [(CAMPreviewViewController *)self lightingType]- 7;
  v24 = _shouldShowPortraitModeIndicatorViews & v22;
  if (v18)
  {
    v24 = 0;
  }

  if (v23 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24 & ~isShowingPointIndicator;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == 1)
  {
    _portraitModeCenteredIndicatorView = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];

    if (!_portraitModeCenteredIndicatorView)
    {
      [(CAMPreviewViewController *)self _createPortraitModeCenteredIndicatorViewIfNecessary];
      view = [(CAMPreviewViewController *)self view];
      [view layoutIfNeeded];
    }
  }

  _portraitModeCenteredIndicatorView2 = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];
  isInactive2 = [_portraitModeCenteredIndicatorView2 isInactive];
  [_portraitModeCenteredIndicatorView2 alpha];
  v31 = v30;
  [_portraitModeCenteredIndicatorView2 setInactive:{-[CAMPreviewViewController _isPortraitEffectActive](self, "_isPortraitEffectActive") ^ 1}];
  if (v25 && ([_portraitModeCenteredIndicatorView2 isInactive] & 1) != 0)
  {
    if (v31 == 0.0)
    {
      v32 = 0;
    }

    else
    {
      v32 = isInactive2;
    }

    isInactive3 = [_portraitModeCenteredIndicatorView2 isInactive];
    if ((v32 & 1) == 0)
    {
      LODWORD(v34) = 0.5;
      LODWORD(v35) = 0.5;
      LODWORD(v36) = 1.0;
      v37 = [MEMORY[0x1E69793D0] functionWithControlPoints:v34 :0.0 :v35 :v36];
      [_portraitModeCenteredIndicatorView2 startScalingWithExpansionWidth:-1 duration:v37 repeatCount:8.0 timingFunction:0.75];

      goto LABEL_27;
    }
  }

  else
  {
    isInactive3 = [_portraitModeCenteredIndicatorView2 isInactive];
  }

  if (((isInactive3 ^ 1) & isInactive2) == 1)
  {
    [_portraitModeCenteredIndicatorView2 stopScalingWithDuration:0.2];
  }

LABEL_27:
  [_portraitModeCenteredIndicatorView2 setHidden:v25 ^ 1u animated:animatedCopy];
}

void __61__CAMPreviewViewController__updatePortraitModeViewsAnimated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 isInactive];
  [v5 setInactive:*(a1 + 32)];
  if (v4 && (*(a1 + 32) & 1) == 0)
  {
    [v5 startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.3];
  }
}

- (CGRect)normalizedZoomPIPRect
{
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView normalizedZoomPIPRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setNormalizedZoomPIPRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView setNormalizedZoomPIPRect:{x, y, width, height}];
}

- (void)_hideFrontPIPVideoPreviewView
{
  _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
  frontRearSimultaneousVideoEnabled = [_graphConfiguration frontRearSimultaneousVideoEnabled];

  if (frontRearSimultaneousVideoEnabled)
  {
    previewView = [(CAMPreviewViewController *)self previewView];
    frontPIPVideoPreviewView = [previewView frontPIPVideoPreviewView];

    if (+[CAMApplication appOrPlugInState])
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__CAMPreviewViewController__hideFrontPIPVideoPreviewView__block_invoke;
    v9[3] = &unk_1E76F77B0;
    v10 = frontPIPVideoPreviewView;
    v8 = frontPIPVideoPreviewView;
    [CAMView animateIfNeededWithDuration:v9 animations:v7];
  }
}

- (void)_handleFrontPIPVideoPreviewViewPan:(id)pan
{
  panCopy = pan;
  HostTimeClock = CMClockGetHostTimeClock();
  memset(&v22, 0, sizeof(v22));
  CMClockGetTime(&v22, HostTimeClock);
  previewView = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView = [previewView frontPIPVideoPreviewView];

  if (frontPIPVideoPreviewView)
  {
    superview = [frontPIPVideoPreviewView superview];
    [panCopy translationInView:superview];
    v10 = v9;
    v12 = v11;

    state = [panCopy state];
    if ((state - 3) >= 3)
    {
      if ((state - 1) <= 1)
      {
        v21 = v22;
        [(CAMPreviewViewController *)self _handleFrontPIPVideoPreviewViewPanDidMoveWithTranslation:panCopy withGesture:frontPIPVideoPreviewView inView:&v21 timestamp:v10, v12];
      }
    }

    else
    {
      [frontPIPVideoPreviewView center];
      v15 = v14;
      v17 = v16;
      superview2 = [frontPIPVideoPreviewView superview];
      [panCopy velocityInView:superview2];
      v21 = v22;
      [(CAMPreviewViewController *)self _handleFrontPIPVideoPreviewViewPanDidEndAtPosition:frontPIPVideoPreviewView withVelocity:&v21 inView:v15 timestamp:v17, v19, v20];
    }
  }
}

- (void)_handleFrontPIPVideoPreviewViewPanDidMoveWithTranslation:(CGPoint)translation withGesture:(id)gesture inView:(id)view timestamp:(id *)timestamp
{
  y = translation.y;
  x = translation.x;
  viewCopy = view;
  gestureCopy = gesture;
  superview = [viewCopy superview];
  [gestureCopy setTranslation:superview inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  _frontPIPVideoPreviewCenterAnimatableProperty = [(CAMPreviewViewController *)self _frontPIPVideoPreviewCenterAnimatableProperty];
  if (_frontPIPVideoPreviewCenterAnimatableProperty && (v13 = _frontPIPVideoPreviewCenterAnimatableProperty, -[CAMPreviewViewController _frontPIPVideoPreviewCenterAnimatableProperty](self, "_frontPIPVideoPreviewCenterAnimatableProperty"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isInvalidated], v14, v13, (v15 & 1) == 0))
  {
    _frontPIPVideoPreviewCenterAnimatableProperty2 = [(CAMPreviewViewController *)self _frontPIPVideoPreviewCenterAnimatableProperty];
    _value = [_frontPIPVideoPreviewCenterAnimatableProperty2 _value];
    v17 = *_value;
    v19 = _value[1];
  }

  else
  {
    [viewCopy frame];
    UIRectGetCenter();
    v17 = v16;
    v19 = v18;
  }

  [(CAMPreviewViewController *)self _animateFrontPIPToCenter:5 animationUpdateMode:0 resetFocusAndExposure:x + v17, y + v19];
}

- (void)_handleFrontPIPVideoPreviewViewPanDidEndAtPosition:(CGPoint)position withVelocity:(CGPoint)velocity inView:(id)view timestamp:(id *)timestamp
{
  y = velocity.y;
  x = velocity.x;
  v8 = position.y;
  v9 = position.x;
  v50[4] = *MEMORY[0x1E69E9840];
  [CAMPIPVideoPreviewView futureThrowTime:view];
  v12 = v11;
  +[CAMPIPVideoPreviewView futureThrowTime];
  v14 = v13;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  previewView = [(CAMPreviewViewController *)self previewView];
  v16 = previewView;
  if (previewView)
  {
    [previewView viewportAnchorsForFrontPIP];
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
  }

  v49[0] = &unk_1F16C8648;
  v17 = [MEMORY[0x1E696B098] valueWithCGPoint:v44];
  v50[0] = v17;
  v49[1] = &unk_1F16C8660;
  v18 = [MEMORY[0x1E696B098] valueWithCGPoint:v45];
  v50[1] = v18;
  v49[2] = &unk_1F16C8678;
  v19 = [MEMORY[0x1E696B098] valueWithCGPoint:v46];
  v50[2] = v19;
  v49[3] = &unk_1F16C8690;
  v20 = [MEMORY[0x1E696B098] valueWithCGPoint:v47];
  v50[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    integerValue = 0;
    v26 = v9 + x * v12;
    v27 = v8 + y * v14;
    v28 = *v41;
    v29 = 1.79769313e308;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v31 = *(*(&v40 + 1) + 8 * i);
        v32 = [v22 objectForKeyedSubscript:{v31, v40}];
        [v32 CGPointValue];
        v34 = v33;
        v36 = v35;

        v37 = v34 - v26;
        v38 = v36 - v27;
        v39 = hypotf(v37, v38);
        if (v29 > v39)
        {
          integerValue = [v31 integerValue];
          v29 = v39;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v24);
  }

  else
  {
    integerValue = 0;
  }

  [(CAMPreviewViewController *)self _animateFrontPIPVideoPreviewToAnchor:integerValue];
}

- (void)_animateFrontPIPVideoPreviewToAnchor:(int64_t)anchor
{
  previewView = [(CAMPreviewViewController *)self previewView];
  [previewView setFrontPIPAnchor:anchor];

  previewView2 = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView = [previewView2 frontPIPVideoPreviewView];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  previewView3 = [(CAMPreviewViewController *)self previewView];
  [frontPIPVideoPreviewView frame];
  if (previewView3)
  {
    [previewView3 viewportAnchorsForFrontPIPOriginWithSize:{v9, v10}];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
  }

  v12 = *(&v20 + 1);
  v11 = *&v20;
  previewView4 = [(CAMPreviewViewController *)self previewView];
  frontPIPAnchor = [previewView4 frontPIPAnchor];

  switch(frontPIPAnchor)
  {
    case 3:
      v12 = *(&v23 + 1);
      v11 = *&v23;
      break;
    case 2:
      v12 = *(&v22 + 1);
      v11 = *&v22;
      break;
    case 1:
      v12 = *(&v21 + 1);
      v11 = *&v21;
      break;
  }

  [frontPIPVideoPreviewView frame];
  v16 = v15;
  v18 = v17;
  UIRectGetCenter();
  [(CAMPreviewViewController *)self _animateFrontPIPToCenter:3 animationUpdateMode:1 resetFocusAndExposure:?];
  delegate = [(CAMPreviewViewController *)self delegate];
  [delegate frontPIPWillAnimateToAnchor:anchor withFrame:{v11, v12, v16, v18}];
}

- (void)_animateFrontPIPToCenter:(CGPoint)center animationUpdateMode:(int64_t)mode resetFocusAndExposure:(BOOL)exposure
{
  exposureCopy = exposure;
  y = center.y;
  x = center.x;
  previewView = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView = [previewView frontPIPVideoPreviewView];

  [frontPIPVideoPreviewView center];
  v13 = v12;
  v15 = v14;
  _frontPIPVideoPreviewCenterAnimatableProperty = [(CAMPreviewViewController *)self _frontPIPVideoPreviewCenterAnimatableProperty];
  if (!_frontPIPVideoPreviewCenterAnimatableProperty || (v17 = _frontPIPVideoPreviewCenterAnimatableProperty, -[CAMPreviewViewController _frontPIPVideoPreviewCenterAnimatableProperty](self, "_frontPIPVideoPreviewCenterAnimatableProperty"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isInvalidated], v18, v17, v19))
  {
    objc_initWeak(&location, self);
    v20 = MEMORY[0x1E6993860];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke;
    v25[3] = &unk_1E76FDEE0;
    objc_copyWeak(&v28, &location);
    v26 = frontPIPVideoPreviewView;
    selfCopy = self;
    v21 = [v20 vector2DAnimatablePropertyWithInitialValue:v25 cancelableFrameCallback:{v13, v15}];
    [(CAMPreviewViewController *)self set_frontPIPVideoPreviewCenterAnimatableProperty:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  [(CAMPreviewViewController *)self set_frontPIPVideoPreviewCenterAnimationResetsFocusAndExposure:exposureCopy];
  v22 = MEMORY[0x1E69DD250];
  _frontPIPVideoPreviewAnimationSpringSettings = [(CAMPreviewViewController *)self _frontPIPVideoPreviewAnimationSpringSettings];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke_2;
  v24[3] = &unk_1E76FA580;
  v24[4] = self;
  *&v24[5] = x;
  *&v24[6] = y;
  [v22 cek_animateWithSettings:_frontPIPVideoPreviewAnimationSpringSettings mode:mode animations:v24 completion:0];
}

uint64_t __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  HostTimeClock = CMClockGetHostTimeClock();
  memset(&v22, 0, sizeof(v22));
  CMClockGetTime(&v22, HostTimeClock);
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  v6 = [v3 _presentationValue];
  [a1[4] setCenter:{*v6, v6[1]}];
  [a1[4] frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [a1[5] _frontPIPVideoPreviewRenderedCornerRadius];
  v16 = v15;
  v17 = [a1[5] delegate];
  [v17 frontPIPFrameDidChange:{v8, v10, v12, v14}];

  v21 = v22;
  [WeakRetained _updateCaptureControllerWithFrontPIPFrameRelativeToViewport:&v21 cornerRadius:v8 timestamp:{v10, v12, v14, v16}];
  [v3 _value];
  LODWORD(v17) = BSPointEqualToPoint();
  [v3 _velocity];
  v18 = v17 & BSPointEqualToPoint();
  v19 = [WeakRetained _frontPIPVideoPreviewCenterAnimationResetsFocusAndExposure];
  if (v18 == 1 && v19)
  {
    [WeakRetained _resetFocusAndExposureIfFrontPIPObscuresIndicator];
    [WeakRetained set_frontPIPVideoPreviewCenterAnimationResetsFocusAndExposure:0];
LABEL_5:
    v18 = 1;
  }

  return v18;
}

void __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _frontPIPVideoPreviewCenterAnimatableProperty];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke_3;
  v3[3] = &__block_descriptor_48_e9_v16__0_d8l;
  v4 = *(a1 + 40);
  [v2 _mutateValue:v3];
}

double __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (void)_updateCaptureControllerWithFrontPIPFrameRelativeToViewport:(CGRect)viewport cornerRadius:(double)radius timestamp:(id *)timestamp
{
  v8 = [(CAMPreviewViewController *)self previewView:viewport.origin.x];
  [v8 viewportFrame];
  v10 = v9;

  _graphConfiguration = [(CAMPreviewViewController *)self _graphConfiguration];
  videoConfiguration = [_graphConfiguration videoConfiguration];
  _graphConfiguration2 = [(CAMPreviewViewController *)self _graphConfiguration];
  videoStabilizationStrength = [_graphConfiguration2 videoStabilizationStrength];
  v15 = MEMORY[0x1E695F060];
  if (videoConfiguration <= 0xE)
  {
    if (((1 << videoConfiguration) & 0x7620) != 0)
    {
      if (videoStabilizationStrength < 2)
      {

        v16 = 3840.0;
        v17 = 2160.0;
        v18 = 4;
        goto LABEL_12;
      }

      if (videoStabilizationStrength - 2 < 2)
      {

        v16 = 2816.0;
        v17 = 1584.0;
        v18 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (((1 << videoConfiguration) & 0x992) != 0)
      {

        v16 = 1920.0;
        v17 = 1080.0;
        v18 = 2;
        goto LABEL_12;
      }

      if (((1 << videoConfiguration) & 0x4C) != 0)
      {

        v16 = 1280.0;
        v17 = 720.0;
        v18 = 1;
        goto LABEL_12;
      }
    }
  }

  v18 = 0;
  v16 = *v15;
  v17 = v15[1];
LABEL_12:
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    [CAMPIPVideoPreviewView sizeForViewportSize:v17, v16];
    BSRectRoundForScale();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    previewView = [(CAMPreviewViewController *)self previewView];
    frontPIPVideoPreviewView = [previewView frontPIPVideoPreviewView];
    layer = [frontPIPVideoPreviewView layer];
    [layer borderWidth];
    v31 = v17 / v10 * (v30 * 0.75);

    previewView2 = [(CAMPreviewViewController *)self previewView];
    frontPIPVideoPreviewView2 = [previewView2 frontPIPVideoPreviewView];
    layer2 = [frontPIPVideoPreviewView2 layer];
    borderColor = [layer2 borderColor];

    v36 = [CAMMultiCamPIPMetrics alloc];
    v38 = *&timestamp->var0;
    var3 = timestamp->var3;
    v37 = [(CAMMultiCamPIPMetrics *)v36 initWithTimestamp:&v38 frame:borderColor cornerRadius:v18 borderWidth:v20 borderColor:v22 videoResolution:v24, v26, radius, v31];
    [(CUCaptureController *)self->__captureController setMultiCamPictureInPictureMetrics:v37];
  }
}

- (void)_resetFocusAndExposureIfFrontPIPObscuresIndicator
{
  _isFocusAndExposureLockedByUserOrExternally = [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally];
  previewView = [(CAMPreviewViewController *)self previewView];
  indicatorContainerView = [previewView indicatorContainerView];
  _pointIndicator = [(CAMPreviewViewController *)self _pointIndicator];
  [_pointIndicator frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  previewView2 = [(CAMPreviewViewController *)self previewView];
  [indicatorContainerView convertRect:previewView2 toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  previewView3 = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewView = [previewView3 frontPIPVideoPreviewView];
  [frontPIPVideoPreviewView frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v37.origin.x = v27;
  v37.origin.y = v29;
  v37.size.width = v31;
  v37.size.height = v33;
  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  v34 = CGRectIntersectsRect(v37, v38);
  if (!_isFocusAndExposureLockedByUserOrExternally && v34)
  {
    _captureController = [(CAMPreviewViewController *)self _captureController];
    [_captureController resetFocusAndExposure];
  }
}

- (void)_previewDidStartRunning:(id)running
{
  object = [running object];
  previewView = [(CAMPreviewViewController *)self previewView];
  frontPIPVideoPreviewLayer = [previewView frontPIPVideoPreviewLayer];

  if (object == frontPIPVideoPreviewLayer)
  {
    previewView2 = [(CAMPreviewViewController *)self previewView];
    frontPIPVideoPreviewView = [previewView2 frontPIPVideoPreviewView];

    delegate = [(CAMPreviewViewController *)self delegate];
    previewView3 = [(CAMPreviewViewController *)self previewView];
    frontPIPAnchor = [previewView3 frontPIPAnchor];
    [frontPIPVideoPreviewView frame];
    [delegate frontPIPWillAnimateToAnchor:frontPIPAnchor withFrame:?];

    delegate2 = [(CAMPreviewViewController *)self delegate];
    [frontPIPVideoPreviewView frame];
    [delegate2 frontPIPFrameDidChange:?];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__CAMPreviewViewController__previewDidStartRunning___block_invoke;
    v13[3] = &unk_1E76F77B0;
    v13[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.25];
  }
}

void __52__CAMPreviewViewController__previewDidStartRunning___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewView];
  v1 = [v2 frontPIPVideoPreviewView];
  [v1 setAlpha:1.0];
}

- (CAMPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end