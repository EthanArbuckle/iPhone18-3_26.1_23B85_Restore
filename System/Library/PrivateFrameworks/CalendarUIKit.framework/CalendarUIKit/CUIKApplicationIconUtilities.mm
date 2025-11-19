@interface CUIKApplicationIconUtilities
+ (BOOL)_isDate:(id)a3 withinNextWeekOfDate:(id)a4 calendar:(id)a5;
+ (BOOL)_isDate:(id)a3 withinPreviousWeekOfDate:(id)a4 calendar:(id)a5;
+ (BOOL)_isWithinNextWeek:(id)a3 calendar:(id)a4;
+ (BOOL)_isWithinPreviousWeek:(id)a3 calendar:(id)a4;
+ (id)dateFormatterWithCalendar:(id)a3;
+ (int64_t)iconDateNameFormatTypeForDateBasedOnDistanceFromNow:(id)a3 calendar:(id)a4;
@end

@implementation CUIKApplicationIconUtilities

+ (id)dateFormatterWithCalendar:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateStyle:0];
  [v5 setTimeStyle:0];
  [v5 setCalendar:v4];
  v6 = [v4 locale];

  [v5 setLocale:v6];

  return v5;
}

+ (int64_t)iconDateNameFormatTypeForDateBasedOnDistanceFromNow:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ([v7 isDateInToday:v6] & 1) == 0 && (objc_msgSend(a1, "_isWithinPreviousWeek:calendar:", v6, v7) & 1) == 0 && !objc_msgSend(a1, "_isWithinNextWeek:calendar:", v6, v7);

  return v8;
}

+ (BOOL)_isWithinPreviousWeek:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 CalSimulatedDateForNow];
  LOBYTE(a1) = [a1 _isDate:v8 withinPreviousWeekOfDate:v9 calendar:v7];

  return a1;
}

+ (BOOL)_isDate:(id)a3 withinPreviousWeekOfDate:(id)a4 calendar:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 startOfDayForDate:a4];
  if ([v7 CalIsAfterOrSameAsDate:v9])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v8 dateByAddingUnit:16 value:-6 toDate:v9 options:0];
    v10 = [v7 CalIsAfterOrSameAsDate:v11];
  }

  return v10;
}

+ (BOOL)_isWithinNextWeek:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 CalSimulatedDateForNow];
  LOBYTE(a1) = [a1 _isDate:v8 withinNextWeekOfDate:v9 calendar:v7];

  return a1;
}

+ (BOOL)_isDate:(id)a3 withinNextWeekOfDate:(id)a4 calendar:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 dateByAddingUnit:16 value:1 toDate:v8 options:0];
  v11 = [v9 startOfDayForDate:v10];
  if ([v7 CalIsBeforeDate:v11])
  {
    v12 = 0;
  }

  else
  {
    v13 = [v9 dateByAddingUnit:16 value:7 toDate:v8 options:0];
    v14 = [v9 startOfDayForDate:v13];
    v12 = [v7 CalIsBeforeDate:v14];
  }

  return v12;
}

@end