@interface CDPUIDeviceToDeviceEncryptionIneligibilityAlertViewModel
- (id)continueTitle;
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionIneligibilityAlertViewModel

- (id)title
{
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  featureName = [context featureName];

  if (featureName)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_INELIGIBLE_TITLE_WITH_FEATURE"];
    localizedString = [v6 localizedString];
    context2 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
    featureName2 = [context2 featureName];
    localizedString2 = [v5 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, featureName2];
  }

  else
  {
    v6 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_INELIGIBLE_TITLE"];
    localizedString2 = [v6 localizedString];
  }

  return localizedString2;
}

- (id)message
{
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  altDSID = [context altDSID];
  v6 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:altDSID];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_INELIGIBLE_MESSAGE_REBRAND"];
  localizedString = [v8 localizedString];
  username = [v6 username];
  v11 = [v7 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, username];

  return v11;
}

- (id)continueTitle
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"OK"];
  localizedString = [v2 localizedString];

  return localizedString;
}

@end