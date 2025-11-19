@interface CalDateRange
+ (BOOL)range:(id)a3 intersectsRange:(id)a4;
+ (BOOL)range:(id)a3 intersectsRangeWithStartDate:(id)a4 endDate:(id)a5;
+ (BOOL)rangesIntersectWithStartDate1:(id)a3 endDate1:(id)a4 startDate2:(id)a5 endDate2:(id)a6 allowSinglePointIntersection:(BOOL)a7;
+ (id)rangeByExpandingRange:(id)a3 direction:(int64_t)a4 components:(id)a5 calendar:(id)a6;
+ (id)rangeByExpandingRange:(id)a3 direction:(int64_t)a4 duration:(double)a5;
+ (id)rangeByExpandingRange:(id)a3 direction:(int64_t)a4 multiplier:(unint64_t)a5;
+ (id)rangeWithRange:(id)a3;
+ (id)rangeWithStartDate:(id)a3 duration:(double)a4;
+ (id)rangeWithStartDate:(id)a3 endDate:(id)a4;
- (BOOL)containsDate:(id)a3;
- (BOOL)containsRange:(id)a3;
- (BOOL)intersectsRange:(id)a3;
- (BOOL)intersectsRangeWithStartDate:(id)a3 endDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (CalDateRange)initWithCoder:(id)a3;
- (CalDateRange)initWithStartDate:(id)a3 duration:(double)a4;
- (CalDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
- (NSString)description;
- (double)duration;
- (id)_calculateMidnightsInCalendar:(id)a3;
- (id)briefDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)intersectionWithRange:(id)a3;
- (id)midnightsForRangeInTimeZoneString:(id)a3;
- (id)midpoint;
- (id)subtractRange:(id)a3;
- (id)unionRange:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDuration:(double)a3;
- (void)setStartDate:(id)a3 duration:(double)a4;
- (void)setStartDate:(id)a3 endDate:(id)a4;
@end

@implementation CalDateRange

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CalDateRange *)self startDate];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v4 descriptionWithLocale:v5];
  v7 = [(CalDateRange *)self endDate];
  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v7 descriptionWithLocale:v8];
  v10 = [v3 stringWithFormat:@"%@ - %@", v6, v9];

  return v10;
}

- (double)duration
{
  v3 = [(CalDateRange *)self endDate];
  v4 = [(CalDateRange *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CalDateRange *)self startDate];
  v4 = [v3 hash];
  v5 = [(CalDateRange *)self endDate];
  v6 = 3 * [v5 hash] + 2 * v4;

  return v6;
}

- (BOOL)isValid
{
  v3 = [(CalDateRange *)self startDate];
  if (v3)
  {
    v4 = [(CalDateRange *)self endDate];
    if (v4)
    {
      v5 = [(CalDateRange *)self startDate];
      v6 = [(CalDateRange *)self endDate];
      v7 = [v5 CalIsBeforeDate:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)midpoint
{
  v3 = [(CalDateRange *)self startDate];
  [(CalDateRange *)self duration];
  v5 = [v3 dateByAddingTimeInterval:v4 * 0.5];

  return v5;
}

- (CalDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CalDateRange *)self init];
  v9 = v8;
  if (v8)
  {
    [(CalDateRange *)v8 setStartDate:v6 endDate:v7];
  }

  return v9;
}

- (CalDateRange)initWithStartDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = [v6 dateByAddingTimeInterval:a4];
  v8 = [(CalDateRange *)self initWithStartDate:v6 endDate:v7];

  return v8;
}

+ (id)rangeWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithStartDate:v6 endDate:v5];

  return v7;
}

+ (id)rangeWithStartDate:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithStartDate:v5 duration:a4];

  return v6;
}

+ (id)rangeWithRange:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 startDate];
  v6 = [v3 endDate];

  v7 = [v4 rangeWithStartDate:v5 endDate:v6];

  return v7;
}

