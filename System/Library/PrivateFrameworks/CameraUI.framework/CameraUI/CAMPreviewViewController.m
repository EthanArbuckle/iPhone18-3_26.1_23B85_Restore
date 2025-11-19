@interface CAMPreviewViewController
- ($A7BD2C69B781C0BFC9847BBC3FF98882)_geometryAnimationParametersForViewType:(SEL)a3;
- (BOOL)_allowUserToChangeFocusAndExposure;
- (BOOL)_canModifyExposureBias;
- (BOOL)_dockKitModeIndicatorViewsContainPoint:(CGPoint)a3;
- (BOOL)_focusOnPoint:(CGPoint)a3 shouldShowFocusAndExposureIndicator:(BOOL)a4;
- (BOOL)_isFocusAndExposureLockedByUserOrExternally;
- (BOOL)_isFullyAutomaticFocus:(id)a3 andExposure:(id)a4;
- (BOOL)_isLongPressingToLock;
- (BOOL)_isPanningExposureBias;
- (BOOL)_isPointOnVisibleFocusIndicator:(CGPoint)a3;
- (BOOL)_isShowingContinuousIndicator;
- (BOOL)_isShowingIndicatorsOfType:(id)a3;
- (BOOL)_mrcIndicatorButtonContainsTouch:(id)a3;
- (BOOL)_setCinematicFocusForMetadataObject:(id)a3 atPoint:(CGPoint)a4 useFixedOpticalFocus:(BOOL)a5 useHardFocus:(BOOL)a6;
- (BOOL)_shouldAllowFaceIndicators;
- (BOOL)_shouldAllowTextRegionIndicators;
- (BOOL)_shouldDisableAspectRatioToggle;
- (BOOL)_shouldResetFocusAndExposureForSubjectAreaDidChange;
- (BOOL)_shouldShowContinuousIndicator;
- (BOOL)_shouldShowPortraitModeIndicatorViews;
- (BOOL)_shouldShowStageLightOverlayViewForMode:(int64_t)a3 device:(int64_t)a4 lightingType:(int64_t)a5 shallowDepthOfFieldStatus:(int64_t)a6 stagePreviewStatus:(int64_t)a7;
- (BOOL)_shouldSuppressNewFaces;
- (BOOL)_shouldSuppressNewPortraitModeTrackedSubjectIndicators;
- (BOOL)_shouldUpdateIndicatorSizeFrom:(CGSize)a3 to:(CGSize)a4 minimumAreaChangeThreshold:(double)a5 minimumAreaFractionChangeThreshold:(double)a6;
- (BOOL)_showExposureBiasSliderForPointView;
- (BOOL)captureController:(id)a3 shouldResetFocusAndExposureForReason:(int64_t)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isFocusLockedByUser;
- (BOOL)isFocusLockedOnCinematicSubject;
- (BOOL)isFocusLockedOnDockKitSubject;
- (BOOL)isShowingPointIndicator;
- (CAMPreviewViewController)initWithCaptureController:(id)a3 motionController:(id)a4 timelapseController:(id)a5;
- (CAMPreviewViewController)initWithCoder:(id)a3;
- (CAMPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CAMPreviewViewControllerDelegate)delegate;
- (CAMTimelapseController)_timelapseController;
- (CGPoint)pointOfInterestInNormalizedCaptureDeviceSpace;
- (CGRect)normalizedZoomPIPRect;
- (UIPanGestureRecognizer)activeExposureBiasPanGestureRecognizer;
- (double)_effectiveExposureBiasMovementForTranslation:(CGPoint)a3;
- (double)_exposureBiasForVirtualSliderPosition:(double)a3;
- (double)_virtualSliderPositionForExposureBias:(double)a3;
- (double)captureControllerDelayBeforeResettingFocusAndExposureAfterCapture:(id)a3;
- (float)_exposureTargetBiasMaximum;
- (float)_exposureTargetBiasMinimum;
- (float)baselineExposureValueForCaptureController:(id)a3;
- (float)totalExposureBias;
- (id)_cinematicModeIndicatorViewAtPoint:(CGPoint)a3;
- (id)_focusIndicatorViewsWithExposureBiasSliders;
- (id)_groupIDForMetadataObject:(id)a3;
- (id)_subjectGroupResultsFromMetadataObjects:(id)a3;
- (int)_exposureBiasSide;
- (int64_t)_device;
- (int64_t)_devicePosition;
- (int64_t)_interfaceOrientation;
- (int64_t)_mode;
- (int64_t)_styleForPointIndicatorWithRectSize:(int64_t)a3;
- (void)_activateFocusIndicator:(id)a3;
- (void)_addIndicatorView:(id)a3 forType:(id)a4 identifier:(id)a5 underlyingMetadataObject:(id)a6;
- (void)_animateFrontPIPToCenter:(CGPoint)a3 animationUpdateMode:(int64_t)a4 resetFocusAndExposure:(BOOL)a5;
- (void)_animateFrontPIPVideoPreviewToAnchor:(int64_t)a3;
- (void)_animateIfNeededWithParameters:(id *)a3 animations:(id)a4 completion:(id)a5;
- (void)_animateView:(id)a3 type:(id)a4 withCenter:(CGPoint)a5 bounds:(CGRect)a6 transform:(CGAffineTransform *)a7;
- (void)_applicationDidEnterBackground;
- (void)_cancelDelayedActions;
- (void)_cancelDelayedFadeOutOfViewType:(id)a3;
- (void)_cancelDelayedFocusAndExposureLock;
- (void)_cancelDelayedHideOrDeactivateForFocusIndicator:(id)a3;
- (void)_captureOrientationChanged:(id)a3;
- (void)_createAspectRatioToggleDoubleTapGestureRecognizerIfNecessary;
- (void)_createCommonGestureRecognizersIfNecessary;
- (void)_createContinuousIndicatorIfNecessary;
- (void)_createExposureBiasPanGestureRecognizerIfNecessary;
- (void)_createExternalFocusLockIndicatorIfNecessary;
- (void)_createFrontPIPVideoPreviewViewPanGestureRecognizerIfNecessary;
- (void)_createLongPressToLockGestureRecognizersIfNecessary;
- (void)_createPointIndicatorIfNecessary;
- (void)_createPortraitModeCenteredIndicatorViewIfNecessary;
- (void)_createStageLightOverlayViewIfNeededWillAnimate:(BOOL)a3;
- (void)_createTapToFocusAndExposeGestureRecognizerIfNecessary;
- (void)_deactivateFocusIndicator:(id)a3;
- (void)_deactivateFocusIndicator:(id)a3 afterDelay:(double)a4;
- (void)_didChangeGraphConfigurationAnimated:(BOOL)a3;
- (void)_fadeInView:(id)a3 withDuration:(double)a4;
- (void)_fadeOutAndRemoveIndicatorView:(id)a3 forType:(id)a4 identifier:(id)a5 withDuration:(double)a6;
- (void)_fadeOutAndRemoveIndicatorViewsOfType:(id)a3 withDuration:(double)a4;
- (void)_fadeOutIndicatorsOfViewType:(id)a3 afterDelay:(double)a4;
- (void)_fadeOutView:(id)a3 withDuration:(double)a4 completion:(id)a5;
- (void)_finishFocusingLockedPointOfInterestIndicator;
- (void)_handleAspectRatioToggleDoubleTap:(id)a3;
- (void)_handleExposureBiasPan:(id)a3;
- (void)_handleFocusTapForPointInPreviewView:(CGPoint)a3;
- (void)_handleFrontPIPVideoPreviewViewPan:(id)a3;
- (void)_handleFrontPIPVideoPreviewViewPanDidEndAtPosition:(CGPoint)a3 withVelocity:(CGPoint)a4 inView:(id)a5 timestamp:(id *)a6;
- (void)_handleFrontPIPVideoPreviewViewPanDidMoveWithTranslation:(CGPoint)a3 withGesture:(id)a4 inView:(id)a5 timestamp:(id *)a6;
- (void)_handleLongPressToLock:(id)a3;
- (void)_handleSignificantMRCIndicatorButtonTapped:(id)a3;
- (void)_handleTapToFocusAndExpose:(id)a3;
- (void)_hideAllCinematicIndicatorsAnimated:(BOOL)a3;
- (void)_hideAllFocusIndicatorsAnimated:(BOOL)a3;
- (void)_hideAllFocusIndicatorsExceptForIndicator:(id)a3;
- (void)_hideFocusIndicator:(id)a3 afterDelay:(double)a4;
- (void)_hideFocusIndicator:(id)a3 animated:(BOOL)a4;
- (void)_hideFrontPIPVideoPreviewView;
- (void)_hideIndicatorsOfViewType:(id)a3 animated:(BOOL)a4;
- (void)_initializeExposureBiasParametersForFocusIndicatorView:(id)a3;
- (void)_initializeExposureBiasSliderParameters;
- (void)_lockFocusAndExposure;
- (void)_lockFocusAndExposureAfterDelay:(double)a3;
- (void)_previewDidStartRunning:(id)a3;
- (void)_removeIndicatorViewForType:(id)a3 identifier:(id)a4;
- (void)_resetCachedTimes;
- (void)_resetFaceTracking;
- (void)_resetFocusAndExposureIfFrontPIPObscuresIndicator;
- (void)_scaleDownLockedPointOfInterest;
- (void)_scalePortraitModeFocusIndicators;
- (void)_setCinematicIsFixedFocusLocked:(BOOL)a3 shouldAnimate:(BOOL)a4;
- (void)_setCinematicSubjectIsTrackingLocked:(BOOL)a3 shouldAnimate:(BOOL)a4;
- (void)_setDockKitFocusAtPoint:(CGPoint)a3;
- (void)_setDockKitSubjectIsTrackingLocked:(BOOL)a3 shouldAnimate:(BOOL)a4;
- (void)_setFocusIndicatorsPulsing:(BOOL)a3;
- (void)_setLastExposureResult:(id)a3;
- (void)_setLastFocusResult:(id)a3;
- (void)_setPreviewAspectModeForCurrentWindowSize:(int64_t)a3;
- (void)_setUserLockedFocusAndExposure:(BOOL)a3 shouldAnimate:(BOOL)a4;
- (void)_showIndicatorAtPointOfInterest:(CGPoint)a3 rectSize:(int64_t)a4 animateInPlace:(BOOL)a5;
- (void)_showLockedAtPointOfInterest:(CGPoint)a3;
- (void)_showUIForResetFocusAndExposure;
- (void)_subjectGroupResultsFromMetadataObjects:(id)a3 nonFixedFocusResults:(id *)a4 fixedFocusResults:(id *)a5;
- (void)_updateCaptureControllerExposureTargetBias;
- (void)_updateCaptureControllerWithFrontPIPFrameRelativeToViewport:(CGRect)a3 cornerRadius:(double)a4 timestamp:(id *)a5;
- (void)_updateCinematicModeViewsForResults:(id)a3;
- (void)_updateCinematicModeViewsForTrackingChange;
- (void)_updateDockKitModeViewsForResults:(id)a3;
- (void)_updateDockKitModeViewsForTrackingChange;
- (void)_updateExposureBiasPanGestureRecognizerForOrientation;
- (void)_updateExposureBiasSideAnimated:(BOOL)a3;
- (void)_updateExposureBiasViews;
- (void)_updateExposureBiasViews:(id)a3;
- (void)_updateFaceIndicatorsForResults:(id)a3;
- (void)_updateForOrientationAnimated:(BOOL)a3;
- (void)_updateIndicatorsForMetadataObjectResults:(id)a3 allowNewAndReappearingIndicators:(BOOL)a4 viewType:(id)a5 viewClass:(Class)a6 geometryCallback:(id)a7 minimumAreaChangeThreshold:(double)a8 minimumAreaFractionChangeThreshold:(double)a9 viewInitializerCallback:(id)a10;
- (void)_updateMRCIndicatorsAnimated:(BOOL)a3;
- (void)_updateMRCIndicatorsIfNecessaryAnimated:(BOOL)a3;
- (void)_updatePhotoModeIndicatorsStyle;
- (void)_updatePortraitModeViewsAnimated:(BOOL)a3;
- (void)_updatePortraitModeViewsForResults:(id)a3;
- (void)_updatePreviewIndicatorClippingStyleForGraphConfiguration:(id)a3;
- (void)_updatePreviewViewAspectMode;
- (void)_updateTextRegionIndicators;
- (void)_updateTextRegionIndicatorsIfNecessary;
- (void)_updateUIForCenteredContrastBasedFocusDidEnd;
- (void)_validateExposureTargetBiasFromExposureResult:(id)a3;
- (void)_validateInternalProperties;
- (void)_validateLastExposureBiasModificationTime;
- (void)_willChangeGraphConfiguration;
- (void)captureController:(id)a3 didOutputExposureResult:(id)a4;
- (void)captureController:(id)a3 didOutputFaceResults:(id)a4 headResults:(id)a5 bodyResults:(id)a6 salientObjectResults:(id)a7;
- (void)captureController:(id)a3 didOutputFocusResult:(id)a4;
- (void)captureController:(id)a3 willResetFocus:(BOOL)a4 exposure:(BOOL)a5;
- (void)dealloc;
- (void)didChangeToGraphConfiguration:(id)a3 animated:(BOOL)a4;
- (void)focusOnNormalizedPoint:(CGPoint)a3;
- (void)loadView;
- (void)notifyCaptureSessionDidStopRunning;
- (void)notifyDidStopCapture;
- (void)notifyWillStartCapturing;
- (void)setBaselineExposureBias:(float)a3;
- (void)setCachedExposureTargetBias:(float)a3;
- (void)setCachedMRCResults:(id)a3;
- (void)setCachedSignificantMRCResult:(id)a3;
- (void)setCachedSignificantTextRegionResult:(id)a3;
- (void)setCachedTextRegionResults:(id)a3;
- (void)setFocusAndExposureExternallyLocked:(BOOL)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setLightingType:(int64_t)a3 animated:(BOOL)a4;
- (void)setNormalizedZoomPIPRect:(CGRect)a3;
- (void)setShallowDepthOfFieldStatus:(int64_t)a3;
- (void)setShallowDepthOfFieldStatus:(int64_t)a3 stagePreviewStatus:(int64_t)a4;
- (void)setShouldUsePortraitStyleIndicatorsInPhotoMode:(BOOL)a3;
- (void)setShowingStandardControls:(BOOL)a3;
- (void)setStagePreviewStatus:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willChangeToGraphConfiguration:(id)a3;
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
    v8 = [(CAMPreviewView *)v9 indicatorContainerView];
    [v8 setHidden:1];
  }

  [(CAMPreviewViewController *)self setView:v9];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v5 viewDidLoad];
  v3 = [(CAMPreviewViewController *)self _interfaceOrientation];
  v4 = [(CAMPreviewViewController *)self previewView];
  [v4 setOrientation:v3];
}

