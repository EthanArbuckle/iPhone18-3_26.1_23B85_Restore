@interface MTUpdateAlarmIntentHandler
- (id)_alarmUserActivityWithIntent:(id)intent;
- (void)confirmUpdateAlarm:(id)alarm completion:(id)completion;
- (void)handleUpdateAlarm:(id)alarm completion:(id)completion;
@end

@implementation MTUpdateAlarmIntentHandler

- (void)confirmUpdateAlarm:(id)alarm completion:(id)completion
{
  completionCopy = completion;
  alarmCopy = alarm;
  v8 = [MTUpdateAlarmIntentResponse alloc];
  v9 = [(MTUpdateAlarmIntentHandler *)self _alarmUserActivityWithIntent:alarmCopy];

  v10 = [(MTUpdateAlarmIntentResponse *)v8 initWithCode:4 userActivity:v9];
  completionCopy[2](completionCopy, v10);
}

- (void)handleUpdateAlarm:(id)alarm completion:(id)completion
{
  completionCopy = completion;
  alarmCopy = alarm;
  v8 = [MTUpdateAlarmIntentResponse alloc];
  v9 = [(MTUpdateAlarmIntentHandler *)self _alarmUserActivityWithIntent:alarmCopy];

  v10 = [(MTUpdateAlarmIntentResponse *)v8 initWithCode:2 userActivity:v9];
  completionCopy[2](completionCopy, v10);
}

- (id)_alarmUserActivityWithIntent:(id)intent
{
  v3 = MEMORY[0x1E696B090];
  intentCopy = intent;
  v5 = [v3 mtUserActivityWithActivityType:@"com.apple.clock.alarm"];
  v6 = objc_opt_class();
  identifier = [intentCopy identifier];
  alarmID = [intentCopy alarmID];

  identifier2 = [alarmID identifier];
  v10 = [v6 createUserInfoWithIntentName:identifier alarmIDString:identifier2 time:0 label:0];

  [v5 setUserInfo:v10];

  return v5;
}

@end