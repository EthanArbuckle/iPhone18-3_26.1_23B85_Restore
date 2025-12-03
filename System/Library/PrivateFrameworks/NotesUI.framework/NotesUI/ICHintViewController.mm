@interface ICHintViewController
+ (void)initialize;
- (ICHintViewController)initWithRootViewController:(id)controller showsCloseButton:(BOOL)button hintTitle:(id)title hintSubtitle:(id)subtitle buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (UIButton)actionButton;
- (UIButton)closeButton;
- (UILabel)hintSubtitleLabel;
- (UILabel)hintTitleLabel;
- (UIStackView)actionButtonStackView;
- (UIStackView)contentStackView;
- (UIStackView)hintStackView;
- (UIView)actionButtonTopSpacerView;
- (UIView)actionButtonTrailingSpacerView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICHintViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    ICHintViewControllerActionButtonInsetHorizontal = 0x4030000000000000;
    ICHintViewControllerActionButtonInsetVertical = 0x4028000000000000;
    ICHintViewControllerActionButtonSpacing = 0x4028000000000000;
    ICHintViewControllerCloseButtonDimension = 0x403A000000000000;
    ICHintViewControllerContentSpacing = 0x4028000000000000;
    ICHintViewControllerOffsetX = 0xC03A000000000000;
    ICHintViewControllerOffsetY = 0x4059800000000000;
    ICHintViewControllerPadding = 0x4034000000000000;
    ICHintViewControllerTitleSubtitleSpacing = 0x3FF0000000000000;
    ICHintViewControllerWidth = 0x4074400000000000;
  }
}

- (ICHintViewController)initWithRootViewController:(id)controller showsCloseButton:(BOOL)button hintTitle:(id)title hintSubtitle:(id)subtitle buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  titleCopy = title;
  subtitleCopy = subtitle;
  buttonTitleCopy = buttonTitle;
  actionCopy = action;
  v24.receiver = self;
  v24.super_class = ICHintViewController;
  v19 = [(ICPillOrnamentViewController *)&v24 initWithRootViewController:controller contentAnchorPoint:1.0 sceneAnchorPoint:0.0 offset:1.0 cornerRadius:0.0, *&ICHintViewControllerOffsetX, *&ICHintViewControllerOffsetY, 0.0];
  v20 = v19;
  if (v19)
  {
    v19->_showsCloseButton = button;
    objc_storeStrong(&v19->_hintTitle, title);
    objc_storeStrong(&v20->_hintSubtitle, subtitle);
    objc_storeStrong(&v20->_buttonTitle, buttonTitle);
    v21 = _Block_copy(actionCopy);
    buttonAction = v20->_buttonAction;
    v20->_buttonAction = v21;
  }

  return v20;
}

