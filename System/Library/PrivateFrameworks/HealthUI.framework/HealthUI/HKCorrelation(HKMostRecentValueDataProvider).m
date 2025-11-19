@interface HKCorrelation(HKMostRecentValueDataProvider)
- (HKBloodPressureDataProviderCurrentValue)dataProviderValue;
@end

@implementation HKCorrelation(HKMostRecentValueDataProvider)

- (HKBloodPressureDataProviderCurrentValue)dataProviderValue
{
  v2 = [a1 correlationType];
  v3 = [v2 code];

  if (v3 == 80)
  {
    v4 = [[HKBloodPressureDataProviderCurrentValue alloc] initWithCorrelation:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end