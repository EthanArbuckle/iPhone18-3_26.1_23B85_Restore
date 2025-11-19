@interface HUGridCameraCell
- (BOOL)shouldDisplayAccessModeErrorContent;
- (BOOL)shouldDisplayErrorContent;
- (CGRect)cameraViewFrame;
- (HUGridCameraCell)initWithFrame:(CGRect)a3;
- (HUVisualEffectContainerView)exclamationView;
- (UIImage)exclamationImage;
- (double)cameraViewAlpha;
- (id)_descriptionLabelText:(id)a3;
- (void)_populateExclamationImageIfNeeded;
- (void)_updateCameraViewAppearance;
- (void)_updateRecordIndicatorColor;
- (void)dealloc;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setCameraViewAlpha:(double)a3;
- (void)setLayoutOptions:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridCameraCell

- (HUGridCameraCell)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = HUGridCameraCell;
  v3 = [(HUGridCell *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUGridCameraCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBarView = v4->_topBarView;
    v4->_topBarView = v6;

    [(UIView *)v4->_topBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v4->_topBarView setBackgroundColor:v8];

    [v5 addSubview:v4->_topBarView];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    v11 = [MEMORY[0x277D75348] darkTextColor];
    [(UILabel *)v4->_titleLabel setTextColor:v11];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_titleLabel];
    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    recordingIndicatorImageView = v4->_recordingIndicatorImageView;
    v4->_recordingIndicatorImageView = v12;

    [(UIImageView *)v4->_recordingIndicatorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_recordingIndicatorImageView setContentMode:1];
    [v5 addSubview:v4->_recordingIndicatorImageView];
    v14 = [(HUGridCameraCell *)v4 exclamationView];
    [v5 addSubview:v14];

    v15 = objc_alloc_init(HUCameraView);
    cameraView = v4->_cameraView;
    v4->_cameraView = v15;

    [(HUCameraView *)v4->_cameraView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUCameraView *)v4->_cameraView setUserInteractionEnabled:0];
    [v5 addSubview:v4->_cameraView];
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
    [v5 addSubview:v4->_descriptionLabel];
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v4 selector:sel__handleShouldDifferentiateWithoutColorDidChange name:*MEMORY[0x277D764E0] object:0];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3 = [(HUGridCameraCell *)self titleLabel];
  [v3 setText:0];

  v4 = [(HUGridCameraCell *)self descriptionLabel];
  [v4 setText:0];

  [(HUGridCameraCell *)self setItem:0];
  v5 = [(HUGridCameraCell *)self descriptionLabelUpdateTimer];
  [v5 invalidate];

  [(HUGridCameraCell *)self setDescriptionLabelUpdateTimer:0];
  v6.receiver = self;
  v6.super_class = HUGridCameraCell;
  [(HUGridCell *)&v6 prepareForReuse];
}

