@interface FCDateRange
+ (FCDateRange)dateRangeWithEarlierDate:(id)date laterDate:(id)laterDate;
+ (FCDateRange)dateRangeWithStartDate:(id)date endDate:(id)endDate;
- (BOOL)containsDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFinite;
- (BOOL)isFromInfinity;
- (BOOL)isToInfinity;
- (BOOL)isWithinTimeInterval:(double)interval ofDateRange:(id)range;
- (BOOL)startsLaterThanDateRange:(id)range;
- (FCDateRange)init;
- (FCDateRange)initWithCoder:(id)coder;
- (FCDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (FCDateRange)initWithStartDate:(id)date timeInterval:(double)interval;
- (NSDate)earlierDate;
- (NSDate)laterDate;
- (double)absoluteTimeInterval;
- (double)timeInterval;
- (id)description;
- (id)intersectionWithDateRange:(id)range;
- (id)sliceForDate:(id)date withInterval:(double)interval;
- (id)slicesWithTimeInterval:(double)interval;
- (id)timestampDescription;
- (int64_t)compare:(id)compare;
- (int64_t)sliceIndexForDate:(id)date withInterval:(double)interval;
- (unint64_t)hash;
- (unint64_t)maxMillisecondsTimeIntervalSince1970;
- (unint64_t)minMillisecondsTimeIntervalSince1970;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCDateRange

- (NSDate)earlierDate
{
  startDate = [(FCDateRange *)self startDate];
  if (startDate && (v4 = startDate, [(FCDateRange *)self endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    startDate2 = [(FCDateRange *)self startDate];
    endDate = [(FCDateRange *)self endDate];
    v8 = [startDate2 earlierDate:endDate];
  }

  else
  {
    startDate3 = [(FCDateRange *)self startDate];

    if (startDate3)
    {
      [(FCDateRange *)self startDate];
    }

    else
    {
      [(FCDateRange *)self endDate];
    }
    v8 = ;
  }

  return v8;
}

- (NSDate)laterDate
{
  startDate = [(FCDateRange *)self startDate];
  if (startDate && (v4 = startDate, [(FCDateRange *)self endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    startDate2 = [(FCDateRange *)self startDate];
    endDate = [(FCDateRange *)self endDate];
    v8 = [startDate2 laterDate:endDate];
  }

  else
  {
    startDate3 = [(FCDateRange *)self startDate];

    if (startDate3)
    {
      [(FCDateRange *)self startDate];
    }

    else
    {
      [(FCDateRange *)self endDate];
    }
    v8 = ;
  }

  return v8;
}

+ (FCDateRange)dateRangeWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [[self alloc] initWithStartDate:dateCopy endDate:endDateCopy];

  return v8;
}

+ (FCDateRange)dateRangeWithEarlierDate:(id)date laterDate:(id)laterDate
{
  laterDateCopy = laterDate;
  dateCopy = date;
  v8 = [[self alloc] initWithEarlierDate:dateCopy laterDate:laterDateCopy];

  return v8;
}

- (FCDateRange)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCDateRange init]";
    v10 = 2080;
    v11 = "FCDateRange.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCDateRange init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v13.receiver = self;
  v13.super_class = FCDateRange;
  v9 = [(FCDateRange *)&v13 init];
  if (v9)
  {
    if (dateCopy && endDateCopy && [dateCopy compare:endDateCopy] == -1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        endDateCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Tried to create a date range with a startDate %@ earlier than the endDate %@", dateCopy, endDateCopy];
        *buf = 136315906;
        v15 = "[FCDateRange initWithStartDate:endDate:]";
        v16 = 2080;
        v17 = "FCDateRange.m";
        v18 = 1024;
        v19 = 43;
        v20 = 2114;
        v21 = endDateCopy;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v9 = 0;
    }

    else
    {
      objc_storeStrong(&v9->_startDate, date);
      objc_storeStrong(&v9->_endDate, endDate);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (FCDateRange)initWithStartDate:(id)date timeInterval:(double)interval
{
  v5 = fabs(interval);
  dateCopy = date;
  v7 = [dateCopy fc_dateBySubtractingTimeInterval:v5];
  v8 = [(FCDateRange *)self initWithStartDate:dateCopy endDate:v7];

  return v8;
}

- (BOOL)isFinite
{
  if ([(FCDateRange *)self isFromInfinity])
  {
    return 0;
  }

  else
  {
    return ![(FCDateRange *)self isToInfinity];
  }
}

- (BOOL)isFromInfinity
{
  startDate = [(FCDateRange *)self startDate];
  v3 = startDate == 0;

  return v3;
}

- (BOOL)isToInfinity
{
  endDate = [(FCDateRange *)self endDate];
  v3 = endDate == 0;

  return v3;
}

- (double)timeInterval
{
  if (![(FCDateRange *)self isFinite])
  {
    return 1.79769313e308;
  }

  endDate = [(FCDateRange *)self endDate];
  startDate = [(FCDateRange *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (double)absoluteTimeInterval
{
  if (![(FCDateRange *)self isFinite])
  {
    return 1.79769313e308;
  }

  endDate = [(FCDateRange *)self endDate];
  startDate = [(FCDateRange *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = fabs(v5);

  return v6;
}

- (unint64_t)minMillisecondsTimeIntervalSince1970
{
  earlierDate = [(FCDateRange *)self earlierDate];
  fc_millisecondTimeIntervalSince1970 = [earlierDate fc_millisecondTimeIntervalSince1970];

  return fc_millisecondTimeIntervalSince1970;
}

- (unint64_t)maxMillisecondsTimeIntervalSince1970
{
  laterDate = [(FCDateRange *)self laterDate];
  fc_millisecondTimeIntervalSince1970 = [laterDate fc_millisecondTimeIntervalSince1970];

  return fc_millisecondTimeIntervalSince1970;
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  startDate = [(FCDateRange *)self startDate];

  if (startDate)
  {
    startDate2 = [(FCDateRange *)self startDate];
    [startDate2 timeIntervalSince1970];
    v8 = v7;
    [dateCopy timeIntervalSince1970];
    v10 = v9;

    if (v8 < v10)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!dateCopy)
  {
    goto LABEL_3;
  }

  endDate = [(FCDateRange *)self endDate];

  if (endDate)
  {
    endDate2 = [(FCDateRange *)self endDate];
    [endDate2 timeIntervalSince1970];
    v15 = v14;
    [dateCopy timeIntervalSince1970];
    v11 = v15 < v16;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = MEMORY[0x1E69E58C0];
  endDate = [(FCDateRange *)self endDate];
  endDate2 = [compareCopy endDate];
  LODWORD(v5) = [v5 nf_object:endDate isEqualToObject:endDate2];

  if (v5)
  {
    v8 = MEMORY[0x1E69E58C0];
    startDate = [(FCDateRange *)self startDate];
    startDate2 = [compareCopy startDate];
    LOBYTE(v8) = [v8 nf_object:startDate isEqualToObject:startDate2];

    if (v8)
    {
      v11 = 0;
      goto LABEL_16;
    }

    startDate3 = [(FCDateRange *)self startDate];
    if (startDate3)
    {
      v21 = startDate3;
      startDate4 = [compareCopy startDate];

      if (startDate4)
      {
        startDate5 = [(FCDateRange *)self startDate];
        startDate6 = [compareCopy startDate];
        goto LABEL_11;
      }
    }

    startDate7 = [(FCDateRange *)self startDate];

    v18 = startDate7 == 0;
    v19 = 1;
  }

  else
  {
    endDate3 = [(FCDateRange *)self endDate];
    if (endDate3)
    {
      v13 = endDate3;
      endDate4 = [compareCopy endDate];

      if (endDate4)
      {
        startDate5 = [(FCDateRange *)self endDate];
        startDate6 = [compareCopy endDate];
LABEL_11:
        v23 = startDate6;
        v11 = [startDate5 compare:startDate6];

        goto LABEL_16;
      }
    }

    endDate5 = [(FCDateRange *)self endDate];

    v18 = endDate5 == 0;
    v19 = -1;
  }

  if (v18)
  {
    v11 = v19;
  }

  else
  {
    v11 = -v19;
  }

LABEL_16:

  return v11;
}

- (BOOL)isWithinTimeInterval:(double)interval ofDateRange:(id)range
{
  rangeCopy = range;
  startDate = [(FCDateRange *)self startDate];
  startDate2 = [rangeCopy startDate];
  if ([startDate fc_isWithinTimeInterval:startDate2 ofDate:interval])
  {
    endDate = [(FCDateRange *)self endDate];
    endDate2 = [rangeCopy endDate];
    v11 = [endDate fc_isWithinTimeInterval:endDate2 ofDate:interval];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)startsLaterThanDateRange:(id)range
{
  rangeCopy = range;
  startDate = [(FCDateRange *)self startDate];
  startDate2 = [rangeCopy startDate];

  LOBYTE(rangeCopy) = [startDate fc_isLaterThan:startDate2];
  return rangeCopy;
}

- (id)slicesWithTimeInterval:(double)interval
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__FCDateRange_slicesWithTimeInterval___block_invoke;
  v5[3] = &unk_1E7C450A8;
  *&v5[5] = interval;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DEC8] fc_array:v5];

  return v3;
}

void __38__FCDateRange_slicesWithTimeInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSince1970];
  v7 = vcvtmd_s64_f64(v6);

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSince1970];
  v10 = vcvtmd_s64_f64(v9);

  if ([*(a1 + 32) isFinite] && (v7 - v10 > v4 || v10 % v4 > v7 % v4))
  {
    if (v7 > v10)
    {
      v11 = v7 / v4 * v4;
      do
      {
        v12 = [FCDateRange alloc];
        v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v7];
        v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v11];
        v15 = [(FCDateRange *)v12 initWithStartDate:v13 endDate:v14];
        [v3 addObject:v15];

        v16 = v11 - v4;
        if (v11 - v4 <= v10)
        {
          v16 = v10;
        }

        v7 = v11;
        v17 = v11 <= v10;
        v11 = v16;
      }

      while (!v17);
    }
  }

  else
  {
    [v3 addObject:*(a1 + 32)];
  }
}

BOOL __38__FCDateRange_slicesWithTimeInterval___block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) isFinite])
  {
    return 1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  return v2 - v3 <= v4 && v3 % v4 <= v2 % v4;
}

- (id)sliceForDate:(id)date withInterval:(double)interval
{
  dateCopy = date;
  v7 = [(FCDateRange *)self containsDate:dateCopy];
  if (interval <= 0.0 || !v7)
  {
    v22 = 0;
  }

  else
  {
    startDate = [(FCDateRange *)self startDate];
    [startDate timeIntervalSince1970];
    v11 = v10;
    [dateCopy timeIntervalSince1970];
    v13 = v11 - v12;

    v14 = vcvtmd_s64_f64(v13 / interval) + 1;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __41__FCDateRange_sliceForDate_withInterval___block_invoke;
    v24[3] = &unk_1E7C450D0;
    v15 = -(floor(v13 / interval) * interval);
    v24[4] = self;
    v24[5] = v14;
    *&v24[6] = interval;
    v16 = __41__FCDateRange_sliceForDate_withInterval___block_invoke(v24);
    v17 = [FCDateRange alloc];
    startDate2 = [(FCDateRange *)self startDate];
    v19 = [startDate2 dateByAddingTimeInterval:v15];
    startDate3 = [(FCDateRange *)self startDate];
    v21 = [startDate3 dateByAddingTimeInterval:v16];
    v22 = [(FCDateRange *)v17 initWithStartDate:v19 endDate:v21];
  }

  return v22;
}

double __41__FCDateRange_sliceForDate_withInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) endDate];

  v3 = -(*(a1 + 48) * *(a1 + 40));
  if (v2)
  {
    v4 = [*(a1 + 32) endDate];
    [v4 timeIntervalSince1970];
    v6 = v5;
    v7 = [*(a1 + 32) startDate];
    [v7 timeIntervalSince1970];
    v9 = v6 - v8;

    if (v3 < v9)
    {
      return v9;
    }
  }

  return v3;
}

