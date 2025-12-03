@interface CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel
- (id)_stringWithFeatureIfNeeded:(id)needed;
- (id)_stringWithFeatureSubstituted:(id)substituted;
- (id)cancelTitle;
- (id)continueTitle;
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel

- (id)title
{
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  deviceToDeviceEncryptionUpgradeType = [context deviceToDeviceEncryptionUpgradeType];

  if (deviceToDeviceEncryptionUpgradeType == 1)
  {
    goto LABEL_7;
  }

  if (![(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]|| [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
  {
    if ([(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]&& [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
    {
      v5 = @"D2DENCRYPTION_UPGRADE_TITLE_ONLY_MISSING_SECRET";
LABEL_8:
      localizedString2 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureIfNeeded:v5];
      v7 = [MEMORY[0x277CFD508] builderForKey:localizedString2];
      localizedString = [v7 localizedString];
      v9 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureSubstituted:localizedString];

      goto LABEL_9;
    }

LABEL_7:
    v5 = @"D2DENCRYPTION_UPGRADE_TITLE";
    goto LABEL_8;
  }

  v11 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureIfNeeded:@"D2DENCRYPTION_UPGRADE_TITLE_UPGRADE_MISSING_SECRET"];
  v12 = [MEMORY[0x277CFD508] builderForKey:v11];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v15 = [v12 addDeviceClass:deviceClass];
  v16 = [v15 addSecretType:{-[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel _localSecretType](self, "_localSecretType")}];
  localizedString2 = [v16 localizedString];

  v9 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureSubstituted:localizedString2];
LABEL_9:

  return v9;
}

- (id)message
{
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  deviceToDeviceEncryptionUpgradeType = [context deviceToDeviceEncryptionUpgradeType];

  if (deviceToDeviceEncryptionUpgradeType == 1)
  {
    localizedString2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE"];
    localizedString = [localizedString2 localizedString];
    goto LABEL_12;
  }

  if ([(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]&& ![(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
  {
    localizedString2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE_NO_UPGRADE_MISSING_SECRET"];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
    v9 = [localizedString2 addDeviceClass:deviceClass];
    v15 = [v9 addSecretType:{-[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel _localSecretType](self, "_localSecretType")}];
    localizedString = [v15 localizedString];

    goto LABEL_10;
  }

  if ([(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]&& [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
  {
    localizedString2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE_ONLY_MISSING_SECRET_REBRAND"];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
    v9 = [localizedString2 addDeviceClass:deviceClass];
    localizedString = [v9 localizedString];
LABEL_10:

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE_UPGRADE_MISSING_SECRET"];
  v11 = [v10 addSecretType:{-[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel _localSecretType](self, "_localSecretType")}];
  mEMORY[0x277CFD4F8]2 = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass2 = [mEMORY[0x277CFD4F8]2 deviceClass];
  v14 = [v11 addDeviceClass:deviceClass2];
  localizedString2 = [v14 localizedString];

  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD508] builderForKey:localizedString2];
  localizedString = [mEMORY[0x277CFD4F8] localizedString];
LABEL_11:

LABEL_12:

  return localizedString;
}

- (id)continueTitle
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CONTINUE"];
  localizedString = [v2 localizedString];

  return localizedString;
}

- (id)cancelTitle
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL"];
  localizedString = [v2 localizedString];

  return localizedString;
}

- (id)_stringWithFeatureIfNeeded:(id)needed
{
  neededCopy = needed;
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  featureName = [context featureName];

  if (featureName)
  {
    v7 = [neededCopy stringByAppendingString:@"_WITH_FEATURE"];
  }

  else
  {
    v7 = neededCopy;
  }

  v8 = v7;

  return v8;
}

- (id)_stringWithFeatureSubstituted:(id)substituted
{
  substitutedCopy = substituted;
  context = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  featureName = [context featureName];

  if (featureName)
  {
    v7 = MEMORY[0x277CCACA8];
    context2 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
    featureName2 = [context2 featureName];
    v10 = [v7 stringWithValidatedFormat:substitutedCopy validFormatSpecifiers:@"%@" error:0, featureName2];
  }

  else
  {
    v10 = substitutedCopy;
  }

  return v10;
}

@end