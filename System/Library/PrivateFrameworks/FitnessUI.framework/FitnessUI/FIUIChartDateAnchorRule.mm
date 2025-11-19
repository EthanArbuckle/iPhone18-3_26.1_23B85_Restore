@interface FIUIChartDateAnchorRule
- (BOOL)_componentsSuccessful:(id)a3;
- (id)_anchorDiffComponents;
- (id)_floorDate:(id)a3;
- (id)generateAnchorFromDate:(id)a3;
- (void)setCalendarUnit:(unint64_t)a3;
@end

@implementation FIUIChartDateAnchorRule

- (id)generateAnchorFromDate:(id)a3
{
  v4 = [(FIUIChartDateAnchorRule *)self _floorDate:a3];
  v5 = [(FIUIChartDateAnchorRule *)self _anchorDiffComponents];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v6 components:252 fromDate:v4];

  if ([(FIUIChartDateAnchorRule *)self _componentsSuccessful:v7])
  {
    v8 = v4;
    v9 = v7;
  }

  else
  {
    do
    {
      v10 = [MEMORY[0x1E695DEE8] currentCalendar];
      v8 = [v10 dateByAddingComponents:v5 toDate:v4 options:0];

      v11 = [MEMORY[0x1E695DEE8] currentCalendar];
      v9 = [v11 components:252 fromDate:v8];

      v7 = v9;
      v4 = v8;
    }

    while (![(FIUIChartDateAnchorRule *)self _componentsSuccessful:v9]);
  }

  return v8;
}

- (void)setCalendarUnit:(unint64_t)a3
{
  if ((a3 & 0xFC) == 0)
  {
    [FIUIChartDateAnchorRule setCalendarUnit:];
  }

  self->_calendarUnit = a3;
}

- (id)_floorDate:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:252 fromDate:v5];

  calendarUnit = self->_calendarUnit;
  if (calendarUnit <= 15)
  {
    if (calendarUnit == 4)
    {
      [v7 setSecond:0];
      [v7 setMinute:0];
      [v7 setHour:0];
      [v7 setDay:1];
      [v7 setMonth:1];
    }

    else if (calendarUnit == 8)
    {
      [v7 setSecond:0];
      [v7 setMinute:0];
      [v7 setHour:0];
      [v7 setDay:1];
    }
  }

  else
  {
    switch(calendarUnit)
    {
      case 16:
        [v7 setSecond:0];
        [v7 setMinute:0];
        [v7 setHour:0];
        break;
      case 32:
        [v7 setSecond:0];
        [v7 setMinute:0];
        break;
      case 64:
        [v7 setSecond:0];
        break;
    }
  }

  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v9 dateFromComponents:v7];

  return v10;
}

- (id)_anchorDiffComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v4 = v3;
  calendarUnit = self->_calendarUnit;
  if (calendarUnit > 31)
  {
    switch(calendarUnit)
    {
      case 32:
        [v3 setHour:-1];
        break;
      case 64:
        [v3 setMinute:-1];
        break;
      case 128:
        [v3 setSecond:-1];
        break;
    }
  }

  else
  {
    switch(calendarUnit)
    {
      case 4:
        [v3 setYear:-1];
        break;
      case 8:
        [v3 setMonth:-1];
        break;
      case 16:
        [v3 setDay:-1];
        break;
    }
  }

  return v4;
}

- (BOOL)_componentsSuccessful:(id)a3
{
  v4 = a3;
  calendarUnit = self->_calendarUnit;
  v6 = -1;
  if (calendarUnit > 31)
  {
    switch(calendarUnit)
    {
      case 32:
        v6 = [v4 hour];
        break;
      case 64:
        v6 = [v4 minute];
        break;
      case 128:
        v6 = [v4 second];
        break;
    }
  }

  else
  {
    switch(calendarUnit)
    {
      case 4:
        v6 = [v4 year];
        break;
      case 8:
        v6 = [v4 month];
        break;
      case 16:
        v6 = [v4 day];
        break;
    }
  }

  v7 = v6 % self->_roundingValue == 0;

  return v7;
}

@end