+ (id)rangeByExpandingRange:(id)a3 direction:(int64_t)a4 multiplier:(unint64_t)a5
{
  v8 = [a1 rangeWithRange:a3];
  [v8 duration];
  if (a5 < 2)
  {
    goto LABEL_6;
  }

  if (a4 == 2)
  {
    v16 = (v9 * a5 - v9) * 0.5;
    v17 = [v8 startDate];
    v11 = [v17 dateByAddingTimeInterval:-v16];

    v18 = [v8 endDate];
    v19 = [v18 dateByAddingTimeInterval:v16];

    v12 = [a1 rangeWithStartDate:v11 endDate:v19];

    goto LABEL_9;
  }

  if (a4 == 1)
  {
    v13 = -(a5 * v9);
    v14 = [v8 endDate];
    v11 = [v14 dateByAddingTimeInterval:v13];

    v15 = [v8 endDate];
    v12 = [a1 rangeWithStartDate:v11 endDate:v15];

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  v10 = v9 * a5;
  v11 = [v8 startDate];
  v12 = [a1 rangeWithStartDate:v11 duration:v10];
LABEL_9:

LABEL_10:

  return v12;
}

+ (id)rangeByExpandingRange:(id)a3 direction:(int64_t)a4 duration:(double)a5
{
  v8 = [a1 rangeWithRange:a3];
  [v8 duration];
  if (v9 >= a5)
  {
    v12 = [a1 rangeWithRange:v8];
    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v16 = [v8 startDate];
    v14 = [v16 dateByAddingTimeInterval:-(a5 * 0.5)];

    v17 = [v8 endDate];
    v18 = [v17 dateByAddingTimeInterval:a5 * 0.5];

    v12 = [a1 rangeWithStartDate:v14 endDate:v18];

    goto LABEL_9;
  }

  if (a4 == 1)
  {
    v13 = [v8 startDate];
    v14 = [v13 dateByAddingTimeInterval:-a5];

    v15 = [v8 endDate];
    v12 = [a1 rangeWithStartDate:v14 endDate:v15];

LABEL_9:
    goto LABEL_11;
  }

  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v10 = [v8 startDate];
    [v8 duration];
    v12 = [a1 rangeWithStartDate:v10 duration:v11 + a5];
  }

LABEL_11:

  return v12;
}

+ (id)rangeByExpandingRange:(id)a3 direction:(int64_t)a4 components:(id)a5 calendar:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  switch(a4)
  {
    case 2:
      v15 = [v9 startDate];
      v12 = [v11 CalDateBySubtractingComponents:v10 fromDate:v15];

      goto LABEL_7;
    case 1:
      v13 = [v9 startDate];
      v12 = [v11 CalDateBySubtractingComponents:v10 fromDate:v13];

      v14 = [v9 endDate];
LABEL_8:
      v17 = [CalDateRange rangeWithStartDate:v12 endDate:v14];

      goto LABEL_10;
    case 0:
      v12 = [v9 startDate];
LABEL_7:
      v16 = [v9 endDate];
      v14 = [v11 dateByAddingComponents:v10 toDate:v16 options:0];

      goto LABEL_8;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"start"];
  [v5 encodeObject:self->_endDate forKey:@"end"];
}

- (CalDateRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v6 = [v5 copy];
  startDate = self->_startDate;
  self->_startDate = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"end"];

  v9 = [v8 copy];
  endDate = self->_endDate;
  self->_endDate = v9;

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CalDateRange *)self startDate];
    v7 = [v5 startDate];
    if ([v6 isEqual:v7])
    {
      v8 = [(CalDateRange *)self endDate];
      v9 = [v5 endDate];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setDuration:(double)a3
{
  v6 = [(CalDateRange *)self startDate];
  v5 = [v6 dateByAddingTimeInterval:a3];
  [(CalDateRange *)self setEndDate:v5];
}

- (void)setStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  [(CalDateRange *)self setStartDate:a3];
  [(CalDateRange *)self setEndDate:v6];
}

- (void)setStartDate:(id)a3 duration:(double)a4
{
  [(CalDateRange *)self setStartDate:a3];

  [(CalDateRange *)self setDuration:a4];
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CalDateRange *)self startDate];
    if ([v4 CalIsAfterOrSameAsDate:v5])
    {
      v6 = [(CalDateRange *)self endDate];
      v7 = [v4 CalIsBeforeDate:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CalDateRange *)self startDate];
    v6 = [v4 startDate];
    if ([v5 CalIsBeforeOrSameAsDate:v6])
    {
      v7 = [(CalDateRange *)self endDate];
      v8 = [v4 endDate];
      v9 = [v7 CalIsAfterOrSameAsDate:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)intersectsRange:(id)a3
{
  v4 = a3;
  v5 = [(CalDateRange *)self startDate];
  v6 = [(CalDateRange *)self endDate];
  v7 = [v4 startDate];
  v8 = [v4 endDate];

  v9 = [CalDateRange rangesIntersectWithStartDate1:v5 endDate1:v6 startDate2:v7 endDate2:v8];
  return v9;
}

+ (BOOL)range:(id)a3 intersectsRange:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = [v5 startDate];
  v10 = [v5 endDate];

  v11 = [CalDateRange rangesIntersectWithStartDate1:v7 endDate1:v8 startDate2:v9 endDate2:v10];
  return v11;
}

