@interface WDMedicalRecordTimelinePanelTitleCell
- (WDMedicalRecordTimelinePanelTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordTimelinePanelTitleCell

- (WDMedicalRecordTimelinePanelTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = WDMedicalRecordTimelinePanelTitleCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordGroupableCell *)v4 setPillBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordTimelinePanelTitleCell *)v4 setBackgroundColor:clearColor2];
  }

  return v4;
}

- (void)setupSubviews
{
  v56.receiver = self;
  v56.super_class = WDMedicalRecordTimelinePanelTitleCell;
  [(WDMedicalRecordGroupableCell *)&v56 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelinePanelTitleCell *)self setTitleLabel:v3];

  titleLabel = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  [titleLabel setNumberOfLines:1];

  titleLabel2 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel3 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  [titleLabel3 setTextColor:labelColor];

  titleFont = [(WDMedicalRecordTimelinePanelTitleCell *)self titleFont];
  titleLabel4 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  [titleLabel4 setFont:titleFont];

  contentView = [(WDMedicalRecordTimelinePanelTitleCell *)self contentView];
  titleLabel5 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  [contentView addSubview:titleLabel5];

  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelinePanelTitleCell *)self setSubtitleLabel:v12];

  subtitleLabel = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:0];

  subtitleLabel2 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  [subtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  subtitleLabel3 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  [subtitleLabel3 setTextColor:labelColor2];

  subtitleFont = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleFont];
  subtitleLabel4 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  [subtitleLabel4 setFont:subtitleFont];

  contentView2 = [(WDMedicalRecordTimelinePanelTitleCell *)self contentView];
  subtitleLabel5 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  [contentView2 addSubview:subtitleLabel5];

  titleLabel6 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  leadingAnchor = [titleLabel6 leadingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v25 setActive:1];

  titleLabel7 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  trailingAnchor = [titleLabel7 trailingAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView2 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v30 setActive:1];

  titleLabel8 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  topAnchor = [titleLabel8 topAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v35 setActive:1];

  subtitleLabel6 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  leadingAnchor3 = [subtitleLabel6 leadingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor4 = [pillBackgroundView4 leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v40 setActive:1];

  subtitleLabel7 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  trailingAnchor3 = [subtitleLabel7 trailingAnchor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor4 = [pillBackgroundView5 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v45 setActive:1];

  subtitleLabel8 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  topAnchor3 = [subtitleLabel8 topAnchor];
  titleLabel9 = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
  bottomAnchor = [titleLabel9 bottomAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v50 setActive:1];

  subtitleLabel9 = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
  bottomAnchor2 = [subtitleLabel9 bottomAnchor];
  pillBackgroundView6 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor3 = [pillBackgroundView6 bottomAnchor];
  v55 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v55 setActive:1];

  [(WDMedicalRecordGroupableCell *)self _updateForCurrentSizeCategory];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    localizedUppercaseString = [(NSString *)self->_title localizedUppercaseString];
    titleLabel = [(WDMedicalRecordTimelinePanelTitleCell *)self titleLabel];
    [titleLabel setText:localizedUppercaseString];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    v4 = [subtitleCopy copy];
    subtitle = self->_subtitle;
    self->_subtitle = v4;

    v6 = self->_subtitle;
    subtitleLabel = [(WDMedicalRecordTimelinePanelTitleCell *)self subtitleLabel];
    [subtitleLabel setText:v6];
  }
}

@end