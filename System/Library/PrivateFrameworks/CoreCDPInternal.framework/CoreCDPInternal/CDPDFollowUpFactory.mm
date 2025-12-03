@interface CDPDFollowUpFactory
+ (id)contextToIdentifierMap;
- (BOOL)_isBiometricAuthEnrolled;
- (BOOL)_isBiometricAuthEnrolledWithLAEnvironment:(id)environment;
- (BOOL)_isBiometricCapable;
- (BOOL)_isManateeAvailable;
- (BOOL)_isManateeAvailableForAltDSID:(id)d;
- (BOOL)_isWalrusEnabled;
- (BOOL)_supportsFaceID;
- (id)_adpStateHealingFollowUpAction;
- (id)_anyRecoveryKeysAreDistrusted;
- (id)_baseFollowUpItemWithContext:(id)context;
- (id)_baseFollowUpNotificationWithContext:(id)context;
- (id)_confirmExistingSecretFollowUpAction;
- (id)_createPasscodeDismissNoteFollowUpAction;
- (id)_createPasscodeFollowUpAction;
- (id)_createPasscodeNoteFollowUpAction;
- (id)_deviceCapabilityProvider;
- (id)_followUpActionForRecoveryKeyRepair;
- (id)_followUpForADPStateHealingWithContext:(id)context;
- (id)_followUpForConfirmExistingSecretWithContext:(id)context;
- (id)_followUpForOfflineSecretChangeWithContext:(id)context;
- (id)_followUpForRecoveryKeyRepairWithContext:(id)context;
- (id)_followUpForRepairWithContext:(id)context;
- (id)_followUpForSecureTermsWithContext:(id)context;
- (id)_followUpForSettingUpBiometricsWithContext:(id)context;
- (id)_followUpItemForRecoveryKeyMismatchHealing:(id)healing;
- (id)_followUpItemForSOSCompatibilityMode:(id)mode;
- (id)_followUpItemForWalrusCreatePasscodeWithContext:(id)context;
- (id)_localizedStringForKey:(id)key;
- (id)_offlineSecretChangeFollowUpAction;
- (id)_secureTermsFollowUpAction;
- (id)followUpItemWithContext:(id)context;
- (id)identifierForContext:(id)context;
- (unint64_t)_approvedCustodianCountForAltDSID:(id)d;
- (void)_configureConfirmExistingSecretFollowUpItem:(id)item;
- (void)_configureRepairFollowUpItem:(id)item;
- (void)_configureWalrusRepairFollowUpItem:(id)item;
- (void)_isManateeAvailable;
- (void)_isWalrusEnabled;
@end

@implementation CDPDFollowUpFactory

+ (id)contextToIdentifierMap
{
  if (contextToIdentifierMap_onceToken != -1)
  {
    +[CDPDFollowUpFactory contextToIdentifierMap];
  }

  v3 = contextToIdentifierMap_contextMap;

  return v3;
}

