@interface PKDateComponentsRangeFormatter
- (BOOL)_areHoursDefinedInDateComponentsRange:(id)range;
- (BOOL)_isSameDayInDateComponentsRange:(id)range;
- (BOOL)_isSameEraInDateComponentsRange:(id)range currentDateComponents:(id)components;
- (BOOL)_isSameYearInDateComponentsRange:(id)range currentDateComponents:(id)components;
- (id)_currentDateComponents;
- (id)_formatForDateComponentsRange:(id)range;
- (id)stringFromDateComponentsRange:(id)range;
- (int64_t)_resolvedEraFromEra:(int64_t)era currentEra:(int64_t)currentEra;
@end

@implementation PKDateComponentsRangeFormatter

- (id)stringFromDateComponentsRange:(id)range
{
  rangeCopy = range;
  dateIntervalFormatter = self->_dateIntervalFormatter;
  if (!dateIntervalFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v7 = self->_dateIntervalFormatter;
    self->_dateIntervalFormatter = v6;

    dateIntervalFormatter = self->_dateIntervalFormatter;
  }

  v8 = [(PKDateComponentsRangeFormatter *)self _formatForDateComponentsRange:rangeCopy];
  [(NSDateIntervalFormatter *)dateIntervalFormatter setDateTemplate:v8];

  v9 = self->_dateIntervalFormatter;
  startDateComponents = [rangeCopy startDateComponents];
  calendar = [startDateComponents calendar];
  if (calendar)
  {
    [(NSDateIntervalFormatter *)v9 setCalendar:calendar];
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [(NSDateIntervalFormatter *)v9 setCalendar:currentCalendar];
  }

  v13 = self->_dateIntervalFormatter;
  dateInterval = [rangeCopy dateInterval];
  v15 = [(NSDateIntervalFormatter *)v13 stringFromDateInterval:dateInterval];

  return v15;
}

- (id)_formatForDateComponentsRange:(id)range
{
  rangeCopy = range;
  _currentDateComponents = [(PKDateComponentsRangeFormatter *)self _currentDateComponents];
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"MMM d"];
  if ([(PKDateComponentsRangeFormatter *)self _isSameDayInDateComponentsRange:rangeCopy])
  {
    v7 = [(PKDateComponentsRangeFormatter *)self _areHoursDefinedInDateComponentsRange:rangeCopy];
  }

  else
  {
    v7 = 0;
  }

  if (![(PKDateComponentsRangeFormatter *)self _isSameYearInDateComponentsRange:rangeCopy currentDateComponents:_currentDateComponents])
  {
    [v6 appendString:@" yyyy"];
  }

  if (![(PKDateComponentsRangeFormatter *)self _isSameEraInDateComponentsRange:rangeCopy currentDateComponents:_currentDateComponents])
  {
    [v6 appendString:@" G"];
  }

  if (v7)
  {
    [v6 appendString:@" HH:mm"];
  }

  return v6;
}

- (id)_currentDateComponents
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [currentCalendar components:94 fromDate:date];

  return v4;
}

- (BOOL)_areHoursDefinedInDateComponentsRange:(id)range
{
  rangeCopy = range;
  startDateComponents = [rangeCopy startDateComponents];
  if ([startDateComponents hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    endDateComponents = [rangeCopy endDateComponents];
    v5 = [endDateComponents hour] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)_isSameDayInDateComponentsRange:(id)range
{
  rangeCopy = range;
  startDateComponents = [rangeCopy startDateComponents];
  v5 = [startDateComponents day];
  endDateComponents = [rangeCopy endDateComponents];
  if (v5 == [endDateComponents day])
  {
    startDateComponents2 = [rangeCopy startDateComponents];
    month = [startDateComponents2 month];
    endDateComponents2 = [rangeCopy endDateComponents];
    if (month == [endDateComponents2 month])
    {
      startDateComponents3 = [rangeCopy startDateComponents];
      year = [startDateComponents3 year];
      endDateComponents3 = [rangeCopy endDateComponents];
      if (year == [endDateComponents3 year])
      {
        startDateComponents4 = [rangeCopy startDateComponents];
        v14 = [startDateComponents4 era];
        endDateComponents4 = [rangeCopy endDateComponents];
        v16 = v14 == [endDateComponents4 era];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_isSameYearInDateComponentsRange:(id)range currentDateComponents:(id)components
{
  rangeCopy = range;
  componentsCopy = components;
  startDateComponents = [rangeCopy startDateComponents];
  year = [startDateComponents year];
  endDateComponents = [rangeCopy endDateComponents];
  if (year == [endDateComponents year])
  {
    startDateComponents2 = [rangeCopy startDateComponents];
    year2 = [startDateComponents2 year];
    v13 = year2 == [componentsCopy year] && -[PKDateComponentsRangeFormatter _isSameEraInDateComponentsRange:currentDateComponents:](self, "_isSameEraInDateComponentsRange:currentDateComponents:", rangeCopy, componentsCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isSameEraInDateComponentsRange:(id)range currentDateComponents:(id)components
{
  componentsCopy = components;
  rangeCopy = range;
  startDateComponents = [rangeCopy startDateComponents];
  v9 = -[PKDateComponentsRangeFormatter _resolvedEraFromEra:currentEra:](self, "_resolvedEraFromEra:currentEra:", [startDateComponents era], objc_msgSend(componentsCopy, "era"));

  endDateComponents = [rangeCopy endDateComponents];

  v11 = -[PKDateComponentsRangeFormatter _resolvedEraFromEra:currentEra:](self, "_resolvedEraFromEra:currentEra:", [endDateComponents era], objc_msgSend(componentsCopy, "era"));
  v12 = v9 == v11 && v9 == [componentsCopy era];

  return v12;
}

- (int64_t)_resolvedEraFromEra:(int64_t)era currentEra:(int64_t)currentEra
{
  if (era == 0x7FFFFFFFFFFFFFFFLL)
  {
    return currentEra;
  }

  else
  {
    return era;
  }
}

@end