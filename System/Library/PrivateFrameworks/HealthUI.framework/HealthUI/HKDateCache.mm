@interface HKDateCache
- (BOOL)isDateInThisCalendarMonth:(id)month;
- (BOOL)isDateInThisCalendarYear:(id)year;
- (BOOL)isDateInToday:(id)today;
- (BOOL)isDateInTomorrow:(id)tomorrow;
- (BOOL)isDateInYesterday:(id)yesterday;
- (BOOL)isDateWithinLastRollingMonth:(id)month;
- (BOOL)isDateWithinLastRollingYear:(id)year;
- (BOOL)isDayOfWeekNumberOnWeekend:(id)weekend;
- (HKDateCache)init;
- (HKDateCache)initWithCalendar:(id)calendar;
- (NSDate)endOfDayMidnight;
- (NSDate)endOfRollingMonthMidnight;
- (NSDate)endOfRollingWeekMidnight;
- (NSDate)endOfRollingYearMidnight;
- (NSDate)endOfTomorrowMidnight;
- (NSDate)oneMinuteBeforeEndOfDayMidnight;
- (NSDate)oneSecondBeforeEndOfDayMidnight;
- (NSDate)startOfDayMidnight;
- (NSDate)startOfRollingMonthMidnight;
- (NSDate)startOfRollingWeekMidnight;
- (NSDate)startOfRollingYearMidnight;
- (NSDate)startOfTomorrowMidnight;
- (NSDate)startOfYesterdayMidnight;
- (id)_currentDate;
- (id)endOfRollingDay:(id)day;
- (id)endOfRollingMonth:(id)month;
- (id)endOfRollingWeek:(id)week;
- (id)endOfRollingYear:(id)year;
- (id)startOfRollingDay:(id)day;
- (id)startOfRollingMonth:(id)month;
- (id)startOfRollingWeek:(id)week;
- (id)startOfRollingYear:(id)year;
- (id)weekendDays;
- (void)_flushCacheAndNotifyObservers:(id)observers;
- (void)_notifyObserversDidUpdateOnNotification:(id)notification;
- (void)_setCurrentDate:(id)date;
- (void)dealloc;
- (void)flushCache;
@end

@implementation HKDateCache

- (NSDate)startOfDayMidnight
{
  startOfDayMidnight = self->_startOfDayMidnight;
  if (!startOfDayMidnight)
  {
    calendar = self->_calendar;
    _currentDate = [(HKDateCache *)self _currentDate];
    v6 = [(NSCalendar *)calendar startOfDayForDate:_currentDate];
    v7 = self->_startOfDayMidnight;
    self->_startOfDayMidnight = v6;

    startOfDayMidnight = self->_startOfDayMidnight;
  }

  return startOfDayMidnight;
}

- (id)_currentDate
{
  currentDate = self->_currentDate;
  if (currentDate)
  {
    date = currentDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  return date;
}

- (NSDate)startOfTomorrowMidnight
{
  startOfTomorrowMidnight = self->_startOfTomorrowMidnight;
  if (!startOfTomorrowMidnight)
  {
    calendar = self->_calendar;
    _currentDate = [(HKDateCache *)self _currentDate];
    v6 = [(NSCalendar *)calendar dateByAddingUnit:16 value:1 toDate:_currentDate options:0];

    v7 = [(NSCalendar *)self->_calendar startOfDayForDate:v6];
    v8 = self->_startOfTomorrowMidnight;
    self->_startOfTomorrowMidnight = v7;

    startOfTomorrowMidnight = self->_startOfTomorrowMidnight;
  }

  return startOfTomorrowMidnight;
}

- (HKDateCache)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v13.receiver = self;
  v13.super_class = HKDateCache;
  v6 = [(HKDateCache *)&v13 init];
  if (v6)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    objc_storeStrong(&v6->_calendar, calendar);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__flushCacheAndNotifyObservers_ name:*MEMORY[0x1E69DDB88] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__flushCacheAndNotifyObservers_ name:*MEMORY[0x1E695D8F0] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__flushCacheAndNotifyObservers_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v6;
}

- (HKDateCache)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = HKDateCache;
  [(HKDateCache *)&v4 dealloc];
}

