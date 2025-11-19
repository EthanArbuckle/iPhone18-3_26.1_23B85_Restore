@interface FCDateRange
+ (FCDateRange)dateRangeWithEarlierDate:(id)a3 laterDate:(id)a4;
+ (FCDateRange)dateRangeWithStartDate:(id)a3 endDate:(id)a4;
- (BOOL)containsDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFinite;
- (BOOL)isFromInfinity;
- (BOOL)isToInfinity;
- (BOOL)isWithinTimeInterval:(double)a3 ofDateRange:(id)a4;
- (BOOL)startsLaterThanDateRange:(id)a3;
- (FCDateRange)init;
- (FCDateRange)initWithCoder:(id)a3;
- (FCDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
- (FCDateRange)initWithStartDate:(id)a3 timeInterval:(double)a4;
- (NSDate)earlierDate;
- (NSDate)laterDate;
- (double)absoluteTimeInterval;
- (double)timeInterval;
- (id)description;
- (id)intersectionWithDateRange:(id)a3;
- (id)sliceForDate:(id)a3 withInterval:(double)a4;
- (id)slicesWithTimeInterval:(double)a3;
- (id)timestampDescription;
- (int64_t)compare:(id)a3;
- (int64_t)sliceIndexForDate:(id)a3 withInterval:(double)a4;
- (unint64_t)hash;
- (unint64_t)maxMillisecondsTimeIntervalSince1970;
- (unint64_t)minMillisecondsTimeIntervalSince1970;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCDateRange

- (NSDate)earlierDate
{
  v3 = [(FCDateRange *)self startDate];
  if (v3 && (v4 = v3, [(FCDateRange *)self endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(FCDateRange *)self startDate];
    v7 = [(FCDateRange *)self endDate];
    v8 = [v6 earlierDate:v7];
  }

  else
  {
    v9 = [(FCDateRange *)self startDate];

    if (v9)
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
  v3 = [(FCDateRange *)self startDate];
  if (v3 && (v4 = v3, [(FCDateRange *)self endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(FCDateRange *)self startDate];
    v7 = [(FCDateRange *)self endDate];
    v8 = [v6 laterDate:v7];
  }

  else
  {
    v9 = [(FCDateRange *)self startDate];

    if (v9)
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

+ (FCDateRange)dateRangeWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStartDate:v7 endDate:v6];

  return v8;
}

+ (FCDateRange)dateRangeWithEarlierDate:(id)a3 laterDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithEarlierDate:v7 laterDate:v6];

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

- (FCDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = FCDateRange;
  v9 = [(FCDateRange *)&v13 init];
  if (v9)
  {
    if (v7 && v8 && [v7 compare:v8] == -1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Tried to create a date range with a startDate %@ earlier than the endDate %@", v7, v8];
        *buf = 136315906;
        v15 = "[FCDateRange initWithStartDate:endDate:]";
        v16 = 2080;
        v17 = "FCDateRange.m";
        v18 = 1024;
        v19 = 43;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v9 = 0;
    }

    else
    {
      objc_storeStrong(&v9->_startDate, a3);
      objc_storeStrong(&v9->_endDate, a4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (FCDateRange)initWithStartDate:(id)a3 timeInterval:(double)a4
{
  v5 = fabs(a4);
  v6 = a3;
  v7 = [v6 fc_dateBySubtractingTimeInterval:v5];
  v8 = [(FCDateRange *)self initWithStartDate:v6 endDate:v7];

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
  v2 = [(FCDateRange *)self startDate];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isToInfinity
{
  v2 = [(FCDateRange *)self endDate];
  v3 = v2 == 0;

  return v3;
}

- (double)timeInterval
{
  if (![(FCDateRange *)self isFinite])
  {
    return 1.79769313e308;
  }

  v3 = [(FCDateRange *)self endDate];
  v4 = [(FCDateRange *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (double)absoluteTimeInterval
{
  if (![(FCDateRange *)self isFinite])
  {
    return 1.79769313e308;
  }

  v3 = [(FCDateRange *)self endDate];
  v4 = [(FCDateRange *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = fabs(v5);

  return v6;
}

- (unint64_t)minMillisecondsTimeIntervalSince1970
{
  v2 = [(FCDateRange *)self earlierDate];
  v3 = [v2 fc_millisecondTimeIntervalSince1970];

  return v3;
}

- (unint64_t)maxMillisecondsTimeIntervalSince1970
{
  v2 = [(FCDateRange *)self laterDate];
  v3 = [v2 fc_millisecondTimeIntervalSince1970];

  return v3;
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  v5 = [(FCDateRange *)self startDate];

  if (v5)
  {
    v6 = [(FCDateRange *)self startDate];
    [v6 timeIntervalSince1970];
    v8 = v7;
    [v4 timeIntervalSince1970];
    v10 = v9;

    if (v8 < v10)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = [(FCDateRange *)self endDate];

  if (v12)
  {
    v13 = [(FCDateRange *)self endDate];
    [v13 timeIntervalSince1970];
    v15 = v14;
    [v4 timeIntervalSince1970];
    v11 = v15 < v16;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:

  return v11;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69E58C0];
  v6 = [(FCDateRange *)self endDate];
  v7 = [v4 endDate];
  LODWORD(v5) = [v5 nf_object:v6 isEqualToObject:v7];

  if (v5)
  {
    v8 = MEMORY[0x1E69E58C0];
    v9 = [(FCDateRange *)self startDate];
    v10 = [v4 startDate];
    LOBYTE(v8) = [v8 nf_object:v9 isEqualToObject:v10];

    if (v8)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v20 = [(FCDateRange *)self startDate];
    if (v20)
    {
      v21 = v20;
      v22 = [v4 startDate];

      if (v22)
      {
        v15 = [(FCDateRange *)self startDate];
        v16 = [v4 startDate];
        goto LABEL_11;
      }
    }

    v24 = [(FCDateRange *)self startDate];

    v18 = v24 == 0;
    v19 = 1;
  }

  else
  {
    v12 = [(FCDateRange *)self endDate];
    if (v12)
    {
      v13 = v12;
      v14 = [v4 endDate];

      if (v14)
      {
        v15 = [(FCDateRange *)self endDate];
        v16 = [v4 endDate];
LABEL_11:
        v23 = v16;
        v11 = [v15 compare:v16];

        goto LABEL_16;
      }
    }

    v17 = [(FCDateRange *)self endDate];

    v18 = v17 == 0;
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

- (BOOL)isWithinTimeInterval:(double)a3 ofDateRange:(id)a4
{
  v6 = a4;
  v7 = [(FCDateRange *)self startDate];
  v8 = [v6 startDate];
  if ([v7 fc_isWithinTimeInterval:v8 ofDate:a3])
  {
    v9 = [(FCDateRange *)self endDate];
    v10 = [v6 endDate];
    v11 = [v9 fc_isWithinTimeInterval:v10 ofDate:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)startsLaterThanDateRange:(id)a3
{
  v4 = a3;
  v5 = [(FCDateRange *)self startDate];
  v6 = [v4 startDate];

  LOBYTE(v4) = [v5 fc_isLaterThan:v6];
  return v4;
}

- (id)slicesWithTimeInterval:(double)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__FCDateRange_slicesWithTimeInterval___block_invoke;
  v5[3] = &unk_1E7C450A8;
  *&v5[5] = a3;
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

- (id)sliceForDate:(id)a3 withInterval:(double)a4
{
  v6 = a3;
  v7 = [(FCDateRange *)self containsDate:v6];
  if (a4 <= 0.0 || !v7)
  {
    v22 = 0;
  }

  else
  {
    v9 = [(FCDateRange *)self startDate];
    [v9 timeIntervalSince1970];
    v11 = v10;
    [v6 timeIntervalSince1970];
    v13 = v11 - v12;

    v14 = vcvtmd_s64_f64(v13 / a4) + 1;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __41__FCDateRange_sliceForDate_withInterval___block_invoke;
    v24[3] = &unk_1E7C450D0;
    v15 = -(floor(v13 / a4) * a4);
    v24[4] = self;
    v24[5] = v14;
    *&v24[6] = a4;
    v16 = __41__FCDateRange_sliceForDate_withInterval___block_invoke(v24);
    v17 = [FCDateRange alloc];
    v18 = [(FCDateRange *)self startDate];
    v19 = [v18 dateByAddingTimeInterval:v15];
    v20 = [(FCDateRange *)self startDate];
    v21 = [v20 dateByAddingTimeInterval:v16];
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

- (int64_t)sliceIndexForDate:(id)a3 withInterval:(double)a4
{
  v6 = a3;
  v7 = [(FCDateRange *)self containsDate:v6];
  if (a4 <= 0.0 || !v7)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = [(FCDateRange *)self startDate];
    [v9 timeIntervalSince1970];
    v11 = v10;
    [v6 timeIntervalSince1970];
    v13 = vcvtmd_s64_f64((v11 - v12) / a4);
  }

  return v13;
}

- (id)intersectionWithDateRange:(id)a3
{
  v4 = a3;
  if (-[FCDateRange isFromInfinity](self, "isFromInfinity") && ([v4 isFromInfinity] & 1) != 0)
  {
    v5 = 0;
  }

  else if ([(FCDateRange *)self isFromInfinity])
  {
    v5 = [v4 startDate];
  }

  else
  {
    v6 = [v4 isFromInfinity];
    v5 = [(FCDateRange *)self startDate];
    if ((v6 & 1) == 0)
    {
      v7 = [v4 startDate];
      v8 = [v5 earlierDate:v7];

      v5 = v8;
    }
  }

  if (-[FCDateRange isToInfinity](self, "isToInfinity") && ([v4 isToInfinity] & 1) != 0)
  {
    v9 = 0;
  }

  else if ([(FCDateRange *)self isToInfinity])
  {
    v9 = [v4 endDate];
  }

  else
  {
    v10 = [v4 isToInfinity];
    v9 = [(FCDateRange *)self endDate];
    if ((v10 & 1) == 0)
    {
      v11 = [v4 endDate];
      v12 = [v9 laterDate:v11];

      v9 = v12;
    }
  }

  if ([v9 fc_isLaterThan:v5])
  {
    v13 = v5;

    v9 = v13;
  }

  v14 = [FCDateRange dateRangeWithStartDate:v5 endDate:v9];

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
    v5 = [(FCDateRange *)self startDate];
    v6 = [v4 stringFromDate:v5];
    v7 = _MergedGlobals_191;
    v8 = [(FCDateRange *)self endDate];
    v9 = [v7 stringFromDate:v8];
    v10 = [v3 stringWithFormat:@"<%@ to %@>", v6, v9];

LABEL_10:
    goto LABEL_11;
  }

  v11 = [(FCDateRange *)self startDate];

  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = _MergedGlobals_191;
    v5 = [(FCDateRange *)self startDate];
    v6 = [v13 stringFromDate:v5];
    [v12 stringWithFormat:@"<Infinite from %@>", v6];
    v10 = LABEL_9:;
    goto LABEL_10;
  }

  v14 = [(FCDateRange *)self endDate];

  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = _MergedGlobals_191;
    v5 = [(FCDateRange *)self endDate];
    v6 = [v16 stringFromDate:v5];
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
  v3 = [(FCDateRange *)self startDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
  }

  v6 = v5;

  v7 = [(FCDateRange *)self endDate];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF00] distantFuture];
  }

  v10 = v9;

  [v6 timeIntervalSince1970];
  v12 = (v11 * 1000.0);
  [v10 timeIntervalSince1970];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", v12, (v13 * 1000.0)];

  return v14;
}

- (unint64_t)hash
{
  v3 = [(FCDateRange *)self startDate];
  v4 = [v3 hash];
  v5 = [(FCDateRange *)self endDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(FCDateRange *)self startDate];
  v6 = [v4 startDate];
  if (v5 | v6 && ![v5 isEqualToDate:v6])
  {
    v9 = 0;
  }

  else
  {
    v7 = [(FCDateRange *)self endDate];
    v8 = [v4 endDate];
    if (v7 | v8)
    {
      v9 = [v7 isEqualToDate:v8];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (FCDateRange)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"startDate"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  }

  else
  {
    v5 = 0;
  }

  if ([v4 containsValueForKey:@"endDate"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FCDateRange *)self initWithStartDate:v5 endDate:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(FCDateRange *)self startDate];

  if (v4)
  {
    v5 = [(FCDateRange *)self startDate];
    [v8 encodeObject:v5 forKey:@"startDate"];
  }

  v6 = [(FCDateRange *)self endDate];

  if (v6)
  {
    v7 = [(FCDateRange *)self endDate];
    [v8 encodeObject:v7 forKey:@"endDate"];
  }
}

@end