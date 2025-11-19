@interface GEOComposedRouteAnchorPoint(MNRouteEditor)
- (id)geoLocation;
- (id)loggingDescription;
@end

@implementation GEOComposedRouteAnchorPoint(MNRouteEditor)

- (id)loggingDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 name];
  [a1 locationCoordinate];
  v5 = v4;
  [a1 locationCoordinate];
  v7 = [v2 stringWithFormat:@"%@ at %f, %f", v3, v5, v6];

  return v7;
}

- (id)geoLocation
{
  v2 = objc_alloc(MEMORY[0x1E69A1E70]);
  [a1 coordinate];
  v5 = [v2 initWithGEOCoordinate:objc_msgSend(a1 isUserLocation:{"isCurrentLocation"), v3, v4}];
  [a1 coordinate];
  [v5 setAltitude:v6];

  return v5;
}

@end