@interface HUGridCameraCell
- (BOOL)shouldDisplayAccessModeErrorContent;
- (BOOL)shouldDisplayErrorContent;
- (CGRect)cameraViewFrame;
- (HUGridCameraCell)initWithFrame:(CGRect)frame;
- (HUVisualEffectContainerView)exclamationView;
- (UIImage)exclamationImage;
- (double)cameraViewAlpha;
- (id)_descriptionLabelText:(id)text;
- (void)_populateExclamationImageIfNeeded;
- (void)_updateCameraViewAppearance;
- (void)_updateRecordIndicatorColor;
- (void)dealloc;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setCameraViewAlpha:(double)alpha;
- (void)setLayoutOptions:(id)options;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridCameraCell

- (HUGridCameraCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = HUGridCameraCell;
  v3 = [(HUGridCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(HUGridCameraCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBarView = v4->_topBarView;
    v4->_topBarView = v6;

    [(UIView *)v4->_topBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v4->_topBarView setBackgroundColor:systemWhiteColor];

    [contentView addSubview:v4->_topBarView];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    darkTextColor = [MEMORY[0x277D75348] darkTextColor];
    [(UILabel *)v4->_titleLabel setTextColor:darkTextColor];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_titleLabel];
    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    recordingIndicatorImageView = v4->_recordingIndicatorImageView;
    v4->_recordingIndicatorImageView = v12;

    [(UIImageView *)v4->_recordingIndicatorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_recordingIndicatorImageView setContentMode:1];
    [contentView addSubview:v4->_recordingIndicatorImageView];
    exclamationView = [(HUGridCameraCell *)v4 exclamationView];
    [contentView addSubview:exclamationView];

    v15 = objc_alloc_init(HUCameraView);
    cameraView = v4->_cameraView;
    v4->_cameraView = v15;

    [(HUCameraView *)v4->_cameraView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUCameraView *)v4->_cameraView setUserInteractionEnabled:0];
    [contentView addSubview:v4->_cameraView];
    v17 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    legibilitySettings = v4->_legibilitySettings;
    v4->_legibilitySettings = v17;

    v19 = [HULegibilityLabel alloc];
    v20 = v4->_legibilitySettings;
    v21 = *MEMORY[0x277D774E0];
    v22 = [MEMORY[0x277D74300] systemFontOfSize:6.0];
    v23 = [(HULegibilityLabel *)v19 initWithSettings:v20 strength:&stru_2823E0EE8 text:v22 font:*MEMORY[0x277D77500] options:v21];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v23;

    [(HULegibilityLabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1144766464;
    [(HULegibilityLabel *)v4->_descriptionLabel setContentCompressionResistancePriority:0 forAxis:v25];
    LODWORD(v26) = 1132134400;
    [(HULegibilityLabel *)v4->_descriptionLabel setContentHuggingPriority:0 forAxis:v26];
    [contentView addSubview:v4->_descriptionLabel];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__handleShouldDifferentiateWithoutColorDidChange name:*MEMORY[0x277D764E0] object:0];
  }

  return v4;
}

- (void)prepareForReuse
{
  titleLabel = [(HUGridCameraCell *)self titleLabel];
  [titleLabel setText:0];

  descriptionLabel = [(HUGridCameraCell *)self descriptionLabel];
  [descriptionLabel setText:0];

  [(HUGridCameraCell *)self setItem:0];
  descriptionLabelUpdateTimer = [(HUGridCameraCell *)self descriptionLabelUpdateTimer];
  [descriptionLabelUpdateTimer invalidate];

  [(HUGridCameraCell *)self setDescriptionLabelUpdateTimer:0];
  v6.receiver = self;
  v6.super_class = HUGridCameraCell;
  [(HUGridCell *)&v6 prepareForReuse];
}

- (void)dealloc
{
  descriptionLabelUpdateTimer = [(HUGridCameraCell *)self descriptionLabelUpdateTimer];
  [descriptionLabelUpdateTimer invalidate];

  v4.receiver = self;
  v4.super_class = HUGridCameraCell;
  [(HUGridCameraCell *)&v4 dealloc];
}

- (double)cameraViewAlpha
{
  cameraView = [(HUGridCameraCell *)self cameraView];
  [cameraView alpha];
  v4 = v3;

  return v4;
}

- (void)setCameraViewAlpha:(double)alpha
{
  cameraView = [(HUGridCameraCell *)self cameraView];
  [cameraView setAlpha:alpha];
}

- (CGRect)cameraViewFrame
{
  cameraView = [(HUGridCameraCell *)self cameraView];
  [cameraView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  cameraView2 = [(HUGridCameraCell *)self cameraView];
  [(HUGridCameraCell *)self convertRect:cameraView2 fromView:v5, v7, v9, v11];
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
    [(HUGridCameraCell *)self layoutOptionsDidChange];
    optionsCopy = v6;
  }
}

- (BOOL)shouldDisplayErrorContent
{
  v30 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0)
  {
    objc_opt_class();
    item = [(HUGridCameraCell *)self item];
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

    if (v6)
    {
      hf_cameraManager = [profile hf_cameraManager];
      cachedStreamError = [hf_cameraManager cachedStreamError];

      if (!cachedStreamError)
      {
        goto LABEL_13;
      }

      hf_cameraManager2 = [profile hf_cameraManager];
      cachedStreamError2 = [hf_cameraManager2 cachedStreamError];
      if ([cachedStreamError2 code] == 23)
      {

        goto LABEL_13;
      }

      hf_cameraManager3 = [profile hf_cameraManager];
      cachedStreamError3 = [hf_cameraManager3 cachedStreamError];
      code = [cachedStreamError3 code];

      if (code == 14)
      {
LABEL_13:
        item2 = [(HUGridCameraCell *)self item];
        latestResults = [item2 latestResults];
        v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D70]];

        if (v13 || (-[HUGridCameraCell item](self, "item"), v22 = objc_claimAutoreleasedReturnValue(), [v22 latestResults], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
        {
          if (![profile hf_thermalShutdownModeActive])
          {
            v3 = 0;
LABEL_27:

            return v3;
          }

          uniqueIdentifier2 = HFLogForCategory();
          if (!os_log_type_enabled(uniqueIdentifier2, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          uniqueIdentifier = [profile uniqueIdentifier];
          v26 = 138412290;
          v27 = uniqueIdentifier;
          v21 = "Displaying error in tile because cameraProfile[%@] is in thermal shutdown mode";
          goto LABEL_21;
        }

        uniqueIdentifier2 = HFLogForCategory();
        if (os_log_type_enabled(uniqueIdentifier2, OS_LOG_TYPE_DEFAULT))
        {
          uniqueIdentifier = [profile uniqueIdentifier];
          v26 = 138412290;
          v27 = uniqueIdentifier;
          v21 = "Displaying error in tile because cameraProfile[%@] has no snapshot";
LABEL_21:
          _os_log_impl(&dword_20CEB6000, uniqueIdentifier2, OS_LOG_TYPE_DEFAULT, v21, &v26, 0xCu);
LABEL_24:
        }

LABEL_25:

        goto LABEL_26;
      }

      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier2 = [profile uniqueIdentifier];
        uniqueIdentifier = [profile hf_cameraManager];
        cachedStreamError4 = [uniqueIdentifier cachedStreamError];
        v26 = 138412546;
        v27 = uniqueIdentifier2;
        v28 = 2112;
        v29 = cachedStreamError4;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Displaying error in tile because cameraProfile[%@] has a cached error:%@", &v26, 0x16u);

        goto LABEL_24;
      }
    }

    else
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier2 = [profile uniqueIdentifier];
        v26 = 138412290;
        v27 = uniqueIdentifier2;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Displaying error in tile because cameraProfile[%@] is unreachable", &v26, 0xCu);
        goto LABEL_25;
      }
    }

LABEL_26:
    v3 = 1;
    goto LABEL_27;
  }

  return 0;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v46.receiver = self;
  v46.super_class = HUGridCameraCell;
  [(HUGridCell *)&v46 updateUIWithAnimation:?];
  item = [(HUGridCameraCell *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D70]];

  cameraView = [(HUGridCameraCell *)self cameraView];
  cameraSource = [cameraView cameraSource];

  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __42__HUGridCameraCell_updateUIWithAnimation___block_invoke;
  v43 = &unk_277DB7558;
  selfCopy = self;
  v10 = v7;
  v45 = v10;
  v11 = _Block_copy(&v40);
  v12 = [(HUGridCameraCell *)self descriptionLabelUpdateTimer:v40];
  v13 = v12;
  if (v7 == cameraSource)
  {

    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [v12 invalidate];
  }

  if (v10)
  {
    v11[2](v11);
  }

