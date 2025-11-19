@interface SGSimpleTimeRange
+ (BOOL)hasYearMonthDayComponents:(id)a3;
+ (SGUnixTimestamp_)fromFloatingTime:(SGUnixTimestamp_)a3;
+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)a3;
+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)a3 withDSTAmbiguityPreferences:(id)a4;
+ (id)dateFromGregorianComponents:(id)a3;
+ (id)floatingRangeWithLocalStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4;
+ (id)floatingRangeWithLocalStartDate:(id)a3 endDate:(id)a4;
+ (id)floatingRangeWithUTCStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4;
+ (id)floatingRangeWithUTCStartDate:(id)a3 endDate:(id)a4;
+ (id)rangeWithGregorianStartComponents:(id)a3 endComponents:(id)a4;
+ (id)rangeWithStart:(SGUnixTimestamp_)a3 startTimeZone:(id)a4 end:(SGUnixTimestamp_)a5 endTimeZone:(id)a6;
+ (id)rangeWithStartDate:(id)a3 startTimeZone:(id)a4 endDate:(id)a5 endTimeZone:(id)a6;
+ (id)utcRangeWithStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4;
- (BOOL)isEndDatePast;
- (BOOL)isEndDatePastOver365days;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSimpleTimeRange:(id)a3;
- (BOOL)isValidAllDayRange;
- (BOOL)startedMoreThan24HoursAgo;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSTimeZone)endTimeZone;
- (NSTimeZone)startTimeZone;
- (SGSimpleTimeRange)initWithCoder:(id)a3;
- (SGSimpleTimeRange)initWithStart:(SGUnixTimestamp_)a3 startUTCOffsetSeconds:(int64_t)a4 end:(SGUnixTimestamp_)a5 endUTCOffsetSeconds:(int64_t)a6;
- (id)_componentsForDate:(id)a3 timeZone:(id)a4;
- (id)absoluteRange;
- (id)endDateComponents;
- (id)initUTCFloatingWithStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4;
- (id)stableStringRepresentation;
- (id)startDateComponents;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGSimpleTimeRange

- (BOOL)isEndDatePastOver365days
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  v5 = v4;
  v6 = [(SGSimpleTimeRange *)self absoluteRange];
  [v6 end];
  v8 = v5 - v7 > 31536000.0;

  return v8;
}

- (BOOL)isEndDatePast
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  v5 = v4;
  v6 = [(SGSimpleTimeRange *)self absoluteRange];
  [v6 end];
  v8 = v5 > v7;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  secondsFromUnixEpoch = self->_start.secondsFromUnixEpoch;
  v5 = a3;
  [v5 encodeDouble:@"start" forKey:secondsFromUnixEpoch];
  [v5 encodeDouble:@"end" forKey:self->_end.secondsFromUnixEpoch];
  [v5 encodeInteger:self->_startUTCOffsetSeconds forKey:@"startUTCOffsetSeconds"];
  [v5 encodeInteger:self->_endUTCOffsetSeconds forKey:@"endUTCOffsetSeconds"];
  [v5 encodeBool:self->_floating forKey:@"floating"];
  [v5 encodeObject:self->_startTimeZone forKey:@"startTimeZone"];
  [v5 encodeObject:self->_endTimeZone forKey:@"endTimeZone"];
}

- (SGSimpleTimeRange)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SGSimpleTimeRange;
  v5 = [(SGSimpleTimeRange *)&v15 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"start"];
    v5->_start.secondsFromUnixEpoch = v6;
    [v4 decodeDoubleForKey:@"end"];
    v5->_end.secondsFromUnixEpoch = v7;
    v5->_startUTCOffsetSeconds = [v4 decodeIntegerForKey:@"startUTCOffsetSeconds"];
    v5->_endUTCOffsetSeconds = [v4 decodeIntegerForKey:@"endUTCOffsetSeconds"];
    v5->_floating = [v4 decodeBoolForKey:@"floating"];
    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"startTimeZone"];
    startTimeZone = v5->_startTimeZone;
    v5->_startTimeZone = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"endTimeZone"];
    endTimeZone = v5->_endTimeZone;
    v5->_endTimeZone = v12;
  }

  return v5;
}

