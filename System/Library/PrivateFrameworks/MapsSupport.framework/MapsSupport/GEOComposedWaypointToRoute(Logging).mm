@interface GEOComposedWaypointToRoute(Logging)
- (id)shortDescription;
@end

@implementation GEOComposedWaypointToRoute(Logging)

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  name = [self name];
  v5 = [v2 stringWithFormat:@"<%@:%p, name: %@>", v3, self, name];

  return v5;
}

@end