@interface CAMPreviewView
- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIP;
- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIPOriginWithSize:(SEL)a3;
- (BOOL)_isFrontPIPAtAnAnchor;
- (CAMPreviewView)initWithFrame:(CGRect)a3 initialPreviewAspectMode:(int64_t)a4 initialWindowedPreviewAspectMode:(int64_t)a5;
- (CGPoint)_pipAnchorPointForPIPSize:(CGSize)a3;
- (CGPoint)captureDevicePointOfInterestForPoint:(CGPoint)a3;
- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)a3;
- (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)a3 angle:(double)a4;
- (CGRect)_frameClampedToBounds:(CGRect)a3;
- (CGRect)_frameForAVMetadataObject:(id)a3;
- (CGRect)faceIndicatorFrameForFaceResult:(id)a3;
- (CGRect)fixedSizeSubjectIndicatorFrameForBodyResult:(id)a3;
- (CGRect)fixedSizeSubjectIndicatorFrameForFaceResult:(id)a3;
- (CGRect)frameForMetadataObjectResult:(id)a3;
- (CGRect)frameForMetadataObjectResult:(id)a3 fixedSize:(CGSize)a4;
- (CGRect)frameForSubjectGroupResult:(id)a3 minimumSize:(CGSize)a4;
- (CGRect)frameForTextRegionResult:(id)a3;
- (CGRect)normalizedZoomPIPRect;
- (CGRect)overlayFrame;
- (CGRect)viewportFrame;
- (int)_faceOrientationForRollAngle:(double)a3;
- (void)_drawZoomPIP;
- (void)_updateOverlayContainerMask;
- (void)dealloc;
- (void)indicatePointOfInterest:(CGPoint)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)setBottomContentInset:(double)a3;
- (void)setCenteredSubjectIndicatorView:(id)a3;
- (void)setContinuousIndicator:(id)a3;
- (void)setExternalFocusLockIndicator:(id)a3;
- (void)setGridView:(id)a3;
- (void)setHideAllIndicators:(BOOL)a3;
- (void)setHorizonLevelView:(id)a3;
- (void)setIndicatorClippingStyle:(int64_t)a3;
- (void)setLevelView:(id)a3;
- (void)setNormalizedZoomPIPRect:(CGRect)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setOverlayFrame:(CGRect)a3;
- (void)setPointIndicator:(id)a3;
- (void)setStageLightOverlayView:(id)a3;
- (void)setViewportFrame:(CGRect)a3;
@end

@implementation CAMPreviewView

