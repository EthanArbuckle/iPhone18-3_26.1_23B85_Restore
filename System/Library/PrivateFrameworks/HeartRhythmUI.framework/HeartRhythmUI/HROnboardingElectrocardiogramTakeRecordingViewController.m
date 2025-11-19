@interface HROnboardingElectrocardiogramTakeRecordingViewController
- (CGSize)_takeRecordingImageDimension;
- (id)_bodyFont;
- (id)_recordingStepFont;
- (id)_titleFont;
- (id)_titleForOnboarding:(BOOL)a3;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (void)_setUpElectrocardiogramQuery;
- (void)_stepForwardWithElectrocardiogramRecorded:(BOOL)a3;
- (void)_stopElectrocardiogramQuery;
- (void)heartRhythmAvailabilityDidUpdate;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)skipButtonTapped:(id)a3;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HROnboardingElectrocardiogramTakeRecordingViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  v5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v10 initForOnboarding:a3 upgradingFromAlgorithmVersion:a4];
  v6 = v5;
  if (v5)
  {
    v7 = !v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v5 setRightButtonType:4];
    v8 = [v6 navigationItem];
    [v8 setHidesBackButton:1];

    v6[1088] = 0;
  }

  return v6;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v8 viewDidLoad];
  if ([(HROnboardingElectrocardiogramTakeRecordingViewController *)self isOnboarding])
  {
    v3 = objc_alloc(MEMORY[0x277CCD530]);
    v4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    v5 = [v4 healthStore];
    v6 = [v3 initWithHealthStore:v5];
    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setAvailability:v6];

    v7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self availability];
    [v7 addHeartRhythmAvailabilityObserver:self];

    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _setUpElectrocardiogramQuery];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v5 viewDidDisappear:a3];
  if ([(HROnboardingElectrocardiogramTakeRecordingViewController *)self isOnboarding])
  {
    v4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self availability];
    [v4 removeHeartRhythmAvailabilityObserver:self];

    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _stopElectrocardiogramQuery];
  }
}

- (void)setUpUI
{
  v100.receiver = self;
  v100.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v100 setUpUI];
  v3 = [[HROnboardingWristImageView alloc] initWithImageStyle:1];
  [(HROnboardingWristImageView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HROnboardingWristImageView *)v3 setContentMode:1];
  [(HROnboardingWristImageView *)v3 setTimeRemaining:26.0];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setAssetView:v3];
  v4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  [v4 addSubview:v5];

  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setTitleLabel:v6];

  v7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
  v8 = -[HROnboardingElectrocardiogramTakeRecordingViewController _titleForOnboarding:](self, "_titleForOnboarding:", [v7 firstTimeOnboarding]);
  v9 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v9 setText:v8];

  v10 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v10 setTextAlignment:4];

  v11 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _titleFont];
  v12 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v12 setFont:v11];

  v13 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v13 setAdjustsFontForContentSizeCategory:1];

  v14 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v15 setNumberOfLines:0];

  v16 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v17 = [v16 stringByAppendingString:@".Title"];
  v18 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v18 setAccessibilityIdentifier:v17];

  v19 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v20 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v19 addSubview:v20];

  v21 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setBodyLabel:v21];

  v22 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_BODY");
  v23 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v23 setText:v22];

  v24 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v24 setTextAlignment:4];

  v25 = [MEMORY[0x277D75348] secondaryLabelColor];
  v26 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v26 setTextColor:v25];

  v27 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _bodyFont];
  v28 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v28 setFont:v27];

  v29 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v29 setAdjustsFontForContentSizeCategory:1];

  v30 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v31 setNumberOfLines:0];

  v32 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v33 = [v32 stringByAppendingString:@".Description"];
  v34 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v34 setAccessibilityIdentifier:v33];

  v35 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v36 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [v35 addSubview:v36];

  v37 = [HRImageLabel alloc];
  v38 = [MEMORY[0x277D755B8] hrui_ECGAppIconImage];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _takeRecordingImageDimension];
  v40 = v39;
  v42 = v41;
  v43 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_LIST_ITEM_STEP-1");
  v44 = [(HRImageLabel *)v37 initWithImage:v38 size:v43 text:v40, v42];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setRecordingStep1ImageLabel:v44];

  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _takeRecordingImageDimension];
  v46 = v45 * 0.5;
  v47 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v48 = [v47 imageView];
  [v48 hrui_maskAllCornersWithRadius:v46];

  v49 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [v49 setBoldText:0];

  v50 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [v50 setImageAlignment:0];

  v51 = [MEMORY[0x277D75348] secondaryLabelColor];
  v52 = [v51 CGColor];
  v53 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v54 = [v53 imageView];
  v55 = [v54 layer];
  [v55 setBorderColor:v52];

  HKUIOnePixel();
  v57 = v56;
  v58 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v59 = [v58 imageView];
  v60 = [v59 layer];
  [v60 setBorderWidth:v57];

  v61 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];

  v62 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v63 = [v62 stringByAppendingString:@".StepOne"];
  v64 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v65 = [v64 textLabel];
  [v65 setAccessibilityIdentifier:v63];

  v66 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v67 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [v66 addSubview:v67];

  v68 = [HRImageLabel alloc];
  v69 = [MEMORY[0x277D755B8] hrui_fingerCrownImage];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _takeRecordingImageDimension];
  v71 = v70;
  v73 = v72;
  v74 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_LIST_ITEM_STEP-2");
  v75 = [(HRImageLabel *)v68 initWithImage:v69 size:v74 text:v71, v73];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setRecordingStep2ImageLabel:v75];

  v76 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [v76 setBoldText:0];

  v77 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [v77 setImageAlignment:0];

  v78 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [v78 setTranslatesAutoresizingMaskIntoConstraints:0];

  v79 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v80 = [v79 stringByAppendingString:@".StepTwo"];
  v81 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  v82 = [v81 textLabel];
  [v82 setAccessibilityIdentifier:v80];

  v83 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v84 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [v83 addSubview:v84];

  v85 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setWristSettingsLabel:v85];

  v86 = MEMORY[0x277CCAB48];
  v87 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_FOOTER");
  v88 = *MEMORY[0x277D769D0];
  v89 = [MEMORY[0x277D75348] secondaryLabelColor];
  v90 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_BOLD_FOOTER");
  v91 = [v86 hrui_attributedStringForText:v87 style:v88 color:v89 boldText:v90];
  v92 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [v92 setAttributedText:v91];

  v93 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];

  v94 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [v94 setNumberOfLines:0];

  v95 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v96 = [v95 stringByAppendingString:@".Footer"];
  v97 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [v97 setAccessibilityIdentifier:v96];

  v98 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v99 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [v98 addSubview:v99];
}

