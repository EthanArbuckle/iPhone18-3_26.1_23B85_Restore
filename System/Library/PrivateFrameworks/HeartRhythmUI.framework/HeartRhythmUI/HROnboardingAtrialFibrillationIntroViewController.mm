@interface HROnboardingAtrialFibrillationIntroViewController
- (HKAnalyticsEventSubmissionManager)analyticsEventSubmissionManager;
- (double)_assetImageBottomToTitleFirstBaseline;
- (double)_titleLastBaselineToBodyFirstBaseline;
- (double)_viewLastBaselineToContinueButton;
- (id)_bodyFont;
- (id)_createHeroView;
- (id)_footnoteFont;
- (id)_titleFont;
- (id)axidForElementWithString:(id)a3;
- (id)bodyString;
- (id)buttonTitleString;
- (id)featureDisabledBodyString;
- (id)footnoteString;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (id)learnMoreString;
- (id)locationFeatureAlertAckButtonString;
- (id)locationFeatureIneligiblePromptBodyString;
- (id)locationNotFoundPromptMessageString;
- (id)locationNotFoundPromptTitleString;
- (id)seedExpiredBodyString;
- (id)titleString;
- (id)watchOSVersionTooLowBodyString;
- (void)_isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch:(id)a3;
- (void)_presentFeatureAlertWithMessage:(id)a3;
- (void)_presentLocationNotFoundAlert;
- (void)_setUpLearnMoreConstraints;
- (void)_setUpLearnMoreViews;
- (void)_setUpStackedButtonView;
- (void)_submitOnboardingUIErrorEventWithCountryCode:(id)a3 onboardingEligibility:(id)a4;
- (void)_updateViewsForContentExpansionState:(BOOL)a3;
- (void)presentLearnMoreAlertWithFeatureDisabledMessage;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
@end

@implementation HROnboardingAtrialFibrillationIntroViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HROnboardingAtrialFibrillationIntroViewController;
  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)&v9 initForOnboarding:a3 upgradingFromAlgorithmVersion:a4];
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
    [v5 setRightButtonType:2];
  }

  return v6;
}

- (void)setUpUI
{
  v32.receiver = self;
  v32.super_class = HROnboardingAtrialFibrillationIntroViewController;
  [(HROnboardingAtrialFibrillationIntroViewController *)&v32 setUpUI];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self _createHeroView];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setHeroView:v3];

  v4 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  v6 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  [v5 addSubview:v6];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationIntroViewController *)self setTitleLabel:v7];

  v8 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleString];
  v9 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v9 setText:v8];

  v10 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v10 setTextAlignment:4];

  v11 = [(HROnboardingAtrialFibrillationIntroViewController *)self _titleFont];
  v12 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v12 setFont:v11];

  v13 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v14 setNumberOfLines:0];

  v15 = [(HROnboardingAtrialFibrillationIntroViewController *)self axidForElementWithString:@"PageTitle"];
  v16 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v16 setAccessibilityIdentifier:v15];

  v17 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  v18 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v17 addSubview:v18];

  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationIntroViewController *)self setBodyLabel:v19];

  v20 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyString];
  v21 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v21 setText:v20];

  v22 = [MEMORY[0x277D75348] secondaryLabelColor];
  v23 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v23 setTextColor:v22];

  v24 = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
  v25 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v25 setFont:v24];

  v26 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v27 setNumberOfLines:0];

  v28 = [(HROnboardingAtrialFibrillationIntroViewController *)self axidForElementWithString:@"Description"];
  v29 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v29 setAccessibilityIdentifier:v28];

  v30 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  v31 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  [v30 addSubview:v31];

  [(HROnboardingAtrialFibrillationIntroViewController *)self _setUpLearnMoreViews];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _setUpStackedButtonView];
}

- (void)setUpConstraints
{
  v33.receiver = self;
  v33.super_class = HROnboardingAtrialFibrillationIntroViewController;
  [(HROnboardingAtrialFibrillationIntroViewController *)&v33 setUpConstraints];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  v4 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  [v9 setActive:1];

  v10 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v11 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v10 hrui_alignHorizontalConstraintsWithView:v11 insets:?];

  v12 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v13 = [v12 firstBaselineAnchor];
  v14 = [(HROnboardingAtrialFibrillationIntroViewController *)self heroView];
  v15 = [v14 bottomAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _assetImageBottomToTitleFirstBaseline];
  v16 = [v13 constraintEqualToAnchor:v15 constant:?];
  [v16 setActive:1];

  v17 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  v18 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v17 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

  v19 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  v20 = [v19 firstBaselineAnchor];
  v21 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v22 = [v21 lastBaselineAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v23 = [v20 constraintEqualToAnchor:v22 constant:?];
  [v23 setActive:1];

  v24 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  v25 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  [v24 hk_alignHorizontalConstraintsWithView:v25 margin:0.0];

  v26 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  v27 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  [v26 alignBlurViewHorizontalConstraintsWithView:v27];

  [(HROnboardingAtrialFibrillationIntroViewController *)self _setUpLearnMoreConstraints];
  v28 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  v29 = [v28 bottomAnchor];
  v30 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];
}

