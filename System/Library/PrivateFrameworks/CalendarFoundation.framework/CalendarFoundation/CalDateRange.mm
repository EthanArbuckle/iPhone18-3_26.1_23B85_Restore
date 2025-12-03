@interface CalDateRange
+ (BOOL)range:(id)range intersectsRange:(id)intersectsRange;
+ (BOOL)range:(id)range intersectsRangeWithStartDate:(id)date endDate:(id)endDate;
+ (BOOL)rangesIntersectWithStartDate1:(id)date1 endDate1:(id)endDate1 startDate2:(id)date2 endDate2:(id)endDate2 allowSinglePointIntersection:(BOOL)intersection;
+ (id)rangeByExpandingRange:(id)range direction:(int64_t)direction components:(id)components calendar:(id)calendar;
+ (id)rangeByExpandingRange:(id)range direction:(int64_t)direction duration:(double)duration;
+ (id)rangeByExpandingRange:(id)range direction:(int64_t)direction multiplier:(unint64_t)multiplier;
+ (id)rangeWithRange:(id)range;
+ (id)rangeWithStartDate:(id)date duration:(double)duration;
+ (id)rangeWithStartDate:(id)date endDate:(id)endDate;
- (BOOL)containsDate:(id)date;
- (BOOL)containsRange:(id)range;
- (BOOL)intersectsRange:(id)range;
- (BOOL)intersectsRangeWithStartDate:(id)date endDate:(id)endDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CalDateRange)initWithCoder:(id)coder;
- (CalDateRange)initWithStartDate:(id)date duration:(double)duration;
- (CalDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (NSString)description;
- (double)duration;
- (id)_calculateMidnightsInCalendar:(id)calendar;
- (id)briefDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intersectionWithRange:(id)range;
- (id)midnightsForRangeInTimeZoneString:(id)string;
- (id)midpoint;
- (id)subtractRange:(id)range;
- (id)unionRange:(id)range;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDuration:(double)duration;
- (void)setStartDate:(id)date duration:(double)duration;
- (void)setStartDate:(id)date endDate:(id)endDate;
@end

@implementation CalDateRange

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(CalDateRange *)self startDate];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [startDate descriptionWithLocale:currentLocale];
  endDate = [(CalDateRange *)self endDate];
  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [endDate descriptionWithLocale:currentLocale2];
  v10 = [v3 stringWithFormat:@"%@ - %@", v6, v9];

  return v10;
}

- (double)duration
{
  endDate = [(CalDateRange *)self endDate];
  startDate = [(CalDateRange *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (unint64_t)hash
{
  startDate = [(CalDateRange *)self startDate];
  v4 = [startDate hash];
  endDate = [(CalDateRange *)self endDate];
  v6 = 3 * [endDate hash] + 2 * v4;

  return v6;
}

- (BOOL)isValid
{
  startDate = [(CalDateRange *)self startDate];
  if (startDate)
  {
    endDate = [(CalDateRange *)self endDate];
    if (endDate)
    {
      startDate2 = [(CalDateRange *)self startDate];
      endDate2 = [(CalDateRange *)self endDate];
      v7 = [startDate2 CalIsBeforeDate:endDate2];
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
  startDate = [(CalDateRange *)self startDate];
  [(CalDateRange *)self duration];
  v5 = [startDate dateByAddingTimeInterval:v4 * 0.5];

  return v5;
}

- (CalDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = [(CalDateRange *)self init];
  v9 = v8;
  if (v8)
  {
    [(CalDateRange *)v8 setStartDate:dateCopy endDate:endDateCopy];
  }

  return v9;
}

- (CalDateRange)initWithStartDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v7 = [dateCopy dateByAddingTimeInterval:duration];
  v8 = [(CalDateRange *)self initWithStartDate:dateCopy endDate:v7];

  return v8;
}

+ (id)rangeWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy];

  return v7;
}

+ (id)rangeWithStartDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v6 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy duration:duration];

  return v6;
}

