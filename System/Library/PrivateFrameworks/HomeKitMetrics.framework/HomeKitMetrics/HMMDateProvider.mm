@interface HMMDateProvider
+ (HMMDateProvider)sharedInstance;
+ (NSCalendar)gmtCalendar;
+ (id)calendarForTimeZone:(id)zone;
+ (id)dateFromYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
+ (id)startOfDateByAddingDayCount:(int64_t)count toDate:(id)date;
+ (id)startOfDayForDate:(id)date;
+ (id)startOfWeekForDate:(id)date;
+ (int64_t)dayNumberOfWeekForDate:(id)date;
+ (int64_t)daysFromDate:(id)date toDate:(id)toDate;
- (HMMDateProvider)init;
- (HMMDateProvider)initWithLocalTimeZone:(id)zone;
- (id)startOfCurrentDay;
- (id)startOfCurrentMonth;
- (id)startOfCurrentWeek;
- (id)startOfCurrentYear;
- (id)startOfDayByAddingDayCount:(int64_t)count;
- (int64_t)currentDayNumberOfWeek;
- (int64_t)localHourOfDay;
@end

@implementation HMMDateProvider

- (id)startOfCurrentDay
{
  currentDate = [(HMMDateProvider *)self currentDate];
  [currentDate timeIntervalSince1970];
  v5 = v4;
  os_unfair_lock_lock_with_options();
  if (v5 < self->_currentDayStartTime || v5 >= self->_currentDayEndTime)
  {
    v6 = +[HMMDateProvider gmtCalendar];
    v7 = [v6 startOfDayForDate:currentDate];
    currentDayStartDate = self->_currentDayStartDate;
    self->_currentDayStartDate = v7;

    [(NSDate *)self->_currentDayStartDate timeIntervalSince1970];
    self->_currentDayStartTime = v9;
    v10 = [HMMDateProvider startOfDateByAddingDayCount:1 toDate:currentDate];
    [v10 timeIntervalSince1970];
    self->_currentDayEndTime = v11;
  }

  v12 = self->_currentDayStartDate;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

+ (NSCalendar)gmtCalendar
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMMDateProvider_gmtCalendar__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (gmtCalendar_onceToken != -1)
  {
    dispatch_once(&gmtCalendar_onceToken, block);
  }

  v2 = gmtCalendar_gmtCalendar;

  return v2;
}

- (int64_t)localHourOfDay
{
  localCalendar = [(HMMDateProvider *)self localCalendar];
  currentDate = [(HMMDateProvider *)self currentDate];
  v5 = [localCalendar components:32 fromDate:currentDate];

  hour = [v5 hour];
  return hour;
}

- (id)startOfCurrentYear
{
  v3 = +[HMMDateProvider gmtCalendar];
  v8 = 0;
  currentDate = [(HMMDateProvider *)self currentDate];
  [v3 rangeOfUnit:4 startDate:&v8 interval:0 forDate:currentDate];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)startOfCurrentMonth
{
  v3 = +[HMMDateProvider gmtCalendar];
  v8 = 0;
  currentDate = [(HMMDateProvider *)self currentDate];
  [v3 rangeOfUnit:8 startDate:&v8 interval:0 forDate:currentDate];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)startOfCurrentWeek
{
  currentDate = [(HMMDateProvider *)self currentDate];
  v3 = [HMMDateProvider startOfWeekForDate:currentDate];

  return v3;
}

- (int64_t)currentDayNumberOfWeek
{
  currentDate = [(HMMDateProvider *)self currentDate];
  v3 = [HMMDateProvider dayNumberOfWeekForDate:currentDate];

  return v3;
}

- (id)startOfDayByAddingDayCount:(int64_t)count
{
  currentDate = [(HMMDateProvider *)self currentDate];
  v5 = [HMMDateProvider startOfDateByAddingDayCount:count toDate:currentDate];

  return v5;
}

- (HMMDateProvider)initWithLocalTimeZone:(id)zone
{
  zoneCopy = zone;
  v10.receiver = self;
  v10.super_class = HMMDateProvider;
  v5 = [(HMMDateProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_currentDayStartTime = xmmword_22B0E6610;
    v7 = [HMMDateProvider calendarForTimeZone:zoneCopy];
    localCalendar = v6->_localCalendar;
    v6->_localCalendar = v7;
  }

  return v6;
}

- (HMMDateProvider)init
{
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = [(HMMDateProvider *)self initWithLocalTimeZone:systemTimeZone];

  return v4;
}

+ (id)startOfWeekForDate:(id)date
{
  dateCopy = date;
  v4 = +[HMMDateProvider gmtCalendar];
  v8 = 0;
  [v4 rangeOfUnit:0x2000 startDate:&v8 interval:0 forDate:dateCopy];

  v5 = v8;
  v6 = v8;

  return v5;
}

+ (int64_t)dayNumberOfWeekForDate:(id)date
{
  dateCopy = date;
  v5 = [self startOfWeekForDate:dateCopy];
  v6 = [self daysFromDate:v5 toDate:dateCopy];

  return v6 + 1;
}

+ (int64_t)daysFromDate:(id)date toDate:(id)toDate
{
  toDateCopy = toDate;
  dateCopy = date;
  gmtCalendar = [self gmtCalendar];
  v9 = [gmtCalendar components:16 fromDate:dateCopy toDate:toDateCopy options:0];

  v10 = [v9 day];
  return v10;
}

+ (id)startOfDateByAddingDayCount:(int64_t)count toDate:(id)date
{
  v6 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v8 = objc_alloc_init(v6);
  [v8 setDay:count];
  gmtCalendar = [self gmtCalendar];
  v10 = [gmtCalendar dateByAddingComponents:v8 toDate:dateCopy options:0];

  gmtCalendar2 = [self gmtCalendar];
  v12 = [gmtCalendar2 startOfDayForDate:v10];

  return v12;
}

+ (id)startOfDayForDate:(id)date
{
  dateCopy = date;
  gmtCalendar = [self gmtCalendar];
  v6 = [gmtCalendar startOfDayForDate:dateCopy];

  return v6;
}

void __30__HMMDateProvider_gmtCalendar__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v2 = [v1 calendarForTimeZone:v4];
  v3 = gmtCalendar_gmtCalendar;
  gmtCalendar_gmtCalendar = v2;
}

+ (id)calendarForTimeZone:(id)zone
{
  v3 = MEMORY[0x277CBEA80];
  zoneCopy = zone;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v6 setTimeZone:zoneCopy];

  [v6 setFirstWeekday:2];

  return v6;
}

+ (id)dateFromYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:year];
  [v8 setMonth:month];
  [v8 setDay:day];
  v9 = +[HMMDateProvider gmtCalendar];
  [v8 setCalendar:v9];

  date = [v8 date];

  return date;
}

+ (HMMDateProvider)sharedInstance
{
  if (sharedInstance__hmf_once_t0_1529 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_1529, &__block_literal_global_1530);
  }

  v3 = sharedInstance__hmf_once_v1_1531;

  return v3;
}

uint64_t __33__HMMDateProvider_sharedInstance__block_invoke()
{
  sharedInstance__hmf_once_v1_1531 = objc_alloc_init(HMMDateProvider);

  return MEMORY[0x2821F96F8]();
}

@end