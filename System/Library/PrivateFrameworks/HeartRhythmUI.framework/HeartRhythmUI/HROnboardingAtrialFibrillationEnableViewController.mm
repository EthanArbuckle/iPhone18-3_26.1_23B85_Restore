@interface HROnboardingAtrialFibrillationEnableViewController
- (double)_footnoteToButton;
- (double)_titleLastBaselineToBodyFirstBaseline;
- (id)_bodyFont;
- (id)_footnoteFont;
- (id)_titleFont;
- (id)axidForElementWithString:(id)a3;
- (id)createHeroView;
- (id)footnoteString;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
@end

@implementation HROnboardingAtrialFibrillationEnableViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HROnboardingAtrialFibrillationEnableViewController;
  v5 = [(HROnboardingAtrialFibrillationEnableViewController *)&v9 initForOnboarding:a3 upgradingFromAlgorithmVersion:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 navigationItem];
    [v7 setHidesBackButton:v4];
  }

  return v6;
}

- (void)setUpUI
{
  v49[2] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = HROnboardingAtrialFibrillationEnableViewController;
  [(HROnboardingAtrialFibrillationEnableViewController *)&v48 setUpUI];
  v3 = [(HROnboardingAtrialFibrillationEnableViewController *)self axidForElementWithString:@"ReceivingANotification.EntireView"];
  v4 = [(HROnboardingAtrialFibrillationEnableViewController *)self scrollView];
  [v4 setAccessibilityIdentifier:v3];

  v5 = [(HROnboardingAtrialFibrillationEnableViewController *)self createHeroView];
  [(HROnboardingAtrialFibrillationEnableViewController *)self setHeroView:v5];

  v6 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  v8 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  [v7 addSubview:v8];

  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationEnableViewController *)self setTitleLabel:v9];

  v10 = HRHeartRhythmUIFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v12 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v12 setText:v11];

  v13 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v13 setTextAlignment:4];

  v14 = [(HROnboardingAtrialFibrillationEnableViewController *)self _titleFont];
  v15 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v15 setFont:v14];

  v16 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v17 setNumberOfLines:0];

  v18 = [(HROnboardingAtrialFibrillationEnableViewController *)self axidForElementWithString:@"PageTitle"];
  v19 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v19 setAccessibilityIdentifier:v18];

  v20 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  v21 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v20 addSubview:v21];

  v22 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationEnableViewController *)self setBodyLabel:v22];

  v23 = HRHeartRhythmUIFrameworkBundle();
  v24 = [v23 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v25 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v25 setText:v24];

  v26 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v26 setTextAlignment:4];

  v27 = [MEMORY[0x277D75348] secondaryLabelColor];
  v28 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v28 setTextColor:v27];

  v29 = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFont];
  v30 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v30 setFont:v29];

  v31 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v32 setNumberOfLines:0];

  v33 = [(HROnboardingAtrialFibrillationEnableViewController *)self axidForElementWithString:@"IfYouReceiveANotificationDescription"];
  v34 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v34 setAccessibilityIdentifier:v33];

  v35 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  v36 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [v35 addSubview:v36];

  if ([(HROnboardingAtrialFibrillationEnableViewController *)self isOnboarding])
  {
    v37 = HRHeartRhythmUIFrameworkBundle();
    v38 = [v37 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_ENABLE_BUTTON" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
    v49[0] = v38;
    v39 = HRHeartRhythmUIFrameworkBundle();
    v40 = [v39 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_NOT_NOW_BUTTON" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
    v49[1] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];

    v42 = [(HROnboardingAtrialFibrillationEnableViewController *)self footnoteString];
    v43 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v41 footerText:v42 boldFooterText:0 delegate:self];
    [(HROnboardingAtrialFibrillationEnableViewController *)self setStackedButtonView:v43];

    v44 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [v44 setBlurHidden:1];

    v45 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

    v46 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    v47 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [v46 addSubview:v47];
  }
}

