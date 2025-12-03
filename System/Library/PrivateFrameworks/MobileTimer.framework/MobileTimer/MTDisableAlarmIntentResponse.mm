@interface MTDisableAlarmIntentResponse
- (MTDisableAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MTDisableAlarmIntentResponse

- (MTDisableAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MTDisableAlarmIntentResponse;
  v7 = [(MTDisableAlarmIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MTDisableAlarmIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end