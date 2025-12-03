@interface HUMosaicCameraCell
+ (id)legibilityLabel;
- (BOOL)shouldDisplayAccessModeErrorContent;
- (BOOL)shouldDisplayErrorContent;
- (CGRect)cameraViewFrame;
- (CGSize)currentSize;
- (HUMosaicCameraCell)initWithFrame:(CGRect)frame;
- (UIImageView)recordingIndicatorImageView;
- (double)cameraViewAlpha;
- (id)_timingLabelText:(id)text;
- (void)_updateCornerRadiusIfNeeded;
- (void)_updateRecordIndicatorColor;
- (void)_updateUIForSizeChange;
- (void)_updateViewCorners:(double)corners;
- (void)createLegibilityLabelsIfNecessary;
- (void)dealloc;
- (void)layoutOptionsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCameraViewAlpha:(double)alpha;
- (void)setCurrentCornerRadius:(double)radius;
- (void)setLayoutOptions:(id)options;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUMosaicCameraCell

- (HUMosaicCameraCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

    height = [[HUMosaicCameraErrorView alloc] initWithFrame:x, y, width, height];
    [(HUCameraView *)v8->_cameraView setOverrideErrorView:height];

    [(HUCameraView *)v8->_cameraView setHideCameraContentWhenDisplayingErrors:1];
    [(HUCameraView *)v8->_cameraView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUCameraView *)v8->_cameraView setUserInteractionEnabled:0];
    [(HUMosaicCameraCell *)v8 addSubview:v8->_cameraView];
    recordingIndicatorImageView = [(HUMosaicCameraCell *)v8 recordingIndicatorImageView];
    [(HUMosaicCameraCell *)v8 addSubview:recordingIndicatorImageView];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__handleShouldDifferentiateWithoutColorDidChange name:*MEMORY[0x277D764E0] object:0];
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
  timingLabel = [(HUMosaicCameraCell *)self timingLabel];
  [timingLabel setText:0];

  cameraNameLabel = [(HUMosaicCameraCell *)self cameraNameLabel];
  [cameraNameLabel setText:0];

  [(HUMosaicCameraCell *)self setItem:0];
  timingLabelUpdateTimer = [(HUMosaicCameraCell *)self timingLabelUpdateTimer];
  [timingLabelUpdateTimer invalidate];

  [(HUMosaicCameraCell *)self setTimingLabelUpdateTimer:0];
  v6.receiver = self;
  v6.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v6 prepareForReuse];
}

- (void)dealloc
{
  timingLabelUpdateTimer = [(HUMosaicCameraCell *)self timingLabelUpdateTimer];
  [timingLabelUpdateTimer invalidate];

  v4.receiver = self;
  v4.super_class = HUMosaicCameraCell;
  [(HUMosaicCameraCell *)&v4 dealloc];
}

- (double)cameraViewAlpha
{
  cameraView = [(HUMosaicCameraCell *)self cameraView];
  [cameraView alpha];
  v4 = v3;

  return v4;
}

- (void)setCameraViewAlpha:(double)alpha
{
  cameraView = [(HUMosaicCameraCell *)self cameraView];
  [cameraView setAlpha:alpha];
}

- (CGRect)cameraViewFrame
{
  cameraView = [(HUMosaicCameraCell *)self cameraView];
  [cameraView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  cameraView2 = [(HUMosaicCameraCell *)self cameraView];
  [(HUMosaicCameraCell *)self convertRect:cameraView2 fromView:v5, v7, v9, v11];
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

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (self->_layoutOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_layoutOptions, options);
    [(HUMosaicCameraCell *)self layoutOptionsDidChange];
    optionsCopy = v6;
  }
}

