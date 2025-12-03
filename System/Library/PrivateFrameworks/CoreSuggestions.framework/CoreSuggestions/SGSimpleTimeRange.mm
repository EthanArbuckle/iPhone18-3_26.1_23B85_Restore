@interface SGSimpleTimeRange
+ (BOOL)hasYearMonthDayComponents:(id)components;
+ (SGUnixTimestamp_)fromFloatingTime:(SGUnixTimestamp_)time;
+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)time;
+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)time withDSTAmbiguityPreferences:(id)preferences;
+ (id)dateFromGregorianComponents:(id)components;
+ (id)floatingRangeWithLocalStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end;
+ (id)floatingRangeWithLocalStartDate:(id)date endDate:(id)endDate;
+ (id)floatingRangeWithUTCStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end;
+ (id)floatingRangeWithUTCStartDate:(id)date endDate:(id)endDate;
+ (id)rangeWithGregorianStartComponents:(id)components endComponents:(id)endComponents;
+ (id)rangeWithStart:(SGUnixTimestamp_)start startTimeZone:(id)zone end:(SGUnixTimestamp_)end endTimeZone:(id)timeZone;
+ (id)rangeWithStartDate:(id)date startTimeZone:(id)zone endDate:(id)endDate endTimeZone:(id)timeZone;
+ (id)utcRangeWithStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end;
- (BOOL)isEndDatePast;
- (BOOL)isEndDatePastOver365days;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSimpleTimeRange:(id)range;
- (BOOL)isValidAllDayRange;
- (BOOL)startedMoreThan24HoursAgo;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSTimeZone)endTimeZone;
- (NSTimeZone)startTimeZone;
- (SGSimpleTimeRange)initWithCoder:(id)coder;
- (SGSimpleTimeRange)initWithStart:(SGUnixTimestamp_)start startUTCOffsetSeconds:(int64_t)seconds end:(SGUnixTimestamp_)end endUTCOffsetSeconds:(int64_t)offsetSeconds;
- (id)_componentsForDate:(id)date timeZone:(id)zone;
- (id)absoluteRange;
- (id)endDateComponents;
- (id)initUTCFloatingWithStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end;
- (id)stableStringRepresentation;
- (id)startDateComponents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGSimpleTimeRange

- (BOOL)isEndDatePastOver365days
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v5 = v4;
  absoluteRange = [(SGSimpleTimeRange *)self absoluteRange];
  [absoluteRange end];
  v8 = v5 - v7 > 31536000.0;

  return v8;
}

- (BOOL)isEndDatePast
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v5 = v4;
  absoluteRange = [(SGSimpleTimeRange *)self absoluteRange];
  [absoluteRange end];
  v8 = v5 > v7;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  secondsFromUnixEpoch = self->_start.secondsFromUnixEpoch;
  coderCopy = coder;
  [coderCopy encodeDouble:@"start" forKey:secondsFromUnixEpoch];
  [coderCopy encodeDouble:@"end" forKey:self->_end.secondsFromUnixEpoch];
  [coderCopy encodeInteger:self->_startUTCOffsetSeconds forKey:@"startUTCOffsetSeconds"];
  [coderCopy encodeInteger:self->_endUTCOffsetSeconds forKey:@"endUTCOffsetSeconds"];
  [coderCopy encodeBool:self->_floating forKey:@"floating"];
  [coderCopy encodeObject:self->_startTimeZone forKey:@"startTimeZone"];
  [coderCopy encodeObject:self->_endTimeZone forKey:@"endTimeZone"];
}

- (SGSimpleTimeRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SGSimpleTimeRange;
  v5 = [(SGSimpleTimeRange *)&v15 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"start"];
    v5->_start.secondsFromUnixEpoch = v6;
    [coderCopy decodeDoubleForKey:@"end"];
    v5->_end.secondsFromUnixEpoch = v7;
    v5->_startUTCOffsetSeconds = [coderCopy decodeIntegerForKey:@"startUTCOffsetSeconds"];
    v5->_endUTCOffsetSeconds = [coderCopy decodeIntegerForKey:@"endUTCOffsetSeconds"];
    v5->_floating = [coderCopy decodeBoolForKey:@"floating"];
    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"startTimeZone"];
    startTimeZone = v5->_startTimeZone;
    v5->_startTimeZone = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"endTimeZone"];
    endTimeZone = v5->_endTimeZone;
    v5->_endTimeZone = v12;
  }

  return v5;
}

