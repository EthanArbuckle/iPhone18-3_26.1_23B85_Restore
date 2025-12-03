@interface MUDayRowView
+ (id)_hoursMonospacedFont;
- (BOOL)shouldStackForProposedWidth:(double)width;
- (MUDayRowView)initWithViewModel:(id)model;
- (id)_createHoursConstraints;
- (void)_refreshHoursLabel;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateFonts;
- (void)setStacked:(BOOL)stacked;
- (void)setViewModel:(id)model;
@end

@implementation MUDayRowView

- (void)setStacked:(BOOL)stacked
{
  if (self->_stacked != stacked)
  {
    self->_stacked = stacked;
    if ([(NSArray *)self->_hoursConstraints count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:self->_hoursConstraints];
      _createHoursConstraints = [(MUDayRowView *)self _createHoursConstraints];
      hoursConstraints = self->_hoursConstraints;
      self->_hoursConstraints = _createHoursConstraints;

      v6 = MEMORY[0x1E696ACD8];
      v7 = self->_hoursConstraints;

      [v6 activateConstraints:v7];
    }
  }
}

- (BOOL)shouldStackForProposedWidth:(double)width
{
  [(MUDayRowView *)self frame];
  Width = CGRectGetWidth(v11);
  [(MULabelViewProtocol *)self->_dayLabel idealWidth];
  v5 = Width * 0.5;
  if (v6 > v5)
  {
    return 1;
  }

  attributedText = [(MULabelViewProtocol *)self->_hoursLabel attributedText];
  [attributedText size];
  v7 = v9 > v5;

  return v7;
}

- (void)_refreshHoursLabel
{
  buildDefaultPlacecardHoursString = [(MUDayRowViewModel *)self->_viewModel buildDefaultPlacecardHoursString];
  [(MULabelViewProtocol *)self->_hoursLabel setAttributedText:buildDefaultPlacecardHoursString];
}

- (void)_updateFonts
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MULabelViewProtocol *)self->_dayLabel setFont:v3];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(MULabelViewProtocol *)self->_headerLabel setFont:v4];

  [(MUDayRowView *)self _refreshHoursLabel];
}

- (void)_updateAppearance
{
  labelHeaderString = [(MUDayRowViewModel *)self->_viewModel labelHeaderString];
  [(MULabelViewProtocol *)self->_headerLabel setText:labelHeaderString];

  dayString = [(MUDayRowViewModel *)self->_viewModel dayString];
  [(MULabelViewProtocol *)self->_dayLabel setText:dayString];

  [(MUDayRowView *)self _refreshHoursLabel];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUDayRowViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUDayRowView *)self _updateAppearance];
  }
}

