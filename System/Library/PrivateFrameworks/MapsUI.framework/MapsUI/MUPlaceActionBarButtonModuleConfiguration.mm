@interface MUPlaceActionBarButtonModuleConfiguration
- (MUPlaceActionBarButtonModuleConfiguration)initWithButtonItems:(id)a3;
@end

@implementation MUPlaceActionBarButtonModuleConfiguration

- (MUPlaceActionBarButtonModuleConfiguration)initWithButtonItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceActionBarButtonModuleConfiguration;
  v6 = [(MUPlaceActionBarButtonModuleConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buttonItems, a3);
  }

  return v7;
}

@end