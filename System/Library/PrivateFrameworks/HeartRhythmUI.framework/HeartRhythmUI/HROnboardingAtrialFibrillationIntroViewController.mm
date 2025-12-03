@interface HROnboardingAtrialFibrillationIntroViewController
- (HKAnalyticsEventSubmissionManager)analyticsEventSubmissionManager;
- (double)_assetImageBottomToTitleFirstBaseline;
- (double)_titleLastBaselineToBodyFirstBaseline;
- (double)_viewLastBaselineToContinueButton;
- (id)_bodyFont;
- (id)_createHeroView;
- (id)_footnoteFont;
- (id)_titleFont;
- (id)axidForElementWithString:(id)string;
- (id)bodyString;
- (id)buttonTitleString;
- (id)featureDisabledBodyString;
- (id)footnoteString;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (id)learnMoreString;
- (id)locationFeatureAlertAckButtonString;
- (id)locationFeatureIneligiblePromptBodyString;
- (id)locationNotFoundPromptMessageString;
- (id)locationNotFoundPromptTitleString;
- (id)seedExpiredBodyString;
- (id)titleString;
- (id)watchOSVersionTooLowBodyString;
- (void)_isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch:(id)watch;
- (void)_presentFeatureAlertWithMessage:(id)message;
- (void)_presentLocationNotFoundAlert;
- (void)_setUpLearnMoreConstraints;
- (void)_setUpLearnMoreViews;
- (void)_setUpStackedButtonView;
- (void)_submitOnboardingUIErrorEventWithCountryCode:(id)code onboardingEligibility:(id)eligibility;
- (void)_updateViewsForContentExpansionState:(BOOL)state;
- (void)presentLearnMoreAlertWithFeatureDisabledMessage;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
@end

@implementation HROnboardingAtrialFibrillationIntroViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = HROnboardingAtrialFibrillationIntroViewController;
  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)&v9 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
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
    [v5 setRightButtonType:2];
  }

  return v6;
}

- (void)setUpUI
{
  v32.receiver = self;
  v32.super_class = HROnboardingAtrialFibrillationIntroViewController;
  [(HROnboardingAtrialFibrillationIntroViewController *)&v32 setUpUI];
  _createHeroView = [(HROnboardingAtrialFibrillationIntroViewController *)self _createHeroView];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setHeroView:_createHeroView];

  heroView = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  [heroView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  heroView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  [contentView addSubview:heroView2];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationIntroViewController *)self setTitleLabel:v7];

  titleString = [(HROnboardingAtrialFibrillationIntroViewController *)self titleString];
  titleLabel = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel setText:titleString];

  titleLabel2 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  _titleFont = [(HROnboardingAtrialFibrillationIntroViewController *)self _titleFont];
  titleLabel3 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel3 setFont:_titleFont];

  titleLabel4 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  v15 = [(HROnboardingAtrialFibrillationIntroViewController *)self axidForElementWithString:@"PageTitle"];
  titleLabel6 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel6 setAccessibilityIdentifier:v15];

  contentView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  titleLabel7 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [contentView2 addSubview:titleLabel7];

  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationIntroViewController *)self setBodyLabel:v19];

  bodyString = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyString];
  bodyLabel = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel setText:bodyString];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel2 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel2 setTextColor:secondaryLabelColor];

  _bodyFont = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
  bodyLabel3 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel3 setFont:_bodyFont];

  bodyLabel4 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel5 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel5 setNumberOfLines:0];

  v28 = [(HROnboardingAtrialFibrillationIntroViewController *)self axidForElementWithString:@"Description"];
  bodyLabel6 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel6 setAccessibilityIdentifier:v28];

  contentView3 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  bodyLabel7 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [contentView3 addSubview:bodyLabel7];

  [(HROnboardingAtrialFibrillationIntroViewController *)self _setUpLearnMoreViews];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _setUpStackedButtonView];
}

