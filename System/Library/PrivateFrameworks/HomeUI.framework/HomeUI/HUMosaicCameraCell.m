@interface HUMosaicCameraCell
+ (id)legibilityLabel;
- (BOOL)shouldDisplayAccessModeErrorContent;
- (BOOL)shouldDisplayErrorContent;
- (CGRect)cameraViewFrame;
- (CGSize)currentSize;
- (HUMosaicCameraCell)initWithFrame:(CGRect)a3;
- (UIImageView)recordingIndicatorImageView;
- (double)cameraViewAlpha;
- (id)_timingLabelText:(id)a3;
- (void)_updateCornerRadiusIfNeeded;
- (void)_updateRecordIndicatorColor;
- (void)_updateUIForSizeChange;
- (void)_updateViewCorners:(double)a3;
- (void)createLegibilityLabelsIfNecessary;
- (void)dealloc;
- (void)layoutOptionsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCameraViewAlpha:(double)a3;
- (void)setCurrentCornerRadius:(double)a3;
- (void)setLayoutOptions:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUMosaicCameraCell

- (HUMosaicCameraCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = HUMosaicCameraCell;
  v7 = [(HUGridCell *)&v16 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(HUMosaicCameraCell *)v7 setMaximumContentSizeCategory:*MEMORY[0x277D76818]];
    v8->_currentSize.width = width;
    v8->_currentSize.height = height;
    v9 = objc_alloc_init(HUCameraView);
    cameraView = v8->_cameraView;
    v8->_cameraView = v9;

    v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
    [(HUCameraView *)v8->_cameraView setTintColor:v11];

    v12 = [[HUMosaicCameraErrorView alloc] initWithFrame:x, y, width, height];
    [(HUCameraView *)v8->_cameraView setOverrideErrorView:v12];

    [(HUCameraView *)v8->_cameraView setHideCameraContentWhenDisplayingErrors:1];
    [(HUCameraView *)v8->_cameraView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUCameraView *)v8->_cameraView setUserInteractionEnabled:0];
    [(HUMosaicCameraCell *)v8 addSubview:v8->_cameraView];
    v13 = [(HUMosaicCameraCell *)v8 recordingIndicatorImageView];
    [(HUMosaicCameraCell *)v8 addSubview:v13];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v8 selector:sel__handleShouldDifferentiateWithoutColorDidChange name:*MEMORY[0x277D764E0] object:0];
  }

  return v8;
}

- (UIImageView)recordingIndicatorImageView
{
  recordingIndicatorImageView = self->_recordingIndicatorImageView;
  if (!recordingIndicatorImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(UIImageView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4 setUserInteractionEnabled:0];
    [(UIImageView *)v4 setContentMode:1];
    v5 = self->_recordingIndicatorImageView;
    self->_recordingIndicatorImageView = v4;

    recordingIndicatorImageView = self->_recordingIndicatorImageView;
  }

  return recordingIndicatorImageView;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v12 layoutSubviews];
  [(HUMosaicCameraCell *)self currentSize];
  v4 = v3;
  v6 = v5;
  [(HUMosaicCameraCell *)self frame];
  if (v4 != v8 || v6 != v7)
  {
    [(HUMosaicCameraCell *)self frame];
    [(HUMosaicCameraCell *)self setCurrentSize:v10, v11];
    [(HUMosaicCameraCell *)self _updateUIForSizeChange];
  }
}

- (void)prepareForReuse
{
  v3 = [(HUMosaicCameraCell *)self timingLabel];
  [v3 setText:0];

  v4 = [(HUMosaicCameraCell *)self cameraNameLabel];
  [v4 setText:0];

  [(HUMosaicCameraCell *)self setItem:0];
  v5 = [(HUMosaicCameraCell *)self timingLabelUpdateTimer];
  [v5 invalidate];

  [(HUMosaicCameraCell *)self setTimingLabelUpdateTimer:0];
  v6.receiver = self;
  v6.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v6 prepareForReuse];
}

