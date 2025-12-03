@interface EKCalendarDate
+ (id)calendarDateWithAbsoluteTime:(double)time timeZone:(id)zone;
+ (id)calendarDateWithDate:(id)date timeZone:(id)zone;
+ (id)calendarDateWithDateComponents:(id)components timeZone:(id)zone;
+ (id)calendarDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day timeZone:(id)zone;
+ (void)initialize;
- ($0E169193D3AAAEB5DA6AAED42404BC6F)differenceAsGregorianUnits:(SEL)units flags:(id)flags;
- (BOOL)isEqual:(id)equal;
- (EKCalendarDate)calendarDateWithDate:(id)date;
- (EKCalendarDate)initWithAbsoluteTime:(double)time timeZone:(id)zone;
- (EKCalendarDate)initWithDate:(id)date components:(id)components calendar:(id)calendar;
- (EKCalendarDate)initWithDate:(id)date components:(id)components timeZone:(id)zone;
- (double)absoluteTime;
- (double)differenceInSeconds:(id)seconds;
- (id)_allComponents;
- (id)allComponents;
- (id)calendar;
- (id)calendarDateByAddingComponents:(id)components;
- (id)calendarDateByAddingDays:(int64_t)days;
- (id)calendarDateByAddingGregorianUnits:(id *)units;
- (id)calendarDateByAddingHours:(int64_t)hours;
- (id)calendarDateByAddingMinutes:(int64_t)minutes;
- (id)calendarDateByAddingMonths:(int64_t)months;
- (id)calendarDateByAddingSeconds:(int64_t)seconds;
- (id)calendarDateByAddingWeeks:(int64_t)weeks;
- (id)calendarDateByAddingYears:(int64_t)years;
- (id)calendarDateByComponentwiseAddingComponents:(id)components;
- (id)calendarDateByComponentwiseAddingSeconds:(int64_t)seconds;
- (id)calendarDateForDay;
- (id)calendarDateForEndOfDay;
- (id)calendarDateForEndOfMonth;
- (id)calendarDateForEndOfWeekWithWeekStart:(int64_t)start;
- (id)calendarDateForEndOfYear;
- (id)calendarDateForMonth;
- (id)calendarDateForWeekWithWeekStart:(int64_t)start daysSinceWeekStart:(int64_t *)weekStart;
- (id)calendarDateForYear;
- (id)calendarDateInTimeZone:(id)zone;
- (id)date;
- (id)dayComponents;
- (id)dayTimeComponents;
- (id)description;
- (id)differenceAsDateComponents:(id)components units:(unint64_t)units;
- (id)earlierDate:(id)date;
- (id)laterDate:(id)date;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)timeComponents;
- (id)timeZone;
- (id)weekComponents;
- (int64_t)compare:(id)compare;
- (int64_t)day;
- (int64_t)dayOfWeek;
- (int64_t)differenceInDays:(id)days;
- (int64_t)differenceInMonths:(id)months;
- (int64_t)differenceInYears:(id)years;
- (int64_t)era;
- (int64_t)hour;
- (int64_t)minute;
- (int64_t)month;
- (int64_t)second;
- (int64_t)secondsFromGMT;
- (int64_t)year;
- (unint64_t)dayOfMonth;
- (unint64_t)dayOfYear;
- (unint64_t)daysInMonth;
- (unint64_t)daysInYear;
- (unint64_t)hash;
- (unint64_t)weekOfMonth;
- (unint64_t)weekOfYear;
- (unint64_t)weeksInMonth;
- (unint64_t)weeksInYear;
@end

@implementation EKCalendarDate

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[EKCalendarDate initialize];
  }
}

uint64_t __28__EKCalendarDate_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _dateComponentCache;
  _dateComponentCache = v0;

  v2 = _dateComponentCache;

  return [v2 setCountLimit:1000];
}

+ (id)calendarDateWithDate:(id)date timeZone:(id)zone
{
  zoneCopy = zone;
  dateCopy = date;
  v8 = [[self alloc] initWithDate:dateCopy components:0 timeZone:zoneCopy];

  return v8;
}

+ (id)calendarDateWithDateComponents:(id)components timeZone:(id)zone
{
  zoneCopy = zone;
  componentsCopy = components;
  v8 = [[self alloc] initWithDate:0 components:componentsCopy timeZone:zoneCopy];

  return v8;
}

+ (id)calendarDateWithAbsoluteTime:(double)time timeZone:(id)zone
{
  zoneCopy = zone;
  v7 = [self alloc];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v9 = [v7 initWithDate:v8 components:0 timeZone:zoneCopy];

  return v9;
}

