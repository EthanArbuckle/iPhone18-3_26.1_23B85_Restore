@interface DNDSMutableHeartbeatMetricsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNumberOfManualSessions:(id)sessions;
- (void)setNumberOfSessions:(id)sessions;
@end

@implementation DNDSMutableHeartbeatMetricsRecord

- (void)setNumberOfSessions:(id)sessions
{
  v4 = [sessions copy];
  numberOfSessions = self->super._numberOfSessions;
  self->super._numberOfSessions = v4;

  MEMORY[0x2821F96F8](v4, numberOfSessions);
}

- (void)setNumberOfManualSessions:(id)sessions
{
  v4 = [sessions copy];
  numberOfManualSessions = self->super._numberOfManualSessions;
  self->super._numberOfManualSessions = v4;

  MEMORY[0x2821F96F8](v4, numberOfManualSessions);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSHeartbeatMetricsRecord alloc];

  return [(DNDSHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

@end