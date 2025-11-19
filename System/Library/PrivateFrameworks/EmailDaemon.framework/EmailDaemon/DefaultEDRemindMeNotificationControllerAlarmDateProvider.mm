@interface DefaultEDRemindMeNotificationControllerAlarmDateProvider
- (NSDate)nextDate;
- (void)setNextDate:(id)a3;
@end

@implementation DefaultEDRemindMeNotificationControllerAlarmDateProvider

- (NSDate)nextDate
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 objectForKey:@"EDRemindMeNotificationControllerNextAlarmDate"];

  return v3;
}

- (void)setNextDate:(id)a3
{
  v4 = a3;
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  [v3 setObject:v4 forKey:@"EDRemindMeNotificationControllerNextAlarmDate"];
}

@end