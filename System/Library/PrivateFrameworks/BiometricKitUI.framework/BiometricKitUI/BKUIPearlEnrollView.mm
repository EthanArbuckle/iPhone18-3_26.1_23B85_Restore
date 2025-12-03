@interface BKUIPearlEnrollView
- (BKUIPearlEnrollViewDelegate)delegate;
- (BKUIPearlEnrollViewStateTransitionDelegate)transitionDelegate;
- (BOOL)_animateCircleMaskWithPositioningGuide;
- (BOOL)expectsRunningVideoCaptureSession:(id)session;
- (BOOL)needsMaskedNeedsPositionStyleEnrollment;
- (CATransform3D)_needsPositioningPreviewTransform;
- (CATransform3D)_scanningAndPartialCapturePreviewTransform;
- (CGPoint)portalCenter;
- (CGPoint)portalOffset;
- (CGSize)tutorialMovieSize;
- (double)_nonOccludingCircleMaskRadius;
- (double)_previewZoomLevel;
- (double)_progressiveBlurAmountForPitch:(double)pitch;
- (double)portalRadius;
- (double)tutorialRingRadius;
- (id)_enrollMaskPathWithRadius:(double)radius;
- (id)_maskPathWithRadius:(double)radius inFrame:(CGRect)frame;
- (void)_animateToEntryAnimation;
- (void)_animateToFinishedWithCompletion:(id)completion;
- (void)_animateToFirstScanCompleteWithCompletion:(id)completion;
- (void)_animateToFirstScanWithCompletion:(id)completion;
- (void)_animateToNeedsCenterBinWithCompletion:(id)completion;
- (void)_animateToNeedsPositioningFromState:(int)state withCompletion:(id)completion;
- (void)_animateToPartialCaptureWithCompletion:(id)completion;
- (void)_animateToScanCompleteWithCompletion:(id)completion;
- (void)_animateToScanningStateWithCompletion:(id)completion;
- (void)_animateToTutorialWithCompletion:(id)completion;
- (void)_cleanupUIState;
- (void)_endAndCleanupEnrollSessionIfNeeded;
- (void)_nudgeIfNecessary;
- (void)_recordDataFrameWithFaceState:(id)state;
- (void)_runTutorialLoopWithDuration:(double)duration delay:(double)delay loopDelay:(double)loopDelay;
- (void)_setRaiseLowerGuidanceLabelState:(unint64_t)state;
- (void)_setState:(int)state completion:(id)completion;
- (void)_startNudgeTimer;
- (void)_stopNudgeTimer;
- (void)_updateCorrectionEstimates:(double)estimates yaw:(double)yaw;
- (void)_updateDebugOverlay;
- (void)_updateRaiseLowerGuidanceLabelIfNeededForPitch:(double)pitch;
- (void)_updateToNeedsPositionWithoutAnimationWithCompletion:(id)completion;
- (void)dealloc;
- (void)didDisappear;
- (void)layoutSubviews;
- (void)preEnrollActivate;
- (void)setActive:(BOOL)active;
- (void)setBackgroundColor:(id)color;
- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion;
- (void)setCameraBlurred:(BOOL)blurred;
- (void)setCrosshairsHidden:(BOOL)hidden;
- (void)setDebugOverlayVisible:(BOOL)visible;
- (void)setFailed;
- (void)setMovieViewHidden:(BOOL)hidden;
- (void)setPillsHidden:(BOOL)hidden;
- (void)setPitch:(double)pitch yaw:(double)yaw;
- (void)setupAnimationViewWithSuperView:(id)view;
- (void)startCapture;
- (void)updatePortalLayoutGuide;
- (void)updateWithFaceState:(id)state;
- (void)updateWithProgress:(id)progress;
@end

@implementation BKUIPearlEnrollView

void __112__BKUIPearlEnrollView_initWithFrame_videoCaptureSession_inSheet_positioningGuideView_squareNeedsPositionLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 userInterfaceIdiom] == 1 && !objc_msgSend(v14, "horizontalSizeClass"))
  {
    v6 = [WeakRetained traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7)
    {
      v8 = *(*(a1 + 32) + 728);
      [WeakRetained tutorialRingRadius];
      v10 = v9;
      [WeakRetained portalCenter];
      [v8 setRadius:0 center:0 animated:v10 completion:{v11, v12}];
      v13 = *(*(a1 + 32) + 616);
      [WeakRetained pillRingRadius];
      [v13 setRingRadius:?];
      [WeakRetained setNeedsLayout];
    }
  }

  else
  {
  }
}

- (void)setupAnimationViewWithSuperView:(id)view
{
  v54[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "PearlEnrollView: Settings up animation view", &buf, 2u);
  }

  if ([(BKUIPearlEnrollView *)self squareNeedsPositionLayout])
  {
    animationView = [(BKUIPearlEnrollView *)self animationView];

    if (!animationView)
    {
      v7 = [BKUIMicaAnimationView alloc];
      v8 = [(OBAnimationView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(BKUIPearlEnrollView *)self setAnimationView:v8];
    }

    v9 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"enrolling" darkStateName:@"enrolling" transitionDuration:0.01 transitionSpeed:1.0];
    v54[0] = v9;
    v10 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"done" darkStateName:@"done" transitionDuration:1.5 transitionSpeed:1.0];
    v54[1] = v10;
    v11 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"check" darkStateName:@"check" transitionDuration:1.5 transitionSpeed:1.0];
    v54[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];

    animationView2 = [(BKUIPearlEnrollView *)self animationView];
    [animationView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    animationView3 = [(BKUIPearlEnrollView *)self animationView];
    [animationView3 setAlpha:0.0];

    animationController = [(BKUIPearlEnrollView *)self animationController];

    if (!animationController)
    {
      v16 = objc_alloc(MEMORY[0x277D37600]);
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 URLForResource:@"faceid-completion" withExtension:@"ca"];
      animationView4 = [(BKUIPearlEnrollView *)self animationView];
      v20 = [v12 objectAtIndexedSubscript:0];
      v21 = [v16 initWithUrlToPackage:v18 animationView:animationView4 animatedStates:v12 startAtFirstState:v20];
      [(BKUIPearlEnrollView *)self setAnimationController:v21];
    }

    animationView5 = [(BKUIPearlEnrollView *)self animationView];
    packageLayer = [animationView5 packageLayer];

    animationView6 = [(BKUIPearlEnrollView *)self animationView];
    [animationView6 setScale:1.0];

    CGAffineTransformMakeScale(&v52, 1.0, 1.0);
    animationView7 = [(BKUIPearlEnrollView *)self animationView];
    buf = v52;
    [animationView7 setTransform:&buf];

    animationView8 = [(BKUIPearlEnrollView *)self animationView];
    [viewCopy addSubview:animationView8];

    animationView9 = [(BKUIPearlEnrollView *)self animationView];
    centerYAnchor = [animationView9 centerYAnchor];
    centerYAnchor2 = [viewCopy centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(BKUIPearlEnrollView *)self setSuccessAnimationViewCenterYConstraint:v30];

    v46 = MEMORY[0x277CCAAD0];
    animationView10 = [(BKUIPearlEnrollView *)self animationView];
    [animationView10 widthAnchor];
    v49 = v48 = packageLayer;
    v31 = packageLayer;
    [packageLayer bounds];
    v47 = [v49 constraintEqualToConstant:v32];
    v53[0] = v47;
    animationView11 = [(BKUIPearlEnrollView *)self animationView];
    heightAnchor = [animationView11 heightAnchor];
    [v31 bounds];
    v36 = [heightAnchor constraintEqualToConstant:v35];
    v53[1] = v36;
    animationView12 = [(BKUIPearlEnrollView *)self animationView];
    centerXAnchor = [animationView12 centerXAnchor];
    [viewCopy centerXAnchor];
    v45 = v12;
    v40 = v39 = viewCopy;
    v41 = [centerXAnchor constraintEqualToAnchor:v40];
    v53[2] = v41;
    successAnimationViewCenterYConstraint = [(BKUIPearlEnrollView *)self successAnimationViewCenterYConstraint];
    v53[3] = successAnimationViewCenterYConstraint;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    [v46 activateConstraints:v43];

    viewCopy = v39;
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = [(BKUIPearlEnrollView *)self backgroundColor];

  if (backgroundColor != colorCopy)
  {
    [(UIView *)self->_circleMaskView setBackgroundColor:colorCopy];
    -[CAShapeLayer setBackgroundColor:](self->_circleMaskLayer, "setBackgroundColor:", [colorCopy CGColor]);
    [(UIView *)self->_roundedRectMaskView setBackgroundColor:colorCopy];
    -[CAShapeLayer setBackgroundColor:](self->_roundedRectMaskLayer, "setBackgroundColor:", [colorCopy CGColor]);
  }

  v6.receiver = self;
  v6.super_class = BKUIPearlEnrollView;
  [(BKUIPearlEnrollView *)&v6 setBackgroundColor:colorCopy];
}

- (void)setDebugOverlayVisible:(BOOL)visible
{
  self->_debugOverlayVisible = visible;
  [(UILabel *)self->_debugLabel setHidden:!visible];

  [(BKUIPearlEnrollView *)self setNeedsLayout];
}

- (void)preEnrollActivate
{
  if (!self->_activated)
  {
    self->_activated = 1;
    [(BKUIPearlEnrollView *)self setActive:1];
  }
}

- (void)dealloc
{
  [(BKUIPearlEnrollView *)self setActive:0];
  v3.receiver = self;
  v3.super_class = BKUIPearlEnrollView;
  [(BKUIPearlEnrollView *)&v3 dealloc];
}

- (void)setActive:(BOOL)active
{
  if (!active)
  {
    [(BKUIPearlEnrollView *)self _endAndCleanupEnrollSessionIfNeeded];
  }

  self->_active = active;
}

- (void)_endAndCleanupEnrollSessionIfNeeded
{
  if ([(BKUIPearlEnrollView *)self active])
  {
    [(BKUIPearlPositioningGuideView *)self->_positioningGuide setHidden:1];
    previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
    [previewLayer setHidden:1];

    [(BKUIPearlEnrollView *)self _stopNudgeTimer];
  }

  videoCaptureSession = self->_videoCaptureSession;
  if (videoCaptureSession)
  {

    [(BKUIPearlVideoCaptureSession *)videoCaptureSession endCapture];
  }
}

void __60__BKUIPearlEnrollView__animateToState_fromState_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) crossHairs];
  [v1 setAlpha:0.0];
}

