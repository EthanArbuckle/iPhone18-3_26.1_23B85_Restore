@interface NSDateInterval(HKChartQueryCalendarDayAlignment)
- (id)hk_dateIntervalShiftedToQueryAlignment:()HKChartQueryCalendarDayAlignment calendar:;
- (id)hk_dateIntervalUnshiftedFromQueryAlignment:()HKChartQueryCalendarDayAlignment calendar:;
@end

@implementation NSDateInterval(HKChartQueryCalendarDayAlignment)

- (id)hk_dateIntervalShiftedToQueryAlignment:()HKChartQueryCalendarDayAlignment calendar:
{
  if (a3 == 1)
  {
    v5 = a4;
    startDate = [self startDate];
    v7 = [startDate hk_sleepDayStartWithCalendar:v5];

    endDate = [self endDate];
    v9 = [endDate hk_sleepDayStartWithCalendar:v5];

    selfCopy = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v9];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)hk_dateIntervalUnshiftedFromQueryAlignment:()HKChartQueryCalendarDayAlignment calendar:
{
  if (a3 == 1)
  {
    v5 = a4;
    startDate = [self startDate];
    v7 = [v5 dateByAddingUnit:16 value:1 toDate:startDate options:0];
    v8 = [v5 startOfDayForDate:v7];

    endDate = [self endDate];
    v10 = [v5 dateByAddingUnit:16 value:1 toDate:endDate options:0];
    v11 = [v5 startOfDayForDate:v10];

    selfCopy = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v11];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end