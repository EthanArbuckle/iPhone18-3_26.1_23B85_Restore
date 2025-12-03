@interface HKInteractiveChartBloodGlucosePercentInRangeData
- (int64_t)countForClassification:(int64_t)classification;
@end

@implementation HKInteractiveChartBloodGlucosePercentInRangeData

- (int64_t)countForClassification:(int64_t)classification
{
  if (classification <= 3)
  {
    return *(self + 8 * classification + 8);
  }

  return self;
}

@end