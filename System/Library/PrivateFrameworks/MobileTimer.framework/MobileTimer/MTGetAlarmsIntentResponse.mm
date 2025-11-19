@interface MTGetAlarmsIntentResponse
+ (id)successIntentResponseWithAlarms:(id)a3;
- (MTGetAlarmsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation MTGetAlarmsIntentResponse

- (MTGetAlarmsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MTGetAlarmsIntentResponse;
  v7 = [(MTGetAlarmsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(MTGetAlarmsIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

+ (id)successIntentResponseWithAlarms:(id)a3
{
  v3 = a3;
  v4 = [[MTGetAlarmsIntentResponse alloc] initWithCode:4 userActivity:0];
  [(MTGetAlarmsIntentResponse *)v4 setAlarms:v3];

  return v4;
}

@end