@interface DKRestrictionsProvider
- (BOOL)isPreserveESIMOnEraseEnforced;
@end

@implementation DKRestrictionsProvider

- (BOOL)isPreserveESIMOnEraseEnforced
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPreserveESIMOnEraseEnforced];

  return v3;
}

@end