- (BOOL)isEqualToSimpleTimeRange:(id)range
{
  rangeCopy = range;
  [rangeCopy start];
  if (self->_start.secondsFromUnixEpoch != v5)
  {
    goto LABEL_8;
  }

  [rangeCopy end];
  if (self->_end.secondsFromUnixEpoch != v6)
  {
    goto LABEL_8;
  }

  floating = self->_floating;
  if (floating != [rangeCopy isFloating])
  {
    goto LABEL_8;
  }

  if (!self->_floating)
  {
    startUTCOffsetSeconds = self->_startUTCOffsetSeconds;
    if (startUTCOffsetSeconds == [rangeCopy startUTCOffsetSeconds])
    {
      endUTCOffsetSeconds = self->_endUTCOffsetSeconds;
      v8 = endUTCOffsetSeconds == [rangeCopy endUTCOffsetSeconds];
      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSimpleTimeRange *)self isEqualToSimpleTimeRange:v5];
  }

  return v6;
}

- (BOOL)startedMoreThan24HoursAgo
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [date dateByAddingTimeInterval:-86400.0];
  [v4 timeIntervalSince1970];
  v6 = v5;
  absoluteRange = [(SGSimpleTimeRange *)self absoluteRange];
  [absoluteRange start];
  v9 = v6 > v8;

  return v9;
}

- (BOOL)isValidAllDayRange
{
  v3 = objc_autoreleasePoolPush();
  startDateComponents = [(SGSimpleTimeRange *)self startDateComponents];
  if ([startDateComponents hour] || objc_msgSend(startDateComponents, "minute") || objc_msgSend(startDateComponents, "second"))
  {
    v5 = 0;
  }

  else
  {
    endDateComponents = [(SGSimpleTimeRange *)self endDateComponents];
    v5 = ![endDateComponents hour] && !objc_msgSend(endDateComponents, "minute") && !objc_msgSend(endDateComponents, "second") || objc_msgSend(endDateComponents, "hour") >= 23 && objc_msgSend(endDateComponents, "minute") >= 59 && objc_msgSend(endDateComponents, "second") >= 59;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)endDateComponents
{
  endDate = [(SGSimpleTimeRange *)self endDate];
  endTimeZone = [(SGSimpleTimeRange *)self endTimeZone];
  v5 = [(SGSimpleTimeRange *)self _componentsForDate:endDate timeZone:endTimeZone];

  return v5;
}

- (id)startDateComponents
{
  startDate = [(SGSimpleTimeRange *)self startDate];
  startTimeZone = [(SGSimpleTimeRange *)self startTimeZone];
  v5 = [(SGSimpleTimeRange *)self _componentsForDate:startDate timeZone:startTimeZone];

  return v5;
}

- (id)_componentsForDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v7 = objc_autoreleasePoolPush();
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v9 setTimeZone:v10];
  }

  v11 = [v9 components:1048828 fromDate:dateCopy];
  [v11 setTimeZone:zoneCopy];

  objc_autoreleasePoolPop(v7);

  return v11;
}

- (NSTimeZone)endTimeZone
{
  if (self->_floating)
  {
    v3 = 0;
  }

  else
  {
    endTimeZone = self->_endTimeZone;
    if (endTimeZone)
    {
      v3 = endTimeZone;
    }

    else
    {
      defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      endDate = [(SGSimpleTimeRange *)self endDate];
      v9 = [defaultTimeZone secondsFromGMTForDate:endDate];

      if (v9 == self->_endUTCOffsetSeconds)
      {
        [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      else
      {
        [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:?];
      }
      v3 = ;
    }
  }

  return v3;
}

- (NSTimeZone)startTimeZone
{
  if (self->_floating)
  {
    v3 = 0;
  }

  else
  {
    startTimeZone = self->_startTimeZone;
    if (startTimeZone)
    {
      v3 = startTimeZone;
    }

    else
    {
      defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      startDate = [(SGSimpleTimeRange *)self startDate];
      v9 = [defaultTimeZone secondsFromGMTForDate:startDate];

      if (v9 == self->_startUTCOffsetSeconds)
      {
        [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      else
      {
        [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:?];
      }
      v3 = ;
    }
  }

  return v3;
}

- (NSDate)endDate
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_end.secondsFromUnixEpoch];

  return v2;
}

- (NSDate)startDate
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_start.secondsFromUnixEpoch];

  return v2;
}

