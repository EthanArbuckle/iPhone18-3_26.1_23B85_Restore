@interface NSXPCConnection(MessageChannelActivationLifetime)
- (uint64_t)activated;
- (void)setActivated:()MessageChannelActivationLifetime;
@end

@implementation NSXPCConnection(MessageChannelActivationLifetime)

- (void)setActivated:()MessageChannelActivationLifetime
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, sel_activated, v2, 1);
}

- (uint64_t)activated
{
  v1 = objc_getAssociatedObject(a1, sel_activated);
  v2 = [v1 BOOLValue];

  return v2;
}

@end