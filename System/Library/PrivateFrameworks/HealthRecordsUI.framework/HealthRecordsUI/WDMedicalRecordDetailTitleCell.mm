@interface WDMedicalRecordDetailTitleCell
+ (double)_subtitleLabelLastBaselineToBottom;
+ (double)_subtitleLabelTopToFirstBaseline;
+ (double)_titleLabelTopToFirstBaseline;
- (NSString)dateSubtitle;
- (NSString)title;
- (void)setDateSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordDetailTitleCell

- (void)setupSubviews
{
  v56.receiver = self;
  v56.super_class = WDMedicalRecordDetailTitleCell;
  [(WDMedicalRecordGroupableCell *)&v56 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordDetailTitleCell *)self setTitleLabel:v3];

  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  titleLabel = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel2 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [titleLabel2 setTextColor:labelColor];

  titleLabel3 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:8];

  titleLabel4 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [titleLabel4 setLineBreakMode:5];

  titleLabel5 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordDetailTitleCell *)self contentView];
  titleLabel6 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [contentView addSubview:titleLabel6];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordDetailTitleCell *)self setDateSubtitleLabel:v13];

  _subtitleLabelFont = [objc_opt_class() _subtitleLabelFont];
  dateSubtitleLabel = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  [dateSubtitleLabel setFont:_subtitleLabelFont];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  dateSubtitleLabel2 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  [dateSubtitleLabel2 setTextColor:secondaryLabelColor];

  dateSubtitleLabel3 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  [dateSubtitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(WDMedicalRecordDetailTitleCell *)self contentView];
  dateSubtitleLabel4 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  [contentView2 addSubview:dateSubtitleLabel4];

  titleLabel7 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  leadingAnchor = [titleLabel7 leadingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v25 setActive:1];

  titleLabel8 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  trailingAnchor = [titleLabel8 trailingAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView2 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v30 setActive:1];

  titleLabel9 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  topAnchor = [titleLabel9 topAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:24.0];
  [v35 setActive:1];

  dateSubtitleLabel5 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  leadingAnchor3 = [dateSubtitleLabel5 leadingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor4 = [pillBackgroundView4 leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v40 setActive:1];

  dateSubtitleLabel6 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  trailingAnchor3 = [dateSubtitleLabel6 trailingAnchor];
  titleLabel10 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  trailingAnchor4 = [titleLabel10 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v45 setActive:1];

  dateSubtitleLabel7 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  firstBaselineAnchor = [dateSubtitleLabel7 firstBaselineAnchor];
  titleLabel11 = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel11 lastBaselineAnchor];
  [objc_opt_class() _subtitleLabelTopToFirstBaseline];
  v50 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v50 setActive:1];

  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor = [pillBackgroundView5 bottomAnchor];
  dateSubtitleLabel8 = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  lastBaselineAnchor2 = [dateSubtitleLabel8 lastBaselineAnchor];
  [objc_opt_class() _subtitleLabelLastBaselineToBottom];
  v55 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v55 setActive:1];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (NSString)title
{
  titleLabel = [(WDMedicalRecordDetailTitleCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setDateSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  dateSubtitleLabel = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  [dateSubtitleLabel setText:subtitleCopy];
}

- (NSString)dateSubtitle
{
  dateSubtitleLabel = [(WDMedicalRecordDetailTitleCell *)self dateSubtitleLabel];
  text = [dateSubtitleLabel text];

  return text;
}

+ (double)_titleLabelTopToFirstBaseline
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:34.0];
  v4 = v3;

  return v4;
}

+ (double)_subtitleLabelTopToFirstBaseline
{
  _subtitleLabelFont = [objc_opt_class() _subtitleLabelFont];
  [_subtitleLabelFont _scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

+ (double)_subtitleLabelLastBaselineToBottom
{
  _subtitleLabelFont = [objc_opt_class() _subtitleLabelFont];
  [_subtitleLabelFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

@end