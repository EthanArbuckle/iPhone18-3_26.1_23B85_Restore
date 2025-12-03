@interface HKEmergencyCardNoneCell
- (HKEmergencyCardNoneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setUpConstraints;
- (void)setUpViews;
@end

@implementation HKEmergencyCardNoneCell

- (HKEmergencyCardNoneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKEmergencyCardNoneCell;
  v4 = [(HKEmergencyCardNoneCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKEmergencyCardNoneCell *)v4 setUpViews];
    [(HKEmergencyCardNoneCell *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpViews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  noneLabel = self->_noneLabel;
  self->_noneLabel = v3;

  [(UILabel *)self->_noneLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_noneLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_noneLabel setNumberOfLines:2];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_noneLabel setFont:v5];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_noneLabel setTextColor:secondaryLabelColor];

  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"EMERGENCY_CONTACT_NONE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(UILabel *)self->_noneLabel setText:v8];

  contentView = [(HKEmergencyCardNoneCell *)self contentView];
  [contentView addSubview:self->_noneLabel];
}

- (void)setUpConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_noneLabel topAnchor];
  contentView = [(HKEmergencyCardNoneCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v18;
  leadingAnchor = [(UILabel *)self->_noneLabel leadingAnchor];
  contentView2 = [(HKEmergencyCardNoneCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v23[1] = v13;
  contentView3 = [(HKEmergencyCardNoneCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_noneLabel trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  v23[2] = v6;
  contentView4 = [(HKEmergencyCardNoneCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_noneLabel bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v15 activateConstraints:v12];
}

@end