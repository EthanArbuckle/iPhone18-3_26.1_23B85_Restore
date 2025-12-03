@interface HROnboardingHeroExplanationViewController
- (NSString)bodyString;
- (NSString)buttonTitleString;
- (NSString)titleString;
- (double)_titleLastBaselineToBodyTop;
- (double)_titleTopToFirstBaseline;
- (double)_titleTopToFirstBaselineLeading;
- (id)_bodyFont;
- (id)_titleFont;
- (id)createHeroView;
- (int64_t)accessibilityGroupID;
- (void)_adjustButtonFooterViewLocationForViewContentHeight;
- (void)_setUpButtonFooterView;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HROnboardingHeroExplanationViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingHeroExplanationViewController;
  [(HROnboardingHeroExplanationViewController *)&v3 viewDidLoad];
  [(HROnboardingHeroExplanationViewController *)self _setUpButtonFooterView];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingHeroExplanationViewController;
  [(HROnboardingHeroExplanationViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingHeroExplanationViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)setUpUI
{
  v40[1] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = HROnboardingHeroExplanationViewController;
  [(HROnboardingHeroExplanationViewController *)&v39 setUpUI];
  v3 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:-[HROnboardingHeroExplanationViewController accessibilityGroupID](self suffix:{"accessibilityGroupID"), @"Onboarding.HowItWorks.EntireView"}];
  scrollView = [(HROnboardingHeroExplanationViewController *)self scrollView];
  [scrollView setAccessibilityIdentifier:v3];

  createHeroView = [(HROnboardingHeroExplanationViewController *)self createHeroView];
  [(HROnboardingHeroExplanationViewController *)self setHeroView:createHeroView];

  heroView = [(HROnboardingHeroExplanationViewController *)self heroView];

  if (heroView)
  {
    heroView2 = [(HROnboardingHeroExplanationViewController *)self heroView];
    [heroView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(HROnboardingHeroExplanationViewController *)self contentView];
    heroView3 = [(HROnboardingHeroExplanationViewController *)self heroView];
    [contentView addSubview:heroView3];
  }

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingHeroExplanationViewController *)self setTitleLabel:v10];

  titleString = [(HROnboardingHeroExplanationViewController *)self titleString];
  titleLabel = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [titleLabel setText:titleString];

  _titleFont = [(HROnboardingHeroExplanationViewController *)self _titleFont];
  titleLabel2 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [titleLabel2 setFont:_titleFont];

  titleLabel3 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel4 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  v17 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:-[HROnboardingHeroExplanationViewController accessibilityGroupID](self suffix:{"accessibilityGroupID"), @"Onboarding.PageTitle"}];
  titleLabel5 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [titleLabel5 setAccessibilityIdentifier:v17];

  contentView2 = [(HROnboardingHeroExplanationViewController *)self contentView];
  titleLabel6 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [contentView2 addSubview:titleLabel6];

  v21 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingHeroExplanationViewController *)self setBodyLabel:v21];

  bodyString = [(HROnboardingHeroExplanationViewController *)self bodyString];
  bodyLabel = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel setText:bodyString];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel2 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel2 setTextColor:secondaryLabelColor];

  _bodyFont = [(HROnboardingHeroExplanationViewController *)self _bodyFont];
  bodyLabel3 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel3 setFont:_bodyFont];

  bodyLabel4 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel5 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel5 setNumberOfLines:0];

  v30 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:-[HROnboardingHeroExplanationViewController accessibilityGroupID](self suffix:{"accessibilityGroupID"), @"Onboarding.HowItWorksDescription"}];
  bodyLabel6 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel6 setAccessibilityIdentifier:v30];

  contentView3 = [(HROnboardingHeroExplanationViewController *)self contentView];
  bodyLabel7 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [contentView3 addSubview:bodyLabel7];

  if ([(HROnboardingHeroExplanationViewController *)self isOnboarding])
  {
    buttonTitleString = [(HROnboardingHeroExplanationViewController *)self buttonTitleString];
    v40[0] = buttonTitleString;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v36 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v35 footerText:0 boldFooterText:0 delegate:self];
    [(HROnboardingHeroExplanationViewController *)self setStackedButtonView:v36];

    stackedButtonView = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [stackedButtonView setFixedBottomButtonSpacing:1];

    stackedButtonView2 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [stackedButtonView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)setUpConstraints
{
  v32.receiver = self;
  v32.super_class = HROnboardingHeroExplanationViewController;
  [(HROnboardingHeroExplanationViewController *)&v32 setUpConstraints];
  heroView = [(HROnboardingHeroExplanationViewController *)self heroView];

  if (heroView)
  {
    heroView2 = [(HROnboardingHeroExplanationViewController *)self heroView];
    titleLabel = [(HROnboardingHeroExplanationViewController *)self titleLabel];
    [heroView2 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

    heroView3 = [(HROnboardingHeroExplanationViewController *)self heroView];
    topAnchor = [heroView3 topAnchor];
    contentView = [(HROnboardingHeroExplanationViewController *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:29.0];
    [v10 setActive:1];

    titleLabel2 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
    topAnchor3 = [titleLabel2 topAnchor];
    heroView4 = [(HROnboardingHeroExplanationViewController *)self heroView];
    bottomAnchor = [heroView4 bottomAnchor];
    v15 = 29.0;
  }

  else
  {
    titleLabel2 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
    topAnchor3 = [titleLabel2 topAnchor];
    heroView4 = [(HROnboardingHeroExplanationViewController *)self contentView];
    bottomAnchor = [heroView4 topAnchor];
    [(HROnboardingHeroExplanationViewController *)self contentTop];
  }

  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v15];
  [v16 setActive:1];

  titleLabel3 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  contentView2 = [(HROnboardingHeroExplanationViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel3 hrui_alignHorizontalConstraintsWithView:contentView2 insets:?];

  bodyLabel = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  titleLabel4 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel4 margin:0.0];

  bodyLabel2 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  topAnchor4 = [bodyLabel2 topAnchor];
  titleLabel5 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  [(HROnboardingHeroExplanationViewController *)self _titleLastBaselineToBodyTop];
  v25 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v25 setActive:1];

  contentView3 = [(HROnboardingHeroExplanationViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  bodyLabel3 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  bottomAnchor3 = [bodyLabel3 bottomAnchor];
  v30 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:*MEMORY[0x277D12778]];
  [(HROnboardingHeroExplanationViewController *)self setContentViewBottomConstraint:v30];

  contentViewBottomConstraint = [(HROnboardingHeroExplanationViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];
}

- (void)setTextAlignment:(int64_t)alignment
{
  self->_textAlignment = alignment;
  titleLabel = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [titleLabel setTextAlignment:alignment];

  bodyLabel = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [bodyLabel setTextAlignment:alignment];
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index)
  {
    delegate = [(HROnboardingHeroExplanationViewController *)self delegate];
    [delegate stepForward];
  }
}

- (void)_setUpButtonFooterView
{
  if ([(HROnboardingHeroExplanationViewController *)self isOnboarding])
  {
    stackedButtonView = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    HKHealthUIBuddyDirectionalEdgeInsets();
    [(HROnboardingHeroExplanationViewController *)self setFooterView:stackedButtonView insets:?];

    stackedButtonView2 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    view = [(HROnboardingHeroExplanationViewController *)self view];
    [stackedButtonView2 alignBlurViewHorizontalConstraintsWithView:view];

    stackedButtonView3 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [stackedButtonView3 setBlurHidden:0];

    stackedButtonViewLastButtonMode = [(HROnboardingHeroExplanationViewController *)self stackedButtonViewLastButtonMode];
    stackedButtonView4 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [stackedButtonView4 setLastButtonMode:stackedButtonViewLastButtonMode];
  }
}

- (void)_adjustButtonFooterViewLocationForViewContentHeight
{
  v44[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingHeroExplanationViewController *)self isOnboarding])
  {
    view = [(HROnboardingHeroExplanationViewController *)self view];
    [view layoutIfNeeded];

    view2 = [(HROnboardingHeroExplanationViewController *)self view];
    stackedButtonView = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    buttons = [stackedButtonView buttons];
    firstObject = [buttons firstObject];
    [firstObject frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    stackedButtonView2 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [view2 convertRect:stackedButtonView2 fromView:{v9, v11, v13, v15}];
    v18 = v17;

    contentView = [(HROnboardingHeroExplanationViewController *)self contentView];
    [contentView frame];
    v21 = v20;
    view3 = [(HROnboardingHeroExplanationViewController *)self view];
    [view3 safeAreaInsets];
    v24 = v18 - v23;

    if (v21 > v24)
    {
      [(HROnboardingHeroExplanationViewController *)self removeFooterView];
      contentView2 = [(HROnboardingHeroExplanationViewController *)self contentView];
      stackedButtonView3 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      [contentView2 addSubview:stackedButtonView3];

      stackedButtonView4 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      [stackedButtonView4 setBlurHidden:1];

      stackedButtonView5 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      titleLabel = [(HROnboardingHeroExplanationViewController *)self titleLabel];
      [stackedButtonView5 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

      stackedButtonView6 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      topAnchor = [stackedButtonView6 topAnchor];
      bodyLabel = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
      bottomAnchor = [bodyLabel bottomAnchor];
      v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      [v34 setActive:1];

      v35 = MEMORY[0x277CCAAD0];
      contentViewBottomConstraint = [(HROnboardingHeroExplanationViewController *)self contentViewBottomConstraint];
      v44[0] = contentViewBottomConstraint;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [v35 deactivateConstraints:v37];

      [(HROnboardingHeroExplanationViewController *)self setContentViewBottomConstraint:0];
      contentView3 = [(HROnboardingHeroExplanationViewController *)self contentView];
      bottomAnchor2 = [contentView3 bottomAnchor];
      stackedButtonView7 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      bottomAnchor3 = [stackedButtonView7 bottomAnchor];
      v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [(HROnboardingHeroExplanationViewController *)self setContentViewBottomConstraint:v42];

      contentViewBottomConstraint2 = [(HROnboardingHeroExplanationViewController *)self contentViewBottomConstraint];
      [contentViewBottomConstraint2 setActive:1];
    }
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingHeroExplanationViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

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

- (double)_titleTopToFirstBaseline
{
  _titleFont = [(HROnboardingHeroExplanationViewController *)self _titleFont];
  [(HROnboardingHeroExplanationViewController *)self _titleTopToFirstBaselineLeading];
  [_titleFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_titleLastBaselineToBodyTop
{
  _titleFont = [(HROnboardingHeroExplanationViewController *)self _titleFont];
  [_titleFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingHeroExplanationViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (id)createHeroView
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return 0;
}

- (NSString)titleString
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return &stru_2864680B0;
}

- (NSString)bodyString
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return &stru_2864680B0;
}

- (NSString)buttonTitleString
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return &stru_2864680B0;
}

- (int64_t)accessibilityGroupID
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return 0;
}

@end