- (void)setUpConstraints
{
  v50.receiver = self;
  v50.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v50 setUpConstraints];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  v4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  v11 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v10 hrui_alignHorizontalConstraintsWithView:v11 insets:?];

  v12 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  v13 = [v12 topAnchor];
  v14 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:29.0];
  [v16 setActive:1];

  v17 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  v18 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v17 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

  v19 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  v20 = [v19 topAnchor];
  v21 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:15.0];
  [v23 setActive:1];

  v24 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v25 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v24 hk_alignHorizontalConstraintsWithView:v25 margin:0.0];

  v26 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v27 = [v26 topAnchor];
  v28 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:20.0];
  [v30 setActive:1];

  v31 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  v32 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v31 hk_alignHorizontalConstraintsWithView:v32 margin:0.0];

  v33 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  v34 = [v33 topAnchor];
  v35 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:20.0];
  [v37 setActive:1];

  v38 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  v39 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [v38 hk_alignHorizontalConstraintsWithView:v39 margin:0.0];

  v40 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  v41 = [v40 topAnchor];
  v42 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43 constant:20.0];
  [v44 setActive:1];

  v45 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  v46 = [v45 bottomAnchor];
  v47 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:*MEMORY[0x277D12778]];
  [v49 setActive:1];
}

- (void)skipButtonTapped:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_SKIP_DESCRIPTION");
  v7 = [v4 alertControllerWithTitle:0 message:v6 preferredStyle:0];

  v8 = MEMORY[0x277D750F8];
  v9 = HRUIECGLocalizedString(@"ECG_ONBOARDING_SKIP_RECORDING");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HROnboardingElectrocardiogramTakeRecordingViewController_skipButtonTapped___block_invoke;
  v16[3] = &unk_2796FBB48;
  v16[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v16];

  v11 = MEMORY[0x277D750F8];
  v12 = HRHeartRhythmUIFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"ONBOARDING_CANCEL" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  v14 = [v11 actionWithTitle:v13 style:1 handler:0];

  [v7 addAction:v10];
  [v7 addAction:v14];
  v15 = [v7 popoverPresentationController];
  [v15 setSourceItem:v5];

  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)heartRhythmAvailabilityDidUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    *buf = 138412290;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_2521E7000, v4, OS_LOG_TYPE_INFO, "[%@]: Cinnamon availability update notification received.", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HROnboardingElectrocardiogramTakeRecordingViewController_heartRhythmAvailabilityDidUpdate__block_invoke;
  block[3] = &unk_2796FB778;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __92__HROnboardingElectrocardiogramTakeRecordingViewController_heartRhythmAvailabilityDidUpdate__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v2 = [*(a1 + 32) electrocardiogramFirstRecordingCompleted];
  if (v2 != [v3 hk_electrocardiogramFirstRecordingCompleted])
  {
    [*(a1 + 32) setElectrocardiogramFirstRecordingCompleted:{objc_msgSend(v3, "hk_electrocardiogramFirstRecordingCompleted")}];
    if ([*(a1 + 32) electrocardiogramFirstRecordingCompleted])
    {
      [*(a1 + 32) _stepForwardWithElectrocardiogramRecorded:1];
    }
  }
}

- (id)_titleForOnboarding:(BOOL)a3
{
  if (a3)
  {
    v3 = @"ECG_ONBOARDING_5_TITLE";
  }

  else
  {
    v3 = @"ECG_EDUCATION_5_TITLE";
  }

  v4 = HRUIECGLocalizedString(v3);

  return v4;
}

