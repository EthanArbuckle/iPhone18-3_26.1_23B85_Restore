@interface HKOnboardingBaseViewController
- (double)_titleTopToFirstBaselineLeading;
- (double)contentTop;
- (double)titleTopToFirstBaseline;
- (id)_buttonForButtonType:(int64_t)type;
- (id)_cancelButton;
- (id)_cancelWithConfirmButton;
- (id)_closeButton;
- (id)_skipButton;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (id)titleFont;
- (void)_adjustScrollViewForFooterView;
- (void)_setUpNavigationBar;
- (void)cancelWithConfirmButtonTapped:(id)tapped;
- (void)closeButtonTapped:(id)tapped;
- (void)presentAlertWithMessage:(id)message title:(id)title;
- (void)presentLearnMoreAlertWithMessage:(id)message learnMoreTapped:(id)tapped;
- (void)removeFooterView;
- (void)setFooterView:(id)view insets:(NSDirectionalEdgeInsets)insets;
- (void)setLeftButtonType:(int64_t)type;
- (void)setRightButtonType:(int64_t)type;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKOnboardingBaseViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = HKOnboardingBaseViewController;
  result = [(HKOnboardingBaseViewController *)&v7 initWithNibName:0 bundle:0];
  if (result)
  {
    *(result + 992) = onboarding;
    *(result + 125) = version;
  }

  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKOnboardingBaseViewController;
  [(HKOnboardingBaseViewController *)&v5 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(HKOnboardingBaseViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(HKOnboardingBaseViewController *)self setUpUI];
  [(HKOnboardingBaseViewController *)self setUpConstraints];
  if ([(HKOnboardingBaseViewController *)self isOnboarding])
  {
    [(HKOnboardingBaseViewController *)self _setUpNavigationBar];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HKOnboardingBaseViewController;
  [(HKOnboardingBaseViewController *)&v5 viewWillAppear:appear];
  scrollView = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKOnboardingBaseViewController;
  [(HKOnboardingBaseViewController *)&v4 viewDidLayoutSubviews];
  traitCollection = [(HKOnboardingBaseViewController *)self traitCollection];
  -[HKOnboardingBaseViewController updateUserInterfaceForStyle:](self, "updateUserInterfaceForStyle:", [traitCollection userInterfaceStyle]);
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HKOnboardingBaseViewController;
  changeCopy = change;
  [(HKOnboardingBaseViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HKOnboardingBaseViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(HKOnboardingBaseViewController *)self updateUserInterfaceForStyle:userInterfaceStyle];
  }
}

- (void)setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [(HKOnboardingBaseViewController *)self setScrollView:v3];

  scrollView = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView setAlwaysBounceVertical:1];

  scrollView2 = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(HKOnboardingBaseViewController *)self view];
  scrollView3 = [(HKOnboardingBaseViewController *)self scrollView];
  [view addSubview:scrollView3];

  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKOnboardingBaseViewController *)self setContentView:v8];

  contentView = [(HKOnboardingBaseViewController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView4 = [(HKOnboardingBaseViewController *)self scrollView];
  contentView2 = [(HKOnboardingBaseViewController *)self contentView];
  [scrollView4 addSubview:contentView2];
}

- (void)setUpConstraints
{
  scrollView = [(HKOnboardingBaseViewController *)self scrollView];
  view = [(HKOnboardingBaseViewController *)self view];
  [scrollView hk_alignHorizontalConstraintsWithView:view margin:0.0];

  scrollView2 = [(HKOnboardingBaseViewController *)self scrollView];
  topAnchor = [scrollView2 topAnchor];
  view2 = [(HKOnboardingBaseViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  scrollView3 = [(HKOnboardingBaseViewController *)self scrollView];
  bottomAnchor = [scrollView3 bottomAnchor];
  view3 = [(HKOnboardingBaseViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(HKOnboardingBaseViewController *)self setScrollViewBottomConstraint:v14];

  scrollViewBottomConstraint = [(HKOnboardingBaseViewController *)self scrollViewBottomConstraint];
  [scrollViewBottomConstraint setActive:1];

  contentView = [(HKOnboardingBaseViewController *)self contentView];
  scrollView4 = [(HKOnboardingBaseViewController *)self scrollView];
  [contentView hk_alignHorizontalConstraintsWithView:scrollView4 margin:0.0];

  contentView2 = [(HKOnboardingBaseViewController *)self contentView];
  scrollView5 = [(HKOnboardingBaseViewController *)self scrollView];
  [contentView2 hk_alignVerticalConstraintsWithView:scrollView5 margin:0.0];

  contentView3 = [(HKOnboardingBaseViewController *)self contentView];
  view4 = [(HKOnboardingBaseViewController *)self view];
  [contentView3 hk_alignHorizontalConstraintsWithView:view4 margin:0.0];
}

- (void)setFooterView:(id)view insets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  leading = insets.leading;
  objc_storeStrong(&self->_footerView, view);
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(HKOnboardingBaseViewController *)self view];
  [view addSubview:viewCopy];

  leadingAnchor = [viewCopy leadingAnchor];
  view2 = [(HKOnboardingBaseViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:leading];
  [v13 setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  view3 = [(HKOnboardingBaseViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-trailing];
  [v17 setActive:1];

  bottomAnchor = [viewCopy bottomAnchor];

  view4 = [(HKOnboardingBaseViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  [(HKOnboardingBaseViewController *)self _adjustScrollViewForFooterView];
}

- (void)removeFooterView
{
  footerView = [(HKOnboardingBaseViewController *)self footerView];
  [footerView removeFromSuperview];

  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  scrollView = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView setContentInset:{v4, v5, v6, v7}];

  scrollView2 = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView2 setScrollIndicatorInsets:{v4, v5, v6, v7}];
}

- (void)setLeftButtonType:(int64_t)type
{
  self->_leftButtonType = type;
  v5 = [(HKOnboardingBaseViewController *)self _buttonForButtonType:?];
  navigationItem = [(HKOnboardingBaseViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v5];
}

- (void)setRightButtonType:(int64_t)type
{
  self->_rightButtonType = type;
  v5 = [(HKOnboardingBaseViewController *)self _buttonForButtonType:?];
  navigationItem = [(HKOnboardingBaseViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];
}

- (void)cancelWithConfirmButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  cancelWithConfirmAlertTitle = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertTitle];
  if (![cancelWithConfirmAlertTitle length])
  {
    goto LABEL_6;
  }

  cancelWithConfirmAlertContinueActionTitle = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertContinueActionTitle];
  if (![cancelWithConfirmAlertContinueActionTitle length])
  {

LABEL_6:
    goto LABEL_7;
  }

  cancelWithConfirmAlertAbortActionTitle = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertAbortActionTitle];
  v8 = [cancelWithConfirmAlertAbortActionTitle length];

  if (!v8)
  {
LABEL_7:
    [(HKOnboardingBaseViewController *)self closeButtonTapped:tappedCopy];
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E69DC650];
  cancelWithConfirmAlertTitle2 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertTitle];
  v11 = [v9 alertControllerWithTitle:0 message:cancelWithConfirmAlertTitle2 preferredStyle:0];

  v12 = MEMORY[0x1E69DC648];
  cancelWithConfirmAlertAbortActionTitle2 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertAbortActionTitle];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __64__HKOnboardingBaseViewController_cancelWithConfirmButtonTapped___block_invoke;
  v23 = &unk_1E81B6F00;
  selfCopy = self;
  v14 = tappedCopy;
  v25 = v14;
  v15 = [v12 actionWithTitle:cancelWithConfirmAlertAbortActionTitle2 style:0 handler:&v20];

  v16 = MEMORY[0x1E69DC648];
  v17 = [(HKOnboardingBaseViewController *)self cancelWithConfirmAlertContinueActionTitle:v20];
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];

  [v11 addAction:v15];
  [v11 addAction:v18];
  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setSourceItem:v14];

  [(HKOnboardingBaseViewController *)self presentViewController:v11 animated:1 completion:0];
