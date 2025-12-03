@interface DNDSMutableWeeklyHeartbeatMetricsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNumberOfManualSessions:(id)sessions;
- (void)setNumberOfSessions:(id)sessions;
@end

@implementation DNDSMutableWeeklyHeartbeatMetricsRecord

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSWeeklyHeartbeatMetricsRecord alloc];

  return [(DNDSHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

@end