- (void)layoutSubviews
{
  v108.receiver = self;
  v108.super_class = CAMPreviewView;
  [(CAMPreviewView *)&v108 layoutSubviews];
  [(CAMPreviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMPreviewView *)self overlayContainerView];
  v12 = [(CAMPreviewView *)self indicatorContainerView];
  v13 = v10;
  v14 = v8;
  v15 = v6;
  v16 = v4;
  if ([(CAMPreviewView *)self indicatorClippingStyle]== 1)
  {
    [(CAMPreviewView *)self viewportFrame];
    v16 = v17;
    v15 = v18;
    v14 = v19;
    v13 = v20;
  }

  v21 = [(CAMPreviewView *)self videoPreviewView];
  [v21 setFrame:{v4, v6, v8, v10}];

  v22 = [(CAMPreviewView *)self frontPIPVideoPreviewView];
  v104 = v6;
  v106 = v4;
  v100 = v10;
  v102 = v8;
  if (v22)
  {
    v23 = v22;
    v24 = [(CAMPreviewView *)self _isFrontPIPAtAnAnchor];

    if (!v24)
    {
      [(CAMPreviewView *)self viewportFrame];
      [CAMPIPVideoPreviewView sizeForViewportSize:v25, v26];
      v28 = v27;
      v30 = v29;
      [(CAMPreviewView *)self _pipAnchorPointForPIPSize:?];
      v32 = v31;
      v34 = v33;
      v35 = [(CAMPreviewView *)self frontPIPVideoPreviewView];
      [v35 setFrame:{v32, v34, v28, v30}];
    }
  }

  [v11 setFrame:{v16, v15, v14, v13, *&v100, *&v102, *&v104, *&v106}];
  [v11 bounds];
  [v12 setFrame:?];
  v36 = [(CAMPreviewView *)self _overlayContainerMask];
  if (v36)
  {
    [v11 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [v36 frame];
    v110.origin.x = v38;
    v110.origin.y = v40;
    v110.size.width = v42;
    v110.size.height = v44;
    if (!CGRectEqualToRect(v109, v110))
    {
      [v36 setFrame:{v38, v40, v42, v44}];
      [(CAMPreviewView *)self _updateOverlayContainerMask];
    }
  }

  [(CAMPreviewView *)self viewportFrame];
  UIRectGetCenter();
  [(CAMPreviewView *)self convertPoint:v12 toView:?];
  v45 = [(CAMPreviewView *)self continuousIndicator];
  v46 = [(CAMPreviewView *)self traitCollection];
  [v46 displayScale];
  v48 = v47;

  [v45 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v45 setFrame:?];
  v49 = [(CAMPreviewView *)self pointIndicator];
  [v49 intrinsicContentSize];
  [v49 setBounds:{0.0, 0.0, v50, v51}];
  v52 = [(CAMPreviewView *)self externalFocusLockIndicator];
  [v52 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v52 setFrame:?];
  [(CAMPreviewView *)self viewportFrame];
  [(CAMPreviewView *)self convertRect:v12 toView:?];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [(CAMPreviewView *)self gridView];
  CAMViewSetBoundsAndCenterForFrame(v61, v54, v56, v58, v60);

  v62 = [(CAMPreviewView *)self levelView];
  CAMViewSetBoundsAndCenterForFrame(v62, v54, v56, v58, v60);

  v63 = [(CAMPreviewView *)self horizonLevelView];
  CAMViewSetBoundsAndCenterForFrame(v63, v54, v56, v58, v60);

  [(CAMPreviewView *)self viewportFrame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = [(CAMPreviewView *)self orientation];
  [(CAMPreviewView *)self bottomContentInset];
  [CAMStageLightOverlayView circleFrameForViewport:v72 orientation:v65 bottomContentInset:v67 screenScale:v69, v71, v73, v48];
  UIRectGetCenter();
  v75 = v74;
  v77 = v76;
  v78 = [(CAMPreviewView *)self centeredSubjectIndicatorView];
  [v78 intrinsicContentSize];
  v80 = v79;
  v82 = v81;
  v83 = [(CAMPreviewView *)self orientation];
  if ((v83 - 3) >= 2)
  {
    v84 = v80;
  }

  else
  {
    v84 = v82;
  }

  if ((v83 - 3) >= 2)
  {
    v80 = v82;
  }

  v85 = *MEMORY[0x1E695EFF8];
  v86 = *(MEMORY[0x1E695EFF8] + 8);
  [(CAMPreviewView *)self convertPoint:v12 toView:v75, v77];
  [v78 setCenter:?];
  [v78 setBounds:{v85, v86, v84, v80}];
  v87 = [(CAMPreviewView *)self stageLightOverlayView];
  [v87 setFrame:{v107, v105, v103, v101}];

  [(CAMPreviewView *)self overlayFrame];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = [(CAMPreviewView *)self stageLightOverlayView];
  [v96 setViewportFrame:{v89, v91, v93, v95}];

  [(CAMPreviewView *)self bottomContentInset];
  v98 = v97;
  v99 = [(CAMPreviewView *)self stageLightOverlayView];
  [v99 setBottomContentInset:v98];
}

- (CAMPreviewView)initWithFrame:(CGRect)a3 initialPreviewAspectMode:(int64_t)a4 initialWindowedPreviewAspectMode:(int64_t)a5
{
  v34.receiver = self;
  v34.super_class = CAMPreviewView;
  v7 = [(CAMPreviewView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] blackColor];
    [(CAMPreviewView *)v7 setBackgroundColor:v8];

    v9 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMPreviewView *)v7 setTintColor:v9];

    [(CAMPreviewView *)v7 setOrientation:1];
    v10 = [CAMVideoPreviewView alloc];
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [(CAMVideoPreviewView *)v10 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
    videoPreviewView = v7->_videoPreviewView;
    v7->_videoPreviewView = v15;

    [(CAMVideoPreviewView *)v7->_videoPreviewView setPreviewViewAspectMode:a4];
    [(CAMVideoPreviewView *)v7->_videoPreviewView setPreviewViewAspectModeWindowed:a5];
    [(CAMVideoPreviewView *)v7->_videoPreviewView setClipsToBounds:1];
    [(CAMPreviewView *)v7 addSubview:v7->_videoPreviewView];
    v17 = +[CAMCaptureCapabilities capabilities];
    if ([v17 isFrontRearSimultaneousVideoSupported])
    {
      v18 = [(CAMVideoPreviewView *)[CAMPIPVideoPreviewView alloc] initWithFrame:v11, v12, v13, v14];
      frontPIPVideoPreviewView = v7->_frontPIPVideoPreviewView;
      v7->_frontPIPVideoPreviewView = v18;

      [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView setHidden:1];
      [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView setClipsToBounds:1];
      v20 = v7->_frontPIPVideoPreviewView;
      v21 = [MEMORY[0x1E69DC888] blackColor];
      [(CAMPIPVideoPreviewView *)v20 setBackgroundColor:v21];

      v22 = [MEMORY[0x1E69DC888] blackColor];
      v23 = [v22 colorWithAlphaComponent:0.15];
      v24 = [v23 CGColor];
      v25 = [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView layer];
      [v25 setBorderColor:v24];

      v26 = [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView layer];
      [v26 setBorderWidth:1.0];

      v27 = [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView layer];
      [v27 setMasksToBounds:1];

      v7->_frontPIPAnchor = +[CAMPIPVideoPreviewView defaultAnchor];
      [(CAMPreviewView *)v7 addSubview:v7->_frontPIPVideoPreviewView];
    }

    v28 = [[CAMInterfaceModulationView alloc] initWithHostingView:v7];
    overlayContainerView = v7->_overlayContainerView;
    v7->_overlayContainerView = v28;

    [(CAMInterfaceModulationView *)v7->_overlayContainerView setClipsToBounds:1];
    [CAMView view:v7 insertSubview:v7->_overlayContainerView belowSubview:v7->_frontPIPVideoPreviewView];
    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    indicatorContainerView = v7->_indicatorContainerView;
    v7->_indicatorContainerView = v30;

    [(CAMInterfaceModulationView *)v7->_overlayContainerView addSubview:v7->_indicatorContainerView];
    v7->__debugDrawZoomPIP = CFPreferencesGetAppBooleanValue(@"CAMDebugDrawZoomPIP", @"com.apple.camera", 0) != 0;
    v32 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMPreviewView;
  [(CAMPreviewView *)&v4 dealloc];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    if (a4)
    {
      [(CAMPreviewView *)self layoutIfNeeded];
      self->_orientation = a3;
      [(CAMPreviewView *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __42__CAMPreviewView_setOrientation_animated___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [CAMView animateIfNeededWithDuration:0x20000 options:v6 animations:0 completion:0.35];
    }

    else
    {
      self->_orientation = a3;

      [(CAMPreviewView *)self setNeedsLayout];
    }
  }
}

- (void)setViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(a3, self->_viewportFrame))
  {
    p_viewportFrame->origin.x = x;
    p_viewportFrame->origin.y = y;
    p_viewportFrame->size.width = width;
    p_viewportFrame->size.height = height;

    [(CAMPreviewView *)self setNeedsLayout];
  }
}

