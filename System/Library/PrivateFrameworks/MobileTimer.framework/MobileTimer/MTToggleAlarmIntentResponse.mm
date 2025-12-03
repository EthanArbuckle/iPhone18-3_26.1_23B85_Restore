@interface MTToggleAlarmIntentResponse
+ (id)continueInAppIntentResponseWithState:(int64_t)state;
+ (id)failureRequiringAppLaunchIntentResponseWithState:(int64_t)state;
+ (id)inProgressIntentResponseWithState:(int64_t)state;
+ (id)readyIntentResponseWithState:(int64_t)state;
+ (id)successIntentResponseWithState:(int64_t)state alarm:(id)alarm;
+ (id)unspecifiedIntentResponseWithState:(int64_t)state;
- (MTToggleAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MTToggleAlarmIntentResponse

- (MTToggleAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MTToggleAlarmIntentResponse;
  v7 = [(MTToggleAlarmIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MTToggleAlarmIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

+ (id)unspecifiedIntentResponseWithState:(int64_t)state
{
  v4 = [[MTToggleAlarmIntentResponse alloc] initWithCode:0 userActivity:0];
  [(MTToggleAlarmIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)readyIntentResponseWithState:(int64_t)state
{
  v4 = [[MTToggleAlarmIntentResponse alloc] initWithCode:1 userActivity:0];
  [(MTToggleAlarmIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)continueInAppIntentResponseWithState:(int64_t)state
{
  v4 = [[MTToggleAlarmIntentResponse alloc] initWithCode:2 userActivity:0];
  [(MTToggleAlarmIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)inProgressIntentResponseWithState:(int64_t)state
{
  v4 = [[MTToggleAlarmIntentResponse alloc] initWithCode:3 userActivity:0];
  [(MTToggleAlarmIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)successIntentResponseWithState:(int64_t)state alarm:(id)alarm
{
  alarmCopy = alarm;
  v6 = [[MTToggleAlarmIntentResponse alloc] initWithCode:4 userActivity:0];
  [(MTToggleAlarmIntentResponse *)v6 setState:state];
  [(MTToggleAlarmIntentResponse *)v6 setAlarm:alarmCopy];

  return v6;
}

+ (id)failureRequiringAppLaunchIntentResponseWithState:(int64_t)state
{
  v4 = [[MTToggleAlarmIntentResponse alloc] initWithCode:6 userActivity:0];
  [(MTToggleAlarmIntentResponse *)v4 setState:state];

  return v4;
}

@end