- (void)_createCommonGestureRecognizersIfNecessary
{
  [(CAMPreviewViewController *)self _createTapToFocusAndExposeGestureRecognizerIfNecessary];
  [(CAMPreviewViewController *)self _createLongPressToLockGestureRecognizersIfNecessary];
  [(CAMPreviewViewController *)self _createExposureBiasPanGestureRecognizerIfNecessary];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = CAMIsTallScreen(v3);

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
    v5 = [(CAMPreviewViewController *)self view];
    [v5 addGestureRecognizer:self->__tapToFocusAndExposeGestureRecognizer];
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
    v5 = [(CAMPreviewViewController *)self view];
    [v5 addGestureRecognizer:self->__longPressToLockGestureRecognizer];
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
    v5 = [(CAMPreviewViewController *)self view];
    [v5 addGestureRecognizer:self->__exposureBiasPanGestureRecognizer];

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
  v2 = [(CAMPreviewViewController *)self _motionController];
  v3 = [v2 captureOrientation];

  return v3;
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
  v2 = [(CAMPreviewViewController *)self _graphConfiguration];
  v3 = [v2 mode];

  return v3;
}

- (int64_t)_device
{
  v2 = [(CAMPreviewViewController *)self _graphConfiguration];
  v3 = [v2 device];

  return v3;
}

- (BOOL)_shouldShowPortraitModeIndicatorViews
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isDockAccessoryConnectedAndTracking];

  if (v4)
  {
    return 0;
  }

  v6 = [(CAMPreviewViewController *)self _mode]== 6;
  return v6 & ![(CAMPreviewViewController *)self _isChangingGraphConfiguration];
}

- (void)_updatePreviewViewAspectMode
{
  v9 = +[CAMCaptureCapabilities capabilities];
  v3 = [(CAMPreviewViewController *)self _mode];
  v4 = [(CAMPreviewViewController *)self previewView];
  v5 = [v4 videoPreviewView];
  v6 = [v5 previewViewWindowIsFullScreen];
  if (([v9 isPreviewAspectRatioToggleSupportedForMode:v3] & 1) != 0 || !v6)
  {
    v8 = +[CAMUserPreferences preferences];
    v7 = [v8 previewViewAspectModeForMode:v3 isFullScreen:v6];
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
  v3 = [(CAMPreviewViewController *)self _lastExposureResult];
  [(CAMPreviewViewController *)self _validateExposureTargetBiasFromExposureResult:v3];

  [(CAMPreviewViewController *)self _validateLastExposureBiasModificationTime];

  [(CAMPreviewViewController *)self _validateUserLockedFocusAndExposure];
}

- (void)_validateLastExposureBiasModificationTime
{
  v3 = [(CAMPreviewViewController *)self _lastExposureBiasModificationTime];
  if (v3)
  {
    v4 = v3;
    v5 = [(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure];

    if (v5)
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
    v3 = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsExceptForIndicator:v3];
    v4 = [(CAMPreviewViewController *)self _shouldShowContinuousIndicator];
    if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
    {
      [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
    }

    else if (v4)
    {
      v5 = [(CAMPreviewViewController *)self _isShowingContinuousIndicator];
      if (!v3)
      {
        [(CAMPreviewViewController *)self _createContinuousIndicatorIfNecessary];
        v3 = [(CAMPreviewViewController *)self _continuousIndicator];
      }

      [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v3];
      if (!v5)
      {
        v6 = [MEMORY[0x1E695DF00] date];
        [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:v6];

        [v3 startScalingWithExpansionWidth:1 duration:31.0 repeatCount:0.3];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __59__CAMPreviewViewController__showUIForResetFocusAndExposure__block_invoke;
      aBlock[3] = &unk_1E76F77B0;
      v3 = v3;
      v9 = v3;
      v7 = _Block_copy(aBlock);
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v7 options:0 animations:0.25 completion:0.0];
    }
  }
}

- (BOOL)_shouldShowContinuousIndicator
{
  v3 = [(CAMPreviewViewController *)self _mode];
  LOBYTE(v4) = 1;
  if (v3 <= 8)
  {
    if (((1 << v3) & 0x187) != 0)
    {
      v5 = [(CAMPreviewViewController *)self _captureController];
      v4 = [v5 isCapturingVideo] ^ 1;
    }

    else
    {
      LOBYTE(v4) = v3 != 3;
    }
  }

  v6 = [(CAMPreviewViewController *)self _device];
  if ((v6 - 1) <= 0xA)
  {
    v7 = ((0x781u >> (v6 - 1)) ^ 1) & v4;
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
    v5 = [(CAMPreviewViewController *)self previewView];
    [v5 setContinuousIndicator:self->__continuousIndicator];
  }
}

- (void)_updateUIForCenteredContrastBasedFocusDidEnd
{
  if (![(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
  {
    v7 = [(CAMPreviewViewController *)self _lastFocusIndictorStartTime];
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:v7];
    v5 = v4;

    v6 = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:v6 afterDelay:0.8 - v5];
  }
}

- (UIPanGestureRecognizer)activeExposureBiasPanGestureRecognizer
{
  if ([(CAMPreviewViewController *)self _canModifyExposureBias])
  {
    v3 = [(CAMPreviewViewController *)self _exposureBiasPanGestureRecognizer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canModifyExposureBias
{
  if ([(CAMPreviewViewController *)self _shouldDisableFocusUI])
  {
    goto LABEL_2;
  }

  v3 = [(CAMPreviewViewController *)self isShowingStandardControls];
  if (!v3)
  {
    return v3;
  }

  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 isTapAndBiasSupportedForMode:{-[CAMPreviewViewController _mode](self, "_mode")}];

  if (!v5 || [(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure])
  {
LABEL_2:
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(CAMPreviewViewController *)self isShowingPointIndicator];
    if (v3)
    {
      LOBYTE(v3) = ![(CUCaptureController *)self->__captureController isCapturingTimelapse];
    }
  }

  return v3;
}

- (void)notifyWillStartCapturing
{
  v3 = [(CAMPreviewViewController *)self _mode];
  if (v3 <= 9)
  {
    if (((1 << v3) & 0x251) != 0)
    {
      v4 = [(CAMPreviewViewController *)self _continuousIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:v4 animated:0];

      [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:0];
    }

    else if (v3 == 3)
    {

      [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];
    }
  }
}

- (void)notifyDidStopCapture
{
  v3 = [(CAMPreviewViewController *)self _mode];
  if (v3 <= 8 && ((1 << v3) & 0x187) != 0)
  {
    v6 = [(CAMPreviewViewController *)self _captureController];
    v4 = [v6 isCapturingVideo];
    v5 = [v6 isCapturingBurst];
    if ((v4 & 1) == 0 && (v5 & 1) == 0)
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

- (CAMPreviewViewController)initWithCaptureController:(id)a3 motionController:(id)a4 timelapseController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = CAMPreviewViewController;
  v12 = [(CAMPreviewViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    [(CAMPreviewViewController *)v12 _initializeExposureBiasSliderParameters];
    v13->_showingStandardControls = 1;
    objc_storeStrong(&v13->__captureController, a3);
    objc_storeStrong(&v13->__motionController, a4);
    objc_storeWeak(&v13->__timelapseController, v11);
    [(CUCaptureController *)v13->__captureController setFocusDelegate:v13];
    [(CUCaptureController *)v13->__captureController setExposureDelegate:v13];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v13 selector:sel__captureOrientationChanged_ name:@"CAMMotionControllerCaptureOrientationChangedNotification" object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v13 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v13 selector:sel__previewDidStartRunning_ name:*MEMORY[0x1E6986B70] object:0];

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

- (CAMPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(CAMPreviewViewController *)self doesNotRecognizeSelector:a2, a4];

  return [(CAMPreviewViewController *)self initWithCaptureController:0 motionController:0 timelapseController:0];
}

- (CAMPreviewViewController)initWithCoder:(id)a3
{
  [(CAMPreviewViewController *)self doesNotRecognizeSelector:a2];

  return [(CAMPreviewViewController *)self initWithCaptureController:0 motionController:0 timelapseController:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CUCaptureController *)self->__captureController setFocusDelegate:0];
  [(CUCaptureController *)self->__captureController setExposureDelegate:0];
  [(CAMFocusIndicatorView *)self->__continuousIndicator setDelegate:0];
  [(CAMFocusIndicatorView *)self->__pointIndicator setDelegate:0];
  v4.receiver = self;
  v4.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v4 viewDidAppear:a3];
  [(CAMPreviewViewController *)self _createCommonGestureRecognizersIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v4 viewWillDisappear:a3];
  [(CAMPreviewViewController *)self _cancelDelayedActions];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CAMPreviewViewController;
  [(CAMPreviewViewController *)&v40 viewDidLayoutSubviews];
  v3 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  [CAMChromeViewSpec topBarItemCornerRadiusForContentSize:v4];
  v6 = v5;
  v7 = [(CAMPreviewViewController *)self chromeConfigurator];

  if (v7)
  {
    v8 = [(CAMPreviewViewController *)self previewView];
    v9 = [(CAMPreviewViewController *)self chromeConfigurator];
    [v9 collapsedTopBarFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(CAMPreviewViewController *)self previewView];
    v19 = [v18 superview];
    [v8 convertRect:v19 toView:{v11, v13, v15, v17}];
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(CAMPreviewViewController *)self previewView];
    v27 = [v26 frontPIPVideoPreviewView];
    [v27 frame];
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

  v35 = [(CAMPreviewViewController *)self previewView];
  v36 = [v35 frontPIPVideoPreviewView];
  v37 = [v36 layer];
  [v37 setCornerRadius:v6];
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
    v5 = [(CAMPreviewViewController *)self previewView];
    [v5 setPointIndicator:self->__pointIndicator];
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
    v6 = [(CAMPreviewViewController *)self previewView];
    [v6 setExternalFocusLockIndicator:v5];
  }
}

- (void)_createStageLightOverlayViewIfNeededWillAnimate:(BOOL)a3
{
  if (!self->__stageLightOverlayView)
  {
    v3 = a3;
    v5 = objc_alloc_init(CAMStageLightOverlayView);
    stageLightOverlayView = self->__stageLightOverlayView;
    self->__stageLightOverlayView = v5;

    [(CAMStageLightOverlayView *)self->__stageLightOverlayView setVisible:0];
    v7 = self->__stageLightOverlayView;
    v8 = [(CAMPreviewViewController *)self previewView];
    [v8 setStageLightOverlayView:v7];

    if (v3)
    {
      v9 = [(CAMPreviewViewController *)self previewView];
      [v9 layoutIfNeeded];
    }
  }
}

- (int64_t)_devicePosition
{
  v2 = [(CAMPreviewViewController *)self _graphConfiguration];
  v3 = [v2 devicePosition];

  return v3;
}

- (void)willChangeToGraphConfiguration:(id)a3
{
  [(CAMPreviewViewController *)self _setGraphConfiguration:a3];

  [(CAMPreviewViewController *)self _willChangeGraphConfiguration];
}

- (void)didChangeToGraphConfiguration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CAMPreviewViewController *)self _setGraphConfiguration:v6];
  [(CAMPreviewViewController *)self _didChangeGraphConfigurationAnimated:v4];
  v7 = [v6 mode] == 4;
  v8 = [(CAMPreviewViewController *)self previewView];
  v9 = [v8 videoPreviewView];

  [v9 setSquare:v7 animated:v4];
  [(CAMPreviewViewController *)self _updatePreviewViewAspectMode];
  [(CAMPreviewViewController *)self _updatePreviewIndicatorClippingStyleForGraphConfiguration:v6];
  v10 = [v6 videoConfiguration];
  v11 = [v6 videoStabilizationStrength];
  if (v10 <= 0xE)
  {
    if (((1 << v10) & 0x7620) != 0)
    {
      if (v11 < 4)
      {
        v12 = dbl_1A3A6A8D0[v11];
        goto LABEL_10;
      }
    }

    else
    {
      if (((1 << v10) & 0x992) != 0)
      {
        v12 = 1080.0;
        goto LABEL_10;
      }

      if (((1 << v10) & 0x4C) != 0)
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
  v13 = [v6 frontRearSimultaneousVideoEnabled];
  v14 = [(CAMPreviewViewController *)self previewView];
  v15 = [v14 frontPIPVideoPreviewView];

  [v15 setHidden:v13 ^ 1u];
  v16 = +[CAMCaptureCapabilities capabilities];
  v17 = [v16 isFrontRearSimultaneousVideoDeferredFrontCameraEnabled];

  if (!v17)
  {
    v20 = [(CAMPreviewViewController *)self delegate];
    v21 = [(CAMPreviewViewController *)self previewView];
    v22 = [v21 frontPIPAnchor];
    [v15 frame];
    [v20 frontPIPWillAnimateToAnchor:v22 withFrame:?];

    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_14:
    HostTimeClock = CMClockGetHostTimeClock();
    memset(&v34, 0, sizeof(v34));
    CMClockGetTime(&v34, HostTimeClock);
    [v15 frame];
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

  [v15 setAlpha:0.0];
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_12:
  v18 = [(CAMPreviewViewController *)self delegate];
  v19 = +[CAMPIPVideoPreviewView defaultAnchor];
  [v18 frontPIPWillAnimateToAnchor:v19 withFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

LABEL_15:
}

- (void)_willChangeGraphConfiguration
{
  [(CAMPreviewViewController *)self _setChangingGraphConfiguration:1];
  [(CAMPreviewViewController *)self _resetCachedTimes];
  [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];

  [(CAMPreviewViewController *)self _resetFaceTracking];
}

- (void)_didChangeGraphConfigurationAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMPreviewViewController *)self _setChangingGraphConfiguration:0];

  [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:v3];
}

- (void)setLightingType:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_lightingType != a3)
  {
    self->_lightingType = a3;
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
    v5 = [(CAMPreviewViewController *)self view];
    [v5 addGestureRecognizer:self->__aspectRatioToggleDoubleTapGestureRecognizer];
  }
}