- (id)stableStringRepresentation
{
  floating = self->_floating;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  secondsFromUnixEpoch = self->_start.secondsFromUnixEpoch;
  if (floating)
  {
    v6 = [v4 initWithFormat:@"%0.2f_%0.2f", secondsFromUnixEpoch, *&self->_start.secondsFromUnixEpoch, *&self->_end.secondsFromUnixEpoch, v8, v9];
  }

  else
  {
    v6 = [v4 initWithFormat:@"%0.2f(%ld)_%0.2f(%ld)", secondsFromUnixEpoch, *&secondsFromUnixEpoch, self->_startUTCOffsetSeconds, *&self->_end.secondsFromUnixEpoch, self->_endUTCOffsetSeconds];
  }

  return v6;
}

- (id)absoluteRange
{
  if (self->_floating)
  {
    [SGSimpleTimeRange fromFloatingTime:self->_start.secondsFromUnixEpoch];
    v4 = v3;
    [SGSimpleTimeRange fromFloatingTime:self->_end.secondsFromUnixEpoch];
    v6 = v5;
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    selfCopy = [SGSimpleTimeRange rangeWithStart:defaultTimeZone end:v4 timeZone:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (SGSimpleTimeRange)initWithStart:(SGUnixTimestamp_)start startUTCOffsetSeconds:(int64_t)seconds end:(SGUnixTimestamp_)end endUTCOffsetSeconds:(int64_t)offsetSeconds
{
  v12.receiver = self;
  v12.super_class = SGSimpleTimeRange;
  result = [(SGSimpleTimeRange *)&v12 init];
  if (result)
  {
    if (end.secondsFromUnixEpoch >= start.secondsFromUnixEpoch)
    {
      secondsFromUnixEpoch = end.secondsFromUnixEpoch;
    }

    else
    {
      secondsFromUnixEpoch = start.secondsFromUnixEpoch;
    }

    result->_start.secondsFromUnixEpoch = start.secondsFromUnixEpoch;
    result->_end.secondsFromUnixEpoch = secondsFromUnixEpoch;
    result->_startUTCOffsetSeconds = seconds;
    result->_endUTCOffsetSeconds = offsetSeconds;
    result->_floating = 0;
  }

  return result;
}

- (id)initUTCFloatingWithStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end
{
  v8.receiver = self;
  v8.super_class = SGSimpleTimeRange;
  result = [(SGSimpleTimeRange *)&v8 init];
  if (result)
  {
    if (end.secondsFromUnixEpoch >= start.secondsFromUnixEpoch)
    {
      secondsFromUnixEpoch = end.secondsFromUnixEpoch;
    }

    else
    {
      secondsFromUnixEpoch = start.secondsFromUnixEpoch;
    }

    *(result + 1) = start.secondsFromUnixEpoch;
    *(result + 2) = secondsFromUnixEpoch;
    *(result + 40) = 1;
  }

  return result;
}

+ (id)floatingRangeWithLocalStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end
{
  v6 = [SGSimpleTimeRange alloc];
  [SGSimpleTimeRange toFloatingTime:start.secondsFromUnixEpoch];
  v8 = v7;
  [SGSimpleTimeRange toFloatingTime:end.secondsFromUnixEpoch];
  v10 = [(SGSimpleTimeRange *)v6 initUTCFloatingWithStart:v8 end:v9];

  return v10;
}

+ (id)floatingRangeWithLocalStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  [date timeIntervalSince1970];
  [SGSimpleTimeRange toFloatingTime:?];
  v7 = v6;
  [endDateCopy timeIntervalSince1970];
  v9 = v8;

  [SGSimpleTimeRange toFloatingTime:v9];
  v11 = [[SGSimpleTimeRange alloc] initUTCFloatingWithStart:v7 end:v10];

  return v11;
}

+ (id)floatingRangeWithUTCStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end
{
  v4 = [[SGSimpleTimeRange alloc] initUTCFloatingWithStart:start.secondsFromUnixEpoch end:end.secondsFromUnixEpoch];

  return v4;
}

+ (id)floatingRangeWithUTCStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = [SGSimpleTimeRange alloc];
  [dateCopy timeIntervalSince1970];
  v9 = v8;

  [endDateCopy timeIntervalSince1970];
  v11 = v10;

  v12 = [(SGSimpleTimeRange *)v7 initUTCFloatingWithStart:v9 end:v11];

  return v12;
}

+ (id)utcRangeWithStart:(SGUnixTimestamp_)start end:(SGUnixTimestamp_)end
{
  v6 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  v7 = [SGSimpleTimeRange rangeWithStart:v6 end:start.secondsFromUnixEpoch timeZone:end.secondsFromUnixEpoch];

  return v7;
}

+ (id)rangeWithStartDate:(id)date startTimeZone:(id)zone endDate:(id)endDate endTimeZone:(id)timeZone
{
  zoneCopy = zone;
  timeZoneCopy = timeZone;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = [(NSTimeZone *)zoneCopy secondsFromGMTForDate:dateCopy];
  v14 = [(NSTimeZone *)timeZoneCopy secondsFromGMTForDate:endDateCopy];
  v15 = [SGSimpleTimeRange alloc];
  [dateCopy timeIntervalSince1970];
  v17 = v16;

  [endDateCopy timeIntervalSince1970];
  v19 = v18;

  v20 = [(SGSimpleTimeRange *)v15 initWithStart:v13 startUTCOffsetSeconds:v14 end:v17 endUTCOffsetSeconds:v19];
  startTimeZone = v20->_startTimeZone;
  v20->_startTimeZone = zoneCopy;
  v22 = zoneCopy;

  endTimeZone = v20->_endTimeZone;
  v20->_endTimeZone = timeZoneCopy;

  return v20;
}

+ (id)rangeWithStart:(SGUnixTimestamp_)start startTimeZone:(id)zone end:(SGUnixTimestamp_)end endTimeZone:(id)timeZone
{
  v9 = MEMORY[0x1E695DF00];
  timeZoneCopy = timeZone;
  zoneCopy = zone;
  v12 = [[v9 alloc] initWithTimeIntervalSince1970:start.secondsFromUnixEpoch];
  v13 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:end.secondsFromUnixEpoch];
  v14 = [SGSimpleTimeRange rangeWithStartDate:v12 startTimeZone:zoneCopy endDate:v13 endTimeZone:timeZoneCopy];

  return v14;
}

