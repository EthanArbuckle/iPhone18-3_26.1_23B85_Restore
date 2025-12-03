@interface FIUIHealthSettingsTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (FIUIHealthSettingsForceUpdatable)forceUpdatable;
- (FIUIHealthSettingsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation FIUIHealthSettingsTableViewCell

- (FIUIHealthSettingsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = FIUIHealthSettingsTableViewCell;
  v4 = [(FIUIHealthSettingsTableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(FIUIHealthSettingsTableViewCell *)v4 setAccessoryType:0];
    [(FIUIHealthSettingsTableViewCell *)v5 setEditingAccessoryType:0];
    [(FIUIHealthSettingsTableViewCell *)v5 setSelectionStyle:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    textLabel = [(FIUIHealthSettingsTableViewCell *)v5 textLabel];
    [textLabel setTextColor:whiteColor];

    grayColor = [MEMORY[0x1E69DC888] grayColor];
    detailTextLabel = [(FIUIHealthSettingsTableViewCell *)v5 detailTextLabel];
    [detailTextLabel setTextColor:grayColor];

    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v10];
    textLabel2 = [(FIUIHealthSettingsTableViewCell *)v5 textLabel];
    [textLabel2 setFont:v11];

    detailTextLabel2 = [(FIUIHealthSettingsTableViewCell *)v5 detailTextLabel];
    [detailTextLabel2 setFont:v11];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = FIUIHealthSettingsTableViewCell;
  [(FIUIHealthSettingsTableViewCell *)&v6 becomeFirstResponder];
  tintColor = [(FIUIHealthSettingsTableViewCell *)self tintColor];
  detailTextLabel = [(FIUIHealthSettingsTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:tintColor];

  return 1;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = FIUIHealthSettingsTableViewCell;
  [(FIUIHealthSettingsTableViewCell *)&v6 resignFirstResponder];
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  detailTextLabel = [(FIUIHealthSettingsTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:grayColor];

  return 1;
}

- (FIUIHealthSettingsForceUpdatable)forceUpdatable
{
  WeakRetained = objc_loadWeakRetained(&self->_forceUpdatable);

  return WeakRetained;
}

@end