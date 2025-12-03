@interface WDStoredDataCategoryTableViewCell
- (void)setDisplayType:(id)type;
@end

@implementation WDStoredDataCategoryTableViewCell

- (void)setDisplayType:(id)type
{
  objc_storeStrong(&self->_displayType, type);
  typeCopy = type;
  localization = [typeCopy localization];

  displayName = [localization displayName];
  textLabel = [(WDStoredDataCategoryTableViewCell *)self textLabel];
  [textLabel setText:displayName];
}

@end