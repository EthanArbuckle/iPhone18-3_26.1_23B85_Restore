@interface MTCreateAlarmIntentResponse
+ (id)successIntentResponseWithAlarm:(id)a3;
- (MTCreateAlarmIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation MTCreateAlarmIntentResponse

- (MTCreateAlarmIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MTCreateAlarmIntentResponse;
  v7 = [(MTCreateAlarmIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(MTCreateAlarmIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

+ (id)successIntentResponseWithAlarm:(id)a3
{
  v3 = a3;
  v4 = [[MTCreateAlarmIntentResponse alloc] initWithCode:4 userActivity:0];
  [(MTCreateAlarmIntentResponse *)v4 setAlarm:v3];

  return v4;
}

@end