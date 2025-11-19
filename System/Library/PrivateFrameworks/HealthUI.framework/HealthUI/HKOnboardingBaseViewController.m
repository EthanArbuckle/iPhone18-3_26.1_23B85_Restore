@interface HKOnboardingBaseViewController
- (double)_titleTopToFirstBaselineLeading;
- (double)contentTop;
- (double)titleTopToFirstBaseline;
- (id)_buttonForButtonType:(int64_t)a3;
- (id)_cancelButton;
- (id)_cancelWithConfirmButton;
- (id)_closeButton;
- (id)_skipButton;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (id)titleFont;
- (void)_adjustScrollViewForFooterView;
- (void)_setUpNavigationBar;
- (void)cancelWithConfirmButtonTapped:(id)a3;
- (void)closeButtonTapped:(id)a3;
- (void)presentAlertWithMessage:(id)a3 title:(id)a4;
- (void)presentLearnMoreAlertWithMessage:(id)a3 learnMoreTapped:(id)a4;
- (void)removeFooterView;
- (void)setFooterView:(id)a3 insets:(NSDirectionalEdgeInsets)a4;
- (void)setLeftButtonType:(int64_t)a3;
- (void)setRightButtonType:(int64_t)a3;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKOnboardingBaseViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = HKOnboardingBaseViewController;
  result = [(HKOnboardingBaseViewController *)&v7 initWithNibName:0 bundle:0];
  if (result)
  {
    *(result + 992) = a3;
    *(result + 125) = a4;
  }

  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKOnboardingBaseViewController;
  [(HKOnboardingBaseViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(HKOnboardingBaseViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(HKOnboardingBaseViewController *)self setUpUI];
  [(HKOnboardingBaseViewController *)self setUpConstraints];
  if ([(HKOnboardingBaseViewController *)self isOnboarding])
  {
    [(HKOnboardingBaseViewController *)self _setUpNavigationBar];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKOnboardingBaseViewController;
  [(HKOnboardingBaseViewController *)&v5 viewWillAppear:a3];
  v4 = [(HKOnboardingBaseViewController *)self scrollView];
  [v4 flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKOnboardingBaseViewController;
  [(HKOnboardingBaseViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(HKOnboardingBaseViewController *)self traitCollection];
  -[HKOnboardingBaseViewController updateUserInterfaceForStyle:](self, "updateUserInterfaceForStyle:", [v3 userInterfaceStyle]);
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKOnboardingBaseViewController;
  v4 = a3;
  [(HKOnboardingBaseViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(HKOnboardingBaseViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];

  v7 = [v4 userInterfaceStyle];
  if (v6 != v7)
  {
    [(HKOnboardingBaseViewController *)self updateUserInterfaceForStyle:v6];
  }
}

- (void)setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [(HKOnboardingBaseViewController *)self setScrollView:v3];

  v4 = [(HKOnboardingBaseViewController *)self scrollView];
  [v4 setAlwaysBounceVertical:1];

  v5 = [(HKOnboardingBaseViewController *)self scrollView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HKOnboardingBaseViewController *)self view];
  v7 = [(HKOnboardingBaseViewController *)self scrollView];
  [v6 addSubview:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKOnboardingBaseViewController *)self setContentView:v8];

  v9 = [(HKOnboardingBaseViewController *)self contentView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HKOnboardingBaseViewController *)self scrollView];
  v10 = [(HKOnboardingBaseViewController *)self contentView];
  [v11 addSubview:v10];
}

- (void)setUpConstraints
{
  v3 = [(HKOnboardingBaseViewController *)self scrollView];
  v4 = [(HKOnboardingBaseViewController *)self view];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HKOnboardingBaseViewController *)self scrollView];
  v6 = [v5 topAnchor];
  v7 = [(HKOnboardingBaseViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(HKOnboardingBaseViewController *)self scrollView];
  v11 = [v10 bottomAnchor];
  v12 = [(HKOnboardingBaseViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [(HKOnboardingBaseViewController *)self setScrollViewBottomConstraint:v14];

  v15 = [(HKOnboardingBaseViewController *)self scrollViewBottomConstraint];
  [v15 setActive:1];

  v16 = [(HKOnboardingBaseViewController *)self contentView];
  v17 = [(HKOnboardingBaseViewController *)self scrollView];
  [v16 hk_alignHorizontalConstraintsWithView:v17 margin:0.0];

  v18 = [(HKOnboardingBaseViewController *)self contentView];
  v19 = [(HKOnboardingBaseViewController *)self scrollView];
  [v18 hk_alignVerticalConstraintsWithView:v19 margin:0.0];

  v21 = [(HKOnboardingBaseViewController *)self contentView];
  v20 = [(HKOnboardingBaseViewController *)self view];
  [v21 hk_alignHorizontalConstraintsWithView:v20 margin:0.0];
}

- (void)setFooterView:(id)a3 insets:(NSDirectionalEdgeInsets)a4
{
  trailing = a4.trailing;
  leading = a4.leading;
  objc_storeStrong(&self->_footerView, a3);
  v8 = a3;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(HKOnboardingBaseViewController *)self view];
  [v9 addSubview:v8];

  v10 = [v8 leadingAnchor];
  v11 = [(HKOnboardingBaseViewController *)self view];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:leading];
  [v13 setActive:1];

  v14 = [v8 trailingAnchor];
  v15 = [(HKOnboardingBaseViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:-trailing];
  [v17 setActive:1];

  v18 = [v8 bottomAnchor];

  v19 = [(HKOnboardingBaseViewController *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  [(HKOnboardingBaseViewController *)self _adjustScrollViewForFooterView];
}

- (void)removeFooterView
{
  v3 = [(HKOnboardingBaseViewController *)self footerView];
  [v3 removeFromSuperview];

  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  v8 = [(HKOnboardingBaseViewController *)self scrollView];
  [v8 setContentInset:{v4, v5, v6, v7}];

  v9 = [(HKOnboardingBaseViewController *)self scrollView];
  [v9 setScrollIndicatorInsets:{v4, v5, v6, v7}];
}

- (void)setLeftButtonType:(int64_t)a3
{
  self->_leftButtonType = a3;
  v5 = [(HKOnboardingBaseViewController *)self _buttonForButtonType:?];
  v4 = [(HKOnboardingBaseViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v5];
}

- (void)setRightButtonType:(int64_t)a3
{
  self->_rightButtonType = a3;
  v5 = [(HKOnboardingBaseViewController *)self _buttonForButtonType:?];
  v4 = [(HKOnboardingBaseViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v5];
}

- (void)cancelWithConfirmButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertTitle];
  if (![v5 length])
  {
    goto LABEL_6;
  }

  v6 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertContinueActionTitle];
  if (![v6 length])
  {

LABEL_6:
    goto LABEL_7;
  }

  v7 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertAbortActionTitle];
  v8 = [v7 length];

  if (!v8)
  {
LABEL_7:
    [(HKOnboardingBaseViewController *)self closeButtonTapped:v4];
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E69DC650];
  v10 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertTitle];
  v11 = [v9 alertControllerWithTitle:0 message:v10 preferredStyle:0];

  v12 = MEMORY[0x1E69DC648];
  v13 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertAbortActionTitle];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __64__HKOnboardingBaseViewController_cancelWithConfirmButtonTapped___block_invoke;
  v23 = &unk_1E81B6F00;
  v24 = self;
  v14 = v4;
  v25 = v14;
  v15 = [v12 actionWithTitle:v13 style:0 handler:&v20];

  v16 = MEMORY[0x1E69DC648];
  v17 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertContinueActionTitle:v20];
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];

  [v11 addAction:v15];
  [v11 addAction:v18];
  v19 = [v11 popoverPresentationController];
  [v19 setSourceItem:v14];

  [(HKOnboardingBaseViewController *)self presentViewController:v11 animated:1 completion:0];
