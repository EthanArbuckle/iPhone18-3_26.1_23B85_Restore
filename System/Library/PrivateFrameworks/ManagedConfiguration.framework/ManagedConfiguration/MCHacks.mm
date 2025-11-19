@interface MCHacks
+ (id)sharedHacks;
- (BOOL)isGreenTea;
- (BOOL)isJapanSKU;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)a3;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)a3;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)a3;
- (id)_deviceRegionCode;
- (id)_deviceSpecificDefaultSettings;
- (id)_permittedGracePeriodNumbers;
- (id)_selectLargestNumberFromSortedArray:(id)a3 equalToOrLessThanNumber:(id)a4;
- (id)permittedAutoLockNumbers;
- (id)quantizedAutoLockInSeconds:(id)a3;
- (id)quantizedGracePeriodInSeconds:(id)a3;
- (void)_applyHeuristicsToEffectiveUserSettings:(id)a3;
- (void)_applyHeuristicsToGranfatheredRestrictionPayloadKeys:(id)a3;
- (void)_applyHeuristicsToRestrictions:(id)a3 forProfile:(id)a4 ignoresUnrestrictableApps:(BOOL)a5;
- (void)_applyImpliedSettingsToSettingsDictionary:(id)a3 currentSettings:(id)a4 restrictions:(id)a5;
- (void)_applyInternalDiagnosticEnforcementToSettings:(id)a3;
- (void)_applyMandatorySettingsToEffectiveUserSettings:(id)a3;
- (void)_sendChangeNotificationsBasedOnDefaultsAdditionByDomain:(id)a3;
- (void)_sendChangeNotificationsBasedOnDefaultsRemovalByDomain:(id)a3;
- (void)_setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:(id)a3;
@end

@implementation MCHacks

+ (id)sharedHacks
{
  if (sharedHacks_onceToken != -1)
  {
    +[MCHacks sharedHacks];
  }

  v3 = sharedHacks_hacks;

  return v3;
}

uint64_t __22__MCHacks_sharedHacks__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Mcserversideha.isa);
  if (!v0)
  {
    v0 = MCHacks;
  }

  sharedHacks_hacks = objc_alloc_init(v0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_permittedGracePeriodNumbers
{
  if (_permittedGracePeriodNumbers_once != -1)
  {
    [MCHacks _permittedGracePeriodNumbers];
  }

  v3 = _permittedGracePeriodNumbers_numbers;

  return v3;
}

void __39__MCHacks__permittedGracePeriodNumbers__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v9[0] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithInt:60];
  v9[1] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:300];
  v9[2] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:900];
  v9[3] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:3600];
  v9[4] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:14400];
  v9[5] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v7 = _permittedGracePeriodNumbers_numbers;
  _permittedGracePeriodNumbers_numbers = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (id)permittedAutoLockNumbers
{
  if (permittedAutoLockNumbers_once != -1)
  {
    [MCHacks permittedAutoLockNumbers];
  }

  v3 = permittedAutoLockNumbers_numbers;

  return v3;
}

void __35__MCHacks_permittedAutoLockNumbers__block_invoke()
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (MCGestaltIsiPad())
  {
    v0 = [MEMORY[0x1E696AD98] numberWithInt:120];
    v12[0] = v0;
    v1 = [MEMORY[0x1E696AD98] numberWithInt:300];
    v12[1] = v1;
    v2 = [MEMORY[0x1E696AD98] numberWithInt:600];
    v12[2] = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithInt:900];
    v12[3] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0x7FFFFFFFLL];
    v12[4] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
    v6 = permittedAutoLockNumbers_numbers;
    permittedAutoLockNumbers_numbers = v5;
  }

  else
  {
    v0 = [MEMORY[0x1E696AD98] numberWithInt:30];
    v11[0] = v0;
    v1 = [MEMORY[0x1E696AD98] numberWithInt:60];
    v11[1] = v1;
    v2 = [MEMORY[0x1E696AD98] numberWithInt:120];
    v11[2] = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithInt:180];
    v11[3] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInt:240];
    v11[4] = v4;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:300];
    v11[5] = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:0x7FFFFFFFLL];
    v11[6] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];
    v9 = permittedAutoLockNumbers_numbers;
    permittedAutoLockNumbers_numbers = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_selectLargestNumberFromSortedArray:(id)a3 equalToOrLessThanNumber:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectAtIndex:0];
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 compare:{v6, v17}] != 1)
          {
            v14 = v13;

            v7 = v14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)quantizedGracePeriodInSeconds:(id)a3
{
  v4 = a3;
  v5 = [(MCHacks *)self _permittedGracePeriodNumbers];
  v6 = [(MCHacks *)self _selectLargestNumberFromSortedArray:v5 equalToOrLessThanNumber:v4];

  return v6;
}