- (void)setUpConstraints
{
  v33.receiver = self;
  v33.super_class = HROnboardingAtrialFibrillationIntroViewController;
  [(HROnboardingAtrialFibrillationIntroViewController *)&v33 setUpConstraints];
  heroView = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  contentView = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  [heroView hk_alignHorizontalConstraintsWithView:contentView margin:0.0];

  heroView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  topAnchor = [heroView2 topAnchor];
  contentView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v9 setActive:1];

  titleLabel = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  contentView3 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView3 insets:?];

  titleLabel2 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  firstBaselineAnchor = [titleLabel2 firstBaselineAnchor];
  heroView3 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  bottomAnchor = [heroView3 bottomAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _assetImageBottomToTitleFirstBaseline];
  v16 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [v16 setActive:1];

  bodyLabel = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  titleLabel3 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

  bodyLabel2 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  firstBaselineAnchor2 = [bodyLabel2 firstBaselineAnchor];
  titleLabel4 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v23 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v23 setActive:1];

  stackedButtonView = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  titleLabel5 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [stackedButtonView hk_alignHorizontalConstraintsWithView:titleLabel5 margin:0.0];

  stackedButtonView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  contentView4 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  [stackedButtonView2 alignBlurViewHorizontalConstraintsWithView:contentView4];

  [(HROnboardingAtrialFibrillationIntroViewController *)self _setUpLearnMoreConstraints];
  contentView5 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  stackedButtonView3 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  bottomAnchor3 = [stackedButtonView3 bottomAnchor];
  v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v32 setActive:1];
}

- (HKAnalyticsEventSubmissionManager)analyticsEventSubmissionManager
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  delegate = [(HROnboardingAtrialFibrillationIntroViewController *)self delegate];
  healthStore = [delegate healthStore];

  analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  if (analyticsEventSubmissionManager)
  {
    v6 = 1;
  }

  else
  {
    v6 = healthStore == 0;
  }

  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = [v7 initWithLoggingCategory:*MEMORY[0x277CCC2D8] healthDataSource:healthStore];
    v9 = self->_analyticsEventSubmissionManager;
    self->_analyticsEventSubmissionManager = v8;

    analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  }

  v10 = analyticsEventSubmissionManager;

  return analyticsEventSubmissionManager;
}

- (void)_submitOnboardingUIErrorEventWithCountryCode:(id)code onboardingEligibility:(id)eligibility
{
  codeCopy = code;
  eligibilityCopy = eligibility;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__HROnboardingAtrialFibrillationIntroViewController__submitOnboardingUIErrorEventWithCountryCode_onboardingEligibility___block_invoke;
  block[3] = &unk_2796FB878;
  v11 = codeCopy;
  v12 = eligibilityCopy;
  selfCopy = self;
  v8 = eligibilityCopy;
  v9 = codeCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __120__HROnboardingAtrialFibrillationIntroViewController__submitOnboardingUIErrorEventWithCountryCode_onboardingEligibility___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D129B0]);
  v3 = *MEMORY[0x277CCC070];
  v4 = [*(a1 + 32) ISOCode];
  v5 = [v2 initWithFeatureIdentifier:v3 featureVersion:@"1" countryCode:v4 step:@"Intro" onboardingEligibility:*(a1 + 40)];

  v7 = *(a1 + 48);
  v6 = a1 + 48;
  v8 = [v7 analyticsEventSubmissionManager];
  v12 = 0;
  v9 = [v8 submitEvent:v5 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __120__HROnboardingAtrialFibrillationIntroViewController__submitOnboardingUIErrorEventWithCountryCode_onboardingEligibility___block_invoke_cold_1(v6, v11, v10);
    }
  }
}

- (id)_createHeroView
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = objc_alloc_init(HRSimulatedAtrialFibrillationNotificationView);
  [v3 addSubview:v4];
  [(HRSimulatedAtrialFibrillationNotificationView *)v4 hk_alignVerticalConstraintsWithView:v3 margin:0.0];
  heightAnchor = [(HRSimulatedAtrialFibrillationNotificationView *)v4 heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:210.0];
  [v6 setActive:1];

  centerXAnchor = [(HRSimulatedAtrialFibrillationNotificationView *)v4 centerXAnchor];
  centerXAnchor2 = [v3 centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v9 setActive:1];

  return v3;
}

- (void)_setUpLearnMoreViews
{
  learnMoreString = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreString];

  if (learnMoreString)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreButton:v4];

    learnMoreButton = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    learnMoreString2 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreString];
    [learnMoreButton setTitle:learnMoreString2 forState:0];

    _bodyFont = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
    learnMoreButton2 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    titleLabel = [learnMoreButton2 titleLabel];
    [titleLabel setFont:_bodyFont];

    learnMoreButton3 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [learnMoreButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    learnMoreButton4 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    titleLabel2 = [learnMoreButton4 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    learnMoreButton5 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [learnMoreButton5 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:64];

    v14 = [(HROnboardingAtrialFibrillationIntroViewController *)self axidForElementWithString:@"AFibLearnMoreLink"];
    learnMoreButton6 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [learnMoreButton6 setAccessibilityIdentifier:v14];

    contentView = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
    learnMoreButton7 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [contentView addSubview:learnMoreButton7];

    learnMoreButton8 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    LODWORD(v19) = 1148846080;
    [learnMoreButton8 setContentHuggingPriority:0 forAxis:v19];

    _createLearnMoreExpandedView = [(HROnboardingAtrialFibrillationIntroViewController *)self _createLearnMoreExpandedView];
    [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreContentView:_createLearnMoreExpandedView];

    contentView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
    learnMoreContentView = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
    [contentView2 addSubview:learnMoreContentView];
  }
}

