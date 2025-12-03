@interface CNFRegSettingsTemporaryPhoneRemoveCell
- (void)layoutSubviews;
@end

@implementation CNFRegSettingsTemporaryPhoneRemoveCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNFRegSettingsTemporaryPhoneRemoveCell;
  [(PSTableCell *)&v7 layoutSubviews];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setTextColor:systemRedColor];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  titleLabel2 = [(PSTableCell *)self titleLabel];
  [titleLabel2 setFont:v5];
}

@end