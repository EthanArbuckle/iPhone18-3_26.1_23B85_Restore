@interface HUCameraView
- (BOOL)isBadgeHidden;
- (CGRect)cameraContentFrame;
- (CGRect)derivedCameraContentFrame;
- (HMCameraSource)cameraSource;
- (HMCameraView)cameraView;
- (HUCameraView)initWithBadgeView:(id)view;
- (UIOffset)badgeOffset;
- (UIView)cameraOverlaySnapshot;
- (double)_continuousCornerRadius;
- (id)backgroundColor;
- (id)cameraContentSnapshot;
- (int64_t)contentModeForAspectRatio:(double)ratio;
- (void)_scheduleNextSnapshotAgeUpdateForCaptureDate:(id)date;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_updateBadgeViewReschedulingTimerIfNecessary:(BOOL)necessary;
- (void)_updateErrorAndActivityIndicatorVisibilityAnimated:(BOOL)animated;
- (void)_updateMaskedCameraCorners;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setBadgeBottomAnchor:(id)anchor;
- (void)setBadgeHidden:(BOOL)hidden;
- (void)setBadgeOffset:(UIOffset)offset;
- (void)setCameraContentMode:(int64_t)mode;
- (void)setCameraSource:(id)source animated:(BOOL)animated;
- (void)setCameraSource:(id)source withDemoSnapshotURL:(id)l animated:(BOOL)animated;
- (void)setContentMode:(int64_t)mode;
- (void)setErrorContent:(id)content animated:(BOOL)animated;
- (void)setShowActivityIndicator:(BOOL)indicator animated:(BOOL)animated;
- (void)updateConstraints;
@end

@implementation HUCameraView

- (HUCameraView)initWithBadgeView:(id)view
{
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = HUCameraView;
  v6 = [(HUCameraView *)&v20 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD1968]);
    [v7 setContentMode:1];
    v8 = [[HURemoteContextHostingView alloc] initWithContentView:v7];
    v9 = *(v6 + 57);
    *(v6 + 57) = v8;

    [*(v6 + 57) setClipsToBounds:1];
    [*(v6 + 57) setAlpha:0.0];
    [*(v6 + 57) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:*(v6 + 57)];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    v11 = *(v6 + 59);
    *(v6 + 59) = v10;

    layer = [*(v6 + 59) layer];
    [layer setMasksToBounds:1];

    [*(v6 + 59) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v6 + 59) setUserInteractionEnabled:0];
    [v6 addSubview:*(v6 + 59)];
    shouldSuppressAllErrorsForDemo = [MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo];
    if (viewCopy && (shouldSuppressAllErrorsForDemo & 1) == 0)
    {
      objc_storeStrong(v6 + 58, view);
      [*(v6 + 58) setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 addSubview:*(v6 + 58)];
      __asm { FMOV            V0.2D, #16.0 }

      *(v6 + 552) = _Q0;
      [v6 _updateBadgeView];
    }

    [v6 setContentMode:{objc_msgSend(v7, "contentMode")}];
    [v6 setOverrideUserInterfaceStyle:2];
  }

  return v6;
}

- (void)dealloc
{
  snapshotAgeUpdateTimer = [(HUCameraView *)self snapshotAgeUpdateTimer];
  [snapshotAgeUpdateTimer invalidate];

  v4.receiver = self;
  v4.super_class = HUCameraView;
  [(HUCameraView *)&v4 dealloc];
}

- (double)_continuousCornerRadius
{
  cameraContainerView = [(HUCameraView *)self cameraContainerView];
  [cameraContainerView _continuousCornerRadius];
  v4 = v3;

  return v4;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    demoSnapshotImageView = [(HUCameraView *)self demoSnapshotImageView];
    [demoSnapshotImageView _setContinuousCornerRadius:radius];
  }

  cameraContainerView = [(HUCameraView *)self cameraContainerView];
  [cameraContainerView _setContinuousCornerRadius:radius];

  backgroundView = [(HUCameraView *)self backgroundView];
  [backgroundView _setContinuousCornerRadius:radius];

  cameraOverlayView = [(HUCameraView *)self cameraOverlayView];
  [cameraOverlayView _setContinuousCornerRadius:radius];

  [(HUCameraView *)self _updateMaskedCameraCorners];
}

