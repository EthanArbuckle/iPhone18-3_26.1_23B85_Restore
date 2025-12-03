@interface CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel

- (id)title
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CREATE_SECRET_TITLE"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel _localSecretType](self, "_localSecretType")}];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v7 = [v4 addDeviceClass:deviceClass];
  localizedString = [v7 localizedString];

  return localizedString;
}

- (id)message
{
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  deviceToDeviceEncryptionUpgradeType = [context deviceToDeviceEncryptionUpgradeType];

  if (deviceToDeviceEncryptionUpgradeType == 1)
  {
    v5 = @"D2DENCRYPTION_2FA_CREATE_SECRET_MESSAGE";
  }

  else
  {
    v5 = @"D2DENCRYPTION_CREATE_SECRET_MESSAGE";
  }

  v6 = [MEMORY[0x277CFD508] builderForKey:v5];
  v7 = [v6 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel _localSecretType](self, "_localSecretType")}];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v10 = [v7 addDeviceClass:deviceClass];
  localizedString = [v10 localizedString];

  return localizedString;
}

@end