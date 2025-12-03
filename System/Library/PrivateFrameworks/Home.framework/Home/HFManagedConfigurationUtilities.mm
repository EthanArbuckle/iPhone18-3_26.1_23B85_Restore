@interface HFManagedConfigurationUtilities
+ (BOOL)isExplicitContentAllowed;
@end

@implementation HFManagedConfigurationUtilities

+ (BOOL)isExplicitContentAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E90]];

  return v3 == 1;
}

@end