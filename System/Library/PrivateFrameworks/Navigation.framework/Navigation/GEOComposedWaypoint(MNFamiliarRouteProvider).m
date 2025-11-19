@interface GEOComposedWaypoint(MNFamiliarRouteProvider)
- (id)clLocation;
@end

@implementation GEOComposedWaypoint(MNFamiliarRouteProvider)

- (id)clLocation
{
  [a1 coordinate];
  v3 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v1 longitude:v2];

  return v3;
}

@end