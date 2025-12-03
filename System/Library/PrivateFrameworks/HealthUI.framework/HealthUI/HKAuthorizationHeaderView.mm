@interface HKAuthorizationHeaderView
+ (id)_buttonWithInitialTurnOnAll:(BOOL)all;
+ (id)_categoryTitleLabelFont;
+ (id)_categoryTitleLabelWithText:(id)text;
+ (id)_localizedTurnOffAllText;
+ (id)_localizedTurnOnAllText;
+ (id)_titleLabelFont;
+ (id)_titleLabelWithText:(id)text;
- (HKAuthorizationHeaderView)initWithTitle:(id)title initialStateToTurnOnAll:(BOOL)all categoryTitle:(id)categoryTitle;
- (HKAuthorizationHeaderViewDelegate)delegate;
- (void)_setupSubviewsWithInitialTurnOnAll:(BOOL)all categoryTitle:(id)title;
- (void)allButtonToggled:(id)toggled;
@end

@implementation HKAuthorizationHeaderView

- (HKAuthorizationHeaderView)initWithTitle:(id)title initialStateToTurnOnAll:(BOOL)all categoryTitle:(id)categoryTitle
{
  allCopy = all;
  titleCopy = title;
  categoryTitleCopy = categoryTitle;
  v14.receiver = self;
  v14.super_class = HKAuthorizationHeaderView;
  v11 = [(HKAuthorizationHeaderView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_buttonShowsTurnOnAll = allCopy;
    [(HKAuthorizationHeaderView *)v12 _setupSubviewsWithInitialTurnOnAll:allCopy categoryTitle:categoryTitleCopy];
  }

  return v12;
}

- (void)_setupSubviewsWithInitialTurnOnAll:(BOOL)all categoryTitle:(id)title
{
  allCopy = all;
  v69[8] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (titleCopy)
  {
    v8 = [objc_opt_class() _categoryTitleLabelWithText:titleCopy];
    contentView = [(HKAuthorizationHeaderView *)self contentView];
    [contentView addSubview:v8];
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v7) = 1144750080;
  [v8 setContentHuggingPriority:1 forAxis:v7];
  v10 = [objc_opt_class() _titleLabelWithText:self->_title];
  contentView2 = [(HKAuthorizationHeaderView *)self contentView];
  [contentView2 addSubview:v10];

  v12 = [objc_opt_class() _buttonWithInitialTurnOnAll:allCopy];
  [v12 addTarget:self action:sel_allButtonToggled_ forControlEvents:64];
  contentView3 = [(HKAuthorizationHeaderView *)self contentView];
  [contentView3 addSubview:v12];

  v62 = MEMORY[0x1E696ACD8];
  if (titleCopy)
  {
    leadingAnchor = [v8 leadingAnchor];
    contentView4 = [(HKAuthorizationHeaderView *)self contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:2.0];
    v69[0] = v51;
    topAnchor = [v8 topAnchor];
    contentView5 = [(HKAuthorizationHeaderView *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v65 = [topAnchor constraintEqualToAnchor:?];
    v69[1] = v65;
    leadingAnchor3 = [v10 leadingAnchor];
    contentView6 = [(HKAuthorizationHeaderView *)self contentView];
    [contentView6 leadingAnchor];
    v61 = v64 = leadingAnchor3;
    v49 = [leadingAnchor3 constraintEqualToAnchor:2.0 constant:?];
    v69[2] = v49;
    topAnchor3 = [v10 topAnchor];
    bottomAnchor = [v8 bottomAnchor];
    contentView9 = topAnchor3;
    v58 = [topAnchor3 constraintEqualToAnchor:16.0 constant:?];
    v69[3] = v58;
    trailingAnchor = [v10 trailingAnchor];
    leadingAnchor4 = [v12 leadingAnchor];
    v56 = trailingAnchor;
    v55 = [trailingAnchor constraintEqualToAnchor:leadingAnchor4];
    v69[4] = v55;
    bottomAnchor2 = [v10 bottomAnchor];
    contentView7 = [(HKAuthorizationHeaderView *)self contentView];
    bottomAnchor3 = [contentView7 bottomAnchor];
    v54 = bottomAnchor2;
    v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-4.0];
    v69[5] = v44;
    trailingAnchor2 = [v12 trailingAnchor];
    contentView8 = [(HKAuthorizationHeaderView *)self contentView];
    trailingAnchor3 = [contentView8 trailingAnchor];
    [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v20 = v53 = v8;
    v69[6] = v20;
    [v12 firstBaselineAnchor];
    v22 = v21 = titleCopy;
    [v10 firstBaselineAnchor];
    v24 = v23 = v12;
    [v22 constraintEqualToAnchor:v24];
    v26 = v25 = v10;
    v69[7] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:8];
    [v62 activateConstraints:v27];

    v28 = contentView6;
    v10 = v25;
    leadingAnchor6 = leadingAnchor2;

    v12 = v23;
    v30 = v51;

    titleCopy = v21;
    v31 = leadingAnchor4;

    v8 = v53;
    topAnchor4 = topAnchor;

    v33 = v49;
  }

  else
  {
    leadingAnchor5 = [v10 leadingAnchor];
    contentView4 = [(HKAuthorizationHeaderView *)self contentView];
    leadingAnchor6 = [contentView4 leadingAnchor];
    leadingAnchor = leadingAnchor5;
    v30 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:2.0];
    v68[0] = v30;
    topAnchor4 = [v10 topAnchor];
    contentView5 = [(HKAuthorizationHeaderView *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v65 = [topAnchor4 constraintEqualToAnchor:?];
    v68[1] = v65;
    trailingAnchor4 = [v10 trailingAnchor];
    leadingAnchor7 = [v12 leadingAnchor];
    v64 = trailingAnchor4;
    v37 = trailingAnchor4;
    v28 = leadingAnchor7;
    v61 = [v37 constraintEqualToAnchor:leadingAnchor7];
    v68[2] = v61;
    trailingAnchor5 = [v12 trailingAnchor];
    selfCopy = self;
    v33 = trailingAnchor5;
    contentView9 = [(HKAuthorizationHeaderView *)selfCopy contentView];
    bottomAnchor = [contentView9 trailingAnchor];
    v58 = [v33 constraintEqualToAnchor:-16.0 constant:?];
    v68[3] = v58;
    firstBaselineAnchor = [v12 firstBaselineAnchor];
    firstBaselineAnchor2 = [v10 firstBaselineAnchor];
    v56 = firstBaselineAnchor;
    v42 = firstBaselineAnchor;
    v31 = firstBaselineAnchor2;
    v55 = [v42 constraintEqualToAnchor:firstBaselineAnchor2];
    v68[4] = v55;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];
    [v62 activateConstraints:?];
  }
}

+ (id)_categoryTitleLabelWithText:(id)text
{
  v4 = MEMORY[0x1E69DCC10];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  uppercaseString = [textCopy uppercaseString];

  [v6 setText:uppercaseString];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:secondaryLabelColor];

  [v6 setAdjustsFontForContentSizeCategory:1];
  _categoryTitleLabelFont = [self _categoryTitleLabelFont];
  [v6 setFont:_categoryTitleLabelFont];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

+ (id)_categoryTitleLabelFont
{
  v2 = *MEMORY[0x1E69DDD28];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v4 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v2];
  v5 = [v4 scaledFontForFont:v3];

  return v5;
}

+ (id)_titleLabelWithText:(id)text
{
  v4 = MEMORY[0x1E69DCC10];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 setText:textCopy];

  [v6 setAdjustsFontForContentSizeCategory:1];
  _titleLabelFont = [self _titleLabelFont];
  [v6 setFont:_titleLabelFont];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

+ (id)_titleLabelFont
{
  v2 = *MEMORY[0x1E69DDDC8];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0 weight:*MEMORY[0x1E69DB980]];
  v4 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v2];
  v5 = [v4 scaledFontForFont:v3];

  return v5;
}

