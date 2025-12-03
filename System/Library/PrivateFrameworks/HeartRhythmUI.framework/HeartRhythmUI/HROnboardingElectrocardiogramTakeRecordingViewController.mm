@interface HROnboardingElectrocardiogramTakeRecordingViewController
- (CGSize)_takeRecordingImageDimension;
- (id)_bodyFont;
- (id)_recordingStepFont;
- (id)_titleFont;
- (id)_titleForOnboarding:(BOOL)onboarding;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (void)_setUpElectrocardiogramQuery;
- (void)_stepForwardWithElectrocardiogramRecorded:(BOOL)recorded;
- (void)_stopElectrocardiogramQuery;
- (void)heartRhythmAvailabilityDidUpdate;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)skipButtonTapped:(id)tapped;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HROnboardingElectrocardiogramTakeRecordingViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v10.receiver = self;
  v10.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  v5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v10 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
  v6 = v5;
  if (v5)
  {
    v7 = !onboardingCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v5 setRightButtonType:4];
    navigationItem = [v6 navigationItem];
    [navigationItem setHidesBackButton:1];

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
    delegate = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    healthStore = [delegate healthStore];
    v6 = [v3 initWithHealthStore:healthStore];
    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setAvailability:v6];

    availability = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self availability];
    [availability addHeartRhythmAvailabilityObserver:self];

    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _setUpElectrocardiogramQuery];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v5 viewDidDisappear:disappear];
  if ([(HROnboardingElectrocardiogramTakeRecordingViewController *)self isOnboarding])
  {
    availability = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self availability];
    [availability removeHeartRhythmAvailabilityObserver:self];

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
  contentView = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  assetView = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  [contentView addSubview:assetView];

  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setTitleLabel:v6];

  delegate = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
  v8 = -[HROnboardingElectrocardiogramTakeRecordingViewController _titleForOnboarding:](self, "_titleForOnboarding:", [delegate firstTimeOnboarding]);
  titleLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel setText:v8];

  titleLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  _titleFont = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _titleFont];
  titleLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel3 setFont:_titleFont];

  titleLabel4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel4 setAdjustsFontForContentSizeCategory:1];

  titleLabel5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel6 setNumberOfLines:0];

  identifierBundle = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v17 = [identifierBundle stringByAppendingString:@".Title"];
  titleLabel7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [titleLabel7 setAccessibilityIdentifier:v17];

  contentView2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  titleLabel8 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [contentView2 addSubview:titleLabel8];

  v21 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setBodyLabel:v21];

  v22 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_BODY");
  bodyLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel setText:v22];

  bodyLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel2 setTextAlignment:4];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel3 setTextColor:secondaryLabelColor];

  _bodyFont = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _bodyFont];
  bodyLabel4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel4 setFont:_bodyFont];

  bodyLabel5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel5 setAdjustsFontForContentSizeCategory:1];

  bodyLabel6 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel7 setNumberOfLines:0];

  identifierBundle2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v33 = [identifierBundle2 stringByAppendingString:@".Description"];
  bodyLabel8 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [bodyLabel8 setAccessibilityIdentifier:v33];

  contentView3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  bodyLabel9 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  [contentView3 addSubview:bodyLabel9];

  v37 = [HRImageLabel alloc];
  hrui_ECGAppIconImage = [MEMORY[0x277D755B8] hrui_ECGAppIconImage];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _takeRecordingImageDimension];
  v40 = v39;
  v42 = v41;
  v43 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_LIST_ITEM_STEP-1");
  v44 = [(HRImageLabel *)v37 initWithImage:hrui_ECGAppIconImage size:v43 text:v40, v42];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setRecordingStep1ImageLabel:v44];

  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _takeRecordingImageDimension];
  v46 = v45 * 0.5;
  recordingStep1ImageLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  imageView = [recordingStep1ImageLabel imageView];
  [imageView hrui_maskAllCornersWithRadius:v46];

  recordingStep1ImageLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [recordingStep1ImageLabel2 setBoldText:0];

  recordingStep1ImageLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [recordingStep1ImageLabel3 setImageAlignment:0];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  cGColor = [secondaryLabelColor2 CGColor];
  recordingStep1ImageLabel4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  imageView2 = [recordingStep1ImageLabel4 imageView];
  layer = [imageView2 layer];
  [layer setBorderColor:cGColor];

  HKUIOnePixel();
  v57 = v56;
  recordingStep1ImageLabel5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  imageView3 = [recordingStep1ImageLabel5 imageView];
  layer2 = [imageView3 layer];
  [layer2 setBorderWidth:v57];

  recordingStep1ImageLabel6 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [recordingStep1ImageLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  identifierBundle3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v63 = [identifierBundle3 stringByAppendingString:@".StepOne"];
  recordingStep1ImageLabel7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  textLabel = [recordingStep1ImageLabel7 textLabel];
  [textLabel setAccessibilityIdentifier:v63];

  contentView4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  recordingStep1ImageLabel8 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  [contentView4 addSubview:recordingStep1ImageLabel8];

  v68 = [HRImageLabel alloc];
  hrui_fingerCrownImage = [MEMORY[0x277D755B8] hrui_fingerCrownImage];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _takeRecordingImageDimension];
  v71 = v70;
  v73 = v72;
  v74 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_LIST_ITEM_STEP-2");
  v75 = [(HRImageLabel *)v68 initWithImage:hrui_fingerCrownImage size:v74 text:v71, v73];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setRecordingStep2ImageLabel:v75];

  recordingStep2ImageLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [recordingStep2ImageLabel setBoldText:0];

  recordingStep2ImageLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [recordingStep2ImageLabel2 setImageAlignment:0];

  recordingStep2ImageLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [recordingStep2ImageLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  identifierBundle4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v80 = [identifierBundle4 stringByAppendingString:@".StepTwo"];
  recordingStep2ImageLabel4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  textLabel2 = [recordingStep2ImageLabel4 textLabel];
  [textLabel2 setAccessibilityIdentifier:v80];

  contentView5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  recordingStep2ImageLabel5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  [contentView5 addSubview:recordingStep2ImageLabel5];

  v85 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setWristSettingsLabel:v85];

  v86 = MEMORY[0x277CCAB48];
  v87 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_FOOTER");
  v88 = *MEMORY[0x277D769D0];
  secondaryLabelColor3 = [MEMORY[0x277D75348] secondaryLabelColor];
  v90 = HRUIECGLocalizedString(@"ECG_ONBOARDING_5_BOLD_FOOTER");
  v91 = [v86 hrui_attributedStringForText:v87 style:v88 color:secondaryLabelColor3 boldText:v90];
  wristSettingsLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [wristSettingsLabel setAttributedText:v91];

  wristSettingsLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [wristSettingsLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  wristSettingsLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [wristSettingsLabel3 setNumberOfLines:0];

  identifierBundle5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self identifierBundle];
  v96 = [identifierBundle5 stringByAppendingString:@".Footer"];
  wristSettingsLabel4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [wristSettingsLabel4 setAccessibilityIdentifier:v96];

  contentView6 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  wristSettingsLabel5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  [contentView6 addSubview:wristSettingsLabel5];
}

