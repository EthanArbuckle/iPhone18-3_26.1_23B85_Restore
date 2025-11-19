@interface MNRouteCoordinateWithType
+ (id)convergenceCoordinate:(PolylineCoordinate)a3;
+ (id)divergenceCoordinate:(PolylineCoordinate)a3;
- (id)description;
@end

@implementation MNRouteCoordinateWithType

- (id)description
{
  v3 = [(MNRouteCoordinateWithType *)self significanceType];
  v4 = @"Divergence";
  if (v3 == 1)
  {
    v4 = @"Convergence";
  }

  v5 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%u, %0.2f] - %@", -[MNRouteCoordinateWithType routeCoordinate](self, "routeCoordinate"), COERCE_FLOAT(-[MNRouteCoordinateWithType routeCoordinate](self, "routeCoordinate") >> 32), v5];

  return v6;
}

+ (id)convergenceCoordinate:(PolylineCoordinate)a3
{
  v4 = objc_alloc_init(MNRouteCoordinateWithType);
  [(MNRouteCoordinateWithType *)v4 setSignificanceType:1];
  [(MNRouteCoordinateWithType *)v4 setRouteCoordinate:a3];

  return v4;
}

+ (id)divergenceCoordinate:(PolylineCoordinate)a3
{
  v4 = objc_alloc_init(MNRouteCoordinateWithType);
  [(MNRouteCoordinateWithType *)v4 setSignificanceType:0];
  [(MNRouteCoordinateWithType *)v4 setRouteCoordinate:a3];

  return v4;
}

@end