- (void)viewDidLoad
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = ICHintViewController;
  [(ICHintViewController *)&v29 viewDidLoad];
  contentView = [(ICPillOrnamentViewController *)self contentView];
  contentStackView = [(ICHintViewController *)self contentStackView];
  [contentView addSubview:contentStackView];

  contentStackView2 = [(ICHintViewController *)self contentStackView];
  [contentStackView2 ic_addAnchorsToFillSuperviewWithPadding:*&ICHintViewControllerPadding];

  if ([(ICHintViewController *)self showsCloseButton])
  {
    contentStackView3 = [(ICHintViewController *)self contentStackView];
    closeButton = [(ICHintViewController *)self closeButton];
    [contentStackView3 addArrangedSubview:closeButton];
  }

  contentStackView4 = [(ICHintViewController *)self contentStackView];
  hintStackView = [(ICHintViewController *)self hintStackView];
  [contentStackView4 addArrangedSubview:hintStackView];

  hintStackView2 = [(ICHintViewController *)self hintStackView];
  hintTitleLabel = [(ICHintViewController *)self hintTitleLabel];
  [hintStackView2 addArrangedSubview:hintTitleLabel];

  hintStackView3 = [(ICHintViewController *)self hintStackView];
  hintSubtitleLabel = [(ICHintViewController *)self hintSubtitleLabel];
  [hintStackView3 addArrangedSubview:hintSubtitleLabel];

  hintStackView4 = [(ICHintViewController *)self hintStackView];
  actionButtonTopSpacerView = [(ICHintViewController *)self actionButtonTopSpacerView];
  [hintStackView4 addArrangedSubview:actionButtonTopSpacerView];

  actionButtonStackView = [(ICHintViewController *)self actionButtonStackView];
  actionButton = [(ICHintViewController *)self actionButton];
  [actionButtonStackView addArrangedSubview:actionButton];

  actionButtonStackView2 = [(ICHintViewController *)self actionButtonStackView];
  actionButtonTrailingSpacerView = [(ICHintViewController *)self actionButtonTrailingSpacerView];
  [actionButtonStackView2 addArrangedSubview:actionButtonTrailingSpacerView];

  hintStackView5 = [(ICHintViewController *)self hintStackView];
  actionButtonStackView3 = [(ICHintViewController *)self actionButtonStackView];
  [hintStackView5 addArrangedSubview:actionButtonStackView3];

  if ([(ICHintViewController *)self showsCloseButton])
  {
    v22 = MEMORY[0x1E696ACD8];
    closeButton2 = [(ICHintViewController *)self closeButton];
    centerYAnchor = [closeButton2 centerYAnchor];
    hintTitleLabel2 = [(ICHintViewController *)self hintTitleLabel];
    centerYAnchor2 = [hintTitleLabel2 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[0] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v22 activateConstraints:v28];
  }
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = ICHintViewController;
  [(ICHintViewController *)&v10 viewDidLayoutSubviews];
  contentView = [(ICPillOrnamentViewController *)self contentView];
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [contentView systemLayoutSizeFittingSize:*&ICHintViewControllerWidth withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [(ICPillOrnamentViewController *)self setPreferredContentSize:v7, v9];
}

- (UIButton)actionButton
{
  actionButton = self->_actionButton;
  if (actionButton)
  {
    v3 = actionButton;
  }

  else
  {
    borderedProminentButtonConfiguration = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    buttonTitle = [(ICHintViewController *)self buttonTitle];
    [borderedProminentButtonConfiguration setTitle:buttonTitle];

    [borderedProminentButtonConfiguration setContentInsets:{*&ICHintViewControllerActionButtonInsetVertical, *&ICHintViewControllerActionButtonInsetHorizontal, *&ICHintViewControllerActionButtonInsetVertical, *&ICHintViewControllerActionButtonInsetHorizontal}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__ICHintViewController_actionButton__block_invoke;
    v11[3] = &unk_1E846BDC8;
    v11[4] = self;
    v7 = [MEMORY[0x1E69DC628] actionWithHandler:v11];
    v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderedProminentButtonConfiguration primaryAction:v7];
    v9 = self->_actionButton;
    self->_actionButton = v8;

    [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = self->_actionButton;
  }

  return v3;
}

void __36__ICHintViewController_actionButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonAction];

  if (v2)
  {
    v3 = [*(a1 + 32) buttonAction];
    v3[2]();
  }
}

- (UIStackView)actionButtonStackView
{
  actionButtonStackView = self->_actionButtonStackView;
  if (!actionButtonStackView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v5 = self->_actionButtonStackView;
    self->_actionButtonStackView = v4;

    [(UIStackView *)self->_actionButtonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_actionButtonStackView setAxis:0];
    [(UIStackView *)self->_actionButtonStackView setSpacing:*&ICHintViewControllerActionButtonSpacing];
    actionButtonStackView = self->_actionButtonStackView;
  }

  v6 = actionButtonStackView;

  return v6;
}

- (UIView)actionButtonTopSpacerView
{
  actionButtonTopSpacerView = self->_actionButtonTopSpacerView;
  if (!actionButtonTopSpacerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_actionButtonTopSpacerView;
    self->_actionButtonTopSpacerView = v4;

    [(UIView *)self->_actionButtonTopSpacerView setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(UIView *)self->_actionButtonTopSpacerView heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:*&ICHintViewControllerActionButtonSpacing];
    [v7 setActive:1];

    actionButtonTopSpacerView = self->_actionButtonTopSpacerView;
  }

  v8 = actionButtonTopSpacerView;

  return v8;
}