- (HKAnalyticsEventSubmissionManager)analyticsEventSubmissionManager
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self delegate];
  v4 = [v3 healthStore];

  analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  if (analyticsEventSubmissionManager)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = [v7 initWithLoggingCategory:*MEMORY[0x277CCC2D8] healthDataSource:v4];
    v9 = self->_analyticsEventSubmissionManager;
    self->_analyticsEventSubmissionManager = v8;

    analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  }

  v10 = analyticsEventSubmissionManager;

  return analyticsEventSubmissionManager;
}

- (void)_submitOnboardingUIErrorEventWithCountryCode:(id)a3 onboardingEligibility:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__HROnboardingAtrialFibrillationIntroViewController__submitOnboardingUIErrorEventWithCountryCode_onboardingEligibility___block_invoke;
  block[3] = &unk_2796FB878;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
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
  v5 = [(HRSimulatedAtrialFibrillationNotificationView *)v4 heightAnchor];
  v6 = [v5 constraintEqualToConstant:210.0];
  [v6 setActive:1];

  v7 = [(HRSimulatedAtrialFibrillationNotificationView *)v4 centerXAnchor];
  v8 = [v3 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  return v3;
}

- (void)_setUpLearnMoreViews
{
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreString];

  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreButton:v4];

    v5 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    v6 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreString];
    [v5 setTitle:v6 forState:0];

    v7 = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
    v8 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    v9 = [v8 titleLabel];
    [v9 setFont:v7];

    v10 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    v12 = [v11 titleLabel];
    [v12 setNumberOfLines:0];

    v13 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [v13 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:64];

    v14 = [(HROnboardingAtrialFibrillationIntroViewController *)self axidForElementWithString:@"AFibLearnMoreLink"];
    v15 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [v15 setAccessibilityIdentifier:v14];

    v16 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
    v17 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    [v16 addSubview:v17];

    v18 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
    LODWORD(v19) = 1148846080;
    [v18 setContentHuggingPriority:0 forAxis:v19];

    v20 = [(HROnboardingAtrialFibrillationIntroViewController *)self _createLearnMoreExpandedView];
    [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreContentView:v20];

    v22 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
    v21 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
    [v22 addSubview:v21];
  }
}

- (void)_setUpLearnMoreConstraints
{
  v46[4] = *MEMORY[0x277D85DE8];
  v43 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  v39 = [v43 leadingAnchor];
  v41 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v37 = [v41 leadingAnchor];
  v35 = [v39 constraintEqualToAnchor:v37];
  v46[0] = v35;
  v33 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  v29 = [v33 trailingAnchor];
  v31 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v27 = [v31 trailingAnchor];
  v25 = [v29 constraintLessThanOrEqualToAnchor:v27];
  v46[1] = v25;
  v23 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  v21 = [v23 firstBaselineAnchor];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  v4 = [v3 bottomAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v5 = [v21 constraintEqualToAnchor:v4 constant:?];
  v46[2] = v5;
  v6 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  v7 = [v6 topAnchor];
  v8 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  v9 = [v8 lastBaselineAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _viewLastBaselineToContinueButton];
  v10 = [v7 constraintEqualToAnchor:v9 constant:?];
  v46[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreCollapsedConstraints:v11];

  v44 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v40 = [v44 leadingAnchor];
  v42 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v38 = [v42 leadingAnchor];
  v36 = [v40 constraintEqualToAnchor:v38];
  v45[0] = v36;
  v34 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v30 = [v34 trailingAnchor];
  v32 = [(HROnboardingAtrialFibrillationIntroViewController *)self titleLabel];
  v28 = [v32 trailingAnchor];
  v26 = [v30 constraintEqualToAnchor:v28];
  v45[1] = v26;
  v24 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v22 = [v24 topAnchor];
  v12 = [(HROnboardingAtrialFibrillationIntroViewController *)self bodyLabel];
  v13 = [v12 bottomAnchor];
  v14 = [v22 constraintEqualToAnchor:v13];
  v45[2] = v14;
  v15 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  v16 = [v15 topAnchor];
  v17 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v18 = [v17 bottomAnchor];
  [(HROnboardingAtrialFibrillationIntroViewController *)self _viewLastBaselineToContinueButton];
  v19 = [v16 constraintEqualToAnchor:v18 constant:?];
  v45[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setLearnMoreExpandedConstraints:v20];

  [(HROnboardingAtrialFibrillationIntroViewController *)self _updateViewsForContentExpansionState:0];
}

- (void)_setUpStackedButtonView
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self buttonTitleString];
  v11[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)self footnoteString];
  v6 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v4 footerText:v5 boldFooterText:0 footerTextAlignment:4 delegate:self];
  [(HROnboardingAtrialFibrillationIntroViewController *)self setStackedButtonView:v6];

  v7 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  [v8 setFixedBottomButtonSpacing:1];

  v9 = [(HROnboardingAtrialFibrillationIntroViewController *)self contentView];
  v10 = [(HROnboardingAtrialFibrillationIntroViewController *)self stackedButtonView];
  [v9 addSubview:v10];
}