- (int64_t)sliceIndexForDate:(id)date withInterval:(double)interval
{
  dateCopy = date;
  v7 = [(FCDateRange *)self containsDate:dateCopy];
  if (interval <= 0.0 || !v7)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    startDate = [(FCDateRange *)self startDate];
    [startDate timeIntervalSince1970];
    v11 = v10;
    [dateCopy timeIntervalSince1970];
    v13 = vcvtmd_s64_f64((v11 - v12) / interval);
  }

  return v13;
}

- (id)intersectionWithDateRange:(id)range
{
  rangeCopy = range;
  if (-[FCDateRange isFromInfinity](self, "isFromInfinity") && ([rangeCopy isFromInfinity] & 1) != 0)
  {
    startDate = 0;
  }

  else if ([(FCDateRange *)self isFromInfinity])
  {
    startDate = [rangeCopy startDate];
  }

  else
  {
    isFromInfinity = [rangeCopy isFromInfinity];
    startDate = [(FCDateRange *)self startDate];
    if ((isFromInfinity & 1) == 0)
    {
      startDate2 = [rangeCopy startDate];
      v8 = [startDate earlierDate:startDate2];

      startDate = v8;
    }
  }

  if (-[FCDateRange isToInfinity](self, "isToInfinity") && ([rangeCopy isToInfinity] & 1) != 0)
  {
    endDate = 0;
  }

  else if ([(FCDateRange *)self isToInfinity])
  {
    endDate = [rangeCopy endDate];
  }

  else
  {
    isToInfinity = [rangeCopy isToInfinity];
    endDate = [(FCDateRange *)self endDate];
    if ((isToInfinity & 1) == 0)
    {
      endDate2 = [rangeCopy endDate];
      v12 = [endDate laterDate:endDate2];

      endDate = v12;
    }
  }

  if ([endDate fc_isLaterThan:startDate])
  {
    v13 = startDate;

    endDate = v13;
  }

  v14 = [FCDateRange dateRangeWithStartDate:startDate endDate:endDate];

  return v14;
}

