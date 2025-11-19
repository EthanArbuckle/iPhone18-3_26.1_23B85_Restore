@interface HKInteractiveChartBloodGlucosePercentInRangeData
- (int64_t)countForClassification:(int64_t)a3;
@end

@implementation HKInteractiveChartBloodGlucosePercentInRangeData

- (int64_t)countForClassification:(int64_t)a3
{
  if (a3 <= 3)
  {
    return *(self + 8 * a3 + 8);
  }

  return self;
}

@end