void __60__BKUIPearlEnrollView__animateToState_fromState_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTransitioningToState:0];
  v2 = [WeakRetained transitionDelegate];
  [v2 stateTransitionDidComplete];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)_setState:(int)state completion:(id)completion
{
  v35[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  state = self->_state;
  if (state < 2 || state > 1)
  {
    self->_state = state;
    if (!state)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [(BKUIPearlEnrollView *)self startCapture];
    state = self->_state;
    self->_state = state;
  }

  date = [MEMORY[0x277CBEAA8] date];
  stateStart = self->_stateStart;
  self->_stateStart = date;

  [(BKUIPearlEnrollView *)self setNeedsLayout];
  [(BKUIPearlEnrollView *)self updatePortalLayoutGuide];
  squareNeedsPositionLayout = [(BKUIPearlEnrollView *)self squareNeedsPositionLayout];
  v11 = self->_state;
  if (squareNeedsPositionLayout && v11 == 10)
  {
    if (state == 9 || state == 6)
    {
      v13 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"enrolling" darkStateName:@"enrolling" transitionDuration:0.01 transitionSpeed:1.0];
      v35[0] = v13;
      v14 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"done" darkStateName:@"done" transitionDuration:1.5 transitionSpeed:1.0];
      v35[1] = v14;
      v15 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"check" darkStateName:@"check" transitionDuration:1.5 transitionSpeed:1.0];
      v35[2] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];

      v17 = objc_alloc(MEMORY[0x277D37600]);
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 URLForResource:@"faceid-completion-skip-mask" withExtension:@"ca"];
      animationView = [(BKUIPearlEnrollView *)self animationView];
      v21 = [v16 objectAtIndexedSubscript:0];
      v22 = [v17 initWithUrlToPackage:v19 animationView:animationView animatedStates:v16 startAtFirstState:v21];
      [(BKUIPearlEnrollView *)self setAnimationController:v22];

      [(BKUIPearlEnrollView *)self setAlpha:0.0];
      animationView2 = [(BKUIPearlEnrollView *)self animationView];
      [animationView2 setAlpha:0.0];

      CGAffineTransformMakeScale(&v34, 1.0, 1.0);
      animationView3 = [(BKUIPearlEnrollView *)self animationView];
      v33 = v34;
      [animationView3 setTransform:&v33];

      successAnimationViewCenterYConstraint = [(BKUIPearlEnrollView *)self successAnimationViewCenterYConstraint];
      [successAnimationViewCenterYConstraint setConstant:4.0];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __44__BKUIPearlEnrollView__setState_completion___block_invoke;
      v32[3] = &unk_278D09978;
      v32[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:196608 delay:v32 options:0 animations:0.349999994 completion:0.150000006];
    }

    else
    {
      animationView4 = [(BKUIPearlEnrollView *)self animationView];
      [animationView4 setAlpha:0.0];

      v27 = MEMORY[0x277D75D18];
      v28 = [MEMORY[0x277D75D48] behaviorWithDampingRatio:1.0 response:0.5];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __44__BKUIPearlEnrollView__setState_completion___block_invoke_2;
      v31[3] = &unk_278D09978;
      v31[4] = self;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __44__BKUIPearlEnrollView__setState_completion___block_invoke_3;
      v30[3] = &unk_278D0A728;
      v30[4] = self;
      [v27 _animateUsingSpringBehavior:v28 tracking:0 animations:v31 completion:v30];
    }
  }

  else
  {
    [(BKUIPearlPillContainerView *)self->_pillContainer animateToState:v11 completion:0];
  }

  if ((self->_state | 2) == 7)
  {
    self->_nudgesNudged = 0;
    [(BKUIPearlEnrollView *)self setNudgesPaused:0];
    [(BKUIPearlEnrollView *)self _startNudgeTimer];
    self->_fillHoldoffFrameCount = 0;
  }

  else
  {
    [(BKUIPearlEnrollView *)self _stopNudgeTimer];
  }

LABEL_17:
  [(BKUIPearlEnrollView *)self _animateToState:self->_state fromState:state completion:completionCopy];

  v29 = *MEMORY[0x277D85DE8];
}

void __44__BKUIPearlEnrollView__setState_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animationView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) animationController];
  [v3 startAnimation];
}

uint64_t __44__BKUIPearlEnrollView__setState_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  CGAffineTransformMakeScale(&v9, 0.2, 0.2);
  v2 = *(a1 + 32);
  v8 = v9;
  [v2 setTransform:&v8];
  CGAffineTransformMakeScale(&v7, 1.0, 1.0);
  v3 = [*(a1 + 32) animationView];
  v8 = v7;
  [v3 setTransform:&v8];

  v4 = [*(a1 + 32) animationView];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) animationController];
  [v5 startAnimation];

  return [*(a1 + 32) layoutIfNeeded];
}

void __44__BKUIPearlEnrollView__setState_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) animationView];
  [v1 setAlpha:1.0];
}

uint64_t __43__BKUIPearlEnrollView_setState_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 552) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didDisappear
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__BKUIPearlEnrollView_didDisappear__block_invoke;
  v2[3] = &unk_278D09978;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0 completion:0.15];
}

- (void)_updateDebugOverlay
{
  if (self->_debugOverlayVisible)
  {
    frameCount = self->_frameCount;
    [(NSDate *)self->_startTime timeIntervalSinceNow];
    v6 = frameCount / -v5;
    debugLabel = self->_debugLabel;
    debugFrameInformation = self->_debugFrameInformation;
    debugStatusInformation = &stru_2853BB280;
    if (!debugFrameInformation)
    {
      debugFrameInformation = &stru_2853BB280;
    }

    debugTemplateInformation = self->_debugTemplateInformation;
    if (!debugTemplateInformation)
    {
      debugTemplateInformation = &stru_2853BB280;
    }

    if (self->_debugStatusInformation)
    {
      debugStatusInformation = self->_debugStatusInformation;
    }

    debugStatusInformation = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\nenroll framerate: %0.2f\n%@\n%@", debugFrameInformation, *&v6, debugTemplateInformation, debugStatusInformation];
    [(UILabel *)debugLabel setText:debugStatusInformation];
  }
}

- (void)_recordDataFrameWithFaceState:(id)state
{
  stateCopy = state;
  state = self->_state;
  v13 = stateCopy;
  if ((state | 2) != 7)
  {
LABEL_5:
    if ((state - 3) > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(NSDate *)self->_stateStart timeIntervalSinceNow];
  if (v6 >= -1.0)
  {
    state = self->_state;
    stateCopy = v13;
    goto LABEL_5;
  }

  debugStatusInformation = self->_debugStatusInformation;
  self->_debugStatusInformation = 0;

LABEL_6:
  pitch = [v13 pitch];
  [pitch doubleValue];
  v10 = v9;
  v11 = [v13 yaw];
  [v11 doubleValue];
  [(BKUIPearlEnrollView *)self setPitch:v10 yaw:v12];

  stateCopy = v13;
LABEL_7:
}

- (void)_updateCorrectionEstimates:(double)estimates yaw:(double)yaw
{
  if (estimates <= 5.0)
  {
    self->_pitchMax = fmax(self->_pitchMax, estimates);
  }

  if (estimates >= -45.0)
  {
    self->_pitchMin = fmin(self->_pitchMin, estimates);
  }

  correctionSamplesCount = self->_correctionSamplesCount;
  if (estimates < -0.1)
  {
    v5 = correctionSamplesCount >= 5;
    v6 = correctionSamplesCount == 5;
  }

  else
  {
    v5 = 1;
    v6 = 0;
  }

  if (v6 || !v5)
  {
    v9 = correctionSamplesCount + 1;
    self->_correctionSamplesCount = v9;
    v10 = self->_pitchCorrectionSamples + estimates;
    self->_pitchCorrectionSamples = v10;
    v11 = v10 / v9;
LABEL_13:
    self->_pitchCorrection = v11;
    return;
  }

  if (correctionSamplesCount >= 6)
  {
    pitchMax = self->_pitchMax;
    pitchMin = self->_pitchMin;
    if (pitchMax - pitchMin >= 10.0)
    {
      v11 = (pitchMax + pitchMin) * 0.5 * 0.1 + self->_pitchCorrection * 0.9;
      goto LABEL_13;
    }
  }
}

- (void)setPitch:(double)pitch yaw:(double)yaw
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = MGGetSInt32Answer() - 22;
  v8 = 10.0;
  if (v7 <= 3)
  {
    v8 = dbl_241B72F08[v7];
  }

  if (self->_stateTransitionInProgress)
  {
    goto LABEL_27;
  }

  pitchCorrection = self->_pitchCorrection;
  v10 = pitch - pitchCorrection;
  self->_currentCorrectedPitch = pitch - pitchCorrection;
  state = self->_state;
  if (state != 4)
  {
    if (state == 7 || state == 5)
    {
      if (!self->_nudging)
      {
        crossHairs = [(BKUIPearlEnrollView *)self crossHairs];
        v14 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
        [crossHairs setTintColor:v14];

        crossHairs2 = [(BKUIPearlEnrollView *)self crossHairs];
        [crossHairs2 setPitch:v10 yaw:yaw];

        crossHairs3 = [(BKUIPearlEnrollView *)self crossHairs];
        [crossHairs3 alpha];
        v18 = v17;

        if (v18 == 0.0)
        {
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __36__BKUIPearlEnrollView_setPitch_yaw___block_invoke;
          v30[3] = &unk_278D09978;
          v30[4] = self;
          [(UIView *)0.5 bkui_animateWithDuration:v30 animations:?];
        }
      }

      v19 = sqrt(yaw * yaw + v10 * v10);
      v20 = atan2(-v10, -yaw);
      v21 = 6.28318531;
      if (v20 >= 0.0)
      {
        v21 = 0.0;
      }

      v22 = v20 + v21;
      if ([(BKUIPearlEnrollView *)self debugOverlayVisible])
      {
        v23 = _BKUILoggingFacility();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = self->_pitchCorrection;
          *buf = 134219520;
          v32 = v10;
          v33 = 2048;
          pitchCopy = pitch;
          v35 = 2048;
          v36 = v24;
          v37 = 2048;
          yawCopy = yaw;
          v39 = 2048;
          yawCopy2 = yaw;
          v41 = 2048;
          v42 = v19;
          v43 = 2048;
          v44 = v22;
          _os_log_impl(&dword_241B0A000, v23, OS_LOG_TYPE_DEFAULT, "P: %0.2f(%0.2f C: %0.2f) Y: %0.2f(%0.2f) M: %0.2f FA: %0.2f", buf, 0x48u);
        }
      }

      if (v19 > 6.0)
      {
        v25 = self->_fillHoldoffFrameCount + 1;
        self->_fillHoldoffFrameCount = v25;
        if (v8 < v25 && [(BKUIPearlPillContainerView *)self->_pillContainer fillPillsAroundAngle:v22]&& self->_nudgesNudged != -1)
        {
          [(BKUIPearlEnrollView *)self _startNudgeTimer];
        }
      }

      if (self->_debugOverlayVisible)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"p: %0.2f, y: %0.2f, angle: %0.2f\n pC: %0.2f", *&pitch, *&yaw, *&v22, *&self->_pitchCorrection];
        debugFrameInformation = self->_debugFrameInformation;
        self->_debugFrameInformation = v26;

        [(BKUIPearlEnrollView *)self _updateDebugOverlay];
      }

      [(BKUIPearlEnrollView *)self _updateCorrectionEstimates:pitch yaw:yaw];
    }

    goto LABEL_27;
  }

  if (!self->_progressiveBlur)
  {
LABEL_27:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  [(BKUIPearlEnrollView *)self _updateRaiseLowerGuidanceLabelIfNeededForPitch:pitch - pitchCorrection];
  [(BKUIPearlEnrollView *)self _progressiveBlurAmountForPitch:v10];
  v29 = *MEMORY[0x277D85DE8];

  [BKUIPearlEnrollView setCameraBlurAmount:"setCameraBlurAmount:useShade:duration:completion:" useShade:1 duration:0 completion:?];
}

