@interface HKIDRegisteredReviewCell
- (HKIDRegisteredReviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateForCurrentSizeCategory;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKIDRegisteredReviewCell

- (HKIDRegisteredReviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKIDRegisteredReviewCell;
  v4 = [(HKIDRegisteredReviewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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

  titleLabel = [(HKIDRegisteredReviewCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  titleLabel3 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [titleLabel3 setFont:v6];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"OD_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  titleLabel4 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [titleLabel4 setText:v9];

  contentView = [(HKIDRegisteredReviewCell *)self contentView];
  titleLabel5 = [(HKIDRegisteredReviewCell *)self titleLabel];
  [contentView addSubview:titleLabel5];
}

- (void)setupConstraints
{
  titleLabel = [(HKIDRegisteredReviewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(HKIDRegisteredReviewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  titleLabel2 = [(HKIDRegisteredReviewCell *)self titleLabel];
  font = [titleLabel2 font];
  [font _scaledValueForValue:60.0];
  v9 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v9 setActive:1];

  titleLabel3 = [(HKIDRegisteredReviewCell *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  contentView2 = [(HKIDRegisteredReviewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v14 setActive:1];

  contentView3 = [(HKIDRegisteredReviewCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  titleLabel4 = [(HKIDRegisteredReviewCell *)self titleLabel];
  trailingAnchor2 = [titleLabel4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [v19 setActive:1];

  contentView4 = [(HKIDRegisteredReviewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  titleLabel5 = [(HKIDRegisteredReviewCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:18.0];
  [v23 setActive:1];
}

- (void)_updateForCurrentSizeCategory
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  titleLabel = [(HKIDRegisteredReviewCell *)self titleLabel];
  [titleLabel setFont:v4];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKIDRegisteredReviewCell;
  [(HKIDRegisteredReviewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKIDRegisteredReviewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKIDRegisteredReviewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

@end