@interface EMStatusUpdateProvider
- (id)_statusUpdatedAtTimeWithDate:(id)a3;
- (id)_statusUpdatedMinutesAgoWithDate:(id)a3 now:(id)a4;
- (id)_statusUpdatedOnDateWithDate:(id)a3;
- (id)_statusUpdatedOnDayWithDate:(id)a3;
- (id)statusUpdateStringWithDate:(id)a3 now:(id)a4 nextTransition:(id *)a5;
- (unint64_t)statusUpdateWithDate:(id)a3 now:(id)a4 nextTransition:(id *)a5;
@end

@implementation EMStatusUpdateProvider

- (id)statusUpdateStringWithDate:(id)a3 now:(id)a4 nextTransition:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(EMStatusUpdateProvider *)self statusUpdateWithDate:v8 now:v9 nextTransition:a5];
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
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 localizedStringForKey:@"UPDATED_JUST_NOW" value:&stru_1F45FD218 table:@"Main"];
      goto LABEL_17;
    }

    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v14 = [(EMStatusUpdateProvider *)self _statusUpdatedMinutesAgoWithDate:v8 now:v9];
LABEL_15:
    v11 = v14;
    goto LABEL_18;
  }

  if (v10 > 4)
  {
    if (v10 == 5)
    {
      v14 = [(EMStatusUpdateProvider *)self _statusUpdatedOnDayWithDate:v8];
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_18;
      }

      v14 = [(EMStatusUpdateProvider *)self _statusUpdatedOnDateWithDate:v8];
    }

    goto LABEL_15;
  }

  if (v10 == 3)
  {
    v14 = [(EMStatusUpdateProvider *)self _statusUpdatedAtTimeWithDate:v8];
    goto LABEL_15;
  }

  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 localizedStringForKey:@"UPDATED_YESTERDAY" value:&stru_1F45FD218 table:@"Main"];
LABEL_17:
  v11 = v13;

LABEL_18:

  return v11;
}

- (unint64_t)statusUpdateWithDate:(id)a3 now:(id)a4 nextTransition:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v11 components:30 fromDate:v9];
    v23 = v21 = a5;
    v13 = [v11 dateFromComponents:v23];
    v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v14 setDay:-6];
    v22 = [v11 dateByAddingComponents:v14 toDate:v13 options:0];
    if ([v7 compare:?] == -1)
    {
      v18 = 0;
      v10 = 6;
    }

    else
    {
      v20 = v12;
      v15 = [v11 components:112 fromDate:v7 toDate:v9 options:0];
      if ([v15 day] <= 0 && objc_msgSend(v15, "hour") <= 0 && objc_msgSend(v15, "minute") < 6)
      {
        v18 = v7;
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
        v17 = [v11 dateByAddingComponents:v16 toDate:v13 options:0];
        if ([v7 compare:v17] == -1)
        {
          v10 = 5;
        }

        else if ([v7 compare:v13] == -1)
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
        *v21 = [v11 dateByAddingComponents:v12 toDate:v18 options:0];
      }
    }
  }

  return v10;
}

- (id)_statusUpdatedMinutesAgoWithDate:(id)a3 now:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 components:64 fromDate:v5 toDate:v6 options:0];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 localizedStringForKey:@"UPDATED_N_MINUTES_AGO_FORMAT%1$ld" value:&stru_1F45FD218 table:@"Main"];
  v12 = [v9 localizedStringWithFormat:v11, objc_msgSend(v8, "minute")];

  return v12;
}

- (id)_statusUpdatedAtTimeWithDate:(id)a3
{
  v4 = a3;
  if (!self->_timeFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    timeFormatter = self->_timeFormatter;
    self->_timeFormatter = v5;

    [(NSDateFormatter *)self->_timeFormatter setDateStyle:0];
    [(NSDateFormatter *)self->_timeFormatter setTimeStyle:1];
  }

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 localizedStringForKey:@"UPDATED_AT_TIME_FORMAT" value:&stru_1F45FD218 table:@"Main"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v4];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

- (id)_statusUpdatedOnDayWithDate:(id)a3
{
  v4 = a3;
  if (!self->_weekdayFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    weekdayFormatter = self->_weekdayFormatter;
    self->_weekdayFormatter = v5;

    [(NSDateFormatter *)self->_weekdayFormatter setDateFormat:@"EEEE"];
  }

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 localizedStringForKey:@"UPDATED_WEEKDAY_FORMAT" value:&stru_1F45FD218 table:@"Main"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSDateFormatter *)self->_weekdayFormatter stringFromDate:v4];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

- (id)_statusUpdatedOnDateWithDate:(id)a3
{
  v4 = a3;
  if (!self->_dateFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v5;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
  }

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 localizedStringForKey:@"UPDATED_ON_DATE_FORMAT" value:&stru_1F45FD218 table:@"Main"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v4];
  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

@end