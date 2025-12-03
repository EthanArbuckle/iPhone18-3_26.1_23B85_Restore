@interface CLLocation(CLSTimeZones)
- (id)timeZone;
@end

@implementation CLLocation(CLSTimeZones)

- (id)timeZone
{
  v2 = +[CLSTimeZones sharedInstance];
  v3 = [v2 timeZoneWithLocation:self];

  return v3;
}

@end