- (id)quantizedAutoLockInSeconds:(id)a3
{
  v4 = a3;
  v5 = [(MCHacks *)self permittedAutoLockNumbers];
  v6 = [(MCHacks *)self _selectLargestNumberFromSortedArray:v5 equalToOrLessThanNumber:v4];

  return v6;
}

- (void)_applyHeuristicsToRestrictions:(id)a3 forProfile:(id)a4 ignoresUnrestrictableApps:(BOOL)a5
{
  v42 = a3;
  v8 = a4;
  v9 = [MCRestrictionManager unionValuesForFeature:@"blacklistedAppBundleIDs" withRestrictionsDictionary:v42];
  v41 = [MCRestrictionManager unionValuesForFeature:@"blockedAppBundleIDs" withRestrictionsDictionary:v42];
  if ([v9 count] || objc_msgSend(v41, "count"))
  {
    v10 = self;
    v11 = v8;
    v12 = v9;
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v14 = [MEMORY[0x1E695DFA8] setWithArray:v41];
    [v14 unionSet:v13];
    if (!a5)
    {
      v15 = MCUnrestrictableApps();
      [v14 minusSet:v15];
    }

    v16 = [v14 allObjects];
    v17 = [v16 copy];
    [v42 MCSetUnionRestriction:@"blockedAppBundleIDs" values:v17];

    v18 = [v16 copy];
    [v42 MCSetUnionRestriction:@"blacklistedAppBundleIDs" values:v18];

    v8 = v11;
    v9 = v12;
    self = v10;
  }

  v19 = [MCRestrictionManager intersectedValuesForFeature:@"appLockBundleIDs" withRestrictionsDictionary:v42];
  if ([v19 count] && !a5)
  {
    v20 = [MEMORY[0x1E695DFA8] setWithArray:v19];
    v21 = MCUnrestrictableApps();
    [v20 unionSet:v21];

    v22 = [v20 allObjects];
    [v42 MCSetIntersectionRestriction:@"appLockBundleIDs" values:v22];
  }

  v23 = [v8 isEncrypted];
  v24 = v42;
  if (v23)
  {
    v25 = [v42 objectForKeyedSubscript:@"restrictedBool"];
    v26 = [v25 objectForKeyedSubscript:@"forceEncryptedBackup"];
    v27 = [v26 objectForKeyedSubscript:@"value"];

    v24 = v42;
    if (!v27)
    {
      [v42 MCSetBoolRestriction:@"forceEncryptedBackup" value:1];
      v24 = v42;
    }
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowCamera" withRestrictionsDictionary:v24]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowVideoConferencing" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"forceEncryptedBackup" withRestrictionsDictionary:v42]== 1)
  {
    [v42 MCSetBoolRestriction:@"cloudBackupPasswordRequired" value:1];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowGameCenter" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowMultiplayerGaming" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowMultiplayerGaming" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetValueRestriction:@"allowedGameCenterOtherPlayerTypes" value:&unk_1F1AA5848];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowiTunes" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowiTunesSocialPages" value:0];
  }

  v28 = [MCPasscodeManager unlockScreenTypeForRestrictions:v42];
  v29 = v42;
  if (v28)
  {
    v30 = v28;
    v31 = [MCRestrictionManager valueForFeature:@"passcodeKeyboardComplexity" withRestrictionsDictionary:v42];
    if ([v31 unsignedIntValue] < v30)
    {
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v30];
      [v42 MCSetValueRestriction:@"passcodeKeyboardComplexity" value:v32];
    }

    v29 = v42;
  }

  v33 = [MCRestrictionManager valueForFeature:@"maxGracePeriod" withRestrictionsDictionary:v29];
  if (v33)
  {
    v34 = [(MCHacks *)self quantizedGracePeriodInSeconds:v33];
    [v42 MCSetValueRestriction:@"maxGracePeriod" value:v34];
  }

  v35 = [MCRestrictionManager valueForFeature:@"maxInactivity" withRestrictionsDictionary:v42];
  if (v35)
  {
    v36 = [(MCHacks *)self quantizedAutoLockInSeconds:v35];
    [v42 MCSetValueRestriction:@"maxInactivity" value:v36];
  }

  v37 = [MCRestrictionManager valueForFeature:@"ratingApps" withRestrictionsDictionary:v42];
  v38 = v37;
  if (v37 && [v37 intValue] <= 999)
  {
    [v42 MCSetBoolRestriction:@"forceITunesStorePasswordEntry" value:1];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowCloudDocumentSync" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowManagedAppsCloudSync" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowDiagnosticSubmission" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowAppAnalytics" value:0];
    [v42 MCSetBoolRestriction:@"allowHealthDataSubmission" value:0];
    [v42 MCSetBoolRestriction:@"allowHealthDataSubmission2" value:0];
    [v42 MCSetBoolRestriction:@"allowWheelchairDataSubmission" value:0];
    [v42 MCSetBoolRestriction:@"allowHandWashingDataSubmission" value:0];
    [v42 MCSetBoolRestriction:@"allowSafetyDataSubmission" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowPasscodeModification" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowFingerprintModification" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowAppInstallation" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowUIAppInstallation" value:0];
    [v42 MCSetBoolRestriction:@"allowMarketplaceAppInstallation" value:0];
    [v42 MCSetBoolRestriction:@"allowWebDistributionAppInstallation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowScreenShot" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowScreenRecording" value:0];
    [v42 MCSetBoolRestriction:@"allowRemoteScreenObservation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowRemoteScreenObservation" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowClassroomScreenObservation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowNews" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowNewsToday" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowAutoCorrection" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowSmartPunctuation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowAppRemoval" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowSystemAppRemoval" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"forceClassroomUnpromptedScreenObservation" withRestrictionsDictionary:v42]== 1 || [MCRestrictionManager restrictedBoolForFeature:@"forceUnpromptedManagedClassroomScreenObservation" withRestrictionsDictionary:v42]== 1)
  {
    [v42 MCSetBoolRestriction:@"forceClassroomUnpromptedScreenObservation" value:1];
    [v42 MCSetBoolRestriction:@"forceUnpromptedManagedClassroomScreenObservation" value:1];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowPasswordSharing" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowWiFiPasswordSharing" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"forceWiFiWhitelisting" withRestrictionsDictionary:v42]== 1 || [MCRestrictionManager restrictedBoolForFeature:@"forceWiFiToAllowedNetworksOnly" withRestrictionsDictionary:v42]== 1)
  {
    [v42 MCSetBoolRestriction:@"forceWiFiWhitelisting" value:1];
    [v42 MCSetBoolRestriction:@"forceWiFiToAllowedNetworksOnly" value:1];
  }

  if (_os_feature_enabled_impl())
  {
    if (+[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", @"allowPasscodeModification", v42) == 2 || (+[MCRestrictionManager valueForFeature:withRestrictionsDictionary:](MCRestrictionManager, "valueForFeature:withRestrictionsDictionary:", @"pinHistory", v42), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 unsignedIntValue], v39, v40))
    {
      [v42 MCSetBoolRestriction:@"allowPasscodeRecovery" value:0];
    }
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowControlCenter" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowControlCenterInApps" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowSpotlight" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowSpotlightNews" value:0];
    [v42 MCSetBoolRestriction:@"allowSpotlightInternetResults" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowDefaultBrowserModification" withRestrictionsDictionary:v42]== 2)
  {
    [v42 MCSetBoolRestriction:@"allowDefaultBrowserPrompting" value:0];
  }
}

- (void)_applyImpliedSettingsToSettingsDictionary:(id)a3 currentSettings:(id)a4 restrictions:(id)a5
{
  v27 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v27 objectForKey:@"restrictedBool"];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v27 setObject:v9 forKey:@"restrictedBool"];
  }

  v10 = [MCRestrictionManager BOOLSettingForFeature:@"allowCamera" withNewUserSetting:v27 currentSettings:v7];
  if (v10 == 2)
  {
    v11 = @"allowVideoConferencing";
    v12 = v9;
    v13 = 0;
  }

  else
  {
    v14 = v10;
    v15 = MGCopyAnswer();
    v16 = [v15 BOOLValue];

    if (v16)
    {
      if ([MCRestrictionManager BOOLSettingForFeature:@"allowVideoConferencing" withNewUserSetting:v27 currentSettings:v7]!= 1)
      {
        goto LABEL_12;
      }

      v12 = v9;
      v11 = @"allowCamera";
    }

    else
    {
      if (v14 != 1)
      {
        goto LABEL_12;
      }

      v11 = @"allowVideoConferencing";
      v12 = v9;
    }

    v13 = 1;
  }

  MCFeatureSetBoolSetting(v12, v11, v13);
LABEL_12:
  if ([MCRestrictionManager BOOLSettingForFeature:@"allowiTunes" withNewUserSetting:v27 currentSettings:v7]== 2)
  {
    v17 = @"allowiTunesSocialPages";
    v18 = v9;
    v19 = 0;
  }

  else
  {
    if ([MCRestrictionManager BOOLSettingForFeature:@"allowiTunesSocialPages" withNewUserSetting:v27 currentSettings:v7]!= 1)
    {
      goto LABEL_17;
    }

    v18 = v9;
    v17 = @"allowiTunes";
    v19 = 1;
  }

  MCFeatureSetBoolSetting(v18, v17, v19);
LABEL_17:
  if ([MCRestrictionManager BOOLSettingForFeature:@"allowGameCenter" withNewUserSetting:v27 currentSettings:v7]== 2)
  {
    v20 = @"allowMultiplayerGaming";
    v21 = v9;
    v22 = 0;
  }

  else
  {
    if ([MCRestrictionManager BOOLSettingForFeature:@"allowMultiplayerGaming" withNewUserSetting:v27 currentSettings:v7]!= 1)
    {
      goto LABEL_22;
    }

    v21 = v9;
    v20 = @"allowGameCenter";
    v22 = 1;
  }

  MCFeatureSetBoolSetting(v21, v20, v22);
LABEL_22:
  if ([MCRestrictionManager BOOLSettingForFeature:@"allowDiagnosticSubmission" withNewUserSetting:v27 currentSettings:v7]== 2)
  {
    MCFeatureSetBoolSetting(v9, @"allowAppAnalytics", 0);
    MCFeatureSetBoolSetting(v9, @"allowHealthDataSubmission", 0);
    MCFeatureSetBoolSetting(v9, @"allowHealthDataSubmission2", 0);
    MCFeatureSetBoolSetting(v9, @"allowWheelchairDataSubmission", 0);
    MCFeatureSetBoolSetting(v9, @"allowHandWashingDataSubmission", 0);
    MCFeatureSetBoolSetting(v9, @"allowSafetyDataSubmission", 0);
  }

  v23 = [MCRestrictionManager BOOLSettingForFeature:@"allowNews" withNewUserSetting:v27 currentSettings:v7];
  if (v23 == 2)
  {
    v24 = 0;
    goto LABEL_28;
  }

  if (v23 == 1)
  {
    v24 = 1;
LABEL_28:
    MCFeatureSetBoolSetting(v9, @"allowNewsToday", v24);
  }

  v25 = [MCRestrictionManager valueForFeature:@"ratingApps" withRestrictionsDictionary:v8];
  v26 = v25;
  if (!v25 || [v25 intValue] >= 1000)
  {
    MCFeatureSetBoolSetting(v9, @"forceITunesStorePasswordEntry", 0);
  }
}