- (BOOL)isEqualToSimpleTimeRange:(id)a3
{
  v4 = a3;
  [v4 start];
  if (self->_start.secondsFromUnixEpoch != v5)
  {
    goto LABEL_8;
  }

  [v4 end];
  if (self->_end.secondsFromUnixEpoch != v6)
  {
    goto LABEL_8;
  }

  floating = self->_floating;
  if (floating != [v4 isFloating])
  {
    goto LABEL_8;
  }

  if (!self->_floating)
  {
    startUTCOffsetSeconds = self->_startUTCOffsetSeconds;
    if (startUTCOffsetSeconds == [v4 startUTCOffsetSeconds])
    {
      endUTCOffsetSeconds = self->_endUTCOffsetSeconds;
      v8 = endUTCOffsetSeconds == [v4 endUTCOffsetSeconds];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSimpleTimeRange *)self isEqualToSimpleTimeRange:v5];
  }

  return v6;
}

- (BOOL)startedMoreThan24HoursAgo
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 dateByAddingTimeInterval:-86400.0];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [(SGSimpleTimeRange *)self absoluteRange];
  [v7 start];
  v9 = v6 > v8;

  return v9;
}

- (BOOL)isValidAllDayRange
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(SGSimpleTimeRange *)self startDateComponents];
  if ([v4 hour] || objc_msgSend(v4, "minute") || objc_msgSend(v4, "second"))
  {
    v5 = 0;
  }

  else
  {
    v7 = [(SGSimpleTimeRange *)self endDateComponents];
    v5 = ![v7 hour] && !objc_msgSend(v7, "minute") && !objc_msgSend(v7, "second") || objc_msgSend(v7, "hour") >= 23 && objc_msgSend(v7, "minute") >= 59 && objc_msgSend(v7, "second") >= 59;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)endDateComponents
{
  v3 = [(SGSimpleTimeRange *)self endDate];
  v4 = [(SGSimpleTimeRange *)self endTimeZone];
  v5 = [(SGSimpleTimeRange *)self _componentsForDate:v3 timeZone:v4];

  return v5;
}

- (id)startDateComponents
{
  v3 = [(SGSimpleTimeRange *)self startDate];
  v4 = [(SGSimpleTimeRange *)self startTimeZone];
  v5 = [(SGSimpleTimeRange *)self _componentsForDate:v3 timeZone:v4];

  return v5;
}

- (id)_componentsForDate:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = v8;
  if (v6)
  {
    [v8 setTimeZone:v6];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v9 setTimeZone:v10];
  }

  v11 = [v9 components:1048828 fromDate:v5];
  [v11 setTimeZone:v6];

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
      v7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      v8 = [(SGSimpleTimeRange *)self endDate];
      v9 = [v7 secondsFromGMTForDate:v8];

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
      v7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      v8 = [(SGSimpleTimeRange *)self startDate];
      v9 = [v7 secondsFromGMTForDate:v8];

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
    v7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v8 = [SGSimpleTimeRange rangeWithStart:v7 end:v4 timeZone:v6];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (SGSimpleTimeRange)initWithStart:(SGUnixTimestamp_)a3 startUTCOffsetSeconds:(int64_t)a4 end:(SGUnixTimestamp_)a5 endUTCOffsetSeconds:(int64_t)a6
{
  v12.receiver = self;
  v12.super_class = SGSimpleTimeRange;
  result = [(SGSimpleTimeRange *)&v12 init];
  if (result)
  {
    if (a5.secondsFromUnixEpoch >= a3.secondsFromUnixEpoch)
    {
      secondsFromUnixEpoch = a5.secondsFromUnixEpoch;
    }

    else
    {
      secondsFromUnixEpoch = a3.secondsFromUnixEpoch;
    }

    result->_start.secondsFromUnixEpoch = a3.secondsFromUnixEpoch;
    result->_end.secondsFromUnixEpoch = secondsFromUnixEpoch;
    result->_startUTCOffsetSeconds = a4;
    result->_endUTCOffsetSeconds = a6;
    result->_floating = 0;
  }

  return result;
}

- (id)initUTCFloatingWithStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4
{
  v8.receiver = self;
  v8.super_class = SGSimpleTimeRange;
  result = [(SGSimpleTimeRange *)&v8 init];
  if (result)
  {
    if (a4.secondsFromUnixEpoch >= a3.secondsFromUnixEpoch)
    {
      secondsFromUnixEpoch = a4.secondsFromUnixEpoch;
    }

    else
    {
      secondsFromUnixEpoch = a3.secondsFromUnixEpoch;
    }

    *(result + 1) = a3.secondsFromUnixEpoch;
    *(result + 2) = secondsFromUnixEpoch;
    *(result + 40) = 1;
  }

  return result;
}

