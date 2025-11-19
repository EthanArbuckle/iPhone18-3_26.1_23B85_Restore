@interface MTUpdateAlarmIntentHandler
- (id)_alarmUserActivityWithIntent:(id)a3;
- (void)confirmUpdateAlarm:(id)a3 completion:(id)a4;
- (void)handleUpdateAlarm:(id)a3 completion:(id)a4;
@end

@implementation MTUpdateAlarmIntentHandler

- (void)confirmUpdateAlarm:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MTUpdateAlarmIntentResponse alloc];
  v9 = [(MTUpdateAlarmIntentHandler *)self _alarmUserActivityWithIntent:v7];

  v10 = [(MTUpdateAlarmIntentResponse *)v8 initWithCode:4 userActivity:v9];
  v6[2](v6, v10);
}

- (void)handleUpdateAlarm:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MTUpdateAlarmIntentResponse alloc];
  v9 = [(MTUpdateAlarmIntentHandler *)self _alarmUserActivityWithIntent:v7];

  v10 = [(MTUpdateAlarmIntentResponse *)v8 initWithCode:2 userActivity:v9];
  v6[2](v6, v10);
}

- (id)_alarmUserActivityWithIntent:(id)a3
{
  v3 = MEMORY[0x1E696B090];
  v4 = a3;
  v5 = [v3 mtUserActivityWithActivityType:@"com.apple.clock.alarm"];
  v6 = objc_opt_class();
  v7 = [v4 identifier];
  v8 = [v4 alarmID];

  v9 = [v8 identifier];
  v10 = [v6 createUserInfoWithIntentName:v7 alarmIDString:v9 time:0 label:0];

  [v5 setUserInfo:v10];

  return v5;
}

@end