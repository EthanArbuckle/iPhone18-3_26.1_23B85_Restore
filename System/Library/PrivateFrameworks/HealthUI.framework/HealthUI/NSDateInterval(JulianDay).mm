@interface NSDateInterval(JulianDay)
+ (id)hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:()JulianDay sourceCalendar:localCalendar:;
@end

@implementation NSDateInterval(JulianDay)

+ (id)hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:()JulianDay sourceCalendar:localCalendar:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  startDate = [v9 startDate];
  v11 = [startDate hk_dayIndexWithCalendar:v8];

  endDate = [v9 endDate];

  v13 = [endDate hk_dayIndexWithCalendar:v8];
  if (v11 == v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] hk_dateOnDayIndex:v11 atHour:0 calendar:v7];
    v16 = [MEMORY[0x1E695DF00] hk_dateOnDayIndex:v13 atHour:0 calendar:v7];
    v17 = [v7 dateByAddingUnit:128 value:-1 toDate:v16 options:0];
    v14 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v15 endDate:v17];
  }

  return v14;
}

@end