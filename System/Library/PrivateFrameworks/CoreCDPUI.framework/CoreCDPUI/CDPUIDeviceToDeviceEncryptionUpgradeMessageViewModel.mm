@interface CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel
- (id)_stringWithFeatureIfNeeded:(id)a3;
- (id)_stringWithFeatureSubstituted:(id)a3;
- (id)cancelTitle;
- (id)continueTitle;
- (id)message;
- (id)title;
@end

@implementation CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel

- (id)title
{
  v3 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v4 = [v3 deviceToDeviceEncryptionUpgradeType];

  if (v4 == 1)
  {
    goto LABEL_7;
  }

  if (![(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]|| [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
  {
    if ([(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]&& [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
    {
      v5 = @"D2DENCRYPTION_UPGRADE_TITLE_ONLY_MISSING_SECRET";
LABEL_8:
      v6 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureIfNeeded:v5];
      v7 = [MEMORY[0x277CFD508] builderForKey:v6];
      v8 = [v7 localizedString];
      v9 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureSubstituted:v8];

      goto LABEL_9;
    }

LABEL_7:
    v5 = @"D2DENCRYPTION_UPGRADE_TITLE";
    goto LABEL_8;
  }

  v11 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureIfNeeded:@"D2DENCRYPTION_UPGRADE_TITLE_UPGRADE_MISSING_SECRET"];
  v12 = [MEMORY[0x277CFD508] builderForKey:v11];
  v13 = [MEMORY[0x277CFD4F8] sharedInstance];
  v14 = [v13 deviceClass];
  v15 = [v12 addDeviceClass:v14];
  v16 = [v15 addSecretType:{-[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel _localSecretType](self, "_localSecretType")}];
  v6 = [v16 localizedString];

  v9 = [(CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel *)self _stringWithFeatureSubstituted:v6];
LABEL_9:

  return v9;
}

- (id)message
{
  v3 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v4 = [v3 deviceToDeviceEncryptionUpgradeType];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE"];
    v6 = [v5 localizedString];
    goto LABEL_12;
  }

  if ([(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]&& ![(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
  {
    v5 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE_NO_UPGRADE_MISSING_SECRET"];
    v7 = [MEMORY[0x277CFD4F8] sharedInstance];
    v8 = [v7 deviceClass];
    v9 = [v5 addDeviceClass:v8];
    v15 = [v9 addSecretType:{-[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel _localSecretType](self, "_localSecretType")}];
    v6 = [v15 localizedString];

    goto LABEL_10;
  }

  if ([(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self is2FA]&& [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self hasLocalSecret])
  {
    v5 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE_ONLY_MISSING_SECRET_REBRAND"];
    v7 = [MEMORY[0x277CFD4F8] sharedInstance];
    v8 = [v7 deviceClass];
    v9 = [v5 addDeviceClass:v8];
    v6 = [v9 localizedString];
LABEL_10:

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_UPGRADE_MESSAGE_UPGRADE_MISSING_SECRET"];
  v11 = [v10 addSecretType:{-[CDPUIDeviceToDeviceEncryptionUpgradeMessageViewModel _localSecretType](self, "_localSecretType")}];
  v12 = [MEMORY[0x277CFD4F8] sharedInstance];
  v13 = [v12 deviceClass];
  v14 = [v11 addDeviceClass:v13];
  v5 = [v14 localizedString];

  v7 = [MEMORY[0x277CFD508] builderForKey:v5];
  v6 = [v7 localizedString];
LABEL_11:

LABEL_12:

  return v6;
}

- (id)continueTitle
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CONTINUE"];
  v3 = [v2 localizedString];

  return v3;
}

- (id)cancelTitle
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_CANCEL"];
  v3 = [v2 localizedString];

  return v3;
}

- (id)_stringWithFeatureIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v6 = [v5 featureName];

  if (v6)
  {
    v7 = [v4 stringByAppendingString:@"_WITH_FEATURE"];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)_stringWithFeatureSubstituted:(id)a3
{
  v4 = a3;
  v5 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
  v6 = [v5 featureName];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self context];
    v9 = [v8 featureName];
    v10 = [v7 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v9];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

@end