- (id)description
{
  if (qword_1EDB277F0 != -1)
  {
    dispatch_once(&qword_1EDB277F0, &__block_literal_global_143);
  }

  if ([(FCDateRange *)self isFinite])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = _MergedGlobals_191;
    startDate = [(FCDateRange *)self startDate];
    v6 = [v4 stringFromDate:startDate];
    v7 = _MergedGlobals_191;
    endDate = [(FCDateRange *)self endDate];
    v9 = [v7 stringFromDate:endDate];
    v10 = [v3 stringWithFormat:@"<%@ to %@>", v6, v9];

LABEL_10:
    goto LABEL_11;
  }

  startDate2 = [(FCDateRange *)self startDate];

  if (startDate2)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = _MergedGlobals_191;
    startDate = [(FCDateRange *)self startDate];
    v6 = [v13 stringFromDate:startDate];
    [v12 stringWithFormat:@"<Infinite from %@>", v6];
    v10 = LABEL_9:;
    goto LABEL_10;
  }

  endDate2 = [(FCDateRange *)self endDate];

  if (endDate2)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = _MergedGlobals_191;
    startDate = [(FCDateRange *)self endDate];
    v6 = [v16 stringFromDate:startDate];
    [v15 stringWithFormat:@"<Infinite to %@>", v6];
    goto LABEL_9;
  }

  v10 = @"<Empty>";
