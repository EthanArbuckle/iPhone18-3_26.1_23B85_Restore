@interface DefaultEDRemindMeNotificationControllerAlarmDateProvider
- (NSDate)nextDate;
- (void)setNextDate:(id)date;
@end

@implementation DefaultEDRemindMeNotificationControllerAlarmDateProvider

- (NSDate)nextDate
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults objectForKey:@"EDRemindMeNotificationControllerNextAlarmDate"];

  return v3;
}

- (void)setNextDate:(id)date
{
  dateCopy = date;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  [em_userDefaults setObject:dateCopy forKey:@"EDRemindMeNotificationControllerNextAlarmDate"];
}

@end