@interface HKObjectPickerShowDetailsTableViewCell
- (HKObjectPickerShowDetailsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupSubviews;
@end

@implementation HKObjectPickerShowDetailsTableViewCell

- (HKObjectPickerShowDetailsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKObjectPickerShowDetailsTableViewCell;
  v4 = [(HKObjectPickerShowDetailsTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(HKObjectPickerShowDetailsTableViewCell *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 6)
  {
    v5 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKObjectPickerShowDetailsTableViewCell *)self setBackgroundColor:v5];
  }

  v6 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [v8 setFont:v7];

  v9 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  v10 = [MEMORY[0x1E69DC888] systemBlueColor];
  v11 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [v11 setTextColor:v10];

  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"SHOW_DETAILS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  [v14 setText:v13];

  v28 = MEMORY[0x1E696ACD8];
  v36 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  v34 = [v36 topAnchor];
  v35 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:16.0];
  v37[0] = v32;
  v31 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  v29 = [v31 bottomAnchor];
  v30 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  v27 = [v30 bottomAnchor];
  v26 = [v29 constraintEqualToAnchor:v27 constant:16.0];
  v37[1] = v26;
  v25 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  v15 = [v25 leadingAnchor];
  v16 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:47.0];
  v37[2] = v18;
  v19 = [(HKObjectPickerShowDetailsTableViewCell *)self contentView];
  v20 = [v19 trailingAnchor];
  v21 = [(HKObjectPickerShowDetailsTableViewCell *)self textLabel];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:47.0];
  v37[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v28 activateConstraints:v24];
}

@end