@interface DNDModeAssertionDateIntervalLifetime
- (BOOL)isActiveForDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionDateIntervalLifetime)initWithCoder:(id)coder;
- (DNDModeAssertionDateIntervalLifetime)initWithDateInterval:(id)interval;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionDateIntervalLifetime

- (DNDModeAssertionDateIntervalLifetime)initWithDateInterval:(id)interval
{
  intervalCopy = interval;
  v9.receiver = self;
  v9.super_class = DNDModeAssertionDateIntervalLifetime;
  _init = [(DNDModeAssertionLifetime *)&v9 _init];
  if (_init)
  {
    v6 = [intervalCopy copy];
    dateInterval = _init->_dateInterval;
    _init->_dateInterval = v6;
  }

  return _init;
}

- (BOOL)isActiveForDate:(id)date
{
  dateCopy = date;
  if ([(NSDateInterval *)self->_dateInterval containsDate:dateCopy])
  {
    endDate = [(NSDateInterval *)self->_dateInterval endDate];
    v6 = [endDate compare:dateCopy] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  dateInterval = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
  v3 = [dateInterval hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateInterval = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
      dateInterval2 = [(DNDModeAssertionDateIntervalLifetime *)v5 dateInterval];
      if (dateInterval == dateInterval2)
      {
        v12 = 1;
      }

      else
      {
        dateInterval3 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
        if (dateInterval3)
        {
          dateInterval4 = [(DNDModeAssertionDateIntervalLifetime *)v5 dateInterval];
          if (dateInterval4)
          {
            dateInterval5 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
            dateInterval6 = [(DNDModeAssertionDateIntervalLifetime *)v5 dateInterval];
            v12 = [dateInterval5 isEqual:dateInterval6];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dateInterval = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
  v6 = [v3 stringWithFormat:@"<%@: %p dateInterval: %@>", v4, self, dateInterval];;

  return v6;
}

- (DNDModeAssertionDateIntervalLifetime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];

  v6 = [(DNDModeAssertionDateIntervalLifetime *)self initWithDateInterval:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dateInterval = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
}

@end