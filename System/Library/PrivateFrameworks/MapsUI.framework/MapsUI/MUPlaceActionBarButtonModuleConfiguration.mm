@interface MUPlaceActionBarButtonModuleConfiguration
- (MUPlaceActionBarButtonModuleConfiguration)initWithButtonItems:(id)items;
@end

@implementation MUPlaceActionBarButtonModuleConfiguration

- (MUPlaceActionBarButtonModuleConfiguration)initWithButtonItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = MUPlaceActionBarButtonModuleConfiguration;
  v6 = [(MUPlaceActionBarButtonModuleConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buttonItems, items);
  }

  return v7;
}

@end