LABEL_8:
}

- (void)closeButtonTapped:(id)tapped
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

- (void)presentAlertWithMessage:(id)message title:(id)title
{
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"ONBOARDING_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v5 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(HKOnboardingBaseViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)presentLearnMoreAlertWithMessage:(id)message learnMoreTapped:(id)tapped
{
  tappedCopy = tapped;
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:message preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"ONBOARDING_LEARN_MORE_WITH_ELLIPSES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__HKOnboardingBaseViewController_presentLearnMoreAlertWithMessage_learnMoreTapped___block_invoke;
  v17[3] = &unk_1E81B8440;
  v18 = tappedCopy;
  v10 = tappedCopy;
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

- (id)_buttonForButtonType:(int64_t)type
{
  _closeButton = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      _closeButton = [(HKOnboardingBaseViewController *)self _closeButton];
    }

    else if (type == 4)
    {
      _closeButton = [(HKOnboardingBaseViewController *)self _skipButton];
    }
  }

  else if (type == 1)
  {
    _closeButton = [(HKOnboardingBaseViewController *)self _cancelWithConfirmButton];
  }

  else if (type == 2)
  {
    _closeButton = [(HKOnboardingBaseViewController *)self _cancelButton];
  }

  return _closeButton;
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
  navigationController = [(HKOnboardingBaseViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _setHidesShadow:1];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  navigationController2 = [(HKOnboardingBaseViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setBarTintColor:systemBackgroundColor];
}

- (void)_adjustScrollViewForFooterView
{
  scrollView = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  footerView = [(HKOnboardingBaseViewController *)self footerView];
  [footerView layoutIfNeeded];

  footerView2 = [(HKOnboardingBaseViewController *)self footerView];
  [footerView2 frame];
  Height = CGRectGetHeight(v19);
  hk_window = [(UIViewController *)self hk_window];
  [hk_window safeAreaInsets];
  v15 = Height - v14;

  scrollView2 = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView2 setContentInset:{v5, v7, v15, v9}];

  scrollView3 = [(HKOnboardingBaseViewController *)self scrollView];
  [scrollView3 setScrollIndicatorInsets:{v5, v7, v15, v9}];
}

- (id)titleFont
{
  v2 = MEMORY[0x1E69DB878];
  _titleFontTextStyle = [(HKOnboardingBaseViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (double)_titleTopToFirstBaselineLeading
{
  isOnboarding = [(HKOnboardingBaseViewController *)self isOnboarding];
  hk_currentDeviceHas5Point8InchScreen = [MEMORY[0x1E69DCEB0] hk_currentDeviceHas5Point8InchScreen];
  result = 36.0;
  if (hk_currentDeviceHas5Point8InchScreen)
  {
    result = 44.0;
  }

  v5 = 40.0;
  if (hk_currentDeviceHas5Point8InchScreen)
  {
    v5 = 48.0;
  }

  if (!isOnboarding)
  {
    return v5;
  }

  return result;
}

- (double)titleTopToFirstBaseline
{
  titleFont = [(HKOnboardingBaseViewController *)self titleFont];
  [(HKOnboardingBaseViewController *)self _titleTopToFirstBaselineLeading];
  [titleFont _scaledValueForValue:?];
  v5 = v4;

  return v5;
}

- (double)contentTop
{
  isViewLoaded = [(HKOnboardingBaseViewController *)self isViewLoaded];
  result = 0.0;
  if (isViewLoaded)
  {
    view = [(HKOnboardingBaseViewController *)self view];
    [view frame];
    Height = CGRectGetHeight(v10);
    navigationController = [(HKOnboardingBaseViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
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