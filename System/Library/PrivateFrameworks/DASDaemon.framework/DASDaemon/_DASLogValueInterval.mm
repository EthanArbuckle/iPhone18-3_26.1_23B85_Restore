@interface _DASLogValueInterval
- (BOOL)isEqual:(id)equal;
- (double)duration;
- (id)description;
- (id)durationString;
- (id)intervalString;
@end

@implementation _DASLogValueInterval

- (BOOL)isEqual:(id)equal
{
  value = self->_value;
  value = [equal value];
  LOBYTE(value) = [value isEqual:value];

  return value;
}

- (id)intervalString
{
  v3 = defaultFormatter();
  v4 = v3;
  if (self->_endDate)
  {
    v5 = [v3 stringFromDate:?];
  }

  else
  {
    v5 = @"End of Log";
  }

  v6 = MEMORY[0x277CCACA8];
  startDate = [(_DASLogValueInterval *)self startDate];
  v8 = [v4 stringFromDate:startDate];
  v9 = [v6 stringWithFormat:@"[%@ - %@]", v8, v5];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  intervalString = [(_DASLogValueInterval *)self intervalString];
  v5 = [self->_value description];
  v6 = [v3 stringWithFormat:@"%@ %@", intervalString, v5];

  return v6;
}

- (double)duration
{
  endDate = self->_endDate;
  if (!endDate)
  {
    return -2147483650.0;
  }

  v4 = [(NSDate *)endDate isEqualToDate:self->_startDate];
  result = 0.5;
  if (!v4)
  {
    endDate = [(_DASLogValueInterval *)self endDate];
    startDate = [(_DASLogValueInterval *)self startDate];
    [endDate timeIntervalSinceDate:startDate];
    v9 = v8;

    return v9;
  }

  return result;
}

- (id)durationString
{
  [(_DASLogValueInterval *)self duration];
  if (v2 >= 0.0)
  {
    if (v2 >= 3600.0)
    {
      v4 = v2 / 3600.0;
    }

    else
    {
      v4 = v2 / 60.0;
      if (v2 < 60.0)
      {
        v4 = v2;
      }
    }

    v5 = @"minutes";
    if (v2 < 60.0)
    {
      v5 = @"seconds";
    }

    if (v2 >= 3600.0)
    {
      v5 = @"hours";
    }

    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%3.2lf %@", *&v4, v5];
  }

  else
  {
    v3 = &stru_2859F0B50;
  }

  return v3;
}

@end