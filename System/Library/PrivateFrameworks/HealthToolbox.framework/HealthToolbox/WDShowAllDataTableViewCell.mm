@interface WDShowAllDataTableViewCell
+ (NSString)defaultReuseIdentifier;
- (WDShowAllDataTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_textLabelText;
@end

@implementation WDShowAllDataTableViewCell

- (WDShowAllDataTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = WDShowAllDataTableViewCell;
  v4 = [(WDShowAllDataTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    _textLabelText = [(WDShowAllDataTableViewCell *)v4 _textLabelText];
    textLabel = [(WDShowAllDataTableViewCell *)v5 textLabel];
    [textLabel setText:_textLabelText];

    labelColor = [MEMORY[0x277D75348] labelColor];
    textLabel2 = [(WDShowAllDataTableViewCell *)v5 textLabel];
    [textLabel2 setTextColor:labelColor];

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