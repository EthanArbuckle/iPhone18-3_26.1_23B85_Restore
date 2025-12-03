@interface DNDSMutableApplicationConfigurationRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowedThreads:(id)threads;
- (void)setDeniedThreads:(id)threads;
- (void)setMinimumBreakthroughUrgency:(id)urgency;
@end

@implementation DNDSMutableApplicationConfigurationRecord

- (void)setMinimumBreakthroughUrgency:(id)urgency
{
  v4 = [urgency copy];
  minimumBreakthroughUrgency = self->super._minimumBreakthroughUrgency;
  self->super._minimumBreakthroughUrgency = v4;

  MEMORY[0x2821F96F8](v4, minimumBreakthroughUrgency);
}

- (void)setAllowedThreads:(id)threads
{
  v4 = [threads copy];
  allowedThreads = self->super._allowedThreads;
  self->super._allowedThreads = v4;

  MEMORY[0x2821F96F8](v4, allowedThreads);
}

- (void)setDeniedThreads:(id)threads
{
  v4 = [threads copy];
  deniedThreads = self->super._deniedThreads;
  self->super._deniedThreads = v4;

  MEMORY[0x2821F96F8](v4, deniedThreads);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSApplicationConfigurationRecord alloc];

  return [(DNDSApplicationConfigurationRecord *)v4 _initWithRecord:self];
}

@end