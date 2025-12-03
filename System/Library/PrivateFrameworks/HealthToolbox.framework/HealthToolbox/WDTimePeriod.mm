@interface WDTimePeriod
+ (WDTimePeriod)timePeriodWithSample:(id)sample;
+ (WDTimePeriod)timePeriodWithStartDate:(id)date endDate:(id)endDate;
+ (id)sleep_timePeriodForSample:(id)sample;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sleep_titleString;
@end

@implementation WDTimePeriod

- (id)sleep_titleString
{
  date = [MEMORY[0x277CBEAA8] date];
  startDate = [(WDTimePeriod *)self startDate];
  endDate = [(WDTimePeriod *)self endDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar compareDate:startDate toDate:date toUnitGranularity:4];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = v7 | [currentCalendar2 compareDate:endDate toDate:date toUnitGranularity:4];

  if (v9)
  {
    [MEMORY[0x277CCA978] hk_dayIntervalFormatter];
  }

  else
  {
    [MEMORY[0x277CCA978] hk_mediumMonthDayDateIntervalFormatter];
  }
  v10 = ;
  v11 = [v10 stringFromDate:startDate toDate:endDate];

  return v11;
}

+ (id)sleep_timePeriodForSample:(id)sample
{
  startDate = [sample startDate];
  v4 = HKSleepStartDateForDate();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v4 options:0];

  v7 = [WDTimePeriod timePeriodWithStartDate:v4 endDate:v6];

  return v7;
}

+ (WDTimePeriod)timePeriodWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = objc_alloc_init(WDTimePeriod);
  [(WDTimePeriod *)v7 setStartDate:dateCopy];

  [(WDTimePeriod *)v7 setEndDate:endDateCopy];

  return v7;
}

+ (WDTimePeriod)timePeriodWithSample:(id)sample
{
  sampleCopy = sample;
  startDate = [sampleCopy startDate];
  endDate = [sampleCopy endDate];

  v7 = [self timePeriodWithStartDate:startDate endDate:endDate];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ([(NSDate *)self->_startDate isEqual:equalCopy->_startDate])
  {
    v5 = [(NSDate *)self->_endDate isEqual:equalCopy->_endDate];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDTimePeriod allocWithZone:?]];
  objc_storeStrong(&v4->_startDate, self->_startDate);
  objc_storeStrong(&v4->_endDate, self->_endDate);
  return v4;
}

@end