LABEL_6:
  item2 = [(HUGridCameraCell *)self item];
  latestResults2 = [item2 latestResults];
  v16 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  titleLabel = [(HUGridCameraCell *)self titleLabel];
  [titleLabel setText:v16];

  v18 = [(HUGridCameraCell *)self _descriptionLabelText:v10];
  descriptionLabel = [(HUGridCameraCell *)self descriptionLabel];
  [descriptionLabel setText:v18];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    item3 = [(HUGridCameraCell *)self item];
    latestResults3 = [item3 latestResults];
    cameraView3 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13D58]];

    cameraView2 = [(HUGridCameraCell *)self cameraView];
    [cameraView2 setCameraSource:v10 withDemoSnapshotURL:cameraView3 animated:animationCopy];

    exclamationView = [(HUGridCameraCell *)self exclamationView];
    [exclamationView setHidden:1];
  }

  else
  {
    cameraView3 = [(HUGridCameraCell *)self cameraView];
    [cameraView3 setCameraSource:v10 animated:animationCopy];
  }

  if ([(HUGridCameraCell *)self shouldDisplayAccessModeErrorContent])
  {
    objc_opt_class();
    item4 = [(HUGridCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v26 = item4;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    profile = [v27 profile];

    userSettings = [profile userSettings];
    if ([userSettings currentAccessMode])
    {
      userSettings2 = [profile userSettings];
      [userSettings2 isCameraManuallyDisabled];
    }

    v35 = HFLocalizedString();
    v32 = [HUCameraErrorContent errorWithTitle:v35 description:0];

    exclamationView2 = [(HUGridCameraCell *)self exclamationView];
    [exclamationView2 setHidden:1];

    recordingIndicatorImageView = [(HUGridCameraCell *)self recordingIndicatorImageView];
    [recordingIndicatorImageView setHidden:0];
  }

  else if ([(HUGridCameraCell *)self shouldDisplayErrorContent])
  {
    v31 = HFLocalizedString();
    v32 = [HUCameraErrorContent errorWithTitle:v31 description:0];

    [(HUGridCameraCell *)self _populateExclamationImageIfNeeded];
    exclamationView3 = [(HUGridCameraCell *)self exclamationView];
    [exclamationView3 setHidden:0];

    profile = [(HUGridCameraCell *)self recordingIndicatorImageView];
    [profile setHidden:1];
  }

  else
  {
    exclamationView4 = [(HUGridCameraCell *)self exclamationView];
    [exclamationView4 setHidden:1];

    profile = [(HUGridCameraCell *)self recordingIndicatorImageView];
    [profile setHidden:0];
    v32 = 0;
  }

  descriptionLabel2 = [(HUGridCameraCell *)self descriptionLabel];
  [descriptionLabel2 setHidden:v32 != 0];

  cameraView4 = [(HUGridCameraCell *)self cameraView];
  [cameraView4 setErrorContent:v32 animated:animationCopy];

  [(HUGridCameraCell *)self _updateRecordIndicatorColor];
  [(HUGridCameraCell *)self _updateCameraViewAppearance];
}

void __42__HUGridCameraCell_updateUIWithAnimation___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x277D2C8D8];
  v3 = [*(a1 + 40) captureDate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HUGridCameraCell_updateUIWithAnimation___block_invoke_2;
  v5[3] = &unk_277DB9480;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  v4 = [v2 scheduledTimerWithReferenceDate:v3 minimumUnit:128 block:v5];
  [*(a1 + 32) setDescriptionLabelUpdateTimer:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__HUGridCameraCell_updateUIWithAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _descriptionLabelText:*(a1 + 32)];
  v3 = [WeakRetained descriptionLabel];
  [v3 setText:v2];
}