- (void)_createFrontPIPVideoPreviewViewPanGestureRecognizerIfNecessary
{
  v3 = [(CAMPreviewViewController *)self previewView];
  v9 = [v3 frontPIPVideoPreviewView];

  if (self->__frontPIPVideoPreviewPanGestureRecognizer)
  {
    v4 = 1;
  }

  else
  {
    v4 = v9 == 0;
  }

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleFrontPIPVideoPreviewViewPan_];
    frontPIPVideoPreviewPanGestureRecognizer = self->__frontPIPVideoPreviewPanGestureRecognizer;
    self->__frontPIPVideoPreviewPanGestureRecognizer = v5;

    [v9 addGestureRecognizer:self->__frontPIPVideoPreviewPanGestureRecognizer];
    v7 = objc_alloc_init(MEMORY[0x1E6993858]);
    frontPIPVideoPreviewAnimationSpringSettings = self->__frontPIPVideoPreviewAnimationSpringSettings;
    self->__frontPIPVideoPreviewAnimationSpringSettings = v7;

    [(CEKFluidBehaviorSettings *)self->__frontPIPVideoPreviewAnimationSpringSettings setDefaultValues];
  }
}

- (void)_updateForOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMPreviewViewController *)self _updateExposureBiasPanGestureRecognizerForOrientation];
  [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:v3];
  [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:v3];
  v5 = [(CAMPreviewViewController *)self previewView];
  [v5 setOrientation:-[CAMPreviewViewController _interfaceOrientation](self animated:{"_interfaceOrientation"), v3}];
}

- (void)_setFocusIndicatorsPulsing:(BOOL)a3
{
  v3 = a3;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
    {
      v5 = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];
      [v5 setPulsing:v3];
      v6 = [(CAMPreviewViewController *)self _indicatorViewsByType];
      v7 = [v6 objectForKeyedSubscript:@"portraitSubject"];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__CAMPreviewViewController__setFocusIndicatorsPulsing___block_invoke;
      v9[3] = &__block_descriptor_33_e33_v32__0__NSString_8__UIView_16_B24l;
      v10 = v3;
      [v7 enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      v5 = [(CAMPreviewViewController *)self _continuousIndicator];
      [v5 setPulsing:v3];
    }

    v8 = [(CAMPreviewViewController *)self _pointIndicator];
    [v8 setPulsing:v3];
  }
}

- (void)_scalePortraitModeFocusIndicators
{
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls]&& [(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
  {
    v5 = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];
    [v5 startScalingWithExpansionWidth:2 duration:8.0 repeatCount:0.35];
    v3 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v4 = [v3 objectForKeyedSubscript:@"portraitSubject"];

    [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_54];
  }
}

- (void)_hideAllFocusIndicatorsExceptForIndicator:(id)a3
{
  v6 = a3;
  v4 = [(CAMPreviewViewController *)self _continuousIndicator];
  if (v4 != v6)
  {
    [(CAMPreviewViewController *)self _hideFocusIndicator:v4 animated:0];
  }

  v5 = [(CAMPreviewViewController *)self _pointIndicator];
  if (v5 != v6)
  {
    [(CAMPreviewViewController *)self _hideFocusIndicator:v5 animated:0];
  }
}

- (void)_hideFocusIndicator:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v6];
    if (a4 <= 0.0)
    {
      v6 = [(CAMPreviewViewController *)self _hideFocusIndicator:v8];
    }

    else
    {
      v6 = [(CAMPreviewViewController *)self performSelector:sel__hideFocusIndicator_ withObject:v8 afterDelay:a4];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_hideFocusIndicator:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v6];
    [v6 setPulsing:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__CAMPreviewViewController__hideFocusIndicator_animated___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    v7 = v6;
    v16 = v7;
    v8 = _Block_copy(aBlock);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __57__CAMPreviewViewController__hideFocusIndicator_animated___block_invoke_2;
    v13 = &unk_1E76F7988;
    v14 = v7;
    v9 = _Block_copy(&v10);
    if (v4)
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

- (void)_cancelDelayedHideOrDeactivateForFocusIndicator:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [CAMPreviewViewController cancelPreviousPerformRequestsWithTarget:self selector:sel__hideFocusIndicator_ object:v4];
    [CAMPreviewViewController cancelPreviousPerformRequestsWithTarget:self selector:sel__deactivateFocusIndicator_ object:v4];
  }
}

- (void)_hideAllFocusIndicatorsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMPreviewViewController *)self _continuousIndicator];
  [(CAMPreviewViewController *)self _hideFocusIndicator:v5 animated:v3];

  v6 = [(CAMPreviewViewController *)self _pointIndicator];
  [(CAMPreviewViewController *)self _hideFocusIndicator:v6 animated:v3];

  v7 = [(CAMPreviewViewController *)self _externalFocusLockIndicator];
  [(CAMPreviewViewController *)self _hideFocusIndicator:v7 animated:v3];

  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:v3];
  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"MRC" animated:v3];
  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"textRegion" animated:v3];
  [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:v3];
  [(CAMPreviewViewController *)self _hideAllCinematicIndicatorsAnimated:v3];
  [(CAMPreviewViewController *)self _updateCinematicModeViewsForTrackingChange];

  [(CAMPreviewViewController *)self _hideAllDockKitIndicatorsAnimated:v3];
}

- (BOOL)_isShowingContinuousIndicator
{
  v2 = self;
  v3 = [(CAMPreviewViewController *)self _continuousIndicator];
  LOBYTE(v2) = [(CAMPreviewViewController *)v2 _isShowingFocusIndicator:v3];

  return v2;
}

- (BOOL)isShowingPointIndicator
{
  v2 = self;
  v3 = [(CAMPreviewViewController *)self _pointIndicator];
  LOBYTE(v2) = [(CAMPreviewViewController *)v2 _isShowingFocusIndicator:v3];

  return v2;
}

- (void)_activateFocusIndicator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v4];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__CAMPreviewViewController__activateFocusIndicator___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    v7 = v4;
    v5 = _Block_copy(aBlock);
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v5 options:0 animations:0.25 completion:0.0];
  }
}

- (void)_deactivateFocusIndicator:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v6];
    [v8 setPulsing:0];
    if (a4 <= 0.0)
    {
      v6 = [(CAMPreviewViewController *)self _deactivateFocusIndicator:v8];
    }

    else
    {
      v6 = [(CAMPreviewViewController *)self performSelector:sel__deactivateFocusIndicator_ withObject:v8 afterDelay:a4];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_deactivateFocusIndicator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v4];
    [v4 setPulsing:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__CAMPreviewViewController__deactivateFocusIndicator___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    v7 = v4;
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
  v3 = [(CAMPreviewViewController *)self previewView];
  v4 = [(CAMPreviewViewController *)self _pointIndicator];
  v5 = 0.5;
  v6 = 0.5;
  if ([(CAMPreviewViewController *)self isShowingPointIndicator])
  {
    v7 = [v4 superview];
    [v4 center];
    [v7 convertPoint:v3 toView:?];
    v9 = v8;
    v11 = v10;

    [v3 captureDevicePointOfInterestForPoint:{v9, v11}];
    v5 = v12;
    v6 = v13;
  }

  v14 = v5;
  v15 = v6;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_showIndicatorAtPointOfInterest:(CGPoint)a3 rectSize:(int64_t)a4 animateInPlace:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    [(CAMPreviewViewController *)self _createPointIndicatorIfNecessary];
    v10 = [(CAMPreviewViewController *)self _pointIndicator];
    v11 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__CAMPreviewViewController__showIndicatorAtPointOfInterest_rectSize_animateInPlace___block_invoke;
    v25[3] = &unk_1E76FDCB0;
    v25[4] = self;
    v27 = a4;
    v12 = v10;
    v26 = v12;
    v28 = v5;
    [v11 performWithoutAnimation:v25];
    v13 = [(CAMPreviewViewController *)self previewView];
    [v13 indicatePointOfInterest:v5 animated:{x, y}];
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsExceptForIndicator:v12];
    [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v12];
    [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:1];
    [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:1];
    v14 = [v12 layer];
    v15 = NSStringFromSelector(sel_opacity);
    [v14 removeAnimationForKey:v15];

    if (!v5)
    {
      [v12 startScalingWithExpansionWidth:1 duration:37.0 repeatCount:0.2];
    }

    [v12 setPulsing:1];
    v16 = [MEMORY[0x1E695DF00] date];
    [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:v16];

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __84__CAMPreviewViewController__showIndicatorAtPointOfInterest_rectSize_animateInPlace___block_invoke_2;
    v22 = &unk_1E76F7960;
    v23 = v12;
    v24 = self;
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

- (int64_t)_styleForPointIndicatorWithRectSize:(int64_t)a3
{
  v4 = [(CAMPreviewViewController *)self _mode];
  v5 = 2;
  if (a3 == 1)
  {
    v5 = 3;
  }

  if (v4 == 6)
  {
    v5 = 5;
  }

  if (v4 <= 9)
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

- (void)_showLockedAtPointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI])
  {
    if ([(CAMPreviewViewController *)self isShowingStandardControls])
    {
      [(CAMPreviewViewController *)self _createPointIndicatorIfNecessary];
      v6 = [(CAMPreviewViewController *)self _pointIndicator];
      v7 = MEMORY[0x1E69DD250];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__CAMPreviewViewController__showLockedAtPointOfInterest___block_invoke;
      v21[3] = &unk_1E76F7960;
      v21[4] = self;
      v8 = v6;
      v22 = v8;
      [v7 performWithoutAnimation:v21];
      [(CAMPreviewViewController *)self _hideAllFocusIndicatorsExceptForIndicator:v8];
      [(CAMPreviewViewController *)self _cancelDelayedHideOrDeactivateForFocusIndicator:v8];
      [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"face" animated:1];
      [(CAMPreviewViewController *)self _hidePortraitModeTrackedSubjectIndicatorsAnimated:1];
      v9 = [(CAMPreviewViewController *)self previewView];
      [v9 indicatePointOfInterest:0 animated:{x, y}];
      v10 = [v8 layer];
      v11 = NSStringFromSelector(sel_opacity);
      [v10 removeAnimationForKey:v11];

      [v8 setPulsing:1];
      v12 = [MEMORY[0x1E695DF00] date];
      [(CAMPreviewViewController *)self _setLastFocusIndictorStartTime:v12];

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __57__CAMPreviewViewController__showLockedAtPointOfInterest___block_invoke_2;
      v18 = &unk_1E76F7960;
      v19 = v8;
      v20 = self;
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
  v2 = [(CAMPreviewViewController *)self _pointIndicator];
  [v2 startScalingWithExpansionWidth:2 duration:31.0 repeatCount:0.3];
  [v2 setPulsing:0];
}

- (void)_scaleDownLockedPointOfInterest
{
  v3 = [(CAMPreviewViewController *)self _styleForPointIndicatorWithRectSize:0];
  v4 = [(CAMPreviewViewController *)self _pointIndicator];
  objc_initWeak(&location, v4);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__CAMPreviewViewController__scaleDownLockedPointOfInterest__block_invoke;
  v5[3] = &unk_1E76F7DC0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 setStyle:v3 animated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__CAMPreviewViewController__scaleDownLockedPointOfInterest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowExposureBias:{objc_msgSend(*(a1 + 32), "_showExposureBiasSliderForPointView")}];
}

- (void)_fadeInView:(id)a3 withDuration:(double)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CAMPreviewViewController__fadeInView_withDuration___block_invoke;
  v7[3] = &unk_1E76F77B0;
  v8 = v5;
  v6 = v5;
  [CAMView animateIfNeededWithDuration:6 options:v7 animations:0 completion:a4];
}

