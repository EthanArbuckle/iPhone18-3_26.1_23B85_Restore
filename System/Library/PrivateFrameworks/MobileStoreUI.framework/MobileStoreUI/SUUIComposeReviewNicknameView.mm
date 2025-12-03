@interface SUUIComposeReviewNicknameView
- (SUUIComposeReviewNicknameView)initWithFrame:(CGRect)frame;
- (void)_setupInfo;
- (void)_setupSampleCardView;
- (void)_setupTextField;
- (void)_setupTitle;
- (void)_setupView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SUUIComposeReviewNicknameView

- (SUUIComposeReviewNicknameView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIComposeReviewNicknameView;
  v3 = [(SUUIComposeReviewNicknameView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIComposeReviewNicknameView *)v3 setBackgroundColor:systemBackgroundColor];

    [(SUUIComposeReviewNicknameView *)v3 _setupView];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v27[4] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  traitCollection = [(SUUIComposeReviewNicknameView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    titleView = [(SUUIComposeReviewNicknameView *)self titleView];
    v9 = SUUIFontLimitedPreferredFontForTextStyle(15, 7);
    [titleView setFont:v9];

    nicknamePlaceholderLabel = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
    v11 = SUUIFontLimitedPreferredFontForTextStyle(3, 7);
    [nicknamePlaceholderLabel setFont:v11];

    nicknameTextfield = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
    v13 = SUUIFontLimitedPreferredFontForTextStyle(1, 7);
    [nicknameTextfield setFont:v13];

    nicknameInfoLabel = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
    v15 = SUUIFontLimitedPreferredFontForTextStyle(11, 7);
    [nicknameInfoLabel setFont:v15];
  }

  traitCollection2 = [(SUUIComposeReviewNicknameView *)self traitCollection];
  v17 = [traitCollection2 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v17)
  {
    sampleCardGradientView = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
    layer = [sampleCardGradientView layer];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v21 = [systemBackgroundColor colorWithAlphaComponent:0.0];
    v27[0] = [v21 CGColor];
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    v23 = [systemBackgroundColor2 colorWithAlphaComponent:0.0];
    v27[1] = [v23 CGColor];
    systemBackgroundColor3 = [MEMORY[0x277D75348] systemBackgroundColor];
    v27[2] = [systemBackgroundColor3 CGColor];
    systemBackgroundColor4 = [MEMORY[0x277D75348] systemBackgroundColor];
    v27[3] = [systemBackgroundColor4 CGColor];
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [layer setColors:v26];
  }
}

- (void)_setupView
{
  [(SUUIComposeReviewNicknameView *)self _setupTitle];
  [(SUUIComposeReviewNicknameView *)self _setupSampleCardView];
  [(SUUIComposeReviewNicknameView *)self _setupTextField];

  [(SUUIComposeReviewNicknameView *)self _setupInfo];
}

- (void)_setupTitle
{
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setTitleView:v3];

  titleView = [(SUUIComposeReviewNicknameView *)self titleView];
  v5 = SUUIFontLimitedPreferredFontForTextStyle(15, 7);
  [titleView setFont:v5];

  titleView2 = [(SUUIComposeReviewNicknameView *)self titleView];
  [titleView2 setNumberOfLines:2];

  titleView3 = [(SUUIComposeReviewNicknameView *)self titleView];
  [titleView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleView4 = [(SUUIComposeReviewNicknameView *)self titleView];
  [(SUUIComposeReviewNicknameView *)self addSubview:titleView4];

  titleView5 = [(SUUIComposeReviewNicknameView *)self titleView];
  firstBaselineAnchor = [titleView5 firstBaselineAnchor];
  safeAreaLayoutGuide = [(SUUIComposeReviewNicknameView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:61.0];
  [v13 setActive:1];

  titleView6 = [(SUUIComposeReviewNicknameView *)self titleView];
  leadingAnchor = [titleView6 leadingAnchor];
  leadingAnchor2 = [(SUUIComposeReviewNicknameView *)self leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v17 setActive:1];

  titleView7 = [(SUUIComposeReviewNicknameView *)self titleView];
  trailingAnchor = [titleView7 trailingAnchor];
  trailingAnchor2 = [(SUUIComposeReviewNicknameView *)self trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  [v21 setActive:1];

  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"NICKNAME_VIEW_TITLE" value:&stru_286AECDE0 table:0];
  titleView8 = [(SUUIComposeReviewNicknameView *)self titleView];
  [titleView8 setText:v23];

  titleView9 = [(SUUIComposeReviewNicknameView *)self titleView];
  [titleView9 setTextAlignment:1];
}

- (void)_setupSampleCardView
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setSampleCardView:v3];

  sampleCardView = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  [sampleCardView setTranslatesAutoresizingMaskIntoConstraints:0];

  sampleCardView2 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  [(SUUIComposeReviewNicknameView *)self addSubview:sampleCardView2];

  sampleCardView3 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  topAnchor = [sampleCardView3 topAnchor];
  titleView = [(SUUIComposeReviewNicknameView *)self titleView];
  bottomAnchor = [titleView bottomAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:24.0];
  [v10 setActive:1];

  sampleCardView4 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  centerXAnchor = [sampleCardView4 centerXAnchor];
  centerXAnchor2 = [(SUUIComposeReviewNicknameView *)self centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v14 setActive:1];

  v15 = [SUUIGradientView alloc];
  v16 = [(SUUIGradientView *)v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SUUIComposeReviewNicknameView *)self setSampleCardGradientView:v16];

  sampleCardGradientView = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  [sampleCardGradientView setTranslatesAutoresizingMaskIntoConstraints:0];

  sampleCardView5 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  sampleCardGradientView2 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  [sampleCardView5 addSubview:sampleCardGradientView2];

  sampleCardGradientView3 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  topAnchor2 = [sampleCardGradientView3 topAnchor];
  sampleCardView6 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  topAnchor3 = [sampleCardView6 topAnchor];
  v24 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  [v24 setActive:1];

  sampleCardGradientView4 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  leadingAnchor = [sampleCardGradientView4 leadingAnchor];
  sampleCardView7 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  leadingAnchor2 = [sampleCardView7 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v29 setActive:1];

  sampleCardGradientView5 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  trailingAnchor = [sampleCardGradientView5 trailingAnchor];
  sampleCardView8 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  trailingAnchor2 = [sampleCardView8 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v34 setActive:1];

  sampleCardGradientView6 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  bottomAnchor2 = [sampleCardGradientView6 bottomAnchor];
  sampleCardView9 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  bottomAnchor3 = [sampleCardView9 bottomAnchor];
  v39 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v39 setActive:1];

  sampleCardGradientView7 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  layer = [sampleCardGradientView7 layer];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v43 = [systemBackgroundColor colorWithAlphaComponent:0.0];
  v51[0] = [v43 CGColor];
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  v45 = [systemBackgroundColor2 colorWithAlphaComponent:0.0];
  v51[1] = [v45 CGColor];
  systemBackgroundColor3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v51[2] = [systemBackgroundColor3 CGColor];
  systemBackgroundColor4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v51[3] = [systemBackgroundColor4 CGColor];
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [layer setColors:v48];

  sampleCardGradientView8 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  layer2 = [sampleCardGradientView8 layer];
  [layer2 setLocations:&unk_286BBE160];
}