- (void)dealloc
{
  v3 = [(HUGridCameraCell *)self descriptionLabelUpdateTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HUGridCameraCell;
  [(HUGridCameraCell *)&v4 dealloc];
}

- (double)cameraViewAlpha
{
  v2 = [(HUGridCameraCell *)self cameraView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setCameraViewAlpha:(double)a3
{
  v4 = [(HUGridCameraCell *)self cameraView];
  [v4 setAlpha:a3];
}

- (CGRect)cameraViewFrame
{
  v3 = [(HUGridCameraCell *)self cameraView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUGridCameraCell *)self cameraView];
  [(HUGridCameraCell *)self convertRect:v12 fromView:v5, v7, v9, v11];
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
    [(HUGridCameraCell *)self layoutOptionsDidChange];
    v5 = v6;
  }
}

- (BOOL)shouldDisplayErrorContent
{
  v30 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0)
  {
    objc_opt_class();
    v4 = [(HUGridCameraCell *)self item];
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

    if (v6)
    {
      v9 = [v7 hf_cameraManager];
      v10 = [v9 cachedStreamError];

      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = [v7 hf_cameraManager];
      v12 = [v11 cachedStreamError];
      if ([v12 code] == 23)
      {

        goto LABEL_13;
      }

      v15 = [v7 hf_cameraManager];
      v16 = [v15 cachedStreamError];
      v17 = [v16 code];

      if (v17 == 14)
      {
LABEL_13:
        v18 = [(HUGridCameraCell *)self item];
        v19 = [v18 latestResults];
        v13 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13D70]];

        if (v13 || (-[HUGridCameraCell item](self, "item"), v22 = objc_claimAutoreleasedReturnValue(), [v22 latestResults], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
        {
          if (![v7 hf_thermalShutdownModeActive])
          {
            v3 = 0;
LABEL_27:

            return v3;
          }

          v14 = HFLogForCategory();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          v20 = [v7 uniqueIdentifier];
          v26 = 138412290;
          v27 = v20;
          v21 = "Displaying error in tile because cameraProfile[%@] is in thermal shutdown mode";
          goto LABEL_21;
        }

        v14 = HFLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v7 uniqueIdentifier];
          v26 = 138412290;
          v27 = v20;
          v21 = "Displaying error in tile because cameraProfile[%@] has no snapshot";
LABEL_21:
          _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, v21, &v26, 0xCu);
LABEL_24:
        }

LABEL_25:

        goto LABEL_26;
      }

      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 uniqueIdentifier];
        v20 = [v7 hf_cameraManager];
        v24 = [v20 cachedStreamError];
        v26 = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = v24;
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Displaying error in tile because cameraProfile[%@] has a cached error:%@", &v26, 0x16u);

        goto LABEL_24;
      }
    }

    else
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 uniqueIdentifier];
        v26 = 138412290;
        v27 = v14;
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

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v46.receiver = self;
  v46.super_class = HUGridCameraCell;
  [(HUGridCell *)&v46 updateUIWithAnimation:?];
  v5 = [(HUGridCameraCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13D70]];

  v8 = [(HUGridCameraCell *)self cameraView];
  v9 = [v8 cameraSource];

  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __42__HUGridCameraCell_updateUIWithAnimation___block_invoke;
  v43 = &unk_277DB7558;
  v44 = self;
  v10 = v7;
  v45 = v10;
  v11 = _Block_copy(&v40);
  v12 = [(HUGridCameraCell *)self descriptionLabelUpdateTimer:v40];
  v13 = v12;
  if (v7 == v9)
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
  v14 = [(HUGridCameraCell *)self item];
  v15 = [v14 latestResults];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v17 = [(HUGridCameraCell *)self titleLabel];
  [v17 setText:v16];

  v18 = [(HUGridCameraCell *)self _descriptionLabelText:v10];
  v19 = [(HUGridCameraCell *)self descriptionLabel];
  [v19 setText:v18];

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v20 = [(HUGridCameraCell *)self item];
    v21 = [v20 latestResults];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D13D58]];

    v23 = [(HUGridCameraCell *)self cameraView];
    [v23 setCameraSource:v10 withDemoSnapshotURL:v22 animated:v3];

    v24 = [(HUGridCameraCell *)self exclamationView];
    [v24 setHidden:1];
  }

  else
  {
    v22 = [(HUGridCameraCell *)self cameraView];
    [v22 setCameraSource:v10 animated:v3];
  }

  if ([(HUGridCameraCell *)self shouldDisplayAccessModeErrorContent])
  {
    objc_opt_class();
    v25 = [(HUGridCameraCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = [v27 profile];

    v29 = [v28 userSettings];
    if ([v29 currentAccessMode])
    {
      v30 = [v28 userSettings];
      [v30 isCameraManuallyDisabled];
    }

    v35 = HFLocalizedString();
    v32 = [HUCameraErrorContent errorWithTitle:v35 description:0];

    v36 = [(HUGridCameraCell *)self exclamationView];
    [v36 setHidden:1];

    v37 = [(HUGridCameraCell *)self recordingIndicatorImageView];
    [v37 setHidden:0];
  }

  else if ([(HUGridCameraCell *)self shouldDisplayErrorContent])
  {
    v31 = HFLocalizedString();
    v32 = [HUCameraErrorContent errorWithTitle:v31 description:0];

    [(HUGridCameraCell *)self _populateExclamationImageIfNeeded];
    v33 = [(HUGridCameraCell *)self exclamationView];
    [v33 setHidden:0];

    v28 = [(HUGridCameraCell *)self recordingIndicatorImageView];
    [v28 setHidden:1];
  }

  else
  {
    v34 = [(HUGridCameraCell *)self exclamationView];
    [v34 setHidden:1];

    v28 = [(HUGridCameraCell *)self recordingIndicatorImageView];
    [v28 setHidden:0];
    v32 = 0;
  }

  v38 = [(HUGridCameraCell *)self descriptionLabel];
  [v38 setHidden:v32 != 0];

  v39 = [(HUGridCameraCell *)self cameraView];
  [v39 setErrorContent:v32 animated:v3];

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
  v3 = [(HUGridCameraCell *)self item];
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
  v23.receiver = self;
  v23.super_class = HUGridCameraCell;
  [(HUGridCell *)&v23 layoutOptionsDidChange];
  [(HUGridCell *)self secondaryContentDimmingFactor];
  v4 = v3;
  v5 = [(HUGridCameraCell *)self descriptionLabel];
  [v5 setAlpha:v4];

  v6 = [(HUGridCameraCell *)self cameraView];
  [v6 setMaskedCameraCorners:12];

  v7 = [(HUGridCameraCell *)self topBarView];
  v8 = [v7 layer];
  [v8 setMaskedCorners:3];

  v9 = [(HUGridCameraCell *)self layoutOptions];
  [v9 cellCornerRadius];
  v11 = v10;
  v12 = [(HUGridCameraCell *)self cameraView];
  [v12 _setContinuousCornerRadius:v11];

  v13 = [(HUGridCameraCell *)self layoutOptions];
  [v13 cellCornerRadius];
  v15 = v14;
  v16 = [(HUGridCameraCell *)self topBarView];
  [v16 _setContinuousCornerRadius:v15];

  v17 = [(HUGridCameraCell *)self layoutOptions];
  v18 = [v17 font];
  v19 = [(HUGridCameraCell *)self titleLabel];
  [v19 setFont:v18];

  v20 = [(HUGridCameraCell *)self layoutOptions];
  v21 = [v20 font];
  v22 = [(HUGridCameraCell *)self descriptionLabel];
  [v22 setFont:v21];
}

- (void)updateConstraints
{
  v115[9] = *MEMORY[0x277D85DE8];
  v3 = [(HUGridCameraCell *)self allConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUGridCameraCell *)self topBarView];
    v6 = [v5 topAnchor];
    v7 = [(HUGridCameraCell *)self contentView];
    v8 = [v7 topAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    [v4 addObject:v9];

    v10 = [(HUGridCameraCell *)self topBarView];
    v11 = [v10 heightAnchor];
    v12 = [(HUGridCameraCell *)self layoutOptions];
    [v12 headerViewHeight];
    v13 = [v11 constraintEqualToConstant:?];
    [v4 addObject:v13];

    v14 = [(HUGridCameraCell *)self topBarView];
    v15 = [v14 leadingAnchor];
    v16 = [(HUGridCameraCell *)self contentView];
    v17 = [v16 leadingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    [v4 addObject:v18];

    v19 = [(HUGridCameraCell *)self topBarView];
    v20 = [v19 trailingAnchor];
    v21 = [(HUGridCameraCell *)self contentView];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v4 addObject:v23];

    v24 = [(HUGridCameraCell *)self layoutOptions];
    [v24 headerViewHeight];
    v26 = v25 * 0.5;

    v27 = [(HUGridCameraCell *)self labelsConstraints];

    if (!v27)
    {
      v113 = [(HUGridCameraCell *)self titleLabel];
      v111 = [v113 centerYAnchor];
      v112 = [(HUGridCameraCell *)self contentView];
      v110 = [v112 topAnchor];
      v109 = [v111 constraintEqualToAnchor:v110 constant:v26];
      v115[0] = v109;
      v108 = [(HUGridCameraCell *)self descriptionLabel];
      v106 = [v108 centerYAnchor];
      v107 = [(HUGridCameraCell *)self contentView];
      v105 = [v107 bottomAnchor];
      v104 = [v106 constraintEqualToAnchor:v105 constant:-v26];
      v115[1] = v104;
      v103 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      v101 = [v103 centerYAnchor];
      v102 = [(HUGridCameraCell *)self contentView];
      v100 = [v102 topAnchor];
      v99 = [v101 constraintEqualToAnchor:v100 constant:v26];
      v115[2] = v99;
      v98 = [(HUGridCameraCell *)self titleLabel];
      v96 = [v98 leadingAnchor];
      v97 = [(HUGridCameraCell *)self contentView];
      v94 = [v97 leadingAnchor];
      v95 = [(HUGridCameraCell *)self layoutOptions];
      [v95 headerHorizontalInnerMargins];
      v93 = [v96 constraintEqualToAnchor:v94 constant:?];
      v115[3] = v93;
      v92 = [(HUGridCameraCell *)self titleLabel];
      v90 = [v92 trailingAnchor];
      v91 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      v89 = [v91 leadingAnchor];
      v88 = [v90 constraintEqualToAnchor:v89];
      v115[4] = v88;
      v87 = [(HUGridCameraCell *)self descriptionLabel];
      v85 = [v87 trailingAnchor];
      v86 = [(HUGridCameraCell *)self contentView];
      v83 = [v86 trailingAnchor];
      v84 = [(HUGridCameraCell *)self layoutOptions];
      [v84 headerHorizontalInnerMargins];
      v82 = [v85 constraintEqualToAnchor:v83 constant:-v28];
      v115[5] = v82;
      v81 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      v79 = [v81 trailingAnchor];
      v80 = [(HUGridCameraCell *)self contentView];
      v77 = [v80 trailingAnchor];
      v78 = [(HUGridCameraCell *)self layoutOptions];
      [v78 headerHorizontalInnerMargins];
      v30 = [v79 constraintEqualToAnchor:v77 constant:-v29];
      v115[6] = v30;
      v31 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      v32 = [v31 widthAnchor];
      v33 = [v32 constraintEqualToConstant:12.0];
      v115[7] = v33;
      v34 = [(HUGridCameraCell *)self recordingIndicatorImageView];
      v35 = [v34 heightAnchor];
      v36 = [v35 constraintEqualToConstant:12.0];
      v115[8] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:9];
      [(HUGridCameraCell *)self setLabelsConstraints:v37];

      v38 = [(HUGridCameraCell *)self labelsConstraints];
      [v4 addObjectsFromArray:v38];
    }

    v39 = [(HUGridCameraCell *)self exclamationView];
    v40 = [v39 trailingAnchor];
    v41 = [(HUGridCameraCell *)self contentView];
    v42 = [v41 trailingAnchor];
    v43 = [(HUGridCameraCell *)self layoutOptions];
    [v43 headerHorizontalInnerMargins];
    v45 = [v40 constraintEqualToAnchor:v42 constant:-v44];
    [v4 addObject:v45];

    v46 = [(HUGridCameraCell *)self exclamationView];
    v47 = [v46 widthAnchor];
    v48 = [v47 constraintEqualToConstant:24.0];
    [v4 addObject:v48];

    v49 = [(HUGridCameraCell *)self exclamationView];
    v50 = [v49 heightAnchor];
    v51 = [v50 constraintEqualToConstant:24.0];
    [v4 addObject:v51];

    v52 = [(HUGridCameraCell *)self exclamationView];
    v53 = [v52 centerYAnchor];
    v54 = [(HUGridCameraCell *)self contentView];
    v55 = [v54 topAnchor];
    v56 = [v53 constraintEqualToAnchor:v55 constant:v26];
    [v4 addObject:v56];

    v57 = [(HUGridCameraCell *)self cameraView];
    v58 = [v57 leadingAnchor];
    v59 = [(HUGridCameraCell *)self contentView];
    v60 = [v59 leadingAnchor];
    v61 = [v58 constraintEqualToAnchor:v60];
    [v4 addObject:v61];

    v62 = [(HUGridCameraCell *)self cameraView];
    v63 = [v62 trailingAnchor];
    v64 = [(HUGridCameraCell *)self contentView];
    v65 = [v64 trailingAnchor];
    v66 = [v63 constraintEqualToAnchor:v65];
    [v4 addObject:v66];

    v67 = [(HUGridCameraCell *)self cameraView];
    v68 = [v67 topAnchor];
    v69 = [(HUGridCameraCell *)self topAnchor];
    v70 = [(HUGridCameraCell *)self layoutOptions];
    [v70 headerViewHeight];
    v71 = [v68 constraintEqualToAnchor:v69 constant:?];
    [v4 addObject:v71];

    v72 = [(HUGridCameraCell *)self cameraView];
    v73 = [v72 bottomAnchor];
    v74 = [(HUGridCameraCell *)self contentView];
    v75 = [v74 bottomAnchor];
    v76 = [v73 constraintEqualToAnchor:v75];
    [v4 addObject:v76];

    [(HUGridCameraCell *)self setAllConstraints:v4];
    [MEMORY[0x277CCAAD0] activateConstraints:v4];
  }

  v114.receiver = self;
  v114.super_class = HUGridCameraCell;
  [(HUGridCameraCell *)&v114 updateConstraints];
}