- (BOOL)shouldDisplayAccessModeErrorContent
{
  objc_opt_class();
  item = [(HUGridCameraCell *)self item];
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
  v23.receiver = self;
  v23.super_class = HUGridCameraCell;
  [(HUGridCell *)&v23 layoutOptionsDidChange];
  [(HUGridCell *)self secondaryContentDimmingFactor];
  v4 = v3;
  descriptionLabel = [(HUGridCameraCell *)self descriptionLabel];
  [descriptionLabel setAlpha:v4];

  cameraView = [(HUGridCameraCell *)self cameraView];
  [cameraView setMaskedCameraCorners:12];

  topBarView = [(HUGridCameraCell *)self topBarView];
  layer = [topBarView layer];
  [layer setMaskedCorners:3];

  layoutOptions = [(HUGridCameraCell *)self layoutOptions];
  [layoutOptions cellCornerRadius];
  v11 = v10;
  cameraView2 = [(HUGridCameraCell *)self cameraView];
  [cameraView2 _setContinuousCornerRadius:v11];

  layoutOptions2 = [(HUGridCameraCell *)self layoutOptions];
  [layoutOptions2 cellCornerRadius];
  v15 = v14;
  topBarView2 = [(HUGridCameraCell *)self topBarView];
  [topBarView2 _setContinuousCornerRadius:v15];

  layoutOptions3 = [(HUGridCameraCell *)self layoutOptions];
  font = [layoutOptions3 font];
  titleLabel = [(HUGridCameraCell *)self titleLabel];
  [titleLabel setFont:font];

  layoutOptions4 = [(HUGridCameraCell *)self layoutOptions];
  font2 = [layoutOptions4 font];
  descriptionLabel2 = [(HUGridCameraCell *)self descriptionLabel];
  [descriptionLabel2 setFont:font2];
}