- (void)dealloc
{
  v3 = [(HUMosaicCameraCell *)self timingLabelUpdateTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HUMosaicCameraCell;
  [(HUMosaicCameraCell *)&v4 dealloc];
}

- (double)cameraViewAlpha
{
  v2 = [(HUMosaicCameraCell *)self cameraView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setCameraViewAlpha:(double)a3
{
  v4 = [(HUMosaicCameraCell *)self cameraView];
  [v4 setAlpha:a3];
}

- (CGRect)cameraViewFrame
{
  v3 = [(HUMosaicCameraCell *)self cameraView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUMosaicCameraCell *)self cameraView];
  [(HUMosaicCameraCell *)self convertRect:v12 fromView:v5, v7, v9, v11];
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

- (void)setLayoutOptions:(id)a3
{
  v5 = a3;
  if (self->_layoutOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_layoutOptions, a3);
    [(HUMosaicCameraCell *)self layoutOptionsDidChange];
    v5 = v6;
  }
}

- (BOOL)shouldDisplayErrorContent
{
  v23 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0)
  {
    objc_opt_class();
    v4 = [(HUMosaicCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 profile];

    v8 = [v7 accessory];
    LOBYTE(v6) = [v8 isReachable];

    if ((v6 & 1) == 0)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v7;
        _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "Displaying error in tile because cameraProfile is unreachable; %@", &v19, 0xCu);
      }

      goto LABEL_21;
    }

    v9 = [v7 hf_cameraManager];
    v10 = [v9 cachedSnapshotError];

    if (v10)
    {
      v11 = HFLogForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        v3 = 1;
        goto LABEL_22;
      }

      v12 = [v7 hf_cameraManager];
      v13 = [v12 cachedSnapshotError];
      v19 = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v13;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "Displaying error in tile because cameraProfile has a cached snapshot error; %@; %@", &v19, 0x16u);
    }

    else
    {
      v14 = [(HUMosaicCameraCell *)self item];
      v15 = [v14 latestResults];
      v11 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13D70]];

      if (v11 || (-[HUMosaicCameraCell item](self, "item"), v16 = objc_claimAutoreleasedReturnValue(), [v16 latestResults], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
      {
        if (![v7 hf_thermalShutdownModeActive])
        {
          v3 = 0;
LABEL_22:

          return v3;
        }

        v12 = HFLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v7;
          _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Displaying error in tile because cameraProfile is in thermal shutdown mode; %@", &v19, 0xCu);
        }
      }

      else
      {
        v12 = HFLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v19 = 138412290;
          v20 = v7;
          _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Displaying error in tile because cameraProfile has no snapshot; %@", &v19, 0xCu);
        }
      }
    }

    goto LABEL_21;
  }

  return 0;
}