- (void)_setUpLearnMoreConstraints
{
  v46[4] = *MEMORY[0x277D85DE8];
  learnMoreButton = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  leadingAnchor = [learnMoreButton leadingAnchor];
  titleLabel = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  leadingAnchor2 = [titleLabel leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v35;
  learnMoreButton2 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  trailingAnchor = [learnMoreButton2 trailingAnchor];
  titleLabel2 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  trailingAnchor2 = [titleLabel2 trailingAnchor];
  v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v46[1] = v25;
  learnMoreButton3 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  firstBaselineAnchor = [learnMoreButton3 firstBaselineAnchor];
  bodyLabel = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  bottomAnchor = [bodyLabel bottomAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v5 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  v46[2] = v5;
  stackedButtonView = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  topAnchor = [stackedButtonView topAnchor];
  learnMoreButton4 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  lastBaselineAnchor = [learnMoreButton4 lastBaselineAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _viewLastBaselineToContinueButton];
  v10 = [topAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  v46[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreCollapsedConstraints:v11];

  learnMoreContentView = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  leadingAnchor3 = [learnMoreContentView leadingAnchor];
  titleLabel3 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  leadingAnchor4 = [titleLabel3 leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v45[0] = v36;
  learnMoreContentView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  trailingAnchor3 = [learnMoreContentView2 trailingAnchor];
  titleLabel4 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  trailingAnchor4 = [titleLabel4 trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v45[1] = v26;
  learnMoreContentView3 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  topAnchor2 = [learnMoreContentView3 topAnchor];
  bodyLabel2 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  bottomAnchor2 = [bodyLabel2 bottomAnchor];
  v14 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  v45[2] = v14;
  stackedButtonView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  topAnchor3 = [stackedButtonView2 topAnchor];
  learnMoreContentView4 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  bottomAnchor3 = [learnMoreContentView4 bottomAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _viewLastBaselineToContinueButton];
  v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:?];
  v45[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreExpandedConstraints:v20];

  [(HROnboardingAtrialFibrillationIntroViewController *)self _updateViewsForContentExpansionState:0];
}

- (void)_setUpStackedButtonView
{
  v11[1] = *MEMORY[0x277D85DE8];
  buttonTitleString = [(HROnboardingAtrialFibrillationIntroViewController *)self buttonTitleString];
  v11[0] = buttonTitleString;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  footnoteString = [(HROnboardingAtrialFibrillationIntroViewController *)self footnoteString];
  v6 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v4 footerText:footnoteString boldFooterText:0 footerTextAlignment:4 delegate:self];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setStackedButtonView:v6];

  stackedButtonView = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  [stackedButtonView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackedButtonView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  [stackedButtonView2 setFixedBottomButtonSpacing:1];

  contentView = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  stackedButtonView3 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  [contentView addSubview:stackedButtonView3];
}

- (void)_updateViewsForContentExpansionState:(BOOL)state
{
  stateCopy = state;
  learnMoreButton = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  v6 = learnMoreButton;
  if (stateCopy)
  {
    [learnMoreButton setHidden:1];

    learnMoreContentView = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
    [learnMoreContentView setHidden:0];

    v8 = MEMORY[0x277CCAAD0];
    learnMoreCollapsedConstraints = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreCollapsedConstraints];
    [v8 deactivateConstraints:learnMoreCollapsedConstraints];

    v10 = MEMORY[0x277CCAAD0];
    [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreExpandedConstraints];
  }

  else
  {
    [learnMoreButton setHidden:0];

    learnMoreContentView2 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
    [learnMoreContentView2 setHidden:1];

    v12 = MEMORY[0x277CCAAD0];
    learnMoreExpandedConstraints = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreExpandedConstraints];
    [v12 deactivateConstraints:learnMoreExpandedConstraints];

    v10 = MEMORY[0x277CCAAD0];
    [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreCollapsedConstraints];
  }
  v14 = ;
  [v10 activateConstraints:?];
}

- (void)_presentFeatureAlertWithMessage:(id)message
{
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:message preferredStyle:1];
  v4 = MEMORY[0x277D750F8];
  locationFeatureAlertAckButtonString = [(HROnboardingAtrialFibrillationIntroViewController *)self locationFeatureAlertAckButtonString];
  v6 = [v4 actionWithTitle:locationFeatureAlertAckButtonString style:1 handler:0];
  [v7 addAction:v6];

  [(HROnboardingAtrialFibrillationIntroViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index)
  {
    v15 = v4;
    v16 = v5;
    buttons = [view buttons];
    v9 = [buttons objectAtIndexedSubscript:0];

    [v9 setEnabled:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke;
    v11[3] = &unk_2796FB8C8;
    v12 = v9;
    selfCopy = self;
    v14 = a2;
    v10 = v9;
    [(HROnboardingAtrialFibrillationIntroViewController *)self _isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch:v11];
  }
}

void __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2;
  v12[3] = &unk_2796FB8A0;
  v13 = *(a1 + 32);
  v14 = v7;
  v9 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v8;
  v17 = a3;
  v18 = v9;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEnabled:1];
  v2 = *(a1 + 64);
  if (!v2)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [*(a1 + 48) delegate];
      v7 = [v6 userInfo];
      [v7 setObject:v5 forKeyedSubscript:@"HROnboardingAtrialFibrillationCountryCodeKey"];

      v15 = [*(a1 + 48) delegate];
      [v15 stepForward];
LABEL_18:

      return;
    }

    goto LABEL_21;
  }

  if (v2)
  {
    v8 = *(a1 + 48);

    [v8 _presentLocationNotFoundAlert];
  }

  else
  {
    if ((v2 & 2) != 0 || (v2 & 4) != 0 || (v2 & 8) != 0 || (v2 & 0x20) != 0 || (v2 & 0x10) != 0)
    {
      v3 = *(a1 + 48);
      v4 = [v3 locationFeatureIneligiblePromptBodyString];
      goto LABEL_17;
    }

    if ((v2 & 0x40) == 0)
    {
      if ((v2 & 0x80) != 0)
      {
        v3 = *(a1 + 48);
        v4 = [v3 seedExpiredBodyString];
LABEL_17:
        v15 = v4;
        [v3 presentAlertWithMessage:v4];
        goto LABEL_18;
      }

LABEL_21:
      if ([*(a1 + 56) hk_isHealthKitErrorWithCode:111])
      {
        [*(a1 + 48) presentLearnMoreAlertWithFeatureDisabledMessage];
        goto LABEL_29;
      }

      if ([*(a1 + 56) hk_isHealthKitErrorWithCode:109])
      {
        v9 = *(a1 + 48);
      }

      else
      {
        v10 = [*(a1 + 56) hk_isHealthKitErrorWithCode:113];
        v11 = *(a1 + 48);
        if (v10)
        {
          v12 = [*(a1 + 48) watchOSVersionTooLowBodyString];
          [v11 presentAlertWithMessage:v12];

          goto LABEL_29;
        }

        v9 = *(a1 + 48);
      }

      [v9 _presentLocationNotFoundAlert];
LABEL_29:
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2_cold_1(a1, v13, (a1 + 56));
      }

      return;
    }

    v14 = *(a1 + 48);

    [v14 presentLearnMoreAlertWithFeatureDisabledMessage];
  }
}

