@interface GEODirectionsRequester
+ (void)useLocalProxy;
@end

@implementation GEODirectionsRequester

+ (void)useLocalProxy
{
  v3 = objc_opt_class();

  [self useProxy:v3];
}

@end