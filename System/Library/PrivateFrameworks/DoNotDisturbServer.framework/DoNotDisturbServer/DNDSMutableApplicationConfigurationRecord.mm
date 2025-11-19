@interface DNDSMutableApplicationConfigurationRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowedThreads:(id)a3;
- (void)setDeniedThreads:(id)a3;
- (void)setMinimumBreakthroughUrgency:(id)a3;
@end

@implementation DNDSMutableApplicationConfigurationRecord

- (void)setMinimumBreakthroughUrgency:(id)a3
{
  v4 = [a3 copy];
  minimumBreakthroughUrgency = self->super._minimumBreakthroughUrgency;
  self->super._minimumBreakthroughUrgency = v4;

  MEMORY[0x2821F96F8](v4, minimumBreakthroughUrgency);
}

- (void)setAllowedThreads:(id)a3
{
  v4 = [a3 copy];
  allowedThreads = self->super._allowedThreads;
  self->super._allowedThreads = v4;

  MEMORY[0x2821F96F8](v4, allowedThreads);
}

- (void)setDeniedThreads:(id)a3
{
  v4 = [a3 copy];
  deniedThreads = self->super._deniedThreads;
  self->super._deniedThreads = v4;

  MEMORY[0x2821F96F8](v4, deniedThreads);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSApplicationConfigurationRecord alloc];

  return [(DNDSApplicationConfigurationRecord *)v4 _initWithRecord:self];
}

@end