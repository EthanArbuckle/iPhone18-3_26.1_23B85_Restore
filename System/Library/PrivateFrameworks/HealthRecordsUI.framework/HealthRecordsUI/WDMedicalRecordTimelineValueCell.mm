@interface WDMedicalRecordTimelineValueCell
+ (double)_titleLabelTopToFirstBaseline;
- (id)_generateValueDisplayAttributedString;
- (id)_generateValueDisplayAttributedStringWithValueFont:(id)font unitFont:(id)unitFont;
- (void)setAttributedSubtitleText:(id)text;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setValue:(id)value unit:(id)unit;
- (void)setupSubviews;
- (void)updateConstraints;
@end

@implementation WDMedicalRecordTimelineValueCell

- (void)setupSubviews
{
  v120.receiver = self;
  v120.super_class = WDMedicalRecordTimelineValueCell;
  [(WDMedicalRecordGroupableCell *)&v120 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineValueCell *)self setTitleLabel:v3];

  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  titleLabel = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel2 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [titleLabel2 setTextColor:labelColor];

  titleLabel3 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:8];

  titleLabel4 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [titleLabel4 setLineBreakMode:5];

  titleLabel5 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordTimelineValueCell *)self contentView];
  titleLabel6 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [contentView addSubview:titleLabel6];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineValueCell *)self setSubtitleLabel:v13];

  v14 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  subtitleLabel = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [subtitleLabel setFont:v14];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  subtitleLabel2 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:secondaryLabelColor];

  subtitleLabel3 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [subtitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  subtitleLabel4 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [contentView2 addSubview:subtitleLabel4];

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineValueCell *)self setValueLabel:v21];

  valueLabel = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [valueLabel setNumberOfLines:3];

  _valueLabelFontSingleLine = [objc_opt_class() _valueLabelFontSingleLine];
  valueLabel2 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [valueLabel2 setFont:_valueLabelFontSingleLine];

  hk_clinicalRecordValueColor = [MEMORY[0x1E69DC888] hk_clinicalRecordValueColor];
  valueLabel3 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [valueLabel3 setTextColor:hk_clinicalRecordValueColor];

  valueLabel4 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [valueLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  valueLabel5 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [contentView3 addSubview:valueLabel5];

  titleLabel7 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  leadingAnchor = [titleLabel7 leadingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v34 setActive:1];

  valueLabel6 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  topAnchor = [valueLabel6 topAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView2 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.0];
  [v39 setActive:1];

  valueLabel7 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  firstBaselineAnchor = [valueLabel7 firstBaselineAnchor];
  titleLabel8 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel8 firstBaselineAnchor];
  v44 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  [v44 setActive:1];

  valueLabel8 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  leadingAnchor3 = [valueLabel8 leadingAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor4 = [pillBackgroundView3 leadingAnchor];
  v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueLeftAlignConstraint:v49];

  valueLabel9 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  trailingAnchor = [valueLabel9 trailingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView4 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueRightAlignConstraint:v54];

  titleLabel9 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  trailingAnchor3 = [titleLabel9 trailingAnchor];
  valueLabel10 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  leadingAnchor5 = [valueLabel10 leadingAnchor];
  v59 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:-16.0];
  [(WDMedicalRecordTimelineValueCell *)self setTitleValueGapConstraint:v59];

  titleLabel10 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  widthAnchor = [titleLabel10 widthAnchor];
  v62 = [widthAnchor constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setTitleWidthConstraint:v62];

  valueLabel11 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  widthAnchor2 = [valueLabel11 widthAnchor];
  v65 = [widthAnchor2 constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueWidthConstraint:v65];

  titleWidthConstraint = [(WDMedicalRecordTimelineValueCell *)self titleWidthConstraint];
  [titleWidthConstraint setActive:1];

  valueWidthConstraint = [(WDMedicalRecordTimelineValueCell *)self valueWidthConstraint];
  [valueWidthConstraint setActive:1];

  titleLabel11 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  heightAnchor = [titleLabel11 heightAnchor];
  v70 = [heightAnchor constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setTitleHeightConstraint:v70];

  valueLabel12 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  heightAnchor2 = [valueLabel12 heightAnchor];
  v73 = [heightAnchor2 constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueHeightConstraint:v73];

  titleHeightConstraint = [(WDMedicalRecordTimelineValueCell *)self titleHeightConstraint];
  LODWORD(v75) = 1148829696;
  [titleHeightConstraint setPriority:v75];

  valueHeightConstraint = [(WDMedicalRecordTimelineValueCell *)self valueHeightConstraint];
  LODWORD(v77) = 1148829696;
  [valueHeightConstraint setPriority:v77];

  titleHeightConstraint2 = [(WDMedicalRecordTimelineValueCell *)self titleHeightConstraint];
  [titleHeightConstraint2 setActive:1];

  valueHeightConstraint2 = [(WDMedicalRecordTimelineValueCell *)self valueHeightConstraint];
  [valueHeightConstraint2 setActive:1];

  subtitleLabel5 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  leadingAnchor6 = [subtitleLabel5 leadingAnchor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor7 = [pillBackgroundView5 leadingAnchor];
  v84 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:16.0];
  [v84 setActive:1];

  subtitleLabel6 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  trailingAnchor4 = [subtitleLabel6 trailingAnchor];
  pillBackgroundView6 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor5 = [pillBackgroundView6 trailingAnchor];
  v89 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
  [v89 setActive:1];

  subtitleLabel7 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  bottomAnchor = [subtitleLabel7 bottomAnchor];
  pillBackgroundView7 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor2 = [pillBackgroundView7 bottomAnchor];
  v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
  [v94 setActive:1];

  subtitleLabel8 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  topAnchor3 = [subtitleLabel8 topAnchor];
  valueLabel13 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  bottomAnchor3 = [valueLabel13 bottomAnchor];
  v99 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:2.0];
  [v99 setActive:1];

  subtitleLabel9 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  topAnchor4 = [subtitleLabel9 topAnchor];
  titleLabel12 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  bottomAnchor4 = [titleLabel12 bottomAnchor];
  v104 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:2.0];
  [v104 setActive:1];

  pillBackgroundView8 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor5 = [pillBackgroundView8 bottomAnchor];
  valueLabel14 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  bottomAnchor6 = [valueLabel14 bottomAnchor];
  v109 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:10.0];
  [v109 setActive:1];

  pillBackgroundView9 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor7 = [pillBackgroundView9 bottomAnchor];
  titleLabel13 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  bottomAnchor8 = [titleLabel13 bottomAnchor];
  v114 = [bottomAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor8 constant:10.0];
  [v114 setActive:1];

  pillBackgroundView10 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor9 = [pillBackgroundView10 bottomAnchor];
  subtitleLabel10 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  lastBaselineAnchor = [subtitleLabel10 lastBaselineAnchor];
  v119 = [bottomAnchor9 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor constant:12.0];
  [(WDMedicalRecordTimelineValueCell *)self setSubtitleBottomConstraint:v119];
}