- (void)setContentMode:(int64_t)mode
{
  if ([(HUCameraView *)self contentMode]!= mode)
  {
    v8.receiver = self;
    v8.super_class = HUCameraView;
    [(HUCameraView *)&v8 setContentMode:mode];
    contentMode = [(HUCameraView *)self contentMode];
    cameraContainerView = [(HUCameraView *)self cameraContainerView];
    contentView = [cameraContainerView contentView];
    [contentView setContentMode:contentMode];
  }
}

- (id)backgroundColor
{
  backgroundView = [(HUCameraView *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundView = [(HUCameraView *)self backgroundView];
  if (!colorCopy || backgroundView)
  {
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    v7 = [colorCopy isEqual:clearColor];

    if ((v7 & 1) == 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __35__HUCameraView_setBackgroundColor___block_invoke;
      v9[3] = &unk_277DB8488;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
    }
  }

  backgroundView2 = [(HUCameraView *)self backgroundView];
  [backgroundView2 setBackgroundColor:colorCopy];
}

uint64_t __35__HUCameraView_setBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setBackgroundView:v2];

  [*(a1 + 32) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) backgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [*(a1 + 32) backgroundView];
  [v12 setAutoresizingMask:18];

  [*(a1 + 32) _continuousCornerRadius];
  v14 = v13;
  v15 = [*(a1 + 32) backgroundView];
  [v15 _setContinuousCornerRadius:v14];

  v16 = *(a1 + 32);
  v17 = [v16 backgroundView];
  [v16 insertSubview:v17 atIndex:0];

  v18 = *(a1 + 32);

  return [v18 _updateMaskedCameraCorners];
}

- (HMCameraView)cameraView
{
  cameraContainerView = [(HUCameraView *)self cameraContainerView];
  contentView = [cameraContainerView contentView];

  return contentView;
}

