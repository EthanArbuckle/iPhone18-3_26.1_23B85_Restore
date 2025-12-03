@interface MTEnableAlarmIntentResponse
- (MTEnableAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MTEnableAlarmIntentResponse

- (MTEnableAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MTEnableAlarmIntentResponse;
  v7 = [(MTEnableAlarmIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MTEnableAlarmIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end