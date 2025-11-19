@interface CDPDFollowUpFactory
+ (id)contextToIdentifierMap;
- (BOOL)_isBiometricAuthEnrolled;
- (BOOL)_isBiometricAuthEnrolledWithLAEnvironment:(id)a3;
- (BOOL)_isBiometricCapable;
- (BOOL)_isManateeAvailable;
- (BOOL)_isManateeAvailableForAltDSID:(id)a3;
- (BOOL)_isWalrusEnabled;
- (BOOL)_supportsFaceID;
- (id)_adpStateHealingFollowUpAction;
- (id)_anyRecoveryKeysAreDistrusted;
- (id)_baseFollowUpItemWithContext:(id)a3;
- (id)_baseFollowUpNotificationWithContext:(id)a3;
- (id)_confirmExistingSecretFollowUpAction;
- (id)_createPasscodeDismissNoteFollowUpAction;
- (id)_createPasscodeFollowUpAction;
- (id)_createPasscodeNoteFollowUpAction;
- (id)_deviceCapabilityProvider;
- (id)_followUpActionForRecoveryKeyRepair;
- (id)_followUpForADPStateHealingWithContext:(id)a3;
- (id)_followUpForConfirmExistingSecretWithContext:(id)a3;
- (id)_followUpForOfflineSecretChangeWithContext:(id)a3;
- (id)_followUpForRecoveryKeyRepairWithContext:(id)a3;
- (id)_followUpForRepairWithContext:(id)a3;
- (id)_followUpForSecureTermsWithContext:(id)a3;
- (id)_followUpForSettingUpBiometricsWithContext:(id)a3;
- (id)_followUpItemForRecoveryKeyMismatchHealing:(id)a3;
- (id)_followUpItemForSOSCompatibilityMode:(id)a3;
- (id)_followUpItemForWalrusCreatePasscodeWithContext:(id)a3;
- (id)_localizedStringForKey:(id)a3;
- (id)_offlineSecretChangeFollowUpAction;
- (id)_secureTermsFollowUpAction;
- (id)followUpItemWithContext:(id)a3;
- (id)identifierForContext:(id)a3;
- (unint64_t)_approvedCustodianCountForAltDSID:(id)a3;
- (void)_configureConfirmExistingSecretFollowUpItem:(id)a3;
- (void)_configureRepairFollowUpItem:(id)a3;
- (void)_configureWalrusRepairFollowUpItem:(id)a3;
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