LABEL_8:
}

- (void)closeButtonTapped:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__HKOnboardingBaseViewController_closeButtonTapped___block_invoke;
  v3[3] = &unk_1E81B55A8;
  v3[4] = self;
  [(HKOnboardingBaseViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

void __52__HKOnboardingBaseViewController_closeButtonTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 onboardingCancelled];
  }
}

- (void)presentAlertWithMessage:(id)a3 title:(id)a4
{
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a4 message:a3 preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"ONBOARDING_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v5 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(HKOnboardingBaseViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)presentLearnMoreAlertWithMessage:(id)a3 learnMoreTapped:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:a3 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"ONBOARDING_LEARN_MORE_WITH_ELLIPSES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__HKOnboardingBaseViewController_presentLearnMoreAlertWithMessage_learnMoreTapped___block_invoke;
  v17[3] = &unk_1E81B8440;
  v18 = v5;
  v10 = v5;
  v11 = [v7 actionWithTitle:v9 style:0 handler:v17];

  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"ONBOARDING_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:0];

  [v6 addAction:v11];
  [v6 addAction:v15];
  [v6 setPreferredAction:v15];
  [(HKOnboardingBaseViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_buttonForButtonType:(int64_t)a3
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = [(HKOnboardingBaseViewController *)self _closeButton];
    }

    else if (a3 == 4)
    {
      v4 = [(HKOnboardingBaseViewController *)self _skipButton];
    }
  }

  else if (a3 == 1)
  {
    v4 = [(HKOnboardingBaseViewController *)self _cancelWithConfirmButton];
  }

  else if (a3 == 2)
  {
    v4 = [(HKOnboardingBaseViewController *)self _cancelButton];
  }

  return v4;
}

