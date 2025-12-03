@interface CKComposeSubscriptionSelectorButton
- (CKComposeSubscriptionSelectorButton)init;
- (CKComposeSubscriptionSelectorButtonDelegate)delegate;
- (TPBadgeView)badgeView;
- (UITapGestureRecognizer)gestureRecognizer;
- (id)_bluePillColor;
- (id)_greenPillColor;
- (void)handleTap:(id)tap;
- (void)loadConstraintsForButton;
- (void)setDelegate:(id)delegate;
- (void)setTheme:(unint64_t)theme;
- (void)updateContentsWithTitle:(id)title badgeText:(id)text theme:(unint64_t)theme;
- (void)updateTheme;
- (void)updateTitleFont:(id)font;
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
    gestureRecognizer = [(CKComposeSubscriptionSelectorButton *)v3 gestureRecognizer];
    [gestureRecognizer setEnabled:0];

    [(CKComposeSubscriptionSelectorButton *)v3 setTitle:&stru_1F04268F8];
    [(CKComposeSubscriptionSelectorButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    buttonTitleLabel = v3->_buttonTitleLabel;
    v3->_buttonTitleLabel = v5;

    [(UILabel *)v3->_buttonTitleLabel setUserInteractionEnabled:0];
    badgeView = [(CKComposeSubscriptionSelectorButton *)v3 badgeView];

    if (badgeView)
    {
      badgeView2 = [(CKComposeSubscriptionSelectorButton *)v3 badgeView];
      v16[0] = badgeView2;
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

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  gestureRecognizer = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
  isEnabled = [gestureRecognizer isEnabled];

  if (delegate)
  {
    if (!isEnabled)
    {
      return;
    }

    gestureRecognizer2 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [gestureRecognizer2 setEnabled:0];

    gestureRecognizer3 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [(CKComposeSubscriptionSelectorButton *)self addGestureRecognizer:?];
  }

  else
  {
    if (isEnabled)
    {
      return;
    }

    gestureRecognizer4 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [gestureRecognizer4 setEnabled:1];

    gestureRecognizer3 = [(CKComposeSubscriptionSelectorButton *)self gestureRecognizer];
    [(CKComposeSubscriptionSelectorButton *)self removeGestureRecognizer:?];
  }
}

- (void)loadConstraintsForButton
{
  stackView = [(CKComposeSubscriptionSelectorButton *)self stackView];
  topAnchor = [stackView topAnchor];
  topAnchor2 = [(CKComposeSubscriptionSelectorButton *)self topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v6 setActive:1];

  stackView2 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  bottomAnchor = [stackView2 bottomAnchor];
  bottomAnchor2 = [(CKComposeSubscriptionSelectorButton *)self bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v10 setActive:1];

  stackView3 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  leadingAnchor = [stackView3 leadingAnchor];
  leadingAnchor2 = [(CKComposeSubscriptionSelectorButton *)self leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v14 setActive:1];

  stackView4 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  trailingAnchor = [stackView4 trailingAnchor];
  trailingAnchor2 = [(CKComposeSubscriptionSelectorButton *)self trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v18 setActive:1];

  stackView5 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  centerYAnchor = [stackView5 centerYAnchor];
  centerYAnchor2 = [(CKComposeSubscriptionSelectorButton *)self centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v22 setActive:1];

  badgeView = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  centerYAnchor3 = [badgeView centerYAnchor];
  stackView6 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  centerYAnchor4 = [stackView6 centerYAnchor];
  v27 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v27 setActive:1];

  buttonTitleLabel = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
  centerYAnchor5 = [buttonTitleLabel centerYAnchor];
  stackView7 = [(CKComposeSubscriptionSelectorButton *)self stackView];
  centerYAnchor6 = [stackView7 centerYAnchor];
  v31 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
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

- (void)updateContentsWithTitle:(id)title badgeText:(id)text theme:(unint64_t)theme
{
  textCopy = text;
  titleCopy = title;
  buttonTitleLabel = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
  [buttonTitleLabel setText:titleCopy];

  badgeView = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  [badgeView setTitle:textCopy];

  badgeView2 = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  [badgeView2 setTheme:0];

  [(CKComposeSubscriptionSelectorButton *)self setTheme:theme];
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {
    delegate = [(CKComposeSubscriptionSelectorButton *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CKComposeSubscriptionSelectorButton *)self delegate];
      [delegate2 CKComposeSubscriptionSelectorButtonWasTapped:self];
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
  theme = [(CKComposeSubscriptionSelectorButton *)self theme];
  if (theme == 2)
  {
    _greenPillColor = [(CKComposeSubscriptionSelectorButton *)self _greenPillColor];
    buttonTitleLabel = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
    [buttonTitleLabel setTextColor:_greenPillColor];

    _greenPillColor2 = [(CKComposeSubscriptionSelectorButton *)self _greenPillColor];
  }

  else
  {
    if (theme != 1)
    {
      return;
    }

    _bluePillColor = [(CKComposeSubscriptionSelectorButton *)self _bluePillColor];
    buttonTitleLabel2 = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
    [buttonTitleLabel2 setTextColor:_bluePillColor];

    _greenPillColor2 = [(CKComposeSubscriptionSelectorButton *)self _bluePillColor];
  }

  v10 = _greenPillColor2;
  badgeView = [(CKComposeSubscriptionSelectorButton *)self badgeView];
  [badgeView setBackgroundColor:v10];
}

- (void)updateTitleFont:(id)font
{
  fontCopy = font;
  buttonTitleLabel = [(CKComposeSubscriptionSelectorButton *)self buttonTitleLabel];
  [buttonTitleLabel setFont:fontCopy];
}

- (void)setTheme:(unint64_t)theme
{
  if (self->_theme != theme)
  {
    self->_theme = theme;
    [(CKComposeSubscriptionSelectorButton *)self updateTheme];
  }
}

- (CKComposeSubscriptionSelectorButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end