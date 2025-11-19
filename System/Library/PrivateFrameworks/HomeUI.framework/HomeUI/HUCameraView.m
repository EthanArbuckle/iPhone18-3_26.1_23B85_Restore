@interface HUCameraView
- (BOOL)isBadgeHidden;
- (CGRect)cameraContentFrame;
- (CGRect)derivedCameraContentFrame;
- (HMCameraSource)cameraSource;
- (HMCameraView)cameraView;
- (HUCameraView)initWithBadgeView:(id)a3;
- (UIOffset)badgeOffset;
- (UIView)cameraOverlaySnapshot;
- (double)_continuousCornerRadius;
- (id)backgroundColor;
- (id)cameraContentSnapshot;
- (int64_t)contentModeForAspectRatio:(double)a3;
- (void)_scheduleNextSnapshotAgeUpdateForCaptureDate:(id)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_updateBadgeViewReschedulingTimerIfNecessary:(BOOL)a3;
- (void)_updateErrorAndActivityIndicatorVisibilityAnimated:(BOOL)a3;
- (void)_updateMaskedCameraCorners;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBadgeBottomAnchor:(id)a3;
- (void)setBadgeHidden:(BOOL)a3;
- (void)setBadgeOffset:(UIOffset)a3;
- (void)setCameraContentMode:(int64_t)a3;
- (void)setCameraSource:(id)a3 animated:(BOOL)a4;
- (void)setCameraSource:(id)a3 withDemoSnapshotURL:(id)a4 animated:(BOOL)a5;
- (void)setContentMode:(int64_t)a3;
- (void)setErrorContent:(id)a3 animated:(BOOL)a4;
- (void)setShowActivityIndicator:(BOOL)a3 animated:(BOOL)a4;
- (void)updateConstraints;
@end

@implementation HUCameraView

- (HUCameraView)initWithBadgeView:(id)a3
{
  v5 = a3;
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

    v12 = [*(v6 + 59) layer];
    [v12 setMasksToBounds:1];

    [*(v6 + 59) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v6 + 59) setUserInteractionEnabled:0];
    [v6 addSubview:*(v6 + 59)];
    v13 = [MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo];
    if (v5 && (v13 & 1) == 0)
    {
      objc_storeStrong(v6 + 58, a3);
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
  v3 = [(HUCameraView *)self snapshotAgeUpdateTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HUCameraView;
  [(HUCameraView *)&v4 dealloc];
}

- (double)_continuousCornerRadius
{
  v2 = [(HUCameraView *)self cameraContainerView];
  [v2 _continuousCornerRadius];
  v4 = v3;

  return v4;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v5 = [(HUCameraView *)self demoSnapshotImageView];
    [v5 _setContinuousCornerRadius:a3];
  }

  v6 = [(HUCameraView *)self cameraContainerView];
  [v6 _setContinuousCornerRadius:a3];

  v7 = [(HUCameraView *)self backgroundView];
  [v7 _setContinuousCornerRadius:a3];

  v8 = [(HUCameraView *)self cameraOverlayView];
  [v8 _setContinuousCornerRadius:a3];

  [(HUCameraView *)self _updateMaskedCameraCorners];
}

- (void)setContentMode:(int64_t)a3
{
  if ([(HUCameraView *)self contentMode]!= a3)
  {
    v8.receiver = self;
    v8.super_class = HUCameraView;
    [(HUCameraView *)&v8 setContentMode:a3];
    v5 = [(HUCameraView *)self contentMode];
    v6 = [(HUCameraView *)self cameraContainerView];
    v7 = [v6 contentView];
    [v7 setContentMode:v5];
  }
}

- (id)backgroundColor
{
  v2 = [(HUCameraView *)self backgroundView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraView *)self backgroundView];
  if (!v4 || v5)
  {
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [v4 isEqual:v6];

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

  v8 = [(HUCameraView *)self backgroundView];
  [v8 setBackgroundColor:v4];
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
  v2 = [(HUCameraView *)self cameraContainerView];
  v3 = [v2 contentView];

  return v3;
}

