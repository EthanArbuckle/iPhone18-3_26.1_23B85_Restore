@interface MTCreateAlarmIntentResponse
+ (id)successIntentResponseWithAlarm:(id)alarm;
- (MTCreateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MTCreateAlarmIntentResponse

- (MTCreateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MTCreateAlarmIntentResponse;
  v7 = [(MTCreateAlarmIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MTCreateAlarmIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

+ (id)successIntentResponseWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  v4 = [[MTCreateAlarmIntentResponse alloc] initWithCode:4 userActivity:0];
  [(MTCreateAlarmIntentResponse *)v4 setAlarm:alarmCopy];

  return v4;
}

@end