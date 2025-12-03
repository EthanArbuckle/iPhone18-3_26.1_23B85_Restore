@interface NSDateInterval(HealthUIAdditions)
+ (id)hk_dateIntervalWithValueRange:()HealthUIAdditions;
@end

@implementation NSDateInterval(HealthUIAdditions)

+ (id)hk_dateIntervalWithValueRange:()HealthUIAdditions
{
  v3 = a3;
  startDate = [v3 startDate];
  if (startDate)
  {
  }

  else
  {
    endDate = [v3 endDate];

    if (!endDate)
    {
      goto LABEL_5;
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate2 = [v3 startDate];
  endDate2 = [v3 endDate];
  endDate = [v6 initWithStartDate:startDate2 endDate:endDate2];

LABEL_5:

  return endDate;
}

@end