- (void)updateConstraints
{
  v60[2] = *MEMORY[0x277D85DE8];
  staticConstraints = [(HUCameraView *)self staticConstraints];

  if (!staticConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cameraContainerView = [(HUCameraView *)self cameraContainerView];
    centerXAnchor = [cameraContainerView centerXAnchor];
    centerXAnchor2 = [(HUCameraView *)self centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v4 addObject:v8];

    cameraContainerView2 = [(HUCameraView *)self cameraContainerView];
    centerYAnchor = [cameraContainerView2 centerYAnchor];
    centerYAnchor2 = [(HUCameraView *)self centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addObject:v12];

    cameraContainerView3 = [(HUCameraView *)self cameraContainerView];
    widthAnchor = [cameraContainerView3 widthAnchor];
    widthAnchor2 = [(HUCameraView *)self widthAnchor];
    v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v4 addObject:v16];

    cameraContainerView4 = [(HUCameraView *)self cameraContainerView];
    heightAnchor = [cameraContainerView4 heightAnchor];
    heightAnchor2 = [(HUCameraView *)self heightAnchor];
    v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v4 addObject:v20];

    cameraOverlayView = [(HUCameraView *)self cameraOverlayView];
    widthAnchor3 = [cameraOverlayView widthAnchor];
    widthAnchor4 = [(HUCameraView *)self widthAnchor];
    v24 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v4 addObject:v24];

    cameraOverlayView2 = [(HUCameraView *)self cameraOverlayView];
    heightAnchor3 = [cameraOverlayView2 heightAnchor];
    heightAnchor4 = [(HUCameraView *)self heightAnchor];
    v28 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    [v4 addObject:v28];

    cameraOverlayView3 = [(HUCameraView *)self cameraOverlayView];
    centerXAnchor3 = [cameraOverlayView3 centerXAnchor];
    centerXAnchor4 = [(HUCameraView *)self centerXAnchor];
    v32 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v4 addObject:v32];

    cameraOverlayView4 = [(HUCameraView *)self cameraOverlayView];
    centerYAnchor3 = [cameraOverlayView4 centerYAnchor];
    centerYAnchor4 = [(HUCameraView *)self centerYAnchor];
    v36 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v4 addObject:v36];

    [(HUCameraView *)self setStaticConstraints:v4];
    v37 = MEMORY[0x277CCAAD0];
    staticConstraints2 = [(HUCameraView *)self staticConstraints];
    [v37 activateConstraints:staticConstraints2];
  }

  badgeView = [(HUCameraView *)self badgeView];
  if (badgeView)
  {
    v40 = badgeView;
    badgeBottomConstraint = [(HUCameraView *)self badgeBottomConstraint];
    if (badgeBottomConstraint)
    {
    }

    else
    {
      badgeTrailingConstraint = [(HUCameraView *)self badgeTrailingConstraint];

      if (!badgeTrailingConstraint)
      {
        badgeView2 = [(HUCameraView *)self badgeView];
        bottomAnchor = [badgeView2 bottomAnchor];
        badgeBottomAnchor = [(HUCameraView *)self badgeBottomAnchor];
        bottomAnchor2 = badgeBottomAnchor;
        if (!badgeBottomAnchor)
        {
          bottomAnchor2 = [(HUCameraView *)self bottomAnchor];
        }

        [(HUCameraView *)self badgeOffset];
        v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v47];
        [(HUCameraView *)self setBadgeBottomConstraint:v48];

        if (!badgeBottomAnchor)
        {
        }

        badgeView3 = [(HUCameraView *)self badgeView];
        trailingAnchor = [badgeView3 trailingAnchor];
        safeAreaLayoutGuide = [(HUCameraView *)self safeAreaLayoutGuide];
        trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
        [(HUCameraView *)self badgeOffset];
        v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v53];
        [(HUCameraView *)self setBadgeTrailingConstraint:v54];

        v55 = MEMORY[0x277CCAAD0];
        badgeBottomConstraint2 = [(HUCameraView *)self badgeBottomConstraint];
        v60[0] = badgeBottomConstraint2;
        badgeTrailingConstraint2 = [(HUCameraView *)self badgeTrailingConstraint];
        v60[1] = badgeTrailingConstraint2;
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        [v55 activateConstraints:v58];
      }
    }
  }

  v59.receiver = self;
  v59.super_class = HUCameraView;
  [(HUCameraView *)&v59 updateConstraints];
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = HUCameraView;
  [(HUCameraView *)&v36 layoutSubviews];
  [(HUCameraView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  cameraContainerView = [(HUCameraView *)self cameraContainerView];
  [cameraContainerView setFrame:{v4, v6, v8, v10}];

  cameraContainerView2 = [(HUCameraView *)self cameraContainerView];
  [cameraContainerView2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  cameraView = [(HUCameraView *)self cameraView];
  [cameraView setFrame:{v14, v16, v18, v20}];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    cameraContainerView3 = [(HUCameraView *)self cameraContainerView];
    [cameraContainerView3 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    demoSnapshotImageView = [(HUCameraView *)self demoSnapshotImageView];
    [demoSnapshotImageView setFrame:{v24, v26, v28, v30}];
  }

  [(HUCameraView *)self cameraContentFrame];
  if (v33 == *MEMORY[0x277CBF3A8] && v32 == *(MEMORY[0x277CBF3A8] + 8))
  {
    cameraContainerView4 = [(HUCameraView *)self cameraContainerView];
    [cameraContainerView4 layoutIfNeeded];
  }

  [(HUCameraView *)self _updateMaskedCameraCorners];
}

- (void)setCameraContentMode:(int64_t)mode
{
  cameraView = [(HUCameraView *)self cameraView];
  contentMode = [cameraView contentMode];

  if (contentMode != mode)
  {
    cameraView2 = [(HUCameraView *)self cameraView];
    [cameraView2 setContentMode:mode];

    [(HUCameraView *)self setNeedsUpdateConstraints];
  }
}

- (void)setCameraSource:(id)source withDemoSnapshotURL:(id)l animated:(BOOL)animated
{
  animatedCopy = animated;
  sourceCopy = source;
  lCopy = l;
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    demoSnapshotImageView = [(HUCameraView *)self demoSnapshotImageView];

    if (!demoSnapshotImageView)
    {
      v10 = objc_alloc(MEMORY[0x277D755B8]);
      path = [lCopy path];
      v12 = [v10 initWithContentsOfFile:path];

      v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
      [(HUCameraView *)self setDemoSnapshotImageView:v13];
      systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
      [v13 setBackgroundColor:systemBlackColor];

      [v13 setClipsToBounds:1];
      [v13 setContentMode:2];
      [v13 setAutoresizingMask:18];
      [(HUCameraView *)self bounds];
      [v13 setFrame:?];
      [(HUCameraView *)self addSubview:v13];
      [(HUCameraView *)self _continuousCornerRadius];
      v16 = v15;
      demoSnapshotImageView2 = [(HUCameraView *)self demoSnapshotImageView];
      [demoSnapshotImageView2 _setContinuousCornerRadius:v16];
    }
  }

  [(HUCameraView *)self setCameraSource:sourceCopy animated:animatedCopy];
}

- (int64_t)contentModeForAspectRatio:(double)ratio
{
  if (((ratio < 1.0) & [(HUCameraView *)self shouldRespectAspectRatio]) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setCameraSource:(id)source animated:(BOOL)animated
{
  animatedCopy = animated;
  sourceCopy = source;
  cameraView = [(HUCameraView *)self cameraView];
  cameraSource = [cameraView cameraSource];

  if (cameraSource != sourceCopy)
  {
    cameraView2 = [(HUCameraView *)self cameraView];
    [cameraView2 setCameraSource:sourceCopy];

    [sourceCopy aspectRatio];
    [(HUCameraView *)self setCameraContentMode:[(HUCameraView *)self contentModeForAspectRatio:?]];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __41__HUCameraView_setCameraSource_animated___block_invoke;
    v17 = &unk_277DB7558;
    selfCopy = self;
    v19 = sourceCopy;
    v10 = _Block_copy(&v14);
    v11 = v10;
    if (animatedCopy)
    {
      animation = [MEMORY[0x277CDA000] animation];
      [animation setType:*MEMORY[0x277CDA928]];
      [animation setDuration:0.5];
      cameraView3 = [(HUCameraView *)self cameraView];
      [cameraView3 addAnimation:animation forKey:@"cameraSourceTransition"];

      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:0.5];
    }

    else
    {
      (*(v10 + 2))(v10);
    }

    [(HUCameraView *)self _updateBadgeView:v14];
    [(HUCameraView *)self _updateErrorAndActivityIndicatorVisibilityAnimated:animatedCopy];
    [(HUCameraView *)self setNeedsUpdateConstraints];
    [(HUCameraView *)self setNeedsLayout];
    [(HUCameraView *)self _updateMaskedCameraCorners];
  }
}

void __41__HUCameraView_setCameraSource_animated___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [v1 cameraContainerView];
  [v4 setAlpha:v3];
}

- (HMCameraSource)cameraSource
{
  cameraView = [(HUCameraView *)self cameraView];
  cameraSource = [cameraView cameraSource];

  return cameraSource;
}

- (void)setErrorContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  v37[4] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo] & 1) == 0 && self->_errorContent != contentCopy)
  {
    objc_storeStrong(&self->_errorContent, content);
    if (contentCopy)
    {
      errorView = [(HUCameraView *)self errorView];

      if (!errorView)
      {
        overrideErrorView = [(HUCameraView *)self overrideErrorView];
        if (overrideErrorView)
        {
          [(HUCameraView *)self setErrorView:overrideErrorView];
        }

        else
        {
          v10 = objc_alloc_init(HUCameraErrorView);
          [(HUCameraView *)self setErrorView:v10];
        }

        errorView2 = [(HUCameraView *)self errorView];
        [errorView2 setAlpha:0.0];

        errorView3 = [(HUCameraView *)self errorView];
        [errorView3 setTranslatesAutoresizingMaskIntoConstraints:0];

        cameraOverlayView = [(HUCameraView *)self cameraOverlayView];
        errorView4 = [(HUCameraView *)self errorView];
        [cameraOverlayView addSubview:errorView4];

        v29 = MEMORY[0x277CCAAD0];
        errorView5 = [(HUCameraView *)self errorView];
        centerXAnchor = [errorView5 centerXAnchor];
        centerXAnchor2 = [(HUCameraView *)self centerXAnchor];
        v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v37[0] = v33;
        errorView6 = [(HUCameraView *)self errorView];
        centerYAnchor = [errorView6 centerYAnchor];
        centerYAnchor2 = [(HUCameraView *)self centerYAnchor];
        v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v37[1] = v28;
        errorView7 = [(HUCameraView *)self errorView];
        widthAnchor = [errorView7 widthAnchor];
        widthAnchor2 = [(HUCameraView *)self widthAnchor];
        v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        v37[2] = v16;
        errorView8 = [(HUCameraView *)self errorView];
        heightAnchor = [errorView8 heightAnchor];
        heightAnchor2 = [(HUCameraView *)self heightAnchor];
        v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v37[3] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
        [v29 activateConstraints:v21];
      }
    }

    titleText = [(HUCameraErrorContent *)contentCopy titleText];
    errorView9 = [(HUCameraView *)self errorView];
    [errorView9 setTitleText:titleText];

    descriptionText = [(HUCameraErrorContent *)contentCopy descriptionText];
    errorView10 = [(HUCameraView *)self errorView];
    [errorView10 setDescriptionText:descriptionText];

    [(HUCameraView *)self _updateErrorAndActivityIndicatorVisibilityAnimated:animatedCopy];
  }
}

