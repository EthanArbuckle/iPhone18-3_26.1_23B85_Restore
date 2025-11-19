@interface CEKWheelScrubberUtilities
+ (double)dotIndicatorDiameter;
@end

@implementation CEKWheelScrubberUtilities

+ (double)dotIndicatorDiameter
{
  v2 = CEKIsSmallPhone();
  result = 5.0;
  if (v2)
  {
    return 4.0;
  }

  return result;
}

@end