+ (id)rangeWithRange:(id)range
{
  rangeCopy = range;
  v4 = objc_opt_class();
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  v7 = [v4 rangeWithStartDate:startDate endDate:endDate];

  return v7;
}

+ (id)rangeByExpandingRange:(id)range direction:(int64_t)direction multiplier:(unint64_t)multiplier
{
  v8 = [self rangeWithRange:range];
  [v8 duration];
  if (multiplier < 2)
  {
    goto LABEL_6;
  }

  if (direction == 2)
  {
    v16 = (v9 * multiplier - v9) * 0.5;
    startDate = [v8 startDate];
    startDate2 = [startDate dateByAddingTimeInterval:-v16];

    endDate = [v8 endDate];
    v19 = [endDate dateByAddingTimeInterval:v16];

    v12 = [self rangeWithStartDate:startDate2 endDate:v19];

    goto LABEL_9;
  }

  if (direction == 1)
  {
    v13 = -(multiplier * v9);
    endDate2 = [v8 endDate];
    startDate2 = [endDate2 dateByAddingTimeInterval:v13];

    endDate3 = [v8 endDate];
    v12 = [self rangeWithStartDate:startDate2 endDate:endDate3];

    goto LABEL_9;
  }

  if (direction)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  v10 = v9 * multiplier;
  startDate2 = [v8 startDate];
  v12 = [self rangeWithStartDate:startDate2 duration:v10];
LABEL_9:

LABEL_10:

  return v12;
}

+ (id)rangeByExpandingRange:(id)range direction:(int64_t)direction duration:(double)duration
{
  v8 = [self rangeWithRange:range];
  [v8 duration];
  if (v9 >= duration)
  {
    duration = [self rangeWithRange:v8];
    goto LABEL_11;
  }

  if (direction == 2)
  {
    startDate = [v8 startDate];
    v14 = [startDate dateByAddingTimeInterval:-(duration * 0.5)];

    endDate = [v8 endDate];
    v18 = [endDate dateByAddingTimeInterval:duration * 0.5];

    duration = [self rangeWithStartDate:v14 endDate:v18];

    goto LABEL_9;
  }

  if (direction == 1)
  {
    startDate2 = [v8 startDate];
    v14 = [startDate2 dateByAddingTimeInterval:-duration];

    endDate2 = [v8 endDate];
    duration = [self rangeWithStartDate:v14 endDate:endDate2];

LABEL_9:
    goto LABEL_11;
  }

  if (direction)
  {
    duration = 0;
  }

  else
  {
    startDate3 = [v8 startDate];
    [v8 duration];
    duration = [self rangeWithStartDate:startDate3 duration:v11 + duration];
  }

LABEL_11:

  return duration;
}

+ (id)rangeByExpandingRange:(id)range direction:(int64_t)direction components:(id)components calendar:(id)calendar
{
  rangeCopy = range;
  componentsCopy = components;
  calendarCopy = calendar;
  switch(direction)
  {
    case 2:
      startDate = [rangeCopy startDate];
      startDate3 = [calendarCopy CalDateBySubtractingComponents:componentsCopy fromDate:startDate];

      goto LABEL_7;
    case 1:
      startDate2 = [rangeCopy startDate];
      startDate3 = [calendarCopy CalDateBySubtractingComponents:componentsCopy fromDate:startDate2];

      endDate = [rangeCopy endDate];
LABEL_8:
      v17 = [CalDateRange rangeWithStartDate:startDate3 endDate:endDate];

      goto LABEL_10;
    case 0:
      startDate3 = [rangeCopy startDate];
LABEL_7:
      endDate2 = [rangeCopy endDate];
      endDate = [calendarCopy dateByAddingComponents:componentsCopy toDate:endDate2 options:0];

      goto LABEL_8;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"start"];
  [coderCopy encodeObject:self->_endDate forKey:@"end"];
}

