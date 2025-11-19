@interface MUHoursSummaryView
- (MUHoursSummaryView)initWithViewModel:(id)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateExpandButton;
- (void)expandButtonTapped:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
@end

@implementation MUHoursSummaryView

- (void)_updateAppearance
{
  [(UIImageView *)self->_expansionIndicator setHidden:[(MUHoursSummaryViewModel *)self->_viewModel hideChevron]];
  v3 = [(MUHoursSummaryViewModel *)self->_viewModel showHoursAndOpenState];
  viewModel = self->_viewModel;
  if (v3)
  {
    v5 = [(MUHoursSummaryViewModel *)viewModel openStateColor];
    [(MULabelViewProtocol *)self->_openStateLabel setTextColor:v5];

    v6 = [(MUHoursSummaryViewModel *)self->_viewModel openStateText];
    [(MULabelViewProtocol *)self->_openStateLabel setText:v6];

    if ([(MUHoursSummaryViewModel *)self->_viewModel showHoursInSummary])
    {
      hoursLabel = self->_hoursLabel;

      [(MULabelViewProtocol *)hoursLabel setAttributedText:0];
      return;
    }

    v8 = [(MUHoursSummaryViewModel *)self->_viewModel buildDefaultPlacecardHoursString];
    [(MULabelViewProtocol *)self->_hoursLabel setAttributedText:v8];
  }

  else
  {
    v8 = [(MUHoursSummaryViewModel *)viewModel titleText];
    [(MULabelViewProtocol *)self->_titleLabel setText:v8];
  }
}

- (void)_updateExpandButton
{
  if (self->_expanded)
  {
    v2 = @"chevron.up";
  }

  else
  {
    v2 = @"chevron.down";
  }

  expansionIndicator = self->_expansionIndicator;
  v4 = MEMORY[0x1E69DCAB8];
  v5 = MEMORY[0x1E69DCAD8];
  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDD40];
  v8 = v2;
  v11 = [v6 preferredFontForTextStyle:v7];
  v9 = [v5 configurationWithFont:v11 scale:1];
  v10 = [v4 systemImageNamed:v8 withConfiguration:v9];

  [(UIImageView *)expansionIndicator setImage:v10];
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(MUHoursSummaryView *)self _updateExpandButton];
  }
}

- (void)expandButtonTapped:(BOOL)a3
{
  v3 = a3;
  self->_expanded ^= 1u;
  [(MUHoursSummaryView *)self _updateExpandButton];
  v5 = [(MUHoursSummaryView *)self actionHandler];

  if (v5 && v3)
  {
    v6 = [(MUHoursSummaryView *)self actionHandler];
    v6[2]();
  }
}

