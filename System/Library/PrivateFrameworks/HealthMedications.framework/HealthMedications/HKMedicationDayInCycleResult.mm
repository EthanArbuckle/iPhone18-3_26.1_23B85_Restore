@interface HKMedicationDayInCycleResult
- (HKMedicationDayInCycleResult)initWithDaysIntoCycle:(int64_t)cycle isInPauseInterval:(BOOL)interval;
@end

@implementation HKMedicationDayInCycleResult

- (HKMedicationDayInCycleResult)initWithDaysIntoCycle:(int64_t)cycle isInPauseInterval:(BOOL)interval
{
  v7.receiver = self;
  v7.super_class = HKMedicationDayInCycleResult;
  result = [(HKMedicationDayInCycleResult *)&v7 init];
  if (result)
  {
    result->_daysIntoCycle = cycle;
    result->_isInPauseInterval = interval;
  }

  return result;
}

@end