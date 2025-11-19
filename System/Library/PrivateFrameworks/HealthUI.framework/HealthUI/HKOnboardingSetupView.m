@interface HKOnboardingSetupView
- (HKOnboardingSetupView)initWithFrame:(CGRect)a3;
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

- (HKOnboardingSetupView)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = HKOnboardingSetupView;
  v3 = [(HKOnboardingSetupView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(HKOnboardingSetupView *)v3 setBackgroundColor:v4];

    v5 = [(HKOnboardingSetupView *)v3 createHeroView];
    heroView = v3->_heroView;
    v3->_heroView = v5;

    [(UIView *)v3->_heroView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_heroView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setTextAlignment:4];
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v9];

    v10 = [(HKOnboardingSetupView *)v3 titleString];
    [(UILabel *)v3->_titleLabel setText:v10];

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
    v15 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_bodyLabel setTextColor:v15];

    v16 = [(HKOnboardingSetupView *)v3 bodyString];
    [(UILabel *)v3->_bodyLabel setText:v16];

    v17 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v3->_bodyLabel setFont:v17];

    [(UILabel *)v3->_bodyLabel setAdjustsFontForContentSizeCategory:1];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_bodyLabel];
    v18 = MEMORY[0x1E69DC738];
    v19 = HKHealthKeyColor();
    v20 = [(HKOnboardingSetupView *)v3 buttonTitleString];
    v21 = [v18 hk_multiLineRoundRectButtonTintedWithColor:v19 title:v20 target:v3 action:sel__didTapOnboardingButton];
    onboardingButton = v3->_onboardingButton;
    v3->_onboardingButton = v21;

    v23 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:-[HKOnboardingSetupView accessibilityGroupID](v3 suffix:{"accessibilityGroupID"), @"Welcome.SetupButton"}];
    [(UIButton *)v3->_onboardingButton setAccessibilityIdentifier:v23];

    v24 = [(UIButton *)v3->_onboardingButton layer];
    [v24 setCornerRadius:24.0];

    [(UIButton *)v3->_onboardingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKOnboardingSetupView *)v3 addSubview:v3->_onboardingButton];
    [(HKOnboardingSetupView *)v3 _setUpConstraints];
  }

  return v3;
}

- (void)_setUpConstraints
{
  v3 = [(HKOnboardingSetupView *)self heroView];
  v4 = [v3 centerXAnchor];
  v5 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v6 = [v5 centerXAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(HKOnboardingSetupView *)self heroView];
  v9 = [v8 topAnchor];
  v10 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  [v12 setActive:1];

  v13 = [(HKOnboardingSetupView *)self titleLabel];
  v14 = [v13 topAnchor];
  v15 = [(HKOnboardingSetupView *)self heroView];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:17.0];
  [v17 setActive:1];

  v18 = [(HKOnboardingSetupView *)self titleLabel];
  v19 = [v18 leadingAnchor];
  v20 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
  [v22 setActive:1];

  v23 = [(HKOnboardingSetupView *)self titleLabel];
  v24 = [v23 trailingAnchor];
  v25 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-16.0];
  [v27 setActive:1];

  v28 = [(HKOnboardingSetupView *)self bodyLabel];
  v29 = [v28 topAnchor];
  v30 = [(HKOnboardingSetupView *)self titleLabel];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:2.0];
  [v32 setActive:1];

  v33 = [(HKOnboardingSetupView *)self bodyLabel];
  v34 = [v33 leadingAnchor];
  v35 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v36 = [v35 leadingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:16.0];
  [v37 setActive:1];

  v38 = [(HKOnboardingSetupView *)self bodyLabel];
  v39 = [v38 trailingAnchor];
  v40 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];
  [v42 setActive:1];

  v43 = [(HKOnboardingSetupView *)self onboardingButton];
  v44 = [v43 topAnchor];
  v45 = [(HKOnboardingSetupView *)self bodyLabel];
  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintEqualToAnchor:v46 constant:17.0];
  [v47 setActive:1];

  v48 = [(HKOnboardingSetupView *)self onboardingButton];
  v49 = [v48 leadingAnchor];
  v50 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v51 = [v50 leadingAnchor];
  v52 = [v49 constraintEqualToAnchor:v51 constant:16.0];
  [v52 setActive:1];

  v53 = [(HKOnboardingSetupView *)self onboardingButton];
  v54 = [v53 trailingAnchor];
  v55 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v56 = [v55 trailingAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:-16.0];
  [v57 setActive:1];

  v62 = [(HKOnboardingSetupView *)self onboardingButton];
  v58 = [v62 bottomAnchor];
  v59 = [(HKOnboardingSetupView *)self safeAreaLayoutGuide];
  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60 constant:-16.0];
  [v61 setActive:1];
}

- (void)_didTapOnboardingButton
{
  v3 = [(HKOnboardingSetupView *)self delegate];
  [v3 beginOnboardingForOnboardingSetupView:self];
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