@interface EDDefaultSendLaterUpdateControllerAlarmDateProvider
- (NSDate)nextDate;
- (void)setNextDate:(id)date;
@end

@implementation EDDefaultSendLaterUpdateControllerAlarmDateProvider

- (NSDate)nextDate
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults objectForKey:@"EDSendLaterUpdateControllerNextAlarmDate"];

  return v3;
}

- (void)setNextDate:(id)date
{
  dateCopy = date;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  [em_userDefaults setObject:dateCopy forKey:@"EDSendLaterUpdateControllerNextAlarmDate"];
}

@end