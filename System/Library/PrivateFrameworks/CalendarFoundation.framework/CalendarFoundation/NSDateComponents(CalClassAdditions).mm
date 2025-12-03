@interface NSDateComponents(CalClassAdditions)
+ (id)CalComponentForDays:()CalClassAdditions;
+ (id)CalComponentForHours:()CalClassAdditions;
+ (id)CalComponentForMinutes:()CalClassAdditions;
+ (id)CalComponentForMonths:()CalClassAdditions;
+ (id)CalComponentForWeeks:()CalClassAdditions;
+ (id)CalComponentForYears:()CalClassAdditions;
+ (id)CalComponentsWithYear:()CalClassAdditions month:day:hour:minute:second:;
- (BOOL)CalIsSameYearAsComponents:()CalClassAdditions;
- (id)CalDateComponents:()CalClassAdditions byAddingComponents:calendar:;
- (id)CalDateComponents:()CalClassAdditions byAddingDays:calendar:;
- (id)CalDateComponentsForDateOnly;
- (id)CalDateComponentsForEndOfDay;
- (id)CalRepresentedDate;
- (uint64_t)CalClearTimeComponents;
- (uint64_t)CalIsSameDayAsComponents:()CalClassAdditions;
- (uint64_t)CalIsSameMonthAsComponents:()CalClassAdditions;
- (unint64_t)CalGregorianDate;
@end

@implementation NSDateComponents(CalClassAdditions)

- (id)CalRepresentedDate
{
  calendar = [self calendar];
  if (!calendar)
  {
    calendar = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v3 = [calendar dateFromComponents:self];

  return v3;
}

+ (id)CalComponentForMinutes:()CalClassAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setMinute:a3];

  return v4;
}

+ (id)CalComponentForHours:()CalClassAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setHour:a3];

  return v4;
}

+ (id)CalComponentForDays:()CalClassAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setDay:a3];

  return v4;
}

+ (id)CalComponentForWeeks:()CalClassAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setWeekOfYear:a3];

  return v4;
}

+ (id)CalComponentForMonths:()CalClassAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setMonth:a3];

  return v4;
}

+ (id)CalComponentForYears:()CalClassAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:a3];

  return v4;
}

+ (id)CalComponentsWithYear:()CalClassAdditions month:day:hour:minute:second:
{
  v14 = objc_opt_new();
  [v14 setYear:a3];
  [v14 setMonth:a4];
  [v14 setDay:a5];
  [v14 setHour:a6];
  [v14 setMinute:a7];
  [v14 setSecond:a8];

  return v14;
}

- (uint64_t)CalIsSameDayAsComponents:()CalClassAdditions
{
  v4 = a3;
  v5 = [self day];
  if (v5 == [v4 day])
  {
    v6 = [self CalIsSameMonthAsComponents:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)CalIsSameMonthAsComponents:()CalClassAdditions
{
  v4 = a3;
  month = [self month];
  if (month == [v4 month])
  {
    v6 = [self CalIsSameYearAsComponents:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)CalIsSameYearAsComponents:()CalClassAdditions
{
  v4 = a3;
  year = [self year];
  if (year == [v4 year])
  {
    v6 = [self era];
    v7 = v6 == [v4 era];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)CalDateComponents:()CalClassAdditions byAddingComponents:calendar:
{
  v8 = a5;
  v9 = a4;
  timeZone = [v8 timeZone];
  v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v8 setTimeZone:v11];

  v12 = [v8 dateFromComponents:self];
  v13 = [v8 dateByAddingComponents:v9 toDate:v12 options:0];

  v14 = [v8 components:a3 fromDate:v13];
  [v8 setTimeZone:timeZone];

  return v14;
}

- (id)CalDateComponents:()CalClassAdditions byAddingDays:calendar:
{
  v8 = MEMORY[0x1E695DF10];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  [v10 setDay:a4];
  v11 = [self CalDateComponents:a3 byAddingComponents:v10 calendar:v9];

  return v11;
}

- (id)CalDateComponentsForDateOnly
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setEra:{objc_msgSend(self, "era")}];
  [v2 setYear:{objc_msgSend(self, "year")}];
  [v2 setMonth:{objc_msgSend(self, "month")}];
  [v2 setDay:{objc_msgSend(self, "day")}];

  return v2;
}

- (id)CalDateComponentsForEndOfDay
{
  v1 = [self copy];
  [v1 setHour:23];
  [v1 setMinute:59];
  [v1 setSecond:59];

  return v1;
}

- (unint64_t)CalGregorianDate
{
  year = [self year];
  month = [self month];
  v4 = [self day];
  if ([self hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self hour] << 48;
  }

  if ([self minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [self minute] << 56;
  }

  if ([self second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self second];
  }

  return year | (month << 32) & 0xFFFF00FFFFFFFFFFLL | (v4 << 40) | v5 | v6;
}

- (uint64_t)CalClearTimeComponents
{
  [self setHour:0x7FFFFFFFFFFFFFFFLL];
  [self setMinute:0x7FFFFFFFFFFFFFFFLL];

  return [self setSecond:0x7FFFFFFFFFFFFFFFLL];
}

@end