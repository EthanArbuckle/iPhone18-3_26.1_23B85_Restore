@interface WDDateRange
+ (id)dateRangeWithStartDate:(id)a3 endDate:(id)a4;
+ (id)dateRangeWithTimePeriod:(int64_t)a3 anchorDate:(id)a4;
- (BOOL)dateInRange:(id)a3;
- (WDDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
- (WDDateRange)initWithTimePeriod:(int64_t)a3 anchorDate:(id)a4;
- (id)_getEndDateFromStartDate:(id)a3 timePeriod:(int64_t)a4;
- (id)_getStartDateFromAnchorDate:(id)a3 timePeriod:(int64_t)a4;
- (id)description;
@end

@implementation WDDateRange

+ (id)dateRangeWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStartDate:v7 endDate:v6];

  return v8;
}

+ (id)dateRangeWithTimePeriod:(int64_t)a3 anchorDate:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithTimePeriod:a3 anchorDate:v6];

  return v7;
}

- (WDDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WDDateRange *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

- (WDDateRange)initWithTimePeriod:(int64_t)a3 anchorDate:(id)a4
{
  v6 = a4;
  v7 = [(WDDateRange *)self init];
  v8 = v7;
  if (v7)
  {
    v9 = [(WDDateRange *)v7 _getStartDateFromAnchorDate:v6 timePeriod:a3];
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = [(WDDateRange *)v8 _getEndDateFromStartDate:v8->_startDate timePeriod:a3];
    endDate = v8->_endDate;
    v8->_endDate = v11;
  }

  return v8;
}

- (BOOL)dateInRange:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [(NSDate *)startDate timeIntervalSinceReferenceDate];
  v7 = v6;
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v9 = v8;
  [v5 timeIntervalSinceReferenceDate];
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

- (id)_getStartDateFromAnchorDate:(id)a3 timePeriod:(int64_t)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 currentCalendar];
  v8 = [v7 components:8716 fromDate:v6];

  [v8 setHour:0];
  [v8 setMinute:0];
  [v8 setSecond:0];
  v9 = 0;
  if (a4 > 3)
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v11 = v19;
        v20 = -5;
LABEL_22:
        [v19 setMonth:v20];
        v14 = [MEMORY[0x277CBEA80] currentCalendar];
        v16 = [MEMORY[0x277CBEAA8] date];
        v15 = v14;
        v17 = v11;
        v18 = v16;
        goto LABEL_23;
      }

      v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v11 = v19;
    }

    else
    {
      switch(a4)
      {
        case 6:
          v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          v11 = v10;
          v12 = -1;
          break;
        case 7:
          v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          v11 = v10;
          v12 = -4;
          break;
        case 8:
          v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          v11 = v10;
          v12 = -9;
          break;
        default:
          goto LABEL_25;
      }

      [v10 setYear:v12];
      v19 = v11;
    }

    v20 = -11;
    goto LABEL_22;
  }

  if (a4 > 1)
  {
    if (a4 != 2)
    {
      v13 = [MEMORY[0x277CBEA80] currentCalendar];
      v11 = [v13 dateFromComponents:v8];

      v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v14 setMonth:-2];
      v15 = [MEMORY[0x277CBEA80] currentCalendar];
      v16 = v15;
      v17 = v14;
      v18 = v11;
LABEL_23:
      v9 = [v15 dateByAddingComponents:v17 toDate:v18 options:0];

      goto LABEL_24;
    }

    [v8 setDay:1];
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_25;
    }

    [v8 setWeekday:1];
  }

  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v11 dateFromComponents:v8];
LABEL_24:

LABEL_25:

  return v9;
}

- (id)_getEndDateFromStartDate:(id)a3 timePeriod:(int64_t)a4
{
  v5 = MEMORY[0x277CBEAB8];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = v7;
  if (a4 > 3)
  {
    if (a4 > 5)
    {
      switch(a4)
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

    if (a4 != 4)
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

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_19;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      [v7 setWeekOfYear:1];
    }
  }

  else
  {
    [v7 setDay:1];
  }

LABEL_22:
  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [v11 dateByAddingComponents:v8 toDate:v6 options:0];

  return v12;
}

@end