- (void)updateConstraints
{
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraView *)self staticConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(HUCameraView *)self cameraContainerView];
    v6 = [v5 centerXAnchor];
    v7 = [(HUCameraView *)self centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v4 addObject:v8];

    v9 = [(HUCameraView *)self cameraContainerView];
    v10 = [v9 centerYAnchor];
    v11 = [(HUCameraView *)self centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v4 addObject:v12];

    v13 = [(HUCameraView *)self cameraContainerView];
    v14 = [v13 widthAnchor];
    v15 = [(HUCameraView *)self widthAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v4 addObject:v16];

    v17 = [(HUCameraView *)self cameraContainerView];
    v18 = [v17 heightAnchor];
    v19 = [(HUCameraView *)self heightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v4 addObject:v20];

    v21 = [(HUCameraView *)self cameraOverlayView];
    v22 = [v21 widthAnchor];
    v23 = [(HUCameraView *)self widthAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v4 addObject:v24];

    v25 = [(HUCameraView *)self cameraOverlayView];
    v26 = [v25 heightAnchor];
    v27 = [(HUCameraView *)self heightAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v4 addObject:v28];

    v29 = [(HUCameraView *)self cameraOverlayView];
    v30 = [v29 centerXAnchor];
    v31 = [(HUCameraView *)self centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v4 addObject:v32];

    v33 = [(HUCameraView *)self cameraOverlayView];
    v34 = [v33 centerYAnchor];
    v35 = [(HUCameraView *)self centerYAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v4 addObject:v36];

    [(HUCameraView *)self setStaticConstraints:v4];
    v37 = MEMORY[0x277CCAAD0];
    v38 = [(HUCameraView *)self staticConstraints];
    [v37 activateConstraints:v38];
  }

  v39 = [(HUCameraView *)self badgeView];
  if (v39)
  {
    v40 = v39;
    v41 = [(HUCameraView *)self badgeBottomConstraint];
    if (v41)
    {
    }

    else
    {
      v42 = [(HUCameraView *)self badgeTrailingConstraint];

      if (!v42)
      {
        v43 = [(HUCameraView *)self badgeView];
        v44 = [v43 bottomAnchor];
        v45 = [(HUCameraView *)self badgeBottomAnchor];
        v46 = v45;
        if (!v45)
        {
          v46 = [(HUCameraView *)self bottomAnchor];
        }

        [(HUCameraView *)self badgeOffset];
        v48 = [v44 constraintEqualToAnchor:v46 constant:-v47];
        [(HUCameraView *)self setBadgeBottomConstraint:v48];

        if (!v45)
        {
        }

        v49 = [(HUCameraView *)self badgeView];
        v50 = [v49 trailingAnchor];
        v51 = [(HUCameraView *)self safeAreaLayoutGuide];
        v52 = [v51 trailingAnchor];
        [(HUCameraView *)self badgeOffset];
        v54 = [v50 constraintEqualToAnchor:v52 constant:-v53];
        [(HUCameraView *)self setBadgeTrailingConstraint:v54];

        v55 = MEMORY[0x277CCAAD0];
        v56 = [(HUCameraView *)self badgeBottomConstraint];
        v60[0] = v56;
        v57 = [(HUCameraView *)self badgeTrailingConstraint];
        v60[1] = v57;
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
  v11 = [(HUCameraView *)self cameraContainerView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(HUCameraView *)self cameraContainerView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(HUCameraView *)self cameraView];
  [v21 setFrame:{v14, v16, v18, v20}];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v22 = [(HUCameraView *)self cameraContainerView];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(HUCameraView *)self demoSnapshotImageView];
    [v31 setFrame:{v24, v26, v28, v30}];
  }

  [(HUCameraView *)self cameraContentFrame];
  if (v33 == *MEMORY[0x277CBF3A8] && v32 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v35 = [(HUCameraView *)self cameraContainerView];
    [v35 layoutIfNeeded];
  }

  [(HUCameraView *)self _updateMaskedCameraCorners];
}

- (void)setCameraContentMode:(int64_t)a3
{
  v5 = [(HUCameraView *)self cameraView];
  v6 = [v5 contentMode];

  if (v6 != a3)
  {
    v7 = [(HUCameraView *)self cameraView];
    [v7 setContentMode:a3];

    [(HUCameraView *)self setNeedsUpdateConstraints];
  }
}

- (void)setCameraSource:(id)a3 withDemoSnapshotURL:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v8 = a4;
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v9 = [(HUCameraView *)self demoSnapshotImageView];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277D755B8]);
      v11 = [v8 path];
      v12 = [v10 initWithContentsOfFile:v11];

      v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
      [(HUCameraView *)self setDemoSnapshotImageView:v13];
      v14 = [MEMORY[0x277D75348] systemBlackColor];
      [v13 setBackgroundColor:v14];

      [v13 setClipsToBounds:1];
      [v13 setContentMode:2];
      [v13 setAutoresizingMask:18];
      [(HUCameraView *)self bounds];
      [v13 setFrame:?];
      [(HUCameraView *)self addSubview:v13];
      [(HUCameraView *)self _continuousCornerRadius];
      v16 = v15;
      v17 = [(HUCameraView *)self demoSnapshotImageView];
      [v17 _setContinuousCornerRadius:v16];
    }
  }

  [(HUCameraView *)self setCameraSource:v18 animated:v5];
}

