@interface MUDayRowView
+ (id)_hoursMonospacedFont;
- (BOOL)shouldStackForProposedWidth:(double)a3;
- (MUDayRowView)initWithViewModel:(id)a3;
- (id)_createHoursConstraints;
- (void)_refreshHoursLabel;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateFonts;
- (void)setStacked:(BOOL)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUDayRowView

- (void)setStacked:(BOOL)a3
{
  if (self->_stacked != a3)
  {
    self->_stacked = a3;
    if ([(NSArray *)self->_hoursConstraints count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:self->_hoursConstraints];
      v4 = [(MUDayRowView *)self _createHoursConstraints];
      hoursConstraints = self->_hoursConstraints;
      self->_hoursConstraints = v4;

      v6 = MEMORY[0x1E696ACD8];
      v7 = self->_hoursConstraints;

      [v6 activateConstraints:v7];
    }
  }
}

- (BOOL)shouldStackForProposedWidth:(double)a3
{
  [(MUDayRowView *)self frame];
  Width = CGRectGetWidth(v11);
  [(MULabelViewProtocol *)self->_dayLabel idealWidth];
  v5 = Width * 0.5;
  if (v6 > v5)
  {
    return 1;
  }

  v8 = [(MULabelViewProtocol *)self->_hoursLabel attributedText];
  [v8 size];
  v7 = v9 > v5;

  return v7;
}

- (void)_refreshHoursLabel
{
  v3 = [(MUDayRowViewModel *)self->_viewModel buildDefaultPlacecardHoursString];
  [(MULabelViewProtocol *)self->_hoursLabel setAttributedText:v3];
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
  v3 = [(MUDayRowViewModel *)self->_viewModel labelHeaderString];
  [(MULabelViewProtocol *)self->_headerLabel setText:v3];

  v4 = [(MUDayRowViewModel *)self->_viewModel dayString];
  [(MULabelViewProtocol *)self->_dayLabel setText:v4];

  [(MUDayRowView *)self _refreshHoursLabel];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MUDayRowViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUDayRowView *)self _updateAppearance];
  }
}

- (id)_createHoursConstraints
{
  v34[6] = *MEMORY[0x1E69E9840];
  v3 = [(MUDayRowView *)self isStacked];
  v4 = [(MULabelViewProtocol *)self->_dayLabel leadingAnchor];
  v31 = [(MUDayRowView *)self leadingAnchor];
  v32 = v4;
  v5 = [v4 constraintEqualToAnchor:?];
  v30 = v5;
  if (v3)
  {
    v34[0] = v5;
    v6 = [(MULabelViewProtocol *)self->_dayLabel bottomAnchor];
    p_hoursLabel = &self->_hoursLabel;
    v28 = [(MULabelViewProtocol *)self->_hoursLabel topAnchor];
    v29 = v6;
    v27 = [v6 constraintEqualToAnchor:-2.0 constant:?];
    v34[1] = v27;
    v8 = [(MULabelViewProtocol *)self->_dayLabel trailingAnchor];
    v25 = [(MULabelViewProtocol *)self->_hoursLabel trailingAnchor];
    v26 = v8;
    v24 = [v8 constraintEqualToAnchor:?];
    v34[2] = v24;
    v9 = [(MULabelViewProtocol *)self->_hoursLabel leadingAnchor];
    v10 = [(MUDayRowView *)self leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v34[3] = v11;
    v12 = v34;
  }

  else
  {
    v33[0] = v5;
    v13 = [(MULabelViewProtocol *)self->_dayLabel bottomAnchor];
    v28 = [(MUDayRowView *)self bottomAnchor];
    v29 = v13;
    v27 = [v13 constraintLessThanOrEqualToAnchor:-2.0 constant:?];
    v33[1] = v27;
    v14 = [(MULabelViewProtocol *)self->_dayLabel trailingAnchor];
    p_hoursLabel = &self->_hoursLabel;
    v25 = [(MULabelViewProtocol *)self->_hoursLabel leadingAnchor];
    v26 = v14;
    v24 = [v14 constraintLessThanOrEqualToAnchor:?];
    v33[2] = v24;
    v9 = [(MULabelViewProtocol *)self->_hoursLabel topAnchor];
    v10 = [(MULabelViewProtocol *)self->_dayLabel topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v33[3] = v11;
    v12 = v33;
  }

  v15 = [(MULabelViewProtocol *)*p_hoursLabel trailingAnchor];
  v16 = [(MUDayRowView *)self trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v12[4] = v17;
  v18 = [(MULabelViewProtocol *)*p_hoursLabel bottomAnchor];
  v19 = [(MUDayRowView *)self bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-2.0];
  v12[5] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_setupConstraints
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MUDayRowViewModel *)self->_viewModel labelHeaderString];
  v5 = [v4 length];

  if (v5)
  {
    v27 = [(MULabelViewProtocol *)self->_headerLabel leadingAnchor];
    v26 = [(MUDayRowView *)self leadingAnchor];
    v23 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v23;
    v6 = [(MULabelViewProtocol *)self->_headerLabel trailingAnchor];
    v25 = [(MUDayRowView *)self trailingAnchor];
    v24 = [v6 constraintLessThanOrEqualToAnchor:v25];
    v29[1] = v24;
    v7 = [(MULabelViewProtocol *)self->_headerLabel topAnchor];
    v8 = [(MUDayRowView *)self topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v29[2] = v9;
    v10 = [(MULabelViewProtocol *)self->_headerLabel bottomAnchor];
    v11 = [(MULabelViewProtocol *)self->_dayLabel topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:-2.0];
    v29[3] = v12;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    v14 = v13 = v3;
    [v13 addObjectsFromArray:v14];

    v3 = v13;
    v15 = v23;

    v16 = v26;
    v17 = v27;
  }

  else
  {
    v17 = [(MULabelViewProtocol *)self->_dayLabel topAnchor];
    v16 = [(MUDayRowView *)self topAnchor];
    v15 = [v17 constraintEqualToAnchor:v16 constant:2.0];
    v28 = v15;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v3 addObjectsFromArray:v6];
  }

  v18 = [(MUDayRowView *)self _createHoursConstraints];
  hoursConstraints = self->_hoursConstraints;
  self->_hoursConstraints = v18;

  [v3 addObjectsFromArray:self->_hoursConstraints];
  v20 = MEMORY[0x1E696ACD8];
  v21 = [v3 copy];
  [v20 activateConstraints:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(MUDayRowViewModel *)self->_viewModel labelHeaderString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [MUInfoCardStyle labelForProminence:0];
    headerLabel = self->_headerLabel;
    self->_headerLabel = v5;

    [(MULabelViewProtocol *)self->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(MULabelViewProtocol *)self->_headerLabel setTextColor:v7];

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

- (MUDayRowView)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUDayRowView;
  v6 = [(MUDayRowView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
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
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorByAddingAttributes:v3];

  v7 = MEMORY[0x1E69DB878];
  [v6 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end