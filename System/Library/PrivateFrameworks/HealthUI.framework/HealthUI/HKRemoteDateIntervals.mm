@interface HKRemoteDateIntervals
- (HKRemoteDateIntervals)initWithDisplayType:(id)a3 fromEndDate:(id)a4;
- (HKRemoteDateIntervals)initWithQueryAlignment:(int64_t)a3 fromEndDate:(id)a4;
- (id)_dateIntervalFromDate:(id)a3 forUnit:(unint64_t)a4 withValue:(int64_t)a5 queryAlignment:(int64_t)a6 gregorianCalendar:(id)a7;
- (id)dateIntervalForTimeScope:(int64_t)a3 withGregorianCalendar:(id)a4 error:(id *)a5;
@end

@implementation HKRemoteDateIntervals

- (HKRemoteDateIntervals)initWithDisplayType:(id)a3 fromEndDate:(id)a4
{
  v6 = a4;
  v7 = [a3 behavior];
  v8 = -[HKRemoteDateIntervals initWithQueryAlignment:fromEndDate:](self, "initWithQueryAlignment:fromEndDate:", [v7 preferredCalendarDayAlignment], v6);

  return v8;
}

- (HKRemoteDateIntervals)initWithQueryAlignment:(int64_t)a3 fromEndDate:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKRemoteDateIntervals;
  v8 = [(HKRemoteDateIntervals *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dateIntervals = v8->_dateIntervals;
    v8->_dateIntervals = v9;

    v8->_calendarDayAlignment = a3;
    objc_storeStrong(&v8->_endDate, a4);
  }

  return v8;
}

- (id)dateIntervalForTimeScope:(int64_t)a3 withGregorianCalendar:(id)a4 error:(id *)a5
{
  v8 = a4;
  dateIntervals = self->_dateIntervals;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11 = [(NSMutableDictionary *)dateIntervals objectForKey:v10];

  if (v11)
  {
    v12 = v11;
    goto LABEL_26;
  }

  v12 = 0;
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        [(HKRemoteDateIntervals *)self _dateIntervalFromDate:self->_endDate forUnit:4 withValue:-10 queryAlignment:self->_calendarDayAlignment gregorianCalendar:v8];
      }

      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      v15 = self;
      v16 = 4;
      v17 = -5;
      goto LABEL_24;
    }

    if (a3 != 2)
    {
      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      v15 = self;
      v16 = 0x2000;
      v17 = -26;
LABEL_24:
      v12 = [(HKRemoteDateIntervals *)v15 _dateIntervalFromDate:endDate forUnit:v16 withValue:v17 queryAlignment:calendarDayAlignment gregorianCalendar:v8];
      goto LABEL_25;
    }

    calendarDayAlignment = self->_calendarDayAlignment;
    endDate = self->_endDate;
    v15 = self;
    v16 = 4;
LABEL_23:
    v17 = -1;
    goto LABEL_24;
  }

  if (a3 <= 5)
  {
    calendarDayAlignment = self->_calendarDayAlignment;
    endDate = self->_endDate;
    v15 = self;
    v16 = 16;
    if (a3 == 4)
    {
      v17 = -31;
    }

    else
    {
      v17 = -7;
    }

    goto LABEL_24;
  }

  switch(a3)
  {
    case 6:
      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      v15 = self;
      v16 = 16;
      goto LABEL_23;
    case 7:
      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      v15 = self;
      v16 = 32;
      goto LABEL_23;
    case 8:
      [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 description:@"HKTimeScopeCount is not a valid time scope for a date interval."];
      v12 = 0;
      goto LABEL_26;
  }

LABEL_25:
  v18 = self->_dateIntervals;
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)v18 setObject:v12 forKeyedSubscript:v19];

LABEL_26:

  return v12;
}

- (id)_dateIntervalFromDate:(id)a3 forUnit:(unint64_t)a4 withValue:(int64_t)a5 queryAlignment:(int64_t)a6 gregorianCalendar:(id)a7
{
  v11 = a7;
  v12 = [a3 hk_dateBeforeDateForCalendar:v11 rangeUnit:a4];
  v13 = [v11 dateByAddingUnit:a4 value:1 toDate:v12 options:0];
  v14 = [v11 dateByAddingUnit:a4 value:a5 toDate:v13 options:0];
  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v14 endDate:v13];
  v16 = [v15 hk_dateIntervalShiftedToQueryAlignment:a6 calendar:v11];

  return v16;
}

@end