- (void)_fadeOutView:(id)a3 withDuration:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CAMPreviewViewController__fadeOutView_withDuration_completion___block_invoke;
  v13[3] = &unk_1E76F77B0;
  v14 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CAMPreviewViewController__fadeOutView_withDuration_completion___block_invoke_2;
  v11[3] = &unk_1E76F97A0;
  v12 = v8;
  v9 = v8;
  v10 = v7;
  [CAMView animateIfNeededWithDuration:6 options:v13 animations:v11 completion:a4];
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

- ($A7BD2C69B781C0BFC9847BBC3FF98882)_geometryAnimationParametersForViewType:(SEL)a3
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

- (void)_animateIfNeededWithParameters:(id *)a3 animations:(id)a4 completion:(id)a5
{
  var0 = a3->var0;
  if (a3->var2)
  {
    [CAMView animateIfNeededWithDuration:a3->var1 usingSpringWithDamping:a4 initialSpringVelocity:a5 options:var0 animations:a3->var3 completion:a3->var4];
  }

  else
  {
    [CAMView animateIfNeededWithDuration:a3->var1 options:a4 animations:a5 completion:var0];
  }
}

- (void)_animateView:(id)a3 type:(id)a4 withCenter:(CGPoint)a5 bounds:(CGRect)a6 transform:(CGAffineTransform *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a5.y;
  v13 = a5.x;
  v16 = a3;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  [(CAMPreviewViewController *)self _geometryAnimationParametersForViewType:a4];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __74__CAMPreviewViewController__animateView_type_withCenter_bounds_transform___block_invoke;
  v39[3] = &unk_1E76FA580;
  v17 = v16;
  v40 = v17;
  v41 = v13;
  v42 = v12;
  v36 = v43;
  v37 = v44;
  *&v38 = v45[0];
  [(CAMPreviewViewController *)self _animateIfNeededWithParameters:&v36 animations:v39 completion:0];
  v18 = [v17 layer];
  v19 = [v18 valueForKeyPath:@"transform.rotation.z"];
  [v19 doubleValue];
  v21 = v20;

  v22 = atan2(a7->b, a7->a);
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
    v26 = *&a7->c;
    v33 = *&a7->a;
    v34 = v26;
    v35 = *&a7->tx;
    v36 = *&v45[1];
    v37 = *&v45[3];
    *&v38 = v45[5];
    [(CAMPreviewViewController *)self _animateIfNeededWithParameters:&v36 animations:v27 completion:0];
  }

  else
  {
    v24 = *&a7->c;
    v36 = *&a7->a;
    v25 = *&a7->tx;
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

- (void)_updatePreviewIndicatorClippingStyleForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v4 mode];
  v7 = [v4 device];

  LODWORD(v4) = [v5 spatialOverCaptureSupportForMode:v6 device:v7];
  v8 = [(CAMPreviewViewController *)self previewView];
  [v8 setIndicatorClippingStyle:~(v4 >> 1) & 1];
}

- (void)_addIndicatorView:(id)a3 forType:(id)a4 identifier:(id)a5 underlyingMetadataObject:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v13 = [v12 objectForKeyedSubscript:v10];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = [(CAMPreviewViewController *)self _indicatorViewsByType];
      [v14 setObject:v13 forKeyedSubscript:v10];
    }

    v15 = [v13 objectForKeyedSubscript:v11];
    v16 = v15;
    if (v15 && v15 != v9)
    {
      [v15 removeFromSuperview];
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Removed an existing client-managed view that shares the same identifier as a view that is being added (type/identifier: %{public}@/%{public}@", &v20, 0x16u);
      }
    }

    v18 = [(CAMPreviewViewController *)self previewView];
    v19 = [v18 indicatorContainerView];
    [v19 addSubview:v9];

    [v13 setObject:v9 forKeyedSubscript:v11];
  }

  else
  {
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Trying to add nil view for type/identifier: %{public}@/%{public}@", &v20, 0x16u);
    }
  }
}

- (void)_removeIndicatorViewForType:(id)a3 identifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v8 = [v7 objectForKeyedSubscript:v12];

  v9 = [v8 count];
  v10 = [v8 objectForKeyedSubscript:v6];
  [v10 removeFromSuperview];
  [v8 setObject:0 forKeyedSubscript:v6];

  v11 = [v8 count];
  if (v9 == 1 && !v11 && [v12 isEqualToString:@"portraitSubject"])
  {
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)_fadeOutAndRemoveIndicatorView:(id)a3 forType:(id)a4 identifier:(id)a5 withDuration:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CAMPreviewViewController *)self _metadataObjectsForView];
  [v13 removeObjectForKey:v10];

  [v10 alpha];
  if (v14 != 0.0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__CAMPreviewViewController__fadeOutAndRemoveIndicatorView_forType_identifier_withDuration___block_invoke;
    v15[3] = &unk_1E76F8230;
    v16 = v10;
    v17 = self;
    v18 = v11;
    v19 = v12;
    [(CAMPreviewViewController *)self _fadeOutView:v16 withDuration:v15 completion:a6];
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

- (void)_fadeOutAndRemoveIndicatorViewsOfType:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v7 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CAMPreviewViewController__fadeOutAndRemoveIndicatorViewsOfType_withDuration___block_invoke;
  v11[3] = &unk_1E76FDCD8;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v10 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_updateIndicatorsForMetadataObjectResults:(id)a3 allowNewAndReappearingIndicators:(BOOL)a4 viewType:(id)a5 viewClass:(Class)a6 geometryCallback:(id)a7 minimumAreaChangeThreshold:(double)a8 minimumAreaFractionChangeThreshold:(double)a9 viewInitializerCallback:(id)a10
{
  v75 = a4;
  v97 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a10;
  v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v19 = v14;
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

        v24 = [*(*(&v91 + 1) + 8 * i) uniqueIdentifier];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v21);
  }

  v70 = v17;

  v25 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v26 = [v25 objectForKeyedSubscript:v15];
  v27 = [v26 copy];

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __225__CAMPreviewViewController__updateIndicatorsForMetadataObjectResults_allowNewAndReappearingIndicators_viewType_viewClass_geometryCallback_minimumAreaChangeThreshold_minimumAreaFractionChangeThreshold_viewInitializerCallback___block_invoke;
  v87[3] = &unk_1E76FDD00;
  v66 = v18;
  v88 = v66;
  v89 = self;
  v72 = v15;
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
        v34 = [v33 uniqueIdentifier];
        v81 = 0u;
        v82 = 0u;
        v80 = 0u;
        memset(v79, 0, sizeof(v79));
        v16[2](v79, v16, v33);
        UIRectCenteredAboutPointScale();
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v43 = [(CAMPreviewViewController *)self previewView];
        v44 = [(CAMPreviewViewController *)self previewView];
        v45 = [v44 indicatorContainerView];
        [v43 convertRect:v45 toView:{v36, v38, v40, v42}];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;

        v54 = [v74 objectForKeyedSubscript:v34];
        if (v54)
        {
          v55 = 1;
        }

        else
        {
          v55 = !v75;
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
            if (![(CAMPreviewViewController *)self _shouldUpdateIndicatorSizeFrom:v61 to:v63 minimumAreaChangeThreshold:v51 minimumAreaFractionChangeThreshold:v53, a8, a9])
            {
              v51 = v62;
              v53 = v64;
            }

            if (v75)
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
          v56 = [[a6 alloc] initWithFrame:{v47, v49, v51, v53}];
          if (v70)
          {
            v70[2]();
          }

          v76 = v80;
          v77 = v81;
          v78 = v82;
          [v56 setTransform:&v76];
          [v56 layoutIfNeeded];
          [(CAMPreviewViewController *)self _addIndicatorView:v56 forType:v72 identifier:v34 underlyingMetadataObject:v33];
          [v56 setAlpha:0.0];
          [(CAMPreviewViewController *)self _fadeInView:v56 withDuration:0.25];
        }

        v65 = [(CAMPreviewViewController *)self _metadataObjectsForView];
        [v65 setObject:v33 forKey:v56];
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

- (BOOL)_isShowingIndicatorsOfType:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 count] != 0;
  return v5;
}

- (void)_fadeOutIndicatorsOfViewType:(id)a3 afterDelay:(double)a4
{
  v8 = a3;
  v6 = [(CAMPreviewViewController *)self _disableDelayedFadeOutForFaces];
  v7 = a4 <= 0.0 || !v6;
  if ((v7 || ([v8 isEqualToString:@"face"] & 1) == 0) && (!-[CAMPreviewViewController isFocusAndExposureExternallyLocked](self, "isFocusAndExposureExternallyLocked") || (objc_msgSend(v8, "isEqualToString:", @"face") & 1) == 0))
  {
    [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:v8];
    [(CAMPreviewViewController *)self performSelector:sel__fadeOutIndicatorsOfViewType_ withObject:v8 afterDelay:a4];
  }
}

- (void)_cancelDelayedFadeOutOfViewType:(id)a3
{
  v4 = a3;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__fadeOutIndicatorsOfViewType_ object:v4];
}

- (void)_hideIndicatorsOfViewType:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:v7];
  if ([v7 isEqualToString:@"face"])
  {
    [(CAMPreviewViewController *)self _setShouldSuppressExistingFaceIndicators:1];
  }

  v6 = 0.0;
  if (v4)
  {
    v6 = 0.75;
  }

  [(CAMPreviewViewController *)self _fadeOutAndRemoveIndicatorViewsOfType:v7 withDuration:v6];
}

- (BOOL)_shouldSuppressNewFaces
{
  v2 = self;
  v3 = [(CAMPreviewViewController *)self _captureController];
  v4 = [(CAMPreviewViewController *)v2 isShowingPointIndicator];
  LOBYTE(v2) = [(CAMPreviewViewController *)v2 _isFocusAndExposureLockedByUserOrExternally];
  LOBYTE(v2) = v4 | v2 | [v3 isCapturingVideo];

  return v2 & 1;
}

- (void)captureController:(id)a3 didOutputFaceResults:(id)a4 headResults:(id)a5 bodyResults:(id)a6 salientObjectResults:(id)a7
{
  v18 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls])
  {
    if ([v18 count] && objc_msgSend(v12, "count"))
    {
      v14 = [v18 arrayByAddingObjectsFromArray:v12];
    }

    else if ([v18 count])
    {
      v14 = v18;
    }

    else
    {
      v14 = v12;
    }

    v15 = v14;
    if ([v13 count])
    {
      v16 = [v15 arrayByAddingObjectsFromArray:v13];

      v15 = v16;
    }

    if ([v11 count])
    {
      v17 = [v15 arrayByAddingObjectsFromArray:v11];

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

- (void)_updateFaceIndicatorsForResults:(id)a3
{
  v4 = a3;
  if (![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked]|| [(CAMPreviewViewController *)self _externalLockNeedsCurrentFacesToAppear])
  {
    v5 = [v4 count];
    v6 = [(CAMPreviewViewController *)self _graphConfiguration];
    v7 = [v6 mode];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(CAMPreviewViewController *)self shouldUsePortraitStyleIndicatorsInPhotoMode];
    }

    v9 = [(CAMPreviewViewController *)self _externalLockNeedsCurrentFacesToAppear];
    [(CAMPreviewViewController *)self _setExternalLockNeedsCurrentFacesToAppear:0];
    if (v8)
    {
      [(CAMPreviewViewController *)self _cancelDelayedFadeOutOfViewType:@"face"];
    }

    if (v9)
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
        if (!v8)
        {
          [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:1.5];
        }
      }
    }

    v10 = [(CAMPreviewViewController *)self _shouldSuppressExistingFaceIndicators];
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
    [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v4 allowNewAndReappearingIndicators:!v10 viewType:@"face" viewClass:v11 geometryCallback:v14 minimumAreaChangeThreshold:v13 minimumAreaFractionChangeThreshold:2500.0 viewInitializerCallback:0.21];
    if (![(CAMPreviewViewController *)self _shouldSuppressExistingFaceIndicators]&& v5)
    {
      v12 = [(CAMPreviewViewController *)self _continuousIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:v12 animated:0];
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

- (void)setShouldUsePortraitStyleIndicatorsInPhotoMode:(BOOL)a3
{
  if (self->_shouldUsePortraitStyleIndicatorsInPhotoMode != a3)
  {
    self->_shouldUsePortraitStyleIndicatorsInPhotoMode = a3;
    if (a3)
    {
      [(CAMPreviewViewController *)self _setCurrentFacesCount:0];
    }

    else
    {
      [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:1.5];
    }

    v4 = [(CAMPreviewViewController *)self _graphConfiguration];
    v5 = [v4 mode];

    if (!v5)
    {

      [(CAMPreviewViewController *)self _updatePhotoModeIndicatorsStyle];
    }
  }
}

- (void)_updatePhotoModeIndicatorsStyle
{
  v3 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v4 = [v3 objectForKeyedSubscript:@"face"];

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
  v4 = [WeakRetained isDockAccessoryConnectedAndTracking];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(CAMPreviewViewController *)self _mode];
    v5 = 0x33Fu >> v6;
    if (v6 > 9)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (void)_updateCinematicModeViewsForResults:(id)a3
{
  v4 = a3;
  if ([(CAMPreviewViewController *)self _shouldShowCinematicModeIndicatorViews]&& ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked])
  {
    v12 = 0;
    v11 = 0;
    [(CAMPreviewViewController *)self _subjectGroupResultsFromMetadataObjects:v4 nonFixedFocusResults:&v12 fixedFocusResults:&v11];
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

- (void)_subjectGroupResultsFromMetadataObjects:(id)a3 nonFixedFocusResults:(id *)a4 fixedFocusResults:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
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
  *a5 = v18;
  v20 = v17;
  *a4 = v17;
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

- (id)_groupIDForMetadataObject:(id)a3
{
  v3 = [a3 underlyingMetadataObject];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 groupID] != -1)
  {
    v4 = [v3 groupID];
LABEL_6:
    v5 = v4;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 faceID];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 bodyID] + 1000;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectID] + 2000;
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

