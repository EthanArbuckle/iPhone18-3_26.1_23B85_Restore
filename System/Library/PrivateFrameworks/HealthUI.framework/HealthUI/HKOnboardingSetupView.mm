@interface HKOnboardingSetupView
- (HKOnboardingSetupView)initWithFrame:(CGRect)frame;
- (HKOnboardingSetupViewDelegate)delegate;
- (NSString)bodyString;
- (NSString)buttonTitleString;
- (NSString)titleString;
- (id)createHeroView;
- (int64_t)accessibilityGroupID;
- (void)_didTapOnboardingButton;
- (void)_setUpConstraints;
@end

@implementation HKOnboardingSetupView

- (HKOnboardingSetupView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = HKOnboardingSetupView;
  v3 = [(HKOnboardingSetupView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(HKOnboardingSetupView *)v3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    createHeroView = [(HKOnboardingSetupView *)v3 createHeroView];
    heroView = v3->_heroView;
    v3->_heroView = createHeroView;

    [(UIView *)v3->_heroView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_heroView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setTextAlignment:4];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    titleString = [(HKOnboardingSetupView *)v3 titleString];
    [(UILabel *)v3->_titleLabel setText:titleString];

    v11 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:-[HKOnboardingSetupView accessibilityGroupID](v3 suffix:{"accessibilityGroupID"), @"Welcome.SetupTitle"}];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:v11];

    v12 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:2];
    [(UILabel *)v3->_titleLabel setFont:v12];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v13;

    [(UILabel *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_bodyLabel setNumberOfLines:0];
    [(UILabel *)v3->_bodyLabel setTextAlignment:4];
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_bodyLabel setTextColor:labelColor2];

    bodyString = [(HKOnboardingSetupView *)v3 bodyString];
    [(UILabel *)v3->_bodyLabel setText:bodyString];

    v17 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v3->_bodyLabel setFont:v17];

    [(UILabel *)v3->_bodyLabel setAdjustsFontForContentSizeCategory:1];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_bodyLabel];
    v18 = MEMORY[0x1E69DC738];
    v19 = HKHealthKeyColor();
    buttonTitleString = [(HKOnboardingSetupView *)v3 buttonTitleString];
    v21 = [v18 hk_multiLineRoundRectButtonTintedWithColor:v19 title:buttonTitleString target:v3 action:sel__didTapOnboardingButton];
    onboardingButton = v3->_onboardingButton;
    v3->_onboardingButton = v21;

    v23 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:-[HKOnboardingSetupView accessibilityGroupID](v3 suffix:{"accessibilityGroupID"), @"Welcome.SetupButton"}];
    [(UIButton *)v3->_onboardingButton setAccessibilityIdentifier:v23];

    layer = [(UIButton *)v3->_onboardingButton layer];
    [layer setCornerRadius:24.0];

    [(UIButton *)v3->_onboardingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_onboardingButton];
    [(HKOnboardingSetupView *)v3 _setUpConstraints];
  }

  return v3;
}

- (void)_setUpConstraints
{
  heroView = [(HKOnboardingSetupView *)self heroView];
  centerXAnchor = [heroView centerXAnchor];
  safeAreaLayoutGuide = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 setActive:1];

  heroView2 = [(HKOnboardingSetupView *)self heroView];
  topAnchor = [heroView2 topAnchor];
  safeAreaLayoutGuide2 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v12 setActive:1];

  titleLabel = [(HKOnboardingSetupView *)self titleLabel];
  topAnchor3 = [titleLabel topAnchor];
  heroView3 = [(HKOnboardingSetupView *)self heroView];
  bottomAnchor = [heroView3 bottomAnchor];
  v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:17.0];
  [v17 setActive:1];

  titleLabel2 = [(HKOnboardingSetupView *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  safeAreaLayoutGuide3 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v22 setActive:1];

  titleLabel3 = [(HKOnboardingSetupView *)self titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  safeAreaLayoutGuide4 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v27 setActive:1];

  bodyLabel = [(HKOnboardingSetupView *)self bodyLabel];
  topAnchor4 = [bodyLabel topAnchor];
  titleLabel4 = [(HKOnboardingSetupView *)self titleLabel];
  bottomAnchor2 = [titleLabel4 bottomAnchor];
  v32 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
  [v32 setActive:1];

  bodyLabel2 = [(HKOnboardingSetupView *)self bodyLabel];
  leadingAnchor3 = [bodyLabel2 leadingAnchor];
  safeAreaLayoutGuide5 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide5 leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v37 setActive:1];

  bodyLabel3 = [(HKOnboardingSetupView *)self bodyLabel];
  trailingAnchor3 = [bodyLabel3 trailingAnchor];
  safeAreaLayoutGuide6 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide6 trailingAnchor];
  v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  [v42 setActive:1];

  onboardingButton = [(HKOnboardingSetupView *)self onboardingButton];
  topAnchor5 = [onboardingButton topAnchor];
  bodyLabel4 = [(HKOnboardingSetupView *)self bodyLabel];
  bottomAnchor3 = [bodyLabel4 bottomAnchor];
  v47 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:17.0];
  [v47 setActive:1];

  onboardingButton2 = [(HKOnboardingSetupView *)self onboardingButton];
  leadingAnchor5 = [onboardingButton2 leadingAnchor];
  safeAreaLayoutGuide7 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide7 leadingAnchor];
  v52 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  [v52 setActive:1];

  onboardingButton3 = [(HKOnboardingSetupView *)self onboardingButton];
  trailingAnchor5 = [onboardingButton3 trailingAnchor];
  safeAreaLayoutGuide8 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide8 trailingAnchor];
  v57 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  [v57 setActive:1];

  onboardingButton4 = [(HKOnboardingSetupView *)self onboardingButton];
  bottomAnchor4 = [onboardingButton4 bottomAnchor];
  safeAreaLayoutGuide9 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide9 bottomAnchor];
  v61 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-16.0];
  [v61 setActive:1];
}

- (void)_didTapOnboardingButton
{
  delegate = [(HKOnboardingSetupView *)self delegate];
  [delegate beginOnboardingForOnboardingSetupView:self];
}

- (HKOnboardingSetupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createHeroView
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);

  return v2;
}

- (NSString)titleString
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return &stru_1F42FFBE0;
}

- (NSString)bodyString
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return &stru_1F42FFBE0;
}

- (NSString)buttonTitleString
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return &stru_1F42FFBE0;
}

- (int64_t)accessibilityGroupID
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

@end