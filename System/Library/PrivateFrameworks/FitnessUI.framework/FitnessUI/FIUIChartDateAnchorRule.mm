@interface FIUIChartDateAnchorRule
- (BOOL)_componentsSuccessful:(id)successful;
- (id)_anchorDiffComponents;
- (id)_floorDate:(id)date;
- (id)generateAnchorFromDate:(id)date;
- (void)setCalendarUnit:(unint64_t)unit;
@end

@implementation FIUIChartDateAnchorRule

- (id)generateAnchorFromDate:(id)date
{
  v4 = [(FIUIChartDateAnchorRule *)self _floorDate:date];
  _anchorDiffComponents = [(FIUIChartDateAnchorRule *)self _anchorDiffComponents];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [currentCalendar components:252 fromDate:v4];

  if ([(FIUIChartDateAnchorRule *)self _componentsSuccessful:v7])
  {
    v8 = v4;
    v9 = v7;
  }

  else
  {
    do
    {
      currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
      v8 = [currentCalendar2 dateByAddingComponents:_anchorDiffComponents toDate:v4 options:0];

      currentCalendar3 = [MEMORY[0x1E695DEE8] currentCalendar];
      v9 = [currentCalendar3 components:252 fromDate:v8];

      v7 = v9;
      v4 = v8;
    }

    while (![(FIUIChartDateAnchorRule *)self _componentsSuccessful:v9]);
  }

  return v8;
}

- (void)setCalendarUnit:(unint64_t)unit
{
  if ((unit & 0xFC) == 0)
  {
    [FIUIChartDateAnchorRule setCalendarUnit:];
  }

  self->_calendarUnit = unit;
}

- (id)_floorDate:(id)date
{
  v4 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:252 fromDate:dateCopy];

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

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [currentCalendar2 dateFromComponents:v7];

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

- (BOOL)_componentsSuccessful:(id)successful
{
  successfulCopy = successful;
  calendarUnit = self->_calendarUnit;
  hour = -1;
  if (calendarUnit > 31)
  {
    switch(calendarUnit)
    {
      case 32:
        hour = [successfulCopy hour];
        break;
      case 64:
        hour = [successfulCopy minute];
        break;
      case 128:
        hour = [successfulCopy second];
        break;
    }
  }

  else
  {
    switch(calendarUnit)
    {
      case 4:
        hour = [successfulCopy year];
        break;
      case 8:
        hour = [successfulCopy month];
        break;
      case 16:
        hour = [successfulCopy day];
        break;
    }
  }

  v7 = hour % self->_roundingValue == 0;

  return v7;
}

@end