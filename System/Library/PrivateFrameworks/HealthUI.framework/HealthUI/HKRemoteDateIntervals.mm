@interface HKRemoteDateIntervals
- (HKRemoteDateIntervals)initWithDisplayType:(id)type fromEndDate:(id)date;
- (HKRemoteDateIntervals)initWithQueryAlignment:(int64_t)alignment fromEndDate:(id)date;
- (id)_dateIntervalFromDate:(id)date forUnit:(unint64_t)unit withValue:(int64_t)value queryAlignment:(int64_t)alignment gregorianCalendar:(id)calendar;
- (id)dateIntervalForTimeScope:(int64_t)scope withGregorianCalendar:(id)calendar error:(id *)error;
@end

@implementation HKRemoteDateIntervals

- (HKRemoteDateIntervals)initWithDisplayType:(id)type fromEndDate:(id)date
{
  dateCopy = date;
  behavior = [type behavior];
  v8 = -[HKRemoteDateIntervals initWithQueryAlignment:fromEndDate:](self, "initWithQueryAlignment:fromEndDate:", [behavior preferredCalendarDayAlignment], dateCopy);

  return v8;
}

- (HKRemoteDateIntervals)initWithQueryAlignment:(int64_t)alignment fromEndDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HKRemoteDateIntervals;
  v8 = [(HKRemoteDateIntervals *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dateIntervals = v8->_dateIntervals;
    v8->_dateIntervals = v9;

    v8->_calendarDayAlignment = alignment;
    objc_storeStrong(&v8->_endDate, date);
  }

  return v8;
}

- (id)dateIntervalForTimeScope:(int64_t)scope withGregorianCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  dateIntervals = self->_dateIntervals;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v11 = [(NSMutableDictionary *)dateIntervals objectForKey:v10];

  if (v11)
  {
    v12 = v11;
    goto LABEL_26;
  }

  v12 = 0;
  if (scope <= 3)
  {
    if (scope <= 1)
    {
      if (scope)
      {
        if (scope != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        [(HKRemoteDateIntervals *)self _dateIntervalFromDate:self->_endDate forUnit:4 withValue:-10 queryAlignment:self->_calendarDayAlignment gregorianCalendar:calendarCopy];
      }

      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      selfCopy6 = self;
      v16 = 4;
      v17 = -5;
      goto LABEL_24;
    }

    if (scope != 2)
    {
      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      selfCopy6 = self;
      v16 = 0x2000;
      v17 = -26;
LABEL_24:
      v12 = [(HKRemoteDateIntervals *)selfCopy6 _dateIntervalFromDate:endDate forUnit:v16 withValue:v17 queryAlignment:calendarDayAlignment gregorianCalendar:calendarCopy];
      goto LABEL_25;
    }

    calendarDayAlignment = self->_calendarDayAlignment;
    endDate = self->_endDate;
    selfCopy6 = self;
    v16 = 4;
LABEL_23:
    v17 = -1;
    goto LABEL_24;
  }

  if (scope <= 5)
  {
    calendarDayAlignment = self->_calendarDayAlignment;
    endDate = self->_endDate;
    selfCopy6 = self;
    v16 = 16;
    if (scope == 4)
    {
      v17 = -31;
    }

    else
    {
      v17 = -7;
    }

    goto LABEL_24;
  }

  switch(scope)
  {
    case 6:
      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      selfCopy6 = self;
      v16 = 16;
      goto LABEL_23;
    case 7:
      calendarDayAlignment = self->_calendarDayAlignment;
      endDate = self->_endDate;
      selfCopy6 = self;
      v16 = 32;
      goto LABEL_23;
    case 8:
      [MEMORY[0x1E696ABC0] hk_assignError:error code:3 description:@"HKTimeScopeCount is not a valid time scope for a date interval."];
      v12 = 0;
      goto LABEL_26;
  }

LABEL_25:
  v18 = self->_dateIntervals;
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  [(NSMutableDictionary *)v18 setObject:v12 forKeyedSubscript:v19];

LABEL_26:

  return v12;
}

- (id)_dateIntervalFromDate:(id)date forUnit:(unint64_t)unit withValue:(int64_t)value queryAlignment:(int64_t)alignment gregorianCalendar:(id)calendar
{
  calendarCopy = calendar;
  v12 = [date hk_dateBeforeDateForCalendar:calendarCopy rangeUnit:unit];
  v13 = [calendarCopy dateByAddingUnit:unit value:1 toDate:v12 options:0];
  v14 = [calendarCopy dateByAddingUnit:unit value:value toDate:v13 options:0];
  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v14 endDate:v13];
  v16 = [v15 hk_dateIntervalShiftedToQueryAlignment:alignment calendar:calendarCopy];

  return v16;
}

@end