- (void)_setCurrentDate:(id)date
{
  objc_storeStrong(&self->_currentDate, date);

  [(HKDateCache *)self _flushCacheAndNotifyObservers:0];
}

- (NSDate)startOfYesterdayMidnight
{
  startOfYesterdayMidnight = self->_startOfYesterdayMidnight;
  if (!startOfYesterdayMidnight)
  {
    calendar = self->_calendar;
    _currentDate = [(HKDateCache *)self _currentDate];
    v6 = [(NSCalendar *)calendar dateByAddingUnit:16 value:-1 toDate:_currentDate options:0];

    v7 = [(NSCalendar *)self->_calendar startOfDayForDate:v6];
    v8 = self->_startOfYesterdayMidnight;
    self->_startOfYesterdayMidnight = v7;

    startOfYesterdayMidnight = self->_startOfYesterdayMidnight;
  }

  return startOfYesterdayMidnight;
}

- (NSDate)endOfDayMidnight
{
  endOfDayMidnight = self->_endOfDayMidnight;
  if (!endOfDayMidnight)
  {
    calendar = self->_calendar;
    startOfDayMidnight = [(HKDateCache *)self startOfDayMidnight];
    v6 = [(NSCalendar *)calendar dateByAddingUnit:16 value:1 toDate:startOfDayMidnight options:0];
    v7 = self->_endOfDayMidnight;
    self->_endOfDayMidnight = v6;

    endOfDayMidnight = self->_endOfDayMidnight;
  }

  return endOfDayMidnight;
}

- (NSDate)oneMinuteBeforeEndOfDayMidnight
{
  oneMinuteBeforeEndOfDayMidnight = self->_oneMinuteBeforeEndOfDayMidnight;
  if (!oneMinuteBeforeEndOfDayMidnight)
  {
    calendar = self->_calendar;
    endOfDayMidnight = [(HKDateCache *)self endOfDayMidnight];
    v6 = [(NSCalendar *)calendar dateByAddingUnit:64 value:-1 toDate:endOfDayMidnight options:0];
    v7 = self->_oneMinuteBeforeEndOfDayMidnight;
    self->_oneMinuteBeforeEndOfDayMidnight = v6;

    oneMinuteBeforeEndOfDayMidnight = self->_oneMinuteBeforeEndOfDayMidnight;
  }

  return oneMinuteBeforeEndOfDayMidnight;
}

- (NSDate)oneSecondBeforeEndOfDayMidnight
{
  oneSecondBeforeEndOfDayMidnight = self->_oneSecondBeforeEndOfDayMidnight;
  if (!oneSecondBeforeEndOfDayMidnight)
  {
    calendar = self->_calendar;
    endOfDayMidnight = [(HKDateCache *)self endOfDayMidnight];
    v6 = [(NSCalendar *)calendar dateByAddingUnit:128 value:-1 toDate:endOfDayMidnight options:0];
    v7 = self->_oneSecondBeforeEndOfDayMidnight;
    self->_oneSecondBeforeEndOfDayMidnight = v6;

    oneSecondBeforeEndOfDayMidnight = self->_oneSecondBeforeEndOfDayMidnight;
  }

  return oneSecondBeforeEndOfDayMidnight;
}

- (NSDate)endOfTomorrowMidnight
{
  endOfTomorrowMidnight = self->_endOfTomorrowMidnight;
  if (!endOfTomorrowMidnight)
  {
    calendar = self->_calendar;
    startOfTomorrowMidnight = [(HKDateCache *)self startOfTomorrowMidnight];
    v6 = [(NSCalendar *)calendar dateByAddingUnit:16 value:1 toDate:startOfTomorrowMidnight options:0];
    v7 = self->_endOfTomorrowMidnight;
    self->_endOfTomorrowMidnight = v6;

    endOfTomorrowMidnight = self->_endOfTomorrowMidnight;
  }

  return endOfTomorrowMidnight;
}

- (NSDate)startOfRollingWeekMidnight
{
  startOfRollingWeekMidnight = self->_startOfRollingWeekMidnight;
  if (!startOfRollingWeekMidnight)
  {
    _currentDate = [(HKDateCache *)self _currentDate];
    v5 = HKCalendarDateTransformNone();
    v6 = HKStartOfRollingWeekForDate(_currentDate, v5);
    v7 = self->_startOfRollingWeekMidnight;
    self->_startOfRollingWeekMidnight = v6;

    startOfRollingWeekMidnight = self->_startOfRollingWeekMidnight;
  }

  return startOfRollingWeekMidnight;
}