+ (BOOL)range:(id)a3 intersectsRangeWithStartDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 startDate];
  v11 = [v9 endDate];

  LOBYTE(v9) = [CalDateRange rangesIntersectWithStartDate1:v10 endDate1:v11 startDate2:v8 endDate2:v7];
  return v9;
}

- (BOOL)intersectsRangeWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CalDateRange *)self startDate];
  v9 = [(CalDateRange *)self endDate];
  v10 = [CalDateRange rangesIntersectWithStartDate1:v8 endDate1:v9 startDate2:v7 endDate2:v6];

  return v10;
}

+ (BOOL)rangesIntersectWithStartDate1:(id)a3 endDate1:(id)a4 startDate2:(id)a5 endDate2:(id)a6 allowSinglePointIntersection:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  LOBYTE(v16) = 0;
  if (v11 && v12 && v13 && v14)
  {
    v17 = [v11 laterDate:v13];
    v18 = [v12 earlierDate:v15];
    if ([v17 isBeforeDate:v18])
    {
      goto LABEL_6;
    }

    v16 = [v17 isEqualToDate:v18];
    if (!v16 || a7)
    {
      goto LABEL_7;
    }

    if (v20 = [v11 isEqualToDate:v12], v21 = objc_msgSend(v13, "isEqualToDate:", v15), v20) && (v21 & 1) != 0 || ((v20 | v21) & 1) != 0 && ((objc_msgSend(v17, "CalIsBeforeDate:", v12) & 1) != 0 || (objc_msgSend(v17, "CalIsBeforeDate:", v15)))
    {
LABEL_6:
      LOBYTE(v16) = 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }

LABEL_7:
  }

  return v16;
}

- (id)intersectionWithRange:(id)a3
{
  v4 = a3;
  if ([(CalDateRange *)self intersectsRange:v4])
  {
    v5 = [(CalDateRange *)self startDate];
    v6 = [v4 startDate];
    v7 = [v5 laterDate:v6];
    v8 = [(CalDateRange *)self endDate];
    v9 = [v4 endDate];
    v10 = [v8 earlierDate:v9];
    v11 = [CalDateRange rangeWithStartDate:v7 endDate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)unionRange:(id)a3
{
  v4 = a3;
  v5 = [(CalDateRange *)self copy];
  v6 = [v4 copy];

  if (v6)
  {
    v7 = [v6 startDate];
    v8 = [v5 startDate];
    v9 = [v7 CalIsBeforeDate:v8];

    if (v9)
    {
      v10 = [v6 startDate];
      [v5 setStartDate:v10];
    }

    v11 = [v6 endDate];
    v12 = [v5 endDate];
    v13 = [v11 CalIsAfterDate:v12];

    if (v13)
    {
      v14 = [v6 endDate];
      [v5 setEndDate:v14];
    }
  }

  return v5;
}

- (id)subtractRange:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [CalDateRange rangeWithRange:v4];
  v6 = [(CalDateRange *)self isEqual:v5];

  if (v6)
  {
LABEL_3:
    v7 = objc_alloc_init(CalDisjointDateRange);
    goto LABEL_9;
  }

  if (![(CalDateRange *)self intersectsRange:v4])
  {
LABEL_8:
    v17 = [MEMORY[0x1E695DFD8] setWithObject:self];
    v7 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v17];

    goto LABEL_9;
  }

  v8 = [(CalDateRange *)self startDate];
  v9 = [v4 startDate];
  v10 = [v8 CalIsBeforeDate:v9];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v12 = [(CalDateRange *)self startDate];
    v13 = [v4 startDate];
    v14 = [CalDateRange rangeWithStartDate:v12 endDate:v13];
    [v11 addObject:v14];

    v15 = [(CalDateRange *)self endDate];
    v16 = [v4 endDate];
    LODWORD(v13) = [v15 isAfterDate:v16];

    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v19 = [(CalDateRange *)self startDate];
  v20 = [v4 startDate];
  if ([v19 CalIsAfterDate:v20])
  {

LABEL_15:
    v24 = [(CalDateRange *)self endDate];
    v25 = [v4 endDate];
    v26 = [v24 isAfterDate:v25];

    if (!v26)
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E695DFA8] set];
LABEL_17:
    v27 = [v4 endDate];
    v28 = [(CalDateRange *)self endDate];
    v29 = [CalDateRange rangeWithStartDate:v27 endDate:v28];
    [v11 addObject:v29];

