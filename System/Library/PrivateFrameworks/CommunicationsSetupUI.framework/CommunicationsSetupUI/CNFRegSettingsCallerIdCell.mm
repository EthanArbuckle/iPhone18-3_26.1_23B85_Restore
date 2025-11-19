@interface CNFRegSettingsCallerIdCell
- (CNFRegSettingsCallerIdCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation CNFRegSettingsCallerIdCell

- (CNFRegSettingsCallerIdCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = CNFRegSettingsCallerIdCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:0 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(CNFRegSettingsCallerIdCell *)v5 setAccessoryType:1];
    [(CNFRegSettingsCallerIdCell *)v6 setSelectionStyle:1];
  }

  return v6;
}

@end