+ (id)calendarDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day timeZone:(id)zone
{
  zoneCopy = zone;
  v11 = objc_opt_new();
  [v11 setEra:1];
  [v11 setYear:year];
  [v11 setMonth:month];
  [v11 setDay:day];
  v12 = [[self alloc] initWithDate:0 components:v11 timeZone:zoneCopy];

  return v12;
}

- (EKCalendarDate)initWithAbsoluteTime:(double)time timeZone:(id)zone
{
  v6 = MEMORY[0x1E695DF00];
  zoneCopy = zone;
  v8 = [[v6 alloc] initWithTimeIntervalSinceReferenceDate:time];
  v9 = [(EKCalendarDate *)self initWithDate:v8 components:0 timeZone:zoneCopy];

  return v9;
}

- (EKCalendarDate)initWithDate:(id)date components:(id)components timeZone:(id)zone
{
  v8 = MEMORY[0x1E695DEE8];
  componentsCopy = components;
  dateCopy = date;
  v11 = [v8 CalGregorianCalendarForTimeZone:zone];
  v12 = [(EKCalendarDate *)self initWithDate:dateCopy components:componentsCopy calendar:v11];

  return v12;
}

- (EKCalendarDate)initWithDate:(id)date components:(id)components calendar:(id)calendar
{
  dateCopy = date;
  componentsCopy = components;
  calendarCopy = calendar;
  v11 = calendarCopy;
  selfCopy = 0;
  if (dateCopy | componentsCopy && calendarCopy)
  {
    v23.receiver = self;
    v23.super_class = EKCalendarDate;
    v13 = [(EKCalendarDate *)&v23 init];
    v14 = v13;
    if (!v13)
    {
      goto LABEL_22;
    }

    v13->_lock._os_unfair_lock_opaque = 0;
    v15 = [v11 copy];
    calendar = v14->_calendar;
    v14->_calendar = v15;

    if (dateCopy)
    {
      v17 = dateCopy;
    }

    else
    {
      v17 = [(NSCalendar *)v14->_calendar dateFromComponents:componentsCopy];
    }

    date = v14->_date;
    v14->_date = v17;

    if (!componentsCopy || [componentsCopy era] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "year") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "hour") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "minute") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "second") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "nanosecond") == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    components = [componentsCopy timeZone];
    if (components && [componentsCopy weekday] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "weekOfMonth") != 0x7FFFFFFFFFFFFFFFLL)
    {
      weekOfYear = [componentsCopy weekOfYear];

      if (weekOfYear == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_22:
        self = v14;
        selfCopy = self;
        goto LABEL_23;
      }

      v21 = [componentsCopy copy];
      components = v14->_components;
      v14->_components = v21;
    }

    goto LABEL_22;
  }

LABEL_23:

  return selfCopy;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  date = self->_date;
  v5 = self->_components;
  v6 = date;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [(EKCalendarDate *)[EKMutableCalendarDate alloc] initWithDate:v6 components:v5 calendar:self->_calendar];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [equalCopy absoluteTime];
    v6 = v5;
    [(EKCalendarDate *)self absoluteTime];
    v8 = vabdd_f64(v6, v7) < 2.22044605e-16;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDate *)self->_date hash];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)description
{
  if (description_onceToken != -1)
  {
    [EKCalendarDate description];
  }

  os_unfair_lock_lock(&description_lock);
  timeZone = [description_formatter timeZone];
  timeZone2 = [(EKCalendarDate *)self timeZone];
  v5 = [timeZone isEqualToTimeZone:timeZone2];

  if ((v5 & 1) == 0)
  {
    v6 = description_formatter;
    timeZone3 = [(EKCalendarDate *)self timeZone];
    [v6 setTimeZone:timeZone3];
  }

  v8 = description_formatter;
  date = [(EKCalendarDate *)self date];
  v10 = [v8 stringFromDate:date];

  os_unfair_lock_unlock(&description_lock);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%p> { date = %@ }", objc_opt_class(), self, v10];

  return v11;
}

uint64_t __29__EKCalendarDate_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = description_formatter;
  description_formatter = v0;

  [description_formatter setDateStyle:4];
  v2 = description_formatter;

  return [v2 setTimeStyle:3];
}