- (void)setOverlayFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_overlayFrame = &self->_overlayFrame;
  if (!CGRectEqualToRect(a3, self->_overlayFrame))
  {
    p_overlayFrame->origin.x = x;
    p_overlayFrame->origin.y = y;
    p_overlayFrame->size.width = width;
    p_overlayFrame->size.height = height;

    [(CAMPreviewView *)self setNeedsLayout];
  }
}

- (void)setHideAllIndicators:(BOOL)a3
{
  if (self->_hideAllIndicators != a3)
  {
    self->_hideAllIndicators = a3;
    if (a3)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = [(CAMPreviewView *)self indicatorContainerView];
    [v5 setAlpha:v4];
  }
}

- (void)setIndicatorClippingStyle:(int64_t)a3
{
  if (self->_indicatorClippingStyle != a3)
  {
    self->_indicatorClippingStyle = a3;
    [(CAMPreviewView *)self setNeedsLayout];
  }
}

- (void)setContinuousIndicator:(id)a3
{
  v5 = a3;
  if (self->_continuousIndicator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_continuousIndicator, a3);
    [(UIView *)self->_indicatorContainerView addSubview:v6];
    [(CAMPreviewView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setPointIndicator:(id)a3
{
  v5 = a3;
  if (self->_pointIndicator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pointIndicator, a3);
    [(UIView *)self->_indicatorContainerView addSubview:v6];
    [(CAMPreviewView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setExternalFocusLockIndicator:(id)a3
{
  v5 = a3;
  if (self->_externalFocusLockIndicator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_externalFocusLockIndicator, a3);
    [(UIView *)self->_indicatorContainerView addSubview:v6];
    [(CAMPreviewView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)indicatePointOfInterest:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(CAMPreviewView *)self pointIndicator];
  [(CAMPreviewView *)self pointForCaptureDevicePointOfInterest:x, y];
  v10 = v9;
  v12 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__CAMPreviewView_indicatePointOfInterest_animated___block_invoke;
  v18 = &unk_1E76F9C08;
  v13 = v8;
  v21 = v10;
  v22 = v12;
  v19 = v13;
  v20 = self;
  v14 = _Block_copy(&v15);
  if (v4)
  {
    [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v14 initialSpringVelocity:0 options:0.25 animations:1.0 completion:1.0, v15, v16, v17, v18];
  }

  else
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:{v14, v15, v16, v17, v18}];
  }
}

uint64_t __51__CAMPreviewView_indicatePointOfInterest_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2 * 0.5;
  v5 = v4 * 0.5;
  UIRoundToViewScale();
  v7 = v6;
  UIRoundToViewScale();
  v8 = v7 + v3;
  v10 = v5 + v9;
  v11 = *(a1 + 40);
  v12 = [v11 indicatorContainerView];
  [v11 convertPoint:v12 toView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  v17 = *(a1 + 32);

  return [v17 setCenter:{v14, v16}];
}

- (void)setGridView:(id)a3
{
  v4 = a3;
  gridView = self->_gridView;
  if (gridView != v4)
  {
    v9 = v4;
    v6 = [(CAMGridView *)gridView superview];
    v7 = [(CAMPreviewView *)self overlayContainerView];

    if (v6 == v7)
    {
      [(CAMGridView *)self->_gridView removeFromSuperview];
    }

    self->_gridView = v9;
    v8 = [(CAMPreviewView *)self overlayContainerView];
    [v8 addSubview:v9];

    v4 = v9;
  }

  MEMORY[0x1EEE66BB8](gridView, v4);
}

- (void)setLevelView:(id)a3
{
  v4 = a3;
  levelView = self->_levelView;
  if (levelView != v4)
  {
    v9 = v4;
    v6 = [(CAMLevelIndicatorView *)levelView superview];
    v7 = [(CAMPreviewView *)self overlayContainerView];

    if (v6 == v7)
    {
      [(CAMLevelIndicatorView *)self->_levelView removeFromSuperview];
    }

    self->_levelView = v9;
    v8 = [(CAMPreviewView *)self overlayContainerView];
    [v8 addSubview:v9];

    v4 = v9;
  }

  MEMORY[0x1EEE66BB8](levelView, v4);
}

- (void)setHorizonLevelView:(id)a3
{
  v4 = a3;
  horizonLevelView = self->_horizonLevelView;
  if (horizonLevelView != v4)
  {
    v9 = v4;
    v6 = [(CAMHorizonLevelView *)horizonLevelView superview];
    v7 = [(CAMPreviewView *)self overlayContainerView];

    if (v6 == v7)
    {
      [(CAMHorizonLevelView *)self->_horizonLevelView removeFromSuperview];
    }

    self->_horizonLevelView = v9;
    v8 = [(CAMPreviewView *)self overlayContainerView];
    [v8 addSubview:v9];

    v4 = v9;
  }

  MEMORY[0x1EEE66BB8](horizonLevelView, v4);
}

- (void)setStageLightOverlayView:(id)a3
{
  v5 = a3;
  stageLightOverlayView = self->_stageLightOverlayView;
  if (stageLightOverlayView != v5)
  {
    v8 = v5;
    [(CAMStageLightOverlayView *)stageLightOverlayView removeFromSuperview];
    objc_storeStrong(&self->_stageLightOverlayView, a3);
    v7 = [(CAMPreviewView *)self videoPreviewView];
    [(CAMPreviewView *)self insertSubview:v8 aboveSubview:v7];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](stageLightOverlayView, v5);
}

- (void)setBottomContentInset:(double)a3
{
  if (self->_bottomContentInset != a3)
  {
    self->_bottomContentInset = a3;
    v4 = [(CAMPreviewView *)self stageLightOverlayView];
    [v4 setBottomContentInset:a3];
  }
}

- (void)setCenteredSubjectIndicatorView:(id)a3
{
  v5 = a3;
  if (self->_centeredSubjectIndicatorView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_centeredSubjectIndicatorView, a3);
    [(UIView *)self->_indicatorContainerView addSubview:self->_centeredSubjectIndicatorView];
    [(CAMPreviewView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (CGRect)fixedSizeSubjectIndicatorFrameForFaceResult:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewView *)self videoPreviewLayer];
  v6 = [v4 underlyingMetadataObject];
  v7 = [v5 transformedMetadataObjectForMetadataObject:v6];

  [v7 rollAngle];
  v8 = [(CAMPreviewView *)self _faceOrientationForRollAngle:?];
  [(CAMPreviewView *)self faceIndicatorFrameForFaceResult:v4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v45.origin.x = v10;
  v45.origin.y = v12;
  v45.size.width = v14;
  v45.size.height = v16;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = v10;
  v46.origin.y = v12;
  v46.size.width = v14;
  v46.size.height = v16;
  MidY = CGRectGetMidY(v46);
  v17 = MEMORY[0x1E6993898];
  v18 = [(CAMPreviewView *)self window];
  v19 = [v18 screen];
  [v19 scale];
  [v17 fixedSizeWithScale:?];
  v21 = v20;
  v23 = v22;

  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v25 = v21;
  }

  else
  {
    v25 = v23;
  }

  if ((v8 - 2) < 2)
  {
    v48.origin.x = v10;
    v48.origin.y = v12;
    v48.size.width = v14;
    v48.size.height = v16;
    Width = CGRectGetWidth(v48);
    v27 = v24;
  }

  else if (v8 > 1)
  {
    v27 = 0.0;
    Width = 0.0;
  }

  else
  {
    v47.origin.x = v10;
    v47.origin.y = v12;
    v47.size.width = v14;
    v47.size.height = v16;
    Width = CGRectGetHeight(v47);
    v27 = v25;
  }

  v28 = v27 * 0.3;
  v29 = v27 * 0.5;
  v30 = v27 - v27 * 0.3;
  v31 = 0.0;
  if (v30 > 0.0)
  {
    v32 = (Width - v28) / v30;
    if (v32 >= 0.0)
    {
      v31 = v32;
      if (v32 > 1.0)
      {
        v31 = 1.0;
      }
    }
  }

  v33 = v28 + pow(v31, 0.3) * (v29 - v28);
  v34 = *MEMORY[0x1E695F058];
  v35 = *(MEMORY[0x1E695F058] + 8);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v34 = MidX - v33;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_26;
      }

      v34 = MidX - (v23 - v33);
    }

    UIRoundToViewScale();
    v35 = v38;
    goto LABEL_26;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      UIRoundToViewScale();
      v34 = v36;
      v35 = MidY - (v23 - v33);
    }
  }

  else
  {
    UIRoundToViewScale();
    v34 = v37;
    v35 = MidY - v33;
  }

LABEL_26:

  v39 = v34;
  v40 = v35;
  v41 = v24;
  v42 = v25;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)fixedSizeSubjectIndicatorFrameForBodyResult:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewView *)self window];
  v6 = [v5 screen];
  [v6 scale];
  v8 = v7;

  [MEMORY[0x1E6993898] fixedSizeWithScale:v8];
  [(CAMPreviewView *)self frameForMetadataObjectResult:v4 fixedSize:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameForMetadataObjectResult:(id)a3
{
  v4 = [a3 underlyingMetadataObject];
  [(CAMPreviewView *)self _frameForAVMetadataObject:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CAMPreviewView *)self _frameClampedToBounds:v6, v8, v10, v12];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForMetadataObjectResult:(id)a3 fixedSize:(CGSize)a4
{
  v5 = [a3 underlyingMetadataObject];
  [(CAMPreviewView *)self _frameForAVMetadataObject:v5];

  UIRectGetCenter();

  UIRectCenteredAboutPointScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_frameForAVMetadataObject:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewView *)self videoPreviewLayer];
  v6 = [v5 transformedMetadataObjectForMetadataObject:v4];

  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CAMPreviewView *)self layer];
  [v5 convertRect:v15 toLayer:{v8, v10, v12, v14}];

  UIRectIntegralWithScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_frameClampedToBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CAMPreviewView *)self indicatorContainerView];
  v9 = [(CAMPreviewView *)self indicatorContainerView];
  [v9 bounds];
  [v8 convertRect:self toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  v24 = CGRectInset(v23, 3.0, 3.0);
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;

  return CGRectIntersection(v24, *&v18);
}