- (int64_t)contentModeForAspectRatio:(double)a3
{
  if (((a3 < 1.0) & [(HUCameraView *)self shouldRespectAspectRatio]) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setCameraSource:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUCameraView *)self cameraView];
  v8 = [v7 cameraSource];

  if (v8 != v6)
  {
    v9 = [(HUCameraView *)self cameraView];
    [v9 setCameraSource:v6];

    [v6 aspectRatio];
    [(HUCameraView *)self setCameraContentMode:[(HUCameraView *)self contentModeForAspectRatio:?]];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __41__HUCameraView_setCameraSource_animated___block_invoke;
    v17 = &unk_277DB7558;
    v18 = self;
    v19 = v6;
    v10 = _Block_copy(&v14);
    v11 = v10;
    if (v4)
    {
      v12 = [MEMORY[0x277CDA000] animation];
      [v12 setType:*MEMORY[0x277CDA928]];
      [v12 setDuration:0.5];
      v13 = [(HUCameraView *)self cameraView];
      [v13 addAnimation:v12 forKey:@"cameraSourceTransition"];

      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:0.5];
    }

    else
    {
      (*(v10 + 2))(v10);
    }

    [(HUCameraView *)self _updateBadgeView:v14];
    [(HUCameraView *)self _updateErrorAndActivityIndicatorVisibilityAnimated:v4];
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
  v2 = [(HUCameraView *)self cameraView];
  v3 = [v2 cameraSource];

  return v3;
}

- (void)setErrorContent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v37[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo] & 1) == 0 && self->_errorContent != v7)
  {
    objc_storeStrong(&self->_errorContent, a3);
    if (v7)
    {
      v8 = [(HUCameraView *)self errorView];

      if (!v8)
      {
        v9 = [(HUCameraView *)self overrideErrorView];
        if (v9)
        {
          [(HUCameraView *)self setErrorView:v9];
        }

        else
        {
          v10 = objc_alloc_init(HUCameraErrorView);
          [(HUCameraView *)self setErrorView:v10];
        }

        v11 = [(HUCameraView *)self errorView];
        [v11 setAlpha:0.0];

        v12 = [(HUCameraView *)self errorView];
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

        v13 = [(HUCameraView *)self cameraOverlayView];
        v14 = [(HUCameraView *)self errorView];
        [v13 addSubview:v14];

        v29 = MEMORY[0x277CCAAD0];
        v36 = [(HUCameraView *)self errorView];
        v35 = [v36 centerXAnchor];
        v34 = [(HUCameraView *)self centerXAnchor];
        v33 = [v35 constraintEqualToAnchor:v34];
        v37[0] = v33;
        v32 = [(HUCameraView *)self errorView];
        v31 = [v32 centerYAnchor];
        v30 = [(HUCameraView *)self centerYAnchor];
        v28 = [v31 constraintEqualToAnchor:v30];
        v37[1] = v28;
        v27 = [(HUCameraView *)self errorView];
        v26 = [v27 widthAnchor];
        v15 = [(HUCameraView *)self widthAnchor];
        v16 = [v26 constraintEqualToAnchor:v15];
        v37[2] = v16;
        v17 = [(HUCameraView *)self errorView];
        v18 = [v17 heightAnchor];
        v19 = [(HUCameraView *)self heightAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v37[3] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
        [v29 activateConstraints:v21];
      }
    }

    v22 = [(HUCameraErrorContent *)v7 titleText];
    v23 = [(HUCameraView *)self errorView];
    [v23 setTitleText:v22];

    v24 = [(HUCameraErrorContent *)v7 descriptionText];
    v25 = [(HUCameraView *)self errorView];
    [v25 setDescriptionText:v24];

    [(HUCameraView *)self _updateErrorAndActivityIndicatorVisibilityAnimated:v4];
  }
}

