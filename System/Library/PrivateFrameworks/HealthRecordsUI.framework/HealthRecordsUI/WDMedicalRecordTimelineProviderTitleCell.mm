@interface WDMedicalRecordTimelineProviderTitleCell
- (NSString)title;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordTimelineProviderTitleCell

- (void)setupSubviews
{
  v29.receiver = self;
  v29.super_class = WDMedicalRecordTimelineProviderTitleCell;
  [(WDMedicalRecordGroupableCell *)&v29 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineProviderTitleCell *)self setTitleLabel:v3];

  titleLabel = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] variant:1024];
  titleLabel2 = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  [titleLabel2 setFont:v5];

  contentView = [(WDMedicalRecordTimelineProviderTitleCell *)self contentView];
  titleLabel3 = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  [contentView addSubview:titleLabel3];

  titleLabel4 = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  leadingAnchor = [titleLabel4 leadingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v13 setActive:1];

  titleLabel5 = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  trailingAnchor = [titleLabel5 trailingAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v18 setActive:1];

  titleLabel6 = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  topAnchor = [titleLabel6 topAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 setActive:1];

  titleLabel7 = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  bottomAnchor = [titleLabel7 bottomAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor2 = [pillBackgroundView4 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v28 setActive:1];
}

- (NSString)title
{
  titleLabel = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WDMedicalRecordTimelineProviderTitleCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

@end