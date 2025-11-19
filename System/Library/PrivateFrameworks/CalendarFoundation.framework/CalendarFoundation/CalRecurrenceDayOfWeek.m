@interface CalRecurrenceDayOfWeek
+ (id)dayOfWeek:(int64_t)a3;
+ (id)dayOfWeek:(int64_t)a3 weekNumber:(int64_t)a4;
+ (id)iCalendarValueFromDayOfTheWeek:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CalRecurrenceDayOfWeek)initWithCoder:(id)a3;
- (CalRecurrenceDayOfWeek)initWithDayOfTheWeek:(int64_t)a3 weekNumber:(int64_t)a4;
- (id)description;
- (id)iCalendarDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalRecurrenceDayOfWeek

+ (id)dayOfWeek:(int64_t)a3
{
  v3 = [[a1 alloc] initWithDayOfTheWeek:a3 weekNumber:0];

  return v3;
}

+ (id)dayOfWeek:(int64_t)a3 weekNumber:(int64_t)a4
{
  v4 = [[a1 alloc] initWithDayOfTheWeek:a3 weekNumber:a4];

  return v4;
}

- (CalRecurrenceDayOfWeek)initWithDayOfTheWeek:(int64_t)a3 weekNumber:(int64_t)a4
{
  if ((a3 - 8) <= 0xFFFFFFFFFFFFFFF8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid day number"];
  }

  v8.receiver = self;
  v8.super_class = CalRecurrenceDayOfWeek;
  result = [(CalRecurrenceDayOfWeek *)&v8 init];
  if (result)
  {
    result->_dayOfTheWeek = a3;
    result->_weekNumber = a4;
  }

  return result;
}

- (CalRecurrenceDayOfWeek)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CalRecurrenceDayOfWeek;
  v5 = [(CalRecurrenceDayOfWeek *)&v7 init];
  if (v5)
  {
    v5->_dayOfTheWeek = [v4 decodeIntegerForKey:@"dayOfTheWeek"];
    v5->_weekNumber = [v4 decodeIntegerForKey:@"weekNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dayOfTheWeek = self->_dayOfTheWeek;
  v5 = a3;
  [v5 encodeInteger:dayOfTheWeek forKey:@"dayOfTheWeek"];
  [v5 encodeInteger:self->_weekNumber forKey:@"weekNumber"];
}

+ (id)iCalendarValueFromDayOfTheWeek:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return &stru_1F379FFA8;
  }

  else
  {
    return off_1E7EC7270[a3 - 1];
  }
}

- (id)iCalendarDescription
{
  weekNumber = self->_weekNumber;
  if (weekNumber)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [objc_opt_class() iCalendarValueFromDayOfTheWeek:self->_dayOfTheWeek];
    v5 = [v3 stringWithFormat:@"%ld%@", weekNumber, v4];
  }

  else
  {
    v5 = [objc_opt_class() iCalendarValueFromDayOfTheWeek:self->_dayOfTheWeek];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CalRecurrenceDayOfWeek *)self iCalendarDescription];
  v6 = [v3 stringWithFormat:@"%@ <%p> { %@ }", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CalRecurrenceDayOfWeek *)self dayOfTheWeek];
      if (v6 == [(CalRecurrenceDayOfWeek *)v5 dayOfTheWeek])
      {
        v7 = [(CalRecurrenceDayOfWeek *)self weekNumber];
        v8 = v7 == [(CalRecurrenceDayOfWeek *)v5 weekNumber];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end