- (id)date
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_date;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)absoluteTime
{
  date = [(EKCalendarDate *)self date];
  [date timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (id)_allComponents
{
  os_unfair_lock_lock(&self->_lock);
  components = self->_components;
  if (!components)
  {
    date = self->_date;
    if (date)
    {
      dateCacheKey = self->_dateCacheKey;
      if (!dateCacheKey)
      {
        v8 = MEMORY[0x1E696AEC0];
        [(NSDate *)date timeIntervalSinceReferenceDate];
        v10 = v9;
        timeZone = [(NSCalendar *)self->_calendar timeZone];
        v12 = [v8 stringWithFormat:@"%f-%@", v10, timeZone];
        v13 = self->_dateCacheKey;
        self->_dateCacheKey = v12;

        dateCacheKey = self->_dateCacheKey;
      }

      v14 = [_dateComponentCache objectForKey:dateCacheKey];
      v15 = self->_components;
      self->_components = v14;

      components = self->_components;
      if (!components)
      {
        v16 = [(NSCalendar *)self->_calendar components:2142974 fromDate:self->_date];
        v17 = self->_components;
        self->_components = v16;

        [_dateComponentCache setObject:self->_components forKey:self->_dateCacheKey];
        components = self->_components;
      }
    }

    else
    {
      components = 0;
    }
  }

  v4 = components;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)allComponents
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = [_allComponents copy];

  return v3;
}

- (id)dayTimeComponents
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = objc_opt_new();
  [v3 setEra:{objc_msgSend(_allComponents, "era")}];
  [v3 setYear:{objc_msgSend(_allComponents, "year")}];
  [v3 setMonth:{objc_msgSend(_allComponents, "month")}];
  [v3 setDay:{objc_msgSend(_allComponents, "day")}];
  [v3 setHour:{objc_msgSend(_allComponents, "hour")}];
  [v3 setMinute:{objc_msgSend(_allComponents, "minute")}];
  [v3 setSecond:{objc_msgSend(_allComponents, "second")}];
  [v3 setNanosecond:{objc_msgSend(_allComponents, "nanosecond")}];

  return v3;
}

- (id)dayComponents
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = objc_opt_new();
  [v3 setEra:{objc_msgSend(_allComponents, "era")}];
  [v3 setYear:{objc_msgSend(_allComponents, "year")}];
  [v3 setMonth:{objc_msgSend(_allComponents, "month")}];
  [v3 setDay:{objc_msgSend(_allComponents, "day")}];

  return v3;
}

- (id)timeComponents
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = objc_opt_new();
  [v3 setHour:{objc_msgSend(_allComponents, "hour")}];
  [v3 setMinute:{objc_msgSend(_allComponents, "minute")}];
  [v3 setSecond:{objc_msgSend(_allComponents, "second")}];
  [v3 setNanosecond:{objc_msgSend(_allComponents, "nanosecond")}];

  return v3;
}

- (id)weekComponents
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = objc_opt_new();
  [v3 setEra:{objc_msgSend(_allComponents, "era")}];
  [v3 setYear:{objc_msgSend(_allComponents, "year")}];
  [v3 setWeekOfYear:{objc_msgSend(_allComponents, "weekOfYear")}];

  return v3;
}

- (id)calendar
{
  v2 = [(NSCalendar *)self->_calendar copy];

  return v2;
}

- (id)timeZone
{
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v3 = [timeZone copy];

  return v3;
}

- (int64_t)secondsFromGMT
{
  timeZone = [(EKCalendarDate *)self timeZone];
  date = [(EKCalendarDate *)self date];
  v5 = [timeZone secondsFromGMTForDate:date];

  return v5;
}