- (void)updateConstraints
{
  v115[9] = *MEMORY[0x277D85DE8];
  allConstraints = [(HUGridCameraCell *)self allConstraints];

  if (!allConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    topBarView = [(HUGridCameraCell *)self topBarView];
    topAnchor = [topBarView topAnchor];
    contentView = [(HUGridCameraCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v9];

    topBarView2 = [(HUGridCameraCell *)self topBarView];
    heightAnchor = [topBarView2 heightAnchor];
    layoutOptions = [(HUGridCameraCell *)self layoutOptions];
    [layoutOptions headerViewHeight];
    v13 = [heightAnchor constraintEqualToConstant:?];
    [array addObject:v13];

    topBarView3 = [(HUGridCameraCell *)self topBarView];
    leadingAnchor = [topBarView3 leadingAnchor];
    contentView2 = [(HUGridCameraCell *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v18];

    topBarView4 = [(HUGridCameraCell *)self topBarView];
    trailingAnchor = [topBarView4 trailingAnchor];
    contentView3 = [(HUGridCameraCell *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v23];

    layoutOptions2 = [(HUGridCameraCell *)self layoutOptions];
    [layoutOptions2 headerViewHeight];
    v26 = v25 * 0.5;

    labelsConstraints = [(HUGridCameraCell *)self labelsConstraints];

    if (!labelsConstraints)
    {
      titleLabel = [(HUGridCameraCell *)self titleLabel];
      centerYAnchor = [titleLabel centerYAnchor];
      contentView4 = [(HUGridCameraCell *)self contentView];
      topAnchor3 = [contentView4 topAnchor];
      v109 = [centerYAnchor constraintEqualToAnchor:topAnchor3 constant:v26];
      v115[0] = v109;
      descriptionLabel = [(HUGridCameraCell *)self descriptionLabel];
      centerYAnchor2 = [descriptionLabel centerYAnchor];
      contentView5 = [(HUGridCameraCell *)self contentView];
      bottomAnchor = [contentView5 bottomAnchor];
      v104 = [centerYAnchor2 constraintEqualToAnchor:bottomAnchor constant:-v26];
      v115[1] = v104;
      recordingIndicatorImageView = [(HUGridCameraCell *)self recordingIndicatorImageView];
      centerYAnchor3 = [recordingIndicatorImageView centerYAnchor];
      contentView6 = [(HUGridCameraCell *)self contentView];
      topAnchor4 = [contentView6 topAnchor];
      v99 = [centerYAnchor3 constraintEqualToAnchor:topAnchor4 constant:v26];
      v115[2] = v99;
      titleLabel2 = [(HUGridCameraCell *)self titleLabel];
      leadingAnchor3 = [titleLabel2 leadingAnchor];
      contentView7 = [(HUGridCameraCell *)self contentView];
      leadingAnchor4 = [contentView7 leadingAnchor];
      layoutOptions3 = [(HUGridCameraCell *)self layoutOptions];
      [layoutOptions3 headerHorizontalInnerMargins];
      v93 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
      v115[3] = v93;
      titleLabel3 = [(HUGridCameraCell *)self titleLabel];
      trailingAnchor3 = [titleLabel3 trailingAnchor];
      recordingIndicatorImageView2 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      leadingAnchor5 = [recordingIndicatorImageView2 leadingAnchor];
      v88 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
      v115[4] = v88;
      descriptionLabel2 = [(HUGridCameraCell *)self descriptionLabel];
      trailingAnchor4 = [descriptionLabel2 trailingAnchor];
      contentView8 = [(HUGridCameraCell *)self contentView];
      trailingAnchor5 = [contentView8 trailingAnchor];
      layoutOptions4 = [(HUGridCameraCell *)self layoutOptions];
      [layoutOptions4 headerHorizontalInnerMargins];
      v82 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v28];
      v115[5] = v82;
      recordingIndicatorImageView3 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      trailingAnchor6 = [recordingIndicatorImageView3 trailingAnchor];
      contentView9 = [(HUGridCameraCell *)self contentView];
      trailingAnchor7 = [contentView9 trailingAnchor];
      layoutOptions5 = [(HUGridCameraCell *)self layoutOptions];
      [layoutOptions5 headerHorizontalInnerMargins];
      v30 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v29];
      v115[6] = v30;
      recordingIndicatorImageView4 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      widthAnchor = [recordingIndicatorImageView4 widthAnchor];
      v33 = [widthAnchor constraintEqualToConstant:12.0];
      v115[7] = v33;
      recordingIndicatorImageView5 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      heightAnchor2 = [recordingIndicatorImageView5 heightAnchor];
      v36 = [heightAnchor2 constraintEqualToConstant:12.0];
      v115[8] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:9];
      [(HUGridCameraCell *)self setLabelsConstraints:v37];

      labelsConstraints2 = [(HUGridCameraCell *)self labelsConstraints];
      [array addObjectsFromArray:labelsConstraints2];
    }

    exclamationView = [(HUGridCameraCell *)self exclamationView];
    trailingAnchor8 = [exclamationView trailingAnchor];
    contentView10 = [(HUGridCameraCell *)self contentView];
    trailingAnchor9 = [contentView10 trailingAnchor];
    layoutOptions6 = [(HUGridCameraCell *)self layoutOptions];
    [layoutOptions6 headerHorizontalInnerMargins];
    v45 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v44];
    [array addObject:v45];

    exclamationView2 = [(HUGridCameraCell *)self exclamationView];
    widthAnchor2 = [exclamationView2 widthAnchor];
    v48 = [widthAnchor2 constraintEqualToConstant:24.0];
    [array addObject:v48];

    exclamationView3 = [(HUGridCameraCell *)self exclamationView];
    heightAnchor3 = [exclamationView3 heightAnchor];
    v51 = [heightAnchor3 constraintEqualToConstant:24.0];
    [array addObject:v51];

    exclamationView4 = [(HUGridCameraCell *)self exclamationView];
    centerYAnchor4 = [exclamationView4 centerYAnchor];
    contentView11 = [(HUGridCameraCell *)self contentView];
    topAnchor5 = [contentView11 topAnchor];
    v56 = [centerYAnchor4 constraintEqualToAnchor:topAnchor5 constant:v26];
    [array addObject:v56];

    cameraView = [(HUGridCameraCell *)self cameraView];
    leadingAnchor6 = [cameraView leadingAnchor];
    contentView12 = [(HUGridCameraCell *)self contentView];
    leadingAnchor7 = [contentView12 leadingAnchor];
    v61 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [array addObject:v61];

    cameraView2 = [(HUGridCameraCell *)self cameraView];
    trailingAnchor10 = [cameraView2 trailingAnchor];
    contentView13 = [(HUGridCameraCell *)self contentView];
    trailingAnchor11 = [contentView13 trailingAnchor];
    v66 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    [array addObject:v66];

    cameraView3 = [(HUGridCameraCell *)self cameraView];
    topAnchor6 = [cameraView3 topAnchor];
    topAnchor7 = [(HUGridCameraCell *)self topAnchor];
    layoutOptions7 = [(HUGridCameraCell *)self layoutOptions];
    [layoutOptions7 headerViewHeight];
    v71 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:?];
    [array addObject:v71];

    cameraView4 = [(HUGridCameraCell *)self cameraView];
    bottomAnchor2 = [cameraView4 bottomAnchor];
    contentView14 = [(HUGridCameraCell *)self contentView];
    bottomAnchor3 = [contentView14 bottomAnchor];
    v76 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [array addObject:v76];

    [(HUGridCameraCell *)self setAllConstraints:array];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  v114.receiver = self;
  v114.super_class = HUGridCameraCell;
  [(HUGridCameraCell *)&v114 updateConstraints];
}

