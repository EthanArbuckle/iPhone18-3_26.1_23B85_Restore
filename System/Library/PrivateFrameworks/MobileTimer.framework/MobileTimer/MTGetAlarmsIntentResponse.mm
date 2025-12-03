@interface MTGetAlarmsIntentResponse
+ (id)successIntentResponseWithAlarms:(id)alarms;
- (MTGetAlarmsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MTGetAlarmsIntentResponse

- (MTGetAlarmsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MTGetAlarmsIntentResponse;
  v7 = [(MTGetAlarmsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MTGetAlarmsIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

+ (id)successIntentResponseWithAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v4 = [[MTGetAlarmsIntentResponse alloc] initWithCode:4 userActivity:0];
  [(MTGetAlarmsIntentResponse *)v4 setAlarms:alarmsCopy];

  return v4;
}

@end