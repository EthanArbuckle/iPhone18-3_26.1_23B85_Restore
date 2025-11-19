@interface MUPlaceActivityDataProviderConfiguration
- (MUPlaceActivityDataProviderConfiguration)initWithMapItem:(id)a3;
@end

@implementation MUPlaceActivityDataProviderConfiguration

- (MUPlaceActivityDataProviderConfiguration)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceActivityDataProviderConfiguration;
  v6 = [(MUPlaceActivityDataProviderConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end