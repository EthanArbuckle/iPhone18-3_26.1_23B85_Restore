@interface HKObjectPickerShowDetailsTableViewCell
- (HKObjectPickerShowDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupSubviews;
@end

@implementation HKObjectPickerShowDetailsTableViewCell

- (HKObjectPickerShowDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKObjectPickerShowDetailsTableViewCell;
  v4 = [(HKObjectPickerShowDetailsTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKObjectPickerShowDetailsTableViewCell *)v4 _setupSubviews];
  }

  return v5;
}

- (void)_setupSubviews
{
  v37[4] = *MEMORY[0x1E69E9840];
  traitCollection = [(HKObjectPickerShowDetailsTableViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKObjectPickerShowDetailsTableViewCell *)self setBackgroundColor:secondarySystemBackgroundColor];
  }

  textLabel = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  textLabel2 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [textLabel2 setFont:v7];

  textLabel3 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [textLabel3 setAdjustsFontForContentSizeCategory:1];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  textLabel4 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [textLabel4 setTextColor:systemBlueColor];

  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"SHOW_DETAILS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  textLabel5 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [textLabel5 setText:v13];

  v28 = MEMORY[0x1E696ACD8];
  textLabel6 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  topAnchor = [textLabel6 topAnchor];
  contentView = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v37[0] = v32;
  contentView2 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  textLabel7 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  bottomAnchor2 = [textLabel7 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  v37[1] = v26;
  textLabel8 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  leadingAnchor = [textLabel8 leadingAnchor];
  contentView3 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:47.0];
  v37[2] = v18;
  contentView4 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  textLabel9 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  trailingAnchor2 = [textLabel9 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:47.0];
  v37[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v28 activateConstraints:v24];
}

@end