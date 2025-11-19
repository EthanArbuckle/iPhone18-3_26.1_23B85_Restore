@interface WDMedicalRecordTimelineContentSubtitleCell
- (void)setAttributedSubtitleText:(id)a3;
- (void)setShowDisclosureIndicator:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUseRegularFontForSubtitle:(BOOL)a3;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordTimelineContentSubtitleCell

- (void)setupSubviews
{
  v78.receiver = self;
  v78.super_class = WDMedicalRecordTimelineContentSubtitleCell;
  [(WDMedicalRecordGroupableCell *)&v78 setupSubviews];
  v3 = [MEMORY[0x1E69DD250] makeChevron];
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setDisclosureChevronView:v3];

  v4 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  [v4 setHidden:1];

  v5 = [(WDMedicalRecordTimelineContentSubtitleCell *)self contentView];
  v6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  [v5 addSubview:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setTitleLabel:v7];

  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] variant:256];
  v9 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x1E69DC888] labelColor];
  v11 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v11 setTextColor:v10];

  v12 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v12 setNumberOfLines:8];

  v13 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v13 setLineBreakMode:0];

  v14 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v15 setNumberOfLines:0];

  v16 = [(WDMedicalRecordTimelineContentSubtitleCell *)self contentView];
  v17 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v16 addSubview:v17];

  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setSubtitleLabel:v18];

  v19 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  v20 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v20 setFont:v19];

  self->_useRegularFontForSubtitle = 0;
  v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v22 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v22 setTextColor:v21];

  v23 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v24 setNumberOfLines:0];

  v25 = [(WDMedicalRecordTimelineContentSubtitleCell *)self contentView];
  v26 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v25 addSubview:v26];

  v27 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  v28 = [v27 trailingAnchor];
  v29 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:-16.0];
  [v31 setActive:1];

  v32 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  v33 = [v32 firstBaselineAnchor];
  v34 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v35 = [v34 firstBaselineAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v38 = [v37 trailingAnchor];
  v39 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v40 = [v39 trailingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:-16.0];
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setTitlePillConstraint:v41];

  v42 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v43 = [v42 trailingAnchor];
  v44 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  v45 = [v44 leadingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45 constant:-8.0];
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setTitleChevronConstraint:v46];

  v47 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titlePillConstraint];
  [v47 setActive:1];

  v48 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v49 = [v48 leadingAnchor];
  v50 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v51 = [v50 leadingAnchor];
  v52 = [v49 constraintEqualToAnchor:v51 constant:16.0];
  [v52 setActive:1];

  v53 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v54 = [v53 topAnchor];
  v55 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v56 = [v55 topAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:10.0];
  [v57 setActive:1];

  v58 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  v59 = [v58 leadingAnchor];
  v60 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v61 = [v60 leadingAnchor];
  v62 = [v59 constraintEqualToAnchor:v61 constant:16.0];
  [v62 setActive:1];

  v63 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  v64 = [v63 trailingAnchor];
  v65 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v66 = [v65 trailingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];
  [v67 setActive:1];

  v68 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  v69 = [v68 topAnchor];
  v70 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  v71 = [v70 bottomAnchor];
  v72 = [v69 constraintEqualToAnchor:v71 constant:2.0];
  [v72 setActive:1];

  v73 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v74 = [v73 bottomAnchor];
  v75 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  v76 = [v75 lastBaselineAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:12.0];
  [v77 setActive:1];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_titleString, a3);
  v5 = a3;
  v6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [v6 setText:v5];
}

- (void)setSubtitle:(id)a3
{
  objc_storeStrong(&self->_subtitleString, a3);
  v5 = a3;
  v6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v6 setText:v5];
}

- (void)setShowDisclosureIndicator:(BOOL)a3
{
  if (self->_showDisclosureIndicator != a3)
  {
    v3 = a3;
    self->_showDisclosureIndicator = a3;
    v5 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
    [v5 setHidden:!v3];

    LOBYTE(v5) = self->_showDisclosureIndicator;
    v6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titlePillConstraint];
    [v6 setActive:(v5 & 1) == 0];

    showDisclosureIndicator = self->_showDisclosureIndicator;
    v8 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleChevronConstraint];
    [v8 setActive:showDisclosureIndicator];
  }
}

- (void)setUseRegularFontForSubtitle:(BOOL)a3
{
  if (self->_useRegularFontForSubtitle != a3)
  {
    self->_useRegularFontForSubtitle = a3;
    if (a3)
    {
      v5 = 256;
    }

    else
    {
      v5 = 1280;
    }

    v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:v5];
    v6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
    [v6 setFont:v7];
  }
}

- (void)setAttributedSubtitleText:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [v5 setAttributedText:v4];
}

@end