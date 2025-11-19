@interface CLSCurrentCalendar
+ (BOOL)closestWeekendLocalStartDate:(id *)a3 interval:(double *)a4 afterDate:(id)a5;
+ (BOOL)dateIntervalIntersectsWeekend:(id)a3;
+ (BOOL)isWeekendDate:(id)a3;
+ (BOOL)nextWeekendLocalStartDate:(id *)a3 interval:(double *)a4 options:(unint64_t)a5 afterDate:(id)a6;
+ (BOOL)rangeOfWeekendLocalStartDate:(id *)a3 interval:(double *)a4 containingDate:(id)a5;
+ (void)initialize;
+ (void)update;
@end

@implementation CLSCurrentCalendar

+ (BOOL)nextWeekendLocalStartDate:(id *)a3 interval:(double *)a4 options:(unint64_t)a5 afterDate:(id)a6
{
  v10 = a6;
  v11 = a1;
  objc_sync_enter(v11);
  v13.receiver = v11;
  v13.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  LOBYTE(a5) = objc_msgSendSuper2(&v13, sel_nextWeekendLocalStartDate_interval_options_afterDate_, a3, a4, a5, v10);
  objc_sync_exit(v11);

  return a5;
}

+ (BOOL)rangeOfWeekendLocalStartDate:(id *)a3 interval:(double *)a4 containingDate:(id)a5
{
  v8 = a5;
  v9 = a1;
  objc_sync_enter(v9);
  v11.receiver = v9;
  v11.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  LOBYTE(a4) = objc_msgSendSuper2(&v11, sel_rangeOfWeekendLocalStartDate_interval_containingDate_, a3, a4, v8);
  objc_sync_exit(v9);

  return a4;
}

+ (BOOL)closestWeekendLocalStartDate:(id *)a3 interval:(double *)a4 afterDate:(id)a5
{
  v8 = a5;
  v9 = a1;
  objc_sync_enter(v9);
  v11.receiver = v9;
  v11.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  LOBYTE(a4) = objc_msgSendSuper2(&v11, sel_closestWeekendLocalStartDate_interval_afterDate_, a3, a4, v8);
  objc_sync_exit(v9);

  return a4;
}

+ (BOOL)dateIntervalIntersectsWeekend:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v8.receiver = v5;
  v8.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  v6 = objc_msgSendSuper2(&v8, sel_dateIntervalIntersectsWeekend_, v4);
  objc_sync_exit(v5);

  return v6;
}

+ (BOOL)isWeekendDate:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v8.receiver = v5;
  v8.super_class = &OBJC_METACLASS___CLSCurrentCalendar;
  v6 = objc_msgSendSuper2(&v8, sel_isWeekendDate_, v4);
  objc_sync_exit(v5);

  return v6;
}

+ (void)update
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = sCLSDateHelperCurrentCalendar;
  sCLSDateHelperCurrentCalendar = v2;

  v4 = [obj timezone];
  [sCLSDateHelperCurrentCalendar setTimeZone:v4];

  objc_sync_exit(obj);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = sCLSDateHelperCurrentCalendar;
    sCLSDateHelperCurrentCalendar = v3;

    v5 = [a1 timezone];
    [sCLSDateHelperCurrentCalendar setTimeZone:v5];
  }
}

@end