- (id)_cinematicModeIndicatorViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v42 = *MEMORY[0x1E69E9840];
  if ([(CAMPreviewViewController *)self _shouldShowCinematicModeIndicatorViews])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v8 = [v7 objectForKeyedSubscript:@"cinematicSubject"];

    v9 = [(CAMPreviewViewController *)self previewView];
    v10 = [(CAMPreviewViewController *)self previewView];
    v11 = [v10 indicatorContainerView];
    [v9 convertPoint:v11 toView:{x, y}];
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
    v3 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v4 = [v3 objectForKeyedSubscript:@"cinematicSubject"];

    v5 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v6 = [v5 objectForKeyedSubscript:@"cinematicFixedFocus"];

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
    [v7 addEntriesFromDictionary:v6];
    v8 = [(CAMPreviewViewController *)self _metadataObjectsForView];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__30;
    v32 = __Block_byref_object_dispose__30;
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v7 allKeys];
    v33 = [v9 stringWithFormat:@"Tracking %ld cinematic subject indicators\n", objc_msgSend(v10, "count")];

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
    v11 = v8;
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

- (id)_subjectGroupResultsFromMetadataObjects:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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

- (void)_updateDockKitModeViewsForResults:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![WeakRetained isDockAccessoryConnectedAndTracking])
  {

    goto LABEL_5;
  }

  v6 = [(CAMPreviewViewController *)self _shouldShowDockKitModeIndicatorViews];

  if (!v6)
  {
LABEL_5:
    [(CAMPreviewViewController *)self _setDockKitSubjectIsTrackingLocked:0 shouldAnimate:1];
    goto LABEL_6;
  }

  v7 = [(CAMPreviewViewController *)self _subjectGroupResultsFromMetadataObjects:v4];
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
  v3 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v4 = [v3 objectForKeyedSubscript:@"dockkitTrackedSubject"];

  v5 = [(CAMPreviewViewController *)self _metadataObjectsForView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained isDockKitTrackingLocked];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __68__CAMPreviewViewController__updateDockKitModeViewsForTrackingChange__block_invoke;
  v12 = &unk_1E76FDE40;
  v13 = v5;
  v14 = self;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  [(CAMPreviewViewController *)self _setDockKitSubjectIsTrackingLocked:v7 shouldAnimate:1, v9, v10, v11, v12];
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

- (BOOL)_dockKitModeIndicatorViewsContainPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained isDockAccessoryConnectedAndTracking];

  if (v7)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v8 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v9 = [v8 objectForKeyedSubscript:@"dockkitTrackedSubject"];

    v10 = [(CAMPreviewViewController *)self previewView];
    v11 = [(CAMPreviewViewController *)self previewView];
    v12 = [v11 indicatorContainerView];
    [v10 convertPoint:v12 toView:{x, y}];
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

- (void)_updatePortraitModeViewsForResults:(id)a3
{
  v4 = a3;
  if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
  {
    if (![(CAMPreviewViewController *)self _shouldSuppressNewPortraitModeTrackedSubjectIndicators])
    {
      v5 = [v4 count];
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
      [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v4 allowNewAndReappearingIndicators:1 viewType:@"portraitSubject" viewClass:v9 geometryCallback:v10 minimumAreaChangeThreshold:v7 minimumAreaFractionChangeThreshold:v8];
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

- (BOOL)_shouldUpdateIndicatorSizeFrom:(CGSize)a3 to:(CGSize)a4 minimumAreaChangeThreshold:(double)a5 minimumAreaFractionChangeThreshold:(double)a6
{
  v6 = a3.width * a3.height;
  v7 = a4.width * a4.height;
  v8 = a6 + 1.0;
  v9 = v6 <= 0.0 || v7 / v6 >= v8;
  v10 = vabdd_f64(v7, v6);
  v11 = v7 > 0.0 && v6 / v7 >= v8;
  return v10 >= a5 && (v9 || v11);
}

- (void)setCachedMRCResults:(id)a3
{
  v5 = a3;
  if (self->_cachedMRCResults != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cachedMRCResults, a3);
    [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:0];
    v5 = v6;
  }
}

- (void)setCachedSignificantMRCResult:(id)a3
{
  v5 = a3;
  if (self->_cachedSignificantMRCResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cachedSignificantMRCResult, a3);
    [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:0];
    [(CAMPreviewViewController *)self _updateTextRegionIndicatorsIfNecessary];
    v5 = v6;
  }
}

- (void)_updateMRCIndicatorsIfNecessaryAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(CAMPreviewViewController *)self _shouldDisableFocusUI]&& [(CAMPreviewViewController *)self isShowingStandardControls]&& ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked]&& [(CAMPreviewViewController *)self _shouldAllowMRCIndicators])
  {
    [(CAMPreviewViewController *)self _updateMRCIndicatorsAnimated:v3];

    [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"MRC" afterDelay:0.3];
  }
}

- (void)_updateMRCIndicatorsAnimated:(BOOL)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uniqueIdentifier];
  }

  else
  {
    v6 = &stru_1F1660A30;
  }

  v7 = [(CAMPreviewViewController *)self cachedSignificantTextRegionResult];
  if (v7)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(CAMPreviewViewController *)self cachedMRCResults];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
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
        v16 = [v15 uniqueIdentifier];
        if ([v16 isEqualToString:v6])
        {
          v17 = [v15 isOfSignificantSize];

          if (v17)
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
  v19 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v20 = [v19 objectForKeyedSubscript:@"MRC"];
  v21 = [v20 copy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __57__CAMPreviewViewController__updateMRCIndicatorsAnimated___block_invoke_2;
  v23[3] = &unk_1E76FDE40;
  v24 = v6;
  v25 = self;
  v22 = v6;
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

- (void)_handleSignificantMRCIndicatorButtonTapped:(id)a3
{
  v5 = [(CAMPreviewViewController *)self delegate];
  v4 = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  [v5 previewViewController:self didSelectMRCResult:v4];
}

- (BOOL)_mrcIndicatorButtonContainsTouch:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v6 = [v5 objectForKeyedSubscript:@"MRC"];

  v7 = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 objectForKeyedSubscript:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    [v4 locationInView:v10];
    v11 = [v10 pointInside:0 withEvent:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setCachedSignificantTextRegionResult:(id)a3
{
  v5 = a3;
  if (self->_cachedSignificantTextRegionResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cachedSignificantTextRegionResult, a3);
    [(CAMPreviewViewController *)self _updateTextRegionIndicatorsIfNecessary];
    [(CAMPreviewViewController *)self _updateMRCIndicatorsIfNecessaryAnimated:0];
    v5 = v6;
  }
}

- (void)setCachedTextRegionResults:(id)a3
{
  v5 = a3;
  if (self->_cachedTextRegionResults != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cachedTextRegionResults, a3);
    [(CAMPreviewViewController *)self _updateTextRegionIndicatorsIfNecessary];
    v5 = v6;
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
  v3 = [(CAMPreviewViewController *)self cachedSignificantTextRegionResult];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uniqueIdentifier];
  }

  else
  {
    v5 = &stru_1F1660A30;
  }

  v6 = [(CAMPreviewViewController *)self cachedSignificantMRCResult];
  if (v6)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(CAMPreviewViewController *)self cachedTextRegionResults];
  }

  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 imageAnalysisShowsInactiveTextRegions];

  if ((v9 & 1) == 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55__CAMPreviewViewController__updateTextRegionIndicators__block_invoke;
    v28[3] = &unk_1E76FDEB8;
    v29 = v5;
    v10 = [v7 indexOfObjectPassingTest:v28];
    v11 = MEMORY[0x1E695E0F0];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL && v7)
    {
      v12 = [v7 objectAtIndexedSubscript:v10];
      v31[0] = v12;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

      v7 = v12;
    }

    v7 = v11;
  }

  v13 = objc_opt_class();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __55__CAMPreviewViewController__updateTextRegionIndicators__block_invoke_2;
  v27[3] = &unk_1E76FDD28;
  v27[4] = self;
  [(CAMPreviewViewController *)self _updateIndicatorsForMetadataObjectResults:v7 allowNewAndReappearingIndicators:1 viewType:@"textRegion" viewClass:v13 geometryCallback:v27 minimumAreaChangeThreshold:0.0 minimumAreaFractionChangeThreshold:0.0];
  if (v9)
  {
    v14 = [(CAMPreviewViewController *)self _indicatorViewsByType];
    v15 = [v14 objectForKeyedSubscript:@"textRegion"];

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
          [v22 setInactive:{objc_msgSend(v21, "isEqualToString:", v5) ^ 1}];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewViewController *)self _captureController];
  v6 = [v5 isCapturingNightModeImage];

  if (v6)
  {
    LOBYTE(self) = 0;
  }

  else if (self->__exposureBiasPanGestureRecognizer == v4)
  {
    v7 = [(CAMPreviewViewController *)self previewView];
    v8 = [v7 pointIndicator];

    v9 = [(CAMPreviewViewController *)self delegate];
    v10 = [v9 previewViewControllerShouldRestrictExposureBiasPanToTouchesNearSlider:self];

    if (v8 && v10)
    {
      [(UITapGestureRecognizer *)v4 locationInView:v7];
      v12 = v11;
      v14 = v13;
      v15 = [v7 pointIndicator];
      [v15 boundsIncludingExposureBiasSlider];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [v7 pointIndicator];
      [v7 convertRect:v24 fromView:{v17, v19, v21, v23}];

      UIRectCenteredIntegralRectScale();
      v26.x = v12;
      v26.y = v14;
      LODWORD(v24) = CGRectContainsPoint(v27, v26);
      LODWORD(self) = [(CAMPreviewViewController *)self _canModifyExposureBias]& v24;
    }

    else
    {
      LOBYTE(self) = [(CAMPreviewViewController *)self _canModifyExposureBias];
    }
  }

  else if (self->__tapToFocusAndExposeGestureRecognizer == v4 || self->__longPressToLockGestureRecognizer == v4)
  {
    LOBYTE(self) = [(CAMPreviewViewController *)self _allowUserToChangeFocusAndExposure];
  }

  else if (self->__aspectRatioToggleDoubleTapGestureRecognizer == v4)
  {
    LODWORD(self) = ![(CAMPreviewViewController *)self _shouldDisableAspectRatioToggle];
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->__tapToFocusAndExposeGestureRecognizer == v6 || self->__longPressToLockGestureRecognizer == v6 || (aspectRatioToggleDoubleTapGestureRecognizer = self->__aspectRatioToggleDoubleTapGestureRecognizer, aspectRatioToggleDoubleTapGestureRecognizer == v6))
  {
    v10 = [(CAMPreviewViewController *)self previewView];
    [v7 locationInView:v10];
    v12 = v11;
    v14 = v13;
    [v10 bounds];
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

  if (aspectRatioToggleDoubleTapGestureRecognizer == v6)
  {
    v9 &= ![(CAMPreviewViewController *)self _shouldDisableAspectRatioToggle];
  }

  v15 = ![(CAMPreviewViewController *)self _mrcIndicatorButtonContainsTouch:v7];

  return v15 & v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained previewViewController:self gestureRecognizer:v6 shouldRequireFailureOfGestureRecognizer:v7];

  if (v9)
  {
    LOBYTE(v10) = 1;
  }

  else if (self->__tapToFocusAndExposeGestureRecognizer == v6 && self->__aspectRatioToggleDoubleTapGestureRecognizer == v7)
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
  v3 = [(CUCaptureController *)self->__captureController shouldAllowUserToChangeFocusAndExposure];
  if (v3)
  {
    if ([(CAMPreviewViewController *)self _shouldDisableFocusUI])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(CAMPreviewViewController *)self isFocusAndExposureExternallyLocked];
    }
  }

  return v3;
}

