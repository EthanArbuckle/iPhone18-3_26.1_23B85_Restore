@interface DNDScheduleTimePeriod
- (BOOL)isEqual:(id)equal;
- (DNDScheduleTimePeriod)initWithCoder:(id)coder;
- (id)_initWithPeriod:(id)period;
- (id)_initWithStartTime:(id)time endTime:(id)endTime weekdays:(unint64_t)weekdays;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDScheduleTimePeriod

- (id)_initWithPeriod:(id)period
{
  periodCopy = period;
  startTime = [periodCopy startTime];
  endTime = [periodCopy endTime];
  if (periodCopy)
  {
    weekdays = [periodCopy weekdays];
  }

  else
  {
    weekdays = 0xFFFFFFFFLL;
  }

  v8 = [(DNDScheduleTimePeriod *)self _initWithStartTime:startTime endTime:endTime weekdays:weekdays];

  return v8;
}

- (id)_initWithStartTime:(id)time endTime:(id)endTime weekdays:(unint64_t)weekdays
{
  timeCopy = time;
  endTimeCopy = endTime;
  v21.receiver = self;
  v21.super_class = DNDScheduleTimePeriod;
  v10 = [(DNDScheduleTimePeriod *)&v21 init];
  if (v10)
  {
    v11 = [timeCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[DNDScheduleTime defaultStartTime];
    }

    startTime = v10->_startTime;
    v10->_startTime = v13;

    v15 = [endTimeCopy copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = +[DNDScheduleTime defaultEndTime];
    }

    endTime = v10->_endTime;
    v10->_endTime = v17;

    weekdaysCopy = 127;
    if (weekdays != 0xFFFFFFFF)
    {
      weekdaysCopy = weekdays;
    }

    v10->_weekdays = weekdaysCopy;
  }

  return v10;
}

- (unint64_t)hash
{
  startTime = [(DNDScheduleTimePeriod *)self startTime];
  v4 = [startTime hash];
  endTime = [(DNDScheduleTimePeriod *)self endTime];
  v6 = [endTime hash] ^ v4;
  weekdays = [(DNDScheduleTimePeriod *)self weekdays];

  return v6 ^ weekdays;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      startTime = [(DNDScheduleTimePeriod *)self startTime];
      startTime2 = [(DNDScheduleTimePeriod *)v8 startTime];
      if (startTime != startTime2)
      {
        startTime3 = [(DNDScheduleTimePeriod *)self startTime];
        if (!startTime3)
        {
          v14 = 0;
          goto LABEL_27;
        }

        v3 = startTime3;
        startTime4 = [(DNDScheduleTimePeriod *)v8 startTime];
        if (!startTime4)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = startTime4;
        startTime5 = [(DNDScheduleTimePeriod *)self startTime];
        startTime6 = [(DNDScheduleTimePeriod *)v8 startTime];
        if (![startTime5 isEqual:startTime6])
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = startTime6;
        v27 = startTime5;
        v28 = v4;
      }

      endTime = [(DNDScheduleTimePeriod *)self endTime];
      endTime2 = [(DNDScheduleTimePeriod *)v8 endTime];
      if (endTime == endTime2)
      {
        goto LABEL_16;
      }

      endTime3 = [(DNDScheduleTimePeriod *)self endTime];
      if (!endTime3)
      {

        v14 = 0;
        goto LABEL_24;
      }

      startTime6 = endTime3;
      endTime4 = [(DNDScheduleTimePeriod *)v8 endTime];
      if (!endTime4)
      {
        v14 = 0;
        goto LABEL_22;
      }

      v24 = endTime4;
      endTime5 = [(DNDScheduleTimePeriod *)self endTime];
      endTime6 = [(DNDScheduleTimePeriod *)v8 endTime];
      v25 = endTime5;
      v21 = endTime5;
      v4 = endTime6;
      if ([v21 isEqual:endTime6])
      {
LABEL_16:
        weekdays = [(DNDScheduleTimePeriod *)self weekdays];
        v14 = weekdays == [(DNDScheduleTimePeriod *)v8 weekdays];
        if (endTime == endTime2)
        {
LABEL_23:

LABEL_24:
          startTime5 = v27;
          v4 = v28;
          startTime6 = v26;
          if (startTime != startTime2)
          {
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_22:
      goto LABEL_23;
    }

    v14 = 0;
  }

LABEL_28:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  startTime = [(DNDScheduleTimePeriod *)self startTime];
  endTime = [(DNDScheduleTimePeriod *)self endTime];
  v6 = NSStringFromDNDWeekdays([(DNDScheduleTimePeriod *)self weekdays]);
  v7 = [v3 stringWithFormat:@"<period: s: %@ e: %@; weekdays: %@>", startTime, endTime, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableScheduleTimePeriod alloc];

  return [(DNDScheduleTimePeriod *)v4 _initWithPeriod:self];
}

- (DNDScheduleTimePeriod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  if ([coderCopy containsValueForKey:@"weekdays"])
  {
    v7 = [coderCopy decodeIntegerForKey:@"weekdays"];
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = [(DNDScheduleTimePeriod *)self _initWithStartTime:v5 endTime:v6 weekdays:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startTime = [(DNDScheduleTimePeriod *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(DNDScheduleTimePeriod *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];

  [coderCopy encodeInteger:-[DNDScheduleTimePeriod weekdays](self forKey:{"weekdays"), @"weekdays"}];
}

@end