@interface NSDate(CLSNSDateExtensions)
+ (id)dateComponentsFromString:()CLSNSDateExtensions;
+ (id)dateFromString:()CLSNSDateExtensions;
- (id)nextWeekend;
- (id)previousWeekend;
@end

@implementation NSDate(CLSNSDateExtensions)

- (id)previousWeekend
{
  v2 = [CLSCalendar dayOfWeekFromDate:a1];

  return [CLSCalendar dateByAddingDays:v2 toDate:a1];
}

- (id)nextWeekend
{
  v2 = (7 - [CLSCalendar dayFromDate:a1]) % 7;

  return [CLSCalendar dateByAddingDays:v2 toDate:a1];
}

+ (id)dateComponentsFromString:()CLSNSDateExtensions
{
  v3 = a3;
  if (v3)
  {
    if (dateComponentsFromString__onceToken != -1)
    {
      dispatch_once(&dateComponentsFromString__onceToken, &__block_literal_global_19);
    }

    v4 = &dateComponentsFromString__formatter1;
    v5 = [dateComponentsFromString__formatter1 dateFromString:v3];
    if (v5 || (v4 = &dateComponentsFromString__formatter2, [dateComponentsFromString__formatter2 dateFromString:v3], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (v4 = &dateComponentsFromString__formatter3, objc_msgSend(dateComponentsFromString__formatter3, "dateFromString:", v3), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (v4 = &dateComponentsFromString__formatter4, objc_msgSend(dateComponentsFromString__formatter4, "dateFromString:", v3), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
    }

    else
    {
      v4 = &dateComponentsFromString__formatter5;
      v6 = [dateComponentsFromString__formatter5 dateFromString:v3];
      if (!v6)
      {
        v9 = 0;
        goto LABEL_10;
      }
    }

    v7 = dateComponentsFromString__calendar;
    v8 = [*v4 timeZone];
    v9 = [v7 componentsInTimeZone:v8 fromDate:v6];

LABEL_10:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)dateFromString:()CLSNSDateExtensions
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_14;
  }

  if (dateFromString__onceToken != -1)
  {
    dispatch_once(&dateFromString__onceToken, &__block_literal_global_1943);
  }

  v4 = [dateFromString__formatter1 dateFromString:v3];
  if (v4)
  {
    v5 = v4;
    goto LABEL_15;
  }

  v6 = [dateFromString__formatter2 dateFromString:v3];
  if (v6)
  {
    v7 = v6;
    v8 = [dateFromString__calendar components:252 fromDate:v6];
    v5 = [CLSCalendar dateFromComponents:v8 inTimeZone:0];

    if (v5)
    {
      goto LABEL_15;
    }
  }

  v9 = [dateFromString__formatter3 dateFromString:v3];
  if (v9)
  {
    v10 = v9;
    v11 = [dateFromString__calendar components:28 fromDate:v9];
    v5 = [CLSCalendar dateFromComponents:v11 inTimeZone:0];

    if (v5)
    {
      goto LABEL_15;
    }
  }

  v12 = [dateFromString__formatter4 dateFromString:v3];
  if (v12)
  {
    v13 = v12;
    v14 = dateFromString__calendar;
    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = [v14 components:28 fromDate:v15];

    v17 = [dateFromString__calendar components:224 fromDate:v13];
    [v16 setHour:{objc_msgSend(v17, "hour")}];
    [v16 setMinute:{objc_msgSend(v17, "minute")}];
    [v16 setSecond:{objc_msgSend(v17, "second")}];
    v5 = [CLSCalendar dateFromComponents:v16 inTimeZone:0];

    if (v5)
    {
      goto LABEL_15;
    }
  }

  v18 = [dateFromString__formatter5 dateFromString:v3];
  if (v18)
  {
    v19 = v18;
    v20 = dateFromString__calendar;
    v21 = [MEMORY[0x277CBEAA8] date];
    v22 = [v20 components:28 fromDate:v21];

    v23 = [dateFromString__calendar components:96 fromDate:v19];
    [v22 setHour:{objc_msgSend(v23, "hour")}];
    [v22 setMinute:{objc_msgSend(v23, "minute")}];
    v5 = [CLSCalendar dateFromComponents:v22 inTimeZone:0];
  }

  else
  {
LABEL_14:
    v5 = 0;
  }

LABEL_15:

  return v5;
}

@end