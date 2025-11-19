@interface SUUIComposeReviewNicknameView
- (SUUIComposeReviewNicknameView)initWithFrame:(CGRect)a3;
- (void)_setupInfo;
- (void)_setupSampleCardView;
- (void)_setupTextField;
- (void)_setupTitle;
- (void)_setupView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SUUIComposeReviewNicknameView

- (SUUIComposeReviewNicknameView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUIComposeReviewNicknameView;
  v3 = [(SUUIComposeReviewNicknameView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIComposeReviewNicknameView *)v3 setBackgroundColor:v4];

    [(SUUIComposeReviewNicknameView *)v3 _setupView];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIComposeReviewNicknameView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [(SUUIComposeReviewNicknameView *)self titleView];
    v9 = SUUIFontLimitedPreferredFontForTextStyle(15, 7);
    [v8 setFont:v9];

    v10 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
    v11 = SUUIFontLimitedPreferredFontForTextStyle(3, 7);
    [v10 setFont:v11];

    v12 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
    v13 = SUUIFontLimitedPreferredFontForTextStyle(1, 7);
    [v12 setFont:v13];

    v14 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
    v15 = SUUIFontLimitedPreferredFontForTextStyle(11, 7);
    [v14 setFont:v15];
  }

  v16 = [(SUUIComposeReviewNicknameView *)self traitCollection];
  v17 = [v16 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v17)
  {
    v18 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
    v19 = [v18 layer];
    v20 = [MEMORY[0x277D75348] systemBackgroundColor];
    v21 = [v20 colorWithAlphaComponent:0.0];
    v27[0] = [v21 CGColor];
    v22 = [MEMORY[0x277D75348] systemBackgroundColor];
    v23 = [v22 colorWithAlphaComponent:0.0];
    v27[1] = [v23 CGColor];
    v24 = [MEMORY[0x277D75348] systemBackgroundColor];
    v27[2] = [v24 CGColor];
    v25 = [MEMORY[0x277D75348] systemBackgroundColor];
    v27[3] = [v25 CGColor];
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [v19 setColors:v26];
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

  v4 = [(SUUIComposeReviewNicknameView *)self titleView];
  v5 = SUUIFontLimitedPreferredFontForTextStyle(15, 7);
  [v4 setFont:v5];

  v6 = [(SUUIComposeReviewNicknameView *)self titleView];
  [v6 setNumberOfLines:2];

  v7 = [(SUUIComposeReviewNicknameView *)self titleView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(SUUIComposeReviewNicknameView *)self titleView];
  [(SUUIComposeReviewNicknameView *)self addSubview:v8];

  v9 = [(SUUIComposeReviewNicknameView *)self titleView];
  v10 = [v9 firstBaselineAnchor];
  v11 = [(SUUIComposeReviewNicknameView *)self safeAreaLayoutGuide];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:61.0];
  [v13 setActive:1];

  v14 = [(SUUIComposeReviewNicknameView *)self titleView];
  v15 = [v14 leadingAnchor];
  v16 = [(SUUIComposeReviewNicknameView *)self leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:20.0];
  [v17 setActive:1];

  v18 = [(SUUIComposeReviewNicknameView *)self titleView];
  v19 = [v18 trailingAnchor];
  v20 = [(SUUIComposeReviewNicknameView *)self trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-20.0];
  [v21 setActive:1];

  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"NICKNAME_VIEW_TITLE" value:&stru_286AECDE0 table:0];
  v24 = [(SUUIComposeReviewNicknameView *)self titleView];
  [v24 setText:v23];

  v25 = [(SUUIComposeReviewNicknameView *)self titleView];
  [v25 setTextAlignment:1];
}

- (void)_setupSampleCardView
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setSampleCardView:v3];

  v4 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  [(SUUIComposeReviewNicknameView *)self addSubview:v5];

  v6 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v7 = [v6 topAnchor];
  v8 = [(SUUIComposeReviewNicknameView *)self titleView];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:24.0];
  [v10 setActive:1];

  v11 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v12 = [v11 centerXAnchor];
  v13 = [(SUUIComposeReviewNicknameView *)self centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [SUUIGradientView alloc];
  v16 = [(SUUIGradientView *)v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SUUIComposeReviewNicknameView *)self setSampleCardGradientView:v16];

  v17 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v19 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  [v18 addSubview:v19];

  v20 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  v21 = [v20 topAnchor];
  v22 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  v26 = [v25 leadingAnchor];
  v27 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v28 = [v27 leadingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  v31 = [v30 trailingAnchor];
  v32 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  v36 = [v35 bottomAnchor];
  v37 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  v41 = [v40 layer];
  v42 = [MEMORY[0x277D75348] systemBackgroundColor];
  v43 = [v42 colorWithAlphaComponent:0.0];
  v51[0] = [v43 CGColor];
  v44 = [MEMORY[0x277D75348] systemBackgroundColor];
  v45 = [v44 colorWithAlphaComponent:0.0];
  v51[1] = [v45 CGColor];
  v46 = [MEMORY[0x277D75348] systemBackgroundColor];
  v51[2] = [v46 CGColor];
  v47 = [MEMORY[0x277D75348] systemBackgroundColor];
  v51[3] = [v47 CGColor];
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [v41 setColors:v48];

  v49 = [(SUUIComposeReviewNicknameView *)self sampleCardGradientView];
  v50 = [v49 layer];
  [v50 setLocations:&unk_286BBE160];
}

