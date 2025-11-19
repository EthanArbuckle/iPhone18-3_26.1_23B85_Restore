@interface NSDate(EventAdditions)
+ (uint64_t)daysSpannedFromStartDate:()EventAdditions toEndDate:allDay:inCalendar:;
@end

@implementation NSDate(EventAdditions)

+ (uint64_t)daysSpannedFromStartDate:()EventAdditions toEndDate:allDay:inCalendar:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([v9 isEqualToDate:v10])
  {
    v12 = 1;
  }

  else
  {
    if (a5)
    {
      v13 = [v11 dateByAddingUnit:32 value:2 toDate:v9 options:0];

      v14 = [v11 dateByAddingUnit:32 value:2 toDate:v10 options:0];

      v10 = v14;
      v9 = v13;
    }

    v15 = [v11 components:542 fromDate:v9];
    v16 = [v11 dateFromComponents:v15];

    v17 = [v11 components:542 fromDate:v10];
    v18 = [v11 dateFromComponents:v17];

    v19 = [v11 components:16 fromDate:v16 toDate:v18 options:0];
    v12 = [v19 day];

    if ((a5 & 1) == 0)
    {
      v12 += [v18 isEqualToDate:v10] ^ 1;
    }
  }

  return v12;
}

@end