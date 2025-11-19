@interface CLLocation(CLSTimeZones)
- (id)timeZone;
@end

@implementation CLLocation(CLSTimeZones)

- (id)timeZone
{
  v2 = +[CLSTimeZones sharedInstance];
  v3 = [v2 timeZoneWithLocation:a1];

  return v3;
}

@end