- (void)setUpConstraints
{
  v50.receiver = self;
  v50.super_class = HROnboardingElectrocardiogramTakeRecordingViewController;
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)&v50 setUpConstraints];
  assetView = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  contentView = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  [assetView hk_alignHorizontalConstraintsWithView:contentView margin:0.0];

  assetView2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  topAnchor = [assetView2 topAnchor];
  contentView2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  titleLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  contentView3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView3 insets:?];

  titleLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  topAnchor3 = [titleLabel2 topAnchor];
  assetView3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self assetView];
  bottomAnchor = [assetView3 bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:29.0];
  [v16 setActive:1];

  bodyLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  titleLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

  bodyLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  topAnchor4 = [bodyLabel2 topAnchor];
  titleLabel4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  bottomAnchor2 = [titleLabel4 bottomAnchor];
  v23 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:15.0];
  [v23 setActive:1];

  recordingStep1ImageLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  titleLabel5 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [recordingStep1ImageLabel hk_alignHorizontalConstraintsWithView:titleLabel5 margin:0.0];

  recordingStep1ImageLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  topAnchor5 = [recordingStep1ImageLabel2 topAnchor];
  bodyLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self bodyLabel];
  bottomAnchor3 = [bodyLabel3 bottomAnchor];
  v30 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
  [v30 setActive:1];

  recordingStep2ImageLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  titleLabel6 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [recordingStep2ImageLabel hk_alignHorizontalConstraintsWithView:titleLabel6 margin:0.0];

  recordingStep2ImageLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  topAnchor6 = [recordingStep2ImageLabel2 topAnchor];
  recordingStep1ImageLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep1ImageLabel];
  bottomAnchor4 = [recordingStep1ImageLabel3 bottomAnchor];
  v37 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:20.0];
  [v37 setActive:1];

  wristSettingsLabel = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  titleLabel7 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self titleLabel];
  [wristSettingsLabel hk_alignHorizontalConstraintsWithView:titleLabel7 margin:0.0];

  wristSettingsLabel2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  topAnchor7 = [wristSettingsLabel2 topAnchor];
  recordingStep2ImageLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self recordingStep2ImageLabel];
  bottomAnchor5 = [recordingStep2ImageLabel3 bottomAnchor];
  v44 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:20.0];
  [v44 setActive:1];

  contentView4 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self contentView];
  bottomAnchor6 = [contentView4 bottomAnchor];
  wristSettingsLabel3 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self wristSettingsLabel];
  bottomAnchor7 = [wristSettingsLabel3 bottomAnchor];
  v49 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:*MEMORY[0x277D12778]];
  [v49 setActive:1];
}

