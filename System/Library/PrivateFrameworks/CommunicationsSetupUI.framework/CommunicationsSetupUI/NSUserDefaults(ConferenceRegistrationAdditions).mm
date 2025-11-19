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
  [a1 setCNFObject:v2 forKey:@"CNFRegShowRegistrationSettingsUI"];
}

+ (uint64_t)shouldShowCNFRegistrationSettingsUI
{
  v1 = [a1 CNFObjectForKey:@"CNFRegShowRegistrationSettingsUI"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (uint64_t)CNFRegEmailValidationTimeout
{
  v1 = [a1 CNFObjectForKey:@"registration.emailValidationTimeout"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

+ (void)setCNFRegEmailValidationTimeout:()ConferenceRegistrationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [a1 setCNFObject:v2 forKey:@"registration.emailValidationTimeout"];
}

+ (void)setShouldShowCNFRegistrationServerLogs:()ConferenceRegistrationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setCNFObject:v2 forKey:@"registration.showServerWebPageLogging"];
}

+ (uint64_t)shouldShowCNFRegistrationServerLogs
{
  v1 = [a1 CNFObjectForKey:@"registration.showServerWebPageLogging"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end