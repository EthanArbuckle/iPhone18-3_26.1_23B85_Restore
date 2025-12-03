@interface DKRestrictionsProvider
- (BOOL)isPreserveESIMOnEraseEnforced;
@end

@implementation DKRestrictionsProvider

- (BOOL)isPreserveESIMOnEraseEnforced
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPreserveESIMOnEraseEnforced = [mEMORY[0x277D262A0] isPreserveESIMOnEraseEnforced];

  return isPreserveESIMOnEraseEnforced;
}

@end