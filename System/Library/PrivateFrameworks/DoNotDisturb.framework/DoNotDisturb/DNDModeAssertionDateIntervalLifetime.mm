@interface DNDModeAssertionDateIntervalLifetime
- (BOOL)isActiveForDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionDateIntervalLifetime)initWithCoder:(id)a3;
- (DNDModeAssertionDateIntervalLifetime)initWithDateInterval:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionDateIntervalLifetime

- (DNDModeAssertionDateIntervalLifetime)initWithDateInterval:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDModeAssertionDateIntervalLifetime;
  v5 = [(DNDModeAssertionLifetime *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  return v5;
}

- (BOOL)isActiveForDate:(id)a3
{
  v4 = a3;
  if ([(NSDateInterval *)self->_dateInterval containsDate:v4])
  {
    v5 = [(NSDateInterval *)self->_dateInterval endDate];
    v6 = [v5 compare:v4] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
      v7 = [(DNDModeAssertionDateIntervalLifetime *)v5 dateInterval];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
        if (v8)
        {
          v9 = [(DNDModeAssertionDateIntervalLifetime *)v5 dateInterval];
          if (v9)
          {
            v10 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
            v11 = [(DNDModeAssertionDateIntervalLifetime *)v5 dateInterval];
            v12 = [v10 isEqual:v11];
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
  v5 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
  v6 = [v3 stringWithFormat:@"<%@: %p dateInterval: %@>", v4, self, v5];;

  return v6;
}

- (DNDModeAssertionDateIntervalLifetime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];

  v6 = [(DNDModeAssertionDateIntervalLifetime *)self initWithDateInterval:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDModeAssertionDateIntervalLifetime *)self dateInterval];
  [v4 encodeObject:v5 forKey:@"dateInterval"];
}

@end