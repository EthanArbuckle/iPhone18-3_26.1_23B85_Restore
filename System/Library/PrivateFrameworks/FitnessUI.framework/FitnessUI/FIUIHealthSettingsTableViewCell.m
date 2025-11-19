@interface FIUIHealthSettingsTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (FIUIHealthSettingsForceUpdatable)forceUpdatable;
- (FIUIHealthSettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation FIUIHealthSettingsTableViewCell

- (FIUIHealthSettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = FIUIHealthSettingsTableViewCell;
  v4 = [(FIUIHealthSettingsTableViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(FIUIHealthSettingsTableViewCell *)v4 setAccessoryType:0];
    [(FIUIHealthSettingsTableViewCell *)v5 setEditingAccessoryType:0];
    [(FIUIHealthSettingsTableViewCell *)v5 setSelectionStyle:0];
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    v7 = [(FIUIHealthSettingsTableViewCell *)v5 textLabel];
    [v7 setTextColor:v6];

    v8 = [MEMORY[0x1E69DC888] grayColor];
    v9 = [(FIUIHealthSettingsTableViewCell *)v5 detailTextLabel];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v10];
    v12 = [(FIUIHealthSettingsTableViewCell *)v5 textLabel];
    [v12 setFont:v11];

    v13 = [(FIUIHealthSettingsTableViewCell *)v5 detailTextLabel];
    [v13 setFont:v11];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v6.receiver = self;
  v6.super_class = FIUIHealthSettingsTableViewCell;
  [(FIUIHealthSettingsTableViewCell *)&v6 becomeFirstResponder];
  v3 = [(FIUIHealthSettingsTableViewCell *)self tintColor];
  v4 = [(FIUIHealthSettingsTableViewCell *)self detailTextLabel];
  [v4 setTextColor:v3];

  return 1;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = FIUIHealthSettingsTableViewCell;
  [(FIUIHealthSettingsTableViewCell *)&v6 resignFirstResponder];
  v3 = [MEMORY[0x1E69DC888] grayColor];
  v4 = [(FIUIHealthSettingsTableViewCell *)self detailTextLabel];
  [v4 setTextColor:v3];

  return 1;
}

- (FIUIHealthSettingsForceUpdatable)forceUpdatable
{
  WeakRetained = objc_loadWeakRetained(&self->_forceUpdatable);

  return WeakRetained;
}

@end