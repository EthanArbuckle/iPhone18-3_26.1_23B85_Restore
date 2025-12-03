@interface WDMedicalRecordDetailSubtitleCell
+ (double)_subtitleLabelLastBaselineToBottom;
+ (double)_subtitleLabelTopToFirstBaseline;
+ (double)_titleLabelTopToFirstBaseline;
- (NSString)subtitle;
- (NSString)title;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordDetailSubtitleCell

- (void)setupSubviews
{
  v56.receiver = self;
  v56.super_class = WDMedicalRecordDetailSubtitleCell;
  [(WDMedicalRecordGroupableCell *)&v56 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordDetailSubtitleCell *)self setTitleLabel:v3];

  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  titleLabel = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  titleLabel2 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  [titleLabel2 setTextColor:secondaryLabelColor];

  titleLabel3 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  titleLabel4 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordDetailSubtitleCell *)self contentView];
  titleLabel5 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  [contentView addSubview:titleLabel5];

  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordDetailSubtitleCell *)self setSubtitleLabel:v12];

  _subtitleLabelFont = [objc_opt_class() _subtitleLabelFont];
  subtitleLabel = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [subtitleLabel setFont:_subtitleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  subtitleLabel2 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:labelColor];

  subtitleLabel3 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [subtitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  subtitleLabel4 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [subtitleLabel4 setNumberOfLines:0];

  contentView2 = [(WDMedicalRecordDetailSubtitleCell *)self contentView];
  subtitleLabel5 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [contentView2 addSubview:subtitleLabel5];

  titleLabel6 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  leadingAnchor = [titleLabel6 leadingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v25 setActive:1];

  titleLabel7 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  trailingAnchor = [titleLabel7 trailingAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView2 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v30 setActive:1];

  titleLabel8 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel8 firstBaselineAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor = [pillBackgroundView3 topAnchor];
  [objc_opt_class() _titleLabelTopToFirstBaseline];
  v35 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v35 setActive:1];

  subtitleLabel6 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  leadingAnchor3 = [subtitleLabel6 leadingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor4 = [pillBackgroundView4 leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v40 setActive:1];

  subtitleLabel7 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  trailingAnchor3 = [subtitleLabel7 trailingAnchor];
  titleLabel9 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  trailingAnchor4 = [titleLabel9 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v45 setActive:1];

  subtitleLabel8 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  firstBaselineAnchor2 = [subtitleLabel8 firstBaselineAnchor];
  titleLabel10 = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel10 lastBaselineAnchor];
  [objc_opt_class() _subtitleLabelTopToFirstBaseline];
  v50 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v50 setActive:1];

  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor = [pillBackgroundView5 bottomAnchor];
  subtitleLabel9 = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  lastBaselineAnchor2 = [subtitleLabel9 lastBaselineAnchor];
  [objc_opt_class() _subtitleLabelLastBaselineToBottom];
  v55 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v55 setActive:1];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (NSString)title
{
  titleLabel = [(WDMedicalRecordDetailSubtitleCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];
}

- (NSString)subtitle
{
  subtitleLabel = [(WDMedicalRecordDetailSubtitleCell *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

+ (double)_titleLabelTopToFirstBaseline
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

+ (double)_subtitleLabelTopToFirstBaseline
{
  _subtitleLabelFont = [objc_opt_class() _subtitleLabelFont];
  [_subtitleLabelFont _scaledValueForValue:22.0];
  v4 = v3;

  return v4;
}

+ (double)_subtitleLabelLastBaselineToBottom
{
  _subtitleLabelFont = [objc_opt_class() _subtitleLabelFont];
  [_subtitleLabelFont _scaledValueForValue:13.0];
  v4 = v3;

  return v4;
}

@end