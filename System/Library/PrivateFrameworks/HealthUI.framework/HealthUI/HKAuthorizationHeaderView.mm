@interface HKAuthorizationHeaderView
+ (id)_buttonWithInitialTurnOnAll:(BOOL)a3;
+ (id)_categoryTitleLabelFont;
+ (id)_categoryTitleLabelWithText:(id)a3;
+ (id)_localizedTurnOffAllText;
+ (id)_localizedTurnOnAllText;
+ (id)_titleLabelFont;
+ (id)_titleLabelWithText:(id)a3;
- (HKAuthorizationHeaderView)initWithTitle:(id)a3 initialStateToTurnOnAll:(BOOL)a4 categoryTitle:(id)a5;
- (HKAuthorizationHeaderViewDelegate)delegate;
- (void)_setupSubviewsWithInitialTurnOnAll:(BOOL)a3 categoryTitle:(id)a4;
- (void)allButtonToggled:(id)a3;
@end

@implementation HKAuthorizationHeaderView

- (HKAuthorizationHeaderView)initWithTitle:(id)a3 initialStateToTurnOnAll:(BOOL)a4 categoryTitle:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKAuthorizationHeaderView;
  v11 = [(HKAuthorizationHeaderView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    v12->_buttonShowsTurnOnAll = v6;
    [(HKAuthorizationHeaderView *)v12 _setupSubviewsWithInitialTurnOnAll:v6 categoryTitle:v10];
  }

  return v12;
}

- (void)_setupSubviewsWithInitialTurnOnAll:(BOOL)a3 categoryTitle:(id)a4
{
  v4 = a3;
  v69[8] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v8 = [objc_opt_class() _categoryTitleLabelWithText:v6];
    v9 = [(HKAuthorizationHeaderView *)self contentView];
    [v9 addSubview:v8];
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v7) = 1144750080;
  [v8 setContentHuggingPriority:1 forAxis:v7];
  v10 = [objc_opt_class() _titleLabelWithText:self->_title];
  v11 = [(HKAuthorizationHeaderView *)self contentView];
  [v11 addSubview:v10];

  v12 = [objc_opt_class() _buttonWithInitialTurnOnAll:v4];
  [v12 addTarget:self action:sel_allButtonToggled_ forControlEvents:64];
  v13 = [(HKAuthorizationHeaderView *)self contentView];
  [v13 addSubview:v12];

  v62 = MEMORY[0x1E696ACD8];
  if (v6)
  {
    v63 = [v8 leadingAnchor];
    v57 = [(HKAuthorizationHeaderView *)self contentView];
    v52 = [v57 leadingAnchor];
    v51 = [v63 constraintEqualToAnchor:v52 constant:2.0];
    v69[0] = v51;
    v50 = [v8 topAnchor];
    v67 = [(HKAuthorizationHeaderView *)self contentView];
    v66 = [v67 topAnchor];
    v65 = [v50 constraintEqualToAnchor:?];
    v69[1] = v65;
    v14 = [v10 leadingAnchor];
    v48 = [(HKAuthorizationHeaderView *)self contentView];
    [v48 leadingAnchor];
    v61 = v64 = v14;
    v49 = [v14 constraintEqualToAnchor:2.0 constant:?];
    v69[2] = v49;
    v15 = [v10 topAnchor];
    v59 = [v8 bottomAnchor];
    v60 = v15;
    v58 = [v15 constraintEqualToAnchor:16.0 constant:?];
    v69[3] = v58;
    v16 = [v10 trailingAnchor];
    v46 = [v12 leadingAnchor];
    v56 = v16;
    v55 = [v16 constraintEqualToAnchor:v46];
    v69[4] = v55;
    v17 = [v10 bottomAnchor];
    v47 = [(HKAuthorizationHeaderView *)self contentView];
    v45 = [v47 bottomAnchor];
    v54 = v17;
    v44 = [v17 constraintEqualToAnchor:v45 constant:-4.0];
    v69[5] = v44;
    v43 = [v12 trailingAnchor];
    v18 = [(HKAuthorizationHeaderView *)self contentView];
    v19 = [v18 trailingAnchor];
    [v43 constraintEqualToAnchor:v19 constant:-16.0];
    v20 = v53 = v8;
    v69[6] = v20;
    [v12 firstBaselineAnchor];
    v22 = v21 = v6;
    [v10 firstBaselineAnchor];
    v24 = v23 = v12;
    [v22 constraintEqualToAnchor:v24];
    v26 = v25 = v10;
    v69[7] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:8];
    [v62 activateConstraints:v27];

    v28 = v48;
    v10 = v25;
    v29 = v52;

    v12 = v23;
    v30 = v51;

    v6 = v21;
    v31 = v46;

    v8 = v53;
    v32 = v50;

    v33 = v49;
  }

  else
  {
    v34 = [v10 leadingAnchor];
    v57 = [(HKAuthorizationHeaderView *)self contentView];
    v29 = [v57 leadingAnchor];
    v63 = v34;
    v30 = [v34 constraintEqualToAnchor:v29 constant:2.0];
    v68[0] = v30;
    v32 = [v10 topAnchor];
    v67 = [(HKAuthorizationHeaderView *)self contentView];
    v66 = [v67 topAnchor];
    v65 = [v32 constraintEqualToAnchor:?];
    v68[1] = v65;
    v35 = [v10 trailingAnchor];
    v36 = [v12 leadingAnchor];
    v64 = v35;
    v37 = v35;
    v28 = v36;
    v61 = [v37 constraintEqualToAnchor:v36];
    v68[2] = v61;
    v38 = [v12 trailingAnchor];
    v39 = self;
    v33 = v38;
    v60 = [(HKAuthorizationHeaderView *)v39 contentView];
    v59 = [v60 trailingAnchor];
    v58 = [v33 constraintEqualToAnchor:-16.0 constant:?];
    v68[3] = v58;
    v40 = [v12 firstBaselineAnchor];
    v41 = [v10 firstBaselineAnchor];
    v56 = v40;
    v42 = v40;
    v31 = v41;
    v55 = [v42 constraintEqualToAnchor:v41];
    v68[4] = v55;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];
    [v62 activateConstraints:?];
  }
}

