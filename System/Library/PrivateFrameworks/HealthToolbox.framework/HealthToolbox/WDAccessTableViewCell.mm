@interface WDAccessTableViewCell
+ (NSString)defaultReuseIdentifier;
- (WDAccessTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation WDAccessTableViewCell

+ (NSString)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (WDAccessTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WDAccessTableViewCell;
  v4 = [(WDAccessTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
    textLabel = [(WDAccessTableViewCell *)v4 textLabel];
    [textLabel setText:v6];

    [(WDAccessTableViewCell *)v4 setAccessoryType:1];
  }

  return v4;
}

@end