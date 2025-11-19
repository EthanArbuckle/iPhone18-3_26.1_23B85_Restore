@interface GEOMapFeatureRoad(SimulationExtras)
- (double)lastCoordinate;
@end

@implementation GEOMapFeatureRoad(SimulationExtras)

- (double)lastCoordinate
{
  v2 = [a1 coordinates3d];
  v3 = v2 + 24 * [a1 coordinateCount];
  result = *(v3 - 24);
  v5 = *(v3 - 16);
  v6 = *(v3 - 8);
  return result;
}

@end