- (void)updateConstraints
{
  v19.receiver = self;
  v19.super_class = WDMedicalRecordTimelineValueCell;
  [(WDMedicalRecordTimelineValueCell *)&v19 updateConstraints];
  contentView = [(WDMedicalRecordTimelineValueCell *)self contentView];
  [contentView frame];
  v4 = CGRectGetWidth(v20) + -32.0;

  valueLabel = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [valueLabel sizeThatFits:{v4 * 0.67 + -16.0, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  titleLabel = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [titleLabel sizeThatFits:{v4 - v7 + -48.0, 1.79769313e308}];
  v12 = v11;
  v14 = v13;

  titleWidthConstraint = [(WDMedicalRecordTimelineValueCell *)self titleWidthConstraint];
  [titleWidthConstraint setConstant:v12];

  valueWidthConstraint = [(WDMedicalRecordTimelineValueCell *)self valueWidthConstraint];
  [valueWidthConstraint setConstant:v7];

  titleHeightConstraint = [(WDMedicalRecordTimelineValueCell *)self titleHeightConstraint];
  [titleHeightConstraint setConstant:v14];

  valueHeightConstraint = [(WDMedicalRecordTimelineValueCell *)self valueHeightConstraint];
  [valueHeightConstraint setConstant:v9];
}

- (void)setTitle:(id)title
{
  v24[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (![(NSString *)self->_titleString isEqualToString:titleCopy])
  {
    v5 = [titleCopy copy];
    titleString = self->_titleString;
    self->_titleString = v5;

    v7 = self->_titleString;
    titleLabel = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
    [titleLabel setText:v7];

    v9 = [(NSString *)self->_titleString length];
    v10 = MEMORY[0x1E696ACD8];
    if (v9)
    {
      valueLeftAlignConstraint = [(WDMedicalRecordTimelineValueCell *)self valueLeftAlignConstraint];
      v24[0] = valueLeftAlignConstraint;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v10 deactivateConstraints:v12];

      v13 = MEMORY[0x1E696ACD8];
      valueRightAlignConstraint = [(WDMedicalRecordTimelineValueCell *)self valueRightAlignConstraint];
      v23[0] = valueRightAlignConstraint;
      titleValueGapConstraint = [(WDMedicalRecordTimelineValueCell *)self titleValueGapConstraint];
      v23[1] = titleValueGapConstraint;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      [v13 activateConstraints:v16];
    }

    else
    {
      valueRightAlignConstraint2 = [(WDMedicalRecordTimelineValueCell *)self valueRightAlignConstraint];
      v22[0] = valueRightAlignConstraint2;
      titleValueGapConstraint2 = [(WDMedicalRecordTimelineValueCell *)self titleValueGapConstraint];
      v22[1] = titleValueGapConstraint2;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      [v10 deactivateConstraints:v19];

      v20 = MEMORY[0x1E696ACD8];
      valueRightAlignConstraint = [(WDMedicalRecordTimelineValueCell *)self valueLeftAlignConstraint];
      v21 = valueRightAlignConstraint;
      titleValueGapConstraint = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      [v20 activateConstraints:titleValueGapConstraint];
    }

    [(WDMedicalRecordTimelineValueCell *)self setNeedsUpdateConstraints];
    [(WDMedicalRecordTimelineValueCell *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitleString isEqualToString:?])
  {
    v4 = [subtitleCopy copy];
    subtitleString = self->_subtitleString;
    self->_subtitleString = v4;

    v6 = self->_subtitleString;
    subtitleLabel = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
    [subtitleLabel setText:v6];

    v8 = [(NSString *)self->_subtitleString length]!= 0;
    subtitleBottomConstraint = [(WDMedicalRecordTimelineValueCell *)self subtitleBottomConstraint];
    [subtitleBottomConstraint setActive:v8];

    [(WDMedicalRecordTimelineValueCell *)self setNeedsUpdateConstraints];
    [(WDMedicalRecordTimelineValueCell *)self setNeedsLayout];
  }
}

- (void)setValue:(id)value unit:(id)unit
{
  valueCopy = value;
  unitCopy = unit;
  if (![(NSString *)self->_valueString isEqualToString:valueCopy]|| ![(NSString *)self->_unitString isEqualToString:unitCopy])
  {
    v7 = [valueCopy copy];
    valueString = self->_valueString;
    self->_valueString = v7;

    v9 = [unitCopy copy];
    unitString = self->_unitString;
    self->_unitString = v9;

    _generateValueDisplayAttributedString = [(WDMedicalRecordTimelineValueCell *)self _generateValueDisplayAttributedString];
    valueLabel = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
    [valueLabel setAttributedText:_generateValueDisplayAttributedString];

    [(WDMedicalRecordTimelineValueCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setAttributedSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [subtitleLabel setAttributedText:textCopy];
}

- (id)_generateValueDisplayAttributedString
{
  _valueLabelFontSingleLine = [objc_opt_class() _valueLabelFontSingleLine];
  _unitLabelFontSingleLine = [objc_opt_class() _unitLabelFontSingleLine];
  v5 = [(WDMedicalRecordTimelineValueCell *)self _generateValueDisplayAttributedStringWithValueFont:_valueLabelFontSingleLine unitFont:_unitLabelFontSingleLine];
  contentView = [(WDMedicalRecordTimelineValueCell *)self contentView];
  [contentView bounds];
  v7 = (CGRectGetWidth(v23) + -32.0) * 0.67 + -16.0;

  [v5 boundingRectWithSize:1 options:0 context:{v7, 1.79769313e308}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [_valueLabelFontSingleLine lineHeight];
  v17 = v16;
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  if (CGRectGetHeight(v24) + v17 * -2.0 >= 2.22044605e-16)
  {
    _valueLabelFontMultipleLines = [objc_opt_class() _valueLabelFontMultipleLines];

    _unitLabelFontMultipleLines = [objc_opt_class() _unitLabelFontMultipleLines];

    v20 = [(WDMedicalRecordTimelineValueCell *)self _generateValueDisplayAttributedStringWithValueFont:_valueLabelFontMultipleLines unitFont:_unitLabelFontMultipleLines];

    v5 = v20;
    _unitLabelFontSingleLine = _unitLabelFontMultipleLines;
    _valueLabelFontSingleLine = _valueLabelFontMultipleLines;
  }

  return v5;
}

- (id)_generateValueDisplayAttributedStringWithValueFont:(id)font unitFont:(id)unitFont
{
  v43[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  unitFontCopy = unitFont;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  value = [(WDMedicalRecordTimelineValueCell *)self value];
  v9 = [value length];

  v10 = MEMORY[0x1E69DB648];
  v11 = MEMORY[0x1E69DB650];
  v12 = &stru_1F4D16E38;
  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    value2 = [(WDMedicalRecordTimelineValueCell *)self value];
    v15 = value2;
    if (value2)
    {
      v12 = value2;
    }

    v16 = *v11;
    v42[0] = *v10;
    v42[1] = v16;
    v43[0] = fontCopy;
    hk_clinicalRecordValueColor = [MEMORY[0x1E69DC888] hk_clinicalRecordValueColor];
    v43[1] = hk_clinicalRecordValueColor;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v19 = [v13 initWithString:v12 attributes:v18];

    v11 = MEMORY[0x1E69DB650];
    [v7 addObject:v19];
  }

  unit = [(WDMedicalRecordTimelineValueCell *)self unit];
  v21 = [unit length];

  if (v21)
  {
    if ([v7 count])
    {
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = *v10;
      v40 = *v10;
      v41 = unitFontCopy;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v25 = [v22 initWithString:@" " attributes:v24];

      [v7 addObject:v25];
    }

    else
    {
      v23 = *v10;
    }

    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    unit2 = [(WDMedicalRecordTimelineValueCell *)self unit];
    v28 = unit2;
    if (unit2)
    {
      v29 = unit2;
    }

    else
    {
      v29 = &stru_1F4D16E38;
    }

    v30 = *v11;
    v38[0] = v23;
    v38[1] = v30;
    v39[0] = unitFontCopy;
    hk_clinicalRecordUnitColor = [MEMORY[0x1E69DC888] hk_clinicalRecordUnitColor];
    v39[1] = hk_clinicalRecordUnitColor;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v33 = [v26 initWithString:v29 attributes:v32];

    [v7 addObject:v33];
  }

  if ([v7 count])
  {
    v34 = HKUIJoinAttributedStringsForLocale();
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (double)_titleLabelTopToFirstBaseline
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

@end