- (CGRect)frameForTextRegionResult:(id)a3
{
  v4 = a3;
  v5 = [(CAMPreviewView *)self videoPreviewLayer];
  v6 = [v4 underlyingMetadataObject];

  v7 = [v5 transformedMetadataObjectForMetadataObject:v6];

  v8 = [v7 type];
  [v7 angularOffsetBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CAMPreviewView *)self layer];
  [v5 convertRect:v17 toLayer:{v10, v12, v14, v16}];

  UIRectIntegralWithScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGPoint)captureDevicePointOfInterestForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CAMPreviewView *)self videoPreviewLayer];
  [v5 captureDevicePointOfInterestForPoint:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CAMPreviewView *)self videoPreviewLayer];
  [v5 pointForCaptureDevicePointOfInterest:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)faceIndicatorFrameForFaceResult:(id)a3
{
  v4 = a3;
  v5 = [v4 underlyingMetadataObject];
  [(CAMPreviewView *)self _frameForAVMetadataObject:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CAMPreviewView *)self videoPreviewLayer];
  v15 = [v4 underlyingMetadataObject];

  v16 = [v14 transformedMetadataObjectForMetadataObject:v15];

  [v16 rollAngle];
  [(CAMPreviewView *)self _aspectFaceRectFromSquareFaceRect:v7 angle:v9, v11, v13, v17];
  [(CAMPreviewView *)self _frameClampedToBounds:?];
  UIRectIntegralWithScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)frameForSubjectGroupResult:(id)a3 minimumSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = [v5 metadataObjects];
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  if (v11)
  {
    v16 = v11;
    v17 = *v49;
    v12 = v9;
    v13 = v8;
    v14 = v7;
    v15 = v6;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CAMPreviewView *)self faceIndicatorFrameForFaceResult:v19];
          v15 = v20;
          v14 = v21;
          v13 = v22;
          v12 = v23;
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && ([v19 syntheticFocusMode] & 3) != 0)
        {
          [(CAMPreviewView *)self frameForMetadataObjectResult:v19];
          v15 = v24;
          v14 = v25;
          v13 = v26;
          v12 = v27;
          goto LABEL_14;
        }
      }

      v16 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v54.origin.x = v15;
  v54.origin.y = v14;
  v54.size.width = v13;
  v54.size.height = v12;
  v56.origin.x = v6;
  v56.origin.y = v7;
  v56.size.width = v8;
  v56.size.height = v9;
  if (CGRectEqualToRect(v54, v56))
  {
    v28 = [v5 metadataObjects];
    v29 = [v28 firstObject];
    [(CAMPreviewView *)self frameForMetadataObjectResult:v29];
    v15 = v30;
    v14 = v31;
    v13 = v32;
    v12 = v33;
  }

  if (width > 0.0 && height > 0.0)
  {
    if (v13 < width)
    {
      v15 = v15 - (width - v13);
      v13 = width;
    }

    if (v12 < height)
    {
      v14 = v14 - (height - v12);
      v12 = height;
    }
  }

  [(CAMPreviewView *)self _frameClampedToBounds:v15, v14, v13, v12, *&height];
  UIRectIntegralWithScale();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = v35;
  v43 = v37;
  v44 = v39;
  v45 = v41;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (int)_faceOrientationForRollAngle:(double)a3
{
  if (a3 == 3.40282347e38)
  {
    a3 = 0.0;
  }

  v3 = _nearestRoundedAngleForAngle(a3);
  if (v3 == 90.0)
  {
    return 3;
  }

  if (v3 == 180.0)
  {
    return 1;
  }

  if (v3 == 270.0)
  {
    return 2;
  }

  return 0;
}

