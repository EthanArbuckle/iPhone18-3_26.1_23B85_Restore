@interface WDShowAllDataTableViewCell
+ (NSString)defaultReuseIdentifier;
- (WDShowAllDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_textLabelText;
@end

@implementation WDShowAllDataTableViewCell

- (WDShowAllDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = WDShowAllDataTableViewCell;
  v4 = [(WDShowAllDataTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WDShowAllDataTableViewCell *)v4 _textLabelText];
    v7 = [(WDShowAllDataTableViewCell *)v5 textLabel];
    [v7 setText:v6];

    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [(WDShowAllDataTableViewCell *)v5 textLabel];
    [v9 setTextColor:v8];

    [(WDShowAllDataTableViewCell *)v5 setAccessoryType:1];
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
  v3 = [v2 localizedStringForKey:@"SHOW_ALL_DATA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

@end