- (void)_updateViewsForContentExpansionState:(BOOL)a3
{
  v3 = a3;
  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreButton];
  v6 = v5;
  if (v3)
  {
    [v5 setHidden:1];

    v7 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
    [v7 setHidden:0];

    v8 = MEMORY[0x277CCAAD0];
    v9 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreCollapsedConstraints];
    [v8 deactivateConstraints:v9];

    v10 = MEMORY[0x277CCAAD0];
    [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreExpandedConstraints];
  }

  else
  {
    [v5 setHidden:0];

    v11 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreContentView];
    [v11 setHidden:1];

    v12 = MEMORY[0x277CCAAD0];
    v13 = [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreExpandedConstraints];
    [v12 deactivateConstraints:v13];

    v10 = MEMORY[0x277CCAAD0];
    [(HROnboardingAtrialFibrillationIntroViewController *)self learnMoreCollapsedConstraints];
  }
  v14 = ;
  [v10 activateConstraints:?];
}

- (void)_presentFeatureAlertWithMessage:(id)a3
{
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:a3 preferredStyle:1];
  v4 = MEMORY[0x277D750F8];
  v5 = [(HROnboardingAtrialFibrillationIntroViewController *)self locationFeatureAlertAckButtonString];
  v6 = [v4 actionWithTitle:v5 style:1 handler:0];
  [v7 addAction:v6];

  [(HROnboardingAtrialFibrillationIntroViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    v15 = v4;
    v16 = v5;
    v8 = [a3 buttons];
    v9 = [v8 objectAtIndexedSubscript:0];

    [v9 setEnabled:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__HROnboardingAtrialFibrillationIntroViewController_stackedButtonView_didTapButtonAtIndex___block_invoke;
    v11[3] = &unk_2796FB8C8;
    v12 = v9;
    v13 = self;
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

- (void)_isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch:(id)a3
{
  v5 = a3;
  v6 = HKPreferredRegulatoryDomainProvider();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __134__HROnboardingAtrialFibrillationIntroViewController__isAtrialFibrillationDetectionOnboardingAvailableInCurrentLocationForActiveWatch___block_invoke;
  v8[3] = &unk_2796FB8F0;
  v8[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
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
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self featureDisabledBodyString];
  [(HROnboardingAtrialFibrillationIntroViewController *)self presentLearnMoreAlertWithMessage:v3 learnMoreTapped:&__block_literal_global_1];
}

void __100__HROnboardingAtrialFibrillationIntroViewController_presentLearnMoreAlertWithFeatureDisabledMessage__block_invoke()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CCB818]];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openURL:v1 withOptions:0];
}

- (void)_presentLocationNotFoundAlert
{
  v4 = [(HROnboardingAtrialFibrillationIntroViewController *)self locationNotFoundPromptMessageString];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self locationNotFoundPromptTitleString];
  [(HROnboardingAtrialFibrillationIntroViewController *)self presentAlertWithMessage:v4 title:v3];
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (double)_assetImageBottomToTitleFirstBaseline
{
  v2 = [(HROnboardingAtrialFibrillationIntroViewController *)self _titleFont];
  [v2 _scaledValueForValue:54.0];
  v4 = v3;

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_titleLastBaselineToBodyFirstBaseline
{
  v2 = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
  [v2 _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingAtrialFibrillationIntroViewController *)self _footnoteTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_viewLastBaselineToContinueButton
{
  v2 = [(HROnboardingAtrialFibrillationIntroViewController *)self _bodyFont];
  [v2 _scaledValueForValue:6.0];
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

- (id)axidForElementWithString:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Onboarding.%@", a3];
  v4 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v3];

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