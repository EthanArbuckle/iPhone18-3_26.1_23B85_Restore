@interface CAFRouteStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFRouteStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFRouteStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFRouteStateCharacteristic *)self routeStateValue];

  return NSStringFromRouteState(v2);
}

@end