- (id)calendarDateByAddingComponents:(id)components
{
  calendar = self->_calendar;
  componentsCopy = components;
  date = [(EKCalendarDate *)self date];
  v7 = [(NSCalendar *)calendar dateByAddingComponents:componentsCopy toDate:date options:0];

  v8 = [[EKCalendarDate alloc] initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingSeconds:(int64_t)seconds
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingTimeInterval:seconds];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingMinutes:(int64_t)minutes
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingMinutes:minutes inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingHours:(int64_t)hours
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingHours:hours inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingDays:(int64_t)days
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingDays:days inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingWeeks:(int64_t)weeks
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingWeeks:weeks inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingMonths:(int64_t)months
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingMonths:months inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByAddingYears:(int64_t)years
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date dateByAddingYears:years inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByComponentwiseAddingComponents:(id)components
{
  componentsCopy = components;
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date CalDateByComponentwiseAddingComponents:componentsCopy inCalendar:self->_calendar];

  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateByComponentwiseAddingSeconds:(int64_t)seconds
{
  v5 = [EKCalendarDate alloc];
  date = [(EKCalendarDate *)self date];
  v7 = [date CalDateByComponentwiseAddingSeconds:seconds inCalendar:self->_calendar];
  v8 = [(EKCalendarDate *)v5 initWithDate:v7 calendar:self->_calendar];

  return v8;
}

- (id)calendarDateInTimeZone:(id)zone
{
  zoneCopy = zone;
  v5 = [EKCalendarDate alloc];
  dayTimeComponents = [(EKCalendarDate *)self dayTimeComponents];
  v7 = [(EKCalendarDate *)v5 initWithDateComponents:dayTimeComponents timeZone:zoneCopy];

  return v7;
}

- (EKCalendarDate)calendarDateWithDate:(id)date
{
  dateCopy = date;
  v5 = [[EKCalendarDate alloc] initWithDate:dateCopy calendar:self->_calendar];

  return v5;
}

- (id)differenceAsDateComponents:(id)components units:(unint64_t)units
{
  calendar = self->_calendar;
  date = [components date];
  date2 = [(EKCalendarDate *)self date];
  v9 = [(NSCalendar *)calendar components:units fromDate:date toDate:date2 options:0];

  return v9;
}

- (int64_t)differenceInYears:(id)years
{
  v3 = [(EKCalendarDate *)self differenceAsDateComponents:years units:4];
  year = [v3 year];

  return year;
}

- (int64_t)differenceInMonths:(id)months
{
  v3 = [(EKCalendarDate *)self differenceAsDateComponents:months units:8];
  month = [v3 month];

  return month;
}

- (int64_t)differenceInDays:(id)days
{
  v3 = [(EKCalendarDate *)self differenceAsDateComponents:days units:16];
  v4 = [v3 day];

  return v4;
}

- (double)differenceInSeconds:(id)seconds
{
  v3 = [(EKCalendarDate *)self differenceAsDateComponents:seconds units:128];
  second = [v3 second];

  return second;
}

- (int64_t)era
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = [_allComponents era];

  return v3;
}

- (int64_t)year
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  year = [_allComponents year];

  return year;
}

- (int64_t)month
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  month = [_allComponents month];

  return month;
}

- (int64_t)day
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  v3 = [_allComponents day];

  return v3;
}

- (int64_t)hour
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  hour = [_allComponents hour];

  return hour;
}

- (int64_t)minute
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  minute = [_allComponents minute];

  return minute;
}

- (int64_t)second
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  second = [_allComponents second];

  return second;
}

- (int64_t)dayOfWeek
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  weekday = [_allComponents weekday];

  return weekday;
}

- (unint64_t)dayOfMonth
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v4 = [(NSCalendar *)calendar ordinalityOfUnit:16 inUnit:8 forDate:date];

  return v4;
}

- (unint64_t)dayOfYear
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v4 = [(NSCalendar *)calendar ordinalityOfUnit:16 inUnit:4 forDate:date];

  return v4;
}

- (unint64_t)weekOfMonth
{
  allComponents = [(EKCalendarDate *)self allComponents];
  weekOfMonth = [allComponents weekOfMonth];

  return weekOfMonth;
}

- (unint64_t)weekOfYear
{
  _allComponents = [(EKCalendarDate *)self _allComponents];
  weekOfYear = [_allComponents weekOfYear];

  return weekOfYear;
}

- (unint64_t)daysInMonth
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v4 = [(NSCalendar *)calendar daysInMonthContainingDate:date];

  return v4;
}

- (unint64_t)daysInYear
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v4 = [(NSCalendar *)calendar CalDaysInYearContainingDate:date];

  return v4;
}

- (unint64_t)weeksInMonth
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v4 = [(NSCalendar *)calendar CalWeeksInMonthContainingDate:date];

  return v4;
}

- (unint64_t)weeksInYear
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v4 = [(NSCalendar *)calendar CalWeeksInYearContainingDate:date];

  return v4;
}

- (id)calendarDateForDay
{
  calendar = self->_calendar;
  date = [(EKCalendarDate *)self date];
  v5 = [(NSCalendar *)calendar startOfDayForDate:date];
  v6 = [(EKCalendarDate *)self calendarDateWithDate:v5];

  return v6;
}

