@interface WDMedicalRecordTimelineValueCell
+ (double)_titleLabelTopToFirstBaseline;
- (id)_generateValueDisplayAttributedString;
- (id)_generateValueDisplayAttributedStringWithValueFont:(id)a3 unitFont:(id)a4;
- (void)setAttributedSubtitleText:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3 unit:(id)a4;
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

  v4 = [objc_opt_class() _titleLabelFont];
  v5 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x1E69DC888] labelColor];
  v7 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v7 setTextColor:v6];

  v8 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v8 setNumberOfLines:8];

  v9 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v9 setLineBreakMode:5];

  v10 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  v12 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v11 addSubview:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineValueCell *)self setSubtitleLabel:v13];

  v14 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  v15 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [v15 setFont:v14];

  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [v17 setTextColor:v16];

  v18 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  v20 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [v19 addSubview:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineValueCell *)self setValueLabel:v21];

  v22 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [v22 setNumberOfLines:3];

  v23 = [objc_opt_class() _valueLabelFontSingleLine];
  v24 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [v24 setFont:v23];

  v25 = [MEMORY[0x1E69DC888] hk_clinicalRecordValueColor];
  v26 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [v26 setTextColor:v25];

  v27 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  v29 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [v28 addSubview:v29];

  v30 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v31 = [v30 leadingAnchor];
  v32 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v33 = [v32 leadingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33 constant:16.0];
  [v34 setActive:1];

  v35 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v36 = [v35 topAnchor];
  v37 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v38 = [v37 topAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:7.0];
  [v39 setActive:1];

  v40 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v41 = [v40 firstBaselineAnchor];
  v42 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v43 = [v42 firstBaselineAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v46 = [v45 leadingAnchor];
  v47 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v48 = [v47 leadingAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:16.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueLeftAlignConstraint:v49];

  v50 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v51 = [v50 trailingAnchor];
  v52 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v53 = [v52 trailingAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:-16.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueRightAlignConstraint:v54];

  v55 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v56 = [v55 trailingAnchor];
  v57 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v58 = [v57 leadingAnchor];
  v59 = [v56 constraintLessThanOrEqualToAnchor:v58 constant:-16.0];
  [(WDMedicalRecordTimelineValueCell *)self setTitleValueGapConstraint:v59];

  v60 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v61 = [v60 widthAnchor];
  v62 = [v61 constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setTitleWidthConstraint:v62];

  v63 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v64 = [v63 widthAnchor];
  v65 = [v64 constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueWidthConstraint:v65];

  v66 = [(WDMedicalRecordTimelineValueCell *)self titleWidthConstraint];
  [v66 setActive:1];

  v67 = [(WDMedicalRecordTimelineValueCell *)self valueWidthConstraint];
  [v67 setActive:1];

  v68 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v69 = [v68 heightAnchor];
  v70 = [v69 constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setTitleHeightConstraint:v70];

  v71 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v72 = [v71 heightAnchor];
  v73 = [v72 constraintEqualToConstant:0.0];
  [(WDMedicalRecordTimelineValueCell *)self setValueHeightConstraint:v73];

  v74 = [(WDMedicalRecordTimelineValueCell *)self titleHeightConstraint];
  LODWORD(v75) = 1148829696;
  [v74 setPriority:v75];

  v76 = [(WDMedicalRecordTimelineValueCell *)self valueHeightConstraint];
  LODWORD(v77) = 1148829696;
  [v76 setPriority:v77];

  v78 = [(WDMedicalRecordTimelineValueCell *)self titleHeightConstraint];
  [v78 setActive:1];

  v79 = [(WDMedicalRecordTimelineValueCell *)self valueHeightConstraint];
  [v79 setActive:1];

  v80 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  v81 = [v80 leadingAnchor];
  v82 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v83 = [v82 leadingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83 constant:16.0];
  [v84 setActive:1];

  v85 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  v86 = [v85 trailingAnchor];
  v87 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v88 = [v87 trailingAnchor];
  v89 = [v86 constraintEqualToAnchor:v88 constant:-16.0];
  [v89 setActive:1];

  v90 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  v91 = [v90 bottomAnchor];
  v92 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v93 = [v92 bottomAnchor];
  v94 = [v91 constraintEqualToAnchor:v93 constant:-12.0];
  [v94 setActive:1];

  v95 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  v96 = [v95 topAnchor];
  v97 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v98 = [v97 bottomAnchor];
  v99 = [v96 constraintGreaterThanOrEqualToAnchor:v98 constant:2.0];
  [v99 setActive:1];

  v100 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  v101 = [v100 topAnchor];
  v102 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v103 = [v102 bottomAnchor];
  v104 = [v101 constraintGreaterThanOrEqualToAnchor:v103 constant:2.0];
  [v104 setActive:1];

  v105 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v106 = [v105 bottomAnchor];
  v107 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  v108 = [v107 bottomAnchor];
  v109 = [v106 constraintGreaterThanOrEqualToAnchor:v108 constant:10.0];
  [v109 setActive:1];

  v110 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v111 = [v110 bottomAnchor];
  v112 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  v113 = [v112 bottomAnchor];
  v114 = [v111 constraintGreaterThanOrEqualToAnchor:v113 constant:10.0];
  [v114 setActive:1];

  v115 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v116 = [v115 bottomAnchor];
  v117 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  v118 = [v117 lastBaselineAnchor];
  v119 = [v116 constraintGreaterThanOrEqualToAnchor:v118 constant:12.0];
  [(WDMedicalRecordTimelineValueCell *)self setSubtitleBottomConstraint:v119];
}