- (void)_applyHeuristicsToEffectiveUserSettings:(id)a3
{
  v29 = a3;
  v4 = [MCRestrictionManager valueSettingForFeature:@"maxGracePeriod" withUserSettingDictionary:v29];
  if (v4)
  {
    self = [(MCHacks *)self quantizedGracePeriodInSeconds:v4];
    v5 = [v29 objectForKeyedSubscript:@"restrictedValue"];
    v6 = [v5 objectForKeyedSubscript:@"maxGracePeriod"];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 setObject:self forKeyedSubscript:@"value"];
      }
    }
  }

  v7 = [MCRestrictionManager BOOLSettingForFeature:@"allowNews" withUserSettingDictionary:v29];
  if (v7 != 2)
  {
    self = [MCRestrictionManager unionValuesForFeature:@"blockedAppBundleIDs" withRestrictionsDictionary:v29];
    if (![(MCHacks *)self containsObject:@"com.apple.news"])
    {
      goto LABEL_14;
    }
  }

  v8 = [MCRestrictionManager BOOLSettingForFeature:@"allowSpotlightNews" withUserSettingDictionary:v29];
  if (v7 != 2)
  {
  }

  if (v8 == 2)
  {
    v9 = [v29 objectForKeyedSubscript:@"restrictedBool"];
    self = [v9 MCMutableDeepCopy];

    if (!self)
    {
      self = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(self, @"allowNewsToday", 0);
    [v29 setObject:self forKeyedSubscript:@"restrictedBool"];
LABEL_14:
  }

  if ([MEMORY[0x1E6999800] isSharediPad])
  {
    MCLKLogoutSupportClass();
    v10 = objc_opt_new();
    v11 = [v10 isCurrentUserAnonymous];

    if (v11)
    {
      v12 = [v29 objectForKeyedSubscript:@"restrictedBool"];
      v13 = [v12 MCMutableDeepCopy];

      if (!v13)
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
      }

      MCFeatureSetBoolSetting(v13, @"allowAccountModification", 0);
      v14 = [v13 copy];
      [v29 setObject:v14 forKeyedSubscript:@"restrictedBool"];
    }
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"forceWiFiWhitelisting" withUserSettingDictionary:v29]== 1 || [MCRestrictionManager BOOLSettingForFeature:@"forceWiFiToAllowedNetworksOnly" withUserSettingDictionary:v29]== 1)
  {
    v15 = [v29 objectForKeyedSubscript:@"restrictedBool"];
    v16 = [v15 MCMutableDeepCopy];

    if (!v16)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(v16, @"forceWiFiWhitelisting", 1);
    MCFeatureSetBoolSetting(v16, @"forceWiFiToAllowedNetworksOnly", 1);
    [v29 setObject:v16 forKeyedSubscript:@"restrictedBool"];
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"allowLockdownMode" withUserSettingDictionary:v29]== 1)
  {
    v17 = [v29 objectForKeyedSubscript:@"restrictedBool"];
    v18 = [v17 MCMutableDeepCopy];

    if (!v18)
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(v18, @"allowUSBRestrictedMode", 1);
    MCFeatureSetBoolSetting(v18, @"allowUIConfigurationProfileInstallation", 0);
    if (_os_feature_enabled_impl())
    {
      MCFeatureSetBoolSetting(v18, @"allowPasscodeRecovery", 0);
    }

    [v29 setObject:v18 forKeyedSubscript:@"restrictedBool"];
  }

  v19 = _os_feature_enabled_impl();
  v20 = v29;
  if (v19)
  {
    v21 = [MCRestrictionManager BOOLSettingForFeature:@"allowPasscodeModification" withUserSettingDictionary:v29];
    v20 = v29;
    if (v21 == 2)
    {
      v22 = [MCRestrictionManager BOOLSettingForFeature:@"allowPasscodeRecovery" withUserSettingDictionary:v29];
      v20 = v29;
      if (v22 != 2)
      {
        v23 = [v29 objectForKeyedSubscript:@"restrictedBool"];
        v24 = [v23 MCMutableDeepCopy];

        if (!v24)
        {
          v24 = [MEMORY[0x1E695DF90] dictionary];
        }

        MCFeatureSetBoolSetting(v24, @"allowPasscodeRecovery", 0);
        [v29 setObject:v24 forKeyedSubscript:@"restrictedBool"];

        v20 = v29;
      }
    }
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"allowControlCenter" withUserSettingDictionary:v20]== 2)
  {
    v25 = [v29 objectForKeyedSubscript:@"restrictedBool"];
    v26 = [v25 MCMutableDeepCopy];

    if (!v26)
    {
      v26 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(v26, @"allowControlCenterInApps", 0);
    [v29 setObject:v26 forKeyedSubscript:@"restrictedBool"];
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"allowSpotlight" withUserSettingDictionary:v29]== 2)
  {
    v27 = [v29 objectForKeyedSubscript:@"restrictedBool"];
    v28 = [v27 MCMutableDeepCopy];

    if (!v28)
    {
      v28 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(v28, @"allowSpotlightNews", 0);
    MCFeatureSetBoolSetting(v28, @"allowSpotlightInternetResults", 0);
    [v29 setObject:v28 forKeyedSubscript:@"restrictedBool"];
  }
}