- (id)_cancelWithConfirmButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelWithConfirmButtonTapped_];
  v3 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:0 suffix:@"Onboarding.cancelWithConfirmButton"];
  [v2 setAccessibilityIdentifier:v3];

  return v2;
}

- (id)_cancelButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_closeButtonTapped_];
  v3 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:0 suffix:@"Onboarding.cancelButton"];
  [v2 setAccessibilityIdentifier:v3];

  return v2;
}

- (id)_closeButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_closeButtonTapped_];
  v3 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:0 suffix:@"Onboarding.closeButton"];
  [v2 setAccessibilityIdentifier:v3];

  return v2;
}

- (id)_skipButton
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"ONBOARDING_SKIP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel_skipButtonTapped_];

  v7 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:0 suffix:@"Onboarding.skipButton"];
  [v6 setAccessibilityIdentifier:v7];

  return v6;
}

- (void)_setUpNavigationBar
{
  v3 = [(HKOnboardingBaseViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 _setHidesShadow:1];

  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [(HKOnboardingBaseViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setBarTintColor:v7];
}

- (void)_adjustScrollViewForFooterView
{
  v3 = [(HKOnboardingBaseViewController *)self scrollView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(HKOnboardingBaseViewController *)self footerView];
  [v10 layoutIfNeeded];

  v11 = [(HKOnboardingBaseViewController *)self footerView];
  [v11 frame];
  Height = CGRectGetHeight(v19);
  v13 = [(UIViewController *)self hk_window];
  [v13 safeAreaInsets];
  v15 = Height - v14;

  v16 = [(HKOnboardingBaseViewController *)self scrollView];
  [v16 setContentInset:{v5, v7, v15, v9}];

  v17 = [(HKOnboardingBaseViewController *)self scrollView];
  [v17 setScrollIndicatorInsets:{v5, v7, v15, v9}];
}

- (id)titleFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [(HKOnboardingBaseViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (double)_titleTopToFirstBaselineLeading
{
  v2 = [(HKOnboardingBaseViewController *)self isOnboarding];
  v3 = [MEMORY[0x1E69DCEB0] hk_currentDeviceHas5Point8InchScreen];
  result = 36.0;
  if (v3)
  {
    result = 44.0;
  }

  v5 = 40.0;
  if (v3)
  {
    v5 = 48.0;
  }

  if (!v2)
  {
    return v5;
  }

  return result;
}

- (double)titleTopToFirstBaseline
{
  v3 = [(HKOnboardingBaseViewController *)self titleFont];
  [(HKOnboardingBaseViewController *)self _titleTopToFirstBaselineLeading];
  [v3 _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)contentTop
{
  v3 = [(HKOnboardingBaseViewController *)self isViewLoaded];
  result = 0.0;
  if (v3)
  {
    v5 = [(HKOnboardingBaseViewController *)self view];
    [v5 frame];
    Height = CGRectGetHeight(v10);
    v7 = [(HKOnboardingBaseViewController *)self navigationController];
    v8 = [v7 navigationBar];
    [v8 frame];
    v9 = -(CGRectGetHeight(v11) - Height * 0.09);

    result = 0.0;
    if (v9 >= 0.0)
    {
      return v9;
    }
  }

  return result;
}

@end