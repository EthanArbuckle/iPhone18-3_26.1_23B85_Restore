@interface NSDate(MOExtensions)
+ (id)dateFormatter;
+ (id)dayNameFormatterInEnglish;
+ (id)firstSaturdayBeforeReferenceDate:()MOExtensions;
+ (id)monthDayFormatter;
+ (id)relativeBundleDateFormatter;
- (BOOL)betweenDate:()MOExtensions andDate:;
- (id)getBundleRelativeDate;
- (id)snapToTheDay;
- (id)startOfDay;
- (id)startOfDayWithBoundaryOfADay:()MOExtensions;
- (id)stringFromDate;
- (uint64_t)hours;
- (uint64_t)isFollowingDayAfterDate:()MOExtensions;
- (uint64_t)isFollowingMonthAfterDate:()MOExtensions;
- (uint64_t)isFollowingWeekAfterDate:()MOExtensions;
- (uint64_t)isFollowingYearAfterDate:()MOExtensions;
- (uint64_t)isSameDayWithDate:()MOExtensions;
- (uint64_t)isSameDayWithDate:()MOExtensions timeZone:;
- (uint64_t)isSameMonthWithDate:()MOExtensions;
- (uint64_t)isSameWeekWithDate:()MOExtensions;
- (uint64_t)isSameYearWithDate:()MOExtensions;
- (uint64_t)minutes;
@end

@implementation NSDate(MOExtensions)

- (id)stringFromDate
{
  v2 = MEMORY[0x277CCACA8];
  [self timeIntervalSinceReferenceDate];
  v4 = v3;
  dateFormatter = [MEMORY[0x277CBEAA8] dateFormatter];
  v6 = [dateFormatter stringFromDate:self];
  v7 = [v2 stringWithFormat:@"%f (%@)", v4, v6];

  return v7;
}

- (id)startOfDay
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (BOOL)betweenDate:()MOExtensions andDate:
{
  result = 0;
  if (a3 && a4)
  {
    v7 = a4;
    [a3 timeIntervalSinceReferenceDate];
    v9 = v8;
    [self timeIntervalSinceReferenceDate];
    v11 = v10;
    [v7 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v9 <= v13)
    {
      v14 = v9 <= v11;
      v15 = v11 > v13;
    }

    else
    {
      v14 = v13 <= v11;
      v15 = v11 > v9;
    }

    return !v15 && v14;
  }

  return result;
}

- (id)snapToTheDay
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar components:60 fromDate:self];

  if ([v3 hour] > 2)
  {
    selfCopy = self;
  }

  else
  {
    [v3 setHour:0];
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [currentCalendar2 dateFromComponents:v3];

    selfCopy = [v5 dateByAddingTimeInterval:-1.0];
  }

  return selfCopy;
}

- (uint64_t)isSameDayWithDate:()MOExtensions timeZone:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEA80]);
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = v9;
  if (v7)
  {
    [v9 setTimeZone:v7];
  }

  v11 = [v10 isDate:self inSameDayAsDate:v6];

  return v11;
}

- (uint64_t)isSameDayWithDate:()MOExtensions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar isDate:self inSameDayAsDate:v5];

  return v7;
}

- (uint64_t)isFollowingDayAfterDate:()MOExtensions
{
  v4 = [a3 dateByAddingTimeInterval:86400.0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar isDate:self inSameDayAsDate:v4];

  return v6;
}

- (uint64_t)isSameWeekWithDate:()MOExtensions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar isDate:self equalToDate:v5 toUnitGranularity:0x2000];

  return v7;
}

- (uint64_t)isFollowingWeekAfterDate:()MOExtensions
{
  v4 = [a3 dateByAddingTimeInterval:604800.0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar isDate:self equalToDate:v4 toUnitGranularity:0x2000];

  return v6;
}

- (uint64_t)isSameMonthWithDate:()MOExtensions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar isDate:self equalToDate:v5 toUnitGranularity:8];

  return v7;
}

