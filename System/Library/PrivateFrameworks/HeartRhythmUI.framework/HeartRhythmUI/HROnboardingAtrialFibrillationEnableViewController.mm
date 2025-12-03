@interface HROnboardingAtrialFibrillationEnableViewController
- (double)_footnoteToButton;
- (double)_titleLastBaselineToBodyFirstBaseline;
- (id)_bodyFont;
- (id)_footnoteFont;
- (id)_titleFont;
- (id)axidForElementWithString:(id)string;
- (id)createHeroView;
- (id)footnoteString;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
@end

@implementation HROnboardingAtrialFibrillationEnableViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = HROnboardingAtrialFibrillationEnableViewController;
  v5 = [(HROnboardingAtrialFibrillationEnableViewController *)&v9 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
  v6 = v5;
  if (v5)
  {
    navigationItem = [v5 navigationItem];
    [navigationItem setHidesBackButton:onboardingCopy];
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
  scrollView = [(HROnboardingAtrialFibrillationEnableViewController *)self scrollView];
  [scrollView setAccessibilityIdentifier:v3];

  createHeroView = [(HROnboardingAtrialFibrillationEnableViewController *)self createHeroView];
  [(HROnboardingAtrialFibrillationEnableViewController *)self setHeroView:createHeroView];

  heroView = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  [heroView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  heroView2 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  [contentView addSubview:heroView2];

  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationEnableViewController *)self setTitleLabel:v9];

  v10 = HRHeartRhythmUIFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  titleLabel = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [titleLabel setText:v11];

  titleLabel2 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  _titleFont = [(HROnboardingAtrialFibrillationEnableViewController *)self _titleFont];
  titleLabel3 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [titleLabel3 setFont:_titleFont];

  titleLabel4 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  v18 = [(HROnboardingAtrialFibrillationEnableViewController *)self axidForElementWithString:@"PageTitle"];
  titleLabel6 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [titleLabel6 setAccessibilityIdentifier:v18];

  contentView2 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  titleLabel7 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [contentView2 addSubview:titleLabel7];

  v22 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationEnableViewController *)self setBodyLabel:v22];

  v23 = HRHeartRhythmUIFrameworkBundle();
  v24 = [v23 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  bodyLabel = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel setText:v24];

  bodyLabel2 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel2 setTextAlignment:4];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel3 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel3 setTextColor:secondaryLabelColor];

  _bodyFont = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFont];
  bodyLabel4 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel4 setFont:_bodyFont];

  bodyLabel5 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel6 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel6 setNumberOfLines:0];

  v33 = [(HROnboardingAtrialFibrillationEnableViewController *)self axidForElementWithString:@"IfYouReceiveANotificationDescription"];
  bodyLabel7 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [bodyLabel7 setAccessibilityIdentifier:v33];

  contentView3 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  bodyLabel8 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  [contentView3 addSubview:bodyLabel8];

  if ([(HROnboardingAtrialFibrillationEnableViewController *)self isOnboarding])
  {
    v37 = HRHeartRhythmUIFrameworkBundle();
    v38 = [v37 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_ENABLE_BUTTON" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
    v49[0] = v38;
    v39 = HRHeartRhythmUIFrameworkBundle();
    v40 = [v39 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_NOT_NOW_BUTTON" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
    v49[1] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];

    footnoteString = [(HROnboardingAtrialFibrillationEnableViewController *)self footnoteString];
    v43 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v41 footerText:footnoteString boldFooterText:0 delegate:self];
    [(HROnboardingAtrialFibrillationEnableViewController *)self setStackedButtonView:v43];

    stackedButtonView = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [stackedButtonView setBlurHidden:1];

    stackedButtonView2 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [stackedButtonView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView4 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    stackedButtonView3 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [contentView4 addSubview:stackedButtonView3];
  }
}

