@interface NSDateInterval(HealthUIAdditions)
+ (id)hk_dateIntervalWithValueRange:()HealthUIAdditions;
@end

@implementation NSDateInterval(HealthUIAdditions)

+ (id)hk_dateIntervalWithValueRange:()HealthUIAdditions
{
  v3 = a3;
  v4 = [v3 startDate];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 endDate];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  v7 = [v3 startDate];
  v8 = [v3 endDate];
  v5 = [v6 initWithStartDate:v7 endDate:v8];

LABEL_5:

  return v5;
}

@end