+ (id)_buttonWithInitialTurnOnAll:(BOOL)all
{
  v5 = [MEMORY[0x1E69DC738] buttonWithType:1];
  if (all)
  {
    _localizedTurnOnAllText = [self _localizedTurnOnAllText];
    v7 = @"UIA.Health.TurnOnAll.button";
  }

  else
  {
    _localizedTurnOnAllText = [self _localizedTurnOffAllText];
    v7 = @"UIA.Health.TurnOffAll.button";
  }

  [v5 setTitle:_localizedTurnOnAllText forState:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentHorizontalAlignment:2];
  [v5 setAccessibilityIdentifier:v7];
  titleLabel = [v5 titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

  v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  titleLabel2 = [v5 titleLabel];
  [titleLabel2 setFont:v9];

  return v5;
}

- (void)allButtonToggled:(id)toggled
{
  buttonShowsTurnOnAll = self->_buttonShowsTurnOnAll;
  toggledCopy = toggled;
  v6 = objc_opt_class();
  if (buttonShowsTurnOnAll)
  {
    _localizedTurnOffAllText = [v6 _localizedTurnOffAllText];
    [toggledCopy setTitle:_localizedTurnOffAllText forState:0];

    delegate = [(HKAuthorizationHeaderView *)self delegate];
    [delegate headerViewDidTapTurnOnAll:self];
  }

  else
  {
    _localizedTurnOnAllText = [v6 _localizedTurnOnAllText];
    [toggledCopy setTitle:_localizedTurnOnAllText forState:0];

    delegate = [(HKAuthorizationHeaderView *)self delegate];
    [delegate headerViewDidTapTurnOffAll:self];
  }

  [(HKAuthorizationHeaderView *)self _updateButtonState];
}

+ (id)_localizedTurnOnAllText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"TURN_ON_ALL_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];

  return v3;
}

+ (id)_localizedTurnOffAllText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"TURN_OFF_ALL_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];

  return v3;
}

- (HKAuthorizationHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end