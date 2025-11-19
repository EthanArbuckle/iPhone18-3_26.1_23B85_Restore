@interface MUPlaceActivityProvider
- (MUPlaceActivityProvider)initWithDataProvider:(id)a3;
@end

@implementation MUPlaceActivityProvider

- (MUPlaceActivityProvider)initWithDataProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceActivityProvider;
  v6 = [(MUPlaceActivityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, a3);
  }

  return v7;
}

@end