- (void)setShowActivityIndicator:(BOOL)a3 animated:(BOOL)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (self->_showActivityIndicator != a3)
  {
    v4 = a4;
    v5 = a3;
    if (([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo] & 1) == 0)
    {
      self->_showActivityIndicator = v5;
      v7 = [(HUCameraView *)self activityIndicatorView];
      v8 = v7;
      if (v5)
      {

        if (!v8)
        {
          v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
          [(HUCameraView *)self setActivityIndicatorView:v9];

          v10 = [(HUCameraView *)self activityIndicatorView];
          [v10 setAlpha:0.0];

          v11 = [(HUCameraView *)self activityIndicatorView];
          [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

          v12 = [(HUCameraView *)self cameraOverlayView];
          v13 = [(HUCameraView *)self activityIndicatorView];
          [v12 addSubview:v13];

          v23 = MEMORY[0x277CCAAD0];
          v24 = [(HUCameraView *)self activityIndicatorView];
          v14 = [v24 centerXAnchor];
          v15 = [(HUCameraView *)self centerXAnchor];
          v16 = [v14 constraintEqualToAnchor:v15];
          v25[0] = v16;
          v17 = [(HUCameraView *)self activityIndicatorView];
          v18 = [v17 centerYAnchor];
          v19 = [(HUCameraView *)self centerYAnchor];
          v20 = [v18 constraintEqualToAnchor:v19];
          v25[1] = v20;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
          [v23 activateConstraints:v21];
        }

        v22 = [(HUCameraView *)self activityIndicatorView];
        [v22 startAnimating];
      }

      else
      {
        [v7 stopAnimating];
      }

      [(HUCameraView *)self _updateErrorAndActivityIndicatorVisibilityAnimated:v4];
    }
  }
}

- (void)setBadgeHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUCameraView *)self badgeView];
  [v4 setHidden:v3];
}

- (BOOL)isBadgeHidden
{
  v3 = [(HUCameraView *)self badgeView];
  if (v3)
  {
    v4 = [(HUCameraView *)self badgeView];
    v5 = [v4 isHidden];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setBadgeOffset:(UIOffset)a3
{
  p_badgeOffset = &self->_badgeOffset;
  if (a3.horizontal != self->_badgeOffset.horizontal || a3.vertical != self->_badgeOffset.vertical)
  {
    p_badgeOffset->horizontal = a3.horizontal;
    self->_badgeOffset.vertical = a3.vertical;
    v6 = -a3.vertical;
    v7 = [(HUCameraView *)self badgeBottomConstraint];
    [v7 setConstant:v6];

    v8 = -p_badgeOffset->horizontal;
    v9 = [(HUCameraView *)self badgeTrailingConstraint];
    [v9 setConstant:v8];
  }
}

- (void)setBadgeBottomAnchor:(id)a3
{
  v5 = a3;
  if (self->_badgeBottomAnchor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_badgeBottomAnchor, a3);
    v6 = [(HUCameraView *)self badgeBottomConstraint];
    [v6 setActive:0];

    v7 = [(HUCameraView *)self badgeTrailingConstraint];
    [v7 setActive:0];

    [(HUCameraView *)self setBadgeBottomConstraint:0];
    [(HUCameraView *)self setBadgeTrailingConstraint:0];
    [(HUCameraView *)self setNeedsUpdateConstraints];
    v5 = v8;
  }
}

- (CGRect)cameraContentFrame
{
  v3 = [(HUCameraView *)self cameraView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUCameraView *)self cameraView];
  [(HUCameraView *)self convertRect:v12 fromView:v5, v7, v9, v11];
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
  v3 = [(HUCameraView *)self cameraView];
  v4 = [v3 cameraSource];

  if (v4)
  {
    [v4 aspectRatio];
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
  v3 = [(HUCameraView *)self cameraView];
  v4 = [v3 snapshotViewAfterScreenUpdates:0];

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(HUCameraView *)self cameraView];
  [(HUCameraView *)self convertRect:v13 fromView:v6, v8, v10, v12];
  [v4 setFrame:?];

  return v4;
}

- (UIView)cameraOverlaySnapshot
{
  v3 = [(HUCameraView *)self errorContent];

  if (v3)
  {
    v4 = [(HUCameraView *)self cameraOverlayView];
    v3 = [v4 snapshotViewAfterScreenUpdates:0];

    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(HUCameraView *)self cameraOverlayView];
    [(HUCameraView *)self convertRect:v13 fromView:v6, v8, v10, v12];
    [v3 setFrame:?];
  }

  return v3;
}