- (BOOL)_isPointOnVisibleFocusIndicator:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CAMPreviewViewController *)self previewView];
  v7 = [(CAMPreviewViewController *)self _pointIndicator];
  v8 = v7;
  if (v7 && ([v7 alpha], v9 > 0.0))
  {
    [v6 convertPoint:v8 toView:{x, y}];
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

- (BOOL)_focusOnPoint:(CGPoint)a3 shouldShowFocusAndExposureIndicator:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(CAMPreviewViewController *)self _allowUserToChangeFocusAndExposure])
  {
    v8 = [(CAMPreviewViewController *)self previewView];
    v9 = +[CAMCaptureCapabilities capabilities];
    v10 = [v9 isSmallerFocusPointOfInterestSupported];

    if (v10 && [(CAMPreviewViewController *)self _isPointOnVisibleFocusIndicator:x, y])
    {
      v11 = [(CAMPreviewViewController *)self _pointIndicator];
      v12 = 1;
      v13 = [(CAMPreviewViewController *)self _styleForPointIndicatorWithRectSize:1];
      v14 = [v11 style] != v13;
      [v11 setStyle:-[CAMPreviewViewController _styleForPointIndicatorWithRectSize:](self animated:"_styleForPointIndicatorWithRectSize:" completion:{v14), 1, 0}];
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    [v8 bounds];
    v58.x = x;
    v58.y = y;
    if (CGRectContainsPoint(v60, v58))
    {
      [v8 captureDevicePointOfInterestForPoint:{x, y}];
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
        v21 = [v20 isFrontRearSimultaneousVideoSupported];

        if (!v21 || (-[CAMPreviewViewController previewView](self, "previewView"), v22 = objc_claimAutoreleasedReturnValue(), [v22 frontPIPVideoPreviewView], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isHidden"), v23, v22, -[CAMPreviewViewController previewView](self, "previewView"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "viewportFrame"), +[CAMPIPVideoPreviewView pipOutsetForViewportSize:](CAMPIPVideoPreviewView, "pipOutsetForViewportSize:", v26, v27), v29 = v28, v31 = v30, v53 = v33, v54 = v32, v25, -[CAMPreviewViewController previewView](self, "previewView"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "frontPIPVideoPreviewView"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "frame"), v37 = v31 + v36, v39 = v29 + v38, v41 = v40 - (v31 + v53), v43 = v42 - (v29 + v54), v35, v34, v61.origin.x = v37, v61.origin.y = v39, v61.size.width = v41, v61.size.height = v43, v59.x = x, v59.y = y, v44 = CGRectContainsPoint(v61, v59), (v24 & 1) != 0) || !v44)
        {
          [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0, *&v53, *&v54];
          v49 = [MEMORY[0x1E695DF00] date];
          [(CAMPreviewViewController *)self _setLastTapToFocusTime:v49];

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

          if (v4)
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

- (BOOL)_setCinematicFocusForMetadataObject:(id)a3 atPoint:(CGPoint)a4 useFixedOpticalFocus:(BOOL)a5 useHardFocus:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v49 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [(CAMPreviewViewController *)self previewView];
  [v12 captureDevicePointOfInterestForPoint:{x, y}];
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
    if (v11)
    {
      if (v22)
      {
        v23 = [v11 description];
        v50.x = x;
        v50.y = y;
        v24 = NSStringFromCGPoint(v50);
        v38 = v24;
        v51.x = v15;
        v51.y = v17;
        v25 = NSStringFromCGPoint(v51);
        v26 = @"YES";
        if (!v7)
        {
          v26 = @"NO";
        }

        v27 = v26;
        v28 = @"YES";
        if (!v6)
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

      v30 = [(CAMPreviewViewController *)self _captureController];
      [v30 setCinematicFocusForMetadataObject:v11 atPoint:v7 useFixedOpticalFocus:v6 useHardFocus:{v15, v17}];
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
        if (v7)
        {
          v33 = @"YES";
        }

        v34 = v33;
        v35 = @"NO";
        if (v6)
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

      v30 = [(CAMPreviewViewController *)self _captureController];
      [v30 setCinematicFocusAtPoint:v7 useFixedOpticalFocus:v6 useHardFocus:{v15, v17}];
    }

    [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0];
    v20 = 1;
  }

  return v20;
}

- (void)_handleTapToFocusAndExpose:(id)a3
{
  v4 = a3;
  v9 = [(CAMPreviewViewController *)self previewView];
  [v4 locationInView:v9];
  v6 = v5;
  v8 = v7;

  [(CAMPreviewViewController *)self _handleFocusTapForPointInPreviewView:v6, v8];
}

- (void)_handleFocusTapForPointInPreviewView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = [(CAMPreviewViewController *)self _cinematicModeIndicatorViewAtPoint:?];
  if (v19)
  {
    v6 = [(CAMPreviewViewController *)self _metadataObjectsForView];
    v7 = [v6 objectForKey:v19];

    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 syntheticFocusMode] & 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(CAMPreviewViewController *)self _setCinematicFocusForMetadataObject:v7 atPoint:0 useFixedOpticalFocus:v8 useHardFocus:x, y];
    v10 = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:v10 animated:1];

    v11 = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:v11 animated:1];

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
  v14 = [v13 isDockAccessoryConnectedAndTracking];

  if (v14)
  {
    v15 = [(CAMPreviewViewController *)self _dockKitModeIndicatorViewsContainPoint:x, y];
    v16 = v15 | [(CAMPreviewViewController *)self isFocusLockedOnDockKitSubject];
    if (v16)
    {
      v17 = [(CAMPreviewViewController *)self _continuousIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:v17 animated:1];

      v18 = [(CAMPreviewViewController *)self _pointIndicator];
      [(CAMPreviewViewController *)self _hideFocusIndicator:v18 animated:1];

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

- (void)_setDockKitFocusAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CAMPreviewViewController *)self previewView];
  [v6 captureDevicePointOfInterestForPoint:{x, y}];
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
  v2 = [(CAMPreviewViewController *)self _longPressToLockGestureRecognizer];
  v3 = [v2 state];

  return (v3 - 1) < 2;
}

- (void)_handleLongPressToLock:(id)a3
{
  v4 = a3;
  if ([(CAMPreviewViewController *)self _allowUserToChangeFocusAndExposure])
  {
    v5 = [(CAMPreviewViewController *)self previewView];
    v6 = [v4 state];
    if ((v6 - 3) >= 3)
    {
      if (v6 != 1)
      {
        goto LABEL_10;
      }

      [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];
      [v4 locationInView:v5];
      v9 = v8;
      v11 = v10;
      [v5 captureDevicePointOfInterestForPoint:?];
      v13 = v12;
      v15 = v14;
      v16 = [(CAMPreviewViewController *)self previewView];
      v7 = [v16 frontPIPVideoPreviewView];

      [v7 frame];
      v21.x = v9;
      v21.y = v11;
      v17 = CGRectContainsPoint(v22, v21);
      v18 = [(CAMPreviewViewController *)self _graphConfiguration];
      v19 = [v18 frontRearSimultaneousVideoEnabled];

      if (!v19 || !v17)
      {
        [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0];
        [(CAMPreviewViewController *)self setCachedExposureTargetBias:0.0];
        v20 = [MEMORY[0x1E695DF00] date];
        [(CAMPreviewViewController *)self _setLastTapToFocusTime:v20];

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
      v7 = [(CAMPreviewViewController *)self _pointIndicator];
      [(CAMPreviewViewController *)self _deactivateFocusIndicator:v7 afterDelay:1.2];
    }

LABEL_10:
  }
}

- (void)_lockFocusAndExposureAfterDelay:(double)a3
{
  [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];

  [(CAMPreviewViewController *)self performSelector:sel__lockFocusAndExposure withObject:0 afterDelay:a3];
}

- (void)_cancelDelayedFocusAndExposureLock
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__lockFocusAndExposure object:0];
}

- (void)_lockFocusAndExposure
{
  [(CAMPreviewViewController *)self _cancelDelayedFocusAndExposureLock];
  v5 = [(CAMPreviewViewController *)self _captureController];
  [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:1];
  [v5 forceDisableSubjectAreaChangeMonitoring];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isTapToExposeSupportedForMode:{-[CAMPreviewViewController _mode](self, "_mode")}];

  if (v4)
  {
    [v5 changeToLockedExposure];
  }

  [(CAMPreviewViewController *)self _finishFocusingLockedPointOfInterestIndicator];
}

- (void)setCachedExposureTargetBias:(float)a3
{
  if (self->_cachedExposureTargetBias != a3)
  {
    self->_cachedExposureTargetBias = a3;
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
  v2 = [(CAMPreviewViewController *)self _interfaceOrientation];
  if ((v2 - 2) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1A3A6A8F0[v2 - 2];
  }
}

- (void)_initializeExposureBiasParametersForFocusIndicatorView:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setExposureBiasSide:-[CAMPreviewViewController _exposureBiasSide](self animated:{"_exposureBiasSide"), 0}];
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  [(CAMPreviewViewController *)self _updateExposureBiasViews:v5];
}

- (void)_updateExposureBiasViews
{
  v3 = [(CAMPreviewViewController *)self _focusIndicatorViewsWithExposureBiasSliders];
  [(CAMPreviewViewController *)self _updateExposureBiasViews:v3];
}

- (void)_updateExposureBiasViews:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v17 = v4;
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
  v4 = [(CAMPreviewViewController *)self _pointIndicator];
  if (v4)
  {
    [v3 addObject:v4];
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

- (void)_handleExposureBiasPan:(id)a3
{
  v20 = a3;
  v4 = [(CAMPreviewViewController *)self _captureController];
  v5 = [v20 state];
  if ((v5 - 3) >= 3)
  {
    if ((v5 - 1) > 1)
    {
      goto LABEL_14;
    }

    if ([v20 state] == 1)
    {
      [(CAMPreviewViewController *)self cachedExposureTargetBias];
      self->__exposureBiasPanStartValue = v7;
      v8 = [(CAMPreviewViewController *)self _pointIndicator];
      [(CAMPreviewViewController *)self _activateFocusIndicator:v8];
      v9 = [(CAMPreviewViewController *)self _mode];
      if (v9 <= 9 && ((1 << v9) & 0x251) != 0)
      {
        [v4 changeToLockedExposure];
      }
    }

    v6 = [(CAMPreviewViewController *)self _pointIndicator];
    [v20 translationInView:v6];
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
    v19 = [MEMORY[0x1E695DF00] date];
    [(CAMPreviewViewController *)self _setLastExposureBiasModifiedTime:v19];
  }

  else
  {
    [(CAMPreviewViewController *)self _updateExposureBiasViews];
    v6 = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _deactivateFocusIndicator:v6 afterDelay:1.2];
  }

LABEL_14:
}

- (double)_effectiveExposureBiasMovementForTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CAMPreviewViewController *)self _exposureBiasSide];
  result = 0.0;
  v7 = -x;
  if (v5 != 2)
  {
    v7 = 0.0;
  }

  if (v5 == 3)
  {
    v7 = x;
  }

  if (v5 == 1)
  {
    result = y;
  }

  if (!v5)
  {
    result = -y;
  }

  if (v5 > 1)
  {
    return v7;
  }

  return result;
}

- (double)_virtualSliderPositionForExposureBias:(double)a3
{
  v5 = -a3;
  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderPointsForFirstStop];
  v8 = v7;
  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderExponent];
  result = v8 * (1.0 - pow(v9, v6)) / (1.0 - v9);
  if (a3 < 0.0)
  {
    return -result;
  }

  return result;
}

- (double)_exposureBiasForVirtualSliderPosition:(double)a3
{
  v5 = -a3;
  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderPointsForFirstStop];
  v8 = v7;
  [(CAMPreviewViewController *)self _exposureBiasVirtualSliderExponent];
  v10 = v9;
  v11 = log(1.0 - v6 * (1.0 - v9) / v8);
  result = v11 / log(v10);
  if (a3 < 0.0)
  {
    return -result;
  }

  return result;
}

- (void)captureController:(id)a3 willResetFocus:(BOOL)a4 exposure:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(CAMPreviewViewController *)self _setUserLockedFocusAndExposure:0];
  [(CAMPreviewViewController *)self _setCinematicIsFixedFocusLocked:0];
  [(CAMPreviewViewController *)self _setCinematicSubjectIsTrackingLocked:0];
  [(CAMPreviewViewController *)self _setDockKitSubjectIsTrackingLocked:0];
  if ([(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure])
  {
    v8 = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:v8 animated:0];
  }

  else
  {
    [(CAMPreviewViewController *)self _showUIForResetFocusAndExposure];
    if ([(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews])
    {
      [(CAMPreviewViewController *)self _scalePortraitModeFocusIndicators];
      goto LABEL_7;
    }

    v8 = [(CAMPreviewViewController *)self _continuousIndicator];
    [v8 setPulsing:1];
    v9 = [(CAMPreviewViewController *)self _continuousIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:v9 afterDelay:0.8];
  }

LABEL_7:
  v10 = [(CAMPreviewViewController *)self delegate];
  [v10 previewViewController:self willResetFocus:v6 exposure:v5];
}

- (BOOL)captureController:(id)a3 shouldResetFocusAndExposureForReason:(int64_t)a4
{
  v6 = [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally];
  if (a4 > 1)
  {
    v7 = !v6;
    v8 = a4 == 3 && !v6;
    if (a4 != 2)
    {
      v7 = v8;
    }

    return v7 & 1;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v7 = (v6 | [(CAMPreviewViewController *)self _isFullyAutomaticFocusAndExposure]) ^ 1;
      return v7 & 1;
    }

LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
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

  v4 = [(CAMPreviewViewController *)self _lastExposureBiasModificationTime];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceDate:v4];
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
  v8 = [(CAMPreviewViewController *)self _lastTapToFocusTime];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSinceDate:v8];
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