- (void)setShowActivityIndicator:(BOOL)indicator animated:(BOOL)animated
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (self->_showActivityIndicator != indicator)
  {
    animatedCopy = animated;
    indicatorCopy = indicator;
    if (([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo] & 1) == 0)
    {
      self->_showActivityIndicator = indicatorCopy;
      activityIndicatorView = [(HUCameraView *)self activityIndicatorView];
      v8 = activityIndicatorView;
      if (indicatorCopy)
      {

        if (!v8)
        {
          v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
          [(HUCameraView *)self setActivityIndicatorView:v9];

          activityIndicatorView2 = [(HUCameraView *)self activityIndicatorView];
          [activityIndicatorView2 setAlpha:0.0];

          activityIndicatorView3 = [(HUCameraView *)self activityIndicatorView];
          [activityIndicatorView3 setTranslatesAutoresizingMaskIntoConstraints:0];

          cameraOverlayView = [(HUCameraView *)self cameraOverlayView];
          activityIndicatorView4 = [(HUCameraView *)self activityIndicatorView];
          [cameraOverlayView addSubview:activityIndicatorView4];

          v23 = MEMORY[0x277CCAAD0];
          activityIndicatorView5 = [(HUCameraView *)self activityIndicatorView];
          centerXAnchor = [activityIndicatorView5 centerXAnchor];
          centerXAnchor2 = [(HUCameraView *)self centerXAnchor];
          v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          v25[0] = v16;
          activityIndicatorView6 = [(HUCameraView *)self activityIndicatorView];
          centerYAnchor = [activityIndicatorView6 centerYAnchor];
          centerYAnchor2 = [(HUCameraView *)self centerYAnchor];
          v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v25[1] = v20;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
          [v23 activateConstraints:v21];
        }

        activityIndicatorView7 = [(HUCameraView *)self activityIndicatorView];
        [activityIndicatorView7 startAnimating];
      }

      else
      {
        [activityIndicatorView stopAnimating];
      }

      [(HUCameraView *)self _updateErrorAndActivityIndicatorVisibilityAnimated:animatedCopy];
    }
  }
}

