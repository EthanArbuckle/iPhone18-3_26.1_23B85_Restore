@interface HKMedicationDayInCycleResult
- (HKMedicationDayInCycleResult)initWithDaysIntoCycle:(int64_t)a3 isInPauseInterval:(BOOL)a4;
@end

@implementation HKMedicationDayInCycleResult

- (HKMedicationDayInCycleResult)initWithDaysIntoCycle:(int64_t)a3 isInPauseInterval:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HKMedicationDayInCycleResult;
  result = [(HKMedicationDayInCycleResult *)&v7 init];
  if (result)
  {
    result->_daysIntoCycle = a3;
    result->_isInPauseInterval = a4;
  }

  return result;
}

@end