- (void)_updateCameraViewAppearance
{
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  cameraView = [(HUGridCameraCell *)self cameraView];
  [cameraView setBackgroundColor:v3];

  v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  cameraView2 = [(HUGridCameraCell *)self cameraView];
  [cameraView2 setTintColor:v6];
}

- (void)_updateRecordIndicatorColor
{
  objc_opt_class();
  item = [(HUGridCameraCell *)self item];
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

- (id)_descriptionLabelText:(id)text
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

- (void)_populateExclamationImageIfNeeded
{
  exclamationImageView = [(HUGridCameraCell *)self exclamationImageView];
  image = [exclamationImageView image];

  if (!image)
  {
    exclamationImage = [(HUGridCameraCell *)self exclamationImage];
    exclamationImageView2 = [(HUGridCameraCell *)self exclamationImageView];
    [exclamationImageView2 setImage:exclamationImage];
  }
}

- (UIImage)exclamationImage
{
  exclamationImage = self->_exclamationImage;
  if (!exclamationImage)
  {
    v4 = [MEMORY[0x277D755B8] _systemImageNamed:@"exclamationmark.circle.fill"];
    v5 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988]];
    v6 = [v4 imageWithConfiguration:v5];
    v7 = self->_exclamationImage;
    self->_exclamationImage = v6;

    exclamationImage = self->_exclamationImage;
  }

  return exclamationImage;
}

- (HUVisualEffectContainerView)exclamationView
{
  exclamationView = self->_exclamationView;
  if (!exclamationView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    exclamationImageView = self->_exclamationImageView;
    self->_exclamationImageView = v5;

    v7 = [HUVisualEffectContainerView alloc];
    contentEffect = [(HUGridCell *)self contentEffect];
    v9 = [(HUVisualEffectContainerView *)v7 initWithEffect:contentEffect];

    [(HUVisualEffectContainerView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUVisualEffectContainerView *)v9 setInnerContentView:self->_exclamationImageView];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(HUVisualEffectContainerView *)v9 setTintColor:systemRedColor];

    v11 = self->_exclamationView;
    self->_exclamationView = v9;

    exclamationView = self->_exclamationView;
  }

  return exclamationView;
}

@end