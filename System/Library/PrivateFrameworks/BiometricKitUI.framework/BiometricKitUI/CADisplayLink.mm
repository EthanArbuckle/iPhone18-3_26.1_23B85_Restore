@interface CADisplayLink
- (uint64_t)bkui_enableHighFrameRate;
@end

@implementation CADisplayLink

- (uint64_t)bkui_enableHighFrameRate
{
  if (result)
  {
    v1 = result;
    if (MGGetProductType() == 1060988941 || MGGetProductType() == 3585085679 || MGGetProductType() == 689804742 || (result = MGGetProductType(), result == 2309863438))
    {
      *&v2 = OUTLINED_FUNCTION_0_5();
      [v1 setPreferredFrameRateRange:v2];

      return [v1 setHighFrameRateReason:2293761];
    }
  }

  return result;
}

@end