- (CalDateRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v6 = [v5 copy];
  startDate = self->_startDate;
  self->_startDate = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"end"];

  v9 = [v8 copy];
  endDate = self->_endDate;
  self->_endDate = v9;

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    startDate = [(CalDateRange *)self startDate];
    startDate2 = [v5 startDate];
    if ([startDate isEqual:startDate2])
    {
      endDate = [(CalDateRange *)self endDate];
      endDate2 = [v5 endDate];
      v10 = [endDate isEqual:endDate2];
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

- (void)setDuration:(double)duration
{
  startDate = [(CalDateRange *)self startDate];
  v5 = [startDate dateByAddingTimeInterval:duration];
  [(CalDateRange *)self setEndDate:v5];
}

- (void)setStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  [(CalDateRange *)self setStartDate:date];
  [(CalDateRange *)self setEndDate:endDateCopy];
}

- (void)setStartDate:(id)date duration:(double)duration
{
  [(CalDateRange *)self setStartDate:date];

  [(CalDateRange *)self setDuration:duration];
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    startDate = [(CalDateRange *)self startDate];
    if ([dateCopy CalIsAfterOrSameAsDate:startDate])
    {
      endDate = [(CalDateRange *)self endDate];
      v7 = [dateCopy CalIsBeforeDate:endDate];
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

- (BOOL)containsRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    startDate = [(CalDateRange *)self startDate];
    startDate2 = [rangeCopy startDate];
    if ([startDate CalIsBeforeOrSameAsDate:startDate2])
    {
      endDate = [(CalDateRange *)self endDate];
      endDate2 = [rangeCopy endDate];
      v9 = [endDate CalIsAfterOrSameAsDate:endDate2];
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

- (BOOL)intersectsRange:(id)range
{
  rangeCopy = range;
  startDate = [(CalDateRange *)self startDate];
  endDate = [(CalDateRange *)self endDate];
  startDate2 = [rangeCopy startDate];
  endDate2 = [rangeCopy endDate];

  v9 = [CalDateRange rangesIntersectWithStartDate1:startDate endDate1:endDate startDate2:startDate2 endDate2:endDate2];
  return v9;
}

+ (BOOL)range:(id)range intersectsRange:(id)intersectsRange
{
  intersectsRangeCopy = intersectsRange;
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  startDate2 = [intersectsRangeCopy startDate];
  endDate2 = [intersectsRangeCopy endDate];

  v11 = [CalDateRange rangesIntersectWithStartDate1:startDate endDate1:endDate startDate2:startDate2 endDate2:endDate2];
  return v11;
}

+ (BOOL)range:(id)range intersectsRangeWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  LOBYTE(rangeCopy) = [CalDateRange rangesIntersectWithStartDate1:startDate endDate1:endDate startDate2:dateCopy endDate2:endDateCopy];
  return rangeCopy;
}

- (BOOL)intersectsRangeWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  startDate = [(CalDateRange *)self startDate];
  endDate = [(CalDateRange *)self endDate];
  v10 = [CalDateRange rangesIntersectWithStartDate1:startDate endDate1:endDate startDate2:dateCopy endDate2:endDateCopy];

  return v10;
}

+ (BOOL)rangesIntersectWithStartDate1:(id)date1 endDate1:(id)endDate1 startDate2:(id)date2 endDate2:(id)endDate2 allowSinglePointIntersection:(BOOL)intersection
{
  date1Copy = date1;
  endDate1Copy = endDate1;
  date2Copy = date2;
  endDate2Copy = endDate2;
  v15 = endDate2Copy;
  LOBYTE(v16) = 0;
  if (date1Copy && endDate1Copy && date2Copy && endDate2Copy)
  {
    v17 = [date1Copy laterDate:date2Copy];
    v18 = [endDate1Copy earlierDate:v15];
    if ([v17 isBeforeDate:v18])
    {
      goto LABEL_6;
    }

    v16 = [v17 isEqualToDate:v18];
    if (!v16 || intersection)
    {
      goto LABEL_7;
    }

    if (v20 = [date1Copy isEqualToDate:endDate1Copy], v21 = objc_msgSend(date2Copy, "isEqualToDate:", v15), v20) && (v21 & 1) != 0 || ((v20 | v21) & 1) != 0 && ((objc_msgSend(v17, "CalIsBeforeDate:", endDate1Copy) & 1) != 0 || (objc_msgSend(v17, "CalIsBeforeDate:", v15)))
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

- (id)intersectionWithRange:(id)range
{
  rangeCopy = range;
  if ([(CalDateRange *)self intersectsRange:rangeCopy])
  {
    startDate = [(CalDateRange *)self startDate];
    startDate2 = [rangeCopy startDate];
    v7 = [startDate laterDate:startDate2];
    endDate = [(CalDateRange *)self endDate];
    endDate2 = [rangeCopy endDate];
    v10 = [endDate earlierDate:endDate2];
    v11 = [CalDateRange rangeWithStartDate:v7 endDate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)unionRange:(id)range
{
  rangeCopy = range;
  v5 = [(CalDateRange *)self copy];
  v6 = [rangeCopy copy];

  if (v6)
  {
    startDate = [v6 startDate];
    startDate2 = [v5 startDate];
    v9 = [startDate CalIsBeforeDate:startDate2];

    if (v9)
    {
      startDate3 = [v6 startDate];
      [v5 setStartDate:startDate3];
    }

    endDate = [v6 endDate];
    endDate2 = [v5 endDate];
    v13 = [endDate CalIsAfterDate:endDate2];

    if (v13)
    {
      endDate3 = [v6 endDate];
      [v5 setEndDate:endDate3];
    }
  }

  return v5;
}

- (id)subtractRange:(id)range
{
  rangeCopy = range;
  if (!rangeCopy)
  {
    goto LABEL_8;
  }

  v5 = [CalDateRange rangeWithRange:rangeCopy];
  v6 = [(CalDateRange *)self isEqual:v5];

  if (v6)
  {
LABEL_3:
    v7 = objc_alloc_init(CalDisjointDateRange);
    goto LABEL_9;
  }

  if (![(CalDateRange *)self intersectsRange:rangeCopy])
  {
LABEL_8:
    v17 = [MEMORY[0x1E695DFD8] setWithObject:self];
    v7 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v17];

    goto LABEL_9;
  }

  startDate = [(CalDateRange *)self startDate];
  startDate2 = [rangeCopy startDate];
  v10 = [startDate CalIsBeforeDate:startDate2];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    startDate3 = [(CalDateRange *)self startDate];
    startDate4 = [rangeCopy startDate];
    v14 = [CalDateRange rangeWithStartDate:startDate3 endDate:startDate4];
    [v11 addObject:v14];

    endDate = [(CalDateRange *)self endDate];
    endDate2 = [rangeCopy endDate];
    LODWORD(startDate4) = [endDate isAfterDate:endDate2];

    if (!startDate4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  startDate5 = [(CalDateRange *)self startDate];
  startDate6 = [rangeCopy startDate];
  if ([startDate5 CalIsAfterDate:startDate6])
  {

LABEL_15:
    endDate3 = [(CalDateRange *)self endDate];
    endDate4 = [rangeCopy endDate];
    v26 = [endDate3 isAfterDate:endDate4];

    if (!v26)
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E695DFA8] set];
LABEL_17:
    endDate5 = [rangeCopy endDate];
    endDate6 = [(CalDateRange *)self endDate];
    v29 = [CalDateRange rangeWithStartDate:endDate5 endDate:endDate6];
    [v11 addObject:v29];

LABEL_18:
    v7 = [CalDisjointDateRange disjointRangeWithDistinctRanges:v11];

    goto LABEL_9;
  }

  startDate7 = [(CalDateRange *)self startDate];
  startDate8 = [rangeCopy startDate];
  v23 = [startDate7 isEqualToDate:startDate8];

  if (v23)
  {
    goto LABEL_15;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  startDate = [(CalDateRange *)self startDate];
  endDate = [(CalDateRange *)self endDate];
  v7 = [v4 initWithStartDate:startDate endDate:endDate];

  return v7;
}

- (id)briefDescription
{
  if (briefDescription_onceToken != -1)
  {
    [CalDateRange briefDescription];
  }

  v3 = MEMORY[0x1E696AEC0];
  startDate = [(CalDateRange *)self startDate];
  v5 = __32__CalDateRange_briefDescription__block_invoke_2(startDate, startDate);
  endDate = [(CalDateRange *)self endDate];
  v7 = __32__CalDateRange_briefDescription__block_invoke_2(endDate, endDate);
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

- (id)_calculateMidnightsInCalendar:(id)calendar
{
  calendarCopy = calendar;
  startDate = [(CalDateRange *)self startDate];
  v6 = [calendarCopy startOfDayForDate:startDate];

  endDate = [(CalDateRange *)self endDate];
  v8 = [calendarCopy startOfDayForDate:endDate];

  endDate2 = [(CalDateRange *)self endDate];
  LODWORD(endDate) = [v8 isEqualToDate:endDate2];

  if (endDate)
  {
    v10 = [v8 dateByAddingDays:-1 inCalendar:calendarCopy];

    v8 = v10;
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  [orderedSet addObject:v6];
  v12 = [MEMORY[0x1E695DF10] CalComponentForDays:1];
  lastObject = [orderedSet lastObject];
  v14 = [lastObject compare:v8];

  if (v14 == -1)
  {
    v15 = 1;
    do
    {
      [v12 setDay:v15];
      v16 = [calendarCopy dateByAddingComponents:v12 toDate:v6 options:0];
      v17 = [calendarCopy startOfDayForDate:v16];
      v18 = [v16 isEqualToDate:v17];

      if ((v18 & 1) == 0)
      {
        v19 = [v16 dateByAddingTimeInterval:21600.0];
        v20 = [calendarCopy startOfDayForDate:v19];

        v16 = v20;
      }

      [orderedSet addObject:v16];

      lastObject2 = [orderedSet lastObject];
      v22 = [lastObject2 compare:v8];

      ++v15;
    }

    while (v22 == -1);
  }

  return orderedSet;
}

- (id)midnightsForRangeInTimeZoneString:(id)string
{
  stringCopy = string;
  if (midnightsForRangeInTimeZoneString__onceToken != -1)
  {
    [CalDateRange midnightsForRangeInTimeZoneString:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__CalDateRange_midnightsForRangeInTimeZoneString___block_invoke_2;
  aBlock[3] = &unk_1E7EC77B0;
  v5 = stringCopy;
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
      endDate = [(CalDateRange *)self endDate];
      endDate2 = [midnightsForRangeInTimeZoneString___rangeToCache endDate];
      v12 = [endDate CalIsAfterDate:endDate2];

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
  startDate = [(CalDateRange *)self startDate];
  v24 = [v21 containsObject:startDate];

  if (!v24)
  {
    startDate2 = [(CalDateRange *)self startDate];
    v26 = v22[2](v22, startDate2);

    if (v26 < [v21 count])
    {
      startDate3 = [(CalDateRange *)self startDate];
      v33 = [v21 objectAtIndex:v26];
      v34 = [startDate3 isBeforeDate:v33];

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

  startDate4 = [(CalDateRange *)self startDate];
  v26 = [v21 indexOfObject:startDate4];

LABEL_10:
  startDate5 = [(CalDateRange *)self startDate];
  endDate3 = [(CalDateRange *)self endDate];
  v29 = [startDate5 isEqualToDate:endDate3];

  if (v29)
  {
    v30 = v26 + 1;
  }

  else
  {
    endDate4 = [(CalDateRange *)self endDate];
    v36 = [v21 containsObject:endDate4];

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
    briefDescription = [(CalDateRange *)self briefDescription];
    NSLog(&cfstr_GotABadRangeTo.isa, v5, briefDescription);

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