LABEL_18:
    v7 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v11];

    goto LABEL_9;
  }

  v21 = [(CalDateRange *)self startDate];
  v22 = [v4 startDate];
  v23 = [v21 isEqualToDate:v22];

  if (v23)
  {
    goto LABEL_15;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CalDateRange *)self startDate];
  v6 = [(CalDateRange *)self endDate];
  v7 = [v4 initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)briefDescription
{
  if (briefDescription_onceToken != -1)
  {
    [CalDateRange briefDescription];
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CalDateRange *)self startDate];
  v5 = __32__CalDateRange_briefDescription__block_invoke_2(v4, v4);
  v6 = [(CalDateRange *)self endDate];
  v7 = __32__CalDateRange_briefDescription__block_invoke_2(v6, v6);
  v8 = [v3 stringWithFormat:@"%@ - %@", v5, v7];

  return v8;
}

uint64_t __32__CalDateRange_briefDescription__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = briefDescription_dateFormatter;
  briefDescription_dateFormatter = v0;

  [briefDescription_dateFormatter setDateFormat:@"y'/'M'/'d"];
  briefDescription_cachedBriefStrings = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

id __32__CalDateRange_briefDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = briefDescription_cachedBriefStrings;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CalDateRange_briefDescription__block_invoke_3;
  v7[3] = &unk_1E7EC7788;
  v8 = v2;
  v4 = v2;
  v5 = [v3 CALobjectForKey:v4 calculatedWithBlock:v7];

  return v5;
}

id __32__CalDateRange_briefDescription__block_invoke_3(uint64_t a1)
{
  v2 = briefDescription_dateFormatter;
  objc_sync_enter(v2);
  v3 = [briefDescription_dateFormatter stringFromDate:*(a1 + 32)];
  objc_sync_exit(v2);

  return v3;
}

- (id)_calculateMidnightsInCalendar:(id)a3
{
  v4 = a3;
  v5 = [(CalDateRange *)self startDate];
  v6 = [v4 startOfDayForDate:v5];

  v7 = [(CalDateRange *)self endDate];
  v8 = [v4 startOfDayForDate:v7];

  v9 = [(CalDateRange *)self endDate];
  LODWORD(v7) = [v8 isEqualToDate:v9];

  if (v7)
  {
    v10 = [v8 dateByAddingDays:-1 inCalendar:v4];

    v8 = v10;
  }

  v11 = [MEMORY[0x1E695DFA0] orderedSet];
  [v11 addObject:v6];
  v12 = [MEMORY[0x1E695DF10] CalComponentForDays:1];
  v13 = [v11 lastObject];
  v14 = [v13 compare:v8];

  if (v14 == -1)
  {
    v15 = 1;
    do
    {
      [v12 setDay:v15];
      v16 = [v4 dateByAddingComponents:v12 toDate:v6 options:0];
      v17 = [v4 startOfDayForDate:v16];
      v18 = [v16 isEqualToDate:v17];

      if ((v18 & 1) == 0)
      {
        v19 = [v16 dateByAddingTimeInterval:21600.0];
        v20 = [v4 startOfDayForDate:v19];

        v16 = v20;
      }

      [v11 addObject:v16];

      v21 = [v11 lastObject];
      v22 = [v21 compare:v8];

      ++v15;
    }

    while (v22 == -1);
  }

  return v11;
}

