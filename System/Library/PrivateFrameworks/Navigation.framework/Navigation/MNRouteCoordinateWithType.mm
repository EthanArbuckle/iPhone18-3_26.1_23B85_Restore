@interface MNRouteCoordinateWithType
+ (id)convergenceCoordinate:(PolylineCoordinate)coordinate;
+ (id)divergenceCoordinate:(PolylineCoordinate)coordinate;
- (id)description;
@end

@implementation MNRouteCoordinateWithType

- (id)description
{
  significanceType = [(MNRouteCoordinateWithType *)self significanceType];
  v4 = @"Divergence";
  if (significanceType == 1)
  {
    v4 = @"Convergence";
  }

  v5 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%u, %0.2f] - %@", -[MNRouteCoordinateWithType routeCoordinate](self, "routeCoordinate"), COERCE_FLOAT(-[MNRouteCoordinateWithType routeCoordinate](self, "routeCoordinate") >> 32), v5];

  return v6;
}

+ (id)convergenceCoordinate:(PolylineCoordinate)coordinate
{
  v4 = objc_alloc_init(MNRouteCoordinateWithType);
  [(MNRouteCoordinateWithType *)v4 setSignificanceType:1];
  [(MNRouteCoordinateWithType *)v4 setRouteCoordinate:coordinate];

  return v4;
}

+ (id)divergenceCoordinate:(PolylineCoordinate)coordinate
{
  v4 = objc_alloc_init(MNRouteCoordinateWithType);
  [(MNRouteCoordinateWithType *)v4 setSignificanceType:0];
  [(MNRouteCoordinateWithType *)v4 setRouteCoordinate:coordinate];

  return v4;
}

@end