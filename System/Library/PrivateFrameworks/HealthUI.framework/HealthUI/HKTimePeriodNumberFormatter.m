@interface HKTimePeriodNumberFormatter
- (HKTimePeriodNumberFormatter)init;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
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

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v6 = a3;
  v7 = [(HKTimePeriodNumberFormatter *)self shouldRoundToHours];
  if ([(HKTimePeriodNumberFormatter *)self shouldShowDays])
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 | 0x80;
  }

  v9 = HKTimePeriodString(v6, v8);

  return v9;
}

@end