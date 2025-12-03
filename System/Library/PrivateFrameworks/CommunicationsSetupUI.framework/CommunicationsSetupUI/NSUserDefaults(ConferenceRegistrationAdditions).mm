@interface NSUserDefaults(ConferenceRegistrationAdditions)
+ (uint64_t)CNFRegEmailValidationTimeout;
+ (uint64_t)shouldShowCNFRegistrationServerLogs;
+ (uint64_t)shouldShowCNFRegistrationSettingsUI;
+ (void)setCNFRegEmailValidationTimeout:()ConferenceRegistrationAdditions;
+ (void)setShouldShowCNFRegistrationServerLogs:()ConferenceRegistrationAdditions;
+ (void)setShouldShowCNFRegistrationSettingsUI:()ConferenceRegistrationAdditions;
@end

@implementation NSUserDefaults(ConferenceRegistrationAdditions)

+ (void)setShouldShowCNFRegistrationSettingsUI:()ConferenceRegistrationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setCNFObject:v2 forKey:@"CNFRegShowRegistrationSettingsUI"];
}

+ (uint64_t)shouldShowCNFRegistrationSettingsUI
{
  v1 = [self CNFObjectForKey:@"CNFRegShowRegistrationSettingsUI"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

+ (uint64_t)CNFRegEmailValidationTimeout
{
  v1 = [self CNFObjectForKey:@"registration.emailValidationTimeout"];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (void)setCNFRegEmailValidationTimeout:()ConferenceRegistrationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [self setCNFObject:v2 forKey:@"registration.emailValidationTimeout"];
}

+ (void)setShouldShowCNFRegistrationServerLogs:()ConferenceRegistrationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setCNFObject:v2 forKey:@"registration.showServerWebPageLogging"];
}

+ (uint64_t)shouldShowCNFRegistrationServerLogs
{
  v1 = [self CNFObjectForKey:@"registration.showServerWebPageLogging"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end