- (void)setBadgeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  badgeView = [(HUCameraView *)self badgeView];
  [badgeView setHidden:hiddenCopy];
}

- (BOOL)isBadgeHidden
{
  badgeView = [(HUCameraView *)self badgeView];
  if (badgeView)
  {
    badgeView2 = [(HUCameraView *)self badgeView];
    isHidden = [badgeView2 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  return isHidden;
}

- (void)setBadgeOffset:(UIOffset)offset
{
  p_badgeOffset = &self->_badgeOffset;
  if (offset.horizontal != self->_badgeOffset.horizontal || offset.vertical != self->_badgeOffset.vertical)
  {
    p_badgeOffset->horizontal = offset.horizontal;
    self->_badgeOffset.vertical = offset.vertical;
    v6 = -offset.vertical;
    badgeBottomConstraint = [(HUCameraView *)self badgeBottomConstraint];
    [badgeBottomConstraint setConstant:v6];

    v8 = -p_badgeOffset->horizontal;
    badgeTrailingConstraint = [(HUCameraView *)self badgeTrailingConstraint];
    [badgeTrailingConstraint setConstant:v8];
  }
}

- (void)setBadgeBottomAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (self->_badgeBottomAnchor != anchorCopy)
  {
    v8 = anchorCopy;
    objc_storeStrong(&self->_badgeBottomAnchor, anchor);
    badgeBottomConstraint = [(HUCameraView *)self badgeBottomConstraint];
    [badgeBottomConstraint setActive:0];

    badgeTrailingConstraint = [(HUCameraView *)self badgeTrailingConstraint];
    [badgeTrailingConstraint setActive:0];

    [(HUCameraView *)self setBadgeBottomConstraint:0];
    [(HUCameraView *)self setBadgeTrailingConstraint:0];
    [(HUCameraView *)self setNeedsUpdateConstraints];
    anchorCopy = v8;
  }
}

- (CGRect)cameraContentFrame
{
  cameraView = [(HUCameraView *)self cameraView];
  [cameraView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  cameraView2 = [(HUCameraView *)self cameraView];
  [(HUCameraView *)self convertRect:cameraView2 fromView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)derivedCameraContentFrame
{
  cameraView = [(HUCameraView *)self cameraView];
  cameraSource = [cameraView cameraSource];

  if (cameraSource)
  {
    [cameraSource aspectRatio];
    v6 = v5;
    [(HUCameraView *)self bounds];
    v8 = v7 / v6;
    [(HUCameraView *)self bounds];
    v10 = (v9 - v8) * 0.5;
    [(HUCameraView *)self bounds];
    v12 = v11;
    v13 = 0.0;
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v14 = v13;
  v15 = v10;
  v16 = v12;
  v17 = v8;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)cameraContentSnapshot
{
  cameraView = [(HUCameraView *)self cameraView];
  v4 = [cameraView snapshotViewAfterScreenUpdates:0];

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  cameraView2 = [(HUCameraView *)self cameraView];
  [(HUCameraView *)self convertRect:cameraView2 fromView:v6, v8, v10, v12];
  [v4 setFrame:?];

  return v4;
}

- (UIView)cameraOverlaySnapshot
{
  errorContent = [(HUCameraView *)self errorContent];

  if (errorContent)
  {
    cameraOverlayView = [(HUCameraView *)self cameraOverlayView];
    errorContent = [cameraOverlayView snapshotViewAfterScreenUpdates:0];

    [errorContent bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    cameraOverlayView2 = [(HUCameraView *)self cameraOverlayView];
    [(HUCameraView *)self convertRect:cameraOverlayView2 fromView:v6, v8, v10, v12];
    [errorContent setFrame:?];
  }

  return errorContent;
}

- (void)_updateMaskedCameraCorners
{
  maskedCameraCorners = [(HUCameraView *)self maskedCameraCorners];
  cameraContainerView = [(HUCameraView *)self cameraContainerView];
  [cameraContainerView setMaskedCorners:maskedCameraCorners];

  LOBYTE(maskedCameraCorners) = [(HUCameraView *)self maskedCameraCorners];
  backgroundView = [(HUCameraView *)self backgroundView];
  layer = [backgroundView layer];
  [layer setMaskedCorners:maskedCameraCorners & 0xF];

  LOBYTE(maskedCameraCorners) = [(HUCameraView *)self maskedCameraCorners];
  cameraOverlayView = [(HUCameraView *)self cameraOverlayView];
  layer2 = [cameraOverlayView layer];
  [layer2 setMaskedCorners:maskedCameraCorners & 0xF];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    maskedCameraCorners2 = [(HUCameraView *)self maskedCameraCorners];
    demoSnapshotImageView = [(HUCameraView *)self demoSnapshotImageView];
    layer3 = [demoSnapshotImageView layer];
    [layer3 setMaskedCorners:maskedCameraCorners2 & 0xF];
  }
}

- (void)_updateErrorAndActivityIndicatorVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo])
  {
    return;
  }

  errorContent = [(HUCameraView *)self errorContent];
  if (!errorContent && ![(HUCameraView *)self showActivityIndicator])
  {
    goto LABEL_6;
  }

  cameraSource = [(HUCameraView *)self cameraSource];
  if (!cameraSource)
  {
LABEL_10:

    goto LABEL_11;
  }

  hideCameraContentWhenDisplayingErrors = [(HUCameraView *)self hideCameraContentWhenDisplayingErrors];

  if (!hideCameraContentWhenDisplayingErrors)
  {
    cameraDimmingView = [(HUCameraView *)self cameraDimmingView];

    if (cameraDimmingView)
    {
      LOBYTE(cameraSource) = 1;
      goto LABEL_11;
    }

    v9 = objc_alloc(MEMORY[0x277D75D68]);
    v10 = [MEMORY[0x277D75210] effectWithStyle:1102];
    v11 = [v9 initWithEffect:v10];
    [(HUCameraView *)self setCameraDimmingView:v11];

    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    cameraDimmingView2 = [(HUCameraView *)self cameraDimmingView];
    [cameraDimmingView2 setBackgroundColor:v12];

    [(HUCameraView *)self bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    cameraDimmingView3 = [(HUCameraView *)self cameraDimmingView];
    [cameraDimmingView3 setFrame:{v15, v17, v19, v21}];

    cameraDimmingView4 = [(HUCameraView *)self cameraDimmingView];
    [cameraDimmingView4 setAutoresizingMask:18];

    cameraDimmingView5 = [(HUCameraView *)self cameraDimmingView];
    [cameraDimmingView5 setAlpha:0.0];

    errorContent = [(HUCameraView *)self cameraOverlayView];
    cameraSource = [(HUCameraView *)self cameraDimmingView];
    [errorContent insertSubview:cameraSource atIndex:0];

    LOBYTE(cameraSource) = 1;
    goto LABEL_10;
  }

LABEL_6:
  LOBYTE(cameraSource) = 0;
LABEL_11:
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__HUCameraView__updateErrorAndActivityIndicatorVisibilityAnimated___block_invoke;
  v27[3] = &unk_277DB7EE0;
  v27[4] = self;
  v28 = cameraSource;
  v25 = _Block_copy(v27);
  v26 = v25;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v25 animations:0.3];
  }

  else
  {
    (*(v25 + 2))(v25);
  }
}

