@interface WDTimePeriod
+ (WDTimePeriod)timePeriodWithSample:(id)a3;
+ (WDTimePeriod)timePeriodWithStartDate:(id)a3 endDate:(id)a4;
+ (id)sleep_timePeriodForSample:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sleep_titleString;
@end

@implementation WDTimePeriod

- (id)sleep_titleString
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(WDTimePeriod *)self startDate];
  v5 = [(WDTimePeriod *)self endDate];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 compareDate:v4 toDate:v3 toUnitGranularity:4];

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = v7 | [v8 compareDate:v5 toDate:v3 toUnitGranularity:4];

  if (v9)
  {
    [MEMORY[0x277CCA978] hk_dayIntervalFormatter];
  }

  else
  {
    [MEMORY[0x277CCA978] hk_mediumMonthDayDateIntervalFormatter];
  }
  v10 = ;
  v11 = [v10 stringFromDate:v4 toDate:v5];

  return v11;
}

+ (id)sleep_timePeriodForSample:(id)a3
{
  v3 = [a3 startDate];
  v4 = HKSleepStartDateForDate();
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingUnit:16 value:1 toDate:v4 options:0];

  v7 = [WDTimePeriod timePeriodWithStartDate:v4 endDate:v6];

  return v7;
}

+ (WDTimePeriod)timePeriodWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WDTimePeriod);
  [(WDTimePeriod *)v7 setStartDate:v6];

  [(WDTimePeriod *)v7 setEndDate:v5];

  return v7;
}

+ (WDTimePeriod)timePeriodWithSample:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v4 endDate];

  v7 = [a1 timePeriodWithStartDate:v5 endDate:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ([(NSDate *)self->_startDate isEqual:v4->_startDate])
  {
    v5 = [(NSDate *)self->_endDate isEqual:v4->_endDate];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDTimePeriod allocWithZone:?]];
  objc_storeStrong(&v4->_startDate, self->_startDate);
  objc_storeStrong(&v4->_endDate, self->_endDate);
  return v4;
}

@end