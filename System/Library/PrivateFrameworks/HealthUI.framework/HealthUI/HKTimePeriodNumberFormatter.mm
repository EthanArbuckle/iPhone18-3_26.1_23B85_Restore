@interface HKTimePeriodNumberFormatter
- (HKTimePeriodNumberFormatter)init;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKTimePeriodNumberFormatter

- (HKTimePeriodNumberFormatter)init
{
  v3.receiver = self;
  v3.super_class = HKTimePeriodNumberFormatter;
  result = [(HKTimePeriodNumberFormatter *)&v3 init];
  if (result)
  {
    result->_shouldShowDays = 1;
  }

  return result;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  shouldRoundToHours = [(HKTimePeriodNumberFormatter *)self shouldRoundToHours];
  if ([(HKTimePeriodNumberFormatter *)self shouldShowDays])
  {
    v8 = shouldRoundToHours;
  }

  else
  {
    v8 = shouldRoundToHours | 0x80;
  }

  v9 = HKTimePeriodString(numberCopy, v8);

  return v9;
}

@end