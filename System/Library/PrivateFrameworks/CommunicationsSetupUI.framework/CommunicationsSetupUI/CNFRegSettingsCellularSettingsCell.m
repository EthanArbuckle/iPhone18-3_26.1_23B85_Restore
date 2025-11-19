@interface CNFRegSettingsCellularSettingsCell
- (void)layoutSubviews;
@end

@implementation CNFRegSettingsCellularSettingsCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNFRegSettingsCellularSettingsCell;
  [(PSTableCell *)&v7 layoutSubviews];
  v3 = [(CNFRegSettingsCellularSettingsCell *)self tintColor];
  v4 = [(PSTableCell *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v6 = [(PSTableCell *)self titleLabel];
  [v6 setFont:v5];
}

@end