- (void)_applyMandatorySettingsToEffectiveUserSettings:(id)a3
{
  v32 = a3;
  [(MCHacks *)self _applyInternalDiagnosticEnforcementToSettings:?];
  if ([MEMORY[0x1E6999800] isSharediPad])
  {
    v4 = [v32 objectForKeyedSubscript:@"union"];
    v5 = [v4 MCMutableDeepCopy];

    v6 = [v5 objectForKeyedSubscript:@"blockedAppBundleIDs"];
    v7 = [v6 objectForKeyedSubscript:@"values"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF70] array];
    }

    v10 = v9;

    v11 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    v12 = MCAlwaysRestrictedAppsInEDUMode();
    [v11 unionSet:v12];

    v13 = [v11 allObjects];
    v14 = [v13 copy];
    v15 = [v5 objectForKeyedSubscript:@"blockedAppBundleIDs"];
    [v15 setObject:v14 forKeyedSubscript:@"values"];

    v16 = [v13 copy];
    v17 = [v5 objectForKeyedSubscript:@"blacklistedAppBundleIDs"];
    [v17 setObject:v16 forKeyedSubscript:@"values"];

    [v32 setObject:v5 forKeyedSubscript:@"union"];
    v18 = [v32 objectForKeyedSubscript:@"restrictedBool"];
    v19 = [v18 MCMutableDeepCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x1E695DF90] dictionary];
    }

    v22 = v21;

    [v32 setObject:v22 forKeyedSubscript:@"restrictedBool"];
    MCFeatureSetBoolSetting(v22, @"allowProximitySetupToNewDevice", 0);
    MCFeatureSetBoolSetting(v22, @"allowEnablingRestrictions", 0);
    MCFeatureSetBoolSetting(v22, @"allowGameCenter", 0);
    MCFeatureSetBoolSetting(v22, @"allowAppsToBeHidden", 0);
    MCFeatureSetBoolSetting(v22, @"allowAppsToBeLocked", 0);
  }

  v23 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v24 = [v23 details];

  v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E69996F8]];
  v26 = v25;
  if (v25 && ([v25 BOOLValue] & 1) == 0)
  {
    v27 = [v32 objectForKeyedSubscript:@"restrictedBool"];
    v28 = [v27 MCMutableDeepCopy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = [MEMORY[0x1E695DF90] dictionary];
    }

    v31 = v30;

    [v32 setObject:v31 forKeyedSubscript:@"restrictedBool"];
    MCFeatureSetBoolSetting(v31, @"allowHostPairing", 0);
  }
}