void __36__BKUIPearlEnrollView_setPitch_yaw___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) crossHairs];
  [v1 setAlpha:1.0];
}

- (void)updateWithFaceState:(id)state
{
  stateCopy = state;
  if ([stateCopy faceDetected] && (objc_msgSend(stateCopy, "partiallyOutOfView") & 1) == 0)
  {
    [(BKUIPearlEnrollView *)self _recordDataFrameWithFaceState:stateCopy];
  }
}

- (void)updateWithProgress:(id)progress
{
  progressCopy = progress;
  if (!self->_startTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startTime = self->_startTime;
    self->_startTime = date;
  }

  v6 = [MEMORY[0x277CCAB68] stringWithString:@"Templates:\n"];
  enrolledPoses = [progressCopy enrolledPoses];
  if ([enrolledPoses count])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [enrolledPoses objectAtIndexedSubscript:v8];
      if ([v10 count])
      {
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = [v10 objectAtIndexedSubscript:v11];
          [v6 appendFormat:@"%@ ", v13];

          v11 = v12;
        }

        while ([v10 count] > v12++);
      }

      [v6 appendString:@"\n"];

      v8 = ++v9;
    }

    while ([enrolledPoses count] > v9);
  }

  debugTemplateInformation = self->_debugTemplateInformation;
  self->_debugTemplateInformation = v6;

  [(BKUIPearlEnrollView *)self _updateDebugOverlay];
}

- (void)_cleanupUIState
{
  v3 = [BKUIPearlPositioningGuideView alloc];
  [(BKUIPearlEnrollView *)self bounds];
  v4 = [(BKUIPearlPositioningGuideView *)v3 initWithFrame:?];
  [(BKUIPearlPositioningGuideView *)v4 setInSheet:[(BKUIPearlEnrollView *)self inSheet]];
  [(BKUIPearlPositioningGuideView *)v4 setAlpha:0.0];
  [(BKUIPearlEnrollView *)self pillRingRadius];
  [(BKUIPearlPositioningGuideView *)v4 setRingRadius:?];
  [(BKUIPearlEnrollView *)self center];
  [(BKUIPearlPositioningGuideView *)v4 setCenter:?];
  [(BKUIPearlPositioningGuideView *)v4 setRoundedRectMaskLayer:self->_roundedRectMaskLayer];
  [(BKUIPearlEnrollView *)self addSubview:v4];
  [(BKUIPearlPositioningGuideView *)self->_positioningGuide removeFromSuperview];
  positioningGuide = self->_positioningGuide;
  self->_positioningGuide = 0;

  v6 = self->_positioningGuide;
  self->_positioningGuide = v4;
  v7 = v4;

  self->_state = 0;
  stateStart = self->_stateStart;
  self->_stateStart = 0;

  self->_nudgesPaused = 0;
  self->_nudgesNudged = 0;
  pillContainer = [(BKUIPearlEnrollView *)self pillContainer];
  [pillContainer resetPillsAnimated:0];

  [(BKUIPearlEnrollView *)self _stopNudgeTimer];
}

- (double)_progressiveBlurAmountForPitch:(double)pitch
{
  v3 = 0.0;
  if (pitch < -30.0 || pitch > -10.0)
  {
    v5 = vabdd_f64(-30.0, pitch);
    v6 = vabdd_f64(-10.0, pitch);
    if (v5 < v6)
    {
      v6 = v5;
    }

    v3 = v6 * 0.5 + 2.0;
  }

  result = 15.0;
  if (v3 <= 15.0)
  {
    return v3;
  }

  return result;
}

- (void)_updateRaiseLowerGuidanceLabelIfNeededForPitch:(double)pitch
{
  if (self->_state == 4)
  {
    v9[7] = v3;
    v9[8] = v4;
    if (pitch >= -30.0)
    {
      if (pitch <= -10.0)
      {
        return;
      }

      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (!self->_pendingRaiseLowerGuidanceState)
    {
      self->_pendingRaiseLowerGuidanceState = v6;
      [(NSTimer *)self->_raiseLowerGuidanceDelayTimer invalidate];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __70__BKUIPearlEnrollView__updateRaiseLowerGuidanceLabelIfNeededForPitch___block_invoke;
      v9[3] = &unk_278D0A750;
      v9[4] = self;
      v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v9 block:0.25];
      raiseLowerGuidanceDelayTimer = self->_raiseLowerGuidanceDelayTimer;
      self->_raiseLowerGuidanceDelayTimer = v7;
    }
  }
}

uint64_t __70__BKUIPearlEnrollView__updateRaiseLowerGuidanceLabelIfNeededForPitch___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 664);
  *(v1 + 664) = 0;
  return [*(a1 + 32) _setRaiseLowerGuidanceLabelState:v2];
}

