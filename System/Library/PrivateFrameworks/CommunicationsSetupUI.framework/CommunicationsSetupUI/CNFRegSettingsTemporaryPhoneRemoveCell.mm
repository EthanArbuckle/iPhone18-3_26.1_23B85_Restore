@interface CNFRegSettingsTemporaryPhoneRemoveCell
- (void)layoutSubviews;
@end

@implementation CNFRegSettingsTemporaryPhoneRemoveCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNFRegSettingsTemporaryPhoneRemoveCell;
  [(PSTableCell *)&v7 layoutSubviews];
  v3 = [MEMORY[0x277D75348] systemRedColor];
  v4 = [(PSTableCell *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v6 = [(PSTableCell *)self titleLabel];
  [v6 setFont:v5];
}

@end