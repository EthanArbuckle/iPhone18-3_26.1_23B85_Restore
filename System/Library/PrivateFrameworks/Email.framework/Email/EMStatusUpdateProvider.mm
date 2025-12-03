@interface EMStatusUpdateProvider
- (id)_statusUpdatedAtTimeWithDate:(id)date;
- (id)_statusUpdatedMinutesAgoWithDate:(id)date now:(id)now;
- (id)_statusUpdatedOnDateWithDate:(id)date;
- (id)_statusUpdatedOnDayWithDate:(id)date;
- (id)statusUpdateStringWithDate:(id)date now:(id)now nextTransition:(id *)transition;
- (unint64_t)statusUpdateWithDate:(id)date now:(id)now nextTransition:(id *)transition;
@end

@implementation EMStatusUpdateProvider

- (id)statusUpdateStringWithDate:(id)date now:(id)now nextTransition:(id *)transition
{
  dateCopy = date;
  nowCopy = now;
  v10 = [(EMStatusUpdateProvider *)self statusUpdateWithDate:dateCopy now:nowCopy nextTransition:transition];
  v11 = 0;
  if (v10 <= 2)
  {
    if (!v10)
    {
      v11 = &stru_1F45FD218;
      goto LABEL_18;
    }

    if (v10 == 1)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [mainBundle localizedStringForKey:@"UPDATED_JUST_NOW" value:&stru_1F45FD218 table:@"Main"];
      goto LABEL_17;
    }

    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v14 = [(EMStatusUpdateProvider *)self _statusUpdatedMinutesAgoWithDate:dateCopy now:nowCopy];
LABEL_15:
    v11 = v14;
    goto LABEL_18;
  }

  if (v10 > 4)
  {
    if (v10 == 5)
    {
      v14 = [(EMStatusUpdateProvider *)self _statusUpdatedOnDayWithDate:dateCopy];
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_18;
      }

      v14 = [(EMStatusUpdateProvider *)self _statusUpdatedOnDateWithDate:dateCopy];
    }

    goto LABEL_15;
  }

  if (v10 == 3)
  {
    v14 = [(EMStatusUpdateProvider *)self _statusUpdatedAtTimeWithDate:dateCopy];
    goto LABEL_15;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [mainBundle localizedStringForKey:@"UPDATED_YESTERDAY" value:&stru_1F45FD218 table:@"Main"];
LABEL_17:
  v11 = v13;

LABEL_18:

  return v11;
}

- (unint64_t)statusUpdateWithDate:(id)date now:(id)now nextTransition:(id *)transition
{
  dateCopy = date;
  nowCopy = now;
  v9 = nowCopy;
  v10 = 0;
  if (dateCopy && nowCopy)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [currentCalendar components:30 fromDate:v9];
    v23 = v21 = transition;
    v13 = [currentCalendar dateFromComponents:v23];
    v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v14 setDay:-6];
    v22 = [currentCalendar dateByAddingComponents:v14 toDate:v13 options:0];
    if ([dateCopy compare:?] == -1)
    {
      v18 = 0;
      v10 = 6;
    }

    else
    {
      v20 = v12;
      v15 = [currentCalendar components:112 fromDate:dateCopy toDate:v9 options:0];
      if ([v15 day] <= 0 && objc_msgSend(v15, "hour") <= 0 && objc_msgSend(v15, "minute") < 6)
      {
        v18 = dateCopy;
        if ([v15 minute] < 2)
        {
          [v12 setMinute:2];
          v10 = 1;
        }

        else
        {
          [v12 setMinute:{objc_msgSend(v15, "minute") + 1}];
          v10 = 2;
        }
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v16 setDay:-1];
        v17 = [currentCalendar dateByAddingComponents:v16 toDate:v13 options:0];
        if ([dateCopy compare:v17] == -1)
        {
          v10 = 5;
        }

        else if ([dateCopy compare:v13] == -1)
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }

        v18 = v13;
        [v20 setDay:1];

        v12 = v20;
      }

      if (v21 && v18)
      {
        *v21 = [currentCalendar dateByAddingComponents:v12 toDate:v18 options:0];
      }
    }
  }

  return v10;
}

- (id)_statusUpdatedMinutesAgoWithDate:(id)date now:(id)now
{
  dateCopy = date;
  nowCopy = now;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar components:64 fromDate:dateCopy toDate:nowCopy options:0];

  v9 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [mainBundle localizedStringForKey:@"UPDATED_N_MINUTES_AGO_FORMAT%1$ld" value:&stru_1F45FD218 table:@"Main"];
  v12 = [v9 localizedStringWithFormat:v11, objc_msgSend(v8, "minute")];

  return v12;
}

- (id)_statusUpdatedAtTimeWithDate:(id)date
{
  dateCopy = date;
  if (!self->_timeFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    timeFormatter = self->_timeFormatter;
    self->_timeFormatter = v5;

    [(NSDateFormatter *)self->_timeFormatter setDateStyle:0];
    [(NSDateFormatter *)self->_timeFormatter setTimeStyle:1];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"UPDATED_AT_TIME_FORMAT" value:&stru_1F45FD218 table:@"Main"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:dateCopy];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

- (id)_statusUpdatedOnDayWithDate:(id)date
{
  dateCopy = date;
  if (!self->_weekdayFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    weekdayFormatter = self->_weekdayFormatter;
    self->_weekdayFormatter = v5;

    [(NSDateFormatter *)self->_weekdayFormatter setDateFormat:@"EEEE"];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"UPDATED_WEEKDAY_FORMAT" value:&stru_1F45FD218 table:@"Main"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSDateFormatter *)self->_weekdayFormatter stringFromDate:dateCopy];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

- (id)_statusUpdatedOnDateWithDate:(id)date
{
  dateCopy = date;
  if (!self->_dateFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v5;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"UPDATED_ON_DATE_FORMAT" value:&stru_1F45FD218 table:@"Main"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:dateCopy];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

@end