- (void)_setRaiseLowerGuidanceLabelState:(unint64_t)state
{
  v4 = @"GENTLY_LOWER";
  if (state != 2)
  {
    v4 = 0;
  }

  if (state == 1)
  {
    v5 = @"GENTLY_RAISE";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v6 localizedStringForKey:v5 value:&stru_2853BB280 table:@"Pearl"];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v5 value:&stru_2853BB280 table:@"Pearl-j3xx"];

    v23 = v10;
  }

  text = [(UILabel *)self->_repositionPhoneLabel text];
  v12 = [v23 isEqualToString:text];

  if ((v12 & 1) == 0)
  {
    [(UILabel *)self->_repositionPhoneLabel setText:v23];
    [(UILabel *)self->_repositionPhoneLabel frame];
    v14 = v13;
    v16 = v15;
    if ([(BKUIPearlEnrollView *)self squareNeedsPositionLayout])
    {
      [(BKUIPearlEnrollView *)self pillRingRadius];
      v18 = v17 + v17;
    }

    else
    {
      [(BKUIPearlEnrollView *)self bounds];
      v20 = v19;
      v21 = +[BKUIStyle sharedStyle];
      [v21 horizontalMarginForView:self];
      v18 = v20 + v22 * -2.0;
    }

    [(UILabel *)self->_repositionPhoneLabel textRectForBounds:[(UILabel *)self->_repositionPhoneLabel numberOfLines] limitedToNumberOfLines:0.0, 0.0, v18, 1.79769313e308];
    [(UILabel *)self->_repositionPhoneLabel setFrame:v14, v16, v18];
    [(BKUIPearlEnrollView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion
{
  shadeCopy = shade;
  v34[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v11 = dispatch_group_create();
  v12 = 0.0;
  if (shadeCopy)
  {
    v12 = amount * 0.5 / 15.0 + 0.2;
  }

  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v13 = amount / 15.0;
    duration = duration * 0.5;
    amount = 0.0;
  }

  dispatch_group_enter(v11);
  v14 = MEMORY[0x277D75D18];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __72__BKUIPearlEnrollView_setCameraBlurAmount_useShade_duration_completion___block_invoke;
  v33[3] = &unk_278D09F88;
  v33[4] = self;
  *&v33[5] = v13;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__BKUIPearlEnrollView_setCameraBlurAmount_useShade_duration_completion___block_invoke_2;
  v31[3] = &unk_278D099C0;
  v15 = v11;
  v32 = v15;
  [(UIView *)v14 bkui_animateWithDuration:v33 animations:v31 completion:duration];
  dispatch_group_enter(v15);
  if (amount <= 0.0)
  {
    v20 = +[BKUIPearlEnrollAnimationManager sharedManager];
    previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
    v25 = *MEMORY[0x277CDA7C8];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__BKUIPearlEnrollView_setCameraBlurAmount_useShade_duration_completion___block_invoke_92;
    v27[3] = &unk_278D09A38;
    v27[4] = self;
    v24 = &v28;
    v28 = v15;
    [v20 runBasicAnimationOnLayer:previewLayer withDuration:@"filters.gaussianBlur.inputRadius" keyPath:0 fromValue:&unk_2853CCBB0 toValue:0 removedOnCompletion:v25 timingFunction:duration completion:v27];
  }

  else
  {
    self->_blurInProgress = 1;
    previewLayer2 = [(BKUIPearlEnrollView *)self previewLayer];
    v17 = +[BKUIPearlEnrollAnimationManager sharedManager];
    v18 = [v17 gaussianBlurWithRadius:0.0];
    v34[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [previewLayer2 setFilters:v19];

    v20 = +[BKUIPearlEnrollAnimationManager sharedManager];
    previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
    v23 = *MEMORY[0x277CDA7C8];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __72__BKUIPearlEnrollView_setCameraBlurAmount_useShade_duration_completion___block_invoke_3;
    v29[3] = &unk_278D09A38;
    v29[4] = self;
    v24 = &v30;
    v30 = v15;
    [v20 runBasicAnimationOnLayer:previewLayer withDuration:@"filters.gaussianBlur.inputRadius" keyPath:0 fromValue:v22 toValue:0 removedOnCompletion:v23 timingFunction:duration completion:v29];
  }

  if (completionCopy)
  {
    dispatch_group_notify(v15, MEMORY[0x277D85CD0], completionCopy);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __72__BKUIPearlEnrollView_setCameraBlurAmount_useShade_duration_completion___block_invoke_92(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[448] & 1) == 0)
  {
    v3 = [v2 previewLayer];
    [v3 setFilters:0];

    v4 = [*(a1 + 32) previewLayer];
    [v4 removeAllAnimations];
  }

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

- (void)setCameraBlurred:(BOOL)blurred
{
  v3 = 0.0;
  if (blurred)
  {
    v3 = 15.0;
  }

  [(BKUIPearlEnrollView *)self setCameraBlurAmount:0 useShade:0 duration:v3 completion:0.5];
}

- (void)setFailed
{
  [(BKUIPearlEnrollView *)self setCameraBlurred:1];

  [(BKUIPearlEnrollView *)self setActive:0];
}

- (void)layoutSubviews
{
  [(BKUIPearlEnrollView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  positioningGuide = self->_positioningGuide;
  [(BKUIPearlEnrollView *)self pillRingRadius];
  [(BKUIPearlPositioningGuideView *)positioningGuide setRingRadius:?];
  if (self->_debugOverlayVisible)
  {
    [(UILabel *)self->_debugLabel sizeToFit];
    [(UILabel *)self->_debugLabel frame];
    [(UILabel *)self->_debugLabel setFrame:10.0, 10.0, v8 + -24.0];
  }

  [(BKUIPearlPillContainerView *)self->_pillContainer bounds];
  v94.origin.x = v12;
  v94.origin.y = v13;
  v94.size.width = v14;
  v94.size.height = v15;
  v91.origin.x = v4;
  v91.origin.y = v6;
  v91.size.width = v8;
  v91.size.height = v10;
  if (!CGRectEqualToRect(v91, v94))
  {
    [(BKUIPearlPillContainerView *)self->_pillContainer setFrame:v4, v6, v8, v10];
    if ([(BKUIPearlEnrollView *)self state]== 2)
    {
      [(BKUIPearlEnrollView *)self tutorialRingRadius];
    }

    else
    {
      [(BKUIPearlEnrollView *)self pillRingRadius];
    }

    v17 = v16;
    pillContainer = self->_pillContainer;
    [(BKUIPearlEnrollView *)self portalCenter];
    [(BKUIPearlPillContainerView *)pillContainer setRadius:0 center:0 animated:v17 completion:v19, v20];
    [(BKUIPearlPillContainerView *)self->_pillContainer setNeedsLayout];
  }

  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 8);
  [(BKUIPearlEnrollView *)self portalRadius];
  v24 = v23 * 2.125;
  crossHairs = [(BKUIPearlEnrollView *)self crossHairs];
  [crossHairs setBounds:{v21, v22, v24, v24}];

  crossHairs2 = [(BKUIPearlEnrollView *)self crossHairs];
  [(BKUIPearlEnrollView *)self portalCenter];
  [crossHairs2 setCenter:?];

  layer = [(BKUIPearlEnrollView *)self layer];
  [layer bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [(UIView *)self->_cameraShadeView setFrame:v29, v31, v33, v35];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v38 = 1.77777778;
  if (userInterfaceIdiom == 1)
  {
    v38 = 1.0;
  }

  v39 = v33 * v38;
  layer2 = [(BKUIPearlEnrollView *)self layer];
  [layer2 bounds];
  v42 = (v41 - v39) * 0.5;

  previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
  [previewLayer setFrame:{v29, v42, v33, v39}];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
    traitCollection = [(BKUIPearlEnrollView *)self traitCollection];
    v47 = [traitCollection horizontalSizeClass] == 0;
  }

  else
  {
    v47 = 0;
  }

  if (!self->_tutorialMovieView && !v47)
  {
    v48 = +[BKUIDevice sharedInstance];
    isN84 = [v48 isN84];

    if (isN84)
    {
      v50 = @"Enrollment_Tutorial_Loop-n84";
    }

    else
    {
      v50 = @"Enrollment_Tutorial_Loop-D22";
    }

    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    if (userInterfaceIdiom3 == 1)
    {
      v53 = @"Enrollment_Tutorial_Loop-j3xx";
    }

    else
    {
      v53 = v50;
    }

    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    if (userInterfaceIdiom4 == 1)
    {
      v56 = [BKUIVideoAssetHelpers iPadVideoURLForAssetName:v53];
    }

    else
    {
      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = [v57 URLForResource:v53 withExtension:@"mov"];
    }

    v58 = [MEMORY[0x277CE6650] assetWithURL:v56];
    [v58 loadValuesAsynchronouslyForKeys:&unk_2853CC8B0 completionHandler:0];
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v60 = [MEMORY[0x277CE65B0] playerItemWithAsset:v58];
    v61 = [objc_alloc(MEMORY[0x277CE6598]) initWithPlayerItem:v60];
    tutorialPlayer = self->_tutorialPlayer;
    self->_tutorialPlayer = v61;

    [(AVPlayer *)self->_tutorialPlayer setMuted:1];
    [(AVPlayer *)self->_tutorialPlayer setAllowsExternalPlayback:0];
    [(BKUIPearlEnrollView *)self tutorialMovieSize];
    v65 = [[BKUIPearlMovieLoopView alloc] initWithFrame:self->_tutorialPlayer player:v58 asset:0.0, 0.0, v63, v64];
    tutorialMovieView = self->_tutorialMovieView;
    self->_tutorialMovieView = v65;

    [(BKUIPearlEnrollView *)self addSubview:self->_tutorialMovieView];
  }

  if ([(BKUIPearlEnrollView *)self state]<= 2 && self->_tutorialMovieView)
  {
    [(BKUIPearlEnrollView *)self tutorialMovieSize];
    v68 = *&v67;
    v88 = v67;
    v70 = v69;
    v92.origin.x = v4;
    v92.origin.y = v6;
    v92.size.width = v8;
    v92.size.height = v10;
    v71 = v8;
    v72 = v10;
    v73 = v6;
    v74 = v4;
    v75 = v68 * 0.5;
    v76 = CGRectGetMidX(v92) - v75;
    [(BKUIPearlEnrollView *)self portalOffset];
    v78 = v76 + v77;
    v93.origin.x = v4;
    v93.origin.y = v73;
    v93.size.width = v71;
    v93.size.height = v72;
    v79 = CGRectGetMidY(v93) - v70 * 0.5;
    [(BKUIPearlEnrollView *)self portalOffset];
    v81 = v79 + v80;
    v4 = v74;
    v6 = v73;
    v10 = v72;
    v8 = v71;
    [(BKUIPearlMovieLoopView *)self->_tutorialMovieView setFrame:v78, v81, *&v88, v70];
    [(BKUIPearlMovieLoopView *)self->_tutorialMovieView _setCornerRadius:v75];
    layer3 = [(BKUIPearlMovieLoopView *)self->_tutorialMovieView layer];
    [layer3 setMasksToBounds:1];

    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice5 userInterfaceIdiom];
  }

  [(BKUIPearlPositioningGuideView *)self->_positioningGuide setFrame:v4, v6, v8, v10];
  [(UIView *)self->_circleMaskView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_roundedRectMaskView setFrame:v4, v6, v8, v10];
  [(BKUIPearlEnrollView *)self center];
  v85 = v84;
  v87 = v86;
  superview = [(BKUIPearlEnrollView *)self superview];
  [(BKUIPearlEnrollView *)self convertPoint:superview fromView:v85, v87];
  [(UILabel *)self->_repositionPhoneLabel setCenter:?];
}

- (void)updatePortalLayoutGuide
{
  v30[4] = *MEMORY[0x277D85DE8];
  portalLayoutGuideConstraints = [(BKUIPearlEnrollView *)self portalLayoutGuideConstraints];

  if (portalLayoutGuideConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    portalLayoutGuideConstraints2 = [(BKUIPearlEnrollView *)self portalLayoutGuideConstraints];
    [v4 deactivateConstraints:portalLayoutGuideConstraints2];

    [(BKUIPearlEnrollView *)self setPortalLayoutGuideConstraints:0];
  }

  [(BKUIPearlEnrollView *)self portalRadius];
  v7 = v6 + v6;
  [(BKUIPearlEnrollView *)self portalOffset];
  v9 = v8;
  v11 = v10;
  portalLayoutGuide = [(BKUIPearlEnrollView *)self portalLayoutGuide];
  widthAnchor = [portalLayoutGuide widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:v7];
  v30[0] = v27;
  portalLayoutGuide2 = [(BKUIPearlEnrollView *)self portalLayoutGuide];
  heightAnchor = [portalLayoutGuide2 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:v7];
  v30[1] = v24;
  portalLayoutGuide3 = [(BKUIPearlEnrollView *)self portalLayoutGuide];
  centerXAnchor = [portalLayoutGuide3 centerXAnchor];
  centerXAnchor2 = [(BKUIPearlEnrollView *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v9];
  v30[2] = v15;
  portalLayoutGuide4 = [(BKUIPearlEnrollView *)self portalLayoutGuide];
  centerYAnchor = [portalLayoutGuide4 centerYAnchor];
  centerYAnchor2 = [(BKUIPearlEnrollView *)self centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v11];
  v30[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [(BKUIPearlEnrollView *)self setPortalLayoutGuideConstraints:v20];

  v21 = MEMORY[0x277CCAAD0];
  portalLayoutGuideConstraints3 = [(BKUIPearlEnrollView *)self portalLayoutGuideConstraints];
  [v21 activateConstraints:portalLayoutGuideConstraints3];

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)expectsRunningVideoCaptureSession:(id)session
{
  active = [(BKUIPearlEnrollView *)self active];
  if (active)
  {
    active = [(BKUIPearlEnrollView *)self state];
    if (active)
    {
      LOBYTE(active) = [(BKUIPearlEnrollView *)self state]< 0xA;
    }
  }

  return active;
}

- (void)startCapture
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_didStartCapture)
  {
    [(BKUIPearlVideoCaptureSession *)self->_videoCaptureSession startCapture];
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      previewLayer = [(BKUIPearlVideoCaptureSession *)self->_videoCaptureSession previewLayer];
      v8 = 138412290;
      v9 = previewLayer;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "insertSublayer:_videoCaptureSession.previewLayer = %@", &v8, 0xCu);
    }

    layer = [(BKUIPearlEnrollView *)self layer];
    previewLayer2 = [(BKUIPearlVideoCaptureSession *)self->_videoCaptureSession previewLayer];
    [layer insertSublayer:previewLayer2 atIndex:0];

    self->_didStartCapture = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_maskPathWithRadius:(double)radius inFrame:(CGRect)frame
{
  v5 = [MEMORY[0x277D75208] bezierPathWithRect:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v6 = MEMORY[0x277D75208];
  [(BKUIPearlEnrollView *)self portalCenter];
  v7 = [v6 bezierPathWithArcCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
  [v5 appendPath:v7];

  return v5;
}

- (id)_enrollMaskPathWithRadius:(double)radius
{
  [(BKUIPearlEnrollView *)self bounds];

  return [(BKUIPearlEnrollView *)self _maskPathWithRadius:radius inFrame:v5, v6, v7, v8];
}

- (void)_runTutorialLoopWithDuration:(double)duration delay:(double)delay loopDelay:(double)loopDelay
{
  v9 = dispatch_get_global_queue(21, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke;
  v10[3] = &unk_278D0A778;
  v10[4] = self;
  *&v10[5] = delay;
  *&v10[6] = duration;
  *&v10[7] = loopDelay;
  dispatch_async(v9, v10);
}

void __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 691) == 1)
  {
    v3 = MEMORY[0x277D85CD0];
    do
    {
      if (*(v1 + 696) != 2)
      {
        break;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke_2;
      block[3] = &unk_278D09978;
      block[4] = *(a1 + 32);
      dispatch_sync(v3, block);
      usleep((*(a1 + 40) * 1000000.0));
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke_3;
      v12[3] = &unk_278D09978;
      v12[4] = *(a1 + 32);
      dispatch_sync(v3, v12);

      usleep(0xF4240u);
      v4 = [MEMORY[0x277CBEAA8] date];
      do
      {
        v5 = [MEMORY[0x277CBEAA8] date];
        [v5 timeIntervalSinceDate:v4];
        v7 = v6;

        v8 = v7 / *(a1 + 48) + v7 / *(a1 + 48);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke_4;
        v11[3] = &unk_278D09F88;
        v9 = v8 * 3.14159265 + -0.392699082;
        v11[4] = *(a1 + 32);
        *&v11[5] = v9;
        dispatch_async(v3, v11);

        usleep(0x493E0u);
        v10 = *(a1 + 32);
      }

      while (*(v10 + 691) == 1 && *(v10 + 696) == 2 && v9 < 6.28318531);
      usleep((*(a1 + 56) * 1000000.0));

      v1 = *(a1 + 32);
    }

    while ((*(v1 + 691) & 1) != 0);
  }
}

uint64_t __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 600);
  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  [v2 seekToTime:&v5];
  LODWORD(v3) = 1.0;
  return [*(*(a1 + 32) + 600) playImmediatelyAtRate:v3];
}

uint64_t __68__BKUIPearlEnrollView__runTutorialLoopWithDuration_delay_loopDelay___block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 696) == 2)
  {
    return [*(v1 + 728) fillPillsAroundAngle:1 forTutorial:*(result + 40)];
  }

  return result;
}

- (void)_nudgeIfNecessary
{
  if (self->_nudgesNudged == -1)
  {
    [BKUIPearlEnrollView _nudgeIfNecessary];
  }

  if (self->_nudgesPaused)
  {

    [(BKUIPearlEnrollView *)self _startNudgeTimer];
  }

  else
  {
    unfilledDirections = [(BKUIPearlPillContainerView *)self->_pillContainer unfilledDirections];
    if ([unfilledDirections count])
    {
      firstObject = [unfilledDirections firstObject];
      integerValue = [firstObject integerValue];

      self->_nudging = 1;
      crossHairs = [(BKUIPearlEnrollView *)self crossHairs];
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
      [crossHairs setTintColor:v7];

      [(BKUIPearlEnrollView *)self setCameraBlurred:1];
      v8 = dispatch_time(0, 300000000);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke;
      v9[3] = &unk_278D09F88;
      v9[4] = self;
      v9[5] = integerValue;
      dispatch_after(v8, MEMORY[0x277D85CD0], v9);
    }
  }
}

void __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) crossHairs];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_2;
  v8 = &unk_278D09978;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  [v2 nudgeInDirection:MEMORY[0x277D85DD0] smallNudgePeak:3221225472 largeNudgePeak:__40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_4 completion:{&unk_278D09F88, v9, v3, MEMORY[0x277D85DD0], 3221225472, __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_3, &unk_278D09978, v9, MEMORY[0x277D85DD0], 3221225472, __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_2, &unk_278D09978, v9}];

  ++*(*(a1 + 32) + 584);
  v4 = [*(a1 + 32) delegate];
  [v4 enrollView:*(a1 + 32) willNudgeInDirection:*(a1 + 40) nudgeCount:*(*(a1 + 32) + 584)];
}

