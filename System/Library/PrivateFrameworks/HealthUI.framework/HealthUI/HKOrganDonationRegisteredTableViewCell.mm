@interface HKOrganDonationRegisteredTableViewCell
- (HKOrganDonationRegisteredTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation HKOrganDonationRegisteredTableViewCell

- (HKOrganDonationRegisteredTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKOrganDonationRegisteredTableViewCell;
  v4 = [(HKOrganDonationRegisteredTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKOrganDonationRegisteredTableViewCell *)v4 setupSubviews];
    [(HKOrganDonationRegisteredTableViewCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKOrganDonationRegisteredTableViewCell *)self setIntroLabel:v3];

  introLabel = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  [introLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  introLabel2 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  [introLabel2 setNumberOfLines:0];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  introLabel3 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  [introLabel3 setFont:v6];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  introLabel4 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  [introLabel4 setTextColor:secondaryLabelColor];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"OD_REGISTERED_WITH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  introLabel5 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  [introLabel5 setText:v11];

  contentView = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  introLabel6 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  [contentView addSubview:introLabel6];

  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKOrganDonationRegisteredTableViewCell *)self setRegistrarLabel:v15];

  registrarLabel = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  [registrarLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  registrarLabel2 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  [registrarLabel2 setNumberOfLines:0];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  registrarLabel3 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  [registrarLabel3 setFont:v18];

  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"OD_REGISTRAR_DONATE_LIFE_AMERICA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  registrarLabel4 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  [registrarLabel4 setText:v21];

  contentView2 = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  registrarLabel5 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  [contentView2 addSubview:registrarLabel5];
}

- (void)setupConstraints
{
  introLabel = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  firstBaselineAnchor = [introLabel firstBaselineAnchor];
  contentView = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  introLabel2 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  font = [introLabel2 font];
  [font _scaledValueForValue:22.0];
  v9 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v9 setActive:1];

  introLabel3 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  leadingAnchor = [introLabel3 leadingAnchor];
  contentView2 = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v14 setActive:1];

  contentView3 = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  introLabel4 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  trailingAnchor2 = [introLabel4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [v19 setActive:1];

  registrarLabel = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  firstBaselineAnchor2 = [registrarLabel firstBaselineAnchor];
  introLabel5 = [(HKOrganDonationRegisteredTableViewCell *)self introLabel];
  lastBaselineAnchor = [introLabel5 lastBaselineAnchor];
  registrarLabel2 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  font2 = [registrarLabel2 font];
  [font2 _scaledValueForValue:27.0];
  v26 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v26 setActive:1];

  registrarLabel3 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  leadingAnchor3 = [registrarLabel3 leadingAnchor];
  contentView4 = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v31 setActive:1];

  contentView5 = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  registrarLabel4 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  trailingAnchor4 = [registrarLabel4 trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
  [v36 setActive:1];

  contentView6 = [(HKOrganDonationRegisteredTableViewCell *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  registrarLabel5 = [(HKOrganDonationRegisteredTableViewCell *)self registrarLabel];
  lastBaselineAnchor2 = [registrarLabel5 lastBaselineAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:48.0];
  [v40 setActive:1];
}

@end