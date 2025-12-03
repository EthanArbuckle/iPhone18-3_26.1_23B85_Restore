@interface WDMedicalRecordTimelineContentSubtitleCell
- (void)setAttributedSubtitleText:(id)text;
- (void)setShowDisclosureIndicator:(BOOL)indicator;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUseRegularFontForSubtitle:(BOOL)subtitle;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordTimelineContentSubtitleCell

- (void)setupSubviews
{
  v78.receiver = self;
  v78.super_class = WDMedicalRecordTimelineContentSubtitleCell;
  [(WDMedicalRecordGroupableCell *)&v78 setupSubviews];
  makeChevron = [MEMORY[0x1E69DD250] makeChevron];
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setDisclosureChevronView:makeChevron];

  disclosureChevronView = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  [disclosureChevronView setHidden:1];

  contentView = [(WDMedicalRecordTimelineContentSubtitleCell *)self contentView];
  disclosureChevronView2 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  [contentView addSubview:disclosureChevronView2];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setTitleLabel:v7];

  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] variant:256];
  titleLabel = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel setFont:v8];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel2 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel2 setTextColor:labelColor];

  titleLabel3 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:8];

  titleLabel4 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel4 setLineBreakMode:0];

  titleLabel5 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel6 setNumberOfLines:0];

  contentView2 = [(WDMedicalRecordTimelineContentSubtitleCell *)self contentView];
  titleLabel7 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [contentView2 addSubview:titleLabel7];

  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setSubtitleLabel:v18];

  v19 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  subtitleLabel = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [subtitleLabel setFont:v19];

  self->_useRegularFontForSubtitle = 0;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  subtitleLabel2 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:secondaryLabelColor];

  subtitleLabel3 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [subtitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  subtitleLabel4 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [subtitleLabel4 setNumberOfLines:0];

  contentView3 = [(WDMedicalRecordTimelineContentSubtitleCell *)self contentView];
  subtitleLabel5 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [contentView3 addSubview:subtitleLabel5];

  disclosureChevronView3 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  trailingAnchor = [disclosureChevronView3 trailingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v31 setActive:1];

  disclosureChevronView4 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  firstBaselineAnchor = [disclosureChevronView4 firstBaselineAnchor];
  titleLabel8 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel8 firstBaselineAnchor];
  v36 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  [v36 setActive:1];

  titleLabel9 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  trailingAnchor3 = [titleLabel9 trailingAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor4 = [pillBackgroundView2 trailingAnchor];
  v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setTitlePillConstraint:v41];

  titleLabel10 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  trailingAnchor5 = [titleLabel10 trailingAnchor];
  disclosureChevronView5 = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
  leadingAnchor = [disclosureChevronView5 leadingAnchor];
  v46 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor constant:-8.0];
  [(WDMedicalRecordTimelineContentSubtitleCell *)self setTitleChevronConstraint:v46];

  titlePillConstraint = [(WDMedicalRecordTimelineContentSubtitleCell *)self titlePillConstraint];
  [titlePillConstraint setActive:1];

  titleLabel11 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  leadingAnchor2 = [titleLabel11 leadingAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor3 = [pillBackgroundView3 leadingAnchor];
  v52 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
  [v52 setActive:1];

  titleLabel12 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  topAnchor = [titleLabel12 topAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView4 topAnchor];
  v57 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v57 setActive:1];

  subtitleLabel6 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  leadingAnchor4 = [subtitleLabel6 leadingAnchor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor5 = [pillBackgroundView5 leadingAnchor];
  v62 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
  [v62 setActive:1];

  subtitleLabel7 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  trailingAnchor6 = [subtitleLabel7 trailingAnchor];
  titleLabel13 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  trailingAnchor7 = [titleLabel13 trailingAnchor];
  v67 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  [v67 setActive:1];

  subtitleLabel8 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  topAnchor3 = [subtitleLabel8 topAnchor];
  titleLabel14 = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  bottomAnchor = [titleLabel14 bottomAnchor];
  v72 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  [v72 setActive:1];

  pillBackgroundView6 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor2 = [pillBackgroundView6 bottomAnchor];
  subtitleLabel9 = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  lastBaselineAnchor = [subtitleLabel9 lastBaselineAnchor];
  v77 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:12.0];
  [v77 setActive:1];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_titleString, title);
  titleCopy = title;
  titleLabel = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)setSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_subtitleString, subtitle);
  subtitleCopy = subtitle;
  subtitleLabel = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];
}

- (void)setShowDisclosureIndicator:(BOOL)indicator
{
  if (self->_showDisclosureIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_showDisclosureIndicator = indicator;
    disclosureChevronView = [(WDMedicalRecordTimelineContentSubtitleCell *)self disclosureChevronView];
    [disclosureChevronView setHidden:!indicatorCopy];

    LOBYTE(disclosureChevronView) = self->_showDisclosureIndicator;
    titlePillConstraint = [(WDMedicalRecordTimelineContentSubtitleCell *)self titlePillConstraint];
    [titlePillConstraint setActive:(disclosureChevronView & 1) == 0];

    showDisclosureIndicator = self->_showDisclosureIndicator;
    titleChevronConstraint = [(WDMedicalRecordTimelineContentSubtitleCell *)self titleChevronConstraint];
    [titleChevronConstraint setActive:showDisclosureIndicator];
  }
}

- (void)setUseRegularFontForSubtitle:(BOOL)subtitle
{
  if (self->_useRegularFontForSubtitle != subtitle)
  {
    self->_useRegularFontForSubtitle = subtitle;
    if (subtitle)
    {
      v5 = 256;
    }

    else
    {
      v5 = 1280;
    }

    v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:v5];
    subtitleLabel = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
    [subtitleLabel setFont:v7];
  }
}

- (void)setAttributedSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(WDMedicalRecordTimelineContentSubtitleCell *)self subtitleLabel];
  [subtitleLabel setAttributedText:textCopy];
}

@end