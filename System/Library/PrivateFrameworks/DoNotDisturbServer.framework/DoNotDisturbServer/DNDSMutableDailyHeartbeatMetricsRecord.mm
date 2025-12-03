@interface DNDSMutableDailyHeartbeatMetricsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDayOfWeek:(id)week;
- (void)setNumberOfManualSessions:(id)sessions;
- (void)setNumberOfSessions:(id)sessions;
@end

@implementation DNDSMutableDailyHeartbeatMetricsRecord

- (void)setNumberOfSessions:(id)sessions
{
  v4 = [sessions copy];
  numberOfSessions = self->super.super._numberOfSessions;
  self->super.super._numberOfSessions = v4;

  MEMORY[0x2821F96F8](v4, numberOfSessions);
}

- (void)setNumberOfManualSessions:(id)sessions
{
  v4 = [sessions copy];
  numberOfManualSessions = self->super.super._numberOfManualSessions;
  self->super.super._numberOfManualSessions = v4;

  MEMORY[0x2821F96F8](v4, numberOfManualSessions);
}

- (void)setDayOfWeek:(id)week
{
  v4 = [week copy];
  dayOfWeek = self->super._dayOfWeek;
  self->super._dayOfWeek = v4;

  MEMORY[0x2821F96F8](v4, dayOfWeek);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSDailyHeartbeatMetricsRecord alloc];

  return [(DNDSDailyHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

@end