@interface MTUpdateAlarmIntentResponse
- (MTUpdateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MTUpdateAlarmIntentResponse

- (MTUpdateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MTUpdateAlarmIntentResponse;
  v7 = [(MTUpdateAlarmIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MTUpdateAlarmIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end