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
  localizedString = [v4 localizedString];

  return localizedString;
}

- (id)message
{
  _localSecretType = [(CDPUIDeviceToDeviceEncryptionCancelCreateViewModel *)self _localSecretType];
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  featureName = [context featureName];

  if (featureName)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET_MESSAGE_WITH_FEATURE"];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
    v10 = [v7 addDeviceClass:deviceClass];
    v11 = [v10 addSecretType:_localSecretType];
    localizedString = [v11 localizedString];
    context2 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
    featureName2 = [context2 featureName];
    localizedString2 = [v6 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, featureName2];
  }

  else
  {
    v7 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET_MESSAGE"];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
    v10 = [v7 addDeviceClass:deviceClass];
    v11 = [v10 addSecretType:_localSecretType];
    localizedString2 = [v11 localizedString];
  }

  return localizedString2;
}

- (id)continueTitle
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_DONT_USE"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel _localSecretType](self, "_localSecretType")}];
  localizedString = [v4 localizedString];

  return localizedString;
}

- (id)cancelTitle
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL_CREATE_SECRET"];
  v4 = [v3 addSecretType:{-[CDPUIDeviceToDeviceEncryptionCancelCreateViewModel _localSecretType](self, "_localSecretType")}];
  localizedString = [v4 localizedString];

  return localizedString;
}

@end