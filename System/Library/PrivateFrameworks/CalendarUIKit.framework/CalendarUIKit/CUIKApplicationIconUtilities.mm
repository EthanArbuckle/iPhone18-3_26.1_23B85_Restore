@interface CUIKApplicationIconUtilities
+ (BOOL)_isDate:(id)date withinNextWeekOfDate:(id)ofDate calendar:(id)calendar;
+ (BOOL)_isDate:(id)date withinPreviousWeekOfDate:(id)ofDate calendar:(id)calendar;
+ (BOOL)_isWithinNextWeek:(id)week calendar:(id)calendar;
+ (BOOL)_isWithinPreviousWeek:(id)week calendar:(id)calendar;
+ (id)dateFormatterWithCalendar:(id)calendar;
+ (int64_t)iconDateNameFormatTypeForDateBasedOnDistanceFromNow:(id)now calendar:(id)calendar;
@end

@implementation CUIKApplicationIconUtilities

+ (id)dateFormatterWithCalendar:(id)calendar
{
  v3 = MEMORY[0x1E696AB78];
  calendarCopy = calendar;
  v5 = objc_alloc_init(v3);
  [v5 setDateStyle:0];
  [v5 setTimeStyle:0];
  [v5 setCalendar:calendarCopy];
  locale = [calendarCopy locale];

  [v5 setLocale:locale];

  return v5;
}

+ (int64_t)iconDateNameFormatTypeForDateBasedOnDistanceFromNow:(id)now calendar:(id)calendar
{
  nowCopy = now;
  calendarCopy = calendar;
  v8 = ([calendarCopy isDateInToday:nowCopy] & 1) == 0 && (objc_msgSend(self, "_isWithinPreviousWeek:calendar:", nowCopy, calendarCopy) & 1) == 0 && !objc_msgSend(self, "_isWithinNextWeek:calendar:", nowCopy, calendarCopy);

  return v8;
}

+ (BOOL)_isWithinPreviousWeek:(id)week calendar:(id)calendar
{
  v6 = MEMORY[0x1E695DF00];
  calendarCopy = calendar;
  weekCopy = week;
  calSimulatedDateForNow = [v6 CalSimulatedDateForNow];
  LOBYTE(self) = [self _isDate:weekCopy withinPreviousWeekOfDate:calSimulatedDateForNow calendar:calendarCopy];

  return self;
}

+ (BOOL)_isDate:(id)date withinPreviousWeekOfDate:(id)ofDate calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v9 = [calendarCopy startOfDayForDate:ofDate];
  if ([dateCopy CalIsAfterOrSameAsDate:v9])
  {
    v10 = 0;
  }

  else
  {
    v11 = [calendarCopy dateByAddingUnit:16 value:-6 toDate:v9 options:0];
    v10 = [dateCopy CalIsAfterOrSameAsDate:v11];
  }

  return v10;
}

+ (BOOL)_isWithinNextWeek:(id)week calendar:(id)calendar
{
  v6 = MEMORY[0x1E695DF00];
  calendarCopy = calendar;
  weekCopy = week;
  calSimulatedDateForNow = [v6 CalSimulatedDateForNow];
  LOBYTE(self) = [self _isDate:weekCopy withinNextWeekOfDate:calSimulatedDateForNow calendar:calendarCopy];

  return self;
}

+ (BOOL)_isDate:(id)date withinNextWeekOfDate:(id)ofDate calendar:(id)calendar
{
  dateCopy = date;
  ofDateCopy = ofDate;
  calendarCopy = calendar;
  v10 = [calendarCopy dateByAddingUnit:16 value:1 toDate:ofDateCopy options:0];
  v11 = [calendarCopy startOfDayForDate:v10];
  if ([dateCopy CalIsBeforeDate:v11])
  {
    v12 = 0;
  }

  else
  {
    v13 = [calendarCopy dateByAddingUnit:16 value:7 toDate:ofDateCopy options:0];
    v14 = [calendarCopy startOfDayForDate:v13];
    v12 = [dateCopy CalIsBeforeDate:v14];
  }

  return v12;
}

@end