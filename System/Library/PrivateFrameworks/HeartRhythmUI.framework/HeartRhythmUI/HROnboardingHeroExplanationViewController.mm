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
- (void)setTextAlignment:(int64_t)a3;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
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
  v4 = [(HROnboardingHeroExplanationViewController *)self scrollView];
  [v4 setAccessibilityIdentifier:v3];

  v5 = [(HROnboardingHeroExplanationViewController *)self createHeroView];
  [(HROnboardingHeroExplanationViewController *)self setHeroView:v5];

  v6 = [(HROnboardingHeroExplanationViewController *)self heroView];

  if (v6)
  {
    v7 = [(HROnboardingHeroExplanationViewController *)self heroView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(HROnboardingHeroExplanationViewController *)self contentView];
    v9 = [(HROnboardingHeroExplanationViewController *)self heroView];
    [v8 addSubview:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingHeroExplanationViewController *)self setTitleLabel:v10];

  v11 = [(HROnboardingHeroExplanationViewController *)self titleString];
  v12 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v12 setText:v11];

  v13 = [(HROnboardingHeroExplanationViewController *)self _titleFont];
  v14 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v14 setFont:v13];

  v15 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v16 setNumberOfLines:0];

  v17 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:-[HROnboardingHeroExplanationViewController accessibilityGroupID](self suffix:{"accessibilityGroupID"), @"Onboarding.PageTitle"}];
  v18 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v18 setAccessibilityIdentifier:v17];

  v19 = [(HROnboardingHeroExplanationViewController *)self contentView];
  v20 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v19 addSubview:v20];

  v21 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingHeroExplanationViewController *)self setBodyLabel:v21];

  v22 = [(HROnboardingHeroExplanationViewController *)self bodyString];
  v23 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v23 setText:v22];

  v24 = [MEMORY[0x277D75348] secondaryLabelColor];
  v25 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v25 setTextColor:v24];

  v26 = [(HROnboardingHeroExplanationViewController *)self _bodyFont];
  v27 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v27 setFont:v26];

  v28 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v29 setNumberOfLines:0];

  v30 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:-[HROnboardingHeroExplanationViewController accessibilityGroupID](self suffix:{"accessibilityGroupID"), @"Onboarding.HowItWorksDescription"}];
  v31 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v31 setAccessibilityIdentifier:v30];

  v32 = [(HROnboardingHeroExplanationViewController *)self contentView];
  v33 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v32 addSubview:v33];

  if ([(HROnboardingHeroExplanationViewController *)self isOnboarding])
  {
    v34 = [(HROnboardingHeroExplanationViewController *)self buttonTitleString];
    v40[0] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v36 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v35 footerText:0 boldFooterText:0 delegate:self];
    [(HROnboardingHeroExplanationViewController *)self setStackedButtonView:v36];

    v37 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [v37 setFixedBottomButtonSpacing:1];

    v38 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)setUpConstraints
{
  v32.receiver = self;
  v32.super_class = HROnboardingHeroExplanationViewController;
  [(HROnboardingHeroExplanationViewController *)&v32 setUpConstraints];
  v3 = [(HROnboardingHeroExplanationViewController *)self heroView];

  if (v3)
  {
    v4 = [(HROnboardingHeroExplanationViewController *)self heroView];
    v5 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
    [v4 hk_alignHorizontalConstraintsWithView:v5 margin:0.0];

    v6 = [(HROnboardingHeroExplanationViewController *)self heroView];
    v7 = [v6 topAnchor];
    v8 = [(HROnboardingHeroExplanationViewController *)self contentView];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:29.0];
    [v10 setActive:1];

    v11 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
    v12 = [v11 topAnchor];
    v13 = [(HROnboardingHeroExplanationViewController *)self heroView];
    v14 = [v13 bottomAnchor];
    v15 = 29.0;
  }

  else
  {
    v11 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
    v12 = [v11 topAnchor];
    v13 = [(HROnboardingHeroExplanationViewController *)self contentView];
    v14 = [v13 topAnchor];
    [(HROnboardingHeroExplanationViewController *)self contentTop];
  }

  v16 = [v12 constraintEqualToAnchor:v14 constant:v15];
  [v16 setActive:1];

  v17 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  v18 = [(HROnboardingHeroExplanationViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v17 hrui_alignHorizontalConstraintsWithView:v18 insets:?];

  v19 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  v20 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v19 hk_alignHorizontalConstraintsWithView:v20 margin:0.0];

  v21 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  v22 = [v21 topAnchor];
  v23 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  v24 = [v23 lastBaselineAnchor];
  [(HROnboardingHeroExplanationViewController *)self _titleLastBaselineToBodyTop];
  v25 = [v22 constraintEqualToAnchor:v24 constant:?];
  [v25 setActive:1];

  v26 = [(HROnboardingHeroExplanationViewController *)self contentView];
  v27 = [v26 bottomAnchor];
  v28 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:*MEMORY[0x277D12778]];
  [(HROnboardingHeroExplanationViewController *)self setContentViewBottomConstraint:v30];

  v31 = [(HROnboardingHeroExplanationViewController *)self contentViewBottomConstraint];
  [v31 setActive:1];
}

