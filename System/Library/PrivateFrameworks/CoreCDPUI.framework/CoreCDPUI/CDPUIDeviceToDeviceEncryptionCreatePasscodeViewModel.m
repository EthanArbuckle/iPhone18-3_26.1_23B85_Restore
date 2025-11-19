@interface CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel

- (id)title
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CREATE_SECRET_TITLE"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel _localSecretType](self, "_localSecretType")}];
  v5 = [MEMORY[0x277CFD4F8] sharedInstance];
  v6 = [v5 deviceClass];
  v7 = [v4 addDeviceClass:v6];
  v8 = [v7 localizedString];

  return v8;
}

- (id)message
{
  v3 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v4 = [v3 deviceToDeviceEncryptionUpgradeType];

  if (v4 == 1)
  {
    v5 = @"D2DENCRYPTION_2FA_CREATE_SECRET_MESSAGE";
  }

  else
  {
    v5 = @"D2DENCRYPTION_CREATE_SECRET_MESSAGE";
  }

  v6 = [MEMORY[0x277CFD508] builderForKey:v5];
  v7 = [v6 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCreatePasscodeViewModel _localSecretType](self, "_localSecretType")}];
  v8 = [MEMORY[0x277CFD4F8] sharedInstance];
  v9 = [v8 deviceClass];
  v10 = [v7 addDeviceClass:v9];
  v11 = [v10 localizedString];

  return v11;
}

@end