- (UIView)actionButtonTrailingSpacerView
{
  actionButtonTrailingSpacerView = self->_actionButtonTrailingSpacerView;
  if (!actionButtonTrailingSpacerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_actionButtonTrailingSpacerView;
    self->_actionButtonTrailingSpacerView = v4;

    [(UIView *)self->_actionButtonTrailingSpacerView setTranslatesAutoresizingMaskIntoConstraints:0];
    actionButtonTrailingSpacerView = self->_actionButtonTrailingSpacerView;
  }

  v6 = actionButtonTrailingSpacerView;

  return v6;
}

- (UIButton)closeButton
{
  v20[2] = *MEMORY[0x1E69E9840];
  closeButton = self->_closeButton;
  if (closeButton)
  {
    v3 = closeButton;
  }

  else
  {
    borderedProminentButtonConfiguration = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v18];
    [borderedProminentButtonConfiguration setImage:v6];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [borderedProminentButtonConfiguration setBaseForegroundColor:labelColor];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __35__ICHintViewController_closeButton__block_invoke;
    v19[3] = &unk_1E846BDC8;
    v19[4] = self;
    v8 = [MEMORY[0x1E69DC628] actionWithHandler:v19];
    v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderedProminentButtonConfiguration primaryAction:v8];
    v10 = self->_closeButton;
    self->_closeButton = v9;

    v11 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIButton *)self->_closeButton widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:*&ICHintViewControllerCloseButtonDimension];
    v20[0] = v13;
    heightAnchor = [(UIButton *)self->_closeButton heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:*&ICHintViewControllerCloseButtonDimension];
    v20[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v11 activateConstraints:v16];

    v3 = self->_closeButton;
  }

  return v3;
}

- (UIStackView)contentStackView
{
  contentStackView = self->_contentStackView;
  if (!contentStackView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v5 = self->_contentStackView;
    self->_contentStackView = v4;

    [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_contentStackView setSpacing:*&ICHintViewControllerContentSpacing];
    [(UIStackView *)self->_contentStackView setAxis:0];
    [(UIStackView *)self->_contentStackView setAlignment:1];
    contentStackView = self->_contentStackView;
  }

  v6 = contentStackView;

  return v6;
}

- (UIStackView)hintStackView
{
  hintStackView = self->_hintStackView;
  if (!hintStackView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v5 = self->_hintStackView;
    self->_hintStackView = v4;

    [(UIStackView *)self->_hintStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_hintStackView setSpacing:*&ICHintViewControllerTitleSubtitleSpacing];
    [(UIStackView *)self->_hintStackView setAxis:1];
    hintStackView = self->_hintStackView;
  }

  v6 = hintStackView;

  return v6;
}

- (UILabel)hintTitleLabel
{
  hintTitleLabel = self->_hintTitleLabel;
  if (!hintTitleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_hintTitleLabel;
    self->_hintTitleLabel = v4;

    [(UILabel *)self->_hintTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)self->_hintTitleLabel setFont:v6];

    [(UILabel *)self->_hintTitleLabel setNumberOfLines:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_hintTitleLabel setTintColor:labelColor];

    hintTitle = [(ICHintViewController *)self hintTitle];
    [(UILabel *)self->_hintTitleLabel setText:hintTitle];

    hintTitleLabel = self->_hintTitleLabel;
  }

  v9 = hintTitleLabel;

  return v9;
}

- (UILabel)hintSubtitleLabel
{
  hintSubtitleLabel = self->_hintSubtitleLabel;
  if (!hintSubtitleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_hintSubtitleLabel;
    self->_hintSubtitleLabel = v4;

    [(UILabel *)self->_hintSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)self->_hintSubtitleLabel setFont:v6];

    [(UILabel *)self->_hintSubtitleLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_hintSubtitleLabel setTintColor:secondaryLabelColor];

    hintSubtitle = [(ICHintViewController *)self hintSubtitle];
    [(UILabel *)self->_hintSubtitleLabel setText:hintSubtitle];

    hintSubtitleLabel = self->_hintSubtitleLabel;
  }

  v9 = hintSubtitleLabel;

  return v9;
}

@end