@interface DAAccount(DAAgent)
- (id)agentClass;
@end

@implementation DAAccount(DAAgent)

- (id)agentClass
{
  v2 = [MEMORY[0x277CF3A00] sharedInstance];
  v3 = [a1 backingAccountInfo];
  v4 = [v2 agentClassForACAccount:v3];

  return v4;
}

@end