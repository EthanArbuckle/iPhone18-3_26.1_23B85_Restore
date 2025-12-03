@interface NSValue(HKGraphSeriesDataBlockPath)
- (uint64_t)HKGraphSeriesDataBlockPathValue;
@end

@implementation NSValue(HKGraphSeriesDataBlockPath)

- (uint64_t)HKGraphSeriesDataBlockPathValue
{
  *x8_0 = 0;
  x8_0[1] = 0;
  x8_0[2] = 0;
  return [self getValue:x8_0];
}

@end