@interface WDStoredDataCategoryTableViewCell
- (void)setDisplayType:(id)a3;
@end

@implementation WDStoredDataCategoryTableViewCell

- (void)setDisplayType:(id)a3
{
  objc_storeStrong(&self->_displayType, a3);
  v5 = a3;
  v8 = [v5 localization];

  v6 = [v8 displayName];
  v7 = [(WDStoredDataCategoryTableViewCell *)self textLabel];
  [v7 setText:v6];
}

@end