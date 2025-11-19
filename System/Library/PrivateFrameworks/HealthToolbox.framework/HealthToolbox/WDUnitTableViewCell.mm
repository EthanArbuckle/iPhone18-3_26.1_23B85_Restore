@interface WDUnitTableViewCell
+ (NSString)defaultReuseIdentifier;
- (WDUnitTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_textLabelText;
@end

@implementation WDUnitTableViewCell

- (WDUnitTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WDUnitTableViewCell;
  v4 = [(WDUnitTableViewCell *)&v9 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WDUnitTableViewCell *)v4 _textLabelText];
    v7 = [(WDUnitTableViewCell *)v5 textLabel];
    [v7 setText:v6];

    [(WDUnitTableViewCell *)v5 setAccessoryType:1];
  }

  return v5;
}

+ (NSString)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_textLabelText
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"UNIT" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

@end