- (void)_applyHeuristicsToGranfatheredRestrictionPayloadKeys:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MCHacks *)self isJapanSKU])
  {
    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = @"allowSafari";
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Japan SKU device: Add %@ to grandfathered restrictions", buf, 0xCu);
    }

    v6 = [v4 objectForKeyedSubscript:@"restrictedBool"];
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];
      [v8 addObject:@"allowSafari"];
      v9 = [v8 allObjects];
    }

    else
    {
      v11 = @"allowSafari";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    }

    [v4 setObject:v9 forKeyedSubscript:@"restrictedBool"];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_applyInternalDiagnosticEnforcementToSettings:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_ui())
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MCInternalOverrideDiagnosticEnforcement", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat || !AppBooleanValue)
    {
      v5 = [v3 objectForKeyedSubscript:@"restrictedBool"];
      v6 = [v5 MCMutableDeepCopy];

      if (!v6)
      {
        v6 = [MEMORY[0x1E695DF90] dictionary];
      }

      [v3 setObject:v6 forKeyedSubscript:@"restrictedBool"];
      MCFeatureSetBoolSetting(v6, @"allowDiagnosticSubmission", 1);
    }
  }
}

- (void)_setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:(id)a3
{
  v3 = [MCRestrictionManager BOOLSettingForFeature:@"forceEncryptedBackup" withUserSettingDictionary:a3]== 1;
  v4 = MCLockdownOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MCHacks__setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__MCHacks__setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = lockdown_connect();
  if (result)
  {
    v3 = CFNumberCreate(0, kCFNumberCharType, (a1 + 32));
    if (v3)
    {
      v4 = v3;
      v5 = lockdown_set_value();
      if (v5)
      {
        v6 = v5;
        v7 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v9[0] = 67109120;
          v9[1] = v6;
          _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Could not set encrypted backup required key in lockdown: %d", v9, 8u);
        }
      }

      CFRelease(v4);
    }

    result = lockdown_disconnect();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_deviceSpecificDefaultSettings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MCHacks__deviceSpecificDefaultSettings__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  if (_deviceSpecificDefaultSettings_once != -1)
  {
    dispatch_once(&_deviceSpecificDefaultSettings_once, block);
  }

  return _deviceSpecificDefaultSettings_dict;
}

