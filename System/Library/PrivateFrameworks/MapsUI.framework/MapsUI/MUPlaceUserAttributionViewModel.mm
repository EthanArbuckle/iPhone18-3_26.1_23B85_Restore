@interface MUPlaceUserAttributionViewModel
- (MUPlaceUserAttributionViewModel)initWithAttributionName:(id)name;
@end

@implementation MUPlaceUserAttributionViewModel

- (MUPlaceUserAttributionViewModel)initWithAttributionName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MUPlaceUserAttributionViewModel;
  v6 = [(MUPlaceUserAttributionViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributionName, name);
  }

  return v7;
}

@end