- (void)_updateCameraViewAppearance
{
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  v4 = [(HUGridCameraCell *)self cameraView];
  [v4 setBackgroundColor:v3];

  v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  v5 = [(HUGridCameraCell *)self cameraView];
  [v5 setTintColor:v6];
}

- (void)_updateRecordIndicatorColor
{
  objc_opt_class();
  v3 = [(HUGridCameraCell *)self item];
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

- (id)_descriptionLabelText:(id)a3
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

- (void)_populateExclamationImageIfNeeded
{
  v3 = [(HUGridCameraCell *)self exclamationImageView];
  v4 = [v3 image];

  if (!v4)
  {
    v6 = [(HUGridCameraCell *)self exclamationImage];
    v5 = [(HUGridCameraCell *)self exclamationImageView];
    [v5 setImage:v6];
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
    v8 = [(HUGridCell *)self contentEffect];
    v9 = [(HUVisualEffectContainerView *)v7 initWithEffect:v8];

    [(HUVisualEffectContainerView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUVisualEffectContainerView *)v9 setInnerContentView:self->_exclamationImageView];
    v10 = [MEMORY[0x277D75348] systemRedColor];
    [(HUVisualEffectContainerView *)v9 setTintColor:v10];

    v11 = self->_exclamationView;
    self->_exclamationView = v9;

    exclamationView = self->_exclamationView;
  }

  return exclamationView;
}

@end