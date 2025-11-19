@interface ICHintViewController
+ (void)initialize;
- (ICHintViewController)initWithRootViewController:(id)a3 showsCloseButton:(BOOL)a4 hintTitle:(id)a5 hintSubtitle:(id)a6 buttonTitle:(id)a7 buttonAction:(id)a8;
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
  if (objc_opt_class() == a1)
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

- (ICHintViewController)initWithRootViewController:(id)a3 showsCloseButton:(BOOL)a4 hintTitle:(id)a5 hintSubtitle:(id)a6 buttonTitle:(id)a7 buttonAction:(id)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = ICHintViewController;
  v19 = [(ICPillOrnamentViewController *)&v24 initWithRootViewController:a3 contentAnchorPoint:1.0 sceneAnchorPoint:0.0 offset:1.0 cornerRadius:0.0, *&ICHintViewControllerOffsetX, *&ICHintViewControllerOffsetY, 0.0];
  v20 = v19;
  if (v19)
  {
    v19->_showsCloseButton = a4;
    objc_storeStrong(&v19->_hintTitle, a5);
    objc_storeStrong(&v20->_hintSubtitle, a6);
    objc_storeStrong(&v20->_buttonTitle, a7);
    v21 = _Block_copy(v18);
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
  v3 = [(ICPillOrnamentViewController *)self contentView];
  v4 = [(ICHintViewController *)self contentStackView];
  [v3 addSubview:v4];

  v5 = [(ICHintViewController *)self contentStackView];
  [v5 ic_addAnchorsToFillSuperviewWithPadding:*&ICHintViewControllerPadding];

  if ([(ICHintViewController *)self showsCloseButton])
  {
    v6 = [(ICHintViewController *)self contentStackView];
    v7 = [(ICHintViewController *)self closeButton];
    [v6 addArrangedSubview:v7];
  }

  v8 = [(ICHintViewController *)self contentStackView];
  v9 = [(ICHintViewController *)self hintStackView];
  [v8 addArrangedSubview:v9];

  v10 = [(ICHintViewController *)self hintStackView];
  v11 = [(ICHintViewController *)self hintTitleLabel];
  [v10 addArrangedSubview:v11];

  v12 = [(ICHintViewController *)self hintStackView];
  v13 = [(ICHintViewController *)self hintSubtitleLabel];
  [v12 addArrangedSubview:v13];

  v14 = [(ICHintViewController *)self hintStackView];
  v15 = [(ICHintViewController *)self actionButtonTopSpacerView];
  [v14 addArrangedSubview:v15];

  v16 = [(ICHintViewController *)self actionButtonStackView];
  v17 = [(ICHintViewController *)self actionButton];
  [v16 addArrangedSubview:v17];

  v18 = [(ICHintViewController *)self actionButtonStackView];
  v19 = [(ICHintViewController *)self actionButtonTrailingSpacerView];
  [v18 addArrangedSubview:v19];

  v20 = [(ICHintViewController *)self hintStackView];
  v21 = [(ICHintViewController *)self actionButtonStackView];
  [v20 addArrangedSubview:v21];

  if ([(ICHintViewController *)self showsCloseButton])
  {
    v22 = MEMORY[0x1E696ACD8];
    v23 = [(ICHintViewController *)self closeButton];
    v24 = [v23 centerYAnchor];
    v25 = [(ICHintViewController *)self hintTitleLabel];
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
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
  v3 = [(ICPillOrnamentViewController *)self contentView];
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [v3 systemLayoutSizeFittingSize:*&ICHintViewControllerWidth withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v4, v5}];
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
    v5 = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    v6 = [(ICHintViewController *)self buttonTitle];
    [v5 setTitle:v6];

    [v5 setContentInsets:{*&ICHintViewControllerActionButtonInsetVertical, *&ICHintViewControllerActionButtonInsetHorizontal, *&ICHintViewControllerActionButtonInsetVertical, *&ICHintViewControllerActionButtonInsetHorizontal}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__ICHintViewController_actionButton__block_invoke;
    v11[3] = &unk_1E846BDC8;
    v11[4] = self;
    v7 = [MEMORY[0x1E69DC628] actionWithHandler:v11];
    v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v5 primaryAction:v7];
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
    v6 = [(UIView *)self->_actionButtonTopSpacerView heightAnchor];
    v7 = [v6 constraintEqualToConstant:*&ICHintViewControllerActionButtonSpacing];
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
    v5 = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v18];
    [v5 setImage:v6];

    v7 = [MEMORY[0x1E69DC888] labelColor];
    [v5 setBaseForegroundColor:v7];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __35__ICHintViewController_closeButton__block_invoke;
    v19[3] = &unk_1E846BDC8;
    v19[4] = self;
    v8 = [MEMORY[0x1E69DC628] actionWithHandler:v19];
    v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v5 primaryAction:v8];
    v10 = self->_closeButton;
    self->_closeButton = v9;

    v11 = MEMORY[0x1E696ACD8];
    v12 = [(UIButton *)self->_closeButton widthAnchor];
    v13 = [v12 constraintEqualToConstant:*&ICHintViewControllerCloseButtonDimension];
    v20[0] = v13;
    v14 = [(UIButton *)self->_closeButton heightAnchor];
    v15 = [v14 constraintEqualToConstant:*&ICHintViewControllerCloseButtonDimension];
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
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_hintTitleLabel setTintColor:v7];

    v8 = [(ICHintViewController *)self hintTitle];
    [(UILabel *)self->_hintTitleLabel setText:v8];

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
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_hintSubtitleLabel setTintColor:v7];

    v8 = [(ICHintViewController *)self hintSubtitle];
    [(UILabel *)self->_hintSubtitleLabel setText:v8];

    hintSubtitleLabel = self->_hintSubtitleLabel;
  }

  v9 = hintSubtitleLabel;

  return v9;
}

@end