- (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)a3 angle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CAMPreviewView *)self _faceOrientationForRollAngle:a4];
  v10 = v9;
  if (v9 - 2 < 2)
  {
    v16 = width * 1.6;
    [(CAMPreviewView *)self frame];
    v19 = v18;
    v20 = [(CAMPreviewView *)self traitCollection];
    [v20 displayScale];
    v22 = v19 * v21;

    if (width * 1.6 >= v22)
    {
      v16 = v22;
    }

    v15 = v16 * 0.8;
    v23 = (v16 - width) / 1.6;
    v24 = [(CAMPreviewView *)self videoPreviewLayer];
    v25 = [v24 connection];
    v26 = [v25 isVideoMirrored];

    if (v26)
    {
      if (v10 == 3)
      {
        goto LABEL_15;
      }
    }

    else if (v10 != 3)
    {
LABEL_15:
      x = x - v23;
      y = y + (v15 - height) * -0.5;
      goto LABEL_17;
    }

    v23 = v16 - v23 - width;
    goto LABEL_15;
  }

  if (v9 > 1)
  {
    v15 = height;
    v16 = width;
  }

  else
  {
    [(CAMPreviewView *)self frame];
    v12 = v11;
    v13 = [(CAMPreviewView *)self traitCollection];
    [v13 displayScale];
    v15 = v12 * v14;

    if (height * 1.6 < v15)
    {
      v15 = height * 1.6;
    }

    v16 = v15 * 0.8;
    v17 = (v15 - height) / 1.6;
    if (v10)
    {
      v17 = v15 - v17 - height;
    }

    y = y - v17;
    x = x + (v16 - width) * -0.5;
  }