- (void)_setupTextField
{
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknameBackgroundView:v3];

  nicknameBackgroundView = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [nicknameBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  nicknameBackgroundView2 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [nicknameBackgroundView2 setBackgroundColor:secondarySystemBackgroundColor];

  nicknameBackgroundView3 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  layer = [nicknameBackgroundView3 layer];
  [layer setCornerRadius:8.0];

  nicknameBackgroundView4 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [(SUUIComposeReviewNicknameView *)self addSubview:nicknameBackgroundView4];

  nicknameBackgroundView5 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  topAnchor = [nicknameBackgroundView5 topAnchor];
  sampleCardView = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  bottomAnchor = [sampleCardView bottomAnchor];
  v14 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:20.0];
  [v14 setActive:1];

  nicknameBackgroundView6 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  leadingAnchor = [nicknameBackgroundView6 leadingAnchor];
  leadingAnchor2 = [(SUUIComposeReviewNicknameView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v18 setActive:1];

  nicknameBackgroundView7 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  trailingAnchor = [nicknameBackgroundView7 trailingAnchor];
  trailingAnchor2 = [(SUUIComposeReviewNicknameView *)self trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  [v22 setActive:1];

  v23 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknamePlaceholderLabel:v23];

  nicknamePlaceholderLabel = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [nicknamePlaceholderLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  nicknameBackgroundView8 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  nicknamePlaceholderLabel2 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [nicknameBackgroundView8 addSubview:nicknamePlaceholderLabel2];

  nicknamePlaceholderLabel3 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v28 = SUUIFontLimitedPreferredFontForTextStyle(3, 7);
  [nicknamePlaceholderLabel3 setFont:v28];

  nicknamePlaceholderLabel4 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  leadingAnchor3 = [nicknamePlaceholderLabel4 leadingAnchor];
  nicknameBackgroundView9 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  leadingAnchor4 = [nicknameBackgroundView9 leadingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  [v33 setActive:1];

  nicknamePlaceholderLabel5 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  topAnchor2 = [nicknamePlaceholderLabel5 topAnchor];
  nicknameBackgroundView10 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  topAnchor3 = [nicknameBackgroundView10 topAnchor];
  v38 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:18.0];
  [v38 setActive:1];

  nicknamePlaceholderLabel6 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  bottomAnchor2 = [nicknamePlaceholderLabel6 bottomAnchor];
  nicknameBackgroundView11 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  bottomAnchor3 = [nicknameBackgroundView11 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-18.0];
  [v43 setActive:1];

  nicknamePlaceholderLabel7 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  LODWORD(v45) = 1148846080;
  [nicknamePlaceholderLabel7 setContentHuggingPriority:0 forAxis:v45];

  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = [v46 localizedStringForKey:@"NICKNAME_VIEW_PLACEHOLDER" value:&stru_286AECDE0 table:0];
  nicknamePlaceholderLabel8 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [nicknamePlaceholderLabel8 setText:v47];

  v49 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknameTextfield:v49];

  nicknameTextfield = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  [nicknameTextfield setTranslatesAutoresizingMaskIntoConstraints:0];

  nicknameBackgroundView12 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  nicknameTextfield2 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  [nicknameBackgroundView12 addSubview:nicknameTextfield2];

  nicknameTextfield3 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  firstBaselineAnchor = [nicknameTextfield3 firstBaselineAnchor];
  nicknamePlaceholderLabel9 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  firstBaselineAnchor2 = [nicknamePlaceholderLabel9 firstBaselineAnchor];
  v57 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  [v57 setActive:1];

  nicknameTextfield4 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  topAnchor4 = [nicknameTextfield4 topAnchor];
  nicknameBackgroundView13 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  topAnchor5 = [nicknameBackgroundView13 topAnchor];
  v62 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [v62 setActive:1];

  nicknameTextfield5 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  leadingAnchor5 = [nicknameTextfield5 leadingAnchor];
  nicknamePlaceholderLabel10 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  trailingAnchor3 = [nicknamePlaceholderLabel10 trailingAnchor];
  v67 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:20.0];
  [v67 setActive:1];

  nicknameTextfield6 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  trailingAnchor4 = [nicknameTextfield6 trailingAnchor];
  nicknameBackgroundView14 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  trailingAnchor5 = [nicknameBackgroundView14 trailingAnchor];
  v72 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
  [v72 setActive:1];

  nicknameTextfield7 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  bottomAnchor4 = [nicknameTextfield7 bottomAnchor];
  nicknameBackgroundView15 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  bottomAnchor5 = [nicknameBackgroundView15 bottomAnchor];
  v77 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v77 setActive:1];

  nicknameTextfield8 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  LODWORD(v79) = 1132068864;
  [nicknameTextfield8 setContentCompressionResistancePriority:0 forAxis:v79];

  nicknameTextfield9 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  [nicknameTextfield9 setClearButtonMode:1];

  nicknameTextfield10 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v81 = SUUIFontLimitedPreferredFontForTextStyle(1, 7);
  [nicknameTextfield10 setFont:v81];
}

