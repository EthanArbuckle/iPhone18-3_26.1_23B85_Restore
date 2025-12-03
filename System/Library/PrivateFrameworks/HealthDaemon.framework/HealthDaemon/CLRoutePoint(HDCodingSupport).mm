@interface CLRoutePoint(HDCodingSupport)
- (HDCodableRoutePointDatum)codableRepresentationForSync;
@end

@implementation CLRoutePoint(HDCodingSupport)

- (HDCodableRoutePointDatum)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableRoutePointDatum);
  [self timestamp_s];
  [(HDCodableRoutePointDatum *)v2 setTimestamp:?];
  [self latitude_deg];
  [(HDCodableRoutePointDatum *)v2 setLatitude:?];
  [self longitude_deg];
  [(HDCodableRoutePointDatum *)v2 setLongitude:?];
  [self altitude_m];
  [(HDCodableRoutePointDatum *)v2 setAltitude:?];
  [self odometer_m];
  [(HDCodableRoutePointDatum *)v2 setOdometer:?];
  -[HDCodableRoutePointDatum setSignalEnvironmentType:](v2, "setSignalEnvironmentType:", [self signalEnvironmentType]);

  return v2;
}

@end