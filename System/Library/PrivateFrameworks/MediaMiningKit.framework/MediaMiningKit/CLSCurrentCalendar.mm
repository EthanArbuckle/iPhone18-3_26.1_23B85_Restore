@interface CLSCurrentCalendar
+ (BOOL)closestWeekendLocalStartDate:(id *)date interval:(double *)interval afterDate:(id)afterDate;
+ (BOOL)dateIntervalIntersectsWeekend:(id)weekend;
+ (BOOL)isWeekendDate:(id)date;
+ (BOOL)nextWeekendLocalStartDate:(id *)date interval:(double *)interval options:(unint64_t)options afterDate:(id)afterDate;
+ (BOOL)rangeOfWeekendLocalStartDate:(id *)date interval:(double *)interval containingDate:(id)containingDate;
+ (void)initialize;
+ (void)update;
@end

@implementation CLSCurrentCalendar

+ (BOOL)nextWeekendLocalStartDate:(id *)date interval:(double *)interval options:(unint64_t)options afterDate:(id)afterDate
{
  afterDateCopy = afterDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13.receiver = selfCopy;
  v13.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  LOBYTE(options) = objc_msgSendSuper2(&v13, sel_nextWeekendLocalStartDate_interval_options_afterDate_, date, interval, options, afterDateCopy);
  objc_sync_exit(selfCopy);

  return options;
}

+ (BOOL)rangeOfWeekendLocalStartDate:(id *)date interval:(double *)interval containingDate:(id)containingDate
{
  containingDateCopy = containingDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11.receiver = selfCopy;
  v11.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  LOBYTE(interval) = objc_msgSendSuper2(&v11, sel_rangeOfWeekendLocalStartDate_interval_containingDate_, date, interval, containingDateCopy);
  objc_sync_exit(selfCopy);

  return interval;
}

+ (BOOL)closestWeekendLocalStartDate:(id *)date interval:(double *)interval afterDate:(id)afterDate
{
  afterDateCopy = afterDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11.receiver = selfCopy;
  v11.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  LOBYTE(interval) = objc_msgSendSuper2(&v11, sel_closestWeekendLocalStartDate_interval_afterDate_, date, interval, afterDateCopy);
  objc_sync_exit(selfCopy);

  return interval;
}

+ (BOOL)dateIntervalIntersectsWeekend:(id)weekend
{
  weekendCopy = weekend;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  v6 = objc_msgSendSuper2(&v8, sel_dateIntervalIntersectsWeekend_, weekendCopy);
  objc_sync_exit(selfCopy);

  return v6;
}

+ (BOOL)isWeekendDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  v6 = objc_msgSendSuper2(&v8, sel_isWeekendDate_, dateCopy);
  objc_sync_exit(selfCopy);

  return v6;
}

+ (void)update
{
  obj = self;
  objc_sync_enter(obj);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = sCLSDateHelperCurrentCalendar;
  sCLSDateHelperCurrentCalendar = currentCalendar;

  timezone = [obj timezone];
  [sCLSDateHelperCurrentCalendar setTimeZone:timezone];

  objc_sync_exit(obj);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = sCLSDateHelperCurrentCalendar;
    sCLSDateHelperCurrentCalendar = currentCalendar;

    timezone = [self timezone];
    [sCLSDateHelperCurrentCalendar setTimeZone:timezone];
  }
}

@end