void __45__CDPDFollowUpFactory_contextToIdentifierMap__block_invoke()
{
  v10[11] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEC6D0];
  v1 = *MEMORY[0x277CFD440];
  v9[0] = *MEMORY[0x277CFD470];
  v9[1] = v1;
  v10[0] = v0;
  v10[1] = @"OfflineLocalSecretChange";
  v2 = *MEMORY[0x277CFD460];
  v9[2] = *MEMORY[0x277CFD450];
  v9[3] = v2;
  v10[2] = @"RegenerateCDPRecoveryKey";
  v10[3] = @"com.apple.purplebuddy.revisitSkippedSteps";
  v3 = *MEMORY[0x277CFD438];
  v9[4] = *MEMORY[0x277CFD458];
  v9[5] = v3;
  v10[4] = @"SecureTerms";
  v10[5] = @"ConfirmExistingSecret";
  v4 = *MEMORY[0x277CFD468];
  v9[6] = *MEMORY[0x277CFD478];
  v9[7] = v4;
  v10[6] = @"OfflineLocalSecretChange";
  v10[7] = @"SOSCompatibilityMode";
  v5 = *MEMORY[0x277CFD430];
  v9[8] = *MEMORY[0x277CFD448];
  v9[9] = v5;
  v10[8] = @"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch";
  v10[9] = @"adpUpsell";
  v9[10] = *MEMORY[0x277CFD428];
  v10[10] = @"com.apple.CDPFollowUpIdentifier.adpStateHealing";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:11];
  v7 = contextToIdentifierMap_contextMap;
  contextToIdentifierMap_contextMap = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)identifierForContext:(id)context
{
  contextCopy = context;
  followUpType = [contextCopy followUpType];

  if (followUpType)
  {
    contextToIdentifierMap = [objc_opt_class() contextToIdentifierMap];
    followUpType2 = [contextCopy followUpType];
    v7 = [contextToIdentifierMap objectForKeyedSubscript:followUpType2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)followUpItemWithContext:(id)context
{
  contextCopy = context;
  followUpType = [contextCopy followUpType];
  v6 = [followUpType isEqualToString:*MEMORY[0x277CFD470]];

  if (v6)
  {
    v7 = [(CDPDFollowUpFactory *)self _followUpForRepairWithContext:contextCopy];
LABEL_3:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = MEMORY[0x277CFD480];
  altDSID = [contextCopy altDSID];
  LODWORD(v9) = [v9 checkIfAltDSIDIsBeneficiary:altDSID];

  if (v9)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CDPDFollowUpFactory followUpItemWithContext:];
    }
  }

  else
  {
    followUpType2 = [contextCopy followUpType];
    v14 = [followUpType2 isEqualToString:*MEMORY[0x277CFD440]];

    if (v14)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForOfflineSecretChangeWithContext:contextCopy];
      goto LABEL_3;
    }

    followUpType3 = [contextCopy followUpType];
    v16 = [followUpType3 isEqualToString:*MEMORY[0x277CFD450]];

    if (v16)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForRecoveryKeyRepairWithContext:contextCopy];
      goto LABEL_3;
    }

    followUpType4 = [contextCopy followUpType];
    v18 = [followUpType4 isEqualToString:*MEMORY[0x277CFD460]];

    if (v18)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForSettingUpBiometricsWithContext:contextCopy];
      goto LABEL_3;
    }

    followUpType5 = [contextCopy followUpType];
    v20 = [followUpType5 isEqualToString:*MEMORY[0x277CFD458]];

    if (v20)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForSecureTermsWithContext:contextCopy];
      goto LABEL_3;
    }

    followUpType6 = [contextCopy followUpType];
    v22 = [followUpType6 isEqualToString:*MEMORY[0x277CFD438]];

    if (v22)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForConfirmExistingSecretWithContext:contextCopy];
      goto LABEL_3;
    }

    followUpType7 = [contextCopy followUpType];
    v24 = [followUpType7 isEqualToString:*MEMORY[0x277CFD478]];

    if (v24)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpItemForWalrusCreatePasscodeWithContext:contextCopy];
      goto LABEL_3;
    }

    followUpType8 = [contextCopy followUpType];
    v26 = [followUpType8 isEqualToString:*MEMORY[0x277CFD468]];

    if (v26)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpItemForSOSCompatibilityMode:contextCopy];
      goto LABEL_3;
    }

    followUpType9 = [contextCopy followUpType];
    v28 = [followUpType9 isEqualToString:*MEMORY[0x277CFD448]];

    if (v28)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpItemForRecoveryKeyMismatchHealing:contextCopy];
      goto LABEL_3;
    }

    followUpType10 = [contextCopy followUpType];
    v30 = [followUpType10 isEqualToString:*MEMORY[0x277CFD428]];

    if (v30)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForADPStateHealingWithContext:contextCopy];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_followUpForOfflineSecretChangeWithContext:(id)context
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:context];
  _offlineSecretChangeFollowUpAction = [(CDPDFollowUpFactory *)self _offlineSecretChangeFollowUpAction];
  v28[0] = _offlineSecretChangeFollowUpAction;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v4 setActions:v6];

  notification = [v4 notification];
  _offlineSecretChangeFollowUpAction2 = [(CDPDFollowUpFactory *)self _offlineSecretChangeFollowUpAction];
  [notification setActivateAction:_offlineSecretChangeFollowUpAction2];

  [notification setFirstNotificationDelay:0.0];
  [v4 setDisplayStyle:1];
  [v4 setDisplayStyle:3];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_ITEM_TITLE"];
  v10 = [v9 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  localizedString = [v10 localizedString];
  [v4 setTitle:localizedString];

  v12 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_ITEM_INFORMATIVE"];
  v13 = [v12 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  localizedString2 = [v13 localizedString];
  [v4 setInformativeText:localizedString2];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_NOTIFICATION_TITLE"];
  v16 = [v15 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  localizedString3 = [v16 localizedString];
  [notification setTitle:localizedString3];

  v18 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  v19 = [v18 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  localizedString4 = [v19 localizedString];
  [notification setInformativeText:localizedString4];

  options = [notification options];
  v22 = *MEMORY[0x277CFE498];
  v27[0] = *MEMORY[0x277CFE4A8];
  v27[1] = v22;
  v27[2] = *MEMORY[0x277CFE490];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v24 = [options setByAddingObjectsFromArray:v23];
  [notification setOptions:v24];

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_offlineSecretChangeFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_NOTIFICATION_ACTIVATE_LABEL"];
  localizedString = [v3 localizedString];
  [v2 setLabel:localizedString];

  [v2 setIdentifier:@"com.apple.cdp.offlinesecret.continue"];

  return v2;
}

- (id)_followUpForSecureTermsWithContext:(id)context
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:context];
  _secureTermsFollowUpAction = [(CDPDFollowUpFactory *)self _secureTermsFollowUpAction];
  v25[0] = _secureTermsFollowUpAction;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v4 setActions:v5];

  notification = [v4 notification];
  _secureTermsFollowUpAction2 = [(CDPDFollowUpFactory *)self _secureTermsFollowUpAction];
  [notification setActivateAction:_secureTermsFollowUpAction2];

  [notification setFirstNotificationDelay:0.0];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_ITEM_TITLE"];
  localizedString = [v8 localizedString];
  [v4 setTitle:localizedString];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_ITEM_INFORMATIVE"];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v13 = [v10 addDeviceClass:deviceClass];
  localizedString2 = [v13 localizedString];
  [v4 setInformativeText:localizedString2];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_ITEM_TITLE"];
  localizedString3 = [v15 localizedString];
  [notification setTitle:localizedString3];

  v17 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  mEMORY[0x277CFD4F8]2 = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass2 = [mEMORY[0x277CFD4F8]2 deviceClass];
  v20 = [v17 addDeviceClass:deviceClass2];
  localizedString4 = [v20 localizedString];
  [notification setInformativeText:localizedString4];

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_secureTermsFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_NOTIFICATION_ACTIVATE_LABEL"];
  localizedString = [v3 localizedString];
  [v2 setLabel:localizedString];

  [v2 setIdentifier:@"com.apple.cdp.secureterms.continue"];

  return v2;
}

