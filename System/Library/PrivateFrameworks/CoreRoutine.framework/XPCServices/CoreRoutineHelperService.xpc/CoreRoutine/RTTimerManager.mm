@interface RTTimerManager
- (id)timerWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5;
- (id)xpcTimerAlarmWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation RTTimerManager

- (id)timerWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RTTimer alloc] initWithIdentifier:v9 queue:v8 handler:v7];

  return v10;
}

- (id)xpcTimerAlarmWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RTXPCTimerAlarm alloc] initWithIdentifier:v9 queue:v8 handler:v7];

  return v10;
}

@end