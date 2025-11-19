@interface HKIDRegisteredReviewCell
- (HKIDRegisteredReviewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateForCurrentSizeCategory;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKIDRegisteredReviewCell

- (HKIDRegisteredReviewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKIDRegisteredReviewCell;
  v4 = [(HKIDRegisteredReviewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKIDRegisteredReviewCell *)v4 setupSubviews];
    [(HKIDRegisteredReviewCell *)v5 setupConstraints];
    [(HKIDRegisteredReviewCell *)v5 _updateForCurrentSizeCategory];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKIDRegisteredReviewCell *)self setTitleLabel:v3];

  v4 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [v5 setNumberOfLines:0];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v7 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [v7 setFont:v6];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"OD_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [v10 setText:v9];

  v12 = [(HKIDRegisteredReviewCell *)self contentView];
  v11 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [v12 addSubview:v11];
}

- (void)setupConstraints
{
  v3 = [(HKIDRegisteredReviewCell *)self titleLabel];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(HKIDRegisteredReviewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [(HKIDRegisteredReviewCell *)self titleLabel];
  v8 = [v7 font];
  [v8 _scaledValueForValue:60.0];
  v9 = [v4 constraintEqualToAnchor:v6 constant:?];
  [v9 setActive:1];

  v10 = [(HKIDRegisteredReviewCell *)self titleLabel];
  v11 = [v10 leadingAnchor];
  v12 = [(HKIDRegisteredReviewCell *)self contentView];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  [v14 setActive:1];

  v15 = [(HKIDRegisteredReviewCell *)self contentView];
  v16 = [v15 trailingAnchor];
  v17 = [(HKIDRegisteredReviewCell *)self titleLabel];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  [v19 setActive:1];

  v24 = [(HKIDRegisteredReviewCell *)self contentView];
  v20 = [v24 bottomAnchor];
  v21 = [(HKIDRegisteredReviewCell *)self titleLabel];
  v22 = [v21 lastBaselineAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:18.0];
  [v23 setActive:1];
}

- (void)_updateForCurrentSizeCategory
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v3 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [v3 setFont:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKIDRegisteredReviewCell;
  [(HKIDRegisteredReviewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKIDRegisteredReviewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKIDRegisteredReviewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

@end