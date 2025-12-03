@interface GEOComposedWaypointToRoute
- (id)shortDescription;
@end

@implementation GEOComposedWaypointToRoute

- (id)shortDescription
{
  v3 = objc_opt_class();
  name = [(GEOComposedWaypointToRoute *)self name];
  v5 = [NSString stringWithFormat:@"<%@:%p, name: %@>", v3, self, name];

  return v5;
}

@end