+ (id)legibilityLabel
{
  v2 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  v3 = [HULegibilityLabel alloc];
  v4 = [(HULegibilityLabel *)v3 initWithSettings:v2 strength:*MEMORY[0x277D774F0]];
  [(HULegibilityLabel *)v4 setOptions:*MEMORY[0x277D774F8]];
  [(HULegibilityLabel *)v4 setAdjustsFontForContentSizeCategory:1];
  [(HULegibilityLabel *)v4 setTextAlignment:4];
  [(HULegibilityLabel *)v4 setLineBreakMode:4];
  [(HULegibilityLabel *)v4 setUserInteractionEnabled:0];
  [(HULegibilityLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

- (void)createLegibilityLabelsIfNecessary
{
  v48[6] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(HUMosaicCameraCell *)self layoutOptions];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HUMosaicCameraCell *)self timingLabel];

  if (!v6)
  {
    v7 = [objc_opt_class() legibilityLabel];
    [(HUMosaicCameraCell *)self setTimingLabel:v7];

    v8 = [v5 timingLabelFont];
    v9 = [(HUMosaicCameraCell *)self timingLabel];
    [v9 setFont:v8];

    v10 = [(HUMosaicCameraCell *)self timingLabel];
    [(HUMosaicCameraCell *)self addSubview:v10];
  }

  v11 = [(HUMosaicCameraCell *)self cameraNameLabel];

  if (!v11)
  {
    v12 = [objc_opt_class() legibilityLabel];
    [(HUMosaicCameraCell *)self setCameraNameLabel:v12];

    v13 = [v5 font];
    v14 = [(HUMosaicCameraCell *)self cameraNameLabel];
    [v14 setFont:v13];

    v15 = [(HUMosaicCameraCell *)self cameraNameLabel];
    [(HUMosaicCameraCell *)self addSubview:v15];
  }

  v16 = [(HUMosaicCameraCell *)self legibilityLabelConstraints];

  if (!v16)
  {
    [v5 descriptionInset];
    v18 = v17;
    v46 = [(HUMosaicCameraCell *)self timingLabel];
    v45 = [v46 bottomAnchor];
    v44 = [(HUMosaicCameraCell *)self bottomAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:-v18];
    v48[0] = v43;
    v42 = [(HUMosaicCameraCell *)self timingLabel];
    v41 = [v42 leadingAnchor];
    v40 = [(HUMosaicCameraCell *)self leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:v18];
    v48[1] = v39;
    v38 = [(HUMosaicCameraCell *)self timingLabel];
    v37 = [v38 trailingAnchor];
    v36 = [(HUMosaicCameraCell *)self trailingAnchor];
    v35 = [v37 constraintLessThanOrEqualToAnchor:v36 constant:-v18];
    v48[2] = v35;
    v34 = [(HUMosaicCameraCell *)self cameraNameLabel];
    v32 = [v34 bottomAnchor];
    v33 = [(HUMosaicCameraCell *)self timingLabel];
    v31 = [v33 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v48[3] = v30;
    [(HUMosaicCameraCell *)self cameraNameLabel];
    v19 = v47 = v5;
    v20 = [v19 leadingAnchor];
    v21 = [(HUMosaicCameraCell *)self leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:v18];
    v48[4] = v22;
    v23 = [(HUMosaicCameraCell *)self cameraNameLabel];
    v24 = [v23 trailingAnchor];
    v25 = [(HUMosaicCameraCell *)self trailingAnchor];
    v26 = [v24 constraintLessThanOrEqualToAnchor:v25 constant:-v18];
    v48[5] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:6];
    [(HUMosaicCameraCell *)self setLegibilityLabelConstraints:v27];

    v5 = v47;
    v28 = MEMORY[0x277CCAAD0];
    v29 = [(HUMosaicCameraCell *)self legibilityLabelConstraints];
    [v28 activateConstraints:v29];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v60.receiver = self;
  v60.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v60 updateUIWithAnimation:?];
  v5 = [(HUMosaicCameraCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v8 = [(HUMosaicCameraCell *)self shouldDisplayAccessModeErrorContent];
  if (v8)
  {
    objc_opt_class();
    v9 = [(HUMosaicCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 profile];

    v13 = [v12 userSettings];
    if ([v13 currentAccessMode])
    {
      v14 = [v12 userSettings];
      [v14 isCameraManuallyDisabled];
    }

    v18 = HFLocalizedString();
    goto LABEL_21;
  }

  if ([(HUMosaicCameraCell *)self shouldDisplayErrorContent])
  {
    objc_opt_class();
    v15 = [(HUMosaicCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v12 = [v17 profile];

    v18 = HFLocalizedString();
    v19 = [v12 accessory];
    v20 = [v19 lastSeenStatus];
    if (v20)
    {
      v21 = v20;
      v22 = _os_feature_enabled_impl();

      if (!v22)
      {
LABEL_15:
        v27 = [v12 hf_thermalShutdownMode];
        if (v27 == 1 || v27 == 2)
        {
          v28 = HFLocalizedString();

          v18 = v28;
        }

LABEL_21:
        v29 = [HUCameraErrorContent errorWithTitle:v7 description:v18];

        if (v29)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v23 = MEMORY[0x277D14648];
      v19 = [v12 accessory];
      v24 = [v19 lastSeenStatus];
      v25 = [v24 lastSeenDate];
      v26 = [v23 noResponseErrorDescriptionString:v25];

      v18 = v26;
    }

    goto LABEL_15;
  }

  v8 = 1;
LABEL_22:
  [(HUMosaicCameraCell *)self createLegibilityLabelsIfNecessary];
  v29 = 0;
LABEL_23:
  v30 = [(HUMosaicCameraCell *)self item];
  v31 = [v30 latestResults];
  v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13D70]];

  v33 = [(HUMosaicCameraCell *)self cameraView];
  v34 = [v33 cameraSource];

  v54 = MEMORY[0x277D85DD0];
  v55 = 3221225472;
  v56 = __44__HUMosaicCameraCell_updateUIWithAnimation___block_invoke;
  v57 = &unk_277DB7558;
  v58 = self;
  v35 = v32;
  v59 = v35;
  v36 = _Block_copy(&v54);
  v37 = [(HUMosaicCameraCell *)self timingLabelUpdateTimer:v54];
  v38 = v37;
  if (v32 == v34)
  {

    if (v38)
    {
      goto LABEL_28;
    }
  }

  else
  {
    [v37 invalidate];
  }

  if (v35)
  {
    v36[2](v36);
  }

LABEL_28:
  v39 = [(HUMosaicCameraCell *)self cameraNameLabel];
  [v39 setText:v7];

  v40 = [(HUMosaicCameraCell *)self _timingLabelText:v35];
  v41 = [(HUMosaicCameraCell *)self timingLabel];
  [v41 setText:v40];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v42 = [(HUMosaicCameraCell *)self item];
    v43 = [v42 latestResults];
    v44 = [v43 objectForKeyedSubscript:*MEMORY[0x277D13D58]];

    v45 = [(HUMosaicCameraCell *)self cameraView];
    [v45 setCameraSource:v35 withDemoSnapshotURL:v44 animated:v3];
  }

  else
  {
    v44 = [(HUMosaicCameraCell *)self cameraView];
    [v44 setCameraSource:v35 animated:v3];
  }

  v46 = [(HUMosaicCameraCell *)self timingLabel];
  [v46 setHidden:v29 != 0];

  if (v29)
  {
    v47 = 1;
  }

  else
  {
    v47 = [(HUMosaicCameraCell *)self isSingleCell]^ 1;
  }

  v48 = [(HUMosaicCameraCell *)self cameraNameLabel];
  [v48 setHidden:v47];

  if (v8)
  {
    v49 = [(HUMosaicCameraCell *)self isSingleCell]^ 1;
  }

  else
  {
    v49 = 1;
  }

  v50 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
  [v50 setHidden:v49];

  v51 = [(HUMosaicCameraCell *)self cameraView];
  [v51 setErrorContent:v29 animated:v3];

  if (v29)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  }
  v52 = ;
  v53 = [(HUMosaicCameraCell *)self cameraView];
  [v53 setBackgroundColor:v52];

  [(HUMosaicCameraCell *)self _updateRecordIndicatorColor];
}

void __44__HUMosaicCameraCell_updateUIWithAnimation___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x277D2C8D8];
  v3 = [*(a1 + 40) captureDate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HUMosaicCameraCell_updateUIWithAnimation___block_invoke_2;
  v5[3] = &unk_277DB9480;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  v4 = [v2 scheduledTimerWithReferenceDate:v3 minimumUnit:128 block:v5];
  [*(a1 + 32) setTimingLabelUpdateTimer:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__HUMosaicCameraCell_updateUIWithAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _timingLabelText:*(a1 + 32)];
  v3 = [WeakRetained timingLabel];
  [v3 setText:v2];
}

- (BOOL)shouldDisplayAccessModeErrorContent
{
  objc_opt_class();
  v3 = [(HUMosaicCameraCell *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];

  if (v6)
  {
    v7 = [v6 userSettings];
    if ([v7 currentAccessMode])
    {
      v8 = [v6 userSettings];
      if ([v8 currentAccessMode] == 3)
      {
        v9 = 1;
      }

      else
      {
        v10 = [v6 userSettings];
        v9 = [v10 isCameraManuallyDisabled];
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)layoutOptionsDidChange
{
  v14.receiver = self;
  v14.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v14 layoutOptionsDidChange];
  v3 = [(HUMosaicCameraCell *)self cameraView];
  [v3 setMaskedCameraCorners:-1];

  v4 = [(HUMosaicCameraCell *)self layoutOptions];
  v5 = [v4 timingLabelFont];
  v6 = [(HUMosaicCameraCell *)self timingLabel];
  [v6 setFont:v5];

  v7 = [v4 font];
  v8 = [(HUMosaicCameraCell *)self cameraNameLabel];
  [v8 setFont:v7];

  [(HUMosaicCameraCell *)self _updateUIForSizeChange];
  LODWORD(v7) = [(HUMosaicCameraCell *)self isSingleCell];
  v9 = [(HUMosaicCameraCell *)self cameraView];
  [v9 setHideCameraContentWhenDisplayingErrors:v7 ^ 1];

  objc_opt_class();
  v10 = [(HUMosaicCameraCell *)self cameraView];
  v11 = [v10 overrideErrorView];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v13 setVisualEffectViewHidden:{-[HUMosaicCameraCell isSingleCell](self, "isSingleCell")}];
}

- (void)_updateUIForSizeChange
{
  v3 = [(HUMosaicCameraCell *)self layoutOptions];

  if (v3)
  {
    v4 = [(HUMosaicCameraCell *)self layoutOptions];
    -[HUMosaicCameraCell setIsSingleCell:](self, "setIsSingleCell:", [v4 isSingleCell]);

    [(HUMosaicCameraCell *)self _updateCornerRadiusIfNeeded];
  }
}

- (void)_updateCornerRadiusIfNeeded
{
  v3 = [(HUMosaicCameraCell *)self layoutOptions];

  if (v3)
  {
    [(HUMosaicCameraCell *)self frame];
    v5 = v4;
    v7 = v6;
    v8 = [(HUMosaicCameraCell *)self layoutOptions];
    [v8 cornerRadiusForCellSize:{v5, v7}];
    [(HUMosaicCameraCell *)self setCurrentCornerRadius:?];
  }
}

- (void)setCurrentCornerRadius:(double)a3
{
  if (vabdd_f64(self->_currentCornerRadius, a3) >= 0.00000011920929)
  {
    self->_currentCornerRadius = a3;
    [(HUMosaicCameraCell *)self _updateViewCorners:?];
  }
}

- (void)_updateViewCorners:(double)a3
{
  v5 = [(HUMosaicCameraCell *)self cameraView];
  [v5 _setContinuousCornerRadius:a3];

  v6 = [(HUMosaicCameraCell *)self backgroundConfiguration];
  [v6 setCornerRadius:a3];
  [(HUMosaicCameraCell *)self setBackgroundConfiguration:v6];
}

- (void)updateConstraints
{
  v3 = [(HUMosaicCameraCell *)self allConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    objc_opt_class();
    v5 = [(HUMosaicCameraCell *)self layoutOptions];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      [v7 descriptionInset];
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    v11 = [v10 topAnchor];
    v12 = [(HUMosaicCameraCell *)self topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:v9];
    [v4 addObject:v13];

    v14 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    v15 = [v14 trailingAnchor];
    v16 = [(HUMosaicCameraCell *)self trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-v9];
    [v4 addObject:v17];

    v18 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    v19 = [v18 widthAnchor];
    v20 = [v19 constraintEqualToConstant:12.0];
    [v4 addObject:v20];

    v21 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    v22 = [v21 heightAnchor];
    v23 = [v22 constraintEqualToConstant:12.0];
    [v4 addObject:v23];

    v24 = [(HUMosaicCameraCell *)self cameraView];
    v25 = [v24 leadingAnchor];
    v26 = [(HUMosaicCameraCell *)self leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v4 addObject:v27];

    v28 = [(HUMosaicCameraCell *)self cameraView];
    v29 = [v28 trailingAnchor];
    v30 = [(HUMosaicCameraCell *)self trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v4 addObject:v31];

    v32 = [(HUMosaicCameraCell *)self cameraView];
    v33 = [v32 topAnchor];
    v34 = [(HUMosaicCameraCell *)self topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v4 addObject:v35];

    v36 = [(HUMosaicCameraCell *)self cameraView];
    v37 = [v36 bottomAnchor];
    v38 = [(HUMosaicCameraCell *)self bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v4 addObject:v39];

    [(HUMosaicCameraCell *)self setAllConstraints:v4];
    [MEMORY[0x277CCAAD0] activateConstraints:v4];
  }

  v40.receiver = self;
  v40.super_class = HUMosaicCameraCell;
  [(HUMosaicCameraCell *)&v40 updateConstraints];
}

- (void)_updateRecordIndicatorColor
{
  objc_opt_class();
  v3 = [(HUMosaicCameraCell *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];

  v11 = [v6 userSettings];

  if (v11)
  {
    [v11 hu_indicatorColorForCurrentAccessMode];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v7 = ;
  [(UIImageView *)self->_recordingIndicatorImageView setTintColor:v7];

  v8 = MEMORY[0x277D755B8];
  v9 = [v11 hu_indicatorImageNameForCurrentAccessMode];
  v10 = [v8 systemImageNamed:v9];
  [(UIImageView *)self->_recordingIndicatorImageView setImage:v10];
}

- (id)_timingLabelText:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo])
  {
    v5 = &stru_2823E0EE8;
    goto LABEL_8;
  }

  if (v4)
  {
    v6 = [v4 hf_localizedAge];
LABEL_5:
    v5 = v6;
    goto LABEL_8;
  }

  if (![(HUGridCell *)self primaryState])
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUGridCameraCellNoResponseDescription", @"HUGridCameraCellNoResponseDescription", 1);
    goto LABEL_5;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (CGSize)currentSize
{
  width = self->_currentSize.width;
  height = self->_currentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end