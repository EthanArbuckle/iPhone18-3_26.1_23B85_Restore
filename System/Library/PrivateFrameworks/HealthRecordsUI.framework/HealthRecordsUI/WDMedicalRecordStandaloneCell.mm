@interface WDMedicalRecordStandaloneCell
+ (double)_titleLabelLastBaselineToBottom;
+ (double)_titleLabelTopToFirstBaseline;
- (NSString)title;
- (void)setTitle:(id)title;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordStandaloneCell

- (void)setupSubviews
{
  v46.receiver = self;
  v46.super_class = WDMedicalRecordStandaloneCell;
  [(WDMedicalRecordGroupableCell *)&v46 setupSubviews];
  makeChevron = [MEMORY[0x1E69DD250] makeChevron];
  [(WDMedicalRecordStandaloneCell *)self setChevronView:makeChevron];

  contentView = [(WDMedicalRecordStandaloneCell *)self contentView];
  chevronView = [(WDMedicalRecordStandaloneCell *)self chevronView];
  [contentView addSubview:chevronView];

  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordStandaloneCell *)self setTitleLabel:v6];

  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  titleLabel = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel2 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [titleLabel2 setTextColor:labelColor];

  titleLabel3 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:8];

  titleLabel4 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [titleLabel4 setLineBreakMode:5];

  titleLabel5 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(WDMedicalRecordStandaloneCell *)self contentView];
  titleLabel6 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [contentView2 addSubview:titleLabel6];

  chevronView2 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  trailingAnchor = [chevronView2 trailingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v20 setActive:1];

  chevronView3 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  centerYAnchor = [chevronView3 centerYAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  centerYAnchor2 = [pillBackgroundView2 centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v25 setActive:1];

  titleLabel7 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  leadingAnchor = [titleLabel7 leadingAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView3 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v30 setActive:1];

  titleLabel8 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  trailingAnchor3 = [titleLabel8 trailingAnchor];
  chevronView4 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  leadingAnchor3 = [chevronView4 leadingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-16.0];
  [v35 setActive:1];

  titleLabel9 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel9 firstBaselineAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor = [pillBackgroundView4 topAnchor];
  [objc_opt_class() _titleLabelTopToFirstBaseline];
  v40 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v40 setActive:1];

  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor = [pillBackgroundView5 bottomAnchor];
  titleLabel10 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel10 lastBaselineAnchor];
  [objc_opt_class() _titleLabelLastBaselineToBottom];
  v45 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v45 setActive:1];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (NSString)title
{
  titleLabel = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

+ (double)_titleLabelTopToFirstBaseline
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

+ (double)_titleLabelLastBaselineToBottom
{
  _titleLabelFont = [objc_opt_class() _titleLabelFont];
  [_titleLabelFont _scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

@end