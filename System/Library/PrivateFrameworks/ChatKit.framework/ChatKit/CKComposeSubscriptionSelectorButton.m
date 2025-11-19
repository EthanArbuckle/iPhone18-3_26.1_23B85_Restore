@interface CKComposeSubscriptionSelectorButton
- (CKComposeSubscriptionSelectorButton)init;
- (CKComposeSubscriptionSelectorButtonDelegate)delegate;
- (TPBadgeView)badgeView;
- (UITapGestureRecognizer)gestureRecognizer;
- (id)_bluePillColor;
- (id)_greenPillColor;
- (void)handleTap:(id)a3;
- (void)loadConstraintsForButton;
- (void)setDelegate:(id)a3;
- (void)setTheme:(unint64_t)a3;
- (void)updateContentsWithTitle:(id)a3 badgeText:(id)a4 theme:(unint64_t)a5;
- (void)updateTheme;
- (void)updateTitleFont:(id)a3;
@end

@implementation CKComposeSubscriptionSelectorButton

- (CKComposeSubscriptionSelectorButton)init
{
  v16[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CKComposeSubscriptionSelectorButton;
  v2 = [(CKComposeSubscriptionSelectorButton *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(CKComposeSubscriptionSelectorButton *)v2 setShowsMenuAsPrimaryAction:1];
    [(CKComposeSubscriptionSelectorButton *)v3 setContextMenuInteractionEnabled:1];
    v4 = [(CKComposeSubscriptionSelectorButton *)v3 gestureRecognizer];
    [v4 setEnabled:0];

    [(CKComposeSubscriptionSelectorButton *)v3 setTitle:&stru_1F04268F8];
    [(CKComposeSubscriptionSelectorButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    buttonTitleLabel = v3->_buttonTitleLabel;
    v3->_buttonTitleLabel = v5;

    [(UILabel *)v3->_buttonTitleLabel setUserInteractionEnabled:0];
    v7 = [(CKComposeSubscriptionSelectorButton *)v3 badgeView];

    if (v7)
    {
      v8 = [(CKComposeSubscriptionSelectorButton *)v3 badgeView];
      v16[0] = v8;
      v16[1] = v3->_buttonTitleLabel;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    }

    else
    {
      v15 = v3->_buttonTitleLabel;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    }

    v10 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v9];
    stackView = v3->_stackView;
    v3->_stackView = v10;

    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setAxis:0];
    [(UIStackView *)v3->_stackView setDistribution:3];
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 fromPickerStackMarginInset];
    [(UIStackView *)v3->_stackView setLayoutMargins:?];

    [(UIStackView *)v3->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v3->_stackView setSpacing:6.0];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setUserInteractionEnabled:1];
    [(CKComposeSubscriptionSelectorButton *)v3 addSubview:v3->_stackView];
    [(CKComposeSubscriptionSelectorButton *)v3 loadConstraintsForButton];
  }

  return v3;
}

- (UITapGestureRecognizer)gestureRecognizer
{
  gestureRecognizer = self->_gestureRecognizer;
  if (!gestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
    v5 = self->_gestureRecognizer;
    self->_gestureRecognizer = v4;

    gestureRecognizer = self->_gestureRecognizer;
  }

  return gestureRecognizer;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  v5 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
  v6 = [v5 isEnabled];

  if (a3)
  {
    if (!v6)
    {
      return;
    }

    v7 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [v7 setEnabled:0];

    v9 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [(CKComposeSubscriptionSelectorButton *)self addGestureRecognizer:?];
  }

  else
  {
    if (v6)
    {
      return;
    }

    v8 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [v8 setEnabled:1];

    v9 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [(CKComposeSubscriptionSelectorButton *)self removeGestureRecognizer:?];
  }
}

- (void)loadConstraintsForButton
{
  v3 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v4 = [v3 topAnchor];
  v5 = [(CKComposeSubscriptionSelectorButton *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v8 = [v7 bottomAnchor];
  v9 = [(CKComposeSubscriptionSelectorButton *)self bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v12 = [v11 leadingAnchor];
  v13 = [(CKComposeSubscriptionSelectorButton *)self leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v16 = [v15 trailingAnchor];
  v17 = [(CKComposeSubscriptionSelectorButton *)self trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v20 = [v19 centerYAnchor];
  v21 = [(CKComposeSubscriptionSelectorButton *)self centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  v24 = [v23 centerYAnchor];
  v25 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v26 = [v25 centerYAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v32 = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
  v28 = [v32 centerYAnchor];
  v29 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  v30 = [v29 centerYAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];
}

- (TPBadgeView)badgeView
{
  badgeView = self->_badgeView;
  if (!badgeView)
  {
    if (badgeView_onceToken != -1)
    {
      [CKComposeSubscriptionSelectorButton badgeView];
    }

    if ([badgeView__CKTPBadgeView instancesRespondToSelector:sel_initWithTitle_])
    {
      v4 = [[badgeView__CKTPBadgeView alloc] initWithTitle:&stru_1F04268F8];
      v5 = self->_badgeView;
      self->_badgeView = v4;
    }

    [(TPBadgeView *)self->_badgeView setSizeCategory:2];
    [(TPBadgeView *)self->_badgeView setAutoresizesSubviews:1];
    [(TPBadgeView *)self->_badgeView setAlpha:1.0];
    [(TPBadgeView *)self->_badgeView setTheme:0];
    badgeView = self->_badgeView;
  }

  return badgeView;
}

uint64_t __48__CKComposeSubscriptionSelectorButton_badgeView__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"TPBadgeView", @"TelephonyUI");
  badgeView__CKTPBadgeView = result;
  return result;
}

- (void)updateContentsWithTitle:(id)a3 badgeText:(id)a4 theme:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
  [v10 setText:v9];

  v11 = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  [v11 setTitle:v8];

  v12 = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  [v12 setTheme:0];

  [(CKComposeSubscriptionSelectorButton *)self setTheme:a5];
}

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(CKComposeSubscriptionSelectorButton *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CKComposeSubscriptionSelectorButton *)self delegate];
      [v6 CKComposeSubscriptionSelectorButtonWasTapped:self];
    }
  }
}

- (id)_greenPillColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v2 = 0.411764706;
    v3 = 0.137254902;
  }

  else
  {
    v2 = 0.8;
    v3 = 0.278431373;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:v2 blue:v3 alpha:1.0];

  return v4;
}

- (id)_bluePillColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemDarkBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v2 = ;

  return v2;
}

- (void)updateTheme
{
  v3 = [(CKComposeSubscriptionSelectorButton *)self theme];
  if (v3 == 2)
  {
    v7 = [(CKComposeSubscriptionSelectorButton *)self _greenPillColor];
    v8 = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
    [v8 setTextColor:v7];

    v6 = [(CKComposeSubscriptionSelectorButton *)self _greenPillColor];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = [(CKComposeSubscriptionSelectorButton *)self _bluePillColor];
    v5 = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
    [v5 setTextColor:v4];

    v6 = [(CKComposeSubscriptionSelectorButton *)self _bluePillColor];
  }

  v10 = v6;
  v9 = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  [v9 setBackgroundColor:v10];
}

- (void)updateTitleFont:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
  [v5 setFont:v4];
}

- (void)setTheme:(unint64_t)a3
{
  if (self->_theme != a3)
  {
    self->_theme = a3;
    [(CKComposeSubscriptionSelectorButton *)self updateTheme];
  }
}

- (CKComposeSubscriptionSelectorButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end