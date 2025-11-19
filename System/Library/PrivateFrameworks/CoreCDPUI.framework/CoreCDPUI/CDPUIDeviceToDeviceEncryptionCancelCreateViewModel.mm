@interface CDPUIDeviceToDeviceEncryptionCancelCreateViewModel
- (id)cancelTitle;
- (id)continueTitle;
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionCancelCreateViewModel

- (id)title
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET_TITLE"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel _localSecretType](self, "_localSecretType")}];
  v5 = [v4 localizedString];

  return v5;
}

- (id)message
{
  v3 = [(CDPUIDeviceToDeviceEncryptionCancelCreateViewModel *)self _localSecretType];
  v4 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v5 = [v4 featureName];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET_MESSAGE_WITH_FEATURE"];
    v8 = [MEMORY[0x277CFD4F8] sharedInstance];
    v9 = [v8 deviceClass];
    v10 = [v7 addDeviceClass:v9];
    v11 = [v10 addSecretType:v3];
    v12 = [v11 localizedString];
    v13 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
    v14 = [v13 featureName];
    v15 = [v6 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v14];
  }

  else
  {
    v7 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET_MESSAGE"];
    v8 = [MEMORY[0x277CFD4F8] sharedInstance];
    v9 = [v8 deviceClass];
    v10 = [v7 addDeviceClass:v9];
    v11 = [v10 addSecretType:v3];
    v15 = [v11 localizedString];
  }

  return v15;
}

- (id)continueTitle
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_DONT_USE"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel _localSecretType](self, "_localSecretType")}];
  v5 = [v4 localizedString];

  return v5;
}

- (id)cancelTitle
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel _localSecretType](self, "_localSecretType")}];
  v5 = [v4 localizedString];

  return v5;
}

@end