- (id)_followUpForConfirmExistingSecretWithContext:(id)context
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:context];
  _confirmExistingSecretFollowUpAction = [(CDPDFollowUpFactory *)self _confirmExistingSecretFollowUpAction];
  v11[0] = _confirmExistingSecretFollowUpAction;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v4 setActions:v6];

  notification = [v4 notification];
  _confirmExistingSecretFollowUpAction2 = [(CDPDFollowUpFactory *)self _confirmExistingSecretFollowUpAction];
  [notification setActivateAction:_confirmExistingSecretFollowUpAction2];

  [notification setFirstNotificationDelay:0.0];
  [(CDPDFollowUpFactory *)self _configureConfirmExistingSecretFollowUpItem:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_confirmExistingSecretFollowUpAction
{
  v3 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  if ([(CDPDFollowUpFactory *)self _isWalrusEnabled])
  {
    [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE" inTable:@"Localizable-Walrus"];
  }

  else
  {
    [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_EXISTING_SECRET_FOLLOWUP_NOTIFICATION_ACTIVATE_LABEL"];
  }
  v4 = ;
  localizedString = [v4 localizedString];
  [v3 setLabel:localizedString];

  [v3 setIdentifier:@"com.apple.cdp.confirmexistingsecret.continue"];

  return v3;
}

- (void)_configureConfirmExistingSecretFollowUpItem:(id)item
{
  v18[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  notification = [itemCopy notification];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_TITLE" inTable:@"Localizable-Walrus"];
  localizedString = [v5 localizedString];
  [itemCopy setTitle:localizedString];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_MESSAGE_REBRAND" inTable:@"Localizable-Walrus"];
  localizedString2 = [v7 localizedString];
  [itemCopy setInformativeText:localizedString2];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_NOTIFICATION_TITLE" inTable:@"Localizable-Walrus"];
  localizedString3 = [v9 localizedString];
  [notification setTitle:localizedString3];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_NOTIFICATION_MESSAGE_REBRAND" inTable:@"Localizable-Walrus"];
  localizedString4 = [v11 localizedString];
  [notification setInformativeText:localizedString4];

  options = [notification options];
  v14 = *MEMORY[0x277CFE498];
  v18[0] = *MEMORY[0x277CFE4A8];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [options setByAddingObjectsFromArray:v15];
  [notification setOptions:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_followUpItemForWalrusCreatePasscodeWithContext:(id)context
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:context];
  _createPasscodeFollowUpAction = [(CDPDFollowUpFactory *)self _createPasscodeFollowUpAction];
  v24[0] = _createPasscodeFollowUpAction;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v4 setActions:v6];

  notification = [v4 notification];
  _createPasscodeNoteFollowUpAction = [(CDPDFollowUpFactory *)self _createPasscodeNoteFollowUpAction];
  [notification setActivateAction:_createPasscodeNoteFollowUpAction];

  [notification setFirstNotificationDelay:0.0];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_TITLE" inTable:@"Localizable-Walrus"];
  localizedString = [v9 localizedString];
  [v4 setTitle:localizedString];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_MESSAGE" inTable:@"Localizable-Walrus"];
  localizedString2 = [v11 localizedString];
  [v4 setInformativeText:localizedString2];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_NOTIFICATION_TITLE" inTable:@"Localizable-Walrus"];
  localizedString3 = [v13 localizedString];
  [notification setTitle:localizedString3];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_NOTIFICATION_MESSAGE" inTable:@"Localizable-Walrus"];
  localizedString4 = [v15 localizedString];
  [notification setInformativeText:localizedString4];

  options = [notification options];
  v18 = *MEMORY[0x277CFE498];
  v23[0] = *MEMORY[0x277CFE4A8];
  v23[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v20 = [options setByAddingObjectsFromArray:v19];
  [notification setOptions:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_followUpItemForSOSCompatibilityMode:(id)mode
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:mode];
  v4 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v5 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_BUTTON_PRIMARY"];
  localizedString = [v5 localizedString];
  [v4 setLabel:localizedString];

  [v4 setIdentifier:@"com.apple.cdp.sos.compatibility.enabled.continue"];
  v22[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v3 setActions:v7];

  notification = [v3 notification];
  [notification setFirstNotificationDelay:0.0];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_TITLE"];
  localizedString2 = [v9 localizedString];
  [v3 setTitle:localizedString2];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_MESSAGE"];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v14 = [v11 addDeviceClass:deviceClass];
  localizedString3 = [v14 localizedString];
  [v3 setInformativeText:localizedString3];

  v16 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_NOTIFICATION_TITLE"];
  localizedString4 = [v16 localizedString];
  [notification setTitle:localizedString4];

  v18 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_NOTIFICATION_MESSAGE"];
  localizedString5 = [v18 localizedString];
  [notification setInformativeText:localizedString5];

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_followUpItemForRecoveryKeyMismatchHealing:(id)healing
{
  altDSID = [healing altDSID];
  if (!altDSID)
  {
    mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
    altDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CDPDFollowUpFactory _isWalrusEnabled](self, "_isWalrusEnabled")}];
  [v6 setObject:v7 forKeyedSubscript:@"hasWalrusEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CDPDFollowUpFactory _approvedCustodianCountForAltDSID:](self, "_approvedCustodianCountForAltDSID:", altDSID) != 0}];
  [v6 setObject:v8 forKeyedSubscript:@"hasRecoveryContact"];

  _anyRecoveryKeysAreDistrusted = [(CDPDFollowUpFactory *)self _anyRecoveryKeysAreDistrusted];
  [v6 setObject:_anyRecoveryKeysAreDistrusted forKeyedSubscript:@"rkDistrustedInOctagon"];

  [v6 setObject:altDSID forKeyedSubscript:*MEMORY[0x277CEC6E0]];
  v10 = [MEMORY[0x277CFD480] appleAccountForAltDSID:altDSID];
  identifier = [v10 identifier];
  [v6 setObject:identifier forKeyedSubscript:*MEMORY[0x277CEC6D8]];

  v12 = objc_alloc_init(MEMORY[0x277CEC7F8]);
  v13 = [v12 followUpItemForIdentifier:@"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch" userInfo:v6];

  return v13;
}

- (unint64_t)_approvedCustodianCountForAltDSID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(CDPDAccount);
  v5 = [(CDPDAccount *)v4 recoveryContactCountForAltDSID:dCopy];

  return v5;
}

- (id)_anyRecoveryKeysAreDistrusted
{
  v2 = objc_opt_new();
  v8 = 0;
  v3 = [v2 anyRecoveryKeysAreOctagonDistrustedWithError:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CDPDFollowUpFactory _anyRecoveryKeysAreDistrusted];
    }

    v6 = MEMORY[0x277CBEC28];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  }

  return v6;
}

- (id)_createPasscodeFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE" inTable:@"Localizable-Walrus"];
  localizedString = [v3 localizedString];
  [v2 setLabel:localizedString];

  [v2 setIdentifier:@"com.apple.cdp.offlinesecretcreate.continue"];

  return v2;
}

