@interface DKInternetWarningAdvancedDataProtectionConfiguration
- (id)confirmationContinueWithoutInternetButtonTitle;
- (id)confirmationTitle;
- (id)continueWithoutInternetButtonTitle;
- (id)detail;
- (id)requireInternetButtonTitle;
- (id)title;
@end

@implementation DKInternetWarningAdvancedDataProtectionConfiguration

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_WARNING_STRICT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  return v3;
}

- (id)detail
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_WARNING_STRICT_DETAIL" value:&stru_285BC2A70 table:@"Localizable"];

  return v3;
}

- (id)requireInternetButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_WARNING_STRICT_REQUIRE_INTERNET_BUTTON" value:&stru_285BC2A70 table:@"Localizable"];

  return v3;
}

- (id)continueWithoutInternetButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_WARNING_STRICT_CONTINUE_WITHOUT_INTERNET_BUTTON" value:&stru_285BC2A70 table:@"Localizable"];

  return v3;
}

- (id)confirmationTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_WARNING_STRICT_CONFIRMATION_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  return v3;
}

- (id)confirmationContinueWithoutInternetButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_WARNING_STRICT_CONFIRMATION_CONTINUE_WITHOUT_INTERNET_BUTTON" value:&stru_285BC2A70 table:@"Localizable"];

  return v3;
}

@end