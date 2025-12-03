@interface WDMedicalRecordSectionHeaderCell
+ (double)_titleLabelLastBaselineToBottom;
+ (double)_titleLabelTopToFirstBaseline;
- (NSString)title;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordSectionHeaderCell

- (void)setupSubviews
{
  v33.receiver = self;
  v33.super_class = WDMedicalRecordSectionHeaderCell;
  [(WDMedicalRecordGroupableCell *)&v33 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordSectionHeaderCell *)self setTitleLabel:v3];

  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  titleLabel = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  titleLabel2 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [titleLabel2 setTextColor:secondaryLabelColor];

  titleLabel3 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:1];

  titleLabel4 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [titleLabel4 setLineBreakMode:5];

  titleLabel5 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordSectionHeaderCell *)self contentView];
  titleLabel6 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [contentView addSubview:titleLabel6];

  [(WDMedicalRecordSectionHeaderCell *)self setSeparatorInset:0.0, 0.0, 0.0, 0.0];
  titleLabel7 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  leadingAnchor = [titleLabel7 leadingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v17 setActive:1];

  titleLabel8 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  trailingAnchor = [titleLabel8 trailingAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView2 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v22 setActive:1];

  titleLabel9 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel9 firstBaselineAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor = [pillBackgroundView3 topAnchor];
  [objc_opt_class() _titleLabelTopToFirstBaseline];
  v27 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v27 setActive:1];

  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor = [pillBackgroundView4 bottomAnchor];
  titleLabel10 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel10 lastBaselineAnchor];
  [objc_opt_class() _titleLabelLastBaselineToBottom];
  v32 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v32 setActive:1];

  [(WDMedicalRecordGroupableCell *)self setSeparatorDashStyle:0 hidden:0];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (NSString)title
{
  titleLabel = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

+ (double)_titleLabelTopToFirstBaseline
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

+ (double)_titleLabelLastBaselineToBottom
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:10.0];
  v4 = v3;

  return v4;
}

@end