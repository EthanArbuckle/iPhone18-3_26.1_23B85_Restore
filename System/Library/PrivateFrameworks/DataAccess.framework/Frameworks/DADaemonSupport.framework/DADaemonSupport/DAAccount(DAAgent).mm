@interface DAAccount(DAAgent)
- (id)agentClass;
@end

@implementation DAAccount(DAAgent)

- (id)agentClass
{
  mEMORY[0x277D03738] = [MEMORY[0x277D03738] sharedInstance];
  backingAccountInfo = [self backingAccountInfo];
  v4 = [mEMORY[0x277D03738] agentClassForACAccount:backingAccountInfo];

  return v4;
}

@end