- (void)_setupTextField
{
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknameBackgroundView:v3];

  v4 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v6 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [v6 setBackgroundColor:v5];

  v7 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v8 = [v7 layer];
  [v8 setCornerRadius:8.0];

  v9 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [(SUUIComposeReviewNicknameView *)self addSubview:v9];

  v10 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v11 = [v10 topAnchor];
  v12 = [(SUUIComposeReviewNicknameView *)self sampleCardView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];
  [v14 setActive:1];

  v15 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v16 = [v15 leadingAnchor];
  v17 = [(SUUIComposeReviewNicknameView *)self leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:20.0];
  [v18 setActive:1];

  v19 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v20 = [v19 trailingAnchor];
  v21 = [(SUUIComposeReviewNicknameView *)self trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-20.0];
  [v22 setActive:1];

  v23 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknamePlaceholderLabel:v23];

  v24 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v26 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [v25 addSubview:v26];

  v27 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v28 = SUUIFontLimitedPreferredFontForTextStyle(3, 7);
  [v27 setFont:v28];

  v29 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v30 = [v29 leadingAnchor];
  v31 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v32 = [v31 leadingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:20.0];
  [v33 setActive:1];

  v34 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v35 = [v34 topAnchor];
  v36 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v37 = [v36 topAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:18.0];
  [v38 setActive:1];

  v39 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v40 = [v39 bottomAnchor];
  v41 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:-18.0];
  [v43 setActive:1];

  v44 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  LODWORD(v45) = 1148846080;
  [v44 setContentHuggingPriority:0 forAxis:v45];

  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = [v46 localizedStringForKey:@"NICKNAME_VIEW_PLACEHOLDER" value:&stru_286AECDE0 table:0];
  v48 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [v48 setText:v47];

  v49 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknameTextfield:v49];

  v50 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

  v51 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v52 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  [v51 addSubview:v52];

  v53 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v54 = [v53 firstBaselineAnchor];
  v55 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v56 = [v55 firstBaselineAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v59 = [v58 topAnchor];
  v60 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v61 = [v60 topAnchor];
  v62 = [v59 constraintEqualToAnchor:v61];
  [v62 setActive:1];

  v63 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v64 = [v63 leadingAnchor];
  v65 = [(SUUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v66 = [v65 trailingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:20.0];
  [v67 setActive:1];

  v68 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v69 = [v68 trailingAnchor];
  v70 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v71 = [v70 trailingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71 constant:-16.0];
  [v72 setActive:1];

  v73 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v74 = [v73 bottomAnchor];
  v75 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v76 = [v75 bottomAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
  [v77 setActive:1];

  v78 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  LODWORD(v79) = 1132068864;
  [v78 setContentCompressionResistancePriority:0 forAxis:v79];

  v80 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  [v80 setClearButtonMode:1];

  v82 = [(SUUIComposeReviewNicknameView *)self nicknameTextfield];
  v81 = SUUIFontLimitedPreferredFontForTextStyle(1, 7);
  [v82 setFont:v81];
}

- (void)_setupInfo
{
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameView *)self setNicknameInfoLabel:v3];

  v4 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [(SUUIComposeReviewNicknameView *)self addSubview:v5];

  v6 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v7 = SUUIFontLimitedPreferredFontForTextStyle(11, 7);
  [v6 setFont:v7];

  v8 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v8 setTextColor:v9];

  v10 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v11 = [v10 leadingAnchor];
  v12 = [(SUUIComposeReviewNicknameView *)self leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:40.0];
  [v13 setActive:1];

  v14 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v15 = [v14 trailingAnchor];
  v16 = [(SUUIComposeReviewNicknameView *)self trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-40.0];
  [v17 setActive:1];

  v18 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v19 = [v18 firstBaselineAnchor];
  v20 = [(SUUIComposeReviewNicknameView *)self nicknameBackgroundView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:24.0];
  [v22 setActive:1];

  v23 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v24 = [v23 bottomAnchor];
  v25 = [(SUUIComposeReviewNicknameView *)self bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-20.0];
  [v26 setActive:1];

  v27 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [v27 setNumberOfLines:3];

  v28 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [v28 setTextAlignment:1];

  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v31 localizedStringForKey:@"NICKNAME_VIEW_MESSAGE" value:&stru_286AECDE0 table:0];
  v30 = [(SUUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [v30 setText:v29];
}

@end