- (void)_updateMaskedCameraCorners
{
  v3 = [(HUCameraView *)self maskedCameraCorners];
  v4 = [(HUCameraView *)self cameraContainerView];
  [v4 setMaskedCorners:v3];

  LOBYTE(v3) = [(HUCameraView *)self maskedCameraCorners];
  v5 = [(HUCameraView *)self backgroundView];
  v6 = [v5 layer];
  [v6 setMaskedCorners:v3 & 0xF];

  LOBYTE(v3) = [(HUCameraView *)self maskedCameraCorners];
  v7 = [(HUCameraView *)self cameraOverlayView];
  v8 = [v7 layer];
  [v8 setMaskedCorners:v3 & 0xF];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v9 = [(HUCameraView *)self maskedCameraCorners];
    v11 = [(HUCameraView *)self demoSnapshotImageView];
    v10 = [v11 layer];
    [v10 setMaskedCorners:v9 & 0xF];
  }
}

- (void)_updateErrorAndActivityIndicatorVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo])
  {
    return;
  }

  v5 = [(HUCameraView *)self errorContent];
  if (!v5 && ![(HUCameraView *)self showActivityIndicator])
  {
    goto LABEL_6;
  }

  v6 = [(HUCameraView *)self cameraSource];
  if (!v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [(HUCameraView *)self hideCameraContentWhenDisplayingErrors];

  if (!v7)
  {
    v8 = [(HUCameraView *)self cameraDimmingView];

    if (v8)
    {
      LOBYTE(v6) = 1;
      goto LABEL_11;
    }

    v9 = objc_alloc(MEMORY[0x277D75D68]);
    v10 = [MEMORY[0x277D75210] effectWithStyle:1102];
    v11 = [v9 initWithEffect:v10];
    [(HUCameraView *)self setCameraDimmingView:v11];

    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v13 = [(HUCameraView *)self cameraDimmingView];
    [v13 setBackgroundColor:v12];

    [(HUCameraView *)self bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(HUCameraView *)self cameraDimmingView];
    [v22 setFrame:{v15, v17, v19, v21}];

    v23 = [(HUCameraView *)self cameraDimmingView];
    [v23 setAutoresizingMask:18];

    v24 = [(HUCameraView *)self cameraDimmingView];
    [v24 setAlpha:0.0];

    v5 = [(HUCameraView *)self cameraOverlayView];
    v6 = [(HUCameraView *)self cameraDimmingView];
    [v5 insertSubview:v6 atIndex:0];

    LOBYTE(v6) = 1;
    goto LABEL_10;
  }

LABEL_6:
  LOBYTE(v6) = 0;
LABEL_11:
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__HUCameraView__updateErrorAndActivityIndicatorVisibilityAnimated___block_invoke;
  v27[3] = &unk_277DB7EE0;
  v27[4] = self;
  v28 = v6;
  v25 = _Block_copy(v27);
  v26 = v25;
  if (v3)
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

- (void)_updateBadgeViewReschedulingTimerIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUCameraView *)self badgeView];

  if (!v5)
  {
LABEL_9:
    v15 = [(HUCameraView *)self snapshotAgeUpdateTimer];
    [v15 invalidate];

    [(HUCameraView *)self setSnapshotAgeUpdateTimer:0];
    return;
  }

  v6 = [(HUCameraView *)self cameraView];
  v7 = [v6 cameraSource];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(HUCameraView *)self isBadgeHidden];

  if (v9)
  {
LABEL_7:
    v13 = [(HUCameraView *)self badgeView];
    [v13 setHidden:1];
    goto LABEL_8;
  }

  v10 = [(HUCameraView *)self cameraView];
  v11 = [v10 cameraSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
    v14 = [(HUCameraView *)self badgeView];
    [v14 setLabelText:v13];

LABEL_8:
    goto LABEL_9;
  }

  v16 = objc_opt_class();
  v17 = [(HUCameraView *)self cameraView];
  v18 = [v17 cameraSource];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v26 = v18;
    if (v19)
    {
      goto LABEL_19;
    }

    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];
  }

  v26 = 0;
LABEL_19:

  v22 = [v26 hf_localizedAge];
  v23 = [(HUCameraView *)self badgeView];
  [v23 setLabelText:v22];

  v24 = [(HUCameraView *)self snapshotAgeUpdateTimer];

  if (!v24 || v3)
  {
    v25 = [v26 captureDate];
    [(HUCameraView *)self _scheduleNextSnapshotAgeUpdateForCaptureDate:v25];
  }
}

- (void)_scheduleNextSnapshotAgeUpdateForCaptureDate:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraView *)self snapshotAgeUpdateTimer];
  [v5 invalidate];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D2C8D8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__HUCameraView__scheduleNextSnapshotAgeUpdateForCaptureDate___block_invoke;
  v11 = &unk_277DC0F48;
  objc_copyWeak(&v12, &location);
  v7 = [v6 scheduledTimerWithReferenceDate:v4 minimumUnit:128 block:&v8];
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