LABEL_17:
  v27 = x;
  v28 = y;
  v29 = v16;
  v30 = v15;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)setNormalizedZoomPIPRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = *MEMORY[0x1E69E9840];
  p_normalizedZoomPIPRect = &self->_normalizedZoomPIPRect;
  if (!CGRectEqualToRect(self->_normalizedZoomPIPRect, a3))
  {
    p_normalizedZoomPIPRect->origin.x = x;
    p_normalizedZoomPIPRect->origin.y = y;
    p_normalizedZoomPIPRect->size.width = width;
    p_normalizedZoomPIPRect->size.height = height;
    if ([(CAMPreviewView *)self _isZoomPIPRectValid])
    {
      v9 = [(CAMPreviewView *)self _overlayContainerMask];

      if (v9)
      {
        [(CAMPreviewView *)self _updateOverlayContainerMask];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E69794A0]);
        [v13 setFillRule:*MEMORY[0x1E69797F8]];
        v14 = [MEMORY[0x1E69DC888] whiteColor];
        [v13 setFillColor:{objc_msgSend(v14, "CGColor")}];

        [(CAMPreviewView *)self _setOverlayContainerMask:v13];
        v15 = [(CAMPreviewView *)self overlayContainerView];
        v16 = [v15 layer];
        [v16 setMask:v13];

        [(CAMPreviewView *)self setNeedsLayout];
      }
    }

    else if (self->__overlayContainerMask)
    {
      v10 = [(CAMPreviewView *)self overlayContainerView];
      v11 = [v10 layer];
      [v11 setMask:0];

      overlayContainerMask = self->__overlayContainerMask;
      self->__overlayContainerMask = 0;
    }

    if ([(CAMPreviewView *)self _debugDrawZoomPIP])
    {
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v18 = NSStringFromCGRect(v22);
        v19 = 138543362;
        v20 = v18;
        _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "---- Normalized Zoom PIP rect: %{public}@", &v19, 0xCu);
      }

      [(CAMPreviewView *)self _drawZoomPIP];
    }
  }
}