void __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didReachSmallNudgePeakForEnrollView:*(a1 + 32)];
}

void __40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didReachLargeNudgePeakForEnrollView:*(a1 + 32)];
}

void *__40__BKUIPearlEnrollView__nudgeIfNecessary__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setCameraBlurred:0];
  *(*(a1 + 32) + 576) = 0;
  v2 = [*(a1 + 32) delegate];
  [v2 enrollView:*(a1 + 32) didNudgeInDirection:*(a1 + 40) nudgeCount:*(*(a1 + 32) + 584)];

  result = *(a1 + 32);
  if (result[73] != -1)
  {

    return [result _startNudgeTimer];
  }

  return result;
}

- (void)_startNudgeTimer
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_active && !self->_nudging && (self->_state | 2) == 7)
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      *buf = 67109120;
      v10 = state;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Starting nudge timer, state = %i", buf, 8u);
    }

    [(NSTimer *)self->_nudgeTimer invalidate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__BKUIPearlEnrollView__startNudgeTimer__block_invoke;
    v8[3] = &unk_278D0A750;
    v8[4] = self;
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v8 block:4.0];
    nudgeTimer = self->_nudgeTimer;
    self->_nudgeTimer = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__BKUIPearlEnrollView__startNudgeTimer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _nudgeIfNecessary];
  v2 = *(a1 + 32);
  v3 = *(v2 + 568);
  *(v2 + 568) = 0;
}

- (void)_stopNudgeTimer
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_nudgeTimer)
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v7[0] = 67109120;
      v7[1] = state;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Stopping nudge timer, state = %i", v7, 8u);
    }

    [(NSTimer *)self->_nudgeTimer invalidate];
    nudgeTimer = self->_nudgeTimer;
    self->_nudgeTimer = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_animateCircleMaskWithPositioningGuide
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] != 1;

  return v3;
}

- (void)_animateToEntryAnimation
{
  pillContainer = self->_pillContainer;
  [(BKUIPearlEnrollView *)self tutorialRingRadius];
  v5 = v4;
  [(BKUIPearlEnrollView *)self portalCenter];
  [(BKUIPearlPillContainerView *)pillContainer setRadius:0 center:0 animated:v5 completion:v6, v7];
  if (self->_entryAnimationAlreadyRan)
  {
    [(BKUIPearlMovieLoopView *)self->_tutorialMovieView setAlphaHideOnZero:1.0];
    [(BKUIPearlPositioningGuideView *)self->_positioningGuide setAlpha:0.0];
    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "_animateToEntryAnimation: PreviewLayer's opacity will be updated to 0", v11, 2u);
    }

    previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
    [previewLayer setOpacity:0.0];

    [(BKUIPearlPillContainerView *)self->_pillContainer setAlpha:1.0];
  }

  else
  {
    self->_entryAnimationAlreadyRan = 1;
    [(BKUIPearlPillContainerView *)self->_pillContainer setAlpha:1.0];
    tutorialMovieView = self->_tutorialMovieView;

    [(BKUIPearlMovieLoopView *)tutorialMovieView setAlphaHideOnZero:1.0];
  }
}

- (void)_animateToTutorialWithCompletion:(id)completion
{
  completionCopy = completion;
  entryAnimationAlreadyRan = self->_entryAnimationAlreadyRan;
  [(BKUIPearlEnrollView *)self _animateToEntryAnimation];
  v5 = 0.0;
  if (!entryAnimationAlreadyRan)
  {
    v5 = 1.0;
  }

  [(BKUIPearlEnrollView *)self _runTutorialLoopWithDuration:4.5 delay:v5 loopDelay:1.5];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

- (void)_animateToNeedsPositioningFromState:(int)state withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = state == 2;
  v8 = state - 4;
  [(BKUIPearlPositioningGuideView *)self->_positioningGuide setHidden:0];
  [(BKUIPearlEnrollView *)self setCameraBlurred:0];
  [(BKUIPearlEnrollView *)self _nonOccludingCircleMaskRadius];
  v9 = [(BKUIPearlEnrollView *)self _enrollMaskPathWithRadius:?];
  v10 = v9;
  if ((state - 4) < 6)
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      if ([(BKUIPearlEnrollView *)self needsMaskedNeedsPositionStyleEnrollment])
      {
        [(BKUIPearlPositioningGuideView *)self->_positioningGuide prepareMaskLayerForReducedMotionOpenTransition];
      }

      v11 = MEMORY[0x277D75D18];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke;
      v38[3] = &unk_278D09978;
      v38[4] = self;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_2;
      v35[3] = &unk_278D0A7A0;
      v35[4] = self;
      v36 = v10;
      v37 = completionCopy;
      [(UIView *)v11 bkui_animateWithDuration:v38 animations:v35 completion:0.3];

      v12 = v36;
    }

    else
    {
      _animateCircleMaskWithPositioningGuide = [(BKUIPearlEnrollView *)self _animateCircleMaskWithPositioningGuide];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_6;
      aBlock[3] = &unk_278D0A7F0;
      v34 = _animateCircleMaskWithPositioningGuide;
      aBlock[4] = self;
      v32 = v10;
      v33 = completionCopy;
      v14 = _Block_copy(aBlock);
      objc_initWeak(location, self);
      if (v8 > 4)
      {
        WeakRetained = objc_loadWeakRetained(location);
        pillContainer = [WeakRetained pillContainer];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_14;
        v27[3] = &unk_278D09E20;
        v28 = v14;
        [pillContainer setAllPillState:4 animated:1 completion:v27];
      }

      else
      {
        pillContainer = self->_pillContainer;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_13;
        v29[3] = &unk_278D09E20;
        v30 = v14;
        [(BKUIPearlPillContainerView *)pillContainer setAllPillState:4 animated:1 completion:v29];
        WeakRetained = v30;
      }

      objc_destroyWeak(location);
      v12 = v32;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (state)
  {
    -[CAShapeLayer setPath:](self->_circleMaskLayer, "setPath:", [v9 CGPath]);
    [(UIView *)self->_circleMaskView setAlpha:1.0];
    if ([(BKUIPearlEnrollView *)self needsMaskedNeedsPositionStyleEnrollment])
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      positioningGuide = self->_positioningGuide;
      if (IsReduceMotionEnabled)
      {
        [(BKUIPearlPositioningGuideView *)positioningGuide prepareMaskLayerForReducedMotionOpenTransition];
      }

      else
      {
        [(BKUIPearlPositioningGuideView *)positioningGuide prepareMaskLayerForStartToOpenTransition];
      }

      [(UIView *)self->_roundedRectMaskView setAlpha:1.0];
    }

    if (state == 2)
    {
      previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
      [(BKUIPearlEnrollView *)self _needsPositioningPreviewTransform];
      [previewLayer setTransform:location];

      [(BKUIPearlPositioningGuideView *)self->_positioningGuide resetValuesToStart];
    }

    v21 = MEMORY[0x277D75D18];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_15;
    v25[3] = &unk_278D09978;
    v25[4] = self;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_16;
    v22[3] = &unk_278D0A138;
    v22[4] = self;
    v24 = v7;
    v23 = completionCopy;
    [(UIView *)v21 bkui_animateWithDuration:v25 animations:v22 completion:0.3];
    v12 = v23;
    goto LABEL_20;
  }

  [(BKUIPearlEnrollView *)self _updateToNeedsPositionWithoutAnimationWithCompletion:completionCopy];
