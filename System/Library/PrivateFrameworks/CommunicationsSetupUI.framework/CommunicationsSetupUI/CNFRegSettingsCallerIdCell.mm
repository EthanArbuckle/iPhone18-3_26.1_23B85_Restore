@interface CNFRegSettingsCallerIdCell
- (CNFRegSettingsCallerIdCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation CNFRegSettingsCallerIdCell

- (CNFRegSettingsCallerIdCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CNFRegSettingsCallerIdCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:0 reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(CNFRegSettingsCallerIdCell *)v5 setAccessoryType:1];
    [(CNFRegSettingsCallerIdCell *)v6 setSelectionStyle:1];
  }

  return v6;
}

@end