@interface CAFRouteStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFRouteStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRouteStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  routeStateValue = [(CAFRouteStateCharacteristic *)self routeStateValue];

  return NSStringFromRouteState(routeStateValue);
}

@end