+ (id)_categoryTitleLabelWithText:(id)a3
{
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 uppercaseString];

  [v6 setText:v7];
  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:v8];

  [v6 setAdjustsFontForContentSizeCategory:1];
  v9 = [a1 _categoryTitleLabelFont];
  [v6 setFont:v9];

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

+ (id)_titleLabelWithText:(id)a3
{
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setText:v5];

  [v6 setAdjustsFontForContentSizeCategory:1];
  v7 = [a1 _titleLabelFont];
  [v6 setFont:v7];

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

+ (id)_buttonWithInitialTurnOnAll:(BOOL)a3
{
  v5 = [MEMORY[0x1E69DC738] buttonWithType:1];
  if (a3)
  {
    v6 = [a1 _localizedTurnOnAllText];
    v7 = @"UIA.Health.TurnOnAll.button";
  }

  else
  {
    v6 = [a1 _localizedTurnOffAllText];
    v7 = @"UIA.Health.TurnOffAll.button";
  }

  [v5 setTitle:v6 forState:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentHorizontalAlignment:2];
  [v5 setAccessibilityIdentifier:v7];
  v8 = [v5 titleLabel];
  [v8 setAdjustsFontForContentSizeCategory:1];

  v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v10 = [v5 titleLabel];
  [v10 setFont:v9];

  return v5;
}

- (void)allButtonToggled:(id)a3
{
  buttonShowsTurnOnAll = self->_buttonShowsTurnOnAll;
  v5 = a3;
  v6 = objc_opt_class();
  if (buttonShowsTurnOnAll)
  {
    v7 = [v6 _localizedTurnOffAllText];
    [v5 setTitle:v7 forState:0];

    v8 = [(HKAuthorizationHeaderView *)self delegate];
    [v8 headerViewDidTapTurnOnAll:self];
  }

  else
  {
    v9 = [v6 _localizedTurnOnAllText];
    [v5 setTitle:v9 forState:0];

    v8 = [(HKAuthorizationHeaderView *)self delegate];
    [v8 headerViewDidTapTurnOffAll:self];
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