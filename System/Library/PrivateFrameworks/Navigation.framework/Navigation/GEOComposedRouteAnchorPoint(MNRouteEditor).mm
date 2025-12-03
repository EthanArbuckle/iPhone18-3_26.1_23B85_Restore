@interface GEOComposedRouteAnchorPoint(MNRouteEditor)
- (id)geoLocation;
- (id)loggingDescription;
@end

@implementation GEOComposedRouteAnchorPoint(MNRouteEditor)

- (id)loggingDescription
{
  v2 = MEMORY[0x1E696AEC0];
  name = [self name];
  [self locationCoordinate];
  v5 = v4;
  [self locationCoordinate];
  v7 = [v2 stringWithFormat:@"%@ at %f, %f", name, v5, v6];

  return v7;
}

- (id)geoLocation
{
  v2 = objc_alloc(MEMORY[0x1E69A1E70]);
  [self coordinate];
  v5 = [v2 initWithGEOCoordinate:objc_msgSend(self isUserLocation:{"isCurrentLocation"), v3, v4}];
  [self coordinate];
  [v5 setAltitude:v6];

  return v5;
}

@end