- (void)_isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch:(id)watch
{
  watchCopy = watch;
  v6 = HKPreferredRegulatoryDomainProvider();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __134__HROnboardingAtrialFibrillationIntroViewController__isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch___block_invoke;
  v8[3] = &unk_2796FB8F0;
  v8[4] = self;
  v9 = watchCopy;
  v10 = a2;
  v7 = watchCopy;
  [v6 fetchMobileCountryCodeFromCellularWithCompletion:v8];
}

void __134__HROnboardingAtrialFibrillationIntroViewController__isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc(MEMORY[0x277CCD438]);
    v9 = *MEMORY[0x277CCC070];
    v10 = [*(a1 + 32) delegate];
    v11 = [v10 healthStore];
    v12 = [v8 initWithFeatureIdentifier:v9 healthStore:v11];

    v13 = [v5 ISOCode];
    v29 = 0;
    v14 = [v12 onboardingEligibilityForCountryCode:v13 error:&v29];
    v15 = v29;

    [*(a1 + 32) _submitOnboardingUIErrorEventWithCountryCode:v5 onboardingEligibility:v14];
    if (v14)
    {
      if ([v14 isEligible])
      {
        (*(*(a1 + 40) + 16))(*(a1 + 40), v5, [v14 ineligibilityReasons], 0);
      }

      else
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          v24 = *(a1 + 32);
          v25 = *(a1 + 48);
          v26 = v18;
          v27 = NSStringFromSelector(v25);
          v28 = [v14 ineligibilityReasonsDescription];
          *buf = 138543874;
          v31 = v24;
          v32 = 2114;
          v33 = v27;
          v34 = 2114;
          v35 = v28;
          _os_log_error_impl(&dword_2521E7000, v26, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Not eligible for onboarding: %{public}@", buf, 0x20u);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [v14 ineligibilityReasons], 0);
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 48);
        v22 = v16;
        v23 = NSStringFromSelector(v21);
        *buf = 138543874;
        v31 = v20;
        v32 = 2114;
        v33 = v23;
        v34 = 2114;
        v35 = v15;
        _os_log_error_impl(&dword_2521E7000, v22, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Could not determine onboarding eligibility: %{public}@", buf, 0x20u);
      }

      v17 = *(a1 + 40);
      if (v15)
      {
        (*(v17 + 16))(v17, 0, 0, v15);
      }

      else
      {
        v19 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature eligibility could not be determined"];
        (*(v17 + 16))(v17, 0, 0, v19);
      }
    }
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Unable to determine location"];
    }

    [*(a1 + 32) _submitOnboardingUIErrorEventWithCountryCode:0 onboardingEligibility:0];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)presentLearnMoreAlertWithFeatureDisabledMessage
{
  featureDisabledBodyString = [(HROnboardingAtrialFibrillationIntroViewController *)self featureDisabledBodyString];
  [(HROnboardingAtrialFibrillationIntroViewController *)self presentLearnMoreAlertWithMessage:featureDisabledBodyString learnMoreTapped:&__block_literal_global_1];
}

