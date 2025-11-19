@interface WDMedicalRecordStandaloneCell
+ (double)_titleLabelLastBaselineToBottom;
+ (double)_titleLabelTopToFirstBaseline;
- (NSString)title;
- (void)setTitle:(id)a3;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordStandaloneCell

- (void)setupSubviews
{
  v46.receiver = self;
  v46.super_class = WDMedicalRecordStandaloneCell;
  [(WDMedicalRecordGroupableCell *)&v46 setupSubviews];
  v3 = [MEMORY[0x1E69DD250] makeChevron];
  [(WDMedicalRecordStandaloneCell *)self setChevronView:v3];

  v4 = [(WDMedicalRecordStandaloneCell *)self contentView];
  v5 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  [v4 addSubview:v5];

  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordStandaloneCell *)self setTitleLabel:v6];

  v7 = [objc_opt_class() _titleLabelFont];
  v8 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v8 setFont:v7];

  v9 = [MEMORY[0x1E69DC888] labelColor];
  v10 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v10 setTextColor:v9];

  v11 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v11 setNumberOfLines:8];

  v12 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v12 setLineBreakMode:5];

  v13 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(WDMedicalRecordStandaloneCell *)self contentView];
  v15 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v14 addSubview:v15];

  v16 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  v17 = [v16 trailingAnchor];
  v18 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:-16.0];
  [v20 setActive:1];

  v21 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  v22 = [v21 centerYAnchor];
  v23 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v24 = [v23 centerYAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  v27 = [v26 leadingAnchor];
  v28 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v29 = [v28 leadingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
  [v30 setActive:1];

  v31 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  v32 = [v31 trailingAnchor];
  v33 = [(WDMedicalRecordStandaloneCell *)self chevronView];
  v34 = [v33 leadingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:-16.0];
  [v35 setActive:1];

  v36 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  v37 = [v36 firstBaselineAnchor];
  v38 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v39 = [v38 topAnchor];
  [objc_opt_class() _titleLabelTopToFirstBaseline];
  v40 = [v37 constraintEqualToAnchor:v39 constant:?];
  [v40 setActive:1];

  v41 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v42 = [v41 bottomAnchor];
  v43 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  v44 = [v43 lastBaselineAnchor];
  [objc_opt_class() _titleLabelLastBaselineToBottom];
  v45 = [v42 constraintEqualToAnchor:v44 constant:?];
  [v45 setActive:1];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)title
{
  v2 = [(WDMedicalRecordStandaloneCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

+ (double)_titleLabelTopToFirstBaseline
{
  v2 = [objc_opt_class() _titleLabelFont];
  [v2 _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

+ (double)_titleLabelLastBaselineToBottom
{
  v2 = [objc_opt_class() _titleLabelFont];
  [v2 _scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

@end