void __41__MCHacks__deviceSpecificDefaultSettings__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = MCGetBaseResourcePath();
  v4 = [v3 stringByAppendingPathComponent:@"defaultSettings.plist"];
  v5 = [v2 dataWithContentsOfFile:v4];

  v6 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v5 options:2 format:0 error:0];
  if (MCGestaltIsiPad())
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "Applying iPad defaults", buf, 2u);
    }

    v8 = [v6 objectForKey:@"restrictedValue"];
    v9 = [v8 objectForKey:@"maxInactivity"];

    if (v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:120];
      [v9 setObject:v10 forKey:@"value"];

      v11 = [MEMORY[0x1E696AD98] numberWithInt:120];
      [v9 setObject:v11 forKey:@"rangeMinimum"];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (MCGestaltHasPearlIDCapability())
  {
    v12 = [v6 objectForKey:@"restrictedValue"];
    v9 = [v12 objectForKey:@"maxInactivity"];

    if (v9)
    {
      v13 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_DEFAULT, "Applying FaceID defaults", v31, 2u);
      }

      [v9 setObject:&unk_1F1AA5860 forKey:@"value"];
    }

    goto LABEL_11;
  }

  v28 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_DEFAULT, "Applying iPhone defaults", v30, 2u);
  }

LABEL_12:
  if (MCGestaltHasBiometricCapability())
  {
    v14 = [v6 objectForKey:@"restrictedValue"];
    v15 = [v14 objectForKey:@"minLength"];

    if (v15)
    {
      v16 = [v15 objectForKey:@"value"];
      v17 = [v16 unsignedIntValue];

      if (v17 <= 5)
      {
        v18 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEFAULT, "Applying TouchID defaults", v29, 2u);
        }

        [v15 setObject:&unk_1F1AA5878 forKey:@"value"];
      }
    }
  }

  [*(a1 + 32) _applyInternalDiagnosticEnforcementToSettings:v6];
  v19 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = MDMFilePath();
  v21 = [v19 fileExistsAtPath:v20 isDirectory:0];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x1E69AD420] sharedConfiguration];
    v23 = [v22 isSupervised];

    if (v23)
    {
      v24 = [v6 objectForKey:@"restrictedBool"];
      v25 = [v24 objectForKey:@"allowUSBRestrictedMode"];

      v26 = [MEMORY[0x1E696AD98] numberWithBool:0];
      [v25 setObject:v26 forKey:@"value"];
    }
  }

  v27 = _deviceSpecificDefaultSettings_dict;
  _deviceSpecificDefaultSettings_dict = v6;
}