- (id)identifierForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 followUpType];

  if (v4)
  {
    v5 = [objc_opt_class() contextToIdentifierMap];
    v6 = [v3 followUpType];
    v7 = [v5 objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)followUpItemWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 followUpType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CFD470]];

  if (v6)
  {
    v7 = [(CDPDFollowUpFactory *)self _followUpForRepairWithContext:v4];
LABEL_3:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = MEMORY[0x277CFD480];
  v10 = [v4 altDSID];
  LODWORD(v9) = [v9 checkIfAltDSIDIsBeneficiary:v10];

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
    v13 = [v4 followUpType];
    v14 = [v13 isEqualToString:*MEMORY[0x277CFD440]];

    if (v14)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForOfflineSecretChangeWithContext:v4];
      goto LABEL_3;
    }

    v15 = [v4 followUpType];
    v16 = [v15 isEqualToString:*MEMORY[0x277CFD450]];

    if (v16)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForRecoveryKeyRepairWithContext:v4];
      goto LABEL_3;
    }

    v17 = [v4 followUpType];
    v18 = [v17 isEqualToString:*MEMORY[0x277CFD460]];

    if (v18)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForSettingUpBiometricsWithContext:v4];
      goto LABEL_3;
    }

    v19 = [v4 followUpType];
    v20 = [v19 isEqualToString:*MEMORY[0x277CFD458]];

    if (v20)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForSecureTermsWithContext:v4];
      goto LABEL_3;
    }

    v21 = [v4 followUpType];
    v22 = [v21 isEqualToString:*MEMORY[0x277CFD438]];

    if (v22)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForConfirmExistingSecretWithContext:v4];
      goto LABEL_3;
    }

    v23 = [v4 followUpType];
    v24 = [v23 isEqualToString:*MEMORY[0x277CFD478]];

    if (v24)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpItemForWalrusCreatePasscodeWithContext:v4];
      goto LABEL_3;
    }

    v25 = [v4 followUpType];
    v26 = [v25 isEqualToString:*MEMORY[0x277CFD468]];

    if (v26)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpItemForSOSCompatibilityMode:v4];
      goto LABEL_3;
    }

    v27 = [v4 followUpType];
    v28 = [v27 isEqualToString:*MEMORY[0x277CFD448]];

    if (v28)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpItemForRecoveryKeyMismatchHealing:v4];
      goto LABEL_3;
    }

    v29 = [v4 followUpType];
    v30 = [v29 isEqualToString:*MEMORY[0x277CFD428]];

    if (v30)
    {
      v7 = [(CDPDFollowUpFactory *)self _followUpForADPStateHealingWithContext:v4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_followUpForOfflineSecretChangeWithContext:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:a3];
  v5 = [(CDPDFollowUpFactory *)self _offlineSecretChangeFollowUpAction];
  v28[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v4 setActions:v6];

  v7 = [v4 notification];
  v8 = [(CDPDFollowUpFactory *)self _offlineSecretChangeFollowUpAction];
  [v7 setActivateAction:v8];

  [v7 setFirstNotificationDelay:0.0];
  [v4 setDisplayStyle:1];
  [v4 setDisplayStyle:3];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_ITEM_TITLE"];
  v10 = [v9 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  v11 = [v10 localizedString];
  [v4 setTitle:v11];

  v12 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_ITEM_INFORMATIVE"];
  v13 = [v12 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  v14 = [v13 localizedString];
  [v4 setInformativeText:v14];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_NOTIFICATION_TITLE"];
  v16 = [v15 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  v17 = [v16 localizedString];
  [v7 setTitle:v17];

  v18 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  v19 = [v18 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
  v20 = [v19 localizedString];
  [v7 setInformativeText:v20];

  v21 = [v7 options];
  v22 = *MEMORY[0x277CFE498];
  v27[0] = *MEMORY[0x277CFE4A8];
  v27[1] = v22;
  v27[2] = *MEMORY[0x277CFE490];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v24 = [v21 setByAddingObjectsFromArray:v23];
  [v7 setOptions:v24];

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_offlineSecretChangeFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"CONFIRM_NEW_SECRET_FOLLOWUP_NOTIFICATION_ACTIVATE_LABEL"];
  v4 = [v3 localizedString];
  [v2 setLabel:v4];

  [v2 setIdentifier:@"com.apple.cdp.offlinesecret.continue"];

  return v2;
}

- (id)_followUpForSecureTermsWithContext:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:a3];
  v24 = [(CDPDFollowUpFactory *)self _secureTermsFollowUpAction];
  v25[0] = v24;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v4 setActions:v5];

  v6 = [v4 notification];
  v7 = [(CDPDFollowUpFactory *)self _secureTermsFollowUpAction];
  [v6 setActivateAction:v7];

  [v6 setFirstNotificationDelay:0.0];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_ITEM_TITLE"];
  v9 = [v8 localizedString];
  [v4 setTitle:v9];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_ITEM_INFORMATIVE"];
  v11 = [MEMORY[0x277CFD4F8] sharedInstance];
  v12 = [v11 deviceClass];
  v13 = [v10 addDeviceClass:v12];
  v14 = [v13 localizedString];
  [v4 setInformativeText:v14];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_ITEM_TITLE"];
  v16 = [v15 localizedString];
  [v6 setTitle:v16];

  v17 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  v18 = [MEMORY[0x277CFD4F8] sharedInstance];
  v19 = [v18 deviceClass];
  v20 = [v17 addDeviceClass:v19];
  v21 = [v20 localizedString];
  [v6 setInformativeText:v21];

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_secureTermsFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"SECURE_TERMS_FOLLOWUP_NOTIFICATION_ACTIVATE_LABEL"];
  v4 = [v3 localizedString];
  [v2 setLabel:v4];

  [v2 setIdentifier:@"com.apple.cdp.secureterms.continue"];

  return v2;
}

