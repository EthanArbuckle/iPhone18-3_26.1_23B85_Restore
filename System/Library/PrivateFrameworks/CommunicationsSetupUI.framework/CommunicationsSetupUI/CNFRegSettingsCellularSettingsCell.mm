@interface CNFRegSettingsCellularSettingsCell
- (void)layoutSubviews;
@end

@implementation CNFRegSettingsCellularSettingsCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNFRegSettingsCellularSettingsCell;
  [(PSTableCell *)&v7 layoutSubviews];
  tintColor = [(CNFRegSettingsCellularSettingsCell *)self tintColor];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setTextColor:tintColor];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  titleLabel2 = [(PSTableCell *)self titleLabel];
  [titleLabel2 setFont:v5];
}

@end