- (id)midnightsForRangeInTimeZoneString:(id)a3
{
  v4 = a3;
  if (midnightsForRangeInTimeZoneString__onceToken != -1)
  {
    [CalDateRange midnightsForRangeInTimeZoneString:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke_2;
  aBlock[3] = &unk_1E7EC77B0;
  v5 = v4;
  v49 = v5;
  v6 = _Block_copy(aBlock);
  v7 = midnightsForRangeInTimeZoneString___rangeToCache;
  objc_sync_enter(v7);
  if (([midnightsForRangeInTimeZoneString___rangeToCache containsRange:self] & 1) == 0)
  {
    if ([(CalDateRange *)self containsRange:midnightsForRangeInTimeZoneString___rangeToCache])
    {
      v8 = [CalDateRange rangeWithRange:self];
      v9 = midnightsForRangeInTimeZoneString___rangeToCache;
      midnightsForRangeInTimeZoneString___rangeToCache = v8;
    }

    else
    {
      v10 = [(CalDateRange *)self endDate];
      v11 = [midnightsForRangeInTimeZoneString___rangeToCache endDate];
      v12 = [v10 CalIsAfterDate:v11];

      [(CalDateRange *)self duration];
      v9 = [CalDateRange rangeByExpandingRange:self direction:v12 ^ 1u duration:fmax(v13, 126144000.0)];
      v14 = [midnightsForRangeInTimeZoneString___rangeToCache unionRange:v9];
      v15 = midnightsForRangeInTimeZoneString___rangeToCache;
      midnightsForRangeInTimeZoneString___rangeToCache = v14;
    }
  }

  objc_sync_exit(v7);

  v16 = midnightsForRangeInTimeZoneString___rangeToCache;
  v17 = midnightsForRangeInTimeZoneString__midnightsForTimeZoneStrings;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke_3;
  v45[3] = &unk_1E7EC77D8;
  v18 = v6;
  v47 = v18;
  v19 = v16;
  v46 = v19;
  v20 = [v17 CALsafeObjectForKey:v5 calculatedWithBlock:v45];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke_4;
  v43[3] = &unk_1E7EC7820;
  v21 = v20;
  v44 = v21;
  v22 = _Block_copy(v43);
  v23 = [(CalDateRange *)self startDate];
  v24 = [v21 containsObject:v23];

  if (!v24)
  {
    v31 = [(CalDateRange *)self startDate];
    v26 = v22[2](v22, v31);

    if (v26 < [v21 count])
    {
      v32 = [(CalDateRange *)self startDate];
      v33 = [v21 objectAtIndex:v26];
      v34 = [v32 isBeforeDate:v33];

      if (!v34)
      {
        goto LABEL_10;
      }

      if (v26)
      {
        --v26;
        goto LABEL_10;
      }
    }

    v39 = (*(v18 + 2))(v18, self);
    goto LABEL_25;
  }

  v25 = [(CalDateRange *)self startDate];
  v26 = [v21 indexOfObject:v25];

LABEL_10:
  v27 = [(CalDateRange *)self startDate];
  v28 = [(CalDateRange *)self endDate];
  v29 = [v27 isEqualToDate:v28];

  if (v29)
  {
    v30 = v26 + 1;
  }

  else
  {
    v35 = [(CalDateRange *)self endDate];
    v36 = [v21 containsObject:v35];

    [(CalDateRange *)self endDate];
    if (v36)
      v37 = {;
      v38 = [v21 indexOfObject:v37];
    }

    else
      v37 = {;
      v38 = v22[2](v22, v37);
    }

    v30 = v38;
  }

  if (v30 < v26 || v30 > [v21 count])
  {
    v40 = [(CalDateRange *)self briefDescription];
    NSLog(&cfstr_GotABadRangeTo.isa, v5, v40);

    v41 = 0;
    goto LABEL_26;
  }

  v39 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v21 range:v26 copyItems:{v30 - v26, 0}];
LABEL_25:
  v41 = v39;
LABEL_26:

  return v41;
}

void __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = midnightsForRangeInTimeZoneString__midnightsForTimeZoneStrings;
  midnightsForRangeInTimeZoneString__midnightsForTimeZoneStrings = v0;

  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v4 = midnightsForRangeInTimeZoneString___calendar;
  midnightsForRangeInTimeZoneString___calendar = v3;

  v5 = [MEMORY[0x1E695DF00] date];
  v8 = [v5 dateByAddingTimeInterval:-63072000.0];

  v6 = [[CalDateRange alloc] initWithStartDate:v8 duration:126144000.0];
  v7 = midnightsForRangeInTimeZoneString___rangeToCache;
  midnightsForRangeInTimeZoneString___rangeToCache = v6;
}

id __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = midnightsForRangeInTimeZoneString___calendar;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x1E695DFE8] timeZoneWithName:*(a1 + 32)];
  if (v5)
  {
    [midnightsForRangeInTimeZoneString___calendar setTimeZone:v5];
  }

  v6 = [v3 _calculateMidnightsInCalendar:midnightsForRangeInTimeZoneString___calendar];

  objc_sync_exit(v4);

  return v6;
}

uint64_t __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 indexOfObject:v3 inSortedRange:0 options:objc_msgSend(v2 usingComparator:{"count"), 1024, &__block_literal_global_34}];

  return v4;
}

@end