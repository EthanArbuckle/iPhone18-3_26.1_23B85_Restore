@interface WDDateRange
+ (id)dateRangeWithStartDate:(id)date endDate:(id)endDate;
+ (id)dateRangeWithTimePeriod:(int64_t)period anchorDate:(id)date;
- (BOOL)dateInRange:(id)range;
- (WDDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (WDDateRange)initWithTimePeriod:(int64_t)period anchorDate:(id)date;
- (id)_getEndDateFromStartDate:(id)date timePeriod:(int64_t)period;
- (id)_getStartDateFromAnchorDate:(id)date timePeriod:(int64_t)period;
- (id)description;
@end

@implementation WDDateRange

+ (id)dateRangeWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [[self alloc] initWithStartDate:dateCopy endDate:endDateCopy];

  return v8;
}

+ (id)dateRangeWithTimePeriod:(int64_t)period anchorDate:(id)date
{
  dateCopy = date;
  v7 = [[self alloc] initWithTimePeriod:period anchorDate:dateCopy];

  return v7;
}

- (WDDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v9 = [(WDDateRange *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v10;
}

- (WDDateRange)initWithTimePeriod:(int64_t)period anchorDate:(id)date
{
  dateCopy = date;
  v7 = [(WDDateRange *)self init];
  v8 = v7;
  if (v7)
  {
    v9 = [(WDDateRange *)v7 _getStartDateFromAnchorDate:dateCopy timePeriod:period];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [(WDDateRange *)v8 _getEndDateFromStartDate:v8->_startDate timePeriod:period];
    endDate = v8->_endDate;
    v8->_endDate = v11;
  }

  return v8;
}

- (BOOL)dateInRange:(id)range
{
  startDate = self->_startDate;
  rangeCopy = range;
  [(NSDate *)startDate timeIntervalSinceReferenceDate];
  v7 = v6;
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v9 = v8;
  [rangeCopy timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11 <= v9 && v7 <= v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSDate *)self->_startDate description];
  v5 = [(NSDate *)self->_endDate description];
  v6 = [v3 stringWithFormat:@"WDDateRange(%@ %@)", v4, v5];

  return v6;
}

- (id)_getStartDateFromAnchorDate:(id)date timePeriod:(int64_t)period
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:8716 fromDate:dateCopy];

  [v8 setHour:0];
  [v8 setMinute:0];
  [v8 setSecond:0];
  v9 = 0;
  if (period > 3)
  {
    if (period <= 5)
    {
      if (period == 4)
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        currentCalendar5 = v19;
        v20 = -5;
LABEL_22:
        [v19 setMonth:v20];
        currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
        date = [MEMORY[0x277CBEAA8] date];
        currentCalendar4 = currentCalendar2;
        v17 = currentCalendar5;
        v18 = date;
        goto LABEL_23;
      }

      v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      currentCalendar5 = v19;
    }

    else
    {
      switch(period)
      {
        case 6:
          v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          currentCalendar5 = v10;
          v12 = -1;
          break;
        case 7:
          v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          currentCalendar5 = v10;
          v12 = -4;
          break;
        case 8:
          v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          currentCalendar5 = v10;
          v12 = -9;
          break;
        default:
          goto LABEL_25;
      }

      [v10 setYear:v12];
      v19 = currentCalendar5;
    }

    v20 = -11;
    goto LABEL_22;
  }

  if (period > 1)
  {
    if (period != 2)
    {
      currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
      currentCalendar5 = [currentCalendar3 dateFromComponents:v8];

      currentCalendar2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [currentCalendar2 setMonth:-2];
      currentCalendar4 = [MEMORY[0x277CBEA80] currentCalendar];
      date = currentCalendar4;
      v17 = currentCalendar2;
      v18 = currentCalendar5;
LABEL_23:
      v9 = [currentCalendar4 dateByAddingComponents:v17 toDate:v18 options:0];

      goto LABEL_24;
    }

    [v8 setDay:1];
  }

  else if (period)
  {
    if (period != 1)
    {
      goto LABEL_25;
    }

    [v8 setWeekday:1];
  }

  currentCalendar5 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar5 dateFromComponents:v8];
LABEL_24:

LABEL_25:

  return v9;
}

- (id)_getEndDateFromStartDate:(id)date timePeriod:(int64_t)period
{
  v5 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v7 = objc_alloc_init(v5);
  v8 = v7;
  if (period > 3)
  {
    if (period > 5)
    {
      switch(period)
      {
        case 6:
          v9 = 2;
          break;
        case 7:
          v9 = 5;
          break;
        case 8:
          v9 = 10;
          break;
        default:
          goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (period != 4)
    {
      v9 = 1;
LABEL_21:
      [v7 setYear:v9];
      goto LABEL_22;
    }

    v10 = 6;
LABEL_19:
    [v7 setMonth:v10];
    goto LABEL_22;
  }

  if (period > 1)
  {
    if (period == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_19;
  }

  if (period)
  {
    if (period == 1)
    {
      [v7 setWeekOfYear:1];
    }
  }

  else
  {
    [v7 setDay:1];
  }

LABEL_22:
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [currentCalendar dateByAddingComponents:v8 toDate:dateCopy options:0];

  return v12;
}

@end