- (id)_followUpForConfirmExistingSecretWithContext:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:a3];
  v5 = [(CDPDFollowUpFactory *)self _confirmExistingSecretFollowUpAction];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v4 setActions:v6];

  v7 = [v4 notification];
  v8 = [(CDPDFollowUpFactory *)self _confirmExistingSecretFollowUpAction];
  [v7 setActivateAction:v8];

  [v7 setFirstNotificationDelay:0.0];
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
  v5 = [v4 localizedString];
  [v3 setLabel:v5];

  [v3 setIdentifier:@"com.apple.cdp.confirmexistingsecret.continue"];

  return v3;
}

- (void)_configureConfirmExistingSecretFollowUpItem:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 notification];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_TITLE" inTable:@"Localizable-Walrus"];
  v6 = [v5 localizedString];
  [v3 setTitle:v6];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_MESSAGE_REBRAND" inTable:@"Localizable-Walrus"];
  v8 = [v7 localizedString];
  [v3 setInformativeText:v8];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_NOTIFICATION_TITLE" inTable:@"Localizable-Walrus"];
  v10 = [v9 localizedString];
  [v4 setTitle:v10];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_NOTIFICATION_MESSAGE_REBRAND" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  [v4 setInformativeText:v12];

  v13 = [v4 options];
  v14 = *MEMORY[0x277CFE498];
  v18[0] = *MEMORY[0x277CFE4A8];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v13 setByAddingObjectsFromArray:v15];
  [v4 setOptions:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_followUpItemForWalrusCreatePasscodeWithContext:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:a3];
  v5 = [(CDPDFollowUpFactory *)self _createPasscodeFollowUpAction];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v4 setActions:v6];

  v7 = [v4 notification];
  v8 = [(CDPDFollowUpFactory *)self _createPasscodeNoteFollowUpAction];
  [v7 setActivateAction:v8];

  [v7 setFirstNotificationDelay:0.0];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_TITLE" inTable:@"Localizable-Walrus"];
  v10 = [v9 localizedString];
  [v4 setTitle:v10];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_MESSAGE" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  [v4 setInformativeText:v12];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_NOTIFICATION_TITLE" inTable:@"Localizable-Walrus"];
  v14 = [v13 localizedString];
  [v7 setTitle:v14];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_NOTIFICATION_MESSAGE" inTable:@"Localizable-Walrus"];
  v16 = [v15 localizedString];
  [v7 setInformativeText:v16];

  v17 = [v7 options];
  v18 = *MEMORY[0x277CFE498];
  v23[0] = *MEMORY[0x277CFE4A8];
  v23[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v20 = [v17 setByAddingObjectsFromArray:v19];
  [v7 setOptions:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_followUpItemForSOSCompatibilityMode:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:a3];
  v4 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v5 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_BUTTON_PRIMARY"];
  v6 = [v5 localizedString];
  [v4 setLabel:v6];

  [v4 setIdentifier:@"com.apple.cdp.sos.compatibility.enabled.continue"];
  v22[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v3 setActions:v7];

  v8 = [v3 notification];
  [v8 setFirstNotificationDelay:0.0];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_TITLE"];
  v10 = [v9 localizedString];
  [v3 setTitle:v10];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_MESSAGE"];
  v12 = [MEMORY[0x277CFD4F8] sharedInstance];
  v13 = [v12 deviceClass];
  v14 = [v11 addDeviceClass:v13];
  v15 = [v14 localizedString];
  [v3 setInformativeText:v15];

  v16 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_NOTIFICATION_TITLE"];
  v17 = [v16 localizedString];
  [v8 setTitle:v17];

  v18 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_SOS_COMPATIBILITY_NOTIFICATION_MESSAGE"];
  v19 = [v18 localizedString];
  [v8 setInformativeText:v19];

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_followUpItemForRecoveryKeyMismatchHealing:(id)a3
{
  v4 = [a3 altDSID];
  if (!v4)
  {
    v5 = [MEMORY[0x277CFD480] sharedInstance];
    v4 = [v5 primaryAccountAltDSID];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CDPDFollowUpFactory _isWalrusEnabled](self, "_isWalrusEnabled")}];
  [v6 setObject:v7 forKeyedSubscript:@"hasWalrusEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CDPDFollowUpFactory _approvedCustodianCountForAltDSID:](self, "_approvedCustodianCountForAltDSID:", v4) != 0}];
  [v6 setObject:v8 forKeyedSubscript:@"hasRecoveryContact"];

  v9 = [(CDPDFollowUpFactory *)self _anyRecoveryKeysAreDistrusted];
  [v6 setObject:v9 forKeyedSubscript:@"rkDistrustedInOctagon"];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x277CEC6E0]];
  v10 = [MEMORY[0x277CFD480] appleAccountForAltDSID:v4];
  v11 = [v10 identifier];
  [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277CEC6D8]];

  v12 = objc_alloc_init(MEMORY[0x277CEC7F8]);
  v13 = [v12 followUpItemForIdentifier:@"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch" userInfo:v6];

  return v13;
}