- (void)captureController:(id)a3 didOutputFocusResult:(id)a4
{
  v17 = a4;
  [(CAMPreviewViewController *)self _setLastFocusResult:v17];
  v5 = [(CAMPreviewViewController *)self _timelapseController];
  [v5 setLastFocusResult:v17];
  if (-[CAMPreviewViewController _mode](self, "_mode") != 7 && [v17 deviceSupportsFocus])
  {
    v6 = [v17 focusMode];
    v7 = [v17 contrastBasedFocusDidStart];
    v8 = [v17 contrastBasedFocusDidEnd];
    [v17 pointOfInterest];
    v10 = v9;
    v12 = v11 == 0.5;
    v13 = [(CAMPreviewViewController *)self _isLongPressingToLock];
    v14 = v10 == 0.5 && v12;
    v15 = v6 == 3 && v14;
    if (v7)
    {
      if (v15)
      {
        [(CAMPreviewViewController *)self _showUIForResetFocusAndExposure];
      }

      [(CAMPreviewViewController *)self _setFocusIndicatorsPulsing:1];
    }

    if (v8)
    {
      if (v15)
      {
        [(CAMPreviewViewController *)self _updateUIForCenteredContrastBasedFocusDidEnd];
        [(CAMPreviewViewController *)self _setFocusIndicatorsPulsing:0];
      }

      else
      {
        [(CAMPreviewViewController *)self _setFocusIndicatorsPulsing:0];
        if (!v13 && ![(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally])
        {
          v16 = [(CAMPreviewViewController *)self _pointIndicator];
          [(CAMPreviewViewController *)self _deactivateFocusIndicator:v16 afterDelay:1.2];
        }
      }

      [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:0.5];
    }
  }
}

- (void)captureController:(id)a3 didOutputExposureResult:(id)a4
{
  v5 = a4;
  v6 = [v5 exposureMode];
  [v5 pointOfInterest];
  v8 = v7;
  v10 = v9;
  v11 = [v5 exposureDidEnd];
  [(CAMPreviewViewController *)self _setLastExposureResult:v5];
  v12 = [v5 deviceSupportsFocus];

  if (v12)
  {
    return;
  }

  if (v6 == 2 && v8 == 0.5 && v10 == 0.5)
  {
    v13 = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _hideFocusIndicator:v13 animated:0];
LABEL_6:

    goto LABEL_7;
  }

  v14 = [(CAMPreviewViewController *)self _isLongPressingToLock];
  if (v11 && !v14 && ![(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally])
  {
    v13 = [(CAMPreviewViewController *)self _pointIndicator];
    [(CAMPreviewViewController *)self _deactivateFocusIndicator:v13 afterDelay:1.2];
    goto LABEL_6;
  }

LABEL_7:
  if (v11)
  {

    [(CAMPreviewViewController *)self _fadeOutIndicatorsOfViewType:@"face" afterDelay:0.5];
  }
}

- (float)baselineExposureValueForCaptureController:(id)a3
{
  [(CAMPreviewViewController *)self setCachedExposureTargetBias:a3, 0.0];

  [(CAMPreviewViewController *)self baselineExposureBias];
  return result;
}

- (void)_hideAllCinematicIndicatorsAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"cinematicSubject" animated:a3];

  [(CAMPreviewViewController *)self _hideIndicatorsOfViewType:@"cinematicFixedFocus" animated:v3];
}

- (void)_setCinematicSubjectIsTrackingLocked:(BOOL)a3 shouldAnimate:(BOOL)a4
{
  if (self->__cinematicSubjectIsTrackingLocked != a3)
  {
    v5 = a4;
    self->__cinematicSubjectIsTrackingLocked = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:v5];
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

- (void)_setCinematicIsFixedFocusLocked:(BOOL)a3 shouldAnimate:(BOOL)a4
{
  if (self->__cinematicIsFixedFocusLocked != a3)
  {
    v5 = a4;
    self->__cinematicIsFixedFocusLocked = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:v5];
  }
}

- (void)_setUserLockedFocusAndExposure:(BOOL)a3 shouldAnimate:(BOOL)a4
{
  if (self->__userLockedFocusAndExposure != a3)
  {
    v5 = a4;
    self->__userLockedFocusAndExposure = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:v5];
  }
}

- (void)setFocusAndExposureExternallyLocked:(BOOL)a3
{
  if (self->_focusAndExposureExternallyLocked != a3)
  {
    v15 = v3;
    v16 = v4;
    self->_focusAndExposureExternallyLocked = a3;
    if (a3)
    {
      v6 = [(CAMPreviewViewController *)self _pointIndicator];
      if ([(CAMPreviewViewController *)self _isShowingFocusIndicator:v6])
      {
        if (![(CAMPreviewViewController *)self _userLockedFocusAndExposure])
        {
          [(CAMPreviewViewController *)self _activateFocusIndicator:v6];
          [(CAMPreviewViewController *)self _deactivateFocusIndicator:v6 afterDelay:1.2];
          [v6 startScalingWithExpansionWidth:2 duration:31.0 repeatCount:0.3];
        }
      }

      else if ([(CAMPreviewViewController *)self _currentFacesCount])
      {
        [(CAMPreviewViewController *)self _setExternalLockNeedsCurrentFacesToAppear:1];
      }

      else if (![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"portraitSubject"]&& ![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"cinematicSubject"]&& ![(CAMPreviewViewController *)self _isShowingIndicatorsOfType:@"cinematicFixedFocus"])
      {
        [(CAMPreviewViewController *)self _createExternalFocusLockIndicatorIfNecessary];
        v9 = [(CAMPreviewViewController *)self _externalFocusLockIndicator];
        [v9 setAlpha:0.0];
        v10 = MEMORY[0x1E69DD250];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __64__CAMPreviewViewController_setFocusAndExposureExternallyLocked___block_invoke;
        v13[3] = &unk_1E76F77B0;
        v14 = v9;
        v11 = v9;
        [v10 animateWithDuration:v13 animations:0.25];
        [v11 startScalingWithExpansionWidth:2 duration:31.0 repeatCount:0.3];
        [(CAMPreviewViewController *)self _deactivateFocusIndicator:v11 afterDelay:1.2];
      }

      v8 = [(CAMPreviewViewController *)self _captureController];
      [v8 changeToLockedFocusAndExposure];
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

      v8 = [(CAMPreviewViewController *)self _captureController];
      [v8 resetFocusAndExposure];
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

- (void)_setDockKitSubjectIsTrackingLocked:(BOOL)a3 shouldAnimate:(BOOL)a4
{
  v4 = a4;
  if ([(CAMPreviewViewController *)self _dockKitSubjectIsTrackingLocked]!= a3)
  {
    self->__dockKitSubjectIsTrackingLocked = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained previewViewControllerDidChangeFocusOrExposureLocked:self shouldAnimate:v4];
  }
}

- (void)_setLastFocusResult:(id)a3
{
  v5 = a3;
  if (self->__lastFocusResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__lastFocusResult, a3);
    [(CAMPreviewViewController *)self _validateInternalProperties];
    v5 = v6;
  }
}

- (void)_setLastExposureResult:(id)a3
{
  v5 = a3;
  if (self->__lastExposureResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__lastExposureResult, a3);
    [(CAMPreviewViewController *)self _validateInternalProperties];
    v5 = v6;
  }
}

- (void)setBaselineExposureBias:(float)a3
{
  if (self->_baselineExposureBias != a3)
  {
    self->_baselineExposureBias = a3;
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
  v6 = [(CAMPreviewViewController *)self _captureController];
  LODWORD(v5) = v4;
  [v6 changeExposureTargetBias:v5];
}

- (void)_validateExposureTargetBiasFromExposureResult:(id)a3
{
  [a3 exposureTargetBias];
  v4 = [(CAMPreviewViewController *)self _isExposureTargetBiasAtBaseline:?];
  [(CAMPreviewViewController *)self cachedExposureTargetBias];
  if (v4 && v5 != 0.0 && ![(CAMPreviewViewController *)self _isPanningExposureBias])
  {

    [(CAMPreviewViewController *)self setCachedExposureTargetBias:0.0];
  }
}

- (BOOL)_isFullyAutomaticFocus:(id)a3 andExposure:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 1;
  if (!v6 || !v7)
  {
    goto LABEL_12;
  }

  if ([v6 deviceSupportsFocus])
  {
    if ([v6 focusMode] != 3)
    {
LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }

    [v6 pointOfInterest];
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

- (double)captureControllerDelayBeforeResettingFocusAndExposureAfterCapture:(id)a3
{
  v4 = [(CAMPreviewViewController *)self _mode];
  result = 0.0;
  if (v4 <= 9 && ((1 << v4) & 0x251) != 0)
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

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];
  }
}

- (void)_setPreviewAspectModeForCurrentWindowSize:(int64_t)a3
{
  v5 = [(CAMPreviewViewController *)self previewView];
  v4 = [v5 videoPreviewView];
  if ([v4 previewViewWindowIsFullScreen])
  {
    [v4 setPreviewViewAspectMode:a3];
  }

  else
  {
    [v4 setPreviewViewAspectModeWindowed:a3];
  }
}

- (BOOL)_shouldDisableAspectRatioToggle
{
  v2 = self;
  v3 = [(CAMPreviewViewController *)self _mode];
  LOBYTE(v2) = [(CAMPreviewViewController *)v2 _isChangingGraphConfiguration];
  v4 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(v3) = [v4 isPreviewAspectRatioToggleSupportedForMode:v3];

  return v2 & 1 | ((v3 & 1) == 0);
}

- (void)_handleAspectRatioToggleDoubleTap:(id)a3
{
  v11 = [(CAMPreviewViewController *)self previewView];
  v4 = [v11 videoPreviewView];
  v5 = [v4 previewViewWindowIsFullScreen];
  if (v5)
  {
    v6 = [v4 previewViewAspectMode];
  }

  else
  {
    v6 = [v4 previewViewAspectModeWindowed];
  }

  v7 = 1;
  if (v6)
  {
    v7 = v6;
  }

  if (v6 == 1)
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
  [v10 setPreviewViewAspectMode:v8 forMode:-[CAMPreviewViewController _mode](self isFullScreen:{"_mode"), v5}];
}

- (void)_captureOrientationChanged:(id)a3
{
  v4 = +[CAMApplication appOrPlugInState]== 0;
  [(CAMPreviewViewController *)self _updateForOrientationAnimated:v4];

  [(CAMPreviewViewController *)self _updateExposureBiasSideAnimated:v4];
}

- (void)_updateExposureBiasSideAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(CAMPreviewViewController *)self _exposureBiasSide];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CAMPreviewViewController *)self _focusIndicatorViewsWithExposureBiasSliders];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([(CAMPreviewViewController *)self _isShowingFocusIndicator:v11])
        {
          [(CAMPreviewViewController *)self _activateFocusIndicator:v11];
          [(CAMPreviewViewController *)self _deactivateFocusIndicator:v11 afterDelay:1.2];
        }

        [v11 setExposureBiasSide:v5 animated:v3];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)focusOnNormalizedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v11 = [(CAMPreviewViewController *)self previewView];
  [v11 viewportFrame];
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

- (void)setShowingStandardControls:(BOOL)a3
{
  if (self->_showingStandardControls != a3)
  {
    self->_showingStandardControls = a3;
    [(CAMPreviewViewController *)self _hideAllFocusIndicatorsAnimated:0];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)a3
{
  if (self->_shallowDepthOfFieldStatus != a3)
  {
    self->_shallowDepthOfFieldStatus = a3;
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)setStagePreviewStatus:(int64_t)a3
{
  if (self->_stagePreviewStatus != a3)
  {
    self->_stagePreviewStatus = a3;
    [(CAMPreviewViewController *)self _updatePortraitModeViewsAnimated:1];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)a3 stagePreviewStatus:(int64_t)a4
{
  if (self->_stagePreviewStatus != a4 || self->_shallowDepthOfFieldStatus != a3)
  {
    self->_stagePreviewStatus = a4;
    self->_shallowDepthOfFieldStatus = a3;
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
    v6 = [(CAMPreviewViewController *)self previewView];
    [v6 setCenteredSubjectIndicatorView:self->__portraitModeCenteredIndicatorView];
  }
}

- (BOOL)_shouldShowStageLightOverlayViewForMode:(int64_t)a3 device:(int64_t)a4 lightingType:(int64_t)a5 shallowDepthOfFieldStatus:(int64_t)a6 stagePreviewStatus:(int64_t)a7
{
  if ((a4 - 1) > 0xA)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1A3A6A900[a4 - 1];
  }

  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = [v11 isLightingControlSupportedForMode:a3];

  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 isLivePreviewSupportedForLightingType:a5 devicePosition:v10];

  v16 = (a5 - 4) < 3 && a7 == 1;
  return v12 & (v16 | v14 ^ 1);
}

- (BOOL)_shouldSuppressNewPortraitModeTrackedSubjectIndicators
{
  v3 = [(CAMPreviewViewController *)self isShowingPointIndicator];
  v4 = [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally];
  v5 = v4 | ![(CAMPreviewViewController *)self _shouldShowPortraitModeTrackedSubjectIndicatorsForLightingType:[(CAMPreviewViewController *)self lightingType]];
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6 & 1;
}

- (void)_updatePortraitModeViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMPreviewViewController *)self _shouldShowStageLightOverlayViewForMode:[(CAMPreviewViewController *)self _mode] device:[(CAMPreviewViewController *)self _device] lightingType:[(CAMPreviewViewController *)self lightingType] shallowDepthOfFieldStatus:[(CAMPreviewViewController *)self shallowDepthOfFieldStatus] stagePreviewStatus:[(CAMPreviewViewController *)self stagePreviewStatus]];
  if (v5)
  {
    [(CAMPreviewViewController *)self _createStageLightOverlayViewIfNeededWillAnimate:v3];
    v6 = [(CAMPreviewViewController *)self _shouldShowStageLightOverlayActive];
    v7 = [(CAMPreviewViewController *)self _stageLightOverlayView];
    [v7 setActive:v6 animated:v3];

    v8 = [(CAMPreviewViewController *)self _interfaceOrientation];
    v9 = [(CAMPreviewViewController *)self _stageLightOverlayView];
    [v9 setOrientation:v8 animated:v3];
  }

  v10 = [(CAMPreviewViewController *)self _stageLightOverlayView];
  [v10 setVisible:v5 animated:v3];

  v11 = [(CAMPreviewViewController *)self _shouldShowIndicatorsAsInactive];
  v12 = [(CAMPreviewViewController *)self _indicatorViewsByType];
  v13 = [v12 objectForKeyedSubscript:@"portraitSubject"];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __61__CAMPreviewViewController__updatePortraitModeViewsAnimated___block_invoke;
  v38[3] = &__block_descriptor_33_e33_v32__0__NSString_8__UIView_16_B24l;
  v39 = v11;
  [v13 enumerateKeysAndObjectsUsingBlock:v38];
  v14 = [(CAMPreviewViewController *)self _pointIndicator];
  v15 = [v14 isInactive];
  [v14 setInactive:v11];
  if (v15 && !v11)
  {
    [v14 startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.3];
  }

  v16 = [(CAMPreviewViewController *)self _shouldShowPortraitModeIndicatorViews];
  v17 = [(CAMPreviewViewController *)self isShowingPointIndicator];
  v18 = [v13 count];
  v19 = [(CAMPreviewViewController *)self _device];
  if ((v19 - 1) > 0xA)
  {
    v20 = 0;
  }

  else
  {
    v20 = qword_1A3A6A900[v19 - 1];
  }

  v21 = +[CAMCaptureCapabilities capabilities];
  v22 = [v21 portraitModeRequiresSubjectForDevicePosition:v20];

  v23 = [(CAMPreviewViewController *)self lightingType]- 7;
  v24 = v16 & v22;
  if (v18)
  {
    v24 = 0;
  }

  if (v23 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24 & ~v17;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == 1)
  {
    v26 = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];

    if (!v26)
    {
      [(CAMPreviewViewController *)self _createPortraitModeCenteredIndicatorViewIfNecessary];
      v27 = [(CAMPreviewViewController *)self view];
      [v27 layoutIfNeeded];
    }
  }

  v28 = [(CAMPreviewViewController *)self _portraitModeCenteredIndicatorView];
  v29 = [v28 isInactive];
  [v28 alpha];
  v31 = v30;
  [v28 setInactive:{-[CAMPreviewViewController _isPortraitEffectActive](self, "_isPortraitEffectActive") ^ 1}];
  if (v25 && ([v28 isInactive] & 1) != 0)
  {
    if (v31 == 0.0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v29;
    }

    v33 = [v28 isInactive];
    if ((v32 & 1) == 0)
    {
      LODWORD(v34) = 0.5;
      LODWORD(v35) = 0.5;
      LODWORD(v36) = 1.0;
      v37 = [MEMORY[0x1E69793D0] functionWithControlPoints:v34 :0.0 :v35 :v36];
      [v28 startScalingWithExpansionWidth:-1 duration:v37 repeatCount:8.0 timingFunction:0.75];

      goto LABEL_27;
    }
  }

  else
  {
    v33 = [v28 isInactive];
  }

  if (((v33 ^ 1) & v29) == 1)
  {
    [v28 stopScalingWithDuration:0.2];
  }

