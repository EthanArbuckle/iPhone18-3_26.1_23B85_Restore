@interface MURouteActivityDataProviderConfiguration
- (MURouteActivityDataProviderConfiguration)initWithSourceMapItem:(id)item destinationMapItem:(id)mapItem route:(id)route;
@end

@implementation MURouteActivityDataProviderConfiguration

- (MURouteActivityDataProviderConfiguration)initWithSourceMapItem:(id)item destinationMapItem:(id)mapItem route:(id)route
{
  itemCopy = item;
  mapItemCopy = mapItem;
  routeCopy = route;
  v15.receiver = self;
  v15.super_class = MURouteActivityDataProviderConfiguration;
  v12 = [(MURouteActivityDataProviderConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceMapItem, item);
    objc_storeStrong(&v13->_destinationMapItem, mapItem);
    objc_storeStrong(&v13->_route, route);
  }

  return v13;
}

@end