- (unint64_t)_approvedCustodianCountForAltDSID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CDPDAccount);
  v5 = [(CDPDAccount *)v4 recoveryContactCountForAltDSID:v3];

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
  v4 = [v3 localizedString];
  [v2 setLabel:v4];

  [v2 setIdentifier:@"com.apple.cdp.offlinesecretcreate.continue"];

  return v2;
}

- (id)_createPasscodeNoteFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_CREATE_PASSCODE_BUTTON_PRIMARY" inTable:@"Localizable-Walrus"];
  v4 = [v3 localizedString];
  [v2 setLabel:v4];

  [v2 setIdentifier:@"com.apple.cdp.offlinesecretcreate.continue"];

  return v2;
}

- (id)_createPasscodeDismissNoteFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_VERIFY_PASSCODE_BUTTON_DISMISS" inTable:@"Localizable-Walrus"];
  v4 = [v3 localizedString];
  [v2 setLabel:v4];

  [v2 setIdentifier:@"com.apple.cdp.dismissfollowup"];

  return v2;
}

- (id)_followUpForRepairWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 altDSID];
  if (v5 && (v6 = v5, v7 = MEMORY[0x277CFD480], [v4 altDSID], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "checkIfAltDSIDIsBeneficiary:", v8), v8, v6, v7))
  {
    v9 = [v4 altDSID];
    v10 = [(CDPDFollowUpFactory *)self _isManateeAvailableForAltDSID:v9];

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
    v12 = [MEMORY[0x277CFD480] sharedInstance];
    v13 = [v12 primaryAccountIsBeneficiary];

    if (v13 && [(CDPDFollowUpFactory *)self _isManateeAvailable])
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
  v16 = [v4 altDSID];
  if (!v16)
  {
    v17 = [MEMORY[0x277CFD480] sharedInstance];
    v16 = [v17 primaryAccountAltDSID];
  }

  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277CEC6E0]];
  v18 = [MEMORY[0x277CFD480] appleAccountForAltDSID:v16];
  v19 = [v18 identifier];
  [v15 setObject:v19 forKeyedSubscript:*MEMORY[0x277CEC6D8]];

  v20 = objc_alloc_init(MEMORY[0x277CEC7F8]);
  v14 = [v20 followUpItemForIdentifier:*MEMORY[0x277CEC6D0] userInfo:v15];

  v21 = [(CDPDFollowUpFactory *)self _baseFollowUpNotificationWithContext:v4];
  [v14 setNotification:v21];

  v22 = [v14 actions];
  v23 = [v22 firstObject];

  v24 = [v23 identifier];
  v25 = *MEMORY[0x277CEC6C0];

  if (v24 == v25)
  {
    [v4 repairType];
    v26 = CDPLocalizedString();
    [v23 setLabel:v26];
  }

  v27 = [v14 notification];
  [v27 setActivateAction:v23];
  v28 = [v4 repairType];
  if (v28 == 3)
  {
LABEL_19:
    [(CDPDFollowUpFactory *)self _configureWalrusRepairFollowUpItem:v14];
    goto LABEL_21;
  }

  if (v28 != 1)
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
  v32 = [v31 localizedString];
  [v27 setTitle:v32];

  v33 = [MEMORY[0x277CFD508] builderForKey:@"TRUST_FOLLOWUP_ITEM_INFORMATIVE"];
  v34 = [MEMORY[0x277CFD4F8] sharedInstance];
  v35 = [v34 deviceClass];
  v36 = [v33 addDeviceClass:v35];
  v37 = [v36 localizedString];
  [v14 setInformativeText:v37];

  v38 = [MEMORY[0x277CFD508] builderForKey:@"TRUST_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  v39 = [MEMORY[0x277CFD4F8] sharedInstance];
  v40 = [v39 deviceClass];
  v41 = [v38 addDeviceClass:v40];
  v42 = [v41 localizedString];
  [v27 setInformativeText:v42];

  v15 = v44;
LABEL_21:

LABEL_22:

  return v14;
}