LABEL_21:
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 624) setAlpha:0.0];
  v2 = [*(a1 + 32) previewLayer];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _needsPositioningPreviewTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [v2 setTransform:v5];

  return [*(*(a1 + 32) + 728) setAlpha:0.0];
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 632) setPath:{objc_msgSend(*(a1 + 40), "CGPath")}];
  [*(*(a1 + 32) + 624) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 616);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_3;
  v4[3] = &unk_278D0A000;
  v4[4] = v2;
  v5 = *(a1 + 48);
  [v3 animateToOpenValuesOverDuration:2 curve:v4 completion:0.0];
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_4;
  v4[3] = &unk_278D09978;
  v4[4] = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_5;
  v2[3] = &unk_278D09D30;
  v3 = *(a1 + 40);
  [(UIView *)v1 bkui_animateWithDuration:v4 animations:v2 completion:0.3];
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_6(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 32);
    [v2 pillRingRadius];
    v3 = [v2 _enrollMaskPathWithRadius:?];
    v4 = +[BKUIPearlEnrollAnimationManager sharedManager];
    v5 = *(*(a1 + 32) + 632);
    v6 = [v5 path];
    v7 = [v3 CGPath];
    v8 = *MEMORY[0x277CDA7B0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_7;
    v17[3] = &unk_278D09A38;
    v9 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v9;
    [v4 runBasicAnimationOnLayer:v5 withDuration:@"path" keyPath:v6 fromValue:v7 toValue:1 removedOnCompletion:v8 timingFunction:0.1 completion:v17];
  }

  v10 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_8;
  v15[3] = &unk_278D09978;
  v16 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_9;
  v11[3] = &unk_278D0A7C8;
  v11[4] = v16;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v12 = *(a1 + 40);
  [(UIView *)v10 bkui_animateWithDuration:v15 animations:v11 completion:0.1];
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 632);
  v2 = [*(a1 + 40) CGPath];

  return [v1 setPath:v2];
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_8(uint64_t a1)
{
  [*(*(a1 + 32) + 728) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 616);

  return [v2 setAlpha:1.0];
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_9(uint64_t a1)
{
  [*(*(a1 + 32) + 728) resetPillsAnimated:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 616);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_10;
  v13[3] = &unk_278D0A000;
  v13[4] = v2;
  v14 = *(a1 + 48);
  [v3 animateToOpenValuesOverDuration:2 curve:v13 completion:0.8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_11;
  v12[3] = &unk_278D09978;
  v12[4] = *(a1 + 32);
  [(UIView *)MEMORY[0x277D75D18] bkui_animateWithDuration:v12 delay:0 options:0.4 animations:0.1 completion:?];
  if (*(a1 + 56) == 1)
  {
    v4 = +[BKUIPearlEnrollAnimationManager sharedManager];
    v5 = *(*(a1 + 32) + 632);
    v6 = [v5 path];
    v7 = [*(a1 + 40) CGPath];
    v8 = *MEMORY[0x277CDA7B0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_12;
    v10[3] = &unk_278D09A38;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v4 runBasicAnimationOnLayer:v5 withDuration:@"path" keyPath:v6 fromValue:v7 toValue:1 removedOnCompletion:v8 timingFunction:0.5 completion:v10];
  }
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_10(uint64_t a1, int a2)
{
  if (a2 && !UIAccessibilityIsReduceMotionEnabled())
  {
    [*(*(a1 + 32) + 616) breathe];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) previewLayer];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _needsPositioningPreviewTransform];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [v2 setTransform:v4];
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_12(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 632);
  v2 = [*(a1 + 40) CGPath];

  return [v1 setPath:v2];
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_15(uint64_t a1)
{
  [*(*(a1 + 32) + 456) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 616);

  return [v2 setAlpha:1.0];
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_16(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_17;
  v6[3] = &unk_278D09978;
  v2 = *(a1 + 40);
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_128;
  v3[3] = &unk_278D0A138;
  v5 = *(a1 + 48);
  v3[4] = v7;
  v4 = v2;
  [(UIView *)v1 bkui_animateWithDuration:v6 animations:v3 completion:0.3];
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_17(uint64_t a1)
{
  [*(*(a1 + 32) + 736) setAlphaHideOnZero:0.0];
  [*(*(a1 + 32) + 728) setAlpha:0.0];
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "_animateToNeedsPositioningFromState: PreviewLayer's opacity will be updated to 1", v5, 2u);
  }

  v3 = [*(a1 + 32) previewLayer];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];
}

void __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_128(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v10 = v1;
    v11 = v2;
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 616);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_2_129;
    v8[3] = &unk_278D0A000;
    v8[4] = v4;
    v9 = v3;
    [v5 animateToOpenValuesOverDuration:2 curve:v8 completion:0.8];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

uint64_t __74__BKUIPearlEnrollView__animateToNeedsPositioningFromState_withCompletion___block_invoke_2_129(uint64_t a1, int a2)
{
  if (a2 && !UIAccessibilityIsReduceMotionEnabled())
  {
    [*(*(a1 + 32) + 616) breathe];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_updateToNeedsPositionWithoutAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlPositioningGuideView *)self->_positioningGuide setHidden:0];
  [(BKUIPearlEnrollView *)self setCameraBlurred:0];
  [(BKUIPearlEnrollView *)self _nonOccludingCircleMaskRadius];
  v5 = [(BKUIPearlEnrollView *)self _enrollMaskPathWithRadius:?];
  -[CAShapeLayer setPath:](self->_circleMaskLayer, "setPath:", [v5 CGPath]);
  [(UIView *)self->_circleMaskView setAlpha:1.0];
  if ([(BKUIPearlEnrollView *)self needsMaskedNeedsPositionStyleEnrollment])
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    positioningGuide = self->_positioningGuide;
    if (IsReduceMotionEnabled)
    {
      [(BKUIPearlPositioningGuideView *)positioningGuide prepareMaskLayerForReducedMotionOpenTransition];
    }

    else
    {
      [(BKUIPearlPositioningGuideView *)positioningGuide prepareMaskLayerForStartToOpenTransition];
    }

    [(UIView *)self->_roundedRectMaskView setAlpha:1.0];
  }

  previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
  [(BKUIPearlEnrollView *)self _needsPositioningPreviewTransform];
  [previewLayer setTransform:buf];

  [(BKUIPearlPositioningGuideView *)self->_positioningGuide resetValuesToStart];
  [(UILabel *)self->_repositionPhoneLabel setAlpha:0.0];
  [(BKUIPearlPositioningGuideView *)self->_positioningGuide setAlpha:1.0];
  [(BKUIPearlMovieLoopView *)self->_tutorialMovieView setAlphaHideOnZero:0.0];
  [(BKUIPearlPillContainerView *)self->_pillContainer setAlpha:0.0];
  v9 = _BKUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "_updateToNeedsPositionWithoutAnimationWithCompletion: PreviewLayer's opacity will be updated to 1", buf, 2u);
  }

  previewLayer2 = [(BKUIPearlEnrollView *)self previewLayer];
  LODWORD(v11) = 1.0;
  [previewLayer2 setOpacity:v11];

  v12 = self->_positioningGuide;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__BKUIPearlEnrollView__updateToNeedsPositionWithoutAnimationWithCompletion___block_invoke;
  v14[3] = &unk_278D0A000;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(BKUIPearlPositioningGuideView *)v12 animateToOpenValuesOverDuration:2 curve:v14 completion:0.0];
}

uint64_t __76__BKUIPearlEnrollView__updateToNeedsPositionWithoutAnimationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2 && !UIAccessibilityIsReduceMotionEnabled())
  {
    [*(*(a1 + 32) + 616) breathe];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_animateToNeedsCenterBinWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_progressiveBlur = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke;
  aBlock[3] = &unk_278D09E98;
  aBlock[4] = self;
  v5 = completionCopy;
  v21 = v5;
  v6 = _Block_copy(aBlock);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v6[2](v6);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_5;
    v18[3] = &unk_278D09E98;
    v18[4] = self;
    v7 = v6;
    v19 = v7;
    v8 = _Block_copy(v18);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_7;
    v15[3] = &unk_278D09BC0;
    v15[4] = self;
    v9 = v8;
    v16 = v9;
    v17 = v7;
    v10 = _Block_copy(v15);
    v11 = _Block_copy(v10);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v14 = _Block_copy(v9);

      v11 = v14;
    }

    v11[2](v11);
  }
}