- (NSDate)endOfRollingWeekMidnight
{
  endOfRollingWeekMidnight = self->_endOfRollingWeekMidnight;
  if (!endOfRollingWeekMidnight)
  {
    startOfRollingWeekMidnight = [(HKDateCache *)self startOfRollingWeekMidnight];
    v5 = HKEndOfRollingWeekWithStart(startOfRollingWeekMidnight);
    v6 = self->_endOfRollingWeekMidnight;
    self->_endOfRollingWeekMidnight = v5;

    endOfRollingWeekMidnight = self->_endOfRollingWeekMidnight;
  }

  return endOfRollingWeekMidnight;
}

- (NSDate)startOfRollingMonthMidnight
{
  startOfRollingMonthMidnight = self->_startOfRollingMonthMidnight;
  if (!startOfRollingMonthMidnight)
  {
    _currentDate = [(HKDateCache *)self _currentDate];
    v5 = HKCalendarDateTransformNone();
    v6 = HKStartOfRollingMonthForDate(_currentDate, v5);
    v7 = self->_startOfRollingMonthMidnight;
    self->_startOfRollingMonthMidnight = v6;

    startOfRollingMonthMidnight = self->_startOfRollingMonthMidnight;
  }

  return startOfRollingMonthMidnight;
}

- (NSDate)endOfRollingMonthMidnight
{
  endOfRollingMonthMidnight = self->_endOfRollingMonthMidnight;
  if (!endOfRollingMonthMidnight)
  {
    startOfRollingMonthMidnight = [(HKDateCache *)self startOfRollingMonthMidnight];
    v5 = HKEndOfRollingMonthWithStart(startOfRollingMonthMidnight);
    v6 = self->_endOfRollingMonthMidnight;
    self->_endOfRollingMonthMidnight = v5;

    endOfRollingMonthMidnight = self->_endOfRollingMonthMidnight;
  }

  return endOfRollingMonthMidnight;
}

- (NSDate)startOfRollingYearMidnight
{
  startOfRollingYear = self->_startOfRollingYear;
  if (!startOfRollingYear)
  {
    _currentDate = [(HKDateCache *)self _currentDate];
    v5 = HKCalendarDateTransformNone();
    v6 = HKStartOfRollingYearForDate(_currentDate, v5);
    v7 = self->_startOfRollingYear;
    self->_startOfRollingYear = v6;

    startOfRollingYear = self->_startOfRollingYear;
  }

  return startOfRollingYear;
}

- (NSDate)endOfRollingYearMidnight
{
  endOfRollingYear = self->_endOfRollingYear;
  if (!endOfRollingYear)
  {
    startOfRollingYearMidnight = [(HKDateCache *)self startOfRollingYearMidnight];
    v5 = HKEndOfRollingYearWithStart(startOfRollingYearMidnight);
    v6 = self->_endOfRollingYear;
    self->_endOfRollingYear = v5;

    endOfRollingYear = self->_endOfRollingYear;
  }

  return endOfRollingYear;
}

- (id)startOfRollingDay:(id)day
{
  calendar = self->_calendar;
  dayCopy = day;
  startOfDayMidnight = [(HKDateCache *)self startOfDayMidnight];
  v8 = (*(day + 2))(dayCopy, calendar, startOfDayMidnight);

  return v8;
}

- (id)endOfRollingDay:(id)day
{
  calendar = self->_calendar;
  dayCopy = day;
  endOfDayMidnight = [(HKDateCache *)self endOfDayMidnight];
  v8 = (*(day + 2))(dayCopy, calendar, endOfDayMidnight);

  return v8;
}

- (id)startOfRollingWeek:(id)week
{
  calendar = self->_calendar;
  weekCopy = week;
  startOfRollingWeekMidnight = [(HKDateCache *)self startOfRollingWeekMidnight];
  v8 = (*(week + 2))(weekCopy, calendar, startOfRollingWeekMidnight);

  return v8;
}

