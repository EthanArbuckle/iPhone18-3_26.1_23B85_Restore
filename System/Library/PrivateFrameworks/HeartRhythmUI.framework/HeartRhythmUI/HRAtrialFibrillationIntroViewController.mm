@interface HRAtrialFibrillationIntroViewController
- (double)_assetImageBottomToTitleFirstBaseline;
- (double)_bodyLastBaselineToContentBottom;
- (double)_titleLastBaselineToBodyFirstBaseline;
- (double)_titleTopToFirstBaselineLeading;
- (id)_bodyFont;
- (id)_createHeroView;
- (id)_titleFont;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation HRAtrialFibrillationIntroViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationIntroViewController;
  [(HRAtrialFibrillationIntroViewController *)&v5 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HRAtrialFibrillationIntroViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(HRAtrialFibrillationIntroViewController *)self setUpUI];
  [(HRAtrialFibrillationIntroViewController *)self setUpConstraints];
}

- (void)setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(HRAtrialFibrillationIntroViewController *)self setScrollView:v3];

  scrollView = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [scrollView setAlwaysBounceVertical:1];

  scrollView2 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"AppleWatchCanLookforAtrialFibrillation.EntireView"];
  scrollView3 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [scrollView3 setAccessibilityIdentifier:v6];

  view = [(HRAtrialFibrillationIntroViewController *)self view];
  scrollView4 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [view addSubview:scrollView4];

  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HRAtrialFibrillationIntroViewController *)self setContentView:v10];

  contentView = [(HRAtrialFibrillationIntroViewController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView5 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  contentView2 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  [scrollView5 addSubview:contentView2];

  _createHeroView = [(HRAtrialFibrillationIntroViewController *)self _createHeroView];
  [(HRAtrialFibrillationIntroViewController *)self setHeroView:_createHeroView];

  heroView = [(HRAtrialFibrillationIntroViewController *)self heroView];
  [heroView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  heroView2 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  [contentView3 addSubview:heroView2];

  v18 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRAtrialFibrillationIntroViewController *)self setTitleLabel:v18];

  v19 = HRHeartRhythmUIFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  titleLabel = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel setText:v20];

  titleLabel2 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  _titleFont = [(HRAtrialFibrillationIntroViewController *)self _titleFont];
  titleLabel3 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel3 setFont:_titleFont];

  titleLabel4 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  contentView4 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  titleLabel6 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [contentView4 addSubview:titleLabel6];

  v29 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRAtrialFibrillationIntroViewController *)self setBodyLabel:v29];

  v30 = HRHeartRhythmUIFrameworkBundle();
  v31 = [v30 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  bodyLabel = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel setText:v31];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel2 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel2 setTextColor:secondaryLabelColor];

  _bodyFont = [(HRAtrialFibrillationIntroViewController *)self _bodyFont];
  bodyLabel3 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel3 setFont:_bodyFont];

  bodyLabel4 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel5 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [bodyLabel5 setNumberOfLines:0];

  contentView5 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  bodyLabel6 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [contentView5 addSubview:bodyLabel6];

  v41 = +[HROnboardingInlineExpandedContentView learnMoreAboutAtrialFibrillationExpandedView];
  [(HRAtrialFibrillationIntroViewController *)self setLearnMoreContentView:v41];

  contentView6 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  learnMoreContentView = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  [contentView6 addSubview:learnMoreContentView];
}