+ (id)floatingRangeWithLocalStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4
{
  v6 = [SGSimpleTimeRange alloc];
  [SGSimpleTimeRange toFloatingTime:a3.secondsFromUnixEpoch];
  v8 = v7;
  [SGSimpleTimeRange toFloatingTime:a4.secondsFromUnixEpoch];
  v10 = [(SGSimpleTimeRange *)v6 initUTCFloatingWithStart:v8 end:v9];

  return v10;
}

+ (id)floatingRangeWithLocalStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  [a3 timeIntervalSince1970];
  [SGSimpleTimeRange toFloatingTime:?];
  v7 = v6;
  [v5 timeIntervalSince1970];
  v9 = v8;

  [SGSimpleTimeRange toFloatingTime:v9];
  v11 = [[SGSimpleTimeRange alloc] initUTCFloatingWithStart:v7 end:v10];

  return v11;
}

+ (id)floatingRangeWithUTCStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4
{
  v4 = [[SGSimpleTimeRange alloc] initUTCFloatingWithStart:a3.secondsFromUnixEpoch end:a4.secondsFromUnixEpoch];

  return v4;
}

+ (id)floatingRangeWithUTCStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [SGSimpleTimeRange alloc];
  [v6 timeIntervalSince1970];
  v9 = v8;

  [v5 timeIntervalSince1970];
  v11 = v10;

  v12 = [(SGSimpleTimeRange *)v7 initUTCFloatingWithStart:v9 end:v11];

  return v12;
}

+ (id)utcRangeWithStart:(SGUnixTimestamp_)a3 end:(SGUnixTimestamp_)a4
{
  v6 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  v7 = [SGSimpleTimeRange rangeWithStart:v6 end:a3.secondsFromUnixEpoch timeZone:a4.secondsFromUnixEpoch];

  return v7;
}

+ (id)rangeWithStartDate:(id)a3 startTimeZone:(id)a4 endDate:(id)a5 endTimeZone:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(NSTimeZone *)v9 secondsFromGMTForDate:v12];
  v14 = [(NSTimeZone *)v10 secondsFromGMTForDate:v11];
  v15 = [SGSimpleTimeRange alloc];
  [v12 timeIntervalSince1970];
  v17 = v16;

  [v11 timeIntervalSince1970];
  v19 = v18;

  v20 = [(SGSimpleTimeRange *)v15 initWithStart:v13 startUTCOffsetSeconds:v14 end:v17 endUTCOffsetSeconds:v19];
  startTimeZone = v20->_startTimeZone;
  v20->_startTimeZone = v9;
  v22 = v9;

  endTimeZone = v20->_endTimeZone;
  v20->_endTimeZone = v10;

  return v20;
}

+ (id)rangeWithStart:(SGUnixTimestamp_)a3 startTimeZone:(id)a4 end:(SGUnixTimestamp_)a5 endTimeZone:(id)a6
{
  v9 = MEMORY[0x1E695DF00];
  v10 = a6;
  v11 = a4;
  v12 = [[v9 alloc] initWithTimeIntervalSince1970:a3.secondsFromUnixEpoch];
  v13 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:a5.secondsFromUnixEpoch];
  v14 = [SGSimpleTimeRange rangeWithStartDate:v12 startTimeZone:v11 endDate:v13 endTimeZone:v10];

  return v14;
}

+ (id)rangeWithGregorianStartComponents:(id)a3 endComponents:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v9 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  if (![SGSimpleTimeRange hasYearMonthDayComponents:v7])
  {
    v14 = 0;
    v9 = v7;
    goto LABEL_23;
  }

  v9 = [v7 copy];

  if (v8 && [SGSimpleTimeRange hasYearMonthDayComponents:v8])
  {
    v10 = [v8 copy];

    v11 = [v9 timeZone];
    v12 = [v10 timeZone];
    v13 = v12 == 0;

    if ((v11 == 0) == v13)
    {
      goto LABEL_11;
    }

    v8 = [v9 timeZone];
    [v10 setTimeZone:v8];
  }

  else
  {
    v10 = [v9 copy];
  }

