@interface NanoRoutePlanningRequestDelta
+ (id)everythingChanged;
@end

@implementation NanoRoutePlanningRequestDelta

+ (id)everythingChanged
{
  v2 = objc_alloc_init(self);
  [v2 setWaypointsChanged:1];
  [v2 setTransportTypeChanged:1];

  return v2;
}

@end