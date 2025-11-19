@interface CLRoutePoint(HDCodingSupport)
- (HDCodableRoutePointDatum)codableRepresentationForSync;
@end

@implementation CLRoutePoint(HDCodingSupport)

- (HDCodableRoutePointDatum)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableRoutePointDatum);
  [a1 timestamp_s];
  [(HDCodableRoutePointDatum *)v2 setTimestamp:?];
  [a1 latitude_deg];
  [(HDCodableRoutePointDatum *)v2 setLatitude:?];
  [a1 longitude_deg];
  [(HDCodableRoutePointDatum *)v2 setLongitude:?];
  [a1 altitude_m];
  [(HDCodableRoutePointDatum *)v2 setAltitude:?];
  [a1 odometer_m];
  [(HDCodableRoutePointDatum *)v2 setOdometer:?];
  -[HDCodableRoutePointDatum setSignalEnvironmentType:](v2, "setSignalEnvironmentType:", [a1 signalEnvironmentType]);

  return v2;
}

@end