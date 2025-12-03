@interface CNFRegAccountsButtonCell
- (void)layoutSubviews;
@end

@implementation CNFRegAccountsButtonCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNFRegAccountsButtonCell;
  [(PSTableCell *)&v7 layoutSubviews];
  valueLabel = [(PSTableCell *)self valueLabel];
  text = [valueLabel text];
  _appearsToBePhoneNumber = [text _appearsToBePhoneNumber];

  if (_appearsToBePhoneNumber)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  [valueLabel setLineBreakMode:v6];
  [valueLabel setAdjustsFontSizeToFitWidth:1];
  [valueLabel setMinimumScaleFactor:0.75];
}

@end