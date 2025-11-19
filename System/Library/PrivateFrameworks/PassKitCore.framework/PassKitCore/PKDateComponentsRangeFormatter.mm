@interface PKDateComponentsRangeFormatter
- (BOOL)_areHoursDefinedInDateComponentsRange:(id)a3;
- (BOOL)_isSameDayInDateComponentsRange:(id)a3;
- (BOOL)_isSameEraInDateComponentsRange:(id)a3 currentDateComponents:(id)a4;
- (BOOL)_isSameYearInDateComponentsRange:(id)a3 currentDateComponents:(id)a4;
- (id)_currentDateComponents;
- (id)_formatForDateComponentsRange:(id)a3;
- (id)stringFromDateComponentsRange:(id)a3;
- (int64_t)_resolvedEraFromEra:(int64_t)a3 currentEra:(int64_t)a4;
@end

@implementation PKDateComponentsRangeFormatter

- (id)stringFromDateComponentsRange:(id)a3
{
  v4 = a3;
  dateIntervalFormatter = self->_dateIntervalFormatter;
  if (!dateIntervalFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v7 = self->_dateIntervalFormatter;
    self->_dateIntervalFormatter = v6;

    dateIntervalFormatter = self->_dateIntervalFormatter;
  }

  v8 = [(PKDateComponentsRangeFormatter *)self _formatForDateComponentsRange:v4];
  [(NSDateIntervalFormatter *)dateIntervalFormatter setDateTemplate:v8];

  v9 = self->_dateIntervalFormatter;
  v10 = [v4 startDateComponents];
  v11 = [v10 calendar];
  if (v11)
  {
    [(NSDateIntervalFormatter *)v9 setCalendar:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E695DEE8] currentCalendar];
    [(NSDateIntervalFormatter *)v9 setCalendar:v12];
  }

  v13 = self->_dateIntervalFormatter;
  v14 = [v4 dateInterval];
  v15 = [(NSDateIntervalFormatter *)v13 stringFromDateInterval:v14];

  return v15;
}

- (id)_formatForDateComponentsRange:(id)a3
{
  v4 = a3;
  v5 = [(PKDateComponentsRangeFormatter *)self _currentDateComponents];
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"MMM d"];
  if ([(PKDateComponentsRangeFormatter *)self _isSameDayInDateComponentsRange:v4])
  {
    v7 = [(PKDateComponentsRangeFormatter *)self _areHoursDefinedInDateComponentsRange:v4];
  }

  else
  {
    v7 = 0;
  }

  if (![(PKDateComponentsRangeFormatter *)self _isSameYearInDateComponentsRange:v4 currentDateComponents:v5])
  {
    [v6 appendString:@" yyyy"];
  }

  if (![(PKDateComponentsRangeFormatter *)self _isSameEraInDateComponentsRange:v4 currentDateComponents:v5])
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
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:94 fromDate:v3];

  return v4;
}

- (BOOL)_areHoursDefinedInDateComponentsRange:(id)a3
{
  v3 = a3;
  v4 = [v3 startDateComponents];
  if ([v4 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 endDateComponents];
    v5 = [v6 hour] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)_isSameDayInDateComponentsRange:(id)a3
{
  v3 = a3;
  v4 = [v3 startDateComponents];
  v5 = [v4 day];
  v6 = [v3 endDateComponents];
  if (v5 == [v6 day])
  {
    v7 = [v3 startDateComponents];
    v8 = [v7 month];
    v9 = [v3 endDateComponents];
    if (v8 == [v9 month])
    {
      v10 = [v3 startDateComponents];
      v11 = [v10 year];
      v12 = [v3 endDateComponents];
      if (v11 == [v12 year])
      {
        v13 = [v3 startDateComponents];
        v14 = [v13 era];
        v15 = [v3 endDateComponents];
        v16 = v14 == [v15 era];
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

- (BOOL)_isSameYearInDateComponentsRange:(id)a3 currentDateComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 startDateComponents];
  v9 = [v8 year];
  v10 = [v6 endDateComponents];
  if (v9 == [v10 year])
  {
    v11 = [v6 startDateComponents];
    v12 = [v11 year];
    v13 = v12 == [v7 year] && -[PKDateComponentsRangeFormatter _isSameEraInDateComponentsRange:currentDateComponents:](self, "_isSameEraInDateComponentsRange:currentDateComponents:", v6, v7);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isSameEraInDateComponentsRange:(id)a3 currentDateComponents:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 startDateComponents];
  v9 = -[PKDateComponentsRangeFormatter _resolvedEraFromEra:currentEra:](self, "_resolvedEraFromEra:currentEra:", [v8 era], objc_msgSend(v6, "era"));

  v10 = [v7 endDateComponents];

  v11 = -[PKDateComponentsRangeFormatter _resolvedEraFromEra:currentEra:](self, "_resolvedEraFromEra:currentEra:", [v10 era], objc_msgSend(v6, "era"));
  v12 = v9 == v11 && v9 == [v6 era];

  return v12;
}

- (int64_t)_resolvedEraFromEra:(int64_t)a3 currentEra:(int64_t)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

@end