- (void)setUpConstraints
{
  v42.receiver = self;
  v42.super_class = HROnboardingAtrialFibrillationEnableViewController;
  [(HROnboardingAtrialFibrillationEnableViewController *)&v42 setUpConstraints];
  v3 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  v4 = [v3 centerXAnchor];
  v5 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  v6 = [v5 centerXAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  v9 = [v8 topAnchor];
  v10 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  v11 = [v10 topAnchor];
  [(HROnboardingAtrialFibrillationEnableViewController *)self contentTop];
  v12 = [v9 constraintEqualToAnchor:v11 constant:?];
  [v12 setActive:1];

  v13 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  v14 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v13 hrui_alignHorizontalConstraintsWithView:v14 insets:?];

  v15 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  v16 = [v15 topAnchor];
  v17 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:30.0];
  [v19 setActive:1];

  v20 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  v21 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [v20 hk_alignHorizontalConstraintsWithView:v21 margin:0.0];

  v22 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  v23 = [v22 firstBaselineAnchor];
  v24 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  v25 = [v24 lastBaselineAnchor];
  [(HROnboardingAtrialFibrillationEnableViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v26 = [v23 constraintEqualToAnchor:v25 constant:?];
  [v26 setActive:1];

  if ([(HROnboardingAtrialFibrillationEnableViewController *)self isOnboarding])
  {
    v27 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    v28 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
    [v27 hk_alignHorizontalConstraintsWithView:v28 margin:0.0];

    v29 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    v30 = [v29 topAnchor];
    v31 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
    v32 = [v31 bottomAnchor];
    [(HROnboardingAtrialFibrillationEnableViewController *)self _titleLastBaselineToBodyFirstBaseline];
    v33 = [v30 constraintEqualToAnchor:v32 constant:?];
    [v33 setActive:1];

    v34 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    v35 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    [v34 alignBlurViewHorizontalConstraintsWithView:v35];

    v36 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [v36 setBlurHidden:1];

    v37 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    v38 = [v37 bottomAnchor];
    v39 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    v40 = [v39 bottomAnchor];
    [v38 constraintEqualToAnchor:v40];
  }

  else
  {
    v37 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    v38 = [v37 bottomAnchor];
    v39 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
    v40 = [v39 bottomAnchor];
    [(HROnboardingAtrialFibrillationEnableViewController *)self _footnoteToButton];
    [v38 constraintEqualToAnchor:v40 constant:?];
  }
  v41 = ;
  [v41 setActive:1];
}

- (id)createHeroView
{
  v2 = objc_alloc_init(HRSimulatedAtrialFibrillationNotificationView);
  v3 = [(HRSimulatedAtrialFibrillationNotificationView *)v2 heightAnchor];
  v4 = [v3 constraintEqualToConstant:210.0];
  [v4 setActive:1];

  return v2;
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v11 = v6;
    v7 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = v6;
    v7 = MEMORY[0x277CBEC38];
  }

  v8 = [(HROnboardingAtrialFibrillationEnableViewController *)self delegate];
  v9 = [v8 userInfo];
  [v9 setObject:v7 forKeyedSubscript:@"HROnboardingAtrialFibrillationEnableNotificationsKey"];

  v10 = [(HROnboardingAtrialFibrillationEnableViewController *)self delegate];
  [v10 stepForward];

  v6 = v11;
LABEL_6:
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingAtrialFibrillationEnableViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_titleLastBaselineToBodyFirstBaseline
{
  v2 = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFont];
  [v2 _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingAtrialFibrillationEnableViewController *)self _footnoteFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_footnoteToButton
{
  v2 = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFont];
  [v2 _scaledValueForValue:44.0];
  v4 = v3;

  return v4;
}

- (id)axidForElementWithString:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 healthAccessibilityIdentifier:2 suffix:@"Onboarding"];
  v6 = [v5 stringByAppendingFormat:@".%@", v4];

  return v6;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __90__HROnboardingAtrialFibrillationEnableViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(HROnboardingAtrialFibrillationEnableViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __90__HROnboardingAtrialFibrillationEnableViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(HROnboardingAtrialFibrillationEnableViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

- (id)footnoteString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_FOOTNOTE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

@end