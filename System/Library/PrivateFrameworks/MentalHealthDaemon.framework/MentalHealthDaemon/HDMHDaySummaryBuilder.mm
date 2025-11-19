@interface HDMHDaySummaryBuilder
- (HDMHDaySummaryBuilder)initWithDayIndex:(int64_t)a3 gregorianCalendar:(id)a4;
- (id)daySummary;
- (void)addStateOfMind:(id)a3;
@end

@implementation HDMHDaySummaryBuilder

- (HDMHDaySummaryBuilder)initWithDayIndex:(int64_t)a3 gregorianCalendar:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDMHDaySummaryBuilder;
  v8 = [(HDMHDaySummaryBuilder *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_dayIndex = a3;
    objc_storeStrong(&v8->_gregorianCalendar, a4);
    v10 = [MEMORY[0x277CBEB18] array];
    momentaryStatesOfMind = v9->_momentaryStatesOfMind;
    v9->_momentaryStatesOfMind = v10;

    lastDailyStateOfMind = v9->_lastDailyStateOfMind;
    v9->_lastDailyStateOfMind = 0;
  }

  return v9;
}

- (void)addStateOfMind:(id)a3
{
  v10 = a3;
  if ([v10 reflectiveInterval] == 2)
  {
    lastDailyStateOfMind = self->_lastDailyStateOfMind;
    p_lastDailyStateOfMind = &self->_lastDailyStateOfMind;
    if (!lastDailyStateOfMind || ([v10 startDate], v7 = objc_claimAutoreleasedReturnValue(), -[HKStateOfMind startDate](*p_lastDailyStateOfMind, "startDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "hk_isAfterOrEqualToDate:", v8), v8, v7, v9))
    {
      objc_storeStrong(p_lastDailyStateOfMind, a3);
    }
  }

  else
  {
    [(NSMutableArray *)self->_momentaryStatesOfMind addObject:v10];
  }
}

- (id)daySummary
{
  v2 = [objc_alloc(MEMORY[0x277D28070]) initWithDayIndex:self->_dayIndex momentaryStatesOfMind:self->_momentaryStatesOfMind dailyStateOfMind:self->_lastDailyStateOfMind];

  return v2;
}

@end