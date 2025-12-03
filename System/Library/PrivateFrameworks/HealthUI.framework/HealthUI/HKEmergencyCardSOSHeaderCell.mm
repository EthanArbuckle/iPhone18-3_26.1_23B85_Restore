@interface HKEmergencyCardSOSHeaderCell
- (HKEmergencyCardSOSHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateTextColor;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)tintColorDidChange;
@end

@implementation HKEmergencyCardSOSHeaderCell

- (HKEmergencyCardSOSHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKEmergencyCardSOSHeaderCell;
  v4 = [(HKEmergencyCardSOSHeaderCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKEmergencyCardSOSHeaderCell *)v4 setupSubviews];
    [(HKEmergencyCardSOSHeaderCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(HKEmergencyCardSOSHeaderCell *)self setBackgroundColor:systemGroupedBackgroundColor];

  systemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  contentView = [(HKEmergencyCardSOSHeaderCell *)self contentView];
  [contentView setBackgroundColor:systemGroupedBackgroundColor2];

  v6 = objc_alloc(MEMORY[0x1E69DCC10]);
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKEmergencyCardSOSHeaderCell *)self setHeaderLabel:v7];

  headerLabel = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  [headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"EMERGENCY_CONTACT_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  headerLabel2 = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  [headerLabel2 setText:v10];

  v12 = MEMORY[0x1E69DB878];
  v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:0];
  v14 = [v12 fontWithDescriptor:v13 size:0.0];
  headerLabel3 = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  [headerLabel3 setFont:v14];

  [(HKEmergencyCardSOSHeaderCell *)self _updateTextColor];
  contentView2 = [(HKEmergencyCardSOSHeaderCell *)self contentView];
  headerLabel4 = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  [contentView2 addSubview:headerLabel4];
}

- (void)setupConstraints
{
  headerLabel = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  topAnchor = [headerLabel topAnchor];
  contentView = [(HKEmergencyCardSOSHeaderCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
  [v7 setActive:1];

  contentView2 = [(HKEmergencyCardSOSHeaderCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  headerLabel2 = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  bottomAnchor2 = [headerLabel2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  [v12 setActive:1];

  headerLabel3 = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  leftAnchor = [headerLabel3 leftAnchor];
  contentView3 = [(HKEmergencyCardSOSHeaderCell *)self contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v17 = [leftAnchor constraintEqualToSystemSpacingAfterAnchor:leftAnchor2 multiplier:2.0];
  [v17 setActive:1];

  contentView4 = [(HKEmergencyCardSOSHeaderCell *)self contentView];
  rightAnchor = [contentView4 rightAnchor];
  headerLabel4 = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  rightAnchor2 = [headerLabel4 rightAnchor];
  v21 = [rightAnchor constraintEqualToSystemSpacingAfterAnchor:rightAnchor2 multiplier:1.0];
  [v21 setActive:1];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HKEmergencyCardSOSHeaderCell;
  [(HKEmergencyCardSOSHeaderCell *)&v3 tintColorDidChange];
  [(HKEmergencyCardSOSHeaderCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  headerLabel = [(HKEmergencyCardSOSHeaderCell *)self headerLabel];
  [headerLabel setTextColor:secondaryLabelColor];
}

@end