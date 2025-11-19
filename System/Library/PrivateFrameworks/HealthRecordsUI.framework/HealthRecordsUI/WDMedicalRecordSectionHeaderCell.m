@interface WDMedicalRecordSectionHeaderCell
+ (double)_titleLabelLastBaselineToBottom;
+ (double)_titleLabelTopToFirstBaseline;
- (NSString)title;
- (void)setTitle:(id)a3;
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

  v4 = [objc_opt_class() _titleLabelFont];
  v5 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v7 setTextColor:v6];

  v8 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v8 setNumberOfLines:1];

  v9 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v9 setLineBreakMode:5];

  v10 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(WDMedicalRecordSectionHeaderCell *)self contentView];
  v12 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v11 addSubview:v12];

  [(WDMedicalRecordSectionHeaderCell *)self setSeparatorInset:0.0, 0.0, 0.0, 0.0];
  v13 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  v14 = [v13 leadingAnchor];
  v15 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:16.0];
  [v17 setActive:1];

  v18 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  v19 = [v18 trailingAnchor];
  v20 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-16.0];
  [v22 setActive:1];

  v23 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  v24 = [v23 firstBaselineAnchor];
  v25 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v26 = [v25 topAnchor];
  [objc_opt_class() _titleLabelTopToFirstBaseline];
  v27 = [v24 constraintEqualToAnchor:v26 constant:?];
  [v27 setActive:1];

  v28 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v29 = [v28 bottomAnchor];
  v30 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  v31 = [v30 lastBaselineAnchor];
  [objc_opt_class() _titleLabelLastBaselineToBottom];
  v32 = [v29 constraintEqualToAnchor:v31 constant:?];
  [v32 setActive:1];

  [(WDMedicalRecordGroupableCell *)self setSeparatorDashStyle:0 hidden:0];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)title
{
  v2 = [(WDMedicalRecordSectionHeaderCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

+ (double)_titleLabelTopToFirstBaseline
{
  v2 = [objc_opt_class() _titleLabelFont];
  [v2 _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

+ (double)_titleLabelLastBaselineToBottom
{
  v2 = [objc_opt_class() _titleLabelFont];
  [v2 _scaledValueForValue:10.0];
  v4 = v3;

  return v4;
}

@end