- (id)_createPasscodeNoteFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_BUTTON_PRIMARY" inTable:@"Localizable-Walrus"];
  localizedString = [v3 localizedString];
  [v2 setLabel:localizedString];

  [v2 setIdentifier:@"com.apple.cdp.offlinesecretcreate.continue"];

  return v2;
}

- (id)_createPasscodeDismissNoteFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_BUTTON_DISMISS" inTable:@"Localizable-Walrus"];
  localizedString = [v3 localizedString];
  [v2 setLabel:localizedString];

  [v2 setIdentifier:@"com.apple.cdp.dismissfollowup"];

  return v2;
}

- (id)_followUpForRepairWithContext:(id)context
{
  contextCopy = context;
  altDSID = [contextCopy altDSID];
  if (altDSID && (v6 = altDSID, v7 = MEMORY[0x277CFD480], [contextCopy altDSID], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "checkIfAltDSIDIsBeneficiary:", v8), v8, v6, v7))
  {
    altDSID2 = [contextCopy altDSID];
    v10 = [(CDPDFollowUpFactory *)self _isManateeAvailableForAltDSID:altDSID2];

    if (v10)
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
    mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
    primaryAccountIsBeneficiary = [mEMORY[0x277CFD480] primaryAccountIsBeneficiary];

    if (primaryAccountIsBeneficiary && [(CDPDFollowUpFactory *)self _isManateeAvailable])
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        [CDPDFollowUpFactory _followUpForRepairWithContext:];
      }

