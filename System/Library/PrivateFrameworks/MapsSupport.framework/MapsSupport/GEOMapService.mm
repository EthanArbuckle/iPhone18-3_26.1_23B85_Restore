@interface GEOMapService
- (id)navd_defaultTraitsForNavd;
@end

@implementation GEOMapService

- (id)navd_defaultTraitsForNavd
{
  v2 = +[GEOMapService sharedService];
  defaultTraits = [v2 defaultTraits];

  [defaultTraits setAppIdentifier:@"com.apple.navd"];

  return defaultTraits;
}

@end