uint64_t __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_2;
  block[3] = &unk_278D09978;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 696) == 4)
  {
    [v2 _updateRaiseLowerGuidanceLabelIfNeededForPitch:*(v2 + 440)];
    [*(a1 + 32) setNeedsLayout];
    objc_initWeak(&location, *(a1 + 32));
    v3 = *(a1 + 32);
    [v3 _progressiveBlurAmountForPitch:v3[55]];
    v5 = v4 + 1.0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_3;
    v6[3] = &unk_278D09950;
    objc_copyWeak(&v7, &location);
    [v3 setCameraBlurAmount:1 useShade:v6 duration:v5 completion:1.0];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 174) == 4)
  {
    *(WeakRetained + 432) = 1;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_4;
    v3[3] = &unk_278D09978;
    v3[4] = WeakRetained;
    [(UIView *)0.5 bkui_animateWithDuration:v3 animations:?];
  }
}

void __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 616);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_6;
  v4[3] = &unk_278D0A000;
  v4[4] = v2;
  v5 = v1;
  [v3 animateToOpenValuesOverDuration:0 curve:v4 completion:0.4];
}

uint64_t __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_6(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 616) breathe];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 616);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_8;
  v3[3] = &unk_278D09D08;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 animateToPopOutValuesOverDuration:v3 completion:0.4];
}

uint64_t __62__BKUIPearlEnrollView__animateToNeedsCenterBinWithCompletion___block_invoke_8(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + v2) + 16))();
}

- (void)_animateToScanningStateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlEnrollView *)self setCameraBlurred:0];
  pillContainer = self->_pillContainer;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  [(BKUIPearlPillContainerView *)self->_pillContainer alpha];
  [(BKUIPearlPillContainerView *)pillContainer setAllPillState:v6 animated:v7 > 0.0 completion:0];
  v8 = self->_pillContainer;
  [(BKUIPearlEnrollView *)self pillRingRadius];
  v10 = v9;
  [(BKUIPearlEnrollView *)self portalCenter];
  [(BKUIPearlPillContainerView *)v8 setRadius:0 center:0 animated:v10 completion:v11, v12];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke;
  v33[3] = &unk_278D09978;
  v33[4] = self;
  [(UIView *)MEMORY[0x277D75D18] bkui_animateWithDuration:v33 delay:0 options:0.3 animations:0.0 completion:?];
  _animateCircleMaskWithPositioningGuide = [(BKUIPearlEnrollView *)self _animateCircleMaskWithPositioningGuide];
  [(BKUIPearlEnrollView *)self portalRadius];
  v14 = [(BKUIPearlEnrollView *)self _enrollMaskPathWithRadius:?];
  cGPath = [v14 CGPath];

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [(BKUIPearlPositioningGuideView *)self->_positioningGuide setAlpha:0.0];
    if (!CGPathEqualToPath([(CAShapeLayer *)self->_circleMaskLayer path], cGPath))
    {
      [(UIView *)self->_circleMaskView setAlpha:0.0];
      [(CAShapeLayer *)self->_circleMaskLayer setPath:cGPath];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_2;
      v32[3] = &unk_278D09978;
      v32[4] = self;
      [(UIView *)0.4 bkui_animateWithDuration:v32 animations:?];
    }
  }

  else if (_animateCircleMaskWithPositioningGuide)
  {
    v16 = +[BKUIPearlEnrollAnimationManager sharedManager];
    circleMaskLayer = self->_circleMaskLayer;
    path = [(CAShapeLayer *)circleMaskLayer path];
    v19 = *MEMORY[0x277CDA7C0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_3;
    v31[3] = &unk_278D09F88;
    v31[4] = self;
    v31[5] = cGPath;
    [v16 runBasicAnimationOnLayer:circleMaskLayer withDuration:@"path" keyPath:path fromValue:cGPath toValue:1 removedOnCompletion:v19 timingFunction:0.5 completion:v31];
  }

  positioningGuide = self->_positioningGuide;
  [(BKUIPearlEnrollView *)self portalCenter];
  v22 = v21;
  v24 = v23;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_4;
  v28[3] = &unk_278D0A138;
  v30 = _animateCircleMaskWithPositioningGuide;
  v28[4] = self;
  v29 = completionCopy;
  v25 = completionCopy;
  [(BKUIPearlPositioningGuideView *)positioningGuide animateToFinishedValuesOverDuration:v28 center:0.5 completion:v22, v24];
  v26 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_8;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_after(v26, MEMORY[0x277D85CD0], block);
}

void __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = &off_241B72000;
  if (!UIAccessibilityIsReduceMotionEnabled() && (*(a1 + 48) & 1) == 0)
  {
    v3 = *(a1 + 32);
    [v3 pillRingRadius];
    v4 = [v3 _enrollMaskPathWithRadius:?];
    [*(*(a1 + 32) + 632) setPath:{objc_msgSend(v4, "CGPath")}];
    v5 = *(a1 + 32);
    [v5 portalRadius];
    v6 = [v5 _enrollMaskPathWithRadius:?];
    v7 = +[BKUIPearlEnrollAnimationManager sharedManager];
    v8 = *(*(a1 + 32) + 632);
    v9 = [v8 path];
    v10 = [v6 CGPath];
    v11 = *MEMORY[0x277CDA7C0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_5;
    v19[3] = &unk_278D09A38;
    v19[4] = *(a1 + 32);
    v20 = v6;
    v12 = v6;
    v2 = &off_241B72000;
    [v7 runBasicAnimationOnLayer:v8 withDuration:@"path" keyPath:v9 fromValue:v10 toValue:1 removedOnCompletion:v11 timingFunction:0.2 completion:v19];
  }

  v13 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_6;
  v17[3] = &unk_278D09978;
  v14 = *(a1 + 40);
  v18 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_7;
  v15[3] = &unk_278D0A000;
  v15[4] = v18;
  v16 = v14;
  [(UIView *)v13 bkui_animateWithDuration:v17 animations:v15 completion:v2[274]];
}

uint64_t __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 632);
  v2 = [*(a1 + 40) CGPath];

  return [v1 setPath:v2];
}

uint64_t __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 728) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 616);

  return [v2 setAlpha:0.0];
}

uint64_t __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_7(uint64_t a1)
{
  [*(*(a1 + 32) + 616) setHidden:1];
  v2 = [*(*(a1 + 32) + 728) unstashPillStatesIfNeededAnimated:1];
  if (!UIAccessibilityIsReduceMotionEnabled() && (v2 & 1) == 0)
  {
    [*(*(a1 + 32) + 728) setAllPillState:2 animated:1 completion:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_8(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_9;
  v1[3] = &unk_278D09978;
  v1[4] = *(a1 + 32);
  [(UIView *)0.4 bkui_animateWithDuration:v1 animations:?];
}

void __61__BKUIPearlEnrollView__animateToScanningStateWithCompletion___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) previewLayer];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _scanningAndPartialCapturePreviewTransform];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [v2 setTransform:v4];
}

- (void)_animateToFirstScanWithCompletion:(id)completion
{
  pillContainer = self->_pillContainer;
  completionCopy = completion;
  [(BKUIPearlPillContainerView *)pillContainer setAlpha:0.0];
  [(BKUIPearlEnrollView *)self _animateToScanningStateWithCompletion:completionCopy];
}

- (void)_animateToFirstScanCompleteWithCompletion:(id)completion
{
  pillContainer = self->_pillContainer;
  completionCopy = completion;
  [(BKUIPearlPillContainerView *)pillContainer setAllPillState:5 animated:1 completion:0];
  [(BKUIPearlEnrollView *)self setCameraBlurred:1];
  v5 = self->_pillContainer;
  [(BKUIPearlEnrollView *)self completedRingRadius];
  v7 = v6;
  [(BKUIPearlEnrollView *)self portalCenter];
  [(BKUIPearlPillContainerView *)v5 setRadius:1 center:completionCopy animated:v7 completion:v8, v9];
}

- (void)_animateToScanCompleteWithCompletion:(id)completion
{
  pillContainer = self->_pillContainer;
  completionCopy = completion;
  [(BKUIPearlPillContainerView *)pillContainer setAllPillState:5 animated:1 completion:0];
  [(BKUIPearlEnrollView *)self setCameraBlurred:1];
  v5 = self->_pillContainer;
  [(BKUIPearlEnrollView *)self completedRingRadius];
  v7 = v6;
  [(BKUIPearlEnrollView *)self portalCenter];
  [(BKUIPearlPillContainerView *)v5 setRadius:1 center:completionCopy animated:v7 completion:v8, v9];
}

- (void)_animateToFinishedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(BKUIPearlEnrollView *)self squareNeedsPositionLayout])
  {
    [(BKUIPearlEnrollView *)self bounds];
    v8 = [(BKUIPearlEnrollView *)self _maskPathWithRadius:0.001 inFrame:v4, v5, v6, v7];
    cGPath = [v8 CGPath];

    v10 = +[BKUIPearlEnrollAnimationManager sharedManager];
    circleMaskLayer = self->_circleMaskLayer;
    [(BKUIPearlEnrollView *)self portalRadius];
    v12 = [(BKUIPearlEnrollView *)self _enrollMaskPathWithRadius:?];
    cGPath2 = [v12 CGPath];
    [v10 runBasicAnimationOnLayer:circleMaskLayer withDuration:@"path" keyPath:cGPath2 fromValue:cGPath toValue:0 removedOnCompletion:*MEMORY[0x277CDA7C0] timingFunction:0.3 completion:completionCopy];

    [(CAShapeLayer *)self->_circleMaskLayer setPath:cGPath];
  }
}