LABEL_11:
  v8 = v10;
  v15 = [SGSimpleTimeRange isAllDayComponents:v9];
  if (v15 != [SGSimpleTimeRange isAllDayComponents:v8])
  {
    [v8 setHour:{objc_msgSend(v9, "hour")}];
    [v8 setMinute:{objc_msgSend(v9, "minute")}];
    [v8 setSecond:{objc_msgSend(v9, "second")}];
    [v8 setNanosecond:{objc_msgSend(v9, "nanosecond")}];
  }

  if ([SGSimpleTimeRange isAllDayComponents:v9])
  {
    [v8 setHour:24];
    [v8 setMinute:0];
    [v8 setSecond:0];
    [v8 setNanosecond:0];
  }

  v16 = [SGSimpleTimeRange dateFromGregorianComponents:v9];
  v17 = [SGSimpleTimeRange dateFromGregorianComponents:v8];
  v18 = v17;
  if (!v16)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"SGSimpleTimeRange.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];

    if (v18)
    {
      goto LABEL_17;
    }

LABEL_27:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"SGSimpleTimeRange.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];

    goto LABEL_17;
  }

  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_17:
  v19 = [v9 timeZone];

  if (v19)
  {
    v20 = [v8 timeZone];

    if (!v20)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:a1 file:@"SGSimpleTimeRange.m" lineNumber:184 description:{@"if the start has a timezone, then end should too"}];
    }

    v21 = [v9 timeZone];
    v22 = [v8 timeZone];
    v14 = [SGSimpleTimeRange rangeWithStartDate:v16 startTimeZone:v21 endDate:v18 endTimeZone:v22];
  }

  else
  {
    v14 = [SGSimpleTimeRange floatingRangeWithUTCStartDate:v16 endDate:v18];
  }

LABEL_23:

  return v14;
}

+ (BOOL)hasYearMonthDayComponents:(id)a3
{
  v3 = a3;
  v4 = [v3 year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v3, "month") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v3, "day") != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)dateFromGregorianComponents:(id)a3
{
  v5 = a3;
  v6 = [v5 calendar];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 calendar];
    v9 = [v8 calendarIdentifier];
    v10 = *MEMORY[0x1E695D850];

    if (v9 != v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"SGSimpleTimeRange.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"components.calendar == nil || components.calendar.calendarIdentifier == NSCalendarIdentifierGregorian"}];
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695D850];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v10];
  v13 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v12 setTimeZone:v13];

  v14 = [v12 dateFromComponents:v5];

  return v14;
}

+ (SGUnixTimestamp_)fromFloatingTime:(SGUnixTimestamp_)a3
{
  [SGSimpleTimeRange toFloatingTime:?];
  v5.secondsFromUnixEpoch = -(v4 - a3.secondsFromUnixEpoch * 2.0);
  return v5;
}

+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)a3 withDSTAmbiguityPreferences:(id)a4
{
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [SGSimpleTimeRange toFloatingTime:a3.secondsFromUnixEpoch];
  v10.secondsFromUnixEpoch = v9;
  v11 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:a3.secondsFromUnixEpoch];
  v13 = [v12 dateByAddingTimeInterval:-7200.0];
  v14 = [v11 nextDaylightSavingTimeTransitionAfterDate:v13];
  if (v14)
  {
    [v12 timeIntervalSinceDate:v14];
    if (v15 >= 0.0)
    {
      v16 = v15;
      [v11 daylightSavingTimeOffsetForDate:v13];
      v18 = v17;
      [v11 daylightSavingTimeOffsetForDate:v12];
      v20 = v19;
      if (v18 == v19)
      {
        [MEMORY[0x1E696AAA8] currentHandler];
        v39 = v42 = v8;
        [v39 handleFailureInMethod:a2 object:a1 file:@"SGSimpleTimeRange.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"offsetBefore != offsetAfter"}];

        v8 = v42;
      }

      v21 = v18 <= v20;
      v22 = v20 - v18;
      if (v21 && v22 >= v16)
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v10.secondsFromUnixEpoch];
        v43 = [v24 dateByAddingTimeInterval:-v22];
        v25 = [v7 calendar];
        v26 = [v25 copy];
        v27 = v26;
        v46 = v7;
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

        v7 = v46;
        v8 = v41;
      }
    }
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}

+ (SGUnixTimestamp_)toFloatingTime:(SGUnixTimestamp_)a3
{
  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:a3.secondsFromUnixEpoch];
  v6 = [v4 components:3145980 fromDate:v5];

  v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  v8 = [v4 dateFromComponents:v6];
  [v8 timeIntervalSince1970];
  v10.secondsFromUnixEpoch = v9;

  return v10;
}

@end