- (id)calendarDateForEndOfDay
{
  dayTimeComponents = [(EKCalendarDate *)self dayTimeComponents];
  [dayTimeComponents setHour:23];
  [dayTimeComponents setMinute:59];
  [dayTimeComponents setSecond:59];
  v4 = [[EKCalendarDate alloc] initWithDateComponents:dayTimeComponents calendar:self->_calendar];

  return v4;
}

- (id)calendarDateForWeekWithWeekStart:(int64_t)start daysSinceWeekStart:(int64_t *)weekStart
{
  dayOfWeek = [(EKCalendarDate *)self dayOfWeek];
  v8 = 7;
  if (dayOfWeek >= start)
  {
    v8 = 0;
  }

  v9 = dayOfWeek - start + v8;
  if (weekStart)
  {
    *weekStart = v9;
  }

  v10 = [(EKCalendarDate *)self calendarDateByAddingDays:-v9];
  calendarDateForDay = [v10 calendarDateForDay];

  return calendarDateForDay;
}

- (id)calendarDateForEndOfWeekWithWeekStart:(int64_t)start
{
  v3 = [(EKCalendarDate *)self calendarDateForWeekWithWeekStart:start daysSinceWeekStart:0];
  v4 = [v3 calendarDateByAddingWeeks:1];
  v5 = [v4 calendarDateByAddingSeconds:-1];

  return v5;
}

- (id)calendarDateForMonth
{
  dayComponents = [(EKCalendarDate *)self dayComponents];
  [dayComponents setDay:1];
  v4 = [[EKCalendarDate alloc] initWithDateComponents:dayComponents calendar:self->_calendar];

  return v4;
}

- (id)calendarDateForEndOfMonth
{
  calendarDateForMonth = [(EKCalendarDate *)self calendarDateForMonth];
  v3 = [calendarDateForMonth calendarDateByAddingMonths:1];
  v4 = [v3 calendarDateByAddingSeconds:-1];

  return v4;
}

- (id)calendarDateForYear
{
  dayComponents = [(EKCalendarDate *)self dayComponents];
  [dayComponents setMonth:1];
  [dayComponents setDay:1];
  v4 = [[EKCalendarDate alloc] initWithDateComponents:dayComponents calendar:self->_calendar];

  return v4;
}

- (id)calendarDateForEndOfYear
{
  calendarDateForYear = [(EKCalendarDate *)self calendarDateForYear];
  v3 = [calendarDateForYear calendarDateByAddingYears:1];
  v4 = [v3 calendarDateByAddingSeconds:-1];

  return v4;
}

- (id)earlierDate:(id)date
{
  dateCopy = date;
  date = [(EKCalendarDate *)self date];
  date2 = [(EKCalendarDate *)dateCopy date];
  v7 = [date CalIsBeforeOrSameAsDate:date2];

  if (!v7)
  {
    self = dateCopy;
  }

  selfCopy = self;

  return self;
}

- (id)laterDate:(id)date
{
  dateCopy = date;
  date = [(EKCalendarDate *)self date];
  date2 = [(EKCalendarDate *)dateCopy date];
  v7 = [date CalIsAfterOrSameAsDate:date2];

  if (!v7)
  {
    self = dateCopy;
  }

  selfCopy = self;

  return self;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if ([(EKCalendarDate *)self isEqual:compareCopy])
  {
    v5 = 0;
  }

  else
  {
    date = [(EKCalendarDate *)self date];
    date2 = [compareCopy date];
    v5 = [date compare:date2];
  }

  return v5;
}

- (id)calendarDateByAddingGregorianUnits:(id *)units
{
  v5 = objc_opt_new();
  [v5 setYear:units->var0];
  [v5 setMonth:units->var1];
  [v5 setDay:units->var2];
  [v5 setHour:units->var3];
  [v5 setMinute:units->var4];
  [v5 setSecond:units->var5];
  v6 = [(EKCalendarDate *)self calendarDateByComponentwiseAddingComponents:v5];

  return v6;
}

- ($0E169193D3AAAEB5DA6AAED42404BC6F)differenceAsGregorianUnits:(SEL)units flags:(id)flags
{
  v5 = a5;
  v8 = [(EKCalendarDate *)self differenceAsDateComponents:flags units:4 * (a5 & 0x3F)];
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (v5)
  {
    retstr->var0 = [v8 year];
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  retstr->var1 = [v8 month];
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  retstr->var2 = [v8 day];
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  retstr->var3 = [v8 hour];
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  retstr->var4 = [v8 minute];
  if ((v5 & 0x20) != 0)
  {
LABEL_7:
    retstr->var5 = [v8 second];
  }

LABEL_8:

  return result;
}

@end