- (void)_configureRepairFollowUpItem:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 notification];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_ITEM_TITLE"];
  v6 = [v5 localizedString];
  [v3 setTitle:v6];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_ITEM_INFORMATIVE"];
  v8 = [v7 localizedString];
  [v3 setInformativeText:v8];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_NOTIFICATION_TITLE"];
  v10 = [v9 localizedString];
  [v4 setTitle:v10];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"SKIPPED_FOLLOWUP_NOTIFICATION_INFORMATIVE"];
  v12 = [v11 localizedString];
  [v4 setInformativeText:v12];

  v13 = [v4 options];
  v14 = *MEMORY[0x277CFE498];
  v18[0] = *MEMORY[0x277CFE4A8];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v13 setByAddingObjectsFromArray:v15];
  [v4 setOptions:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_configureWalrusRepairFollowUpItem:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 notification];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_TITLE" inTable:@"Localizable-Walrus"];
  v6 = [v5 localizedString];
  [v3 setTitle:v6];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_MESSAGE" inTable:@"Localizable-Walrus"];
  v8 = [v7 localizedString];
  [v3 setInformativeText:v8];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_NOTIFICATION_TITLE" inTable:@"Localizable-Walrus"];
  v10 = [v9 localizedString];
  [v4 setTitle:v10];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_NOTIFICATION_MESSAGE" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  [v4 setInformativeText:v12];

  v13 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v14 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_BUTTON_PRIMARY" inTable:@"Localizable-Walrus"];
  v15 = [v14 localizedString];
  [v13 setLabel:v15];

  [v4 setActivateAction:v13];
  v16 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v17 = [MEMORY[0x277CFD508] builderForKey:@"FOLLOWUP_JOIN_CDP_BUTTON_DISMISS" inTable:@"Localizable-Walrus"];
  v18 = [v17 localizedString];
  [v16 setLabel:v18];

  [v4 setClearAction:v16];
  v26[0] = v13;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v3 setActions:v19];

  [v3 setDisplayStyle:1];
  v20 = [v4 options];
  v21 = *MEMORY[0x277CFE498];
  v25[0] = *MEMORY[0x277CFE4A8];
  v25[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v23 = [v20 setByAddingObjectsFromArray:v22];
  [v4 setOptions:v23];

  [v4 setFirstNotificationDelay:0.0];
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_followUpForRecoveryKeyRepairWithContext:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [(CDPDFollowUpFactory *)self _baseFollowUpItemWithContext:a3];
  v5 = CDPLocalizedString();
  [v4 setTitle:v5];

  v6 = CDPLocalizedString();
  [v4 setInformativeText:v6];

  v7 = [(CDPDFollowUpFactory *)self _followUpActionForRecoveryKeyRepair];
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v4 setActions:v8];

  v9 = [v4 notification];

  if (v9)
  {
    v10 = [v4 notification];
    v11 = CDPLocalizedString();
    [v10 setTitle:v11];

    v12 = CDPLocalizedString();
    [v10 setInformativeText:v12];

    [v10 setActivateAction:v7];
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

- (id)_followUpForSettingUpBiometricsWithContext:(id)a3
{
  v77[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CDPDFollowUpFactory *)self _isBiometricCapable]&& ![(CDPDFollowUpFactory *)self _isBiometricAuthEnrolled])
  {
    v6 = objc_alloc_init(MEMORY[0x277CFE508]);
    v5 = objc_alloc_init(MEMORY[0x277CFE4F8]);
    v7 = [v6 notification];
    [v6 setGroupIdentifier:*MEMORY[0x277CFE440]];
    v8 = [v4 followUpType];

    if (v8)
    {
      v9 = [objc_opt_class() contextToIdentifierMap];
      v10 = [v4 followUpType];
      v11 = [v9 objectForKeyedSubscript:v10];
      [v6 setUniqueIdentifier:v11];
    }

    if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
    {
      v12 = [v4 altDSID];

      if (v12)
      {
        v76 = *MEMORY[0x277CFD3E0];
        v13 = [v4 altDSID];
        v77[0] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        [v6 setUserInfo:v14];

        v15 = MEMORY[0x277CFD480];
        v16 = [v4 altDSID];
        v17 = [v15 appleAccountForAltDSID:v16];
        v18 = [v17 identifier];
        [v6 setAccountIdentifier:v18];
      }
    }

    v67 = v7;
    [v6 setTargetBundleIdentifier:*MEMORY[0x277CFE3F8]];
    if ([(CDPDFollowUpFactory *)self _supportsFaceID])
    {
      v19 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_TITLE"];
      v20 = [v19 localizedString];
      [v6 setTitle:v20];

      v21 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_INFOTEXT"];
      v22 = [v21 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      v23 = [MEMORY[0x277CFD4F8] sharedInstance];
      v24 = [v23 deviceClass];
      v25 = [v22 addDeviceClass:v24];
      v26 = [v25 localizedString];
      [v6 setInformativeText:v26];

      v27 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_TITLE"];
      v28 = [v27 localizedString];
      v29 = v67;
      [v67 setTitle:v28];

      v30 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_FACEID_INFOTEXT"];
      v31 = [v30 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      v32 = [MEMORY[0x277CFD4F8] sharedInstance];
      v33 = [v32 deviceClass];
      v34 = [v31 addDeviceClass:v33];
      v35 = [v34 localizedString];
      [v67 setInformativeText:v35];

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
      v44 = [v43 localizedString];
      [v6 setTitle:v44];

      v45 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_INFOTEXT"];
      v46 = [v45 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      v47 = [MEMORY[0x277CFD4F8] sharedInstance];
      v48 = [v47 deviceClass];
      v49 = [v46 addDeviceClass:v48];
      v50 = [v49 localizedString];
      [v6 setInformativeText:v50];

      v51 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_TITLE"];
      v52 = [v51 localizedString];
      v29 = v67;
      [v67 setTitle:v52];

      v53 = [MEMORY[0x277CFD508] builderForKey:@"D2DENCRYPTION_FOLLOWUP_TOUCHID_INFOTEXT"];
      v54 = [v53 addSecretType:{-[CDPDFollowUpFactory secretType](self, "secretType")}];
      v55 = [MEMORY[0x277CFD4F8] sharedInstance];
      v56 = [v55 deviceClass];
      v57 = [v54 addDeviceClass:v56];
      v58 = [v57 localizedString];
      [v67 setInformativeText:v58];

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

- (id)_followUpForADPStateHealingWithContext:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v5 setDisplayStyle:1];
  [v5 setGroupIdentifier:*MEMORY[0x277CFE430]];
  v6 = [v4 followUpType];

  if (v6)
  {
    v7 = [objc_opt_class() contextToIdentifierMap];
    v8 = [v4 followUpType];
    v9 = [v7 objectForKeyedSubscript:v8];
    [v5 setUniqueIdentifier:v9];
  }

  if ([v4 shouldNotify])
  {
    v10 = [(CDPDFollowUpFactory *)self _baseFollowUpNotificationWithContext:v4];
    [v5 setNotification:v10];
  }

  [v5 setDisplayStyle:2];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_CFU_TITLE" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  [v5 setTitle:v12];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_CFU_TEXT" inTable:@"Localizable-Walrus"];
  v14 = [v13 localizedString];
  [v5 setInformativeText:v14];

  v15 = [(CDPDFollowUpFactory *)self _adpStateHealingFollowUpAction];
  v30[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v5 setActions:v16];

  v17 = [v5 notification];
  v18 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_CFU_TITLE" inTable:@"Localizable-Walrus"];
  v19 = [v18 localizedString];
  [v17 setTitle:v19];

  v20 = [MEMORY[0x277CFD508] builderForKey:@"ADP_STATE_HEALING_NOTIFICATION_TEXT" inTable:@"Localizable-Walrus"];
  v21 = [v20 localizedString];
  [v17 setInformativeText:v21];

  v22 = [v17 options];
  v23 = *MEMORY[0x277CFE498];
  v29[0] = *MEMORY[0x277CFE470];
  v29[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v25 = [v22 setByAddingObjectsFromArray:v24];
  [v17 setOptions:v25];

  v26 = [(CDPDFollowUpFactory *)self _adpStateHealingFollowUpAction];
  [v17 setActivateAction:v26];

  [v17 setFirstNotificationDelay:0.0];
  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_adpStateHealingFollowUpAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CFD508] builderForKey:@"CONTINUE"];
  v4 = [v3 localizedString];
  [v2 setLabel:v4];

  [v2 setIdentifier:@"com.apple.cdp.adpStateHealing.continue"];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/ICLOUD_ADP_SPECIFIER_NAME"];
  [v2 setUrl:v5];

  return v2;
}

- (id)_baseFollowUpItemWithContext:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v5 setDisplayStyle:1];
  [v5 setGroupIdentifier:*MEMORY[0x277CFE430]];
  v6 = [v4 followUpType];

  if (v6)
  {
    v7 = [objc_opt_class() contextToIdentifierMap];
    v8 = [v4 followUpType];
    v9 = [v7 objectForKeyedSubscript:v8];
    [v5 setUniqueIdentifier:v9];
  }

  v10 = [v4 altDSID];

  if (v10)
  {
    v21 = *MEMORY[0x277CFD3E0];
    v11 = [v4 altDSID];
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [v5 setUserInfo:v12];
  }

  if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
  {
    v13 = [v4 altDSID];

    if (v13)
    {
      v14 = MEMORY[0x277CFD480];
      v15 = [v4 altDSID];
      v16 = [v14 appleAccountForAltDSID:v15];
      v17 = [v16 identifier];
      [v5 setAccountIdentifier:v17];
    }
  }

  [v5 setExtensionIdentifier:*MEMORY[0x277CFD3E8]];
  if ([v4 shouldNotify])
  {
    v18 = [(CDPDFollowUpFactory *)self _baseFollowUpNotificationWithContext:v4];
    [v5 setNotification:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_baseFollowUpNotificationWithContext:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFE510];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setFrequency:86400.0];
  [v5 setFirstNotificationDelay:86400.0];
  v6 = [v4 force];

  if (v6)
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