void __67__HUCameraView__updateErrorAndActivityIndicatorVisibilityAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorContent];
  v3 = 1.0;
  if (v2)
  {
    v3 = ([*(a1 + 32) hideCameraContentWhenDisplayingErrors] ^ 1);
  }

  v4 = [*(a1 + 32) cameraContainerView];
  [v4 setAlpha:v3];

  LOBYTE(v5) = *(a1 + 40);
  v6 = v5;
  v7 = [*(a1 + 32) cameraDimmingView];
  [v7 setAlpha:v6];

  v8 = [*(a1 + 32) errorContent];
  if (v8)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [*(a1 + 32) errorView];
  [v10 setAlpha:v9];

  v11 = [*(a1 + 32) showActivityIndicator];
  v12 = [*(a1 + 32) activityIndicatorView];
  [v12 setAlpha:v11];
}

- (void)_updateBadgeViewReschedulingTimerIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  badgeView = [(HUCameraView *)self badgeView];

  if (!badgeView)
  {
LABEL_9:
    snapshotAgeUpdateTimer = [(HUCameraView *)self snapshotAgeUpdateTimer];
    [snapshotAgeUpdateTimer invalidate];

    [(HUCameraView *)self setSnapshotAgeUpdateTimer:0];
    return;
  }

  cameraView = [(HUCameraView *)self cameraView];
  cameraSource = [cameraView cameraSource];
  if (!cameraSource)
  {

    goto LABEL_7;
  }

  v8 = cameraSource;
  isBadgeHidden = [(HUCameraView *)self isBadgeHidden];

  if (isBadgeHidden)
  {
LABEL_7:
    badgeView2 = [(HUCameraView *)self badgeView];
    [badgeView2 setHidden:1];
    goto LABEL_8;
  }

  cameraView2 = [(HUCameraView *)self cameraView];
  cameraSource2 = [cameraView2 cameraSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    badgeView2 = _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
    badgeView3 = [(HUCameraView *)self badgeView];
    [badgeView3 setLabelText:badgeView2];

LABEL_8:
    goto LABEL_9;
  }

  v16 = objc_opt_class();
  cameraView3 = [(HUCameraView *)self cameraView];
  cameraSource3 = [cameraView3 cameraSource];
  if (cameraSource3)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = cameraSource3;
    }

    else
    {
      v19 = 0;
    }

    v26 = cameraSource3;
    if (v19)
    {
      goto LABEL_19;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];
  }

  v26 = 0;