- (CGSize)_takeRecordingImageDimension
{
  v2 = 58.0;
  v3 = 58.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_stepForwardWithElectrocardiogramRecorded:(BOOL)a3
{
  v3 = a3;
  if (![(HROnboardingElectrocardiogramTakeRecordingViewController *)self didStepForward])
  {
    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setDidStepForward:1];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v6 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    v7 = [v6 userInfo];
    [v7 setObject:v5 forKeyedSubscript:@"HROnboardingElectrocardiogramDidCompleteRecordingKey"];

    v8 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    [v8 stepForward];
  }
}

- (void)_setUpElectrocardiogramQuery
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HROnboardingElectrocardiogramStartDateKey"];

  v6 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v5 endDate:0 options:0];
  objc_initWeak(&location, self);
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v5;
    v9 = v8;
    _os_log_impl(&dword_2521E7000, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Querying for new electrocardiograms during on-boarding after %@", buf, 0x16u);
  }

  v10 = objc_alloc(MEMORY[0x277CCCFF0]);
  v11 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke;
  v19[3] = &unk_2796FB7C8;
  v19[4] = self;
  objc_copyWeak(&v20, &location);
  v12 = [v10 initWithType:v11 predicate:v6 anchor:0 limit:0 resultsHandler:v19];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setElectrocardiogramQuery:v12];

  v17 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, &location);
  v13 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery:v17];
  [v13 setUpdateHandler:&v17];

  v14 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
  v15 = [v14 healthStore];
  v16 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery];
  [v15 executeQuery:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke_2;
  v13[3] = &unk_2796FB7A0;
  v10 = *(a1 + 32);
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  objc_copyWeak(&v17, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v13);
  objc_destroyWeak(&v17);
}

void __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke_2(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_cold_1(a1, v2);
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
      v4 = *(a1 + 48);
      v23[0] = v3;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v6 = [v4 sortedArrayUsingDescriptors:v5];

      v7 = [v6 firstObject];

      if (v7)
      {
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained((a1 + 56));
          v10 = objc_opt_class();
          v11 = [MEMORY[0x277CCDD30] sharedBehavior];
          v12 = [v11 showSensitiveLogItems];
          v13 = [v6 firstObject];
          v14 = v13;
          v15 = v13;
          if ((v12 & 1) == 0)
          {
            v15 = [v13 UUID];
          }

          v19 = 138412546;
          v20 = v10;
          v21 = 2112;
          v22 = v15;
          _os_log_impl(&dword_2521E7000, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Initial electrocardiogram retrieved during on-boarding: %@", &v19, 0x16u);
          if ((v12 & 1) == 0)
          {
          }
        }

        v16 = objc_loadWeakRetained((a1 + 56));
        [v16 _stepForwardWithElectrocardiogramRecorded:1];
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v3 = v17;
      v19 = 138412290;
      v20 = objc_opt_class();
      v18 = v20;
      _os_log_impl(&dword_2521E7000, v3, OS_LOG_TYPE_DEFAULT, "[%@]: No initial electrocardiograms retrieved during on-boarding", &v19, 0xCu);
    }
  }
}

void __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke_374(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke_2_375;
  block[3] = &unk_2796FB7F0;
  v13 = v9;
  v10 = v9;
  objc_copyWeak(&v15, (a1 + 32));
  v14 = v8;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v15);
}

void __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke_2_375(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_348_cold_1(a1, v2);
    }
  }

  else if (*(a1 + 40))
  {
    v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
    v4 = *(a1 + 40);
    v21[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v6 = [v4 sortedArrayUsingDescriptors:v5];

    v7 = [v6 firstObject];

    if (v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v10 = objc_opt_class();
        v11 = [MEMORY[0x277CCDD30] sharedBehavior];
        v12 = [v11 showSensitiveLogItems];
        v13 = [v6 firstObject];
        v14 = v13;
        v15 = v13;
        if ((v12 & 1) == 0)
        {
          v15 = [v13 UUID];
        }

        v17 = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_2521E7000, v8, OS_LOG_TYPE_DEFAULT, "[%@]: New electrocardiogram received during on-boarding: %@", &v17, 0x16u);
        if ((v12 & 1) == 0)
        {
        }
      }

      v16 = objc_loadWeakRetained((a1 + 48));
      [v16 _stepForwardWithElectrocardiogramRecorded:1];
    }
  }
}

- (void)_stopElectrocardiogramQuery
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery];

  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *v10 = 138412290;
      *&v10[4] = objc_opt_class();
      v6 = *&v10[4];
      _os_log_impl(&dword_2521E7000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Stopping query for new electrocardiograms", v10, 0xCu);
    }

    v7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    v8 = [v7 healthStore];
    v9 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery];
    [v8 stopQuery:v9];

    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setElectrocardiogramQuery:0];
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:32770];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (id)_recordingStepFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _bodyFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __96__HROnboardingElectrocardiogramTakeRecordingViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __96__HROnboardingElectrocardiogramTakeRecordingViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

@end