- (void)setUpConstraints
{
  scrollView = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  view = [(HRAtrialFibrillationIntroViewController *)self view];
  [scrollView hk_alignHorizontalConstraintsWithView:view margin:0.0];

  scrollView2 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  topAnchor = [scrollView2 topAnchor];
  view2 = [(HRAtrialFibrillationIntroViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  scrollView3 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  bottomAnchor = [scrollView3 bottomAnchor];
  view3 = [(HRAtrialFibrillationIntroViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v14 setActive:1];

  contentView = [(HRAtrialFibrillationIntroViewController *)self contentView];
  scrollView4 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [contentView hk_alignHorizontalConstraintsWithView:scrollView4 margin:0.0];

  contentView2 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  scrollView5 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [contentView2 hk_alignVerticalConstraintsWithView:scrollView5 margin:0.0];

  contentView3 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  view4 = [(HRAtrialFibrillationIntroViewController *)self view];
  [contentView3 hk_alignHorizontalConstraintsWithView:view4 margin:0.0];

  heroView = [(HRAtrialFibrillationIntroViewController *)self heroView];
  contentView4 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  [heroView hk_alignHorizontalConstraintsWithView:contentView4 margin:0.0];

  heroView2 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  topAnchor3 = [heroView2 topAnchor];
  contentView5 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  topAnchor4 = [contentView5 topAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  [v27 setActive:1];

  titleLabel = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  contentView6 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView6 insets:?];

  titleLabel2 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  firstBaselineAnchor = [titleLabel2 firstBaselineAnchor];
  heroView3 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  bottomAnchor3 = [heroView3 bottomAnchor];
  [(HRAtrialFibrillationIntroViewController *)self _assetImageBottomToTitleFirstBaseline];
  v34 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:?];
  [v34 setActive:1];

  bodyLabel = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  titleLabel3 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

  bodyLabel2 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  firstBaselineAnchor2 = [bodyLabel2 firstBaselineAnchor];
  titleLabel4 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  [(HRAtrialFibrillationIntroViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v41 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v41 setActive:1];

  learnMoreContentView = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  leadingAnchor = [learnMoreContentView leadingAnchor];
  titleLabel5 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  leadingAnchor2 = [titleLabel5 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v46 setActive:1];

  learnMoreContentView2 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  trailingAnchor = [learnMoreContentView2 trailingAnchor];
  titleLabel6 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  trailingAnchor2 = [titleLabel6 trailingAnchor];
  v51 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v51 setActive:1];

  learnMoreContentView3 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  topAnchor5 = [learnMoreContentView3 topAnchor];
  bodyLabel3 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  bottomAnchor4 = [bodyLabel3 bottomAnchor];
  v56 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4];
  [v56 setActive:1];

  contentView7 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  bottomAnchor5 = [contentView7 bottomAnchor];
  learnMoreContentView4 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  lastBaselineAnchor2 = [learnMoreContentView4 lastBaselineAnchor];
  [(HRAtrialFibrillationIntroViewController *)self _bodyLastBaselineToContentBottom];
  v60 = [bottomAnchor5 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v60 setActive:1];
}

- (id)_createHeroView
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = objc_alloc_init(HRSimulatedAtrialFibrillationNotificationView);
  [v3 addSubview:v4];
  [(HRSimulatedAtrialFibrillationNotificationView *)v4 hk_alignVerticalConstraintsWithView:v3 margin:0.0];
  v5 = MEMORY[0x277CCAAD0];
  widthAnchor = [(HRSimulatedAtrialFibrillationNotificationView *)v4 widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:160.0];
  v13[0] = v7;
  centerXAnchor = [(HRSimulatedAtrialFibrillationNotificationView *)v4 centerXAnchor];
  centerXAnchor2 = [v3 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v5 activateConstraints:v11];

  return v3;
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HRAtrialFibrillationIntroViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HRAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (double)_assetImageBottomToTitleFirstBaseline
{
  _titleFont = [(HRAtrialFibrillationIntroViewController *)self _titleFont];
  [_titleFont _scaledValueForValue:54.0];
  v4 = v3;

  return v4;
}

- (double)_titleTopToFirstBaselineLeading
{
  hrui_currentDeviceHas5Point8InchScreen = [MEMORY[0x277D759A0] hrui_currentDeviceHas5Point8InchScreen];
  result = 36.0;
  if (hrui_currentDeviceHas5Point8InchScreen)
  {
    return 44.0;
  }

  return result;
}

- (double)_titleLastBaselineToBodyFirstBaseline
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  _bodyFontTextStyle = [(HRAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v5 = [v3 initForTextStyle:_bodyFontTextStyle];

  [v5 scaledValueForValue:32.0];
  v7 = v6;

  return v7;
}

- (double)_bodyLastBaselineToContentBottom
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  _bodyFontTextStyle = [(HRAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v5 = [v3 initForTextStyle:_bodyFontTextStyle];

  [v5 scaledValueForValue:48.0];
  v7 = v6;

  return v7;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __79__HRAtrialFibrillationIntroViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HRAtrialFibrillationIntroViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __79__HRAtrialFibrillationIntroViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HRAtrialFibrillationIntroViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end