void __100__HROnboardingAtrialFibrillationIntroViewController_presentLearnMoreAlertWithFeatureDisabledMessage__block_invoke()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CCB818]];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openURL:v1 withOptions:0];
}

- (void)_presentLocationNotFoundAlert
{
  locationNotFoundPromptMessageString = [(HROnboardingAtrialFibrillationIntroViewController *)self locationNotFoundPromptMessageString];
  locationNotFoundPromptTitleString = [(HROnboardingAtrialFibrillationIntroViewController *)self locationNotFoundPromptTitleString];
  [(HROnboardingAtrialFibrillationIntroViewController *)self presentAlertWithMessage:locationNotFoundPromptMessageString title:locationNotFoundPromptTitleString];
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingAtrialFibrillationIntroViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (double)_assetImageBottomToTitleFirstBaseline
{
  _titleFont = [(HROnboardingAtrialFibrillationIntroViewController *)self _titleFont];
  [_titleFont _scaledValueForValue:54.0];
  v4 = v3;

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (double)_titleLastBaselineToBodyFirstBaseline
{
  _bodyFont = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  _footnoteTextStyle = [(HROnboardingAtrialFibrillationIntroViewController *)self _footnoteTextStyle];
  v4 = [v2 preferredFontForTextStyle:_footnoteTextStyle];

  return v4;
}

- (double)_viewLastBaselineToContinueButton
{
  _bodyFont = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:6.0];
  v4 = v3;

  return v4;
}

- (id)titleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)bodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)learnMoreString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_LEARN_MORE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)footnoteString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_LOCATION_FOOTNOTE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)buttonTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  return v3;
}

- (id)locationNotFoundPromptTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_ALERT_LOCATION_UNAVAILABLE_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)locationNotFoundPromptMessageString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_ALERT_LOCATION_UNAVAILABLE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)locationFeatureAlertAckButtonString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ONBOARDING_OK" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  return v3;
}

- (id)locationFeatureIneligiblePromptBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_LOCATION_INELIGIBLE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)featureDisabledBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_FEATURE_DISABLED_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)watchOSVersionTooLowBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_OS_VERSION_TOO_LOW" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)seedExpiredBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SEED_EXPIRED" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)axidForElementWithString:(id)string
{
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"Onboarding.%@", string];
  v4 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:string];

  return v4;
}

void __120__HROnboardingAtrialFibrillationIntroViewController__submitOnboardingUIErrorEventWithCountryCode_onboardingEligibility___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_2521E7000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error submitting onboarding errors analytics event: %{public}@", &v6, 0x16u);
}

void __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *a3;
  v9 = 138543874;
  v10 = v4;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_2521E7000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Unexpectedly received an location check error: %{public}@", &v9, 0x20u);
}

@end