- (id)_createHoursConstraints
{
  v34[6] = *MEMORY[0x1E69E9840];
  isStacked = [(MUDayRowView *)self isStacked];
  leadingAnchor = [(MULabelViewProtocol *)self->_dayLabel leadingAnchor];
  leadingAnchor2 = [(MUDayRowView *)self leadingAnchor];
  v32 = leadingAnchor;
  v5 = [leadingAnchor constraintEqualToAnchor:?];
  v30 = v5;
  if (isStacked)
  {
    v34[0] = v5;
    bottomAnchor = [(MULabelViewProtocol *)self->_dayLabel bottomAnchor];
    p_hoursLabel = &self->_hoursLabel;
    topAnchor = [(MULabelViewProtocol *)self->_hoursLabel topAnchor];
    v29 = bottomAnchor;
    v27 = [bottomAnchor constraintEqualToAnchor:-2.0 constant:?];
    v34[1] = v27;
    trailingAnchor = [(MULabelViewProtocol *)self->_dayLabel trailingAnchor];
    trailingAnchor2 = [(MULabelViewProtocol *)self->_hoursLabel trailingAnchor];
    v26 = trailingAnchor;
    v24 = [trailingAnchor constraintEqualToAnchor:?];
    v34[2] = v24;
    leadingAnchor3 = [(MULabelViewProtocol *)self->_hoursLabel leadingAnchor];
    leadingAnchor4 = [(MUDayRowView *)self leadingAnchor];
    v11 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v34[3] = v11;
    v12 = v34;
  }

  else
  {
    v33[0] = v5;
    bottomAnchor2 = [(MULabelViewProtocol *)self->_dayLabel bottomAnchor];
    topAnchor = [(MUDayRowView *)self bottomAnchor];
    v29 = bottomAnchor2;
    v27 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:-2.0 constant:?];
    v33[1] = v27;
    trailingAnchor3 = [(MULabelViewProtocol *)self->_dayLabel trailingAnchor];
    p_hoursLabel = &self->_hoursLabel;
    trailingAnchor2 = [(MULabelViewProtocol *)self->_hoursLabel leadingAnchor];
    v26 = trailingAnchor3;
    v24 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:?];
    v33[2] = v24;
    leadingAnchor3 = [(MULabelViewProtocol *)self->_hoursLabel topAnchor];
    leadingAnchor4 = [(MULabelViewProtocol *)self->_dayLabel topAnchor];
    v11 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v33[3] = v11;
    v12 = v33;
  }

  trailingAnchor4 = [(MULabelViewProtocol *)*p_hoursLabel trailingAnchor];
  trailingAnchor5 = [(MUDayRowView *)self trailingAnchor];
  v17 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v12[4] = v17;
  bottomAnchor3 = [(MULabelViewProtocol *)*p_hoursLabel bottomAnchor];
  bottomAnchor4 = [(MUDayRowView *)self bottomAnchor];
  v20 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-2.0];
  v12[5] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_setupConstraints
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  labelHeaderString = [(MUDayRowViewModel *)self->_viewModel labelHeaderString];
  v5 = [labelHeaderString length];

  if (v5)
  {
    leadingAnchor = [(MULabelViewProtocol *)self->_headerLabel leadingAnchor];
    leadingAnchor2 = [(MUDayRowView *)self leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v23;
    trailingAnchor = [(MULabelViewProtocol *)self->_headerLabel trailingAnchor];
    trailingAnchor2 = [(MUDayRowView *)self trailingAnchor];
    v24 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v29[1] = v24;
    topAnchor = [(MULabelViewProtocol *)self->_headerLabel topAnchor];
    topAnchor2 = [(MUDayRowView *)self topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[2] = v9;
    bottomAnchor = [(MULabelViewProtocol *)self->_headerLabel bottomAnchor];
    topAnchor3 = [(MULabelViewProtocol *)self->_dayLabel topAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-2.0];
    v29[3] = v12;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    v14 = v13 = v3;
    [v13 addObjectsFromArray:v14];

    v3 = v13;
    v15 = v23;

    topAnchor5 = leadingAnchor2;
    topAnchor4 = leadingAnchor;
  }

  else
  {
    topAnchor4 = [(MULabelViewProtocol *)self->_dayLabel topAnchor];
    topAnchor5 = [(MUDayRowView *)self topAnchor];
    v15 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:2.0];
    v28 = v15;
    trailingAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v3 addObjectsFromArray:trailingAnchor];
  }

  _createHoursConstraints = [(MUDayRowView *)self _createHoursConstraints];
  hoursConstraints = self->_hoursConstraints;
  self->_hoursConstraints = _createHoursConstraints;

  [v3 addObjectsFromArray:self->_hoursConstraints];
  v20 = MEMORY[0x1E696ACD8];
  v21 = [v3 copy];
  [v20 activateConstraints:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v18[1] = *MEMORY[0x1E69E9840];
  labelHeaderString = [(MUDayRowViewModel *)self->_viewModel labelHeaderString];
  v4 = [labelHeaderString length];

  if (v4)
  {
    v5 = [MUInfoCardStyle labelForProminence:0];
    headerLabel = self->_headerLabel;
    self->_headerLabel = v5;

    [(MULabelViewProtocol *)self->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(MULabelViewProtocol *)self->_headerLabel setTextColor:secondaryLabelColor];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(MULabelViewProtocol *)self->_headerLabel setFont:v8];

    [(MULabelViewProtocol *)self->_headerLabel setAllowsDefaultTighteningForTruncation:1];
    [(MULabelViewProtocol *)self->_headerLabel setAccessibilityIdentifier:@"DayRowHeader"];
    [(MUDayRowView *)self addSubview:self->_headerLabel];
  }

  v9 = [MUInfoCardStyle labelForProminence:0];
  dayLabel = self->_dayLabel;
  self->_dayLabel = v9;

  [(MULabelViewProtocol *)self->_dayLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MULabelViewProtocol *)self->_dayLabel setFont:v11];

  [(MULabelViewProtocol *)self->_dayLabel setAllowsDefaultTighteningForTruncation:1];
  [(MULabelViewProtocol *)self->_dayLabel setAccessibilityIdentifier:@"DayRowDayLabel"];
  [(MUDayRowView *)self addSubview:self->_dayLabel];
  v12 = [MUInfoCardStyle labelForProminence:0];
  hoursLabel = self->_hoursLabel;
  self->_hoursLabel = v12;

  [(MULabelViewProtocol *)self->_hoursLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_hoursLabel setNumberOfLines:0];
  [(MULabelViewProtocol *)self->_hoursLabel setAllowsDefaultTighteningForTruncation:1];
  [(MULabelViewProtocol *)self->_hoursLabel setTextAlignment:2 * ([(MUDayRowView *)self effectiveUserInterfaceLayoutDirection]!= 1)];
  [(MULabelViewProtocol *)self->_hoursLabel setAccessibilityIdentifier:@"DayRowHoursLabel"];
  [(MUDayRowView *)self addSubview:self->_hoursLabel];
  v14 = objc_opt_self();
  v18[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16 = [(MUDayRowView *)self registerForTraitChanges:v15 withAction:sel__updateFonts];

  v17 = *MEMORY[0x1E69E9840];
}

- (MUDayRowView)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = MUDayRowView;
  v6 = [(MUDayRowView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(MUDayRowView *)v7 setAccessibilityIdentifier:@"DayRow"];
    [(MUDayRowView *)v7 _setupSubviews];
    [(MUDayRowView *)v7 _setupConstraints];
    [(MUDayRowView *)v7 _updateAppearance];
  }

  return v7;
}

+ (id)_hoursMonospacedFont
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB900];
  v11[0] = *MEMORY[0x1E69DB908];
  v11[1] = v2;
  v12[0] = &unk_1F450DEB0;
  v12[1] = &unk_1F450DEC8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  fontDescriptor = [v4 fontDescriptor];
  v6 = [fontDescriptor fontDescriptorByAddingAttributes:v3];

  v7 = MEMORY[0x1E69DB878];
  [v6 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end