+ (id)rangeWithGregorianStartComponents:(id)components endComponents:(id)endComponents
{
  componentsCopy = components;
  endComponentsCopy = endComponents;
  if (!componentsCopy)
  {
    v9 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  if (![SGSimpleTimeRange hasYearMonthDayComponents:componentsCopy])
  {
    v14 = 0;
    v9 = componentsCopy;
    goto LABEL_23;
  }

  v9 = [componentsCopy copy];

  if (endComponentsCopy && [SGSimpleTimeRange hasYearMonthDayComponents:endComponentsCopy])
  {
    v10 = [endComponentsCopy copy];

    timeZone = [v9 timeZone];
    timeZone2 = [v10 timeZone];
    v13 = timeZone2 == 0;

    if ((timeZone == 0) == v13)
    {
      goto LABEL_11;
    }

    endComponentsCopy = [v9 timeZone];
    [v10 setTimeZone:endComponentsCopy];
  }

  else
  {
    v10 = [v9 copy];
  }

LABEL_11:
  endComponentsCopy = v10;
  v15 = [SGSimpleTimeRange isAllDayComponents:v9];
  if (v15 != [SGSimpleTimeRange isAllDayComponents:endComponentsCopy])
  {
    [endComponentsCopy setHour:{objc_msgSend(v9, "hour")}];
    [endComponentsCopy setMinute:{objc_msgSend(v9, "minute")}];
    [endComponentsCopy setSecond:{objc_msgSend(v9, "second")}];
    [endComponentsCopy setNanosecond:{objc_msgSend(v9, "nanosecond")}];
  }

  if ([SGSimpleTimeRange isAllDayComponents:v9])
  {
    [endComponentsCopy setHour:24];
    [endComponentsCopy setMinute:0];
    [endComponentsCopy setSecond:0];
    [endComponentsCopy setNanosecond:0];
  }

  v16 = [SGSimpleTimeRange dateFromGregorianComponents:v9];
  v17 = [SGSimpleTimeRange dateFromGregorianComponents:endComponentsCopy];
  v18 = v17;
  if (!v16)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSimpleTimeRange.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];

    if (v18)
    {
      goto LABEL_17;
    }

LABEL_27:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSimpleTimeRange.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];

    goto LABEL_17;
  }

  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_17:
  timeZone3 = [v9 timeZone];

  if (timeZone3)
  {
    timeZone4 = [endComponentsCopy timeZone];

    if (!timeZone4)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGSimpleTimeRange.m" lineNumber:184 description:{@"if the start has a timezone, then end should too"}];
    }

    timeZone5 = [v9 timeZone];
    timeZone6 = [endComponentsCopy timeZone];
    v14 = [SGSimpleTimeRange rangeWithStartDate:v16 startTimeZone:timeZone5 endDate:v18 endTimeZone:timeZone6];
  }

  else
  {
    v14 = [SGSimpleTimeRange floatingRangeWithUTCStartDate:v16 endDate:v18];
  }

