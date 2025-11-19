@interface MXMUnitHitch
+ (MXMUnitHitch)hitches;
+ (MXMUnitHitch)timeRatio;
@end

@implementation MXMUnitHitch

+ (MXMUnitHitch)hitches
{
  v2 = [[MXMUnitHitch alloc] initWithSymbol:@"hitches"];

  return v2;
}

+ (MXMUnitHitch)timeRatio
{
  v2 = [[MXMUnitHitch alloc] initWithSymbol:@"ms per s"];

  return v2;
}

@end