- (void)_updateOverlayContainerMask
{
  v3 = [(CAMPreviewView *)self _overlayContainerMask];
  if (v3)
  {
    v14 = v3;
    v4 = [(CAMPreviewView *)self videoPreviewLayer];
    [(CAMPreviewView *)self normalizedZoomPIPRect];
    [v4 rectForMetadataOutputRectOfInterest:?];
    [v4 convertRect:v14 toLayer:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    Mutable = CGPathCreateMutable();
    [v14 bounds];
    CGPathAddRect(Mutable, 0, v16);
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v12;
    CGPathAddRect(Mutable, 0, v17);
    [v14 setPath:Mutable];
    CGPathRelease(Mutable);

    v3 = v14;
  }
}

- (void)_drawZoomPIP
{
  v26 = [(CAMPreviewView *)self viewWithTag:86832];
  if ([(CAMPreviewView *)self _isZoomPIPRectValid])
  {
    v3 = [(CAMPreviewView *)self videoPreviewLayer];
    v4 = [(CAMPreviewView *)self indicatorContainerView];
    [(CAMPreviewView *)self normalizedZoomPIPRect];
    [v3 rectForMetadataOutputRectOfInterest:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v4 layer];
    [v3 convertRect:v13 toLayer:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v28.origin.x = v15;
    v28.origin.y = v17;
    v28.size.width = v19;
    v28.size.height = v21;
    v29 = CGRectInset(v28, -1.0, -1.0);
    if (v26)
    {
      [v26 setFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
      [v26 setTag:86832];
      v22 = [MEMORY[0x1E69DC888] redColor];
      v23 = [v22 CGColor];
      v24 = [v26 layer];
      [v24 setBorderColor:v23];

      v25 = [v26 layer];
      [v25 setBorderWidth:1.0];

      [v4 addSubview:v26];
    }
  }

  else
  {
    [v26 removeFromSuperview];
  }
}

- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIP
{
  [(CAMPreviewView *)self viewportFrame];
  [CAMPIPVideoPreviewView pipInsetForViewportSize:v5, v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = [(CAMPreviewView *)self viewportFrame];
  v17 = v10 + v16;
  v19 = v8 + v18;
  v22 = v17 + v20 - (v10 + v14);
  retstr->var0.x = v17;
  retstr->var0.y = v19;
  retstr->var1.x = v22;
  retstr->var1.y = v19;
  v23 = v19 + v21 - (v8 + v12);
  retstr->var2.x = v17;
  retstr->var2.y = v23;
  retstr->var3.x = v22;
  retstr->var3.y = v23;
  return result;
}

- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIPOriginWithSize:(SEL)a3
{
  width = a4.width;
  height = a4.height;
  memset(v9, 0, 40);
  result = [(CAMPreviewView *)self viewportAnchorsForFrontPIP];
  v6.f64[0] = height;
  retstr->var0 = 0u;
  retstr->var1.x = 0.0 - width;
  *&retstr->var1.y = *(v9 + 8);
  v6.f64[1] = width;
  *&retstr->var2.y = vsubq_f64(*(&v9[1] + 8), v6);
  retstr->var3.y = 0.0 - height;
  return result;
}

- (CGPoint)_pipAnchorPointForPIPSize:(CGSize)a3
{
  [(CAMPreviewView *)self viewportAnchorsForFrontPIPOriginWithSize:a3.width, a3.height];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = [(CAMPreviewView *)self frontPIPAnchor];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v5 = 0.0;
      v4 = 0.0;
    }

    else if (v6 == 3)
    {
      v5 = 0.0;
      v4 = 0.0;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v5 = 0.0;
      v4 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  v7 = v4;
  v8 = v5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)_isFrontPIPAtAnAnchor
{
  v3 = [(CAMPreviewView *)self frontPIPVideoPreviewView];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CAMPreviewView *)self frontPIPVideoPreviewView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CAMPreviewView *)self viewportAnchorsForFrontPIPOriginWithSize:v10, v12];
  v13 = [(CAMPreviewView *)self frontPIPAnchor];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 0u;
    }

    else
    {
      v14 = 0uLL;
      if (v13 == 3)
      {
        v14 = 0u;
      }
    }
  }

  else if (v13)
  {
    v14 = 0uLL;
    if (v13 == 1)
    {
      v14 = 0u;
    }
  }

  else
  {
    v14 = 0u;
  }

  return [(CAMPreviewView *)self _compareCGPointsToAccuracy:0.00999999978 point1:v6 point2:v8, v14];
}

- (CGRect)viewportFrame
{
  x = self->_viewportFrame.origin.x;
  y = self->_viewportFrame.origin.y;
  width = self->_viewportFrame.size.width;
  height = self->_viewportFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)overlayFrame
{
  x = self->_overlayFrame.origin.x;
  y = self->_overlayFrame.origin.y;
  width = self->_overlayFrame.size.width;
  height = self->_overlayFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedZoomPIPRect
{
  x = self->_normalizedZoomPIPRect.origin.x;
  y = self->_normalizedZoomPIPRect.origin.y;
  width = self->_normalizedZoomPIPRect.size.width;
  height = self->_normalizedZoomPIPRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end