- (void)_setupInfo
{
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknameInfoLabel:v3];

  nicknameInfoLabel = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  nicknameInfoLabel2 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [(SUUIComposeReviewNicknameView *)self addSubview:nicknameInfoLabel2];

  nicknameInfoLabel3 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v7 = SUUIFontLimitedPreferredFontForTextStyle(11, 7);
  [nicknameInfoLabel3 setFont:v7];

  nicknameInfoLabel4 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [nicknameInfoLabel4 setTextColor:secondaryLabelColor];

  nicknameInfoLabel5 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  leadingAnchor = [nicknameInfoLabel5 leadingAnchor];
  leadingAnchor2 = [(SUUIComposeReviewNicknameView *)self leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:40.0];
  [v13 setActive:1];

  nicknameInfoLabel6 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  trailingAnchor = [nicknameInfoLabel6 trailingAnchor];
  trailingAnchor2 = [(SUUIComposeReviewNicknameView *)self trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-40.0];
  [v17 setActive:1];

  nicknameInfoLabel7 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  firstBaselineAnchor = [nicknameInfoLabel7 firstBaselineAnchor];
  nicknameBackgroundView = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  bottomAnchor = [nicknameBackgroundView bottomAnchor];
  v22 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:24.0];
  [v22 setActive:1];

  nicknameInfoLabel8 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  bottomAnchor2 = [nicknameInfoLabel8 bottomAnchor];
  bottomAnchor3 = [(SUUIComposeReviewNicknameView *)self bottomAnchor];
  v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-20.0];
  [v26 setActive:1];

  nicknameInfoLabel9 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel9 setNumberOfLines:3];

  nicknameInfoLabel10 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel10 setTextAlignment:1];

  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v31 localizedStringForKey:@"NICKNAME_VIEW_MESSAGE" value:&stru_286AECDE0 table:0];
  nicknameInfoLabel11 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel11 setText:v29];
}

@end