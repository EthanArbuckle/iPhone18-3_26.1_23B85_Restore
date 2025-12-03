@interface NSXPCConnection(MessageChannelActivationLifetime)
- (uint64_t)activated;
- (void)setActivated:()MessageChannelActivationLifetime;
@end

@implementation NSXPCConnection(MessageChannelActivationLifetime)

- (void)setActivated:()MessageChannelActivationLifetime
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, sel_activated, v2, 1);
}

- (uint64_t)activated
{
  v1 = objc_getAssociatedObject(self, sel_activated);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end