LABEL_10:

      v14 = 0;
      goto LABEL_22;
    }
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  altDSID3 = [contextCopy altDSID];
  if (!altDSID3)
  {
    mEMORY[0x277CFD480]2 = [MEMORY[0x277CFD480] sharedInstance];
    altDSID3 = [mEMORY[0x277CFD480]2 primaryAccountAltDSID];
  }

  [v15 setObject:altDSID3 forKeyedSubscript:*MEMORY[0x277CEC6E0]];
  v18 = [MEMORY[0x277CFD480] appleAccountForAltDSID:altDSID3];
  identifier = [v18 identifier];
  [v15 setObject:identifier forKeyedSubscript:*MEMORY[0x277CEC6D8]];

  v20 = objc_alloc_init(MEMORY[0x277CEC7F8]);
  v14 = [v20 followUpItemForIdentifier:*MEMORY[0x277CEC6D0] userInfo:v15];

  v21 = [(CDPDFollowUpFactory *)self _baseFollowUpNotificationWithContext:contextCopy];
  [v14 setNotification:v21];

  actions = [v14 actions];
  firstObject = [actions firstObject];

  identifier2 = [firstObject identifier];
  v25 = *MEMORY[0x277CEC6C0];

  if (identifier2 == v25)
  {
    [contextCopy repairType];
    v26 = CDPLocalizedString();
    [firstObject setLabel:v26];
  }

  notification = [v14 notification];
  [notification setActivateAction:firstObject];
  repairType = [contextCopy repairType];
  if (repairType == 3)
  {
LABEL_19:
    [(CDPDFollowUpFactory *)self _configureWalrusRepairFollowUpItem:v14];
    goto LABEL_21;
  }

  if (repairType != 1)
  {
    if (![(CDPDFollowUpFactory *)self _isWalrusEnabled])
    {
      [(CDPDFollowUpFactory *)self _configureRepairFollowUpItem:v14];
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v29 = [MEMORY[0x277CFD508] builderForKey:@"TRUST_FOLLOWUP_ITEM_TITLE"];
  [v29 localizedString];
  v30 = v44 = v15;
  [v14 setTitle:v30];

  v31 = [MEMORY[0x277CFD508] builderForKey:@"TRUST_FOLLOWUP_NOTIFICATION_TITLE"];
  localizedString = [v31 localizedString];
  [notification setTitle:localizedString];

  v33 = [MEMORY[0x277CFD508] builderForKey:@"TRUST_FOLLOWUP_ITEM_INFORMATIVE"];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v36 = [v33 addDeviceClass:deviceClass];
  localizedString2 = [v36 localizedString];
  [v14 setInformativeText:localizedString2];

  v38 = [MEMORY[0x277CFD508] builderForKey:@"TRUST_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  mEMORY[0x277CFD4F8]2 = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass2 = [mEMORY[0x277CFD4F8]2 deviceClass];
  v41 = [v38 addDeviceClass:deviceClass2];
  localizedString3 = [v41 localizedString];
  [notification setInformativeText:localizedString3];

  v15 = v44;
LABEL_21:

LABEL_22:

  return v14;
}

- (void)_configureRepairFollowUpItem:(id)item
{
  v18[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  notification = [itemCopy notification];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_ITEM_TITLE"];
  localizedString = [v5 localizedString];
  [itemCopy setTitle:localizedString];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_ITEM_INFORMATIVE"];
  localizedString2 = [v7 localizedString];
  [itemCopy setInformativeText:localizedString2];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_NOTIFICATION_TITLE"];
  localizedString3 = [v9 localizedString];
  [notification setTitle:localizedString3];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  localizedString4 = [v11 localizedString];
  [notification setInformativeText:localizedString4];

  options = [notification options];
  v14 = *MEMORY[0x277CFE498];
  v18[0] = *MEMORY[0x277CFE4A8];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [options setByAddingObjectsFromArray:v15];
  [notification setOptions:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_configureWalrusRepairFollowUpItem:(id)item
{
  v26[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  notification = [itemCopy notification];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_TITLE" inTable:@"Localizable-Walrus"];
  localizedString = [v5 localizedString];
  [itemCopy setTitle:localizedString];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_MESSAGE" inTable:@"Localizable-Walrus"];
  localizedString2 = [v7 localizedString];
  [itemCopy setInformativeText:localizedString2];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_NOTIFICATION_TITLE" inTable:@"Localizable-Walrus"];
  localizedString3 = [v9 localizedString];
  [notification setTitle:localizedString3];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_NOTIFICATION_MESSAGE" inTable:@"Localizable-Walrus"];
  localizedString4 = [v11 localizedString];
  [notification setInformativeText:localizedString4];

  v13 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v14 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_BUTTON_PRIMARY" inTable:@"Localizable-Walrus"];
  localizedString5 = [v14 localizedString];
  [v13 setLabel:localizedString5];

  [notification setActivateAction:v13];
  v16 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v17 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_BUTTON_DISMISS" inTable:@"Localizable-Walrus"];
  localizedString6 = [v17 localizedString];
  [v16 setLabel:localizedString6];

  [notification setClearAction:v16];
  v26[0] = v13;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [itemCopy setActions:v19];

  [itemCopy setDisplayStyle:1];
  options = [notification options];
  v21 = *MEMORY[0x277CFE498];
  v25[0] = *MEMORY[0x277CFE4A8];
  v25[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v23 = [options setByAddingObjectsFromArray:v22];
  [notification setOptions:v23];

  [notification setFirstNotificationDelay:0.0];
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_followUpForRecoveryKeyRepairWithContext:(id)context
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:context];
  v5 = CDPLocalizedString();
  [v4 setTitle:v5];

  v6 = CDPLocalizedString();
  [v4 setInformativeText:v6];

  _followUpActionForRecoveryKeyRepair = [(CDPDFollowUpFactory *)self _followUpActionForRecoveryKeyRepair];
  v15[0] = _followUpActionForRecoveryKeyRepair;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v4 setActions:v8];

  notification = [v4 notification];

  if (notification)
  {
    notification2 = [v4 notification];
    v11 = CDPLocalizedString();
    [notification2 setTitle:v11];

    v12 = CDPLocalizedString();
    [notification2 setInformativeText:v12];

    [notification2 setActivateAction:_followUpActionForRecoveryKeyRepair];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_followUpActionForRecoveryKeyRepair
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = CDPLocalizedString();
  [v2 setLabel:v3];

  [v2 setIdentifier:@"com.apple.cdp.repair.recoverykey"];

  return v2;
}

- (id)_followUpForSettingUpBiometricsWithContext:(id)context
{
  v77[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(CDPDFollowUpFactory *)self _isBiometricCapable]&& ![(CDPDFollowUpFactory *)self _isBiometricAuthEnrolled])
  {
    v6 = objc_alloc_init(MEMORY[0x277CFE508]);
    v5 = objc_alloc_init(MEMORY[0x277CFE4F8]);
    notification = [v6 notification];
    [v6 setGroupIdentifier:*MEMORY[0x277CFE440]];
    followUpType = [contextCopy followUpType];

    if (followUpType)
    {
      contextToIdentifierMap = [objc_opt_class() contextToIdentifierMap];
      followUpType2 = [contextCopy followUpType];
      v11 = [contextToIdentifierMap objectForKeyedSubscript:followUpType2];
      [v6 setUniqueIdentifier:v11];
    }

    if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
    {
      altDSID = [contextCopy altDSID];

      if (altDSID)
      {
        v76 = *MEMORY[0x277CFD3E0];
        altDSID2 = [contextCopy altDSID];
        v77[0] = altDSID2;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        [v6 setUserInfo:v14];

        v15 = MEMORY[0x277CFD480];
        altDSID3 = [contextCopy altDSID];
        v17 = [v15 appleAccountForAltDSID:altDSID3];
        identifier = [v17 identifier];
        [v6 setAccountIdentifier:identifier];
      }
    }

    v67 = notification;
    [v6 setTargetBundleIdentifier:*MEMORY[0x277CFE3F8]];
    if ([(CDPDFollowUpFactory *)self _supportsFaceID])
    {
      v19 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_TITLE"];
      localizedString = [v19 localizedString];
      [v6 setTitle:localizedString];

      v21 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_INFOTEXT"];
      v22 = [v21 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
      deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
      v25 = [v22 addDeviceClass:deviceClass];
      localizedString2 = [v25 localizedString];
      [v6 setInformativeText:localizedString2];

      v27 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_TITLE"];
      localizedString3 = [v27 localizedString];
      v29 = v67;
      [v67 setTitle:localizedString3];

      v30 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_INFOTEXT"];
      v31 = [v30 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      mEMORY[0x277CFD4F8]2 = [MEMORY[0x277CFD4F8] sharedInstance];
      deviceClass2 = [mEMORY[0x277CFD4F8]2 deviceClass];
      v34 = [v31 addDeviceClass:deviceClass2];
      localizedString4 = [v34 localizedString];
      [v67 setInformativeText:localizedString4];

      v36 = MEMORY[0x277CBEBC0];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=SETUP_FINISH&flow=%@", @"faceID"];
      v38 = [v36 URLWithString:v37];
      [v5 setUrl:v38];

      v73 = @"faceID";
      v74 = @"flowSkipIdentifiers";
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      v75 = v39;
      v40 = MEMORY[0x277CBEAC0];
      v41 = &v75;
      v42 = &v74;
    }

    else
    {
      v43 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_TITLE"];
      localizedString5 = [v43 localizedString];
      [v6 setTitle:localizedString5];

      v45 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_INFOTEXT"];
      v46 = [v45 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      mEMORY[0x277CFD4F8]3 = [MEMORY[0x277CFD4F8] sharedInstance];
      deviceClass3 = [mEMORY[0x277CFD4F8]3 deviceClass];
      v49 = [v46 addDeviceClass:deviceClass3];
      localizedString6 = [v49 localizedString];
      [v6 setInformativeText:localizedString6];

      v51 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_TITLE"];
      localizedString7 = [v51 localizedString];
      v29 = v67;
      [v67 setTitle:localizedString7];

      v53 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_INFOTEXT"];
      v54 = [v53 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      mEMORY[0x277CFD4F8]4 = [MEMORY[0x277CFD4F8] sharedInstance];
      deviceClass4 = [mEMORY[0x277CFD4F8]4 deviceClass];
      v57 = [v54 addDeviceClass:deviceClass4];
      localizedString8 = [v57 localizedString];
      [v67 setInformativeText:localizedString8];

      v59 = MEMORY[0x277CBEBC0];
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=SETUP_FINISH&flow=%@", @"touchID"];
      v61 = [v59 URLWithString:v60];
      [v5 setUrl:v61];

      v70 = @"touchID";
      v71 = @"flowSkipIdentifiers";
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      v72 = v39;
      v40 = MEMORY[0x277CBEAC0];
      v41 = &v72;
      v42 = &v71;
    }

    v62 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:1];
    [v5 setUserInfo:v62];

    v63 = CDPLocalizedString();
    [v5 setLabel:v63];

    v69 = v5;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    [v6 setActions:v64];

    [v29 setActivateAction:v5];
    [v29 setFirstNotificationDelay:60.0];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Device is not biometric auth capable or is already enrolled.", buf, 2u);
    }

    v6 = 0;
  }

  v65 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_followUpForADPStateHealingWithContext:(id)context
{
  v30[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v5 setDisplayStyle:1];
  [v5 setGroupIdentifier:*MEMORY[0x277CFE430]];
  followUpType = [contextCopy followUpType];

  if (followUpType)
  {
    contextToIdentifierMap = [objc_opt_class() contextToIdentifierMap];
    followUpType2 = [contextCopy followUpType];
    v9 = [contextToIdentifierMap objectForKeyedSubscript:followUpType2];
    [v5 setUniqueIdentifier:v9];
  }

  if ([contextCopy shouldNotify])
  {
    v10 = [(CDPDFollowUpFactory *)self _baseFollowUpNotificationWithContext:contextCopy];
    [v5 setNotification:v10];
  }

  [v5 setDisplayStyle:2];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_CFU_TITLE" inTable:@"Localizable-Walrus"];
  localizedString = [v11 localizedString];
  [v5 setTitle:localizedString];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_CFU_TEXT" inTable:@"Localizable-Walrus"];
  localizedString2 = [v13 localizedString];
  [v5 setInformativeText:localizedString2];

  _adpStateHealingFollowUpAction = [(CDPDFollowUpFactory *)self _adpStateHealingFollowUpAction];
  v30[0] = _adpStateHealingFollowUpAction;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v5 setActions:v16];

  notification = [v5 notification];
  v18 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_CFU_TITLE" inTable:@"Localizable-Walrus"];
  localizedString3 = [v18 localizedString];
  [notification setTitle:localizedString3];

  v20 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_NOTIFICATION_TEXT" inTable:@"Localizable-Walrus"];
  localizedString4 = [v20 localizedString];
  [notification setInformativeText:localizedString4];

  options = [notification options];
  v23 = *MEMORY[0x277CFE498];
  v29[0] = *MEMORY[0x277CFE470];
  v29[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v25 = [options setByAddingObjectsFromArray:v24];
  [notification setOptions:v25];

  _adpStateHealingFollowUpAction2 = [(CDPDFollowUpFactory *)self _adpStateHealingFollowUpAction];
  [notification setActivateAction:_adpStateHealingFollowUpAction2];

  [notification setFirstNotificationDelay:0.0];
  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_adpStateHealingFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"CONTINUE"];
  localizedString = [v3 localizedString];
  [v2 setLabel:localizedString];

  [v2 setIdentifier:@"com.apple.cdp.adpStateHealing.continue"];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/ICLOUD_ADP_SPECIFIER_NAME"];
  [v2 setUrl:v5];

  return v2;
}

- (id)_baseFollowUpItemWithContext:(id)context
{
  v22[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v5 setDisplayStyle:1];
  [v5 setGroupIdentifier:*MEMORY[0x277CFE430]];
  followUpType = [contextCopy followUpType];

  if (followUpType)
  {
    contextToIdentifierMap = [objc_opt_class() contextToIdentifierMap];
    followUpType2 = [contextCopy followUpType];
    v9 = [contextToIdentifierMap objectForKeyedSubscript:followUpType2];
    [v5 setUniqueIdentifier:v9];
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    v21 = *MEMORY[0x277CFD3E0];
    altDSID2 = [contextCopy altDSID];
    v22[0] = altDSID2;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [v5 setUserInfo:v12];
  }

  if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
  {
    altDSID3 = [contextCopy altDSID];

    if (altDSID3)
    {
      v14 = MEMORY[0x277CFD480];
      altDSID4 = [contextCopy altDSID];
      v16 = [v14 appleAccountForAltDSID:altDSID4];
      identifier = [v16 identifier];
      [v5 setAccountIdentifier:identifier];
    }
  }

  [v5 setExtensionIdentifier:*MEMORY[0x277CFD3E8]];
  if ([contextCopy shouldNotify])
  {
    v18 = [(CDPDFollowUpFactory *)self _baseFollowUpNotificationWithContext:contextCopy];
    [v5 setNotification:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_baseFollowUpNotificationWithContext:(id)context
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFE510];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  [v5 setFrequency:86400.0];
  [v5 setFirstNotificationDelay:86400.0];
  force = [contextCopy force];

  if (force)
  {
    v7 = MEMORY[0x277CBEB98];
    v12[0] = *MEMORY[0x277CFE488];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [v7 setWithArray:v8];
    [v5 setOptions:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_localizedStringForKey:(id)key
{
  v3 = [MEMORY[0x277CFD508] builderForKey:key];
  v4 = [v3 addSecretType:1];
  localizedString = [v4 localizedString];

  return localizedString;
}

- (BOOL)_isBiometricAuthEnrolledWithLAEnvironment:(id)environment
{
  state = [environment state];
  biometry = [state biometry];
  isEnrolled = [biometry isEnrolled];

  if ((isEnrolled & 1) == 0)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CDPDFollowUpFactory _isBiometricAuthEnrolledWithLAEnvironment:];
    }
  }

  return isEnrolled;
}

- (BOOL)_isBiometricAuthEnrolled
{
  currentUser = self->_currentUser;
  if (!currentUser)
  {
    LAEnvironmentClass = LocalAuthenticationLibraryCore();
    if (LAEnvironmentClass)
    {
      LAEnvironmentClass = getLAEnvironmentClass();
    }

    currentUser = [LAEnvironmentClass currentUser];
    v6 = self->_currentUser;
    self->_currentUser = currentUser;

    currentUser = self->_currentUser;
  }

  return [(CDPDFollowUpFactory *)self _isBiometricAuthEnrolledWithLAEnvironment:currentUser];
}

- (BOOL)_isManateeAvailableForAltDSID:(id)d
{
  dCopy = d;
  v4 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:dCopy];
  v5 = [objc_alloc(MEMORY[0x277CFD548]) initWithContext:v4];
  v10 = 0;
  v6 = [v5 isManateeAvailable:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPDFollowUpFactory _isManateeAvailableForAltDSID:];
    }
  }

  return v6;
}

- (BOOL)_isManateeAvailable
{
  v2 = objc_alloc(MEMORY[0x277CFD548]);
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = [v2 initWithContext:contextForPrimaryAccount];

  v9 = 0;
  v5 = [v4 isManateeAvailable:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPDFollowUpFactory _isManateeAvailable];
    }
  }

  return v5;
}

- (BOOL)_isBiometricCapable
{
  _deviceCapabilityProvider = [(CDPDFollowUpFactory *)self _deviceCapabilityProvider];
  if ([_deviceCapabilityProvider supportsPearl])
  {
    supportsMesa = 1;
  }

  else
  {
    supportsMesa = [_deviceCapabilityProvider supportsMesa];
  }

  return supportsMesa;
}

- (BOOL)_supportsFaceID
{
  _deviceCapabilityProvider = [(CDPDFollowUpFactory *)self _deviceCapabilityProvider];
  supportsPearl = [_deviceCapabilityProvider supportsPearl];

  return supportsPearl;
}

- (id)_deviceCapabilityProvider
{
  v2 = objc_alloc_init(CDPMobileGestaltWrapper);

  return v2;
}

- (BOOL)_isWalrusEnabled
{
  v2 = [CDPInternalWalrusStateController alloc];
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = [(CDPInternalWalrusStateController *)v2 initWithContext:contextForPrimaryAccount];

  v10 = 0;
  v5 = [(CDPInternalWalrusStateController *)v4 walrusStatusWithContext:0 error:&v10];
  v6 = v10;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDFollowUpFactory _isWalrusEnabled];
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDFollowUpFactory _isWalrusEnabled];
  }

  return v5 == 1;
}

- (void)_isManateeAvailableForAltDSID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_24510B000, v1, OS_LOG_TYPE_ERROR, "Follow up factory manatee check returned an error for altDSID %{sensitive}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_isManateeAvailable
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24510B000, v0, OS_LOG_TYPE_ERROR, "Follow up factory manatee check returned an error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_isWalrusEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_24510B000, v1, OS_LOG_TYPE_DEBUG, "Internal Walrus status %lu enabled %{BOOL}d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end