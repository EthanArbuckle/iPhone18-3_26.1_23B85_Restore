@interface HKCorrelation(HKMostRecentValueDataProvider)
- (HKBloodPressureDataProviderCurrentValue)dataProviderValue;
@end

@implementation HKCorrelation(HKMostRecentValueDataProvider)

- (HKBloodPressureDataProviderCurrentValue)dataProviderValue
{
  correlationType = [self correlationType];
  code = [correlationType code];

  if (code == 80)
  {
    v4 = [[HKBloodPressureDataProviderCurrentValue alloc] initWithCorrelation:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end