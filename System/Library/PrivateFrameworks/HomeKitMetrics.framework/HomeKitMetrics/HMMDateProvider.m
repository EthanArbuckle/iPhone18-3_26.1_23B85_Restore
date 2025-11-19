@interface HMMDateProvider
+ (HMMDateProvider)sharedInstance;
+ (NSCalendar)gmtCalendar;
+ (id)calendarForTimeZone:(id)a3;
+ (id)dateFromYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5;
+ (id)startOfDateByAddingDayCount:(int64_t)a3 toDate:(id)a4;
+ (id)startOfDayForDate:(id)a3;
+ (id)startOfWeekForDate:(id)a3;
+ (int64_t)dayNumberOfWeekForDate:(id)a3;
+ (int64_t)daysFromDate:(id)a3 toDate:(id)a4;
- (HMMDateProvider)init;
- (HMMDateProvider)initWithLocalTimeZone:(id)a3;
- (id)startOfCurrentDay;
- (id)startOfCurrentMonth;
- (id)startOfCurrentWeek;
- (id)startOfCurrentYear;
- (id)startOfDayByAddingDayCount:(int64_t)a3;
- (int64_t)currentDayNumberOfWeek;
- (int64_t)localHourOfDay;
@end

@implementation HMMDateProvider

- (id)startOfCurrentDay
{
  v3 = [(HMMDateProvider *)self currentDate];
  [v3 timeIntervalSince1970];
  v5 = v4;
  os_unfair_lock_lock_with_options();
  if (v5 < self->_currentDayStartTime || v5 >= self->_currentDayEndTime)
  {
    v6 = +[HMMDateProvider gmtCalendar];
    v7 = [v6 startOfDayForDate:v3];
    currentDayStartDate = self->_currentDayStartDate;
    self->_currentDayStartDate = v7;

    [(NSDate *)self->_currentDayStartDate timeIntervalSince1970];
    self->_currentDayStartTime = v9;
    v10 = [HMMDateProvider startOfDateByAddingDayCount:1 toDate:v3];
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
  block[4] = a1;
  if (gmtCalendar_onceToken != -1)
  {
    dispatch_once(&gmtCalendar_onceToken, block);
  }

  v2 = gmtCalendar_gmtCalendar;

  return v2;
}

- (int64_t)localHourOfDay
{
  v3 = [(HMMDateProvider *)self localCalendar];
  v4 = [(HMMDateProvider *)self currentDate];
  v5 = [v3 components:32 fromDate:v4];

  v6 = [v5 hour];
  return v6;
}

- (id)startOfCurrentYear
{
  v3 = +[HMMDateProvider gmtCalendar];
  v8 = 0;
  v4 = [(HMMDateProvider *)self currentDate];
  [v3 rangeOfUnit:4 startDate:&v8 interval:0 forDate:v4];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)startOfCurrentMonth
{
  v3 = +[HMMDateProvider gmtCalendar];
  v8 = 0;
  v4 = [(HMMDateProvider *)self currentDate];
  [v3 rangeOfUnit:8 startDate:&v8 interval:0 forDate:v4];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (id)startOfCurrentWeek
{
  v2 = [(HMMDateProvider *)self currentDate];
  v3 = [HMMDateProvider startOfWeekForDate:v2];

  return v3;
}

- (int64_t)currentDayNumberOfWeek
{
  v2 = [(HMMDateProvider *)self currentDate];
  v3 = [HMMDateProvider dayNumberOfWeekForDate:v2];

  return v3;
}

- (id)startOfDayByAddingDayCount:(int64_t)a3
{
  v4 = [(HMMDateProvider *)self currentDate];
  v5 = [HMMDateProvider startOfDateByAddingDayCount:a3 toDate:v4];

  return v5;
}

- (HMMDateProvider)initWithLocalTimeZone:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMMDateProvider;
  v5 = [(HMMDateProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_currentDayStartTime = xmmword_22B0E6610;
    v7 = [HMMDateProvider calendarForTimeZone:v4];
    localCalendar = v6->_localCalendar;
    v6->_localCalendar = v7;
  }

  return v6;
}

- (HMMDateProvider)init
{
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = [(HMMDateProvider *)self initWithLocalTimeZone:v3];

  return v4;
}

+ (id)startOfWeekForDate:(id)a3
{
  v3 = a3;
  v4 = +[HMMDateProvider gmtCalendar];
  v8 = 0;
  [v4 rangeOfUnit:0x2000 startDate:&v8 interval:0 forDate:v3];

  v5 = v8;
  v6 = v8;

  return v5;
}

+ (int64_t)dayNumberOfWeekForDate:(id)a3
{
  v4 = a3;
  v5 = [a1 startOfWeekForDate:v4];
  v6 = [a1 daysFromDate:v5 toDate:v4];

  return v6 + 1;
}

+ (int64_t)daysFromDate:(id)a3 toDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 gmtCalendar];
  v9 = [v8 components:16 fromDate:v7 toDate:v6 options:0];

  v10 = [v9 day];
  return v10;
}

+ (id)startOfDateByAddingDayCount:(int64_t)a3 toDate:(id)a4
{
  v6 = MEMORY[0x277CBEAB8];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [v8 setDay:a3];
  v9 = [a1 gmtCalendar];
  v10 = [v9 dateByAddingComponents:v8 toDate:v7 options:0];

  v11 = [a1 gmtCalendar];
  v12 = [v11 startOfDayForDate:v10];

  return v12;
}

+ (id)startOfDayForDate:(id)a3
{
  v4 = a3;
  v5 = [a1 gmtCalendar];
  v6 = [v5 startOfDayForDate:v4];

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

+ (id)calendarForTimeZone:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v6 setTimeZone:v4];

  [v6 setFirstWeekday:2];

  return v6;
}

+ (id)dateFromYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5
{
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:a3];
  [v8 setMonth:a4];
  [v8 setDay:a5];
  v9 = +[HMMDateProvider gmtCalendar];
  [v8 setCalendar:v9];

  v10 = [v8 date];

  return v10;
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