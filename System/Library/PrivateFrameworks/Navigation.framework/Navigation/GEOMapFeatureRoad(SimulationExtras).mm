@interface GEOMapFeatureRoad(SimulationExtras)
- (double)lastCoordinate;
@end

@implementation GEOMapFeatureRoad(SimulationExtras)

- (double)lastCoordinate
{
  coordinates3d = [self coordinates3d];
  v3 = coordinates3d + 24 * [self coordinateCount];
  result = *(v3 - 24);
  v5 = *(v3 - 16);
  v6 = *(v3 - 8);
  return result;
}

@end