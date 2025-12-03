@interface CalRecurrenceDayOfWeek
+ (id)dayOfWeek:(int64_t)week;
+ (id)dayOfWeek:(int64_t)week weekNumber:(int64_t)number;
+ (id)iCalendarValueFromDayOfTheWeek:(unint64_t)week;
- (BOOL)isEqual:(id)equal;
- (CalRecurrenceDayOfWeek)initWithCoder:(id)coder;
- (CalRecurrenceDayOfWeek)initWithDayOfTheWeek:(int64_t)week weekNumber:(int64_t)number;
- (id)description;
- (id)iCalendarDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CalRecurrenceDayOfWeek

+ (id)dayOfWeek:(int64_t)week
{
  v3 = [[self alloc] initWithDayOfTheWeek:week weekNumber:0];

  return v3;
}

+ (id)dayOfWeek:(int64_t)week weekNumber:(int64_t)number
{
  v4 = [[self alloc] initWithDayOfTheWeek:week weekNumber:number];

  return v4;
}

- (CalRecurrenceDayOfWeek)initWithDayOfTheWeek:(int64_t)week weekNumber:(int64_t)number
{
  if ((week - 8) <= 0xFFFFFFFFFFFFFFF8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid day number"];
  }

  v8.receiver = self;
  v8.super_class = CalRecurrenceDayOfWeek;
  result = [(CalRecurrenceDayOfWeek *)&v8 init];
  if (result)
  {
    result->_dayOfTheWeek = week;
    result->_weekNumber = number;
  }

  return result;
}

- (CalRecurrenceDayOfWeek)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CalRecurrenceDayOfWeek;
  v5 = [(CalRecurrenceDayOfWeek *)&v7 init];
  if (v5)
  {
    v5->_dayOfTheWeek = [coderCopy decodeIntegerForKey:@"dayOfTheWeek"];
    v5->_weekNumber = [coderCopy decodeIntegerForKey:@"weekNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dayOfTheWeek = self->_dayOfTheWeek;
  coderCopy = coder;
  [coderCopy encodeInteger:dayOfTheWeek forKey:@"dayOfTheWeek"];
  [coderCopy encodeInteger:self->_weekNumber forKey:@"weekNumber"];
}

+ (id)iCalendarValueFromDayOfTheWeek:(unint64_t)week
{
  if (week - 1 > 6)
  {
    return &stru_1F379FFA8;
  }

  else
  {
    return off_1E7EC7270[week - 1];
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
  iCalendarDescription = [(CalRecurrenceDayOfWeek *)self iCalendarDescription];
  v6 = [v3 stringWithFormat:@"%@ <%p> { %@ }", v4, self, iCalendarDescription];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dayOfTheWeek = [(CalRecurrenceDayOfWeek *)self dayOfTheWeek];
      if (dayOfTheWeek == [(CalRecurrenceDayOfWeek *)v5 dayOfTheWeek])
      {
        weekNumber = [(CalRecurrenceDayOfWeek *)self weekNumber];
        v8 = weekNumber == [(CalRecurrenceDayOfWeek *)v5 weekNumber];
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