@interface DNDSMutableDailyHeartbeatMetricsRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDayOfWeek:(id)a3;
- (void)setNumberOfManualSessions:(id)a3;
- (void)setNumberOfSessions:(id)a3;
@end

@implementation DNDSMutableDailyHeartbeatMetricsRecord

- (void)setNumberOfSessions:(id)a3
{
  v4 = [a3 copy];
  numberOfSessions = self->super.super._numberOfSessions;
  self->super.super._numberOfSessions = v4;

  MEMORY[0x2821F96F8](v4, numberOfSessions);
}

- (void)setNumberOfManualSessions:(id)a3
{
  v4 = [a3 copy];
  numberOfManualSessions = self->super.super._numberOfManualSessions;
  self->super.super._numberOfManualSessions = v4;

  MEMORY[0x2821F96F8](v4, numberOfManualSessions);
}

- (void)setDayOfWeek:(id)a3
{
  v4 = [a3 copy];
  dayOfWeek = self->super._dayOfWeek;
  self->super._dayOfWeek = v4;

  MEMORY[0x2821F96F8](v4, dayOfWeek);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSDailyHeartbeatMetricsRecord alloc];

  return [(DNDSDailyHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

@end