- (void)updateConstraints
{
  v19.receiver = self;
  v19.super_class = WDMedicalRecordTimelineValueCell;
  [(WDMedicalRecordTimelineValueCell *)&v19 updateConstraints];
  v3 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  [v3 frame];
  v4 = CGRectGetWidth(v20) + -32.0;

  v5 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
  [v5 sizeThatFits:{v4 * 0.67 + -16.0, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  v10 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
  [v10 sizeThatFits:{v4 - v7 + -48.0, 1.79769313e308}];
  v12 = v11;
  v14 = v13;

  v15 = [(WDMedicalRecordTimelineValueCell *)self titleWidthConstraint];
  [v15 setConstant:v12];

  v16 = [(WDMedicalRecordTimelineValueCell *)self valueWidthConstraint];
  [v16 setConstant:v7];

  v17 = [(WDMedicalRecordTimelineValueCell *)self titleHeightConstraint];
  [v17 setConstant:v14];

  v18 = [(WDMedicalRecordTimelineValueCell *)self valueHeightConstraint];
  [v18 setConstant:v9];
}

- (void)setTitle:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSString *)self->_titleString isEqualToString:v4])
  {
    v5 = [v4 copy];
    titleString = self->_titleString;
    self->_titleString = v5;

    v7 = self->_titleString;
    v8 = [(WDMedicalRecordTimelineValueCell *)self titleLabel];
    [v8 setText:v7];

    v9 = [(NSString *)self->_titleString length];
    v10 = MEMORY[0x1E696ACD8];
    if (v9)
    {
      v11 = [(WDMedicalRecordTimelineValueCell *)self valueLeftAlignConstraint];
      v24[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v10 deactivateConstraints:v12];

      v13 = MEMORY[0x1E696ACD8];
      v14 = [(WDMedicalRecordTimelineValueCell *)self valueRightAlignConstraint];
      v23[0] = v14;
      v15 = [(WDMedicalRecordTimelineValueCell *)self titleValueGapConstraint];
      v23[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      [v13 activateConstraints:v16];
    }

    else
    {
      v17 = [(WDMedicalRecordTimelineValueCell *)self valueRightAlignConstraint];
      v22[0] = v17;
      v18 = [(WDMedicalRecordTimelineValueCell *)self titleValueGapConstraint];
      v22[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      [v10 deactivateConstraints:v19];

      v20 = MEMORY[0x1E696ACD8];
      v14 = [(WDMedicalRecordTimelineValueCell *)self valueLeftAlignConstraint];
      v21 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      [v20 activateConstraints:v15];
    }

    [(WDMedicalRecordTimelineValueCell *)self setNeedsUpdateConstraints];
    [(WDMedicalRecordTimelineValueCell *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)a3
{
  v10 = a3;
  if (![(NSString *)self->_subtitleString isEqualToString:?])
  {
    v4 = [v10 copy];
    subtitleString = self->_subtitleString;
    self->_subtitleString = v4;

    v6 = self->_subtitleString;
    v7 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
    [v7 setText:v6];

    v8 = [(NSString *)self->_subtitleString length]!= 0;
    v9 = [(WDMedicalRecordTimelineValueCell *)self subtitleBottomConstraint];
    [v9 setActive:v8];

    [(WDMedicalRecordTimelineValueCell *)self setNeedsUpdateConstraints];
    [(WDMedicalRecordTimelineValueCell *)self setNeedsLayout];
  }
}

- (void)setValue:(id)a3 unit:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (![(NSString *)self->_valueString isEqualToString:v13]|| ![(NSString *)self->_unitString isEqualToString:v6])
  {
    v7 = [v13 copy];
    valueString = self->_valueString;
    self->_valueString = v7;

    v9 = [v6 copy];
    unitString = self->_unitString;
    self->_unitString = v9;

    v11 = [(WDMedicalRecordTimelineValueCell *)self _generateValueDisplayAttributedString];
    v12 = [(WDMedicalRecordTimelineValueCell *)self valueLabel];
    [v12 setAttributedText:v11];

    [(WDMedicalRecordTimelineValueCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setAttributedSubtitleText:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordTimelineValueCell *)self subtitleLabel];
  [v5 setAttributedText:v4];
}

- (id)_generateValueDisplayAttributedString
{
  v3 = [objc_opt_class() _valueLabelFontSingleLine];
  v4 = [objc_opt_class() _unitLabelFontSingleLine];
  v5 = [(WDMedicalRecordTimelineValueCell *)self _generateValueDisplayAttributedStringWithValueFont:v3 unitFont:v4];
  v6 = [(WDMedicalRecordTimelineValueCell *)self contentView];
  [v6 bounds];
  v7 = (CGRectGetWidth(v23) + -32.0) * 0.67 + -16.0;

  [v5 boundingRectWithSize:1 options:0 context:{v7, 1.79769313e308}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v3 lineHeight];
  v17 = v16;
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  if (CGRectGetHeight(v24) + v17 * -2.0 >= 2.22044605e-16)
  {
    v18 = [objc_opt_class() _valueLabelFontMultipleLines];

    v19 = [objc_opt_class() _unitLabelFontMultipleLines];

    v20 = [(WDMedicalRecordTimelineValueCell *)self _generateValueDisplayAttributedStringWithValueFont:v18 unitFont:v19];

    v5 = v20;
    v4 = v19;
    v3 = v18;
  }

  return v5;
}

- (id)_generateValueDisplayAttributedStringWithValueFont:(id)a3 unitFont:(id)a4
{
  v43[2] = *MEMORY[0x1E69E9840];
  v36 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(WDMedicalRecordTimelineValueCell *)self value];
  v9 = [v8 length];

  v10 = MEMORY[0x1E69DB648];
  v11 = MEMORY[0x1E69DB650];
  v12 = &stru_1F4D16E38;
  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = [(WDMedicalRecordTimelineValueCell *)self value];
    v15 = v14;
    if (v14)
    {
      v12 = v14;
    }

    v16 = *v11;
    v42[0] = *v10;
    v42[1] = v16;
    v43[0] = v36;
    v17 = [MEMORY[0x1E69DC888] hk_clinicalRecordValueColor];
    v43[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v19 = [v13 initWithString:v12 attributes:v18];

    v11 = MEMORY[0x1E69DB650];
    [v7 addObject:v19];
  }

  v20 = [(WDMedicalRecordTimelineValueCell *)self unit];
  v21 = [v20 length];

  if (v21)
  {
    if ([v7 count])
    {
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = *v10;
      v40 = *v10;
      v41 = v6;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v25 = [v22 initWithString:@" " attributes:v24];

      [v7 addObject:v25];
    }

    else
    {
      v23 = *v10;
    }

    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v27 = [(WDMedicalRecordTimelineValueCell *)self unit];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_1F4D16E38;
    }

    v30 = *v11;
    v38[0] = v23;
    v38[1] = v30;
    v39[0] = v6;
    v31 = [MEMORY[0x1E69DC888] hk_clinicalRecordUnitColor];
    v39[1] = v31;
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
  v2 = [objc_opt_class() _titleLabelFont];
  [v2 _scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

@end