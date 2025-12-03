@interface DAAccount(DAAgent)
- (id)agentClass;
@end

@implementation DAAccount(DAAgent)

- (id)agentClass
{
  mEMORY[0x277CF3A00] = [MEMORY[0x277CF3A00] sharedInstance];
  backingAccountInfo = [self backingAccountInfo];
  v4 = [mEMORY[0x277CF3A00] agentClassForACAccount:backingAccountInfo];

  return v4;
}

@end