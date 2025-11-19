@interface MTSleepObjCWrapper
+ (void)toggleNextSleepAlarmWithCompletion:(id)a3;
@end

@implementation MTSleepObjCWrapper

+ (void)toggleNextSleepAlarmWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(getHKSPSleepStoreClass());
  v5 = objc_alloc_init(getHKHealthStoreClass());
  v6 = [v4 initWithHealthStore:v5];

  v13 = 0;
  v7 = [MEMORY[0x277CBEAA8] date];
  v12 = 0;
  v8 = [v6 upcomingScheduleOccurrenceAfterDate:v7 alarmStatus:&v13 error:&v12];
  v9 = v12;

  if (v9)
  {
    v3[2](v3, 0, v9);
  }

  else
  {
    v10 = v13 == 1;
    v11 = [MEMORY[0x277CBEAA8] date];
    [v6 setUpcomingWakeUpAlarmEnabled:v10 date:v11 completion:v3];
  }
}

@end