@interface MUPlaceActivityDataProviderConfiguration
- (MUPlaceActivityDataProviderConfiguration)initWithMapItem:(id)item;
@end

@implementation MUPlaceActivityDataProviderConfiguration

- (MUPlaceActivityDataProviderConfiguration)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MUPlaceActivityDataProviderConfiguration;
  v6 = [(MUPlaceActivityDataProviderConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end