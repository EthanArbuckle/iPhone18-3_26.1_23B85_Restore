@interface HMFMutableMessage(XPC)
- (void)setRequiresNoSPIEntitlement:()XPC;
- (void)setRequiresSPIEntitlement:()XPC;
@end

@implementation HMFMutableMessage(XPC)

- (void)setRequiresNoSPIEntitlement:()XPC
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setUserInfoValue:v2 forKey:@"requiresNoSPIEntitlement"];
}

- (void)setRequiresSPIEntitlement:()XPC
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setUserInfoValue:v2 forKey:@"requiresSPIEntitlement"];
}

@end