@interface HDMHDaySummaryBuilder
- (HDMHDaySummaryBuilder)initWithDayIndex:(int64_t)index gregorianCalendar:(id)calendar;
- (id)daySummary;
- (void)addStateOfMind:(id)mind;
@end

@implementation HDMHDaySummaryBuilder

- (HDMHDaySummaryBuilder)initWithDayIndex:(int64_t)index gregorianCalendar:(id)calendar
{
  calendarCopy = calendar;
  v14.receiver = self;
  v14.super_class = HDMHDaySummaryBuilder;
  v8 = [(HDMHDaySummaryBuilder *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_dayIndex = index;
    objc_storeStrong(&v8->_gregorianCalendar, calendar);
    array = [MEMORY[0x277CBEB18] array];
    momentaryStatesOfMind = v9->_momentaryStatesOfMind;
    v9->_momentaryStatesOfMind = array;

    lastDailyStateOfMind = v9->_lastDailyStateOfMind;
    v9->_lastDailyStateOfMind = 0;
  }

  return v9;
}

- (void)addStateOfMind:(id)mind
{
  mindCopy = mind;
  if ([mindCopy reflectiveInterval] == 2)
  {
    lastDailyStateOfMind = self->_lastDailyStateOfMind;
    p_lastDailyStateOfMind = &self->_lastDailyStateOfMind;
    if (!lastDailyStateOfMind || ([mindCopy startDate], v7 = objc_claimAutoreleasedReturnValue(), -[HKStateOfMind startDate](*p_lastDailyStateOfMind, "startDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "hk_isAfterOrEqualToDate:", v8), v8, v7, v9))
    {
      objc_storeStrong(p_lastDailyStateOfMind, mind);
    }
  }

  else
  {
    [(NSMutableArray *)self->_momentaryStatesOfMind addObject:mindCopy];
  }
}

- (id)daySummary
{
  v2 = [objc_alloc(MEMORY[0x277D28070]) initWithDayIndex:self->_dayIndex momentaryStatesOfMind:self->_momentaryStatesOfMind dailyStateOfMind:self->_lastDailyStateOfMind];

  return v2;
}

@end