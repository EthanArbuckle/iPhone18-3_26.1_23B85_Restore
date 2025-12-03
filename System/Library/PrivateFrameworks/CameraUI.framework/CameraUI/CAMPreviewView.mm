@interface CAMPreviewView
- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIP;
- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIPOriginWithSize:(SEL)size;
- (BOOL)_isFrontPIPAtAnAnchor;
- (CAMPreviewView)initWithFrame:(CGRect)frame initialPreviewAspectMode:(int64_t)mode initialWindowedPreviewAspectMode:(int64_t)aspectMode;
- (CGPoint)_pipAnchorPointForPIPSize:(CGSize)size;
- (CGPoint)captureDevicePointOfInterestForPoint:(CGPoint)point;
- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)interest;
- (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)rect angle:(double)angle;
- (CGRect)_frameClampedToBounds:(CGRect)bounds;
- (CGRect)_frameForAVMetadataObject:(id)object;
- (CGRect)faceIndicatorFrameForFaceResult:(id)result;
- (CGRect)fixedSizeSubjectIndicatorFrameForBodyResult:(id)result;
- (CGRect)fixedSizeSubjectIndicatorFrameForFaceResult:(id)result;
- (CGRect)frameForMetadataObjectResult:(id)result;
- (CGRect)frameForMetadataObjectResult:(id)result fixedSize:(CGSize)size;
- (CGRect)frameForSubjectGroupResult:(id)result minimumSize:(CGSize)size;
- (CGRect)frameForTextRegionResult:(id)result;
- (CGRect)normalizedZoomPIPRect;
- (CGRect)overlayFrame;
- (CGRect)viewportFrame;
- (int)_faceOrientationForRollAngle:(double)angle;
- (void)_drawZoomPIP;
- (void)_updateOverlayContainerMask;
- (void)dealloc;
- (void)indicatePointOfInterest:(CGPoint)interest animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setBottomContentInset:(double)inset;
- (void)setCenteredSubjectIndicatorView:(id)view;
- (void)setContinuousIndicator:(id)indicator;
- (void)setExternalFocusLockIndicator:(id)indicator;
- (void)setGridView:(id)view;
- (void)setHideAllIndicators:(BOOL)indicators;
- (void)setHorizonLevelView:(id)view;
- (void)setIndicatorClippingStyle:(int64_t)style;
- (void)setLevelView:(id)view;
- (void)setNormalizedZoomPIPRect:(CGRect)rect;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setOverlayFrame:(CGRect)frame;
- (void)setPointIndicator:(id)indicator;
- (void)setStageLightOverlayView:(id)view;
- (void)setViewportFrame:(CGRect)frame;
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
  overlayContainerView = [(CAMPreviewView *)self overlayContainerView];
  indicatorContainerView = [(CAMPreviewView *)self indicatorContainerView];
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

  videoPreviewView = [(CAMPreviewView *)self videoPreviewView];
  [videoPreviewView setFrame:{v4, v6, v8, v10}];

  frontPIPVideoPreviewView = [(CAMPreviewView *)self frontPIPVideoPreviewView];
  v104 = v6;
  v106 = v4;
  v100 = v10;
  v102 = v8;
  if (frontPIPVideoPreviewView)
  {
    v23 = frontPIPVideoPreviewView;
    _isFrontPIPAtAnAnchor = [(CAMPreviewView *)self _isFrontPIPAtAnAnchor];

    if (!_isFrontPIPAtAnAnchor)
    {
      [(CAMPreviewView *)self viewportFrame];
      [CAMPIPVideoPreviewView sizeForViewportSize:v25, v26];
      v28 = v27;
      v30 = v29;
      [(CAMPreviewView *)self _pipAnchorPointForPIPSize:?];
      v32 = v31;
      v34 = v33;
      frontPIPVideoPreviewView2 = [(CAMPreviewView *)self frontPIPVideoPreviewView];
      [frontPIPVideoPreviewView2 setFrame:{v32, v34, v28, v30}];
    }
  }

  [overlayContainerView setFrame:{v16, v15, v14, v13, *&v100, *&v102, *&v104, *&v106}];
  [overlayContainerView bounds];
  [indicatorContainerView setFrame:?];
  _overlayContainerMask = [(CAMPreviewView *)self _overlayContainerMask];
  if (_overlayContainerMask)
  {
    [overlayContainerView bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [_overlayContainerMask frame];
    v110.origin.x = v38;
    v110.origin.y = v40;
    v110.size.width = v42;
    v110.size.height = v44;
    if (!CGRectEqualToRect(v109, v110))
    {
      [_overlayContainerMask setFrame:{v38, v40, v42, v44}];
      [(CAMPreviewView *)self _updateOverlayContainerMask];
    }
  }

  [(CAMPreviewView *)self viewportFrame];
  UIRectGetCenter();
  [(CAMPreviewView *)self convertPoint:indicatorContainerView toView:?];
  continuousIndicator = [(CAMPreviewView *)self continuousIndicator];
  traitCollection = [(CAMPreviewView *)self traitCollection];
  [traitCollection displayScale];
  v48 = v47;

  [continuousIndicator intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [continuousIndicator setFrame:?];
  pointIndicator = [(CAMPreviewView *)self pointIndicator];
  [pointIndicator intrinsicContentSize];
  [pointIndicator setBounds:{0.0, 0.0, v50, v51}];
  externalFocusLockIndicator = [(CAMPreviewView *)self externalFocusLockIndicator];
  [externalFocusLockIndicator intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [externalFocusLockIndicator setFrame:?];
  [(CAMPreviewView *)self viewportFrame];
  [(CAMPreviewView *)self convertRect:indicatorContainerView toView:?];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  gridView = [(CAMPreviewView *)self gridView];
  CAMViewSetBoundsAndCenterForFrame(gridView, v54, v56, v58, v60);

  levelView = [(CAMPreviewView *)self levelView];
  CAMViewSetBoundsAndCenterForFrame(levelView, v54, v56, v58, v60);

  horizonLevelView = [(CAMPreviewView *)self horizonLevelView];
  CAMViewSetBoundsAndCenterForFrame(horizonLevelView, v54, v56, v58, v60);

  [(CAMPreviewView *)self viewportFrame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  orientation = [(CAMPreviewView *)self orientation];
  [(CAMPreviewView *)self bottomContentInset];
  [CAMStageLightOverlayView circleFrameForViewport:orientation orientation:v65 bottomContentInset:v67 screenScale:v69, v71, v73, v48];
  UIRectGetCenter();
  v75 = v74;
  v77 = v76;
  centeredSubjectIndicatorView = [(CAMPreviewView *)self centeredSubjectIndicatorView];
  [centeredSubjectIndicatorView intrinsicContentSize];
  v80 = v79;
  v82 = v81;
  orientation2 = [(CAMPreviewView *)self orientation];
  if ((orientation2 - 3) >= 2)
  {
    v84 = v80;
  }

  else
  {
    v84 = v82;
  }

  if ((orientation2 - 3) >= 2)
  {
    v80 = v82;
  }

  v85 = *MEMORY[0x1E695EFF8];
  v86 = *(MEMORY[0x1E695EFF8] + 8);
  [(CAMPreviewView *)self convertPoint:indicatorContainerView toView:v75, v77];
  [centeredSubjectIndicatorView setCenter:?];
  [centeredSubjectIndicatorView setBounds:{v85, v86, v84, v80}];
  stageLightOverlayView = [(CAMPreviewView *)self stageLightOverlayView];
  [stageLightOverlayView setFrame:{v107, v105, v103, v101}];

  [(CAMPreviewView *)self overlayFrame];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  stageLightOverlayView2 = [(CAMPreviewView *)self stageLightOverlayView];
  [stageLightOverlayView2 setViewportFrame:{v89, v91, v93, v95}];

  [(CAMPreviewView *)self bottomContentInset];
  v98 = v97;
  stageLightOverlayView3 = [(CAMPreviewView *)self stageLightOverlayView];
  [stageLightOverlayView3 setBottomContentInset:v98];
}

- (CAMPreviewView)initWithFrame:(CGRect)frame initialPreviewAspectMode:(int64_t)mode initialWindowedPreviewAspectMode:(int64_t)aspectMode
{
  v34.receiver = self;
  v34.super_class = CAMPreviewView;
  v7 = [(CAMPreviewView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CAMPreviewView *)v7 setBackgroundColor:blackColor];

    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMPreviewView *)v7 setTintColor:systemYellowColor];

    [(CAMPreviewView *)v7 setOrientation:1];
    v10 = [CAMVideoPreviewView alloc];
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [(CAMVideoPreviewView *)v10 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
    videoPreviewView = v7->_videoPreviewView;
    v7->_videoPreviewView = v15;

    [(CAMVideoPreviewView *)v7->_videoPreviewView setPreviewViewAspectMode:mode];
    [(CAMVideoPreviewView *)v7->_videoPreviewView setPreviewViewAspectModeWindowed:aspectMode];
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
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      [(CAMPIPVideoPreviewView *)v20 setBackgroundColor:blackColor2];

      blackColor3 = [MEMORY[0x1E69DC888] blackColor];
      v23 = [blackColor3 colorWithAlphaComponent:0.15];
      cGColor = [v23 CGColor];
      layer = [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView layer];
      [layer2 setBorderWidth:1.0];

      layer3 = [(CAMPIPVideoPreviewView *)v7->_frontPIPVideoPreviewView layer];
      [layer3 setMasksToBounds:1];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMPreviewView;
  [(CAMPreviewView *)&v4 dealloc];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    if (animated)
    {
      [(CAMPreviewView *)self layoutIfNeeded];
      self->_orientation = orientation;
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
      self->_orientation = orientation;

      [(CAMPreviewView *)self setNeedsLayout];
    }
  }
}

- (void)setViewportFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(frame, self->_viewportFrame))
  {
    p_viewportFrame->origin.x = x;
    p_viewportFrame->origin.y = y;
    p_viewportFrame->size.width = width;
    p_viewportFrame->size.height = height;

    [(CAMPreviewView *)self setNeedsLayout];
  }
}