- (void)setTextAlignment:(int64_t)a3
{
  self->_textAlignment = a3;
  v5 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
  [v5 setTextAlignment:a3];

  v6 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
  [v6 setTextAlignment:a3];
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    v5 = [(HROnboardingHeroExplanationViewController *)self delegate];
    [v5 stepForward];
  }
}

- (void)_setUpButtonFooterView
{
  if ([(HROnboardingHeroExplanationViewController *)self isOnboarding])
  {
    v3 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    HKHealthUIBuddyDirectionalEdgeInsets();
    [(HROnboardingHeroExplanationViewController *)self setFooterView:v3 insets:?];

    v4 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    v5 = [(HROnboardingHeroExplanationViewController *)self view];
    [v4 alignBlurViewHorizontalConstraintsWithView:v5];

    v6 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [v6 setBlurHidden:0];

    v7 = [(HROnboardingHeroExplanationViewController *)self stackedButtonViewLastButtonMode];
    v8 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [v8 setLastButtonMode:v7];
  }
}

- (void)_adjustButtonFooterViewLocationForViewContentHeight
{
  v44[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingHeroExplanationViewController *)self isOnboarding])
  {
    v3 = [(HROnboardingHeroExplanationViewController *)self view];
    [v3 layoutIfNeeded];

    v4 = [(HROnboardingHeroExplanationViewController *)self view];
    v5 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    v6 = [v5 buttons];
    v7 = [v6 firstObject];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
    [v4 convertRect:v16 fromView:{v9, v11, v13, v15}];
    v18 = v17;

    v19 = [(HROnboardingHeroExplanationViewController *)self contentView];
    [v19 frame];
    v21 = v20;
    v22 = [(HROnboardingHeroExplanationViewController *)self view];
    [v22 safeAreaInsets];
    v24 = v18 - v23;

    if (v21 > v24)
    {
      [(HROnboardingHeroExplanationViewController *)self removeFooterView];
      v25 = [(HROnboardingHeroExplanationViewController *)self contentView];
      v26 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      [v25 addSubview:v26];

      v27 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      [v27 setBlurHidden:1];

      v28 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      v29 = [(HROnboardingHeroExplanationViewController *)self titleLabel];
      [v28 hk_alignHorizontalConstraintsWithView:v29 margin:0.0];

      v30 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      v31 = [v30 topAnchor];
      v32 = [(HROnboardingHeroExplanationViewController *)self bodyLabel];
      v33 = [v32 bottomAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      [v34 setActive:1];

      v35 = MEMORY[0x277CCAAD0];
      v36 = [(HROnboardingHeroExplanationViewController *)self contentViewBottomConstraint];
      v44[0] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [v35 deactivateConstraints:v37];

      [(HROnboardingHeroExplanationViewController *)self setContentViewBottomConstraint:0];
      v38 = [(HROnboardingHeroExplanationViewController *)self contentView];
      v39 = [v38 bottomAnchor];
      v40 = [(HROnboardingHeroExplanationViewController *)self stackedButtonView];
      v41 = [v40 bottomAnchor];
      v42 = [v39 constraintEqualToAnchor:v41];
      [(HROnboardingHeroExplanationViewController *)self setContentViewBottomConstraint:v42];

      v43 = [(HROnboardingHeroExplanationViewController *)self contentViewBottomConstraint];
      [v43 setActive:1];
    }
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingHeroExplanationViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (double)_titleTopToFirstBaselineLeading
{
  v2 = [MEMORY[0x277D759A0] hrui_currentDeviceHas5Point8InchScreen];
  result = 36.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

- (double)_titleTopToFirstBaseline
{
  v3 = [(HROnboardingHeroExplanationViewController *)self _titleFont];
  [(HROnboardingHeroExplanationViewController *)self _titleTopToFirstBaselineLeading];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)_titleLastBaselineToBodyTop
{
  v2 = [(HROnboardingHeroExplanationViewController *)self _titleFont];
  [v2 _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingHeroExplanationViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

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