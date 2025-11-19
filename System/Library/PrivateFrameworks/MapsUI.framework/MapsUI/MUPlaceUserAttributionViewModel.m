@interface MUPlaceUserAttributionViewModel
- (MUPlaceUserAttributionViewModel)initWithAttributionName:(id)a3;
@end

@implementation MUPlaceUserAttributionViewModel

- (MUPlaceUserAttributionViewModel)initWithAttributionName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceUserAttributionViewModel;
  v6 = [(MUPlaceUserAttributionViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributionName, a3);
  }

  return v7;
}

@end