LABEL_19:

  hf_localizedAge = [v26 hf_localizedAge];
  badgeView4 = [(HUCameraView *)self badgeView];
  [badgeView4 setLabelText:hf_localizedAge];

  snapshotAgeUpdateTimer2 = [(HUCameraView *)self snapshotAgeUpdateTimer];

  if (!snapshotAgeUpdateTimer2 || necessaryCopy)
  {
    captureDate = [v26 captureDate];
    [(HUCameraView *)self _scheduleNextSnapshotAgeUpdateForCaptureDate:captureDate];
  }
}

- (void)_scheduleNextSnapshotAgeUpdateForCaptureDate:(id)date
{
  dateCopy = date;
  snapshotAgeUpdateTimer = [(HUCameraView *)self snapshotAgeUpdateTimer];
  [snapshotAgeUpdateTimer invalidate];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D2C8D8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__HUCameraView__scheduleNextSnapshotAgeUpdateForCaptureDate___block_invoke;
  v11 = &unk_277DC0F48;
  objc_copyWeak(&v12, &location);
  v7 = [v6 scheduledTimerWithReferenceDate:dateCopy minimumUnit:128 block:&v8];
  [(HUCameraView *)self setSnapshotAgeUpdateTimer:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__HUCameraView__scheduleNextSnapshotAgeUpdateForCaptureDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBadgeViewReschedulingTimerIfNecessary:0];
}

- (UIOffset)badgeOffset
{
  horizontal = self->_badgeOffset.horizontal;
  vertical = self->_badgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end