- (BOOL)shouldDisplayErrorContent
{
  v23 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0)
  {
    objc_opt_class();
    item = [(HUMosaicCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v5 = item;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    profile = [v6 profile];

    accessory = [profile accessory];
    LOBYTE(v6) = [accessory isReachable];

    if ((v6 & 1) == 0)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = profile;
        _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "Displaying error in tile because cameraProfile is unreachable; %@", &v19, 0xCu);
      }

      goto LABEL_21;
    }

    hf_cameraManager = [profile hf_cameraManager];
    cachedSnapshotError = [hf_cameraManager cachedSnapshotError];

    if (cachedSnapshotError)
    {
      v11 = HFLogForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        v3 = 1;
        goto LABEL_22;
      }

      hf_cameraManager2 = [profile hf_cameraManager];
      cachedSnapshotError2 = [hf_cameraManager2 cachedSnapshotError];
      v19 = 138412546;
      v20 = profile;
      v21 = 2112;
      v22 = cachedSnapshotError2;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "Displaying error in tile because cameraProfile has a cached snapshot error; %@; %@", &v19, 0x16u);
    }

    else
    {
      item2 = [(HUMosaicCameraCell *)self item];
      latestResults = [item2 latestResults];
      v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D70]];

      if (v11 || (-[HUMosaicCameraCell item](self, "item"), v16 = objc_claimAutoreleasedReturnValue(), [v16 latestResults], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
      {
        if (![profile hf_thermalShutdownModeActive])
        {
          v3 = 0;
LABEL_22:

          return v3;
        }

        hf_cameraManager2 = HFLogForCategory();
        if (os_log_type_enabled(hf_cameraManager2, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = profile;
          _os_log_impl(&dword_20CEB6000, hf_cameraManager2, OS_LOG_TYPE_DEFAULT, "Displaying error in tile because cameraProfile is in thermal shutdown mode; %@", &v19, 0xCu);
        }
      }

      else
      {
        hf_cameraManager2 = HFLogForCategory();
        if (os_log_type_enabled(hf_cameraManager2, OS_LOG_TYPE_ERROR))
        {
          v19 = 138412290;
          v20 = profile;
          _os_log_error_impl(&dword_20CEB6000, hf_cameraManager2, OS_LOG_TYPE_ERROR, "Displaying error in tile because cameraProfile has no snapshot; %@", &v19, 0xCu);
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
  layoutOptions = [(HUMosaicCameraCell *)self layoutOptions];
  if (objc_opt_isKindOfClass())
  {
    v4 = layoutOptions;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  timingLabel = [(HUMosaicCameraCell *)self timingLabel];

  if (!timingLabel)
  {
    legibilityLabel = [objc_opt_class() legibilityLabel];
    [(HUMosaicCameraCell *)self setTimingLabel:legibilityLabel];

    timingLabelFont = [v5 timingLabelFont];
    timingLabel2 = [(HUMosaicCameraCell *)self timingLabel];
    [timingLabel2 setFont:timingLabelFont];

    timingLabel3 = [(HUMosaicCameraCell *)self timingLabel];
    [(HUMosaicCameraCell *)self addSubview:timingLabel3];
  }

  cameraNameLabel = [(HUMosaicCameraCell *)self cameraNameLabel];

  if (!cameraNameLabel)
  {
    legibilityLabel2 = [objc_opt_class() legibilityLabel];
    [(HUMosaicCameraCell *)self setCameraNameLabel:legibilityLabel2];

    font = [v5 font];
    cameraNameLabel2 = [(HUMosaicCameraCell *)self cameraNameLabel];
    [cameraNameLabel2 setFont:font];

    cameraNameLabel3 = [(HUMosaicCameraCell *)self cameraNameLabel];
    [(HUMosaicCameraCell *)self addSubview:cameraNameLabel3];
  }

  legibilityLabelConstraints = [(HUMosaicCameraCell *)self legibilityLabelConstraints];

  if (!legibilityLabelConstraints)
  {
    [v5 descriptionInset];
    v18 = v17;
    timingLabel4 = [(HUMosaicCameraCell *)self timingLabel];
    bottomAnchor = [timingLabel4 bottomAnchor];
    bottomAnchor2 = [(HUMosaicCameraCell *)self bottomAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v18];
    v48[0] = v43;
    timingLabel5 = [(HUMosaicCameraCell *)self timingLabel];
    leadingAnchor = [timingLabel5 leadingAnchor];
    leadingAnchor2 = [(HUMosaicCameraCell *)self leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v18];
    v48[1] = v39;
    timingLabel6 = [(HUMosaicCameraCell *)self timingLabel];
    trailingAnchor = [timingLabel6 trailingAnchor];
    trailingAnchor2 = [(HUMosaicCameraCell *)self trailingAnchor];
    v35 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v18];
    v48[2] = v35;
    cameraNameLabel4 = [(HUMosaicCameraCell *)self cameraNameLabel];
    bottomAnchor3 = [cameraNameLabel4 bottomAnchor];
    timingLabel7 = [(HUMosaicCameraCell *)self timingLabel];
    topAnchor = [timingLabel7 topAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:topAnchor];
    v48[3] = v30;
    [(HUMosaicCameraCell *)self cameraNameLabel];
    v19 = v47 = v5;
    leadingAnchor3 = [v19 leadingAnchor];
    leadingAnchor4 = [(HUMosaicCameraCell *)self leadingAnchor];
    v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v18];
    v48[4] = v22;
    cameraNameLabel5 = [(HUMosaicCameraCell *)self cameraNameLabel];
    trailingAnchor3 = [cameraNameLabel5 trailingAnchor];
    trailingAnchor4 = [(HUMosaicCameraCell *)self trailingAnchor];
    v26 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-v18];
    v48[5] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:6];
    [(HUMosaicCameraCell *)self setLegibilityLabelConstraints:v27];

    v5 = v47;
    v28 = MEMORY[0x277CCAAD0];
    legibilityLabelConstraints2 = [(HUMosaicCameraCell *)self legibilityLabelConstraints];
    [v28 activateConstraints:legibilityLabelConstraints2];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v60.receiver = self;
  v60.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v60 updateUIWithAnimation:?];
  item = [(HUMosaicCameraCell *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  shouldDisplayAccessModeErrorContent = [(HUMosaicCameraCell *)self shouldDisplayAccessModeErrorContent];
  if (shouldDisplayAccessModeErrorContent)
  {
    objc_opt_class();
    item2 = [(HUMosaicCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v10 = item2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    profile = [v11 profile];

    userSettings = [profile userSettings];
    if ([userSettings currentAccessMode])
    {
      userSettings2 = [profile userSettings];
      [userSettings2 isCameraManuallyDisabled];
    }

    v18 = HFLocalizedString();
    goto LABEL_21;
  }

  if ([(HUMosaicCameraCell *)self shouldDisplayErrorContent])
  {
    objc_opt_class();
    item3 = [(HUMosaicCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v16 = item3;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    profile = [v17 profile];

    v18 = HFLocalizedString();
    accessory = [profile accessory];
    lastSeenStatus = [accessory lastSeenStatus];
    if (lastSeenStatus)
    {
      v21 = lastSeenStatus;
      v22 = _os_feature_enabled_impl();

      if (!v22)
      {
LABEL_15:
        hf_thermalShutdownMode = [profile hf_thermalShutdownMode];
        if (hf_thermalShutdownMode == 1 || hf_thermalShutdownMode == 2)
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
      accessory = [profile accessory];
      lastSeenStatus2 = [accessory lastSeenStatus];
      lastSeenDate = [lastSeenStatus2 lastSeenDate];
      v26 = [v23 noResponseErrorDescriptionString:lastSeenDate];

      v18 = v26;
    }

    goto LABEL_15;
  }

  shouldDisplayAccessModeErrorContent = 1;
LABEL_22:
  [(HUMosaicCameraCell *)self createLegibilityLabelsIfNecessary];
  v29 = 0;
LABEL_23:
  item4 = [(HUMosaicCameraCell *)self item];
  latestResults2 = [item4 latestResults];
  v32 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13D70]];

  cameraView = [(HUMosaicCameraCell *)self cameraView];
  cameraSource = [cameraView cameraSource];

  v54 = MEMORY[0x277D85DD0];
  v55 = 3221225472;
  v56 = __44__HUMosaicCameraCell_updateUIWithAnimation___block_invoke;
  v57 = &unk_277DB7558;
  selfCopy = self;
  v35 = v32;
  v59 = v35;
  v36 = _Block_copy(&v54);
  v37 = [(HUMosaicCameraCell *)self timingLabelUpdateTimer:v54];
  v38 = v37;
  if (v32 == cameraSource)
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
  cameraNameLabel = [(HUMosaicCameraCell *)self cameraNameLabel];
  [cameraNameLabel setText:v7];

  v40 = [(HUMosaicCameraCell *)self _timingLabelText:v35];
  timingLabel = [(HUMosaicCameraCell *)self timingLabel];
  [timingLabel setText:v40];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    item5 = [(HUMosaicCameraCell *)self item];
    latestResults3 = [item5 latestResults];
    cameraView3 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13D58]];

    cameraView2 = [(HUMosaicCameraCell *)self cameraView];
    [cameraView2 setCameraSource:v35 withDemoSnapshotURL:cameraView3 animated:animationCopy];
  }

  else
  {
    cameraView3 = [(HUMosaicCameraCell *)self cameraView];
    [cameraView3 setCameraSource:v35 animated:animationCopy];
  }

  timingLabel2 = [(HUMosaicCameraCell *)self timingLabel];
  [timingLabel2 setHidden:v29 != 0];

  if (v29)
  {
    v47 = 1;
  }

  else
  {
    v47 = [(HUMosaicCameraCell *)self isSingleCell]^ 1;
  }

  cameraNameLabel2 = [(HUMosaicCameraCell *)self cameraNameLabel];
  [cameraNameLabel2 setHidden:v47];

  if (shouldDisplayAccessModeErrorContent)
  {
    v49 = [(HUMosaicCameraCell *)self isSingleCell]^ 1;
  }

  else
  {
    v49 = 1;
  }

  recordingIndicatorImageView = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
  [recordingIndicatorImageView setHidden:v49];

  cameraView4 = [(HUMosaicCameraCell *)self cameraView];
  [cameraView4 setErrorContent:v29 animated:animationCopy];

  if (v29)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  }
  v52 = ;
  cameraView5 = [(HUMosaicCameraCell *)self cameraView];
  [cameraView5 setBackgroundColor:v52];

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
  item = [(HUMosaicCameraCell *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];

  if (profile)
  {
    userSettings = [profile userSettings];
    if ([userSettings currentAccessMode])
    {
      userSettings2 = [profile userSettings];
      if ([userSettings2 currentAccessMode] == 3)
      {
        isCameraManuallyDisabled = 1;
      }

      else
      {
        userSettings3 = [profile userSettings];
        isCameraManuallyDisabled = [userSettings3 isCameraManuallyDisabled];
      }
    }

    else
    {
      isCameraManuallyDisabled = 1;
    }
  }

  else
  {
    isCameraManuallyDisabled = 0;
  }

  return isCameraManuallyDisabled;
}

- (void)layoutOptionsDidChange
{
  v14.receiver = self;
  v14.super_class = HUMosaicCameraCell;
  [(HUGridCell *)&v14 layoutOptionsDidChange];
  cameraView = [(HUMosaicCameraCell *)self cameraView];
  [cameraView setMaskedCameraCorners:-1];

  layoutOptions = [(HUMosaicCameraCell *)self layoutOptions];
  timingLabelFont = [layoutOptions timingLabelFont];
  timingLabel = [(HUMosaicCameraCell *)self timingLabel];
  [timingLabel setFont:timingLabelFont];

  font = [layoutOptions font];
  cameraNameLabel = [(HUMosaicCameraCell *)self cameraNameLabel];
  [cameraNameLabel setFont:font];

  [(HUMosaicCameraCell *)self _updateUIForSizeChange];
  LODWORD(font) = [(HUMosaicCameraCell *)self isSingleCell];
  cameraView2 = [(HUMosaicCameraCell *)self cameraView];
  [cameraView2 setHideCameraContentWhenDisplayingErrors:font ^ 1];

  objc_opt_class();
  cameraView3 = [(HUMosaicCameraCell *)self cameraView];
  overrideErrorView = [cameraView3 overrideErrorView];
  if (objc_opt_isKindOfClass())
  {
    v12 = overrideErrorView;
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
  layoutOptions = [(HUMosaicCameraCell *)self layoutOptions];

  if (layoutOptions)
  {
    layoutOptions2 = [(HUMosaicCameraCell *)self layoutOptions];
    -[HUMosaicCameraCell setIsSingleCell:](self, "setIsSingleCell:", [layoutOptions2 isSingleCell]);

    [(HUMosaicCameraCell *)self _updateCornerRadiusIfNeeded];
  }
}

- (void)_updateCornerRadiusIfNeeded
{
  layoutOptions = [(HUMosaicCameraCell *)self layoutOptions];

  if (layoutOptions)
  {
    [(HUMosaicCameraCell *)self frame];
    v5 = v4;
    v7 = v6;
    layoutOptions2 = [(HUMosaicCameraCell *)self layoutOptions];
    [layoutOptions2 cornerRadiusForCellSize:{v5, v7}];
    [(HUMosaicCameraCell *)self setCurrentCornerRadius:?];
  }
}

- (void)setCurrentCornerRadius:(double)radius
{
  if (vabdd_f64(self->_currentCornerRadius, radius) >= 0.00000011920929)
  {
    self->_currentCornerRadius = radius;
    [(HUMosaicCameraCell *)self _updateViewCorners:?];
  }
}

- (void)_updateViewCorners:(double)corners
{
  cameraView = [(HUMosaicCameraCell *)self cameraView];
  [cameraView _setContinuousCornerRadius:corners];

  backgroundConfiguration = [(HUMosaicCameraCell *)self backgroundConfiguration];
  [backgroundConfiguration setCornerRadius:corners];
  [(HUMosaicCameraCell *)self setBackgroundConfiguration:backgroundConfiguration];
}

- (void)updateConstraints
{
  allConstraints = [(HUMosaicCameraCell *)self allConstraints];

  if (!allConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    objc_opt_class();
    layoutOptions = [(HUMosaicCameraCell *)self layoutOptions];
    if (objc_opt_isKindOfClass())
    {
      v6 = layoutOptions;
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

    recordingIndicatorImageView = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    topAnchor = [recordingIndicatorImageView topAnchor];
    topAnchor2 = [(HUMosaicCameraCell *)self topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
    [array addObject:v13];

    recordingIndicatorImageView2 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    trailingAnchor = [recordingIndicatorImageView2 trailingAnchor];
    trailingAnchor2 = [(HUMosaicCameraCell *)self trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v9];
    [array addObject:v17];

    recordingIndicatorImageView3 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    widthAnchor = [recordingIndicatorImageView3 widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:12.0];
    [array addObject:v20];

    recordingIndicatorImageView4 = [(HUMosaicCameraCell *)self recordingIndicatorImageView];
    heightAnchor = [recordingIndicatorImageView4 heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:12.0];
    [array addObject:v23];

    cameraView = [(HUMosaicCameraCell *)self cameraView];
    leadingAnchor = [cameraView leadingAnchor];
    leadingAnchor2 = [(HUMosaicCameraCell *)self leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v27];

    cameraView2 = [(HUMosaicCameraCell *)self cameraView];
    trailingAnchor3 = [cameraView2 trailingAnchor];
    trailingAnchor4 = [(HUMosaicCameraCell *)self trailingAnchor];
    v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v31];

    cameraView3 = [(HUMosaicCameraCell *)self cameraView];
    topAnchor3 = [cameraView3 topAnchor];
    topAnchor4 = [(HUMosaicCameraCell *)self topAnchor];
    v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v35];

    cameraView4 = [(HUMosaicCameraCell *)self cameraView];
    bottomAnchor = [cameraView4 bottomAnchor];
    bottomAnchor2 = [(HUMosaicCameraCell *)self bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v39];

    [(HUMosaicCameraCell *)self setAllConstraints:array];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  v40.receiver = self;
  v40.super_class = HUMosaicCameraCell;
  [(HUMosaicCameraCell *)&v40 updateConstraints];
}

- (void)_updateRecordIndicatorColor
{
  objc_opt_class();
  item = [(HUMosaicCameraCell *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];

  userSettings = [profile userSettings];

  if (userSettings)
  {
    [userSettings hu_indicatorColorForCurrentAccessMode];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v7 = ;
  [(UIImageView *)self->_recordingIndicatorImageView setTintColor:v7];

  v8 = MEMORY[0x277D755B8];
  hu_indicatorImageNameForCurrentAccessMode = [userSettings hu_indicatorImageNameForCurrentAccessMode];
  v10 = [v8 systemImageNamed:hu_indicatorImageNameForCurrentAccessMode];
  [(UIImageView *)self->_recordingIndicatorImageView setImage:v10];
}

- (id)_timingLabelText:(id)text
{
  textCopy = text;
  if ([MEMORY[0x277D14CE8] shouldSuppressAllErrorsForDemo])
  {
    v5 = &stru_2823E0EE8;
    goto LABEL_8;
  }

  if (textCopy)
  {
    hf_localizedAge = [textCopy hf_localizedAge];
LABEL_5:
    v5 = hf_localizedAge;
    goto LABEL_8;
  }

  if (![(HUGridCell *)self primaryState])
  {
    hf_localizedAge = _HULocalizedStringWithDefaultValue(@"HUGridCameraCellNoResponseDescription", @"HUGridCameraCellNoResponseDescription", 1);
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