- (void)_sendChangeNotificationsBasedOnDefaultsAdditionByDomain:(id)a3
{
  v3 = [a3 objectForKey:@"com.apple.powerlogd"];
  v6 = [v3 objectForKey:@"FullMode"];

  if (v6)
  {
    v4 = [MEMORY[0x1E695DFB0] null];

    v5 = v6;
    if (v6 == v4)
    {

      v5 = 0;
    }

    v7 = v5;
    MCPowerlogControlSwitchMode(v5);
  }
}

- (void)_sendChangeNotificationsBasedOnDefaultsRemovalByDomain:(id)a3
{
  v3 = [a3 objectForKey:@"com.apple.powerlogd"];
  v4 = [v3 containsObject:@"FullMode"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:0];
    MCPowerlogControlSwitchMode(v5);
  }
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Evaluating whether the certificate signer is entitled to install unsupported payloads.", v10, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v5 sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:v3];
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Unsupported evaluation result: %d", v10, 8u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Evaluating whether the certificate signer is entitled to write defaults.", v10, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v5 sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:v3];
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Evaluation result: %d", v10, 8u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Evaluating whether the certificate signer is entitled to install supervised only restrictions on an unsupervised device.", v10, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v5 sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:v3];
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Evaluation result: %d", v10, 8u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_deviceRegionCode
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)isGreenTea
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MCHacks_isGreenTea__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  if (isGreenTea_once != -1)
  {
    dispatch_once(&isGreenTea_once, block);
  }

  return isGreenTea_isGreenTea;
}

void __21__MCHacks_isGreenTea__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService - 1;
  if (MatchingService - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], MatchingService);
  }

  v6 = v5 < 0xFFFFFFFE;
  v7 = [*(a1 + 32) _deviceRegionCode];
  v8 = [v7 isEqualToString:@"CH"];

  isGreenTea_isGreenTea = v6 & v8;
}

- (BOOL)isJapanSKU
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MCHacks_isJapanSKU__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  if (isJapanSKU_once != -1)
  {
    dispatch_once(&isJapanSKU_once, block);
  }

  return isJapanSKU_isJapanSKU;
}

void __21__MCHacks_isJapanSKU__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _deviceRegionCode];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [&unk_1F1AA5A10 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_1F1AA5A10);
        }

        if ([v1 isEqualToString:*(*(&v7 + 1) + 8 * i)])
        {
          isJapanSKU_isJapanSKU = 1;
          goto LABEL_11;
        }
      }

      v3 = [&unk_1F1AA5A10 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
}

@end