LABEL_27:
  [v28 setHidden:v25 ^ 1u animated:v3];
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
  v2 = [(CAMPreviewViewController *)self previewView];
  [v2 normalizedZoomPIPRect];
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

- (void)setNormalizedZoomPIPRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CAMPreviewViewController *)self previewView];
  [v7 setNormalizedZoomPIPRect:{x, y, width, height}];
}

- (void)_hideFrontPIPVideoPreviewView
{
  v3 = [(CAMPreviewViewController *)self _graphConfiguration];
  v4 = [v3 frontRearSimultaneousVideoEnabled];

  if (v4)
  {
    v5 = [(CAMPreviewViewController *)self previewView];
    v6 = [v5 frontPIPVideoPreviewView];

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
    v10 = v6;
    v8 = v6;
    [CAMView animateIfNeededWithDuration:v9 animations:v7];
  }
}

- (void)_handleFrontPIPVideoPreviewViewPan:(id)a3
{
  v4 = a3;
  HostTimeClock = CMClockGetHostTimeClock();
  memset(&v22, 0, sizeof(v22));
  CMClockGetTime(&v22, HostTimeClock);
  v6 = [(CAMPreviewViewController *)self previewView];
  v7 = [v6 frontPIPVideoPreviewView];

  if (v7)
  {
    v8 = [v7 superview];
    [v4 translationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [v4 state];
    if ((v13 - 3) >= 3)
    {
      if ((v13 - 1) <= 1)
      {
        v21 = v22;
        [(CAMPreviewViewController *)self _handleFrontPIPVideoPreviewViewPanDidMoveWithTranslation:v4 withGesture:v7 inView:&v21 timestamp:v10, v12];
      }
    }

    else
    {
      [v7 center];
      v15 = v14;
      v17 = v16;
      v18 = [v7 superview];
      [v4 velocityInView:v18];
      v21 = v22;
      [(CAMPreviewViewController *)self _handleFrontPIPVideoPreviewViewPanDidEndAtPosition:v7 withVelocity:&v21 inView:v15 timestamp:v17, v19, v20];
    }
  }
}

- (void)_handleFrontPIPVideoPreviewViewPanDidMoveWithTranslation:(CGPoint)a3 withGesture:(id)a4 inView:(id)a5 timestamp:(id *)a6
{
  y = a3.y;
  x = a3.x;
  v22 = a5;
  v10 = a4;
  v11 = [v22 superview];
  [v10 setTranslation:v11 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  v12 = [(CAMPreviewViewController *)self _frontPIPVideoPreviewCenterAnimatableProperty];
  if (v12 && (v13 = v12, -[CAMPreviewViewController _frontPIPVideoPreviewCenterAnimatableProperty](self, "_frontPIPVideoPreviewCenterAnimatableProperty"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isInvalidated], v14, v13, (v15 & 1) == 0))
  {
    v20 = [(CAMPreviewViewController *)self _frontPIPVideoPreviewCenterAnimatableProperty];
    v21 = [v20 _value];
    v17 = *v21;
    v19 = v21[1];
  }

  else
  {
    [v22 frame];
    UIRectGetCenter();
    v17 = v16;
    v19 = v18;
  }

  [(CAMPreviewViewController *)self _animateFrontPIPToCenter:5 animationUpdateMode:0 resetFocusAndExposure:x + v17, y + v19];
}

- (void)_handleFrontPIPVideoPreviewViewPanDidEndAtPosition:(CGPoint)a3 withVelocity:(CGPoint)a4 inView:(id)a5 timestamp:(id *)a6
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v50[4] = *MEMORY[0x1E69E9840];
  [CAMPIPVideoPreviewView futureThrowTime:a5];
  v12 = v11;
  +[CAMPIPVideoPreviewView futureThrowTime];
  v14 = v13;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(CAMPreviewViewController *)self previewView];
  v16 = v15;
  if (v15)
  {
    [v15 viewportAnchorsForFrontPIP];
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
    v25 = 0;
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
          v25 = [v31 integerValue];
          v29 = v39;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  [(CAMPreviewViewController *)self _animateFrontPIPVideoPreviewToAnchor:v25];
}

- (void)_animateFrontPIPVideoPreviewToAnchor:(int64_t)a3
{
  v5 = [(CAMPreviewViewController *)self previewView];
  [v5 setFrontPIPAnchor:a3];

  v6 = [(CAMPreviewViewController *)self previewView];
  v7 = [v6 frontPIPVideoPreviewView];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(CAMPreviewViewController *)self previewView];
  [v7 frame];
  if (v8)
  {
    [v8 viewportAnchorsForFrontPIPOriginWithSize:{v9, v10}];
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
  v13 = [(CAMPreviewViewController *)self previewView];
  v14 = [v13 frontPIPAnchor];

  switch(v14)
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

  [v7 frame];
  v16 = v15;
  v18 = v17;
  UIRectGetCenter();
  [(CAMPreviewViewController *)self _animateFrontPIPToCenter:3 animationUpdateMode:1 resetFocusAndExposure:?];
  v19 = [(CAMPreviewViewController *)self delegate];
  [v19 frontPIPWillAnimateToAnchor:a3 withFrame:{v11, v12, v16, v18}];
}

- (void)_animateFrontPIPToCenter:(CGPoint)a3 animationUpdateMode:(int64_t)a4 resetFocusAndExposure:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = [(CAMPreviewViewController *)self previewView];
  v11 = [v10 frontPIPVideoPreviewView];

  [v11 center];
  v13 = v12;
  v15 = v14;
  v16 = [(CAMPreviewViewController *)self _frontPIPVideoPreviewCenterAnimatableProperty];
  if (!v16 || (v17 = v16, -[CAMPreviewViewController _frontPIPVideoPreviewCenterAnimatableProperty](self, "_frontPIPVideoPreviewCenterAnimatableProperty"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isInvalidated], v18, v17, v19))
  {
    objc_initWeak(&location, self);
    v20 = MEMORY[0x1E6993860];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke;
    v25[3] = &unk_1E76FDEE0;
    objc_copyWeak(&v28, &location);
    v26 = v11;
    v27 = self;
    v21 = [v20 vector2DAnimatablePropertyWithInitialValue:v25 cancelableFrameCallback:{v13, v15}];
    [(CAMPreviewViewController *)self set_frontPIPVideoPreviewCenterAnimatableProperty:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  [(CAMPreviewViewController *)self set_frontPIPVideoPreviewCenterAnimationResetsFocusAndExposure:v5];
  v22 = MEMORY[0x1E69DD250];
  v23 = [(CAMPreviewViewController *)self _frontPIPVideoPreviewAnimationSpringSettings];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__CAMPreviewViewController__animateFrontPIPToCenter_animationUpdateMode_resetFocusAndExposure___block_invoke_2;
  v24[3] = &unk_1E76FA580;
  v24[4] = self;
  *&v24[5] = x;
  *&v24[6] = y;
  [v22 cek_animateWithSettings:v23 mode:a4 animations:v24 completion:0];
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

- (void)_updateCaptureControllerWithFrontPIPFrameRelativeToViewport:(CGRect)a3 cornerRadius:(double)a4 timestamp:(id *)a5
{
  v8 = [(CAMPreviewViewController *)self previewView:a3.origin.x];
  [v8 viewportFrame];
  v10 = v9;

  v11 = [(CAMPreviewViewController *)self _graphConfiguration];
  v12 = [v11 videoConfiguration];
  v13 = [(CAMPreviewViewController *)self _graphConfiguration];
  v14 = [v13 videoStabilizationStrength];
  v15 = MEMORY[0x1E695F060];
  if (v12 <= 0xE)
  {
    if (((1 << v12) & 0x7620) != 0)
    {
      if (v14 < 2)
      {

        v16 = 3840.0;
        v17 = 2160.0;
        v18 = 4;
        goto LABEL_12;
      }

      if (v14 - 2 < 2)
      {

        v16 = 2816.0;
        v17 = 1584.0;
        v18 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (((1 << v12) & 0x992) != 0)
      {

        v16 = 1920.0;
        v17 = 1080.0;
        v18 = 2;
        goto LABEL_12;
      }

      if (((1 << v12) & 0x4C) != 0)
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
    v27 = [(CAMPreviewViewController *)self previewView];
    v28 = [v27 frontPIPVideoPreviewView];
    v29 = [v28 layer];
    [v29 borderWidth];
    v31 = v17 / v10 * (v30 * 0.75);

    v32 = [(CAMPreviewViewController *)self previewView];
    v33 = [v32 frontPIPVideoPreviewView];
    v34 = [v33 layer];
    v35 = [v34 borderColor];

    v36 = [CAMMultiCamPIPMetrics alloc];
    v38 = *&a5->var0;
    var3 = a5->var3;
    v37 = [(CAMMultiCamPIPMetrics *)v36 initWithTimestamp:&v38 frame:v35 cornerRadius:v18 borderWidth:v20 borderColor:v22 videoResolution:v24, v26, a4, v31];
    [(CUCaptureController *)self->__captureController setMultiCamPictureInPictureMetrics:v37];
  }
}

- (void)_resetFocusAndExposureIfFrontPIPObscuresIndicator
{
  v3 = [(CAMPreviewViewController *)self _isFocusAndExposureLockedByUserOrExternally];
  v4 = [(CAMPreviewViewController *)self previewView];
  v5 = [v4 indicatorContainerView];
  v6 = [(CAMPreviewViewController *)self _pointIndicator];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CAMPreviewViewController *)self previewView];
  [v5 convertRect:v15 toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(CAMPreviewViewController *)self previewView];
  v25 = [v24 frontPIPVideoPreviewView];
  [v25 frame];
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
  if (!v3 && v34)
  {
    v35 = [(CAMPreviewViewController *)self _captureController];
    [v35 resetFocusAndExposure];
  }
}

- (void)_previewDidStartRunning:(id)a3
{
  v4 = [a3 object];
  v5 = [(CAMPreviewViewController *)self previewView];
  v6 = [v5 frontPIPVideoPreviewLayer];

  if (v4 == v6)
  {
    v7 = [(CAMPreviewViewController *)self previewView];
    v8 = [v7 frontPIPVideoPreviewView];

    v9 = [(CAMPreviewViewController *)self delegate];
    v10 = [(CAMPreviewViewController *)self previewView];
    v11 = [v10 frontPIPAnchor];
    [v8 frame];
    [v9 frontPIPWillAnimateToAnchor:v11 withFrame:?];

    v12 = [(CAMPreviewViewController *)self delegate];
    [v8 frame];
    [v12 frontPIPFrameDidChange:?];

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