- (id)_localizedStringForKey:(id)a3
{
  v3 = [MEMORY[0x277CFD508] builderForKey:a3];
  v4 = [v3 addSecretType:1];
  v5 = [v4 localizedString];

  return v5;
}

- (BOOL)_isBiometricAuthEnrolledWithLAEnvironment:(id)a3
{
  v3 = [a3 state];
  v4 = [v3 biometry];
  v5 = [v4 isEnrolled];

  if ((v5 & 1) == 0)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CDPDFollowUpFactory _isBiometricAuthEnrolledWithLAEnvironment:];
    }
  }

  return v5;
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

    v5 = [LAEnvironmentClass currentUser];
    v6 = self->_currentUser;
    self->_currentUser = v5;

    currentUser = self->_currentUser;
  }

  return [(CDPDFollowUpFactory *)self _isBiometricAuthEnrolledWithLAEnvironment:currentUser];
}

- (BOOL)_isManateeAvailableForAltDSID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:v3];
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
  v3 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = [v2 initWithContext:v3];

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
  v2 = [(CDPDFollowUpFactory *)self _deviceCapabilityProvider];
  if ([v2 supportsPearl])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 supportsMesa];
  }

  return v3;
}

- (BOOL)_supportsFaceID
{
  v2 = [(CDPDFollowUpFactory *)self _deviceCapabilityProvider];
  v3 = [v2 supportsPearl];

  return v3;
}

- (id)_deviceCapabilityProvider
{
  v2 = objc_alloc_init(CDPMobileGestaltWrapper);

  return v2;
}

- (BOOL)_isWalrusEnabled
{
  v2 = [CDPInternalWalrusStateController alloc];
  v3 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = [(CDPInternalWalrusStateController *)v2 initWithContext:v3];

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