- (void)_animateToPartialCaptureWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlEnrollView *)self setCameraBlurred:1];
  [(BKUIPearlPillContainerView *)self->_pillContainer setAllPillState:5 animated:1 completion:0];
  pillContainer = self->_pillContainer;
  [(BKUIPearlEnrollView *)self pillRingRadius];
  v7 = v6;
  [(BKUIPearlEnrollView *)self portalCenter];
  [(BKUIPearlPillContainerView *)pillContainer setRadius:1 center:0 animated:v7 completion:v8, v9];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke;
  v30[3] = &unk_278D09978;
  v30[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:516 delay:v30 options:0 animations:0.3 completion:0.0];
  _animateCircleMaskWithPositioningGuide = [(BKUIPearlEnrollView *)self _animateCircleMaskWithPositioningGuide];
  [(BKUIPearlEnrollView *)self portalRadius];
  v11 = [(BKUIPearlEnrollView *)self _enrollMaskPathWithRadius:?];
  cGPath = [v11 CGPath];

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [(BKUIPearlPositioningGuideView *)self->_positioningGuide setAlpha:0.0];
    if (!CGPathEqualToPath([(CAShapeLayer *)self->_circleMaskLayer path], cGPath))
    {
      [(UIView *)self->_circleMaskView setAlpha:0.0];
      [(CAShapeLayer *)self->_circleMaskLayer setPath:cGPath];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_2;
      v29[3] = &unk_278D09978;
      v29[4] = self;
      [(UIView *)0.4 bkui_animateWithDuration:v29 animations:?];
    }
  }

  else if (_animateCircleMaskWithPositioningGuide)
  {
    v13 = +[BKUIPearlEnrollAnimationManager sharedManager];
    circleMaskLayer = self->_circleMaskLayer;
    path = [(CAShapeLayer *)circleMaskLayer path];
    v16 = *MEMORY[0x277CDA7C0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_3;
    v28[3] = &unk_278D09F88;
    v28[4] = self;
    v28[5] = cGPath;
    [v13 runBasicAnimationOnLayer:circleMaskLayer withDuration:@"path" keyPath:path fromValue:cGPath toValue:1 removedOnCompletion:v16 timingFunction:0.5 completion:v28];
  }

  positioningGuide = self->_positioningGuide;
  [(BKUIPearlEnrollView *)self portalCenter];
  v19 = v18;
  v21 = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_4;
  v25[3] = &unk_278D0A138;
  v27 = _animateCircleMaskWithPositioningGuide;
  v25[4] = self;
  v26 = completionCopy;
  v22 = completionCopy;
  [(BKUIPearlPositioningGuideView *)positioningGuide animateToFinishedValuesOverDuration:v25 center:0.5 completion:v19, v21];
  v23 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_8;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_after(v23, MEMORY[0x277D85CD0], block);
}

void __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = &off_241B72000;
  if (!UIAccessibilityIsReduceMotionEnabled() && (*(a1 + 48) & 1) == 0)
  {
    v3 = *(a1 + 32);
    [v3 pillRingRadius];
    v4 = [v3 _enrollMaskPathWithRadius:?];
    [*(*(a1 + 32) + 632) setPath:{objc_msgSend(v4, "CGPath")}];
    v5 = *(a1 + 32);
    [v5 portalRadius];
    v6 = [v5 _enrollMaskPathWithRadius:?];
    v7 = +[BKUIPearlEnrollAnimationManager sharedManager];
    v8 = *(*(a1 + 32) + 632);
    v9 = [v8 path];
    v10 = [v6 CGPath];
    v11 = *MEMORY[0x277CDA7C0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_5;
    v19[3] = &unk_278D09A38;
    v19[4] = *(a1 + 32);
    v20 = v6;
    v12 = v6;
    v2 = &off_241B72000;
    [v7 runBasicAnimationOnLayer:v8 withDuration:@"path" keyPath:v9 fromValue:v10 toValue:1 removedOnCompletion:v11 timingFunction:0.2 completion:v19];
  }

  v13 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_6;
  v17[3] = &unk_278D09978;
  v14 = *(a1 + 40);
  v18 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_7;
  v15[3] = &unk_278D0A000;
  v15[4] = v18;
  v16 = v14;
  [(UIView *)v13 bkui_animateWithDuration:v17 animations:v15 completion:v2[274]];
}

uint64_t __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 632);
  v2 = [*(a1 + 40) CGPath];

  return [v1 setPath:v2];
}

uint64_t __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 728) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 616);

  return [v2 setAlpha:0.0];
}

uint64_t __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_7(uint64_t a1)
{
  [*(*(a1 + 32) + 616) setHidden:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_8(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_9;
  v1[3] = &unk_278D09978;
  v1[4] = *(a1 + 32);
  [(UIView *)0.4 bkui_animateWithDuration:v1 animations:?];
}

void __62__BKUIPearlEnrollView__animateToPartialCaptureWithCompletion___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) previewLayer];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _scanningAndPartialCapturePreviewTransform];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [v2 setTransform:v4];
}

- (CGSize)tutorialMovieSize
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {

    goto LABEL_5;
  }

  inSheet = [(BKUIPearlEnrollView *)self inSheet];

  if (inSheet)
  {
LABEL_5:
    v5 = 133.333333;
    goto LABEL_6;
  }

  v5 = 200.0;
LABEL_6:
  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)portalRadius
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    inSheet = [(BKUIPearlEnrollView *)self inSheet];

    if (!inSheet)
    {
      positioningGuide = self->_positioningGuide;

      [(BKUIPearlPositioningGuideView *)positioningGuide minimumMaskLayerDistanceFromCenter];
      return result;
    }
  }

  else
  {
  }

  v7 = +[BKUIDevice sharedInstance];
  if ([v7 isZoomEnabled])
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v9 = [currentDevice2 userInterfaceIdiom] == 0;

    v10 = dbl_241B72EF0[v9];
  }

  else
  {

    v10 = 150.0;
  }

  if ([(BKUIPearlEnrollView *)self squareNeedsPositionLayout])
  {
    v11 = +[BKUIDevice sharedInstance];
    isZoomEnabled = [v11 isZoomEnabled];

    if (isZoomEnabled)
    {
      v13 = +[BKUIDevice sharedInstance];
      if ([v13 mainScreenClass] == 31)
      {
        [(BKUIPearlEnrollView *)self bounds];
        v10 = v14 * 0.5 + -60.0;
      }

      else
      {
        v16 = +[BKUIDevice sharedInstance];
        mainScreenClass = [v16 mainScreenClass];
        [(BKUIPearlEnrollView *)self bounds];
        v19 = -45.0;
        if (mainScreenClass == 39)
        {
          v19 = -60.0;
        }

        v10 = v18 * 0.5 + v19;
      }
    }

    else
    {
      [(BKUIPearlEnrollView *)self bounds];
      return v15 * 0.5 + -48.6 + -5.0;
    }
  }

  return v10;
}

- (double)_nonOccludingCircleMaskRadius
{
  [(BKUIPearlEnrollView *)self bounds];
  v4 = v3;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    return v4;
  }

  [(BKUIPearlPositioningGuideView *)self->_positioningGuide maximumMaskLayerDistanceFromCenter];
  return sqrt(v7 * v7 + v7 * v7);
}

- (double)tutorialRingRadius
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    inSheet = [(BKUIPearlEnrollView *)self inSheet];

    if (!inSheet)
    {
      return 172.5;
    }
  }

  else
  {
  }

  return 116.0;
}

- (CGPoint)portalCenter
{
  [(BKUIPearlEnrollView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(BKUIPearlEnrollView *)self bounds];
  MidY = CGRectGetMidY(v8);
  v5 = MidX;
  result.y = MidY;
  result.x = v5;
  return result;
}

- (CGPoint)portalOffset
{
  [(BKUIPearlEnrollView *)self portalCenter];
  v4 = v3;
  v6 = v5;
  [(BKUIPearlEnrollView *)self bounds];
  v7 = v4 - CGRectGetMidX(v11);
  [(BKUIPearlEnrollView *)self bounds];
  v8 = v6 - CGRectGetMidY(v12);
  v9 = v7;
  result.y = v8;
  result.x = v9;
  return result;
}

- (double)_previewZoomLevel
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    return 0.8;
  }

  previewLayer = [(BKUIPearlEnrollView *)self previewLayer];
  [previewLayer bounds];
  v7 = v6;

  [(BKUIPearlEnrollView *)self portalRadius];
  return (v8 + 5.0 + v8 + 5.0) / v7;
}

- (CATransform3D)_scanningAndPartialCapturePreviewTransform
{
  [(BKUIPearlEnrollView *)self portalOffset];
  v6 = v5;
  v8 = v7;
  [(BKUIPearlEnrollView *)self _previewZoomLevel];
  memset(&v14, 0, sizeof(v14));
  CATransform3DMakeScale(&v14, v9, v9, v9);
  memset(&v13, 0, sizeof(v13));
  CATransform3DMakeTranslation(&v13, v6, v8, 0.0);
  a = v14;
  v11 = v13;
  return CATransform3DConcat(retstr, &a, &v11);
}

- (CATransform3D)_needsPositioningPreviewTransform
{
  v5 = MEMORY[0x277CD9DE8];
  v6 = *(MEMORY[0x277CD9DE8] + 80);
  *&retstr->m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&retstr->m33 = v6;
  v7 = v5[7];
  *&retstr->m41 = v5[6];
  *&retstr->m43 = v7;
  v8 = v5[1];
  *&retstr->m11 = *v5;
  *&retstr->m13 = v8;
  v9 = v5[3];
  *&retstr->m21 = v5[2];
  *&retstr->m23 = v9;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(BKUIPearlEnrollView *)self portalOffset];
    v14 = v13;
    v16 = v15;
    [(BKUIPearlEnrollView *)self _previewZoomLevel];
    v18 = v17;
    [(BKUIPearlVideoCaptureSession *)self->_videoCaptureSession additionalPreviewScalingAllowedByCameraFormat];
    memset(&v23, 0, sizeof(v23));
    CATransform3DMakeScale(&v23, v18 * v19, v18 * v19, v18 * v19);
    memset(&v22, 0, sizeof(v22));
    CATransform3DMakeTranslation(&v22, v14, v16, 0.0);
    a = v23;
    v20 = v22;
    return CATransform3DConcat(retstr, &a, &v20);
  }

  return result;
}

- (void)setMovieViewHidden:(BOOL)hidden
{
  tutorialMovieView = self->_tutorialMovieView;
  if (hidden)
  {
    [(BKUIPearlMovieLoopView *)tutorialMovieView hideAVPlayerReplaceWithSnapshot];
  }

  else
  {
    [(BKUIPearlMovieLoopView *)tutorialMovieView unhideAVPlayerRemoveSnapshot];
  }
}

- (BOOL)needsMaskedNeedsPositionStyleEnrollment
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1 || -[BKUIPearlEnrollView squareNeedsPositionLayout](self, "squareNeedsPositionLayout");

  return v4;
}

- (void)setPillsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  pillContainer = [(BKUIPearlEnrollView *)self pillContainer];
  v6 = pillContainer;
  v5 = 1.0;
  if (hiddenCopy)
  {
    v5 = 0.0;
  }

  [pillContainer setAlpha:v5];
}

- (void)setCrosshairsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  crossHairs = [(BKUIPearlEnrollView *)self crossHairs];
  v6 = crossHairs;
  v5 = 1.0;
  if (hiddenCopy)
  {
    v5 = 0.0;
  }

  [crossHairs setAlpha:v5];
}

- (BKUIPearlEnrollViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKUIPearlEnrollViewStateTransitionDelegate)transitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDelegate);

  return WeakRetained;
}

@end