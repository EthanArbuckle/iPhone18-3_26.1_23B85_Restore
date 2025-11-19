@interface CDPUIDeviceToDeviceEncryptionIneligibilityAlertViewModel
- (id)continueTitle;
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionIneligibilityAlertViewModel

- (id)title
{
  v3 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v4 = [v3 featureName];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_INELIGIBLE_TITLE_WITH_FEATURE"];
    v7 = [v6 localizedString];
    v8 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
    v9 = [v8 featureName];
    v10 = [v5 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v9];
  }

  else
  {
    v6 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_INELIGIBLE_TITLE"];
    v10 = [v6 localizedString];
  }

  return v10;
}

- (id)message
{
  v3 = [MEMORY[0x277CF0130] sharedInstance];
  v4 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v5 = [v4 altDSID];
  v6 = [v3 authKitAccountWithAltDSID:v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_INELIGIBLE_MESSAGE_REBRAND"];
  v9 = [v8 localizedString];
  v10 = [v6 username];
  v11 = [v7 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10];

  return v11;
}

- (id)continueTitle
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"OK"];
  v3 = [v2 localizedString];

  return v3;
}

@end