LABEL_11:

  return v10;
}

uint64_t __26__FCDateRange_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_191;
  _MergedGlobals_191 = v0;

  v2 = _MergedGlobals_191;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (id)timestampDescription
{
  startDate = [(FCDateRange *)self startDate];
  v4 = startDate;
  if (startDate)
  {
    distantPast = startDate;
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  v6 = distantPast;

  endDate = [(FCDateRange *)self endDate];
  v8 = endDate;
  if (endDate)
  {
    distantFuture = endDate;
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  }

  v10 = distantFuture;

  [v6 timeIntervalSince1970];
  v12 = (v11 * 1000.0);
  [v10 timeIntervalSince1970];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", v12, (v13 * 1000.0)];

  return v14;
}

- (unint64_t)hash
{
  startDate = [(FCDateRange *)self startDate];
  v4 = [startDate hash];
  endDate = [(FCDateRange *)self endDate];
  v6 = [endDate hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  startDate = [(FCDateRange *)self startDate];
  startDate2 = [equalCopy startDate];
  if (startDate | startDate2 && ![startDate isEqualToDate:startDate2])
  {
    v9 = 0;
  }

  else
  {
    endDate = [(FCDateRange *)self endDate];
    endDate2 = [equalCopy endDate];
    if (endDate | endDate2)
    {
      v9 = [endDate isEqualToDate:endDate2];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (FCDateRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"startDate"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  }

  else
  {
    v5 = 0;
  }

  if ([coderCopy containsValueForKey:@"endDate"])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FCDateRange *)self initWithStartDate:v5 endDate:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(FCDateRange *)self startDate];

  if (startDate)
  {
    startDate2 = [(FCDateRange *)self startDate];
    [coderCopy encodeObject:startDate2 forKey:@"startDate"];
  }

  endDate = [(FCDateRange *)self endDate];

  if (endDate)
  {
    endDate2 = [(FCDateRange *)self endDate];
    [coderCopy encodeObject:endDate2 forKey:@"endDate"];
  }
}

@end