- (void)setOverlayFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_overlayFrame = &self->_overlayFrame;
  if (!CGRectEqualToRect(frame, self->_overlayFrame))
  {
    p_overlayFrame->origin.x = x;
    p_overlayFrame->origin.y = y;
    p_overlayFrame->size.width = width;
    p_overlayFrame->size.height = height;

    [(CAMPreviewView *)self setNeedsLayout];
  }
}

- (void)setHideAllIndicators:(BOOL)indicators
{
  if (self->_hideAllIndicators != indicators)
  {
    self->_hideAllIndicators = indicators;
    if (indicators)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    indicatorContainerView = [(CAMPreviewView *)self indicatorContainerView];
    [indicatorContainerView setAlpha:v4];
  }
}

- (void)setIndicatorClippingStyle:(int64_t)style
{
  if (self->_indicatorClippingStyle != style)
  {
    self->_indicatorClippingStyle = style;
    [(CAMPreviewView *)self setNeedsLayout];
  }
}

- (void)setContinuousIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (self->_continuousIndicator != indicatorCopy)
  {
    v6 = indicatorCopy;
    objc_storeStrong(&self->_continuousIndicator, indicator);
    [(UIView *)self->_indicatorContainerView addSubview:v6];
    [(CAMPreviewView *)self setNeedsLayout];
    indicatorCopy = v6;
  }
}

