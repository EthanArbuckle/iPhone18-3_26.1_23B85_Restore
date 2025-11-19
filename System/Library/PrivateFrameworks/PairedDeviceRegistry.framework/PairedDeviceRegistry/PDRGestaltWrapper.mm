@interface PDRGestaltWrapper
+ (id)deviceClassString;
@end

@implementation PDRGestaltWrapper

+ (id)deviceClassString
{
  v2 = MGGetStringAnswer();

  return v2;
}

@end