- (id)endOfRollingWeek:(id)week
{
  calendar = self->_calendar;
  weekCopy = week;
  endOfRollingWeekMidnight = [(HKDateCache *)self endOfRollingWeekMidnight];
  v8 = (*(week + 2))(weekCopy, calendar, endOfRollingWeekMidnight);

  return v8;
}

- (id)startOfRollingMonth:(id)month
{
  calendar = self->_calendar;
  monthCopy = month;
  startOfRollingMonthMidnight = [(HKDateCache *)self startOfRollingMonthMidnight];
  v8 = (*(month + 2))(monthCopy, calendar, startOfRollingMonthMidnight);

  return v8;
}

- (id)endOfRollingMonth:(id)month
{
  calendar = self->_calendar;
  monthCopy = month;
  endOfRollingMonthMidnight = [(HKDateCache *)self endOfRollingMonthMidnight];
  v8 = (*(month + 2))(monthCopy, calendar, endOfRollingMonthMidnight);

  return v8;
}

- (id)startOfRollingYear:(id)year
{
  calendar = self->_calendar;
  yearCopy = year;
  startOfRollingYearMidnight = [(HKDateCache *)self startOfRollingYearMidnight];
  v8 = (*(year + 2))(yearCopy, calendar, startOfRollingYearMidnight);

  return v8;
}

- (id)endOfRollingYear:(id)year
{
  calendar = self->_calendar;
  yearCopy = year;
  endOfRollingYearMidnight = [(HKDateCache *)self endOfRollingYearMidnight];
  v8 = (*(year + 2))(yearCopy, calendar, endOfRollingYearMidnight);

  return v8;
}

- (void)_notifyObserversDidUpdateOnNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) dateCacheDidUpdate:self onNotification:{notificationCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)weekendDays
{
  weekendDays = self->_weekendDays;
  if (!weekendDays)
  {
    hk_weekendDays = [(NSCalendar *)self->_calendar hk_weekendDays];
    v5 = self->_weekendDays;
    self->_weekendDays = hk_weekendDays;

    weekendDays = self->_weekendDays;
  }

  return weekendDays;
}

- (BOOL)isDateInYesterday:(id)yesterday
{
  yesterdayCopy = yesterday;
  startOfYesterdayMidnight = [(HKDateCache *)self startOfYesterdayMidnight];
  if (HKUIObjectIsLargerOrEqual(yesterdayCopy, startOfYesterdayMidnight))
  {
    startOfDayMidnight = [(HKDateCache *)self startOfDayMidnight];
    IsSmaller = HKUIObjectIsSmaller(yesterdayCopy, startOfDayMidnight);
  }

  else
  {
    IsSmaller = 0;
  }

  return IsSmaller;
}

- (BOOL)isDateInToday:(id)today
{
  todayCopy = today;
  startOfDayMidnight = [(HKDateCache *)self startOfDayMidnight];
  if (HKUIObjectIsLargerOrEqual(todayCopy, startOfDayMidnight))
  {
    startOfTomorrowMidnight = [(HKDateCache *)self startOfTomorrowMidnight];
    IsSmaller = HKUIObjectIsSmaller(todayCopy, startOfTomorrowMidnight);
  }

  else
  {
    IsSmaller = 0;
  }

  return IsSmaller;
}

- (BOOL)isDateInTomorrow:(id)tomorrow
{
  tomorrowCopy = tomorrow;
  startOfTomorrowMidnight = [(HKDateCache *)self startOfTomorrowMidnight];
  if (HKUIObjectIsLargerOrEqual(tomorrowCopy, startOfTomorrowMidnight))
  {
    endOfTomorrowMidnight = [(HKDateCache *)self endOfTomorrowMidnight];
    IsSmaller = HKUIObjectIsSmaller(tomorrowCopy, endOfTomorrowMidnight);
  }

  else
  {
    IsSmaller = 0;
  }

  return IsSmaller;
}

- (BOOL)isDateInThisCalendarMonth:(id)month
{
  calendar = self->_calendar;
  monthCopy = month;
  _currentDate = [(HKDateCache *)self _currentDate];
  v7 = [(NSCalendar *)calendar compareDate:monthCopy toDate:_currentDate toUnitGranularity:8];

  return v7 == 0;
}