LABEL_23:

  return v14;
}

+ (BOOL)hasYearMonthDayComponents:(id)components
{
  componentsCopy = components;
  v4 = [componentsCopy year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "month") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "day") != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)dateFromGregorianComponents:(id)components
{
  componentsCopy = components;
  calendar = [componentsCopy calendar];
  if (calendar)
  {
    v7 = calendar;
    calendar2 = [componentsCopy calendar];
    calendarIdentifier = [calendar2 calendarIdentifier];
    v10 = *MEMORY[0x1E695D850];

    if (calendarIdentifier != v10)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGSimpleTimeRange.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"components.calendar == nil || components.calendar.calendarIdentifier == NSCalendarIdentifierGregorian"}];
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695D850];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v10];
  v13 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v12 setTimeZone:v13];

  v14 = [v12 dateFromComponents:componentsCopy];

  return v14;
}

+ (SGUnixTimestamp_)fromFloatingTime:(SGUnixTimestamp_)time
{
  [SGSimpleTimeRange toFloatingTime:?];
  v5.secondsFromUnixEpoch = -(v4 - time.secondsFromUnixEpoch * 2.0);
  return v5;
}

+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)time withDSTAmbiguityPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v8 = objc_autoreleasePoolPush();
  [SGSimpleTimeRange toFloatingTime:time.secondsFromUnixEpoch];
  v10.secondsFromUnixEpoch = v9;
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:time.secondsFromUnixEpoch];
  v13 = [v12 dateByAddingTimeInterval:-7200.0];
  v14 = [defaultTimeZone nextDaylightSavingTimeTransitionAfterDate:v13];
  if (v14)
  {
    [v12 timeIntervalSinceDate:v14];
    if (v15 >= 0.0)
    {
      v16 = v15;
      [defaultTimeZone daylightSavingTimeOffsetForDate:v13];
      v18 = v17;
      [defaultTimeZone daylightSavingTimeOffsetForDate:v12];
      v20 = v19;
      if (v18 == v19)
      {
        [MEMORY[0x1E696AAA8] currentHandler];
        v39 = v42 = v8;
        [v39 handleFailureInMethod:a2 object:self file:@"SGSimpleTimeRange.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"offsetBefore != offsetAfter"}];

        v8 = v42;
      }

      v21 = v18 <= v20;
      v22 = v20 - v18;
      if (v21 && v22 >= v16)
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v10.secondsFromUnixEpoch];
        v43 = [v24 dateByAddingTimeInterval:-v22];
        calendar = [preferencesCopy calendar];
        v26 = [calendar copy];
        v27 = v26;
        v46 = preferencesCopy;
        v41 = v8;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        }

        v29 = v28;

        v30 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
        [v29 setTimeZone:v30];

        v40 = v24;
        v45 = [v29 components:33020 fromDate:v24];
        v44 = [v29 components:33020 fromDate:v43];
        v31 = 0;
        while (1)
        {
          v32 = qword_1BA7C1058[v31];
          v33 = [v46 valueForComponent:v32];
          if (v33 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = v33;
            v35 = [v45 valueForComponent:v32];
            v36 = [v44 valueForComponent:v32];
            if (v35 != v36)
            {
              if (v35 == v34)
              {
                goto LABEL_18;
              }

              if (v36 == v34)
              {
                break;
              }
            }
          }

          if (++v31 == 7)
          {
            goto LABEL_18;
          }
        }

        [v43 timeIntervalSince1970];
        v10.secondsFromUnixEpoch = v38;
LABEL_18:

        preferencesCopy = v46;
        v8 = v41;
      }
    }
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}

+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)time
{
  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:time.secondsFromUnixEpoch];
  v6 = [v4 components:3145980 fromDate:v5];

  v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  v8 = [v4 dateFromComponents:v6];
  [v8 timeIntervalSince1970];
  v10.secondsFromUnixEpoch = v9;

  return v10;
}

@end