- (uint64_t)isFollowingMonthAfterDate:()MOExtensions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:12 fromDate:self];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar2 components:12 fromDate:v5];

  month = [v7 month];
  year = [v7 year];
  if (month == 1)
  {
    if (year - 1 == [v9 year])
    {
      v12 = [v9 month] == 1;
      goto LABEL_6;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (year != [v9 year])
  {
    goto LABEL_9;
  }

  v13 = [v7 month] - 1;
  v12 = v13 == [v9 month];
LABEL_6:
  v14 = v12;
LABEL_10:

  return v14;
}

- (uint64_t)isSameYearWithDate:()MOExtensions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar isDate:self equalToDate:v5 toUnitGranularity:4];

  return v7;
}

- (uint64_t)isFollowingYearAfterDate:()MOExtensions
{
  v4 = [a3 dateByAddingTimeInterval:31536000.0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar isDate:self equalToDate:v4 toUnitGranularity:4];

  return v6;
}

- (id)startOfDayWithBoundaryOfADay:()MOExtensions
{
  v3 = [self dateByAddingTimeInterval:-a2];
  startOfDay = [v3 startOfDay];
  v5 = [startOfDay dateByAddingTimeInterval:a2];

  return v5;
}

- (uint64_t)hours
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar component:32 fromDate:self];

  return v3;
}

- (uint64_t)minutes
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar component:64 fromDate:self];

  return v3;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[NSDate(MOExtensions) dateFormatter];
  }

  v1 = dateFormatter_dateFormatter;

  return v1;
}

+ (id)firstSaturdayBeforeReferenceDate:()MOExtensions
{
  v3 = a3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [v3 isEqualToDate:distantPast];

  if (v5)
  {
    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
LABEL_7:
    v7 = distantPast2;
    goto LABEL_9;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [v3 isEqualToDate:distantFuture];

  if (v9)
  {
    distantPast2 = [MEMORY[0x277CBEAA8] distantFuture];
    goto LABEL_7;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [currentCalendar components:512 fromDate:v3];
  weekday = [v11 weekday];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v13 setDay:7 * (weekday / 7) - weekday];
  v14 = [currentCalendar dateByAddingComponents:v13 toDate:v3 options:0];
  v15 = [currentCalendar components:28 fromDate:v14];
  [v15 setHour:0];
  [v15 setMinute:0];
  [v15 setSecond:0];
  v7 = [currentCalendar dateFromComponents:v15];

LABEL_9:

  return v7;
}

+ (id)dayNameFormatterInEnglish
{
  if (dayNameFormatterInEnglish_onceToken != -1)
  {
    +[NSDate(MOExtensions) dayNameFormatterInEnglish];
  }

  v1 = dayNameFormatterInEnglish_dateFormatter;

  return v1;
}

+ (id)relativeBundleDateFormatter
{
  if (relativeBundleDateFormatter_onceToken != -1)
  {
    +[NSDate(MOExtensions) relativeBundleDateFormatter];
  }

  v1 = relativeBundleDateFormatter_dateFormatter;

  return v1;
}

+ (id)monthDayFormatter
{
  if (monthDayFormatter_onceToken != -1)
  {
    +[NSDate(MOExtensions) monthDayFormatter];
  }

  v1 = monthDayFormatter_dateFormatter;

  return v1;
}

- (id)getBundleRelativeDate
{
  v18 = *MEMORY[0x277D85DE8];
  dayNameFormatterInEnglish = [MEMORY[0x277CBEAA8] dayNameFormatterInEnglish];
  v3 = [dayNameFormatterInEnglish stringFromDate:self];

  dayNameFormatterInEnglish2 = [MEMORY[0x277CBEAA8] dayNameFormatterInEnglish];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [dayNameFormatterInEnglish2 stringFromDate:v5];

  v7 = _mo_log_facility_get_os_log(MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_INFO, "bundleDay: %@, nowDay: %@", &v14, 0x16u);
  }

  [self timeIntervalSinceNow];
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 > 604800.0 || v3 == v6)
  {
    monthDayFormatter = [MEMORY[0x277CBEAA8] monthDayFormatter];
    v11 = [monthDayFormatter stringFromDate:self];
  }

  else
  {
    v11 = v3;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end