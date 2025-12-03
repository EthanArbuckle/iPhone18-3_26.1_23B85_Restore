@interface MUPlaceActivityProvider
- (MUPlaceActivityProvider)initWithDataProvider:(id)provider;
@end

@implementation MUPlaceActivityProvider

- (MUPlaceActivityProvider)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = MUPlaceActivityProvider;
  v6 = [(MUPlaceActivityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, provider);
  }

  return v7;
}

@end