- (void)skipButtonTapped:(id)tapped
{
  v4 = MEMORY[0x277D75110];
  tappedCopy = tapped;
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
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceItem:tappedCopy];

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

- (id)_titleForOnboarding:(BOOL)onboarding
{
  if (onboarding)
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

- (void)_stepForwardWithElectrocardiogramRecorded:(BOOL)recorded
{
  recordedCopy = recorded;
  if (![(HROnboardingElectrocardiogramTakeRecordingViewController *)self didStepForward])
  {
    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setDidStepForward:1];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:recordedCopy];
    delegate = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    userInfo = [delegate userInfo];
    [userInfo setObject:v5 forKeyedSubscript:@"HROnboardingElectrocardiogramDidCompleteRecordingKey"];

    delegate2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    [delegate2 stepForward];
  }
}

- (void)_setUpElectrocardiogramQuery
{
  v26 = *MEMORY[0x277D85DE8];
  delegate = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
  userInfo = [delegate userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HROnboardingElectrocardiogramStartDateKey"];

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
  electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HROnboardingElectrocardiogramTakeRecordingViewController__setUpElectrocardiogramQuery__block_invoke;
  v19[3] = &unk_2796FB7C8;
  v19[4] = self;
  objc_copyWeak(&v20, &location);
  v12 = [v10 initWithType:electrocardiogramType predicate:v6 anchor:0 limit:0 resultsHandler:v19];
  [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setElectrocardiogramQuery:v12];

  v17 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, &location);
  v13 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery:v17];
  [v13 setUpdateHandler:&v17];

  delegate2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
  healthStore = [delegate2 healthStore];
  electrocardiogramQuery = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery];
  [healthStore executeQuery:electrocardiogramQuery];

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
  electrocardiogramQuery = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery];

  if (electrocardiogramQuery)
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

    delegate = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self delegate];
    healthStore = [delegate healthStore];
    electrocardiogramQuery2 = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self electrocardiogramQuery];
    [healthStore stopQuery:electrocardiogramQuery2];

    [(HROnboardingElectrocardiogramTakeRecordingViewController *)self setElectrocardiogramQuery:0];
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:32770];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (id)_recordingStepFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self _bodyFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_bodyFontTextStyle symbolicTraits:2];

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

  navigationItem = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

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
  navigationItem = [(HROnboardingElectrocardiogramTakeRecordingViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end