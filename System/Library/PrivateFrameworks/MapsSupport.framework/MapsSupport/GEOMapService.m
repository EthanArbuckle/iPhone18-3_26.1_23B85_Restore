@interface GEOMapService
- (id)navd_defaultTraitsForNavd;
@end

@implementation GEOMapService

- (id)navd_defaultTraitsForNavd
{
  v2 = +[GEOMapService sharedService];
  v3 = [v2 defaultTraits];

  [v3 setAppIdentifier:@"com.apple.navd"];

  return v3;
}

@end