- (void)setUpConstraints
{
  v42.receiver = self;
  v42.super_class = HROnboardingAtrialFibrillationEnableViewController;
  [(HROnboardingAtrialFibrillationEnableViewController *)&v42 setUpConstraints];
  heroView = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  centerXAnchor = [heroView centerXAnchor];
  contentView = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  centerXAnchor2 = [contentView centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 setActive:1];

  heroView2 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  topAnchor = [heroView2 topAnchor];
  contentView2 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingAtrialFibrillationEnableViewController *)self contentTop];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v12 setActive:1];

  titleLabel = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  contentView3 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView3 insets:?];

  titleLabel2 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  topAnchor3 = [titleLabel2 topAnchor];
  heroView3 = [(HROnboardingAtrialFibrillationEnableViewController *)self heroView];
  bottomAnchor = [heroView3 bottomAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:30.0];
  [v19 setActive:1];

  bodyLabel = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  titleLabel3 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

  bodyLabel2 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
  firstBaselineAnchor = [bodyLabel2 firstBaselineAnchor];
  titleLabel4 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  [(HROnboardingAtrialFibrillationEnableViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v26 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v26 setActive:1];

  if ([(HROnboardingAtrialFibrillationEnableViewController *)self isOnboarding])
  {
    stackedButtonView = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    titleLabel5 = [(HROnboardingAtrialFibrillationEnableViewController *)self titleLabel];
    [stackedButtonView hk_alignHorizontalConstraintsWithView:titleLabel5 margin:0.0];

    stackedButtonView2 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    topAnchor4 = [stackedButtonView2 topAnchor];
    bodyLabel3 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
    bottomAnchor2 = [bodyLabel3 bottomAnchor];
    [(HROnboardingAtrialFibrillationEnableViewController *)self _titleLastBaselineToBodyFirstBaseline];
    v33 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:?];
    [v33 setActive:1];

    stackedButtonView3 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    contentView4 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    [stackedButtonView3 alignBlurViewHorizontalConstraintsWithView:contentView4];

    stackedButtonView4 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    [stackedButtonView4 setBlurHidden:1];

    contentView5 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    bottomAnchor3 = [contentView5 bottomAnchor];
    stackedButtonView5 = [(HROnboardingAtrialFibrillationEnableViewController *)self stackedButtonView];
    bottomAnchor4 = [stackedButtonView5 bottomAnchor];
    [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  }

  else
  {
    contentView5 = [(HROnboardingAtrialFibrillationEnableViewController *)self contentView];
    bottomAnchor3 = [contentView5 bottomAnchor];
    stackedButtonView5 = [(HROnboardingAtrialFibrillationEnableViewController *)self bodyLabel];
    bottomAnchor4 = [stackedButtonView5 bottomAnchor];
    [(HROnboardingAtrialFibrillationEnableViewController *)self _footnoteToButton];
    [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:?];
  }
  v41 = ;
  [v41 setActive:1];
}

- (id)createHeroView
{
  v2 = objc_alloc_init(HRSimulatedAtrialFibrillationNotificationView);
  heightAnchor = [(HRSimulatedAtrialFibrillationNotificationView *)v2 heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:210.0];
  [v4 setActive:1];

  return v2;
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  viewCopy = view;
  if (index)
  {
    if (index != 1)
    {
      goto LABEL_6;
    }

    v11 = viewCopy;
    v7 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = viewCopy;
    v7 = MEMORY[0x277CBEC38];
  }

  delegate = [(HROnboardingAtrialFibrillationEnableViewController *)self delegate];
  userInfo = [delegate userInfo];
  [userInfo setObject:v7 forKeyedSubscript:@"HROnboardingAtrialFibrillationEnableNotificationsKey"];

  delegate2 = [(HROnboardingAtrialFibrillationEnableViewController *)self delegate];
  [delegate2 stepForward];

  viewCopy = v11;
LABEL_6:
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingAtrialFibrillationEnableViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (double)_titleLastBaselineToBodyFirstBaseline
{
  _bodyFont = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  _footnoteFontTextStyle = [(HROnboardingAtrialFibrillationEnableViewController *)self _footnoteFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_footnoteFontTextStyle];

  return v4;
}

- (double)_footnoteToButton
{
  _bodyFont = [(HROnboardingAtrialFibrillationEnableViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:44.0];
  v4 = v3;

  return v4;
}

- (id)axidForElementWithString:(id)string
{
  v3 = MEMORY[0x277CCACA8];
  stringCopy = string;
  v5 = [v3 healthAccessibilityIdentifier:2 suffix:@"Onboarding"];
  stringCopy = [v5 stringByAppendingFormat:@".%@", stringCopy];

  return stringCopy;
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

  navigationItem = [(HROnboardingAtrialFibrillationEnableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

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
  navigationItem = [(HROnboardingAtrialFibrillationEnableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

- (id)footnoteString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ENABLE_NOTIFICATION_FOOTNOTE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

@end