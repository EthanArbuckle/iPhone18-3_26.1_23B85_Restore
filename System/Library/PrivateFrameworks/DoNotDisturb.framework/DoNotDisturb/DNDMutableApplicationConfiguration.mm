@interface DNDMutableApplicationConfiguration
- (void)setAllowedThreads:(id)threads;
- (void)setDeniedThreads:(id)threads;
@end

@implementation DNDMutableApplicationConfiguration

- (void)setAllowedThreads:(id)threads
{
  v4 = [threads mutableCopy];
  allowedThreads = self->super._allowedThreads;
  self->super._allowedThreads = v4;

  MEMORY[0x2821F96F8](v4, allowedThreads);
}

- (void)setDeniedThreads:(id)threads
{
  v4 = [threads mutableCopy];
  deniedThreads = self->super._deniedThreads;
  self->super._deniedThreads = v4;

  MEMORY[0x2821F96F8](v4, deniedThreads);
}

@end