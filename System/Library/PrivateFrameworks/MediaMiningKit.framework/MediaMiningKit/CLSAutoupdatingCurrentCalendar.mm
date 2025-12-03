@interface CLSAutoupdatingCurrentCalendar
+ (BOOL)closestWeekendLocalStartDate:(id *)date interval:(double *)interval afterDate:(id)afterDate;
+ (BOOL)dateIntervalIntersectsWeekend:(id)weekend;
+ (BOOL)isWeekendDate:(id)date;
+ (BOOL)nextWeekendLocalStartDate:(id *)date interval:(double *)interval options:(unint64_t)options afterDate:(id)afterDate;
+ (BOOL)rangeOfWeekendLocalStartDate:(id *)date interval:(double *)interval containingDate:(id)containingDate;
+ (void)initialize;
@end

@implementation CLSAutoupdatingCurrentCalendar

+ (BOOL)nextWeekendLocalStartDate:(id *)date interval:(double *)interval options:(unint64_t)options afterDate:(id)afterDate
{
  afterDateCopy = afterDate;
  calendar = [self calendar];
  v12 = [calendar nextWeekendStartDate:date interval:interval options:options afterDate:afterDateCopy];

  if (date)
  {
    *date = [*date dateByAddingTimeInterval:-21600.0];
  }

  if (interval)
  {
    *interval = *interval + 21600.0;
  }

  return v12;
}

+ (BOOL)rangeOfWeekendLocalStartDate:(id *)date interval:(double *)interval containingDate:(id)containingDate
{
  containingDateCopy = containingDate;
  calendar = [self calendar];
  v10 = [calendar rangeOfWeekendStartDate:date interval:interval containingDate:containingDateCopy];

  *date = [*date dateByAddingTimeInterval:-21600.0];
  *interval = *interval + 21600.0;
  return v10;
}

+ (BOOL)closestWeekendLocalStartDate:(id *)date interval:(double *)interval afterDate:(id)afterDate
{
  afterDateCopy = afterDate;
  if ([self rangeOfWeekendLocalStartDate:date interval:interval containingDate:afterDateCopy])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0.0;
    v10 = [self nextWeekendLocalStartDate:&v24 interval:&v25 options:4 afterDate:afterDateCopy];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      v13 = [v11 dateByAddingTimeInterval:v25];
      [afterDateCopy timeIntervalSinceDate:v13];
      v15 = v14;
      v22 = 0;
      v23 = 0;
      v16 = &v23;
      v9 = [self nextWeekendLocalStartDate:&v22 interval:&v23 options:0 afterDate:afterDateCopy];
      if (v9)
      {
        v17 = v22;
        [v17 timeIntervalSinceDate:afterDateCopy];
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

        *date = v19;
        v20 = *v16;

        *interval = v20;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

+ (BOOL)dateIntervalIntersectsWeekend:(id)weekend
{
  weekendCopy = weekend;
  v12 = 0;
  v13 = 0.0;
  startDate = [weekendCopy startDate];
  v6 = [self nextWeekendLocalStartDate:&v12 interval:&v13 options:0 afterDate:startDate];
  v7 = v12;

  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = [v8 initWithStartDate:v7 duration:v13];
    v10 = [weekendCopy intersectsDateInterval:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isWeekendDate:(id)date
{
  dateCopy = date;
  calendar = [self calendar];
  v6 = [calendar isDateInWeekend:dateCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v8 = [self nextWeekendLocalStartDate:&v13 interval:&v14 options:0 afterDate:dateCopy];
    v9 = v13;
    v10 = v9;
    v7 = 0;
    if (v8)
    {
      [v9 timeIntervalSinceDate:dateCopy];
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
  if (objc_opt_class() == self)
  {
    v2 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    v3 = sCLSDateHelperGMTTimeZone;
    sCLSDateHelperGMTTimeZone = v2;

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v5 = sCLSDateHelperAutoupdatingCurrentCalendar;
    sCLSDateHelperAutoupdatingCurrentCalendar = autoupdatingCurrentCalendar;

    v6 = sCLSDateHelperGMTTimeZone;
    v7 = sCLSDateHelperAutoupdatingCurrentCalendar;

    [v7 setTimeZone:v6];
  }
}

@end