- (void)setPointIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (self->_pointIndicator != indicatorCopy)
  {
    v6 = indicatorCopy;
    objc_storeStrong(&self->_pointIndicator, indicator);
    [(UIView *)self->_indicatorContainerView addSubview:v6];
    [(CAMPreviewView *)self setNeedsLayout];
    indicatorCopy = v6;
  }
}

- (void)setExternalFocusLockIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (self->_externalFocusLockIndicator != indicatorCopy)
  {
    v6 = indicatorCopy;
    objc_storeStrong(&self->_externalFocusLockIndicator, indicator);
    [(UIView *)self->_indicatorContainerView addSubview:v6];
    [(CAMPreviewView *)self setNeedsLayout];
    indicatorCopy = v6;
  }
}

- (void)indicatePointOfInterest:(CGPoint)interest animated:(BOOL)animated
{
  animatedCopy = animated;
  y = interest.y;
  x = interest.x;
  pointIndicator = [(CAMPreviewView *)self pointIndicator];
  [(CAMPreviewView *)self pointForCaptureDevicePointOfInterest:x, y];
  v10 = v9;
  v12 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__CAMPreviewView_indicatePointOfInterest_animated___block_invoke;
  v18 = &unk_1E76F9C08;
  v13 = pointIndicator;
  v21 = v10;
  v22 = v12;
  v19 = v13;
  selfCopy = self;
  v14 = _Block_copy(&v15);
  if (animatedCopy)
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

- (void)setGridView:(id)view
{
  viewCopy = view;
  gridView = self->_gridView;
  if (gridView != viewCopy)
  {
    v9 = viewCopy;
    superview = [(CAMGridView *)gridView superview];
    overlayContainerView = [(CAMPreviewView *)self overlayContainerView];

    if (superview == overlayContainerView)
    {
      [(CAMGridView *)self->_gridView removeFromSuperview];
    }

    self->_gridView = v9;
    overlayContainerView2 = [(CAMPreviewView *)self overlayContainerView];
    [overlayContainerView2 addSubview:v9];

    viewCopy = v9;
  }

  MEMORY[0x1EEE66BB8](gridView, viewCopy);
}

- (void)setLevelView:(id)view
{
  viewCopy = view;
  levelView = self->_levelView;
  if (levelView != viewCopy)
  {
    v9 = viewCopy;
    superview = [(CAMLevelIndicatorView *)levelView superview];
    overlayContainerView = [(CAMPreviewView *)self overlayContainerView];

    if (superview == overlayContainerView)
    {
      [(CAMLevelIndicatorView *)self->_levelView removeFromSuperview];
    }

    self->_levelView = v9;
    overlayContainerView2 = [(CAMPreviewView *)self overlayContainerView];
    [overlayContainerView2 addSubview:v9];

    viewCopy = v9;
  }

  MEMORY[0x1EEE66BB8](levelView, viewCopy);
}

- (void)setHorizonLevelView:(id)view
{
  viewCopy = view;
  horizonLevelView = self->_horizonLevelView;
  if (horizonLevelView != viewCopy)
  {
    v9 = viewCopy;
    superview = [(CAMHorizonLevelView *)horizonLevelView superview];
    overlayContainerView = [(CAMPreviewView *)self overlayContainerView];

    if (superview == overlayContainerView)
    {
      [(CAMHorizonLevelView *)self->_horizonLevelView removeFromSuperview];
    }

    self->_horizonLevelView = v9;
    overlayContainerView2 = [(CAMPreviewView *)self overlayContainerView];
    [overlayContainerView2 addSubview:v9];

    viewCopy = v9;
  }

  MEMORY[0x1EEE66BB8](horizonLevelView, viewCopy);
}

- (void)setStageLightOverlayView:(id)view
{
  viewCopy = view;
  stageLightOverlayView = self->_stageLightOverlayView;
  if (stageLightOverlayView != viewCopy)
  {
    v8 = viewCopy;
    [(CAMStageLightOverlayView *)stageLightOverlayView removeFromSuperview];
    objc_storeStrong(&self->_stageLightOverlayView, view);
    videoPreviewView = [(CAMPreviewView *)self videoPreviewView];
    [(CAMPreviewView *)self insertSubview:v8 aboveSubview:videoPreviewView];

    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](stageLightOverlayView, viewCopy);
}

- (void)setBottomContentInset:(double)inset
{
  if (self->_bottomContentInset != inset)
  {
    self->_bottomContentInset = inset;
    stageLightOverlayView = [(CAMPreviewView *)self stageLightOverlayView];
    [stageLightOverlayView setBottomContentInset:inset];
  }
}

- (void)setCenteredSubjectIndicatorView:(id)view
{
  viewCopy = view;
  if (self->_centeredSubjectIndicatorView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_centeredSubjectIndicatorView, view);
    [(UIView *)self->_indicatorContainerView addSubview:self->_centeredSubjectIndicatorView];
    [(CAMPreviewView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (CGRect)fixedSizeSubjectIndicatorFrameForFaceResult:(id)result
{
  resultCopy = result;
  videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
  underlyingMetadataObject = [resultCopy underlyingMetadataObject];
  v7 = [videoPreviewLayer transformedMetadataObjectForMetadataObject:underlyingMetadataObject];

  [v7 rollAngle];
  v8 = [(CAMPreviewView *)self _faceOrientationForRollAngle:?];
  [(CAMPreviewView *)self faceIndicatorFrameForFaceResult:resultCopy];
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
  window = [(CAMPreviewView *)self window];
  screen = [window screen];
  [screen scale];
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

- (CGRect)fixedSizeSubjectIndicatorFrameForBodyResult:(id)result
{
  resultCopy = result;
  window = [(CAMPreviewView *)self window];
  screen = [window screen];
  [screen scale];
  v8 = v7;

  [MEMORY[0x1E6993898] fixedSizeWithScale:v8];
  [(CAMPreviewView *)self frameForMetadataObjectResult:resultCopy fixedSize:?];
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

- (CGRect)frameForMetadataObjectResult:(id)result
{
  underlyingMetadataObject = [result underlyingMetadataObject];
  [(CAMPreviewView *)self _frameForAVMetadataObject:underlyingMetadataObject];
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

- (CGRect)frameForMetadataObjectResult:(id)result fixedSize:(CGSize)size
{
  underlyingMetadataObject = [result underlyingMetadataObject];
  [(CAMPreviewView *)self _frameForAVMetadataObject:underlyingMetadataObject];

  UIRectGetCenter();

  UIRectCenteredAboutPointScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_frameForAVMetadataObject:(id)object
{
  objectCopy = object;
  videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
  v6 = [videoPreviewLayer transformedMetadataObjectForMetadataObject:objectCopy];

  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  layer = [(CAMPreviewView *)self layer];
  [videoPreviewLayer convertRect:layer toLayer:{v8, v10, v12, v14}];

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

- (CGRect)_frameClampedToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  indicatorContainerView = [(CAMPreviewView *)self indicatorContainerView];
  indicatorContainerView2 = [(CAMPreviewView *)self indicatorContainerView];
  [indicatorContainerView2 bounds];
  [indicatorContainerView convertRect:self toView:?];
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

- (CGRect)frameForTextRegionResult:(id)result
{
  resultCopy = result;
  videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
  underlyingMetadataObject = [resultCopy underlyingMetadataObject];

  v7 = [videoPreviewLayer transformedMetadataObjectForMetadataObject:underlyingMetadataObject];

  type = [v7 type];
  [v7 angularOffsetBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  layer = [(CAMPreviewView *)self layer];
  [videoPreviewLayer convertRect:layer toLayer:{v10, v12, v14, v16}];

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

- (CGPoint)captureDevicePointOfInterestForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
  [videoPreviewLayer captureDevicePointOfInterestForPoint:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)interest
{
  y = interest.y;
  x = interest.x;
  videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
  [videoPreviewLayer pointForCaptureDevicePointOfInterest:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)faceIndicatorFrameForFaceResult:(id)result
{
  resultCopy = result;
  underlyingMetadataObject = [resultCopy underlyingMetadataObject];
  [(CAMPreviewView *)self _frameForAVMetadataObject:underlyingMetadataObject];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
  underlyingMetadataObject2 = [resultCopy underlyingMetadataObject];

  v16 = [videoPreviewLayer transformedMetadataObjectForMetadataObject:underlyingMetadataObject2];

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

- (CGRect)frameForSubjectGroupResult:(id)result minimumSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v53 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  metadataObjects = [resultCopy metadataObjects];
  v11 = [metadataObjects countByEnumeratingWithState:&v48 objects:v52 count:16];
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
          objc_enumerationMutation(metadataObjects);
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

      v16 = [metadataObjects countByEnumeratingWithState:&v48 objects:v52 count:16];
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
    metadataObjects2 = [resultCopy metadataObjects];
    firstObject = [metadataObjects2 firstObject];
    [(CAMPreviewView *)self frameForMetadataObjectResult:firstObject];
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

- (int)_faceOrientationForRollAngle:(double)angle
{
  if (angle == 3.40282347e38)
  {
    angle = 0.0;
  }

  v3 = _nearestRoundedAngleForAngle(angle);
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

- (CGRect)_aspectFaceRectFromSquareFaceRect:(CGRect)rect angle:(double)angle
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(CAMPreviewView *)self _faceOrientationForRollAngle:angle];
  v10 = v9;
  if (v9 - 2 < 2)
  {
    v16 = width * 1.6;
    [(CAMPreviewView *)self frame];
    v19 = v18;
    traitCollection = [(CAMPreviewView *)self traitCollection];
    [traitCollection displayScale];
    v22 = v19 * v21;

    if (width * 1.6 >= v22)
    {
      v16 = v22;
    }

    v15 = v16 * 0.8;
    v23 = (v16 - width) / 1.6;
    videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
    connection = [videoPreviewLayer connection];
    isVideoMirrored = [connection isVideoMirrored];

    if (isVideoMirrored)
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
    traitCollection2 = [(CAMPreviewView *)self traitCollection];
    [traitCollection2 displayScale];
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

- (void)setNormalizedZoomPIPRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x1E69E9840];
  p_normalizedZoomPIPRect = &self->_normalizedZoomPIPRect;
  if (!CGRectEqualToRect(self->_normalizedZoomPIPRect, rect))
  {
    p_normalizedZoomPIPRect->origin.x = x;
    p_normalizedZoomPIPRect->origin.y = y;
    p_normalizedZoomPIPRect->size.width = width;
    p_normalizedZoomPIPRect->size.height = height;
    if ([(CAMPreviewView *)self _isZoomPIPRectValid])
    {
      _overlayContainerMask = [(CAMPreviewView *)self _overlayContainerMask];

      if (_overlayContainerMask)
      {
        [(CAMPreviewView *)self _updateOverlayContainerMask];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E69794A0]);
        [v13 setFillRule:*MEMORY[0x1E69797F8]];
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [v13 setFillColor:{objc_msgSend(whiteColor, "CGColor")}];

        [(CAMPreviewView *)self _setOverlayContainerMask:v13];
        overlayContainerView = [(CAMPreviewView *)self overlayContainerView];
        layer = [overlayContainerView layer];
        [layer setMask:v13];

        [(CAMPreviewView *)self setNeedsLayout];
      }
    }

    else if (self->__overlayContainerMask)
    {
      overlayContainerView2 = [(CAMPreviewView *)self overlayContainerView];
      layer2 = [overlayContainerView2 layer];
      [layer2 setMask:0];

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
  _overlayContainerMask = [(CAMPreviewView *)self _overlayContainerMask];
  if (_overlayContainerMask)
  {
    v14 = _overlayContainerMask;
    videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
    [(CAMPreviewView *)self normalizedZoomPIPRect];
    [videoPreviewLayer rectForMetadataOutputRectOfInterest:?];
    [videoPreviewLayer convertRect:v14 toLayer:?];
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

    _overlayContainerMask = v14;
  }
}

- (void)_drawZoomPIP
{
  v26 = [(CAMPreviewView *)self viewWithTag:86832];
  if ([(CAMPreviewView *)self _isZoomPIPRectValid])
  {
    videoPreviewLayer = [(CAMPreviewView *)self videoPreviewLayer];
    indicatorContainerView = [(CAMPreviewView *)self indicatorContainerView];
    [(CAMPreviewView *)self normalizedZoomPIPRect];
    [videoPreviewLayer rectForMetadataOutputRectOfInterest:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    layer = [indicatorContainerView layer];
    [videoPreviewLayer convertRect:layer toLayer:{v6, v8, v10, v12}];
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
      redColor = [MEMORY[0x1E69DC888] redColor];
      cGColor = [redColor CGColor];
      layer2 = [v26 layer];
      [layer2 setBorderColor:cGColor];

      layer3 = [v26 layer];
      [layer3 setBorderWidth:1.0];

      [indicatorContainerView addSubview:v26];
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

- ($C2CB173DCCDA0DFA06C09C718FD45322)viewportAnchorsForFrontPIPOriginWithSize:(SEL)size
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

- (CGPoint)_pipAnchorPointForPIPSize:(CGSize)size
{
  [(CAMPreviewView *)self viewportAnchorsForFrontPIPOriginWithSize:size.width, size.height];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  frontPIPAnchor = [(CAMPreviewView *)self frontPIPAnchor];
  if (frontPIPAnchor > 1)
  {
    if (frontPIPAnchor == 2)
    {
      v5 = 0.0;
      v4 = 0.0;
    }

    else if (frontPIPAnchor == 3)
    {
      v5 = 0.0;
      v4 = 0.0;
    }
  }

  else if (frontPIPAnchor)
  {
    if (frontPIPAnchor == 1)
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
  frontPIPVideoPreviewView = [(CAMPreviewView *)self frontPIPVideoPreviewView];

  if (!frontPIPVideoPreviewView)
  {
    return 0;
  }

  frontPIPVideoPreviewView2 = [(CAMPreviewView *)self frontPIPVideoPreviewView];
  [frontPIPVideoPreviewView2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CAMPreviewView *)self viewportAnchorsForFrontPIPOriginWithSize:v10, v12];
  frontPIPAnchor = [(CAMPreviewView *)self frontPIPAnchor];
  if (frontPIPAnchor > 1)
  {
    if (frontPIPAnchor == 2)
    {
      v14 = 0u;
    }

    else
    {
      v14 = 0uLL;
      if (frontPIPAnchor == 3)
      {
        v14 = 0u;
      }
    }
  }

  else if (frontPIPAnchor)
  {
    v14 = 0uLL;
    if (frontPIPAnchor == 1)
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