- (void)_setupConstraints
{
  v71[11] = *MEMORY[0x1E69E9840];
  v3 = [(MUHoursSummaryViewModel *)self->_viewModel showHoursAndOpenState];
  v58 = MEMORY[0x1E696ACD8];
  v4 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
  v5 = [(MUHoursSummaryView *)self layoutMarginsGuide];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v8 = v7;
  if (v3)
  {
    v71[0] = v7;
    v9 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v69 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    v68 = [v69 bottomAnchor];
    v67 = [v9 constraintEqualToAnchor:?];
    v71[1] = v67;
    v10 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    v65 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [v65 leadingAnchor];
    v64 = v66 = v10;
    v63 = [v10 constraintEqualToAnchor:?];
    v71[2] = v63;
    v11 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    v61 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [v61 trailingAnchor];
    v60 = v62 = v11;
    v59 = [v11 constraintEqualToAnchor:?];
    v71[3] = v59;
    v12 = [(MULabelViewProtocol *)self->_openStateLabel leadingAnchor];
    v56 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    v57 = v12;
    v55 = [v12 constraintEqualToAnchor:?];
    v71[4] = v55;
    v13 = [(MULabelViewProtocol *)self->_openStateLabel topAnchor];
    v53 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
    v54 = v13;
    v52 = [v13 constraintEqualToAnchor:?];
    v71[5] = v52;
    v14 = [(MULabelViewProtocol *)self->_openStateLabel bottomAnchor];
    v50 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v51 = v14;
    v49 = [v14 constraintEqualToAnchor:?];
    v71[6] = v49;
    v15 = [(MULabelViewProtocol *)self->_openStateLabel trailingAnchor];
    v47 = [(MULabelViewProtocol *)self->_hoursLabel leadingAnchor];
    v48 = v15;
    v46 = [v15 constraintLessThanOrEqualToAnchor:?];
    v71[7] = v46;
    v16 = [(MULabelViewProtocol *)self->_hoursLabel topAnchor];
    v44 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
    v45 = v16;
    v43 = [v16 constraintEqualToAnchor:?];
    v71[8] = v43;
    v17 = [(MULabelViewProtocol *)self->_hoursLabel trailingAnchor];
    v41 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    v42 = v17;
    v40 = [v17 constraintEqualToAnchor:?];
    v71[9] = v40;
    v18 = [(MULabelViewProtocol *)self->_hoursLabel bottomAnchor];
    v19 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v71[10] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:11];
    [v58 activateConstraints:v21];
  }

  else
  {
    v70[0] = v7;
    v39 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v69 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    v68 = [v69 bottomAnchor];
    v67 = [v39 constraintEqualToAnchor:?];
    v70[1] = v67;
    v22 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    v65 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [v65 leadingAnchor];
    v64 = v66 = v22;
    v63 = [v22 constraintEqualToAnchor:?];
    v70[2] = v63;
    v23 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    v61 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [v61 trailingAnchor];
    v60 = v62 = v23;
    v59 = [v23 constraintEqualToAnchor:?];
    v70[3] = v59;
    v24 = [(MULabelViewProtocol *)self->_titleLabel topAnchor];
    v56 = [(UILayoutGuide *)self->_summaryStackLayoutGuide topAnchor];
    v57 = v24;
    v55 = [v24 constraintEqualToAnchor:?];
    v70[4] = v55;
    v25 = [(MULabelViewProtocol *)self->_titleLabel leadingAnchor];
    v53 = [(UILayoutGuide *)self->_summaryStackLayoutGuide leadingAnchor];
    v54 = v25;
    v52 = [v25 constraintEqualToAnchor:?];
    v70[5] = v52;
    v26 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
    v50 = [(UILayoutGuide *)self->_summaryStackLayoutGuide trailingAnchor];
    v51 = v26;
    v49 = [v26 constraintEqualToAnchor:?];
    v70[6] = v49;
    v27 = [(MULabelViewProtocol *)self->_titleLabel bottomAnchor];
    v47 = [(UILayoutGuide *)self->_summaryStackLayoutGuide bottomAnchor];
    v48 = v27;
    v46 = [v27 constraintEqualToAnchor:?];
    v70[7] = v46;
    v28 = [(UIImageView *)self->_expansionIndicator topAnchor];
    v44 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    [v44 topAnchor];
    v43 = v45 = v28;
    v42 = [v28 constraintEqualToAnchor:?];
    v70[8] = v42;
    v29 = [(UIImageView *)self->_expansionIndicator bottomAnchor];
    v40 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    v38 = [v40 bottomAnchor];
    v41 = v29;
    v19 = [v29 constraintLessThanOrEqualToAnchor:v38];
    v70[9] = v19;
    v20 = [(UIImageView *)self->_expansionIndicator trailingAnchor];
    v21 = [(MUHoursSummaryView *)self layoutMarginsGuide];
    v30 = [v21 trailingAnchor];
    v31 = [v20 constraintEqualToAnchor:v30];
    v70[10] = v31;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:11];
    v32 = v8;
    v33 = v6;
    v34 = v5;
    v36 = v35 = v4;
    [v58 activateConstraints:v36];

    v4 = v35;
    v5 = v34;
    v6 = v33;
    v8 = v32;
    v9 = v39;

    v18 = v38;
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v37[1] = *MEMORY[0x1E69E9840];
  [(MUHoursSummaryView *)self setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
  [(MUHoursSummaryView *)self setInsetsLayoutMarginsFromSafeArea:0];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  summaryStackLayoutGuide = self->_summaryStackLayoutGuide;
  self->_summaryStackLayoutGuide = v3;

  [(MUHoursSummaryView *)self addLayoutGuide:self->_summaryStackLayoutGuide];
  v5 = [MUInfoCardStyle vibrantLabelForProminence:1];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = *MEMORY[0x1E69DB970];
  v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v9];

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(MULabelViewProtocol *)self->_titleLabel setTextColor:v10];

  [(MULabelViewProtocol *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"HoursSummaryTitle"];
  v11 = [MUInfoCardStyle labelForProminence:0];
  hoursLabel = self->_hoursLabel;
  self->_hoursLabel = v11;

  [(MULabelViewProtocol *)self->_hoursLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_hoursLabel setNumberOfLines:0];
  [(MULabelViewProtocol *)self->_hoursLabel setAdjustsFontForContentSizeCategory:1];
  [(MULabelViewProtocol *)self->_hoursLabel setAccessibilityIdentifier:@"HoursSummaryHours"];
  v13 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  p_openStateLabel = &self->_openStateLabel;
  openStateLabel = self->_openStateLabel;
  self->_openStateLabel = v13;

  [(MULabelViewProtocol *)self->_openStateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_openStateLabel setAdjustsFontForContentSizeCategory:1];
  v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v7 weight:v8];
  [(MULabelViewProtocol *)self->_openStateLabel setFont:v16];

  v17 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  expansionIndicator = self->_expansionIndicator;
  self->_expansionIndicator = v18;

  [(UIImageView *)self->_expansionIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_expansionIndicator _setOverrideUserInterfaceRenderingMode:2];
  v20 = MEMORY[0x1E69DCAD8];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v22 = [v20 configurationWithFont:v21 scale:1];
  [(UIImageView *)self->_expansionIndicator setPreferredSymbolConfiguration:v22];

  v23 = self->_expansionIndicator;
  v24 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v23 setTintColor:v24];

  LODWORD(v25) = 1148846080;
  [(UIImageView *)self->_expansionIndicator setContentHuggingPriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(UIImageView *)self->_expansionIndicator setContentHuggingPriority:1 forAxis:v26];
  v27 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v27;

  [(MUHoursSummaryView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel_expandButtonTapped];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel_expandButtonTapped];
  [(MUHoursSummaryView *)self _updateExpandButton];
  if ([(MUHoursSummaryViewModel *)self->_viewModel showHoursAndOpenState])
  {
    [(MUHoursSummaryView *)self addSubview:self->_hoursLabel];
    [*p_openStateLabel setAccessibilityIdentifier:@"HoursSummaryOpenState"];
  }

  else
  {
    [(MUHoursSummaryView *)self addSubview:self->_titleLabel];
    p_openStateLabel = &self->_expansionIndicator;
  }

  [(MUHoursSummaryView *)self addSubview:*p_openStateLabel];
  v29 = objc_opt_self();
  v37[0] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v31 = [(MUHoursSummaryView *)self registerForTraitChanges:v30 withAction:sel__updateForPlatterAvailability];

  v32 = objc_opt_self();
  v36 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v34 = [(MUHoursSummaryView *)self registerForTraitChanges:v33 withAction:sel__contentSizeDidChange];

  v35 = *MEMORY[0x1E69E9840];
}

- (MUHoursSummaryView)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUHoursSummaryView;
  v6 = [(MUHoursSummaryView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_expanded = 0;
    objc_storeStrong(&v6->_viewModel, a3);
    [(MUHoursSummaryView *)v7 setAccessibilityIdentifier:@"HoursSummary"];
    [(MUHoursSummaryView *)v7 _setupSubviews];
    [(MUHoursSummaryView *)v7 _setupConstraints];
    [(MUHoursSummaryView *)v7 _updateAppearance];
  }

  return v7;
}

@end