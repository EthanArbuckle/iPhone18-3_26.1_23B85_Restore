@interface CLSAutoupdatingCurrentCalendar
+ (BOOL)closestWeekendLocalStartDate:(id *)a3 interval:(double *)a4 afterDate:(id)a5;
+ (BOOL)dateIntervalIntersectsWeekend:(id)a3;
+ (BOOL)isWeekendDate:(id)a3;
+ (BOOL)nextWeekendLocalStartDate:(id *)a3 interval:(double *)a4 options:(unint64_t)a5 afterDate:(id)a6;
+ (BOOL)rangeOfWeekendLocalStartDate:(id *)a3 interval:(double *)a4 containingDate:(id)a5;
+ (void)initialize;
@end

@implementation CLSAutoupdatingCurrentCalendar

+ (BOOL)nextWeekendLocalStartDate:(id *)a3 interval:(double *)a4 options:(unint64_t)a5 afterDate:(id)a6
{
  v10 = a6;
  v11 = [a1 calendar];
  v12 = [v11 nextWeekendStartDate:a3 interval:a4 options:a5 afterDate:v10];

  if (a3)
  {
    *a3 = [*a3 dateByAddingTimeInterval:-21600.0];
  }

  if (a4)
  {
    *a4 = *a4 + 21600.0;
  }

  return v12;
}

+ (BOOL)rangeOfWeekendLocalStartDate:(id *)a3 interval:(double *)a4 containingDate:(id)a5
{
  v8 = a5;
  v9 = [a1 calendar];
  v10 = [v9 rangeOfWeekendStartDate:a3 interval:a4 containingDate:v8];

  *a3 = [*a3 dateByAddingTimeInterval:-21600.0];
  *a4 = *a4 + 21600.0;
  return v10;
}

+ (BOOL)closestWeekendLocalStartDate:(id *)a3 interval:(double *)a4 afterDate:(id)a5
{
  v8 = a5;
  if ([a1 rangeOfWeekendLocalStartDate:a3 interval:a4 containingDate:v8])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0.0;
    v10 = [a1 nextWeekendLocalStartDate:&v24 interval:&v25 options:4 afterDate:v8];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      v13 = [v11 dateByAddingTimeInterval:v25];
      [v8 timeIntervalSinceDate:v13];
      v15 = v14;
      v22 = 0;
      v23 = 0;
      v16 = &v23;
      v9 = [a1 nextWeekendLocalStartDate:&v22 interval:&v23 options:0 afterDate:v8];
      if (v9)
      {
        v17 = v22;
        [v17 timeIntervalSinceDate:v8];
        if (v15 >= v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = v12;
        }

        if (v15 < v18)
        {
          v16 = &v25;
        }

        *a3 = v19;
        v20 = *v16;

        *a4 = v20;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

+ (BOOL)dateIntervalIntersectsWeekend:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = 0.0;
  v5 = [v4 startDate];
  v6 = [a1 nextWeekendLocalStartDate:&v12 interval:&v13 options:0 afterDate:v5];
  v7 = v12;

  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = [v8 initWithStartDate:v7 duration:v13];
    v10 = [v4 intersectsDateInterval:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isWeekendDate:(id)a3
{
  v4 = a3;
  v5 = [a1 calendar];
  v6 = [v5 isDateInWeekend:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v8 = [a1 nextWeekendLocalStartDate:&v13 interval:&v14 options:0 afterDate:v4];
    v9 = v13;
    v10 = v9;
    v7 = 0;
    if (v8)
    {
      [v9 timeIntervalSinceDate:v4];
      if (v11 <= 0.0)
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    v3 = sCLSDateHelperGMTTimeZone;
    sCLSDateHelperGMTTimeZone = v2;

    v4 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v5 = sCLSDateHelperAutoupdatingCurrentCalendar;
    sCLSDateHelperAutoupdatingCurrentCalendar = v4;

    v6 = sCLSDateHelperGMTTimeZone;
    v7 = sCLSDateHelperAutoupdatingCurrentCalendar;

    [v7 setTimeZone:v6];
  }
}

@end