- (BOOL)isDateInThisCalendarYear:(id)year
{
  calendar = self->_calendar;
  yearCopy = year;
  _currentDate = [(HKDateCache *)self _currentDate];
  v7 = [(NSCalendar *)calendar compareDate:yearCopy toDate:_currentDate toUnitGranularity:4];

  return v7 == 0;
}

- (BOOL)isDateWithinLastRollingMonth:(id)month
{
  monthCopy = month;
  startOfRollingMonthMidnight = [(HKDateCache *)self startOfRollingMonthMidnight];
  if (HKUIObjectIsLargerOrEqual(monthCopy, startOfRollingMonthMidnight))
  {
    endOfRollingMonthMidnight = [(HKDateCache *)self endOfRollingMonthMidnight];
    IsSmaller = HKUIObjectIsSmaller(monthCopy, endOfRollingMonthMidnight);
  }

  else
  {
    IsSmaller = 0;
  }

  return IsSmaller;
}

- (BOOL)isDateWithinLastRollingYear:(id)year
{
  yearCopy = year;
  startOfRollingYearMidnight = [(HKDateCache *)self startOfRollingYearMidnight];
  if (HKUIObjectIsLargerOrEqual(yearCopy, startOfRollingYearMidnight))
  {
    endOfRollingYearMidnight = [(HKDateCache *)self endOfRollingYearMidnight];
    IsSmaller = HKUIObjectIsSmaller(yearCopy, endOfRollingYearMidnight);
  }

  else
  {
    IsSmaller = 0;
  }

  return IsSmaller;
}

- (BOOL)isDayOfWeekNumberOnWeekend:(id)weekend
{
  weekendCopy = weekend;
  weekendDays = [(HKDateCache *)self weekendDays];
  v6 = [weekendDays containsObject:weekendCopy];

  return v6;
}

- (void)flushCache
{
  startOfYesterdayMidnight = self->_startOfYesterdayMidnight;
  self->_startOfYesterdayMidnight = 0;

  startOfDayMidnight = self->_startOfDayMidnight;
  self->_startOfDayMidnight = 0;

  endOfDayMidnight = self->_endOfDayMidnight;
  self->_endOfDayMidnight = 0;

  oneMinuteBeforeEndOfDayMidnight = self->_oneMinuteBeforeEndOfDayMidnight;
  self->_oneMinuteBeforeEndOfDayMidnight = 0;

  oneSecondBeforeEndOfDayMidnight = self->_oneSecondBeforeEndOfDayMidnight;
  self->_oneSecondBeforeEndOfDayMidnight = 0;

  startOfTomorrowMidnight = self->_startOfTomorrowMidnight;
  self->_startOfTomorrowMidnight = 0;

  endOfTomorrowMidnight = self->_endOfTomorrowMidnight;
  self->_endOfTomorrowMidnight = 0;

  startOfRollingWeekMidnight = self->_startOfRollingWeekMidnight;
  self->_startOfRollingWeekMidnight = 0;

  endOfRollingWeekMidnight = self->_endOfRollingWeekMidnight;
  self->_endOfRollingWeekMidnight = 0;

  startOfRollingMonthMidnight = self->_startOfRollingMonthMidnight;
  self->_startOfRollingMonthMidnight = 0;

  endOfRollingMonthMidnight = self->_endOfRollingMonthMidnight;
  self->_endOfRollingMonthMidnight = 0;

  startOfRollingYear = self->_startOfRollingYear;
  self->_startOfRollingYear = 0;

  endOfRollingYear = self->_endOfRollingYear;
  self->_endOfRollingYear = 0;

  weekendDays = self->_weekendDays;
  self->_weekendDays = 0;
}

- (void)_flushCacheAndNotifyObservers:(id)observers
{
  observersCopy = observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__HKDateCache__flushCacheAndNotifyObservers___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v6[4] = self;
  v7 = observersCopy;
  v5 = observersCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __45__HKDateCache__flushCacheAndNotifyObservers___block_invoke(uint64_t a1)
{
  ResetLocaleDependentFormatters();
  [*(a1 + 32) flushCache];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _notifyObserversDidUpdateOnNotification:v3];
}

@end