@interface HFManagedConfigurationUtilities
+ (BOOL)isExplicitContentAllowed;
@end

@implementation HFManagedConfigurationUtilities

+ (BOOL)isExplicitContentAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25E90]];

  return v3 == 1;
}

@end