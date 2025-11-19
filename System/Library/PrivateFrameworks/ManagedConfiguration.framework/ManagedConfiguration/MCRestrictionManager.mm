@interface MCRestrictionManager
+ (BOOL)BOOLSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5;
+ (BOOL)intersectedValuesForFeature:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5;
+ (BOOL)intersectedValuesSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5;
+ (BOOL)isWebContentFilterUIActiveWithRestrictionDictionary:(id)a3;
+ (BOOL)isWhitelistedAppsRestrictionEnforcedWithRestrictionsDictionary:(id)a3;
+ (BOOL)mayChangePasscode;
+ (BOOL)restrictedBool:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5;
+ (BOOL)restrictedValue:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5;
+ (BOOL)unionValuesForFeature:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5;
+ (BOOL)unionValuesSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5;
+ (BOOL)valueSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5;
+ (id)_addRestrictionPayloadKeysDictionary:(id)a3 toRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5;
+ (id)_filterRestrictionDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5;
+ (id)_filterRestrictionPayloadKeysDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5;
+ (id)_lockedDownRestrictionPayloadKeysWithPayloadKeysDictionary:(id)a3 forRestrictionKey:(id)a4;
+ (id)_payloadKeysDictionaryAfterAddingFeature:(id)a3 toRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5;
+ (id)addRestrictionPayloadKeysDictionary:(id)a3 toRestrictionPayloadKeysDictionary:(id)a4;
+ (id)allowedGrandfatheredRestrictionPayloadKeysDictionary;
+ (id)allowedImportFromAppBundleIDsWithOriginalAppBundleIDs:(id)a3 managedAppBundleIDs:(id)a4 localAppBundleID:(id)a5 localAccountIsManaged:(BOOL)a6 mayOpenFromUnmanagedToManaged:(BOOL)a7 mayOpenFromManagedToUnmanaged:(BOOL)a8 isAppBundleIDExemptBlock:(id)a9 isAppBundleIDAccountBasedBlock:(id)a10;
+ (id)allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs:(id)a3 managedAppBundleIDs:(id)a4 hostAppIsManaged:(BOOL)a5 mayOpenFromUnmanagedToManaged:(BOOL)a6 mayOpenFromManagedToUnmanaged:(BOOL)a7;
+ (id)allowedOpenInAppBundleIDsWithOriginalAppBundleIDs:(id)a3 managedAppBundleIDs:(id)a4 localAppBundleID:(id)a5 localAccountIsManaged:(BOOL)a6 mayOpenFromUnmanagedToManaged:(BOOL)a7 mayOpenFromManagedToUnmanaged:(BOOL)a8 isAppBundleIDExemptBlock:(id)a9 isAppBundleIDAccountBasedBlock:(id)a10;
+ (id)applyRestrictions:(id)a3 forFeature:(id)a4 toParametersForBoolSetting:(id)a5;
+ (id)defaultIntersectedValuesForSetting:(id)a3;
+ (id)defaultParametersForBoolSetting:(id)a3;
+ (id)defaultParametersForIntersectedValuesSetting:(id)a3;
+ (id)defaultParametersForUnionValuesSetting:(id)a3;
+ (id)defaultParametersForValueSetting:(id)a3;
+ (id)defaultRestrictionFilePath;
+ (id)defaultSettings;
+ (id)defaultUnionValuesForSetting:(id)a3;
+ (id)defaultValueForSetting:(id)a3;
+ (id)effectiveGrandfatheredRestrictionPayloadKeysDictionary;
+ (id)explicitlyRestrictedAppsBySetting;
+ (id)explicitlyRestrictedEphemeralMultiUserApps;
+ (id)filterGrandfatheredRestrictionsIfNeededFromRestrictions:(id)a3;
+ (id)filterRestrictionDictionary:(id)a3 acceptedKeysDict:(id)a4;
+ (id)filterRestrictionDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4;
+ (id)filterRestrictionDictionary:(id)a3 toIncludeOnlyRestrictionsThatDifferFromRestrictions:(id)a4;
+ (id)filterRestrictionDictionaryForPublicUse:(id)a3;
+ (id)filterRestrictionPayloadKeysDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4;
+ (id)filterUserSettingsForPublicUse:(id)a3;
+ (id)grandfatheredRestrictionPayloadKeysDictionary;
+ (id)intersectedValuesForFeature:(id)a3 withRestrictionsDictionary:(id)a4;
+ (id)intersectedValuesSettingForFeature:(id)a3 withUserSettingDectionary:(id)a4;
+ (id)maximumValueForSetting:(id)a3;
+ (id)minimumValueForSetting:(id)a3;
+ (id)newEffectiveSettingsByApplyingRestrictions:(id)a3 toSettings:(id)a4;
+ (id)objectForFeature:(id)a3 withRestrictionsDictionary:(id)a4;
+ (id)parametersForSetting:(id)a3 ofType:(id)a4 withUserSettingDictionary:(id)a5;
+ (id)restrictionKeys;
+ (id)restrictionsAfterApplyingRestrictionsDictionary:(id)a3 toRestrictionsDictionary:(id)a4 outChangeDetected:(BOOL *)a5 outError:(id *)a6;
+ (id)restrictionsWithCurrentRestrictions:(id)a3 defaultRestrictions:(id)a4 systemProfileRestrictions:(id)a5 userProfileRestrictions:(id)a6 systemClientRestrictions:(id)a7 userClientRestrictions:(id)a8 outRestrictionsChanged:(BOOL *)a9 outError:(id *)a10;
+ (id)sharedManager;
+ (id)systemMetadataValueForKey:(id)a3;
+ (id)unionValuesForFeature:(id)a3 withRestrictionsDictionary:(id)a4;
+ (id)unionValuesSettingForFeature:(id)a3 withUserSettingDictionary:(id)a4;
+ (id)valueForFeature:(id)a3 withRestrictionsDictionary:(id)a4;
+ (id)valueSettingForFeature:(id)a3 withUserSettingDictionary:(id)a4;
+ (int)BOOLSettingForFeature:(id)a3 outAsk:(BOOL *)a4 withUserSettingDictionary:(id)a5;
+ (int)BOOLSettingForFeature:(id)a3 withNewUserSetting:(id)a4 currentSettings:(id)a5;
+ (int)appWhitelistStateWithSettingsDictionary:(id)a3 restrictionsDictionary:(id)a4;
+ (int)defaultBoolValueForSetting:(id)a3 outAsk:(BOOL *)a4;
+ (int)restrictedBoolForFeature:(id)a3 withRestrictionsDictionary:(id)a4;
- (BOOL)_isBoolSettingLockedDown:(id)a3;
- (BOOL)_isValueSettingLockedDown:(id)a3 effectiveSetting:(id)a4;
- (BOOL)allowedToRunAppWithBundleID:(id)a3;
- (BOOL)applyConfiguration:(id)a3 toDomain:(unint64_t)a4 inNamespace:(id)a5 fromSender:(id)a6;
- (BOOL)isBoolSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isInSingleAppMode;
- (BOOL)isIntersectionSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isSingleAppModeLogoutAllowed;
- (BOOL)isUnionSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isValueSettingLockedDownByRestrictions:(id)a3;
- (MCRestrictionManager)init;
- (NSArray)memberQueueEffectiveWhitelistedAppsAndOptions;
- (NSDictionary)combinedProfileRestrictions;
- (NSDictionary)currentRestrictions;
- (NSDictionary)defaultRestrictions;
- (NSDictionary)effectiveUserSettings;
- (NSDictionary)systemProfileRestrictions;
- (NSDictionary)systemUserSettings;
- (NSDictionary)userProfileRestrictions;
- (NSDictionary)userUserSettings;
- (NSMutableDictionary)memberQueueCombinedProfileRestrictions;
- (NSMutableDictionary)memberQueueCombinedSystemProfileRestrictions;
- (NSMutableDictionary)memberQueueEffectiveUserSettings;
- (NSMutableDictionary)memberQueueRestrictions;
- (NSMutableDictionary)memberQueueSettingsEvents;
- (NSMutableDictionary)memberQueueSystemClientRestrictions;
- (NSMutableDictionary)memberQueueSystemNamespacedUserSettings;
- (NSMutableDictionary)memberQueueSystemProfileRestrictions;
- (NSMutableDictionary)memberQueueSystemUserSettings;
- (NSMutableDictionary)memberQueueUserClientRestrictions;
- (NSMutableDictionary)memberQueueUserNamespacedUserSettings;
- (NSMutableDictionary)memberQueueUserProfileRestrictions;
- (NSMutableDictionary)memberQueueUserUserSettings;
- (id)_effectiveIntersectedValuesForSetting:(id)a3 effectiveUserSettings:(id)a4;
- (id)_effectiveUnionValuesForSetting:(id)a3 effectiveUserSettings:(id)a4;
- (id)_settingsEventFromProcess:(id)a3 withTag:(id)a4;
- (id)_updatedDomainSettingsEvents:(id)a3 fromPreviousSettings:(id)a4 toNewSettings:(id)a5 sender:(id)a6;
- (id)allClientUUIDsForClientType:(id)a3;
- (id)appsAndOptionsForClientUUID:(id)a3;
- (id)clientRestrictionsForClientUUID:(id)a3;
- (id)description;
- (id)effectiveBlockedAppBundleIDsExcludingRemovedSystemApps:(BOOL)a3;
- (id)effectiveIntersectedValuesForSetting:(id)a3;
- (id)effectiveParametersForBoolSetting:(id)a3;
- (id)effectiveParametersForBoolSetting:(id)a3 configurationUUID:(id)a4;
- (id)effectiveParametersForIntersectedSetting:(id)a3;
- (id)effectiveParametersForUnionSetting:(id)a3;
- (id)effectiveParametersForValueSetting:(id)a3;
- (id)effectiveUnionValuesForSetting:(id)a3;
- (id)effectiveValueForSetting:(id)a3;
- (id)effectiveWhitelistedAppBundleIDs;
- (id)effectiveWhitelistedAppsAndOptions;
- (id)exchangeUUIDsRestrictingSettings:(id)a3;
- (id)intersectedValuesForFeature:(id)a3;
- (id)intersectedValuesSettingForFeature:(id)a3;
- (id)memberQueueAppsAndOptionsForClientUUID:(id)a3;
- (id)memberQueueClientRestrictionsDictionaryForClientUUID:(id)a3;
- (id)memberQueueClientRestrictionsForClientUUID:(id)a3;
- (id)memberQueueClientTypeForClientUUID:(id)a3;
- (id)memberQueueUserInfoForClientUUID:(id)a3;
- (id)objectForFeature:(id)a3;
- (id)parentalControlsBlockedAppBundleIDs;
- (id)parentalControlsWhitelistedAppBundleIDs;
- (id)potentialRestrictionsAfterApplyingRestrictionsDictionary:(id)a3 outChangeDetected:(BOOL *)a4 outError:(id *)a5;
- (id)profileIdentifiersRestrictingSettings:(id)a3;
- (id)restrictedAppBundleIDsExcludingRemovedSystemApps:(BOOL)a3;
- (id)restrictionEnforcedBlockedAppBundleIDsExcludingRemovedSystemApps:(BOOL)a3;
- (id)restrictionEnforcedWhitelistedAppBundleIDs;
- (id)singleAppModeBundleID;
- (id)systemClientRestrictions;
- (id)unionValuesForFeature:(id)a3;
- (id)unionValuesSettingForFeature:(id)a3;
- (id)userClientRestrictions;
- (id)userInfoForClientUUID:(id)a3;
- (id)valueForFeature:(id)a3;
- (id)valueSettingForFeature:(id)a3;
- (int)BOOLSettingForFeature:(id)a3;
- (int)appWhitelistState;
- (int)effectiveRestrictedBoolForSetting:(id)a3 configurationUUID:(id)a4;
- (int)restrictedBoolForFeature:(id)a3;
- (void)clearEffectiveWhitelistedAppsAndOptionsCache;
- (void)invalidateRestrictions;
- (void)invalidateSettings;
@end

@implementation MCRestrictionManager

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    +[MCRestrictionManager sharedManager];
  }

  v3 = sharedManager_obj;

  return v3;
}

- (NSMutableDictionary)memberQueueEffectiveUserSettings
{
  memberQueueEffectiveUserSettings = self->_memberQueueEffectiveUserSettings;
  if (!memberQueueEffectiveUserSettings)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = MCEffectiveUserSettingsFilePath();
    v6 = [v4 isReadableFileAtPath:v5];

    if (v6)
    {
      v7 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Reading from private effective user settings.", buf, 2u);
      }

      v8 = MEMORY[0x1E695DEF0];
      v9 = MCEffectiveUserSettingsFilePath();
      v10 = [v8 MCDataFromFile:v9];

      if (v10)
      {
        goto LABEL_9;
      }
    }

    v11 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_INFO, "Reading from public effective user settings.", v21, 2u);
    }

    v12 = MEMORY[0x1E695DEF0];
    v13 = MCPublicEffectiveUserSettingsFilePath();
    v10 = [v12 MCDataFromFile:v13];

    if (v10)
    {
LABEL_9:
      v14 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v10 options:1 format:0 error:0];
      v15 = self->_memberQueueEffectiveUserSettings;
      self->_memberQueueEffectiveUserSettings = v14;
    }

    if (!self->_memberQueueEffectiveUserSettings)
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_DEFAULT, "Could not find effective user settings. Creating new dictionary.", v20, 2u);
      }

      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = self->_memberQueueEffectiveUserSettings;
      self->_memberQueueEffectiveUserSettings = v17;
    }

    memberQueueEffectiveUserSettings = self->_memberQueueEffectiveUserSettings;
  }

  return memberQueueEffectiveUserSettings;
}

- (MCRestrictionManager)init
{
  v7.receiver = self;
  v7.super_class = MCRestrictionManager;
  v2 = [(MCRestrictionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("MCRestrictionManagerWriter member queue", v3);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v4;
  }

  return v2;
}

- (NSDictionary)effectiveUserSettings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MCRestrictionManager_effectiveUserSettings__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __45__MCRestrictionManager_effectiveUserSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueEffectiveUserSettings];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __37__MCRestrictionManager_sharedManager__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Mcrestrictionm.isa);
  if (!v0)
  {
    v0 = MCRestrictionManager;
  }

  sharedManager_obj = objc_alloc_init(v0);

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)currentRestrictions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__MCRestrictionManager_currentRestrictions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__MCRestrictionManager_currentRestrictions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueRestrictions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSMutableDictionary)memberQueueRestrictions
{
  memberQueueRestrictions = self->_memberQueueRestrictions;
  if (!memberQueueRestrictions)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = MEMORY[0x1E695DEF0];
    v6 = MCRestrictionsFilePath();
    v7 = [v5 MCDataFromFile:v6];
    v8 = [v4 MCSafePropertyListWithData:v7 options:1 format:0 error:0];
    v9 = self->_memberQueueRestrictions;
    self->_memberQueueRestrictions = v8;

    memberQueueRestrictions = self->_memberQueueRestrictions;
    if (!memberQueueRestrictions)
    {
      v10 = [(MCRestrictionManager *)self defaultRestrictions];
      v11 = [v10 MCMutableDeepCopy];
      v12 = self->_memberQueueRestrictions;
      self->_memberQueueRestrictions = v11;

      memberQueueRestrictions = self->_memberQueueRestrictions;
    }
  }

  return memberQueueRestrictions;
}

- (void)invalidateRestrictions
{
  v3 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MCRestrictionManager_invalidateRestrictions__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidateSettings
{
  v3 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MCRestrictionManager_invalidateSettings__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __46__MCRestrictionManager_invalidateRestrictions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMemberQueueRestrictions:0];
  [*(a1 + 32) setMemberQueueSystemProfileRestrictions:0];
  [*(a1 + 32) setMemberQueueUserProfileRestrictions:0];
  [*(a1 + 32) setMemberQueueSystemClientRestrictions:0];
  v2 = *(a1 + 32);

  return [v2 setMemberQueueUserClientRestrictions:0];
}

uint64_t __42__MCRestrictionManager_invalidateSettings__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMemberQueueSystemUserSettings:0];
  [*(a1 + 32) setMemberQueueSystemNamespacedUserSettings:0];
  [*(a1 + 32) setMemberQueueUserUserSettings:0];
  [*(a1 + 32) setMemberQueueUserNamespacedUserSettings:0];
  v2 = *(a1 + 32);

  return [v2 setMemberQueueEffectiveUserSettings:0];
}

- (NSMutableDictionary)memberQueueSystemUserSettings
{
  v18 = *MEMORY[0x1E69E9840];
  memberQueueSystemUserSettings = self->_memberQueueSystemUserSettings;
  if (!memberQueueSystemUserSettings)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = MCSystemUserSettingsFilePath();
    v6 = [v4 MCDataFromFile:v5];

    if (v6)
    {
      v15 = 0;
      v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:1 format:0 error:&v15];
      v8 = v15;
      v9 = self->_memberQueueSystemUserSettings;
      self->_memberQueueSystemUserSettings = v7;
    }

    else
    {
      v8 = 0;
    }

    if (!self->_memberQueueSystemUserSettings)
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEFAULT, "Could not find system user settings. Creating new dictionary. serialization error:  %{public}@", buf, 0xCu);
      }

      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = self->_memberQueueSystemUserSettings;
      self->_memberQueueSystemUserSettings = v11;
    }

    memberQueueSystemUserSettings = self->_memberQueueSystemUserSettings;
  }

  v13 = *MEMORY[0x1E69E9840];

  return memberQueueSystemUserSettings;
}

- (NSDictionary)systemUserSettings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__MCRestrictionManager_systemUserSettings__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__MCRestrictionManager_systemUserSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueSystemUserSettings];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)effectiveWhitelistedAppBundleIDs
{
  v2 = [(MCRestrictionManager *)self effectiveIntersectedValuesForSetting:@"appLockBundleIDs"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)explicitlyRestrictedAppsBySetting
{
  if (explicitlyRestrictedAppsBySetting_onceToken != -1)
  {
    +[MCRestrictionManager(AppWhitelist) explicitlyRestrictedAppsBySetting];
  }

  v3 = explicitlyRestrictedAppsBySetting_apps;

  return v3;
}

void __71__MCRestrictionManager_AppWhitelist__explicitlyRestrictedAppsBySetting__block_invoke()
{
  v31[13] = *MEMORY[0x1E69E9840];
  v30[0] = @"allowCamera";
  v29[0] = @"com.apple.camera";
  v29[1] = @"com.apple.Photo-Booth";
  v29[2] = @"com.apple.Capture";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v31[0] = v16;
  v30[1] = @"allowSafari";
  v28 = @"com.apple.mobilesafari";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v31[1] = v15;
  v30[2] = @"allowiTunes";
  v27 = @"com.apple.MobileStore";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v31[2] = v14;
  v30[3] = @"allowAppInstallation";
  v26 = @"com.apple.AppStore";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v31[3] = v13;
  v30[4] = @"allowUIAppInstallation";
  v25 = @"com.apple.AppStore";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v31[4] = v0;
  v30[5] = @"allowVideoConferencing";
  v24 = @"com.apple.facetime";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v31[5] = v1;
  v30[6] = @"allowGameCenter";
  v23 = @"com.apple.gamecenter";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v31[6] = v2;
  v30[7] = @"allowPodcasts";
  v22 = @"com.apple.podcasts";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v31[7] = v3;
  v30[8] = @"allowHome";
  v21 = @"allowHome";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v31[8] = v4;
  v30[9] = @"allowPairedWatch";
  v20 = @"com.apple.Bridge";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v31[9] = v5;
  v30[10] = @"allowChat";
  HasSMSCapability = MCGestaltHasSMSCapability();
  if (HasSMSCapability)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v19 = @"com.apple.MobileSMS";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  }

  v31[10] = v7;
  v30[11] = @"allowNews";
  v18 = @"com.apple.news";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v31[11] = v8;
  v30[12] = @"allowCloudDocumentSync";
  v17 = @"com.apple.iCloudDriveApp";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v31[12] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:13];
  v11 = explicitlyRestrictedAppsBySetting_apps;
  explicitlyRestrictedAppsBySetting_apps = v10;

  if ((HasSMSCapability & 1) == 0)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)mayChangePasscode
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowPasscodeModification"] != 2;

  return v3;
}

+ (id)explicitlyRestrictedEphemeralMultiUserApps
{
  if (explicitlyRestrictedEphemeralMultiUserApps_onceToken != -1)
  {
    +[MCRestrictionManager(AppWhitelist) explicitlyRestrictedEphemeralMultiUserApps];
  }

  v3 = explicitlyRestrictedEphemeralMultiUserApps_apps;

  return v3;
}

void __80__MCRestrictionManager_AppWhitelist__explicitlyRestrictedEphemeralMultiUserApps__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.findmy";
  v3[1] = @"com.apple.Home";
  v3[2] = @"com.apple.Fitness";
  v3[3] = @"com.apple.Health";
  v3[4] = @"com.apple.games";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = explicitlyRestrictedEphemeralMultiUserApps_apps;
  explicitlyRestrictedEphemeralMultiUserApps_apps = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)restrictedAppBundleIDsExcludingRemovedSystemApps:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = [(MCRestrictionManager *)self effectiveUnionValuesForSetting:@"blockedAppBundleIDs"];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
  }

  if (!a3)
  {
    v7 = [(MCRestrictionManager *)self effectiveUnionValuesForSetting:@"removedSystemAppBundleIDs"];
    if (v7)
    {
      [v5 addObjectsFromArray:v7];
    }
  }

  v8 = +[MCRestrictionManager explicitlyRestrictedAppsBySetting];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([(MCRestrictionManager *)self effectiveRestrictedBoolForSetting:v13]== 2)
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          [v5 addObjectsFromArray:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([(MCRestrictionManager *)self effectiveRestrictedBoolForSetting:@"allowFindMyDevice"]== 2 && [(MCRestrictionManager *)self effectiveRestrictedBoolForSetting:@"allowFindMyFriends"]== 2)
  {
    [v5 addObject:@"com.apple.findmy"];
  }

  if ([MEMORY[0x1E6999800] isSharediPad])
  {
    v15 = +[MCRestrictionManager explicitlyRestrictedEphemeralMultiUserApps];
    [v5 addObjectsFromArray:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)effectiveBlockedAppBundleIDsExcludingRemovedSystemApps:(BOOL)a3
{
  v5 = [(MCRestrictionManager *)self effectiveUnionValuesForSetting:@"blockedAppBundleIDs"];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if (!a3)
  {
    v9 = [(MCRestrictionManager *)self effectiveUnionValuesForSetting:@"removedSystemAppBundleIDs"];
    if (v9)
    {
      v10 = [v8 arrayByAddingObjectsFromArray:v9];

      v8 = v10;
    }
  }

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v8];

  return v11;
}

- (id)restrictionEnforcedBlockedAppBundleIDsExcludingRemovedSystemApps:(BOOL)a3
{
  v5 = [(MCRestrictionManager *)self unionValuesForFeature:@"blockedAppBundleIDs"];
  if (!a3)
  {
    v6 = [(MCRestrictionManager *)self unionValuesForFeature:@"removedSystemAppBundleIDs"];
    if (v6)
    {
      v7 = [v5 arrayByAddingObjectsFromArray:v6];

      v5 = v7;
    }
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return v8;
}

- (id)parentalControlsBlockedAppBundleIDs
{
  v2 = [(MCRestrictionManager *)self unionValuesSettingForFeature:@"blockedAppBundleIDs"];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];

  return v3;
}

- (id)restrictionEnforcedWhitelistedAppBundleIDs
{
  v2 = [(MCRestrictionManager *)self intersectedValuesForFeature:@"appLockBundleIDs"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)parentalControlsWhitelistedAppBundleIDs
{
  v2 = [(MCRestrictionManager *)self intersectedValuesSettingForFeature:@"appLockBundleIDs"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)effectiveWhitelistedAppsAndOptions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__MCRestrictionManager_AppWhitelist__effectiveWhitelistedAppsAndOptions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __72__MCRestrictionManager_AppWhitelist__effectiveWhitelistedAppsAndOptions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueEffectiveWhitelistedAppsAndOptions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearEffectiveWhitelistedAppsAndOptionsCache
{
  v3 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MCRestrictionManager_AppWhitelist__clearEffectiveWhitelistedAppsAndOptionsCache__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)isInSingleAppMode
{
  v2 = [(MCRestrictionManager *)self effectiveUserSettings];
  v3 = [MCRestrictionManager isInSingleAppModeWithSettingsDictionary:v2];

  return v3;
}

- (id)singleAppModeBundleID
{
  if ([(MCRestrictionManager *)self isInSingleAppMode])
  {
    v3 = [(MCRestrictionManager *)self effectiveWhitelistedAppsAndOptions];
    v4 = [v3 firstObject];

    v5 = [v4 objectForKeyedSubscript:@"Identifier"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSingleAppModeLogoutAllowed
{
  v2 = [(MCRestrictionManager *)self effectiveUserSettings];
  v3 = [MCRestrictionManager isSingleAppModeLogoutAllowedWithSettingsDictionary:v2];

  return v3;
}

- (BOOL)allowedToRunAppWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self restrictedAppBundleIDs];
  if ([v5 containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MCRestrictionManager *)self effectiveWhitelistedAppBundleIDs];
    v8 = v7;
    v6 = !v7 || [v7 containsObject:v4];
  }

  return v6;
}

+ (id)defaultRestrictionFilePath
{
  if (defaultRestrictionFilePath_onceToken != -1)
  {
    +[MCRestrictionManager defaultRestrictionFilePath];
  }

  v3 = defaultRestrictionFilePath_path;

  return v3;
}

void __50__MCRestrictionManager_defaultRestrictionFilePath__block_invoke()
{
  v2 = MCGetBaseResourcePath();
  v0 = [v2 stringByAppendingPathComponent:@"defaultRestrictions.plist"];
  v1 = defaultRestrictionFilePath_path;
  defaultRestrictionFilePath_path = v0;
}

- (NSDictionary)defaultRestrictions
{
  if (defaultRestrictions_onceToken != -1)
  {
    [MCRestrictionManager defaultRestrictions];
  }

  v3 = defaultRestrictions_dict;

  return v3;
}

void __43__MCRestrictionManager_defaultRestrictions__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AE40];
  v1 = MEMORY[0x1E695DEF0];
  v2 = +[MCRestrictionManager defaultRestrictionFilePath];
  v3 = [v1 MCDataFromFile:v2];
  v11 = 0;
  v4 = [v0 MCSafePropertyListWithData:v3 options:0 format:0 error:&v11];
  v5 = v11;
  v6 = defaultRestrictions_dict;
  defaultRestrictions_dict = v4;

  if (!defaultRestrictions_dict)
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Cannot load default restrictions file. Substituting empty dictionary. Error: %{public}@", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v9 = defaultRestrictions_dict;
    defaultRestrictions_dict = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSMutableDictionary)memberQueueSystemProfileRestrictions
{
  memberQueueSystemProfileRestrictions = self->_memberQueueSystemProfileRestrictions;
  if (memberQueueSystemProfileRestrictions)
  {
    v3 = memberQueueSystemProfileRestrictions;
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];
    v6 = MCSystemProfileRestrictionsFilePath();
    v7 = [v5 MCDataFromFile:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v7 options:1 format:0 error:0];
      v9 = self->_memberQueueSystemProfileRestrictions;
      self->_memberQueueSystemProfileRestrictions = v8;
    }

    if (!self->_memberQueueSystemProfileRestrictions || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_memberQueueSystemProfileRestrictions;
      self->_memberQueueSystemProfileRestrictions = v10;
    }

    v3 = self->_memberQueueSystemProfileRestrictions;
  }

  return v3;
}

- (NSMutableDictionary)memberQueueUserProfileRestrictions
{
  memberQueueUserProfileRestrictions = self->_memberQueueUserProfileRestrictions;
  if (memberQueueUserProfileRestrictions)
  {
    v3 = memberQueueUserProfileRestrictions;
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];
    v6 = MCUserProfileRestrictionsFilePath();
    v7 = [v5 MCDataFromFile:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v7 options:1 format:0 error:0];
      v9 = self->_memberQueueUserProfileRestrictions;
      self->_memberQueueUserProfileRestrictions = v8;
    }

    if (!self->_memberQueueUserProfileRestrictions || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_memberQueueUserProfileRestrictions;
      self->_memberQueueUserProfileRestrictions = v10;
    }

    v3 = self->_memberQueueUserProfileRestrictions;
  }

  return v3;
}

- (NSDictionary)systemProfileRestrictions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MCRestrictionManager_systemProfileRestrictions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __49__MCRestrictionManager_systemProfileRestrictions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueSystemProfileRestrictions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)userProfileRestrictions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MCRestrictionManager_userProfileRestrictions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __47__MCRestrictionManager_userProfileRestrictions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueUserProfileRestrictions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSMutableDictionary)memberQueueCombinedSystemProfileRestrictions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(MCRestrictionManager *)self memberQueueSystemProfileRestrictions];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = [(MCRestrictionManager *)self memberQueueSystemProfileRestrictions];
        v12 = [v11 objectForKey:v10];

        v13 = objc_autoreleasePoolPush();
        v3 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v12 toRestrictionsDictionary:v9 outChangeDetected:0 outError:0];

        objc_autoreleasePoolPop(v13);
        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSMutableDictionary)memberQueueCombinedProfileRestrictions
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(MCRestrictionManager *)self memberQueueSystemProfileRestrictions];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * v8);
        v11 = [(MCRestrictionManager *)self memberQueueSystemProfileRestrictions];
        v12 = [v11 objectForKey:v10];

        v13 = objc_autoreleasePoolPush();
        v3 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v12 toRestrictionsDictionary:v9 outChangeDetected:0 outError:0];

        objc_autoreleasePoolPop(v13);
        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(MCRestrictionManager *)self memberQueueUserProfileRestrictions];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      v19 = v3;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v26 + 1) + 8 * v18);
        v21 = [(MCRestrictionManager *)self memberQueueUserProfileRestrictions];
        v22 = [v21 objectForKey:v20];

        v23 = objc_autoreleasePoolPush();
        v3 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v22 toRestrictionsDictionary:v19 outChangeDetected:0 outError:0];

        objc_autoreleasePoolPop(v23);
        ++v18;
        v19 = v3;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)combinedProfileRestrictions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MCRestrictionManager_combinedProfileRestrictions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__MCRestrictionManager_combinedProfileRestrictions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueCombinedProfileRestrictions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MCRestrictionManager;
  v4 = [(MCRestrictionManager *)&v8 description];
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [v3 stringWithFormat:@"%@ %p: Restrictions:%@", v4, self, v5];

  return v6;
}

- (id)potentialRestrictionsAfterApplyingRestrictionsDictionary:(id)a3 outChangeDetected:(BOOL *)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = [(MCRestrictionManager *)self currentRestrictions];
  v10 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v8 toRestrictionsDictionary:v9 outChangeDetected:a4 outError:a5];

  return v10;
}

+ (id)restrictionsAfterApplyingRestrictionsDictionary:(id)a3 toRestrictionsDictionary:(id)a4 outChangeDetected:(BOOL *)a5 outError:(id *)a6
{
  v156 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a4 MCMutableDeepCopy];
  v10 = [v8 objectForKey:@"restrictedBool"];
  v114 = v8;
  v115 = v9;
  if (!v10)
  {
    v37 = 0;
    goto LABEL_35;
  }

  v11 = v10;
  v116 = [v9 objectForKey:@"restrictedBool"];
  if (!v116)
  {
    v116 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setValue:? forKey:?];
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v12 = v11;
  v123 = [v12 countByEnumeratingWithState:&v147 objects:v155 count:16];
  if (!v123)
  {
    v37 = 0;
    v27 = 0;
    v13 = v116;
    goto LABEL_34;
  }

  v111 = a6;
  v125 = 0;
  v121 = *v148;
  v13 = v116;
  while (2)
  {
    for (i = 0; i != v123; ++i)
    {
      if (*v148 != v121)
      {
        objc_enumerationMutation(v12);
      }

      v15 = *(*(&v147 + 1) + 8 * i);
      v16 = [v12 objectForKey:v15];
      v17 = [v13 objectForKey:v15];
      if (v17)
      {
        v18 = [v16 objectForKey:@"preference"];
        v19 = [v17 objectForKey:@"preference"];
        v20 = v19;
        if (v18)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21 || (v22 = [v18 BOOLValue], v22 != objc_msgSend(v20, "BOOLValue")))
        {

          v28 = MEMORY[0x1E696ABC0];
          v36 = MCErrorArray(@"RESTRICTION_ERROR_INCONSISTENT_SENSE_P_KEY", v29, v30, v31, v32, v33, v34, v35, v15);
          v27 = [v28 MCErrorWithDomain:@"MCRestrictionsErrorDomain" code:3000 descriptionArray:v36 errorType:@"MCFatalError"];

          goto LABEL_31;
        }

        v23 = [v16 objectForKey:@"value"];
        if (v23)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v17 objectForKey:@"value"];
            if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v23 isEqualToNumber:v24] & 1) == 0)
            {
              v25 = [v23 BOOLValue];
              if (v22 == v25)
              {
                v26 = [MEMORY[0x1E696AD98] numberWithBool:v25];
                [v17 setValue:v26 forKey:@"value"];

                v125 = 1;
              }
            }

            v13 = v116;
          }
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_27;
        }

        v18 = [v16 mutableCopy];
        [v13 setValue:v18 forKey:v15];
        v125 = 1;
      }

LABEL_27:
    }

    v123 = [v12 countByEnumeratingWithState:&v147 objects:v155 count:16];
    if (v123)
    {
      continue;
    }

    break;
  }

  v27 = 0;
LABEL_31:
  v8 = v114;
  v37 = v125;
  a6 = v111;
LABEL_34:

  v9 = v115;
  if (v27)
  {
    goto LABEL_68;
  }

LABEL_35:
  v38 = [v8 objectForKey:@"restrictedValue"];
  if (!v38)
  {
    goto LABEL_70;
  }

  v39 = v38;
  v40 = [v9 objectForKey:@"restrictedValue"];
  if (!v40)
  {
    v40 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setValue:v40 forKey:@"restrictedValue"];
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v41 = v39;
  v124 = [v41 countByEnumeratingWithState:&v143 objects:v154 count:16];
  if (!v124)
  {
    v27 = 0;
    goto LABEL_67;
  }

  v112 = a6;
  v126 = v37;
  v122 = *v144;
  while (2)
  {
    v42 = 0;
    while (2)
    {
      if (*v144 != v122)
      {
        objc_enumerationMutation(v41);
      }

      v43 = *(*(&v143 + 1) + 8 * v42);
      v44 = [v41 objectForKey:v43];
      v45 = [v40 objectForKey:v43];
      if (v45)
      {
        v46 = [v44 objectForKey:@"preferSmallerValues"];
        v47 = [v45 objectForKey:@"preferSmallerValues"];
        v48 = v47;
        if (v46)
        {
          v49 = v47 == 0;
        }

        else
        {
          v49 = 1;
        }

        if (v49 || (v50 = [v46 BOOLValue], v50 != objc_msgSend(v48, "BOOLValue")))
        {

          v56 = MEMORY[0x1E696ABC0];
          v64 = MCErrorArray(@"RESTRICTION_ERROR_INCONSISTENT_SENSE_P_KEY", v57, v58, v59, v60, v61, v62, v63, v43);
          v27 = [v56 MCErrorWithDomain:@"MCRestrictionsErrorDomain" code:3001 descriptionArray:v64 errorType:@"MCFatalError"];

          goto LABEL_65;
        }

        v51 = [v44 objectForKey:@"value"];
        v52 = [v45 objectForKey:@"value"];
        if (v51)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v52)
            {
              goto LABEL_56;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_56;
            }

            v53 = [v51 compare:v52];
            v54 = -1;
            if (!v50)
            {
              v54 = 1;
            }

            if (v53 == v54)
            {
LABEL_56:
              v55 = [v51 copy];
              [v45 setValue:v55 forKey:@"value"];

              v126 = 1;
            }
          }
        }

LABEL_60:
      }

      else if (v44)
      {
        v46 = [v44 mutableCopy];
        [v40 setValue:v46 forKey:v43];
        v126 = 1;
        goto LABEL_60;
      }

      if (v124 != ++v42)
      {
        continue;
      }

      break;
    }

    v124 = [v41 countByEnumeratingWithState:&v143 objects:v154 count:16];
    if (v124)
    {
      continue;
    }

    break;
  }

  v27 = 0;
LABEL_65:
  v8 = v114;
  v37 = v126;
  a6 = v112;
LABEL_67:

  v9 = v115;
  if (v27)
  {
LABEL_68:
    if (a6)
    {
      v65 = v27;
      v66 = 0;
      *a6 = v27;
    }

    else
    {
      v66 = 0;
    }

    goto LABEL_142;
  }

LABEL_70:
  v67 = [v8 objectForKey:@"intersection"];
  if (v67)
  {
    v68 = v67;
    v127 = v37;
    v69 = [v9 objectForKey:@"intersection"];
    if (!v69)
    {
      v69 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v69 forKey:@"intersection"];
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v70 = v68;
    v71 = [v70 countByEnumeratingWithState:&v139 objects:v153 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v140;
      v117 = *v140;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v140 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v139 + 1) + 8 * j);
          v76 = [v70 objectForKey:v75];
          v77 = [v69 objectForKey:v75];
          if (v77)
          {
            if (!v76)
            {
              goto LABEL_93;
            }

            v78 = [v76 objectForKey:@"values"];
            v79 = [v77 objectForKey:@"values"];
            if (v78)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v79 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v80 = [MEMORY[0x1E695DFD8] setWithArray:v78];
                  v81 = [MEMORY[0x1E695DFA8] setWithArray:v79];
                  v119 = [v81 copy];
                  [v81 intersectSet:v80];
                  if (([v81 isEqualToSet:v119] & 1) == 0)
                  {
                    v128 = [v81 allObjects];
                    [v77 setObject:v128 forKey:@"values"];

                    v127 = 1;
                  }

                  v73 = v117;
                }

                else
                {
                  v80 = [v78 mutableCopy];
                  [v77 setObject:v80 forKey:@"values"];
                  v127 = 1;
                }
              }
            }
          }

          else
          {
            if (!v76)
            {
              goto LABEL_93;
            }

            v78 = [v76 mutableCopy];
            [v69 setValue:v78 forKey:v75];
            v127 = 1;
          }

LABEL_93:
        }

        v72 = [v70 countByEnumeratingWithState:&v139 objects:v153 count:16];
      }

      while (v72);
    }

    v8 = v114;
    v9 = v115;
    v37 = v127;
  }

  v82 = [v8 objectForKey:@"union"];
  if (v82)
  {
    v83 = v82;
    v129 = v37;
    v84 = [v9 objectForKey:@"union"];
    if (!v84)
    {
      v84 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v84 forKey:@"union"];
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v85 = v83;
    v86 = [v85 countByEnumeratingWithState:&v135 objects:v152 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v136;
      v118 = *v136;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v136 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v135 + 1) + 8 * k);
          v91 = [v85 objectForKey:v90];
          v92 = [v84 objectForKey:v90];
          if (v92)
          {
            if (!v91)
            {
              goto LABEL_119;
            }

            v93 = [v91 objectForKey:@"values"];
            v94 = [v92 objectForKey:@"values"];
            if (v93)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v94 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v95 = [MEMORY[0x1E695DFD8] setWithArray:v93];
                  v96 = [MEMORY[0x1E695DFA8] setWithArray:v94];
                  v120 = [v96 copy];
                  [v96 unionSet:v95];
                  if (([v96 isEqual:v120] & 1) == 0)
                  {
                    v130 = [v96 allObjects];
                    [v92 setObject:v130 forKey:@"values"];

                    v129 = 1;
                  }

                  v88 = v118;
                }

                else
                {
                  v95 = [v93 mutableCopy];
                  [v92 setObject:v95 forKey:@"values"];
                  v129 = 1;
                }
              }
            }
          }

          else
          {
            if (!v91)
            {
              goto LABEL_119;
            }

            v93 = [v91 mutableCopy];
            [v84 setValue:v93 forKey:v90];
            v129 = 1;
          }

LABEL_119:
        }

        v87 = [v85 countByEnumeratingWithState:&v135 objects:v152 count:16];
      }

      while (v87);
    }

    v8 = v114;
    v9 = v115;
    v37 = v129;
  }

  v97 = [v8 objectForKey:@"assignedObject"];
  if (v97)
  {
    v98 = v97;
    v99 = [v9 objectForKey:@"assignedObject"];
    if (!v99)
    {
      v99 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setValue:v99 forKey:@"assignedObject"];
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v100 = v98;
    v101 = [v100 countByEnumeratingWithState:&v131 objects:v151 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v132;
      do
      {
        for (m = 0; m != v102; ++m)
        {
          if (*v132 != v103)
          {
            objc_enumerationMutation(v100);
          }

          v105 = *(*(&v131 + 1) + 8 * m);
          v106 = [v100 objectForKey:v105];
          v107 = [v99 objectForKey:v105];
          if (!v107)
          {
            goto LABEL_134;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v99 removeObjectForKey:v105];
            goto LABEL_135;
          }

          if (([v107 isEqual:v106] & 1) == 0)
          {
LABEL_134:
            v108 = [v106 copy];
            [v99 setValue:v108 forKey:v105];

            v37 = 1;
          }

LABEL_135:
        }

        v102 = [v100 countByEnumeratingWithState:&v131 objects:v151 count:16];
      }

      while (v102);
    }

    v8 = v114;
    v9 = v115;
  }

  if (a5)
  {
    *a5 = v37 & 1;
  }

  v66 = v9;
  v27 = 0;
LABEL_142:

  v109 = *MEMORY[0x1E69E9840];

  return v66;
}

+ (id)restrictionsWithCurrentRestrictions:(id)a3 defaultRestrictions:(id)a4 systemProfileRestrictions:(id)a5 userProfileRestrictions:(id)a6 systemClientRestrictions:(id)a7 userClientRestrictions:(id)a8 outRestrictionsChanged:(BOOL *)a9 outError:(id *)a10
{
  v15 = a9;
  v103 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v67 = a5;
  v66 = a6;
  v16 = a7;
  v68 = a8;
  v17 = [a4 MCMutableDeepCopy];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v94;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v94 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:*(*(&v93 + 1) + 8 * i)];
        v24 = [v23 objectForKeyedSubscript:@"overrideRestrictions"];
        if ([v24 BOOLValue])
        {
          v25 = v18;
          goto LABEL_51;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v25 = v68;
  v26 = [v25 countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v90;
LABEL_11:
    v29 = 0;
    while (1)
    {
      if (*v90 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v23 = [v25 objectForKeyedSubscript:*(*(&v89 + 1) + 8 * v29)];
      v24 = [v23 objectForKeyedSubscript:@"overrideRestrictions"];
      if ([v24 BOOLValue])
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v89 objects:v101 count:16];
        if (v27)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_51:
    v58 = [v23 objectForKeyedSubscript:@"clientRestrictions"];

    v30 = v25;
    v17 = v58;
    v57 = v65;
    goto LABEL_52;
  }

LABEL_17:
  v63 = a9;

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v30 = v67;
  v31 = [v30 countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v86;
LABEL_19:
    v34 = 0;
    v35 = v17;
    while (1)
    {
      if (*v86 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v36 = [v30 objectForKeyedSubscript:{*(*(&v85 + 1) + 8 * v34), v63}];
      v84 = 0;
      v17 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v36 toRestrictionsDictionary:v35 outChangeDetected:0 outError:&v84];
      v37 = v84;

      if (v37)
      {
        goto LABEL_58;
      }

      ++v34;
      v35 = v17;
      if (v32 == v34)
      {
        v32 = [v30 countByEnumeratingWithState:&v85 objects:v100 count:16];
        if (v32)
        {
          goto LABEL_19;
        }

        break;
      }
    }
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v30 = v18;
  v38 = [v30 countByEnumeratingWithState:&v80 objects:v99 count:16];
  if (v38)
  {
    v39 = v38;
    v64 = *v81;
LABEL_27:
    v40 = 0;
    v41 = v17;
    while (1)
    {
      if (*v81 != v64)
      {
        objc_enumerationMutation(v30);
      }

      v42 = [v30 objectForKeyedSubscript:{*(*(&v80 + 1) + 8 * v40), v63}];
      v43 = [v42 objectForKeyedSubscript:@"clientRestrictions"];

      v79 = 0;
      v17 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v43 toRestrictionsDictionary:v41 outChangeDetected:0 outError:&v79];
      v37 = v79;

      if (v37)
      {
        goto LABEL_58;
      }

      ++v40;
      v41 = v17;
      if (v39 == v40)
      {
        v39 = [v30 countByEnumeratingWithState:&v80 objects:v99 count:16];
        if (v39)
        {
          goto LABEL_27;
        }

        break;
      }
    }
  }

  v78 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v30 = v66;
  v44 = [v30 countByEnumeratingWithState:&v75 objects:v98 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v76;
LABEL_35:
    v47 = 0;
    v48 = v17;
    while (1)
    {
      if (*v76 != v46)
      {
        objc_enumerationMutation(v30);
      }

      v49 = [v30 objectForKeyedSubscript:{*(*(&v75 + 1) + 8 * v47), v63}];
      v74 = 0;
      v17 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v49 toRestrictionsDictionary:v48 outChangeDetected:0 outError:&v74];
      v37 = v74;

      if (v37)
      {
        goto LABEL_58;
      }

      ++v47;
      v48 = v17;
      if (v45 == v47)
      {
        v45 = [v30 countByEnumeratingWithState:&v75 objects:v98 count:16];
        if (v45)
        {
          goto LABEL_35;
        }

        break;
      }
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v30 = v25;
  v50 = [v30 countByEnumeratingWithState:&v70 objects:v97 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v71;
LABEL_43:
    v53 = 0;
    v54 = v17;
    while (1)
    {
      if (*v71 != v52)
      {
        objc_enumerationMutation(v30);
      }

      v55 = [v30 objectForKeyedSubscript:{*(*(&v70 + 1) + 8 * v53), v63}];
      v56 = [v55 objectForKeyedSubscript:@"clientRestrictions"];

      v69 = 0;
      v17 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v56 toRestrictionsDictionary:v54 outChangeDetected:0 outError:&v69];
      v37 = v69;

      if (v37)
      {
        break;
      }

      ++v53;
      v54 = v17;
      if (v51 == v53)
      {
        v51 = [v30 countByEnumeratingWithState:&v70 objects:v97 count:16];
        if (v51)
        {
          goto LABEL_43;
        }

        goto LABEL_49;
      }
    }

LABEL_58:

    v57 = v65;
    if (a10)
    {
      v62 = v37;
      v59 = 0;
      *a10 = v37;
    }

    else
    {
      v59 = 0;
    }

    goto LABEL_55;
  }

LABEL_49:
  v57 = v65;
  v15 = v63;
LABEL_52:

  if (v15)
  {
    *v15 = MCEqualDictionaries(v17, v57) ^ 1;
  }

  v17 = v17;
  v37 = 0;
  v59 = v17;
LABEL_55:

  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

+ (id)filterRestrictionDictionaryForPublicUse:(id)a3
{
  v4 = filterRestrictionDictionaryForPublicUse__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[MCRestrictionManager filterRestrictionDictionaryForPublicUse:];
  }

  v6 = [a1 filterRestrictionDictionary:v5 acceptedKeysDict:filterRestrictionDictionaryForPublicUse__keysDict];

  return v6;
}

void __64__MCRestrictionManager_filterRestrictionDictionaryForPublicUse___block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"publicRestrictionKeys.plist"];
  v2 = [v0 MCDictionaryFromFile:v1];
  v3 = filterRestrictionDictionaryForPublicUse__keysDict;
  filterRestrictionDictionaryForPublicUse__keysDict = v2;
}

+ (id)filterRestrictionDictionary:(id)a3 acceptedKeysDict:(id)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v57 = [MEMORY[0x1E695DF90] dictionary];
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v6 objectForKeyedSubscript:@"restrictedBool"];
  v66 = [v7 setWithArray:v8];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v6 objectForKeyedSubscript:@"restrictedValue"];
  v65 = [v9 setWithArray:v10];

  v11 = MEMORY[0x1E695DFD8];
  v12 = [v6 objectForKeyedSubscript:?];
  v64 = [v11 setWithArray:v12];

  v13 = MEMORY[0x1E695DFD8];
  v56 = v6;
  v14 = [v6 objectForKeyedSubscript:?];
  v63 = [v13 setWithArray:v14];

  v58 = v5;
  v15 = [v5 objectForKeyedSubscript:@"restrictedBool"];
  v62 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v81;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v81 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v80 + 1) + 8 * i);
        if ([v66 containsObject:v20])
        {
          v21 = [obj objectForKeyedSubscript:v20];
          v22 = [v21 objectForKeyedSubscript:@"value"];

          if (v22)
          {
            v93 = @"value";
            v94 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            [v62 setObject:v23 forKeyedSubscript:v20];
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v80 objects:v95 count:16];
    }

    while (v17);
  }

  if ([v62 count])
  {
    [v57 setObject:v62 forKeyedSubscript:@"restrictedBool"];
  }

  v24 = [v58 objectForKeyedSubscript:@"restrictedValue"];
  v61 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v24, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v77;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v77 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v76 + 1) + 8 * j);
        if ([v65 containsObject:v30])
        {
          v31 = [v25 objectForKeyedSubscript:v30];
          v32 = [v31 objectForKeyedSubscript:@"value"];

          if (v32)
          {
            v90 = @"value";
            v91 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            [v61 setObject:v33 forKeyedSubscript:v30];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v27);
  }

  if ([v61 count])
  {
    [v57 setObject:v61 forKeyedSubscript:@"restrictedValue"];
  }

  v34 = [v58 objectForKeyedSubscript:@"intersection"];
  v60 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v34, "count")}];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v35 = v34;
  v36 = [v35 countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v73;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v72 + 1) + 8 * k);
        if ([v64 containsObject:v40])
        {
          v41 = [v35 objectForKeyedSubscript:v40];
          v42 = [v41 objectForKeyedSubscript:@"values"];

          if (v42)
          {
            v87 = @"values";
            v88 = v42;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            [v60 setObject:v43 forKeyedSubscript:v40];
          }
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v37);
  }

  if ([v60 count])
  {
    [v57 setObject:v60 forKeyedSubscript:@"intersection"];
  }

  v44 = [v58 objectForKeyedSubscript:@"union"];
  v59 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v44, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v45 = v44;
  v46 = [v45 countByEnumeratingWithState:&v68 objects:v86 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v69;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v68 + 1) + 8 * m);
        if ([v63 containsObject:v50])
        {
          v51 = [v45 objectForKeyedSubscript:v50];
          v52 = [v51 objectForKeyedSubscript:@"values"];

          if (v52)
          {
            v84 = @"values";
            v85 = v52;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
            [v59 setObject:v53 forKeyedSubscript:v50];
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v68 objects:v86 count:16];
    }

    while (v47);
  }

  if ([v59 count])
  {
    [v57 setObject:v59 forKeyedSubscript:@"union"];
  }

  v54 = *MEMORY[0x1E69E9840];

  return v57;
}

+ (id)filterRestrictionDictionary:(id)a3 toIncludeOnlyRestrictionsThatDifferFromRestrictions:(id)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v69 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v71 = v5;
  v7 = [v5 objectForKeyedSubscript:@"restrictedBool"];
  v70 = v6;
  v84 = [v6 objectForKeyedSubscript:@"restrictedBool"];
  v72 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v8 = v7;
  v88 = [v8 countByEnumeratingWithState:&v104 objects:v111 count:16];
  if (v88)
  {
    v80 = *v105;
    v73 = v8;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v105 != v80)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v104 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v8 objectForKeyedSubscript:v10];
        v13 = [v84 objectForKeyedSubscript:v10];
        v14 = [v12 objectForKeyedSubscript:@"value"];
        if (v14)
        {
          v15 = v14;
          v16 = [v12 objectForKeyedSubscript:@"value"];
          v17 = [v16 BOOLValue];
          v18 = [v13 objectForKeyedSubscript:@"preference"];
          v19 = v11;
          v20 = [v18 BOOLValue];

          v21 = v17 == v20;
          v11 = v19;
          v8 = v73;
          if (v21)
          {
            [v72 setObject:v12 forKeyedSubscript:v10];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v88 = [v8 countByEnumeratingWithState:&v104 objects:v111 count:16];
    }

    while (v88);
  }

  if ([v72 count])
  {
    [v69 setObject:v72 forKeyedSubscript:@"restrictedBool"];
  }

  v22 = [v71 objectForKeyedSubscript:@"restrictedValue"];
  v81 = [v70 objectForKeyedSubscript:@"restrictedValue"];
  v74 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v22, "count")}];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v23 = v22;
  v85 = [v23 countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v85)
  {
    v77 = *v101;
    v24 = @"value";
    do
    {
      for (j = 0; j != v85; ++j)
      {
        if (*v101 != v77)
        {
          objc_enumerationMutation(v23);
        }

        v26 = *(*(&v100 + 1) + 8 * j);
        v27 = objc_autoreleasePoolPush();
        v28 = [v23 objectForKeyedSubscript:v26];
        v29 = [v81 objectForKeyedSubscript:v26];
        v30 = [v28 objectForKeyedSubscript:v24];
        if (v30)
        {
          v31 = v30;
          v32 = [v28 objectForKeyedSubscript:v24];
          [v29 objectForKeyedSubscript:@"default"];
          v33 = v27;
          v34 = v24;
          v36 = v35 = v23;
          v89 = [v32 isEqual:v36];

          v23 = v35;
          v24 = v34;
          v27 = v33;

          if ((v89 & 1) == 0)
          {
            [v74 setObject:v28 forKeyedSubscript:v26];
          }
        }

        objc_autoreleasePoolPop(v27);
      }

      v85 = [v23 countByEnumeratingWithState:&v100 objects:v110 count:16];
    }

    while (v85);
  }

  if ([v74 count])
  {
    [v69 setObject:v74 forKeyedSubscript:@"restrictedValue"];
  }

  v37 = [v71 objectForKeyedSubscript:@"intersection"];
  v82 = [v70 objectForKeyedSubscript:@"intersection"];
  v75 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v37, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v38 = v37;
  v86 = [v38 countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v86)
  {
    v78 = *v97;
    v39 = @"values";
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v97 != v78)
        {
          objc_enumerationMutation(v38);
        }

        v41 = *(*(&v96 + 1) + 8 * k);
        v42 = objc_autoreleasePoolPush();
        v43 = [v38 objectForKeyedSubscript:v41];
        v44 = [v82 objectForKeyedSubscript:v41];
        v45 = [v43 objectForKeyedSubscript:v39];
        if (v45)
        {
          v46 = v45;
          v47 = [v43 objectForKeyedSubscript:v39];
          [v44 objectForKeyedSubscript:@"default"];
          v48 = v42;
          v49 = v39;
          v51 = v50 = v38;
          v90 = [v47 isEqual:v51];

          v38 = v50;
          v39 = v49;
          v42 = v48;

          if ((v90 & 1) == 0)
          {
            [v75 setObject:v43 forKeyedSubscript:v41];
          }
        }

        objc_autoreleasePoolPop(v42);
      }

      v86 = [v38 countByEnumeratingWithState:&v96 objects:v109 count:16];
    }

    while (v86);
  }

  if ([v75 count])
  {
    [v69 setObject:v75 forKeyedSubscript:@"intersection"];
  }

  v52 = [v71 objectForKeyedSubscript:@"union"];
  v83 = [v70 objectForKeyedSubscript:@"union"];
  v76 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v52, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v53 = v52;
  v87 = [v53 countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (v87)
  {
    v79 = *v93;
    v54 = @"values";
    do
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v93 != v79)
        {
          objc_enumerationMutation(v53);
        }

        v56 = *(*(&v92 + 1) + 8 * m);
        v57 = objc_autoreleasePoolPush();
        v58 = [v53 objectForKeyedSubscript:v56];
        v59 = [v83 objectForKeyedSubscript:v56];
        v60 = [v58 objectForKeyedSubscript:v54];
        if (v60)
        {
          v61 = v60;
          v62 = [v58 objectForKeyedSubscript:v54];
          [v59 objectForKeyedSubscript:@"default"];
          v63 = v57;
          v64 = v54;
          v66 = v65 = v53;
          v91 = [v62 isEqual:v66];

          v53 = v65;
          v54 = v64;
          v57 = v63;

          if ((v91 & 1) == 0)
          {
            [v76 setObject:v58 forKeyedSubscript:v56];
          }
        }

        objc_autoreleasePoolPop(v57);
      }

      v87 = [v53 countByEnumeratingWithState:&v92 objects:v108 count:16];
    }

    while (v87);
  }

  if ([v76 count])
  {
    [v69 setObject:v76 forKeyedSubscript:@"union"];
  }

  v67 = *MEMORY[0x1E69E9840];

  return v69;
}

+ (id)filterUserSettingsForPublicUse:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 MCDeleteBoolRestriction:@"allowSafari"];
  [v3 MCDeleteBoolRestriction:@"allowiTunes"];
  [v3 MCDeleteBoolRestriction:@"allowAppInstallation"];
  [v3 MCDeleteBoolRestriction:@"allowUIAppInstallation"];
  [v3 MCDeleteBoolRestriction:@"allowVideoConferencing"];
  [v3 MCDeleteBoolRestriction:@"allowGameCenter"];
  [v3 MCDeleteBoolRestriction:@"allowPodcasts"];
  [v3 MCDeleteBoolRestriction:@"allowHome"];
  [v3 MCDeleteBoolRestriction:@"allowPairedWatch"];
  [v3 MCDeleteBoolRestriction:@"allowChat"];
  [v3 MCDeleteBoolRestriction:@"allowNews"];
  [v3 MCDeleteBoolRestriction:@"allowCloudDocumentSync"];
  [v3 MCSetUnionSetting:@"blacklistedAppBundleIDs" values:0];
  [v3 MCSetUnionSetting:@"blockedAppBundleIDs" values:0];
  [v3 MCSetUnionSetting:@"removedSystemAppBundleIDs" values:0];
  [v3 MCSetUnionSetting:@"trustedCodeSigningIdentities" values:0];
  [v3 MCSetUnionSetting:@"deniedICCIDsForRCS" values:0];
  [v3 MCSetUnionSetting:@"deniedICCIDsForiMessageFaceTime" values:0];
  [v3 MCSetUnionSetting:@"ratingAppsExemptedBundleIDs" values:0];
  [v3 MCSetIntersectionSetting:@"appLockBundleIDs" values:0];
  [v3 MCSetIntersectionSetting:@"allowedExternalIntelligenceAccountDomains" values:0];
  [v3 MCSetIntersectionSetting:@"allowedExternalIntelligenceWorkspaceIDs" values:0];
  v4 = [v3 copy];

  return v4;
}

+ (id)restrictionKeys
{
  if (restrictionKeys_onceToken != -1)
  {
    +[MCRestrictionManager restrictionKeys];
  }

  v3 = restrictionKeys_restrictionKeys;

  return v3;
}

void __39__MCRestrictionManager_restrictionKeys__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"restrictedBool";
  v3[1] = @"restrictedValue";
  v3[2] = @"intersection";
  v3[3] = @"union";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = restrictionKeys_restrictionKeys;
  restrictionKeys_restrictionKeys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)systemMetadataValueForKey:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DEF0];
  v5 = MCSystemMetadataFilePath();
  v6 = [v4 MCDataFromFile:v5];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:0 format:0 error:0];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_5:
      v7 = 0;
    }
  }

  v8 = [v7 objectForKeyedSubscript:v3];

  return v8;
}

+ (id)filterGrandfatheredRestrictionsIfNeededFromRestrictions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 systemMetadataValueForKey:@"StopFilteringGrandfatheredRestrictions"];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    v7 = +[MCRestrictionManager allowedGrandfatheredRestrictionPayloadKeysDictionary];
    v8 = +[MCRestrictionManager grandfatheredRestrictionPayloadKeysDictionary];
    v9 = [v7 count];
    v10 = _MCLogObjects;
    v11 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEFAULT, "Honor only allowed grandfathered restrictions", &v18, 2u);
      }

      v12 = [MCRestrictionManager filterRestrictionPayloadKeysDictionary:v8 removingPayloadKeysInRestrictionPayloadKeysDictionary:v7];
    }

    else
    {
      if (v11)
      {
        v13 = v10;
        v18 = 138412546;
        v19 = @"NO";
        v20 = 2048;
        v21 = [v7 count];
        _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_DEFAULT, "Don't honor deprecated unsupervised restrictions, stopFilteringGrandfatheredRestrictions: %@, allowedGrandfatheredRestrictionPayloadKeys count: %lu", &v18, 0x16u);
      }

      v12 = v8;
    }

    v14 = v12;
    if (v12)
    {
      v15 = [MCRestrictionManager filterRestrictionDictionary:v4 removingPayloadKeysInRestrictionPayloadKeysDictionary:v12];

      goto LABEL_13;
    }
  }

  v15 = v4;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)allowedGrandfatheredRestrictionPayloadKeysDictionary
{
  v2 = [a1 systemMetadataValueForKey:@"AllowedGrandfatheredRestrictions"];
  if (![v2 count])
  {
    v3 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEFAULT, "No flagged grandfathered restrictions set on the device.", v5, 2u);
    }
  }

  return v2;
}

+ (id)effectiveGrandfatheredRestrictionPayloadKeysDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a1 restrictionKeys];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = +[MCRestrictionManager grandfatheredRestrictionPayloadKeysDictionary];
        v11 = [a1 _lockedDownRestrictionPayloadKeysWithPayloadKeysDictionary:v10 forRestrictionKey:v9];
        [v3 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v12 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v3 description];
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_DEFAULT, "Locked down deprecated unsupervised restrictions: %@\n", buf, 0xCu);
    }

    v15 = [v3 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_lockedDownRestrictionPayloadKeysWithPayloadKeysDictionary:(id)a3 forRestrictionKey:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v22 = v6;
  v9 = [v6 objectForKeyedSubscript:v7];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [a1 sharedManager];
        v16 = [v15 isSettingLockedDownByRestrictions:v14];

        if (v16)
        {
          v17 = [a1 _payloadKeysDictionaryAfterAddingFeature:v14 toRestrictionPayloadKeysDictionary:v8 forRestrictionKey:v7];

          v8 = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v18 = [v8 objectForKeyedSubscript:v7];
    v19 = [v18 copy];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_payloadKeysDictionaryAfterAddingFeature:(id)a3 toRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if ([v8 count])
  {
    v11 = [v8 mutableCopy];

    v12 = [v11 objectForKeyedSubscript:v9];

    if (v12)
    {
      v13 = [v11 objectForKeyedSubscript:v9];
      v14 = [v13 mutableCopy];
    }

    else
    {
      v14 = objc_opt_new();
    }

    if (([v14 containsObject:v7] & 1) == 0)
    {
      [v14 addObject:v7];
    }

    v17 = [v14 copy];
    [v11 setObject:v17 forKeyedSubscript:v9];

    v16 = [v11 copy];
  }

  else
  {
    v20[0] = v7;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v10 setObject:v15 forKeyedSubscript:v9];

    v16 = [v10 copy];
    v11 = v10;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)grandfatheredRestrictionPayloadKeysDictionary
{
  if (grandfatheredRestrictionPayloadKeysDictionary_onceToken != -1)
  {
    +[MCRestrictionManager grandfatheredRestrictionPayloadKeysDictionary];
  }

  v3 = grandfatheredRestrictionPayloadKeysDictionary_grandfatheredRestrictionPayloadKeysDictionary;

  return v3;
}

void __69__MCRestrictionManager_grandfatheredRestrictionPayloadKeysDictionary__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v5 = MCGetBaseResourcePath();
  v1 = [v5 stringByAppendingPathComponent:@"deprecatedUnsupervisedRestrictionPayloadKeys.plist"];
  v2 = [v0 MCDictionaryFromFile:v1];
  v3 = [v2 mutableCopy];
  v4 = grandfatheredRestrictionPayloadKeysDictionary_grandfatheredRestrictionPayloadKeysDictionary;
  grandfatheredRestrictionPayloadKeysDictionary_grandfatheredRestrictionPayloadKeysDictionary = v3;
}

+ (id)_filterRestrictionDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = [v7 mutableCopy];
  v27 = v7;
  v10 = [v7 objectForKeyedSubscript:v9];
  v25 = v9;
  v26 = v8;
  v11 = [v8 objectForKeyedSubscript:v9];
  v12 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        if ([v11 containsObject:v18])
        {
          v20 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v18;
            _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEFAULT, "Filter out the following restriction: %@", buf, 0xCu);
          }
        }

        else
        {
          [v12 setObject:v19 forKeyedSubscript:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v15);
  }

  [v24 setObject:v12 forKeyedSubscript:v25];
  v21 = [v24 copy];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)filterRestrictionDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a1 restrictionKeys];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = [objc_opt_class() _filterRestrictionDictionary:v13 removingPayloadKeysInRestrictionPayloadKeysDictionary:v6 forRestrictionKey:*(*(&v17 + 1) + 8 * v12)];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_filterRestrictionPayloadKeysDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:v9];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v7 objectForKeyedSubscript:v9];
    v13 = [v12 mutableCopy];

    v14 = [v8 objectForKeyedSubscript:v9];
    v15 = [v7 mutableCopy];
    [v13 removeObjectsInArray:v14];
    v16 = [v13 copy];
    [v15 setObject:v16 forKeyedSubscript:v9];

    v17 = [v15 copy];
  }

  else
  {
    v17 = v7;
  }

  return v17;
}

+ (id)filterRestrictionPayloadKeysDictionary:(id)a3 removingPayloadKeysInRestrictionPayloadKeysDictionary:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a1 restrictionKeys];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = [a1 _filterRestrictionPayloadKeysDictionary:v13 removingPayloadKeysInRestrictionPayloadKeysDictionary:v6 forRestrictionKey:*(*(&v17 + 1) + 8 * v12)];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_addRestrictionPayloadKeysDictionary:(id)a3 toRestrictionPayloadKeysDictionary:(id)a4 forRestrictionKey:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if ([v8 count])
  {
    v11 = [v8 mutableCopy];

    v10 = v11;
  }

  v12 = [v7 objectForKeyedSubscript:v9];
  v13 = [v12 copy];

  v14 = [v8 objectForKeyedSubscript:v9];
  if ([v14 count])
  {
    v26 = v7;
    v15 = [v14 mutableCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v13;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          if (([v15 containsObject:{v21, v25}] & 1) == 0)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    [v10 setObject:v15 forKeyedSubscript:v9];
    v13 = v25;
    v7 = v26;
  }

  else
  {
    [v10 setObject:v13 forKeyedSubscript:v9];
  }

  v22 = [v10 copy];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)addRestrictionPayloadKeysDictionary:(id)a3 toRestrictionPayloadKeysDictionary:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 MCDeepCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a1 restrictionKeys];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = [a1 _addRestrictionPayloadKeysDictionary:v6 toRestrictionPayloadKeysDictionary:v13 forRestrictionKey:*(*(&v20 + 1) + 8 * v12)];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v7 description];
    *buf = 138412290;
    v25 = v16;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Union Dictionary in the abstract: %@\n", buf, 0xCu);
  }

  v17 = [v7 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (int)restrictedBoolForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [MCRestrictionManager restrictedBoolForFeature:v4 withRestrictionsDictionary:v5];

  return v6;
}

- (id)valueForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [MCRestrictionManager valueForFeature:v4 withRestrictionsDictionary:v5];

  return v6;
}

- (id)objectForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [MCRestrictionManager objectForFeature:v4 withRestrictionsDictionary:v5];

  return v6;
}

- (id)intersectedValuesForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [MCRestrictionManager intersectedValuesForFeature:v4 withRestrictionsDictionary:v5];

  return v6;
}

- (id)unionValuesForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [MCRestrictionManager unionValuesForFeature:v4 withRestrictionsDictionary:v5];

  return v6;
}

+ (int)restrictedBoolForFeature:(id)a3 withRestrictionsDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"restrictedBool"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKey:v5];
      v11 = v10;
      if (v10 && ([v10 objectForKey:@"value"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        if ([v12 BOOLValue])
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)valueForFeature:(id)a3 withRestrictionsDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"value"];

  return v8;
}

+ (id)objectForFeature:(id)a3 withRestrictionsDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"assignedObject"];
  v7 = [v6 objectForKey:v5];

  return v7;
}

+ (id)intersectedValuesForFeature:(id)a3 withRestrictionsDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

+ (id)unionValuesForFeature:(id)a3 withRestrictionsDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:@"union"];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 objectForKeyedSubscript:@"values"];

  return v8;
}

+ (BOOL)restrictedBool:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKey:@"restrictedBool"];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 objectForKey:@"value"];

  v12 = [v7 objectForKey:@"restrictedBool"];

  v13 = [v12 objectForKey:v8];

  v14 = [v13 objectForKey:@"value"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToNumber:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)restrictedValue:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKey:@"restrictedValue"];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 objectForKey:@"value"];

  v12 = [v7 objectForKey:@"restrictedValue"];

  v13 = [v12 objectForKey:v8];

  v14 = [v13 objectForKey:@"value"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToNumber:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)intersectedValuesForFeature:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKey:@"intersection"];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 objectForKey:@"values"];

  v12 = [v7 objectForKey:@"intersection"];

  v13 = [v12 objectForKey:v8];

  v14 = [v13 objectForKey:@"values"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToArray:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)unionValuesForFeature:(id)a3 changedBetweenOldRestrictions:(id)a4 andNewRestrictions:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKeyedSubscript:@"union"];
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v10 objectForKeyedSubscript:@"values"];

  v12 = [v7 objectForKeyedSubscript:@"union"];

  v13 = [v12 objectForKeyedSubscript:v8];

  v14 = [v13 objectForKeyedSubscript:@"values"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToArray:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (id)systemClientRestrictions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MCRestrictionManager_systemClientRestrictions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __48__MCRestrictionManager_systemClientRestrictions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueSystemClientRestrictions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)userClientRestrictions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MCRestrictionManager_userClientRestrictions__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__MCRestrictionManager_userClientRestrictions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueUserClientRestrictions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSMutableDictionary)memberQueueSystemClientRestrictions
{
  memberQueueSystemClientRestrictions = self->_memberQueueSystemClientRestrictions;
  if (memberQueueSystemClientRestrictions)
  {
    v3 = memberQueueSystemClientRestrictions;
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];
    v6 = MCSystemClientRestrictionsFilePath();
    v7 = [v5 MCDataFromFile:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v7 options:2 format:0 error:0];
      v9 = self->_memberQueueSystemClientRestrictions;
      self->_memberQueueSystemClientRestrictions = v8;
    }

    if (!self->_memberQueueSystemClientRestrictions || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEFAULT, "Could not find system client restrictions. Creating new dictionary.", v14, 2u);
      }

      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = self->_memberQueueSystemClientRestrictions;
      self->_memberQueueSystemClientRestrictions = v11;
    }

    v3 = self->_memberQueueSystemClientRestrictions;
  }

  return v3;
}

- (NSMutableDictionary)memberQueueUserClientRestrictions
{
  memberQueueUserClientRestrictions = self->_memberQueueUserClientRestrictions;
  if (memberQueueUserClientRestrictions)
  {
    v3 = memberQueueUserClientRestrictions;
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];
    v6 = MCUserClientRestrictionsFilePath();
    v7 = [v5 MCDataFromFile:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v7 options:2 format:0 error:0];
      v9 = self->_memberQueueUserClientRestrictions;
      self->_memberQueueUserClientRestrictions = v8;
    }

    if (!self->_memberQueueUserClientRestrictions || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEFAULT, "Could not find user client restrictions. Creating new dictionary.", v14, 2u);
      }

      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = self->_memberQueueUserClientRestrictions;
      self->_memberQueueUserClientRestrictions = v11;
    }

    v3 = self->_memberQueueUserClientRestrictions;
  }

  return v3;
}

- (id)memberQueueClientRestrictionsDictionaryForClientUUID:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self memberQueueUserClientRestrictions];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(MCRestrictionManager *)self memberQueueSystemClientRestrictions];
    v6 = [v7 objectForKey:v4];
  }

  return v6;
}

- (id)memberQueueClientRestrictionsForClientUUID:(id)a3
{
  v3 = [(MCRestrictionManager *)self memberQueueClientRestrictionsDictionaryForClientUUID:a3];
  v4 = [v3 objectForKey:@"clientRestrictions"];

  return v4;
}

- (id)memberQueueClientTypeForClientUUID:(id)a3
{
  v3 = [(MCRestrictionManager *)self memberQueueClientRestrictionsDictionaryForClientUUID:a3];
  v4 = [v3 objectForKey:@"clientType"];

  return v4;
}

- (id)clientRestrictionsForClientUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  v5 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MCRestrictionManager_clientRestrictionsForClientUUID___block_invoke;
  block[3] = &unk_1E77D1EF0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __56__MCRestrictionManager_clientRestrictionsForClientUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueClientRestrictionsForClientUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)memberQueueUserInfoForClientUUID:(id)a3
{
  v3 = [(MCRestrictionManager *)self memberQueueClientRestrictionsDictionaryForClientUUID:a3];
  v4 = [v3 objectForKey:@"userInfo"];

  return v4;
}

- (id)userInfoForClientUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  v5 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MCRestrictionManager_userInfoForClientUUID___block_invoke;
  block[3] = &unk_1E77D1EF0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __46__MCRestrictionManager_userInfoForClientUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueUserInfoForClientUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)memberQueueAppsAndOptionsForClientUUID:(id)a3
{
  v3 = [(MCRestrictionManager *)self memberQueueClientRestrictionsDictionaryForClientUUID:a3];
  v4 = [v3 objectForKey:@"appsAndOptions"];

  return v4;
}

- (id)appsAndOptionsForClientUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  v5 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MCRestrictionManager_appsAndOptionsForClientUUID___block_invoke;
  block[3] = &unk_1E77D1EF0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __52__MCRestrictionManager_appsAndOptionsForClientUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueAppsAndOptionsForClientUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)allClientUUIDsForClientType:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = [MEMORY[0x1E695DFA8] set];
  v5 = [(MCRestrictionManager *)self memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MCRestrictionManager_allClientUUIDsForClientType___block_invoke;
  block[3] = &unk_1E77D1FE8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__MCRestrictionManager_allClientUUIDsForClientType___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) memberQueueSystemClientRestrictions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v2 objectForKey:v7];
        v9 = [v8 objectForKey:@"clientType"];
        v10 = [v9 isEqualToString:*(a1 + 40)];

        if (v10)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v21 = v2;
  v11 = [*(a1 + 32) memberQueueUserClientRestrictions];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        v17 = [v11 objectForKey:v16];
        v18 = [v17 objectForKey:@"clientType"];
        v19 = [v18 isEqualToString:*(a1 + 40)];

        if (v19)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)exchangeUUIDsRestrictingSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(MCRestrictionManager *)self effectiveUserSettings];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __57__MCRestrictionManager_exchangeUUIDsRestrictingSettings___block_invoke;
  v18 = &unk_1E77D3100;
  v19 = v4;
  v20 = self;
  v21 = v6;
  v7 = v5;
  v22 = v7;
  v8 = v6;
  v9 = v4;
  v10 = MEMORY[0x1AC55F990](&v15);
  v11 = [(MCRestrictionManager *)self systemClientRestrictions:v15];
  v12 = [(MCRestrictionManager *)self userClientRestrictions];
  [v11 enumerateKeysAndObjectsUsingBlock:v10];
  [v12 enumerateKeysAndObjectsUsingBlock:v10];
  v13 = v7;

  return v7;
}

void __57__MCRestrictionManager_exchangeUUIDsRestrictingSettings___block_invoke(id *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [a3 objectForKey:@"clientRestrictions"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v29 = v6;
    v28 = v5;
    v25 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKey:*(*(&v35 + 1) + 8 * i)];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = a1[4];
        v12 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          v26 = i;
          v27 = v8;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              v17 = [v11 objectForKey:v16];
              if (v17)
              {
                if ([a1[5] _isBoolSettingLockedDown:v17])
                {
                  goto LABEL_23;
                }

                v18 = a1[5];
                v19 = [a1[6] objectForKey:@"restrictedValue"];
                v20 = [v19 objectForKey:v16];
                if ([v18 _isValueSettingLockedDown:v17 effectiveSetting:v20])
                {
                  goto LABEL_22;
                }

                v21 = [a1[5] _effectiveIntersectedValuesForSetting:v16 effectiveUserSettings:a1[6]];
                if (v21)
                {

LABEL_22:
LABEL_23:
                  v23 = _MCLogObjects;
                  v5 = v28;
                  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v40 = v28;
                    v41 = 2114;
                    v42 = v16;
                    _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_DEBUG, "Exchange UUID %{public}@ matched for %{public}@", buf, 0x16u);
                  }

                  [a1[7] addObject:v28];

                  v6 = v29;
                  goto LABEL_26;
                }

                v22 = [a1[5] _effectiveUnionValuesForSetting:v16 effectiveUserSettings:a1[6]];

                if (v22)
                {
                  goto LABEL_23;
                }
              }
            }

            v13 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
            v5 = v28;
            v6 = v29;
            v9 = v25;
            i = v26;
            v8 = v27;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v8);
  }

LABEL_26:

  v24 = *MEMORY[0x1E69E9840];
}

- (NSMutableDictionary)memberQueueSystemNamespacedUserSettings
{
  memberQueueSystemNamespacedUserSettings = self->_memberQueueSystemNamespacedUserSettings;
  if (!memberQueueSystemNamespacedUserSettings)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = MCSystemNamespacedUserSettingsFilePath();
    v6 = [v4 MCDataFromFile:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:1 format:0 error:0];
      v8 = self->_memberQueueSystemNamespacedUserSettings;
      self->_memberQueueSystemNamespacedUserSettings = v7;
    }

    if (!self->_memberQueueSystemNamespacedUserSettings)
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEFAULT, "Could not find system name spaced user settings. Creating new dictionary.", v13, 2u);
      }

      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_memberQueueSystemNamespacedUserSettings;
      self->_memberQueueSystemNamespacedUserSettings = v10;
    }

    memberQueueSystemNamespacedUserSettings = self->_memberQueueSystemNamespacedUserSettings;
  }

  return memberQueueSystemNamespacedUserSettings;
}

- (NSMutableDictionary)memberQueueUserUserSettings
{
  memberQueueUserUserSettings = self->_memberQueueUserUserSettings;
  if (!memberQueueUserUserSettings)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = MCUserUserSettingsFilePath();
    v6 = [v4 MCDataFromFile:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:1 format:0 error:0];
      v8 = self->_memberQueueUserUserSettings;
      self->_memberQueueUserUserSettings = v7;
    }

    if (!self->_memberQueueUserUserSettings)
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEFAULT, "Could not find user user settings. Creating new dictionary.", v13, 2u);
      }

      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_memberQueueUserUserSettings;
      self->_memberQueueUserUserSettings = v10;
    }

    memberQueueUserUserSettings = self->_memberQueueUserUserSettings;
  }

  return memberQueueUserUserSettings;
}

- (NSMutableDictionary)memberQueueUserNamespacedUserSettings
{
  memberQueueUserNamespacedUserSettings = self->_memberQueueUserNamespacedUserSettings;
  if (!memberQueueUserNamespacedUserSettings)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = MCUserNamespacedUserSettingsFilePath();
    v6 = [v4 MCDataFromFile:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:1 format:0 error:0];
      v8 = self->_memberQueueUserNamespacedUserSettings;
      self->_memberQueueUserNamespacedUserSettings = v7;
    }

    if (!self->_memberQueueUserNamespacedUserSettings)
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEFAULT, "Could not find user user settings. Creating new dictionary.", v13, 2u);
      }

      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_memberQueueUserNamespacedUserSettings;
      self->_memberQueueUserNamespacedUserSettings = v10;
    }

    memberQueueUserNamespacedUserSettings = self->_memberQueueUserNamespacedUserSettings;
  }

  return memberQueueUserNamespacedUserSettings;
}

- (NSMutableDictionary)memberQueueSettingsEvents
{
  memberQueueSettingsEvents = self->_memberQueueSettingsEvents;
  if (!memberQueueSettingsEvents)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = MCSettingsEventsFilePath();
    v6 = [v4 MCDataFromFile:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:1 format:0 error:0];
      v8 = self->_memberQueueSettingsEvents;
      self->_memberQueueSettingsEvents = v7;
    }

    if (!self->_memberQueueSettingsEvents)
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEFAULT, "Could not find settings events. Creating new dictionary.", v13, 2u);
      }

      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_memberQueueSettingsEvents;
      self->_memberQueueSettingsEvents = v10;
    }

    memberQueueSettingsEvents = self->_memberQueueSettingsEvents;
  }

  return memberQueueSettingsEvents;
}

- (BOOL)applyConfiguration:(id)a3 toDomain:(unint64_t)a4 inNamespace:(id)a5 fromSender:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  if (a4 > 4)
  {
    if (a4 <= 6)
    {
      if (a4 == 5)
      {
        if (([(NSMutableDictionary *)self->_memberQueueRestrictions isEqualToDictionary:v10]& 1) == 0)
        {
          v13 = self->_memberQueueRestrictions;
          v22 = [v10 MCMutableDeepCopy];
          memberQueueRestrictions = self->_memberQueueRestrictions;
          self->_memberQueueRestrictions = v22;
          v16 = @"Restrictions";
          goto LABEL_45;
        }
      }

      else if (([(NSMutableDictionary *)self->_memberQueueSystemProfileRestrictions isEqualToDictionary:v10]& 1) == 0)
      {
        v13 = self->_memberQueueSystemProfileRestrictions;
        v20 = [v10 MCMutableDeepCopy];
        memberQueueRestrictions = self->_memberQueueSystemProfileRestrictions;
        self->_memberQueueSystemProfileRestrictions = v20;
        v16 = @"SystemProfileRestrictions";
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    if (a4 == 7)
    {
      if (([(NSMutableDictionary *)self->_memberQueueUserProfileRestrictions isEqualToDictionary:v10]& 1) == 0)
      {
        v13 = self->_memberQueueUserProfileRestrictions;
        v24 = [v10 MCMutableDeepCopy];
        memberQueueRestrictions = self->_memberQueueUserProfileRestrictions;
        self->_memberQueueUserProfileRestrictions = v24;
        v16 = @"UserProfileRestrictions";
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    if (a4 == 8)
    {
      if (([(NSMutableDictionary *)self->_memberQueueSystemClientRestrictions isEqualToDictionary:v10]& 1) == 0)
      {
        v13 = self->_memberQueueSystemClientRestrictions;
        v28 = [v10 MCMutableDeepCopy];
        memberQueueRestrictions = self->_memberQueueSystemClientRestrictions;
        self->_memberQueueSystemClientRestrictions = v28;
        v16 = @"SystemClientRestrictions";
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    v16 = 0;
    if (a4 == 9)
    {
      if (([(NSMutableDictionary *)self->_memberQueueUserClientRestrictions isEqualToDictionary:v10]& 1) == 0)
      {
        v13 = self->_memberQueueUserClientRestrictions;
        v17 = [v10 MCMutableDeepCopy];
        memberQueueRestrictions = self->_memberQueueUserClientRestrictions;
        self->_memberQueueUserClientRestrictions = v17;
        v16 = @"UserClientRestrictions";
        goto LABEL_45;
      }

      goto LABEL_31;
    }

LABEL_46:
    v30 = [(NSMutableDictionary *)self->_memberQueueSettingsEvents objectForKeyedSubscript:v16];
    v31 = [(MCRestrictionManager *)self _updatedDomainSettingsEvents:v30 fromPreviousSettings:v13 toNewSettings:v10 sender:v12];
    [(NSMutableDictionary *)self->_memberQueueSettingsEvents setObject:v31 forKeyedSubscript:v16];

    v27 = 1;
    goto LABEL_47;
  }

  if (a4 <= 1)
  {
    if (!a4)
    {
      if (([(NSMutableDictionary *)self->_memberQueueSystemUserSettings isEqualToDictionary:v10]& 1) == 0)
      {
        v13 = self->_memberQueueSystemUserSettings;
        v21 = [v10 MCMutableDeepCopy];
        memberQueueRestrictions = self->_memberQueueSystemUserSettings;
        self->_memberQueueSystemUserSettings = v21;
        v16 = @"SystemSettings";
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    v16 = 0;
    if (a4 == 1)
    {
      memberQueueSystemNamespacedUserSettings = self->_memberQueueSystemNamespacedUserSettings;
      if (v11)
      {
        v19 = [(NSMutableDictionary *)memberQueueSystemNamespacedUserSettings objectForKeyedSubscript:v11];
      }

      else
      {
        v19 = memberQueueSystemNamespacedUserSettings;
      }

      v13 = v19;
      if (([(NSMutableDictionary *)v19 isEqualToDictionary:v10]& 1) != 0)
      {
        goto LABEL_39;
      }

      memberQueueRestrictions = [v10 MCMutableDeepCopy];
      v29 = self->_memberQueueSystemNamespacedUserSettings;
      if (v11)
      {
        [(NSMutableDictionary *)v29 setObject:memberQueueRestrictions forKeyedSubscript:v11];
        v16 = @"SystemNamespacedSettings";
        goto LABEL_45;
      }

      self->_memberQueueSystemNamespacedUserSettings = memberQueueRestrictions;
      v16 = @"SystemNamespacedSettings";
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      if (([(NSMutableDictionary *)self->_memberQueueEffectiveUserSettings isEqualToDictionary:v10]& 1) == 0)
      {
        v13 = self->_memberQueueEffectiveUserSettings;
        v14 = [v10 MCMutableDeepCopy];
        memberQueueRestrictions = self->_memberQueueEffectiveUserSettings;
        self->_memberQueueEffectiveUserSettings = v14;
        v16 = @"EffectiveSettings";
LABEL_45:

        goto LABEL_46;
      }

      goto LABEL_31;
    }

    memberQueueUserNamespacedUserSettings = self->_memberQueueUserNamespacedUserSettings;
    if (v11)
    {
      v26 = [(NSMutableDictionary *)memberQueueUserNamespacedUserSettings objectForKeyedSubscript:v11];
    }

    else
    {
      v26 = memberQueueUserNamespacedUserSettings;
    }

    v13 = v26;
    if (([(NSMutableDictionary *)v26 isEqualToDictionary:v10]& 1) != 0)
    {
LABEL_39:
      v27 = 0;
      goto LABEL_47;
    }

    memberQueueRestrictions = [v10 MCMutableDeepCopy];
    v29 = self->_memberQueueUserNamespacedUserSettings;
    if (v11)
    {
      [(NSMutableDictionary *)v29 setObject:memberQueueRestrictions forKeyedSubscript:v11];
      v16 = @"UserNamespacedSettings";
      goto LABEL_45;
    }

    self->_memberQueueUserNamespacedUserSettings = memberQueueRestrictions;
    v16 = @"UserNamespacedSettings";
LABEL_44:
    memberQueueRestrictions = v29;
    goto LABEL_45;
  }

  if (([(NSMutableDictionary *)self->_memberQueueUserUserSettings isEqualToDictionary:v10]& 1) == 0)
  {
    v13 = self->_memberQueueUserUserSettings;
    v23 = [v10 MCMutableDeepCopy];
    memberQueueRestrictions = self->_memberQueueUserUserSettings;
    self->_memberQueueUserUserSettings = v23;
    v16 = @"UserSettings";
    goto LABEL_45;
  }

LABEL_31:
  v27 = 0;
  v13 = 0;
LABEL_47:

  return v27;
}

- (id)_updatedDomainSettingsEvents:(id)a3 fromPreviousSettings:(id)a4 toNewSettings:(id)a5 sender:(id)a6
{
  v11 = MEMORY[0x1E695E0F8];
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v13 = v12;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v13 MCDictionaryAdditiveDeltaToCreateDictionary:v15];
  v19 = [v13 MCDictionarySubtractiveDeltaToCreateDictionary:v15];

  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v11;
  }

  v21 = v20;
  v22 = [(MCRestrictionManager *)self _settingsEventFromProcess:v14 withTag:@"set"];
  v23 = [v21 MCInsertedKeysFromDictionary:v18 withNewLeafValue:v22];

  v24 = [(MCRestrictionManager *)self _settingsEventFromProcess:v14 withTag:@"remove"];

  v25 = [v23 MCInsertedKeysFromDictionary:v19 withNewLeafValue:v24];

  return v25;
}

- (id)_settingsEventFromProcess:(id)a3 withTag:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = @"unknown";
  if (a3)
  {
    v5 = a3;
  }

  v14[0] = v5;
  v13[0] = @"process";
  v13[1] = @"timestamp";
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v13[2] = @"event";
  v14[1] = v9;
  v14[2] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSDictionary)userUserSettings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(MCRestrictionManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MCRestrictionManager_userUserSettings__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__MCRestrictionManager_userUserSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueUserUserSettings];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)effectiveParametersForBoolSetting:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MCRestrictionManager *)self effectiveUserSettings];
  v7 = [v5 parametersForBoolSetting:v4 withUserSettingDictionary:v6];

  return v7;
}

- (id)effectiveParametersForBoolSetting:(id)a3 configurationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = 0;
  v8 = [(MCRestrictionManager *)self memberQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__MCRestrictionManager_effectiveParametersForBoolSetting_configurationUUID___block_invoke;
  v13[3] = &unk_1E77D3128;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v17 = &v18;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __76__MCRestrictionManager_effectiveParametersForBoolSetting_configurationUUID___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = objc_opt_class();
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) memberQueueUserNamespacedUserSettings];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];
    v7 = [v3 parametersForBoolSetting:v4 withUserSettingDictionary:v6];

    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    if (v7)
    {
LABEL_5:
      v14 = [*(a1 + 40) memberQueueRestrictions];
      v15 = [v9 applyRestrictions:v14 forFeature:*(a1 + 48) toParametersForBoolSetting:v7];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      goto LABEL_7;
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) memberQueueSystemNamespacedUserSettings];
    v12 = [v11 objectForKeyedSubscript:*(a1 + 32)];
    v7 = [v9 parametersForBoolSetting:v10 withUserSettingDictionary:v12];

    if (v7)
    {
      v13 = *(a1 + 40);
      v9 = objc_opt_class();
      goto LABEL_5;
    }
  }

  v18 = *(a1 + 40);
  v19 = objc_opt_class();
  v20 = *(a1 + 48);
  v14 = [*(a1 + 40) memberQueueEffectiveUserSettings];
  v7 = [v19 parametersForBoolSetting:v20 withUserSettingDictionary:v14];
LABEL_7:

  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v7;
}

- (id)effectiveParametersForValueSetting:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MCRestrictionManager *)self effectiveUserSettings];
  v7 = [v5 parametersForValueSetting:v4 withUserSettingDictionary:v6];

  return v7;
}

- (id)effectiveParametersForIntersectedSetting:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MCRestrictionManager *)self effectiveUserSettings];
  v7 = [v5 parametersForIntersectedSetting:v4 withUserSettingDictionary:v6];

  return v7;
}

- (id)effectiveParametersForUnionSetting:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MCRestrictionManager *)self effectiveUserSettings];
  v7 = [v5 parametersForUnionSetting:v4 withUserSettingDictionary:v6];

  return v7;
}

- (int)BOOLSettingForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self userSettings];
  v6 = [MCRestrictionManager BOOLSettingForFeature:v4 withUserSettingDictionary:v5];

  return v6;
}

- (id)valueSettingForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self userSettings];
  v6 = [MCRestrictionManager valueSettingForFeature:v4 withUserSettingDictionary:v5];

  return v6;
}

- (id)intersectedValuesSettingForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self userSettings];
  v6 = [MCRestrictionManager intersectedValuesSettingForFeature:v4 withUserSettingDectionary:v5];

  return v6;
}

- (id)unionValuesSettingForFeature:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self userSettings];
  v6 = [MCRestrictionManager unionValuesSettingForFeature:v4 withUserSettingDictionary:v5];

  return v6;
}

- (int)effectiveRestrictedBoolForSetting:(id)a3 configurationUUID:(id)a4
{
  v4 = [(MCRestrictionManager *)self effectiveParametersForBoolSetting:a3 configurationUUID:a4];
  v5 = [v4 objectForKey:@"value"];

  if (v5)
  {
    if ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)effectiveValueForSetting:(id)a3
{
  v3 = [(MCRestrictionManager *)self effectiveParametersForValueSetting:a3];
  v4 = [v3 objectForKey:@"value"];

  return v4;
}

- (id)effectiveIntersectedValuesForSetting:(id)a3
{
  v3 = [(MCRestrictionManager *)self effectiveParametersForIntersectedSetting:a3];
  v4 = [v3 objectForKey:@"values"];

  return v4;
}

- (id)effectiveUnionValuesForSetting:(id)a3
{
  v3 = [(MCRestrictionManager *)self effectiveParametersForUnionSetting:a3];
  v4 = [v3 objectForKey:@"values"];

  return v4;
}

- (id)_effectiveIntersectedValuesForSetting:(id)a3 effectiveUserSettings:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

- (id)_effectiveUnionValuesForSetting:(id)a3 effectiveUserSettings:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"union"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

- (id)profileIdentifiersRestrictingSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_opt_new();
  v7 = [(MCRestrictionManager *)self systemProfileRestrictions];
  [v6 addEntriesFromDictionary:v7];

  v8 = [(MCRestrictionManager *)self userProfileRestrictions];
  [v6 addEntriesFromDictionary:v8];

  v9 = [(MCRestrictionManager *)self effectiveUserSettings];
  v10 = +[MCManifest sharedManifest];
  v11 = [v10 identifiersOfProfilesWithFilterFlags:2];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__MCRestrictionManager_profileIdentifiersRestrictingSettings___block_invoke;
  v18[3] = &unk_1E77D3150;
  v19 = v4;
  v20 = self;
  v21 = v9;
  v22 = v11;
  v23 = v5;
  v12 = v5;
  v13 = v11;
  v14 = v9;
  v15 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = [v12 copy];

  return v16;
}

void __62__MCRestrictionManager_profileIdentifiersRestrictingSettings___block_invoke(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    v35 = v8;
    v34 = v7;
    v31 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v8 objectForKey:*(*(&v41 + 1) + 8 * i)];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        obj = a1[4];
        v14 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v38;
          v32 = i;
          v33 = v10;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v37 + 1) + 8 * j);
              v19 = [v13 objectForKey:v18];
              if (v19)
              {
                if ([a1[5] _isBoolSettingLockedDown:v19])
                {
                  goto LABEL_23;
                }

                v20 = a1[5];
                v21 = [a1[6] objectForKey:@"restrictedValue"];
                v22 = [v21 objectForKey:v18];
                if ([v20 _isValueSettingLockedDown:v19 effectiveSetting:v22])
                {
                  goto LABEL_22;
                }

                v23 = [a1[5] _effectiveIntersectedValuesForSetting:v18 effectiveUserSettings:a1[6]];
                if (v23)
                {

LABEL_22:
LABEL_23:
                  v25 = _MCLogObjects;
                  v7 = v34;
                  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v46 = v34;
                    v47 = 2114;
                    v48 = v18;
                    _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_DEBUG, "Profile %{public}@ matched for %{public}@", buf, 0x16u);
                  }

                  v26 = +[MCDependencyReader sharedReader];
                  v27 = [v26 dependentsOfParent:v34 inDomain:@"ManagedProfileToManagingProfile"];
                  if (([a1[7] containsObject:v34] & 1) == 0)
                  {
                    if (v27 && [v27 count])
                    {
                      v28 = a1[8];
                      v29 = [v27 firstObject];
                      [v28 addObject:v29];
                    }

                    else
                    {
                      [a1[8] addObject:v34];
                    }
                  }

                  v8 = v35;
                  goto LABEL_31;
                }

                v24 = [a1[5] _effectiveUnionValuesForSetting:v18 effectiveUserSettings:a1[6]];

                if (v24)
                {
                  goto LABEL_23;
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
            v7 = v34;
            v8 = v35;
            v11 = v31;
            i = v32;
            v10 = v33;
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v10);
  }

LABEL_31:

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self isBoolSettingLockedDownByRestrictions:v4]|| [(MCRestrictionManager *)self isValueSettingLockedDownByRestrictions:v4]|| [(MCRestrictionManager *)self isIntersectionSettingLockedDownByRestrictions:v4]|| [(MCRestrictionManager *)self isUnionSettingLockedDownByRestrictions:v4];

  return v5;
}

- (BOOL)_isBoolSettingLockedDown:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"value"];
    v6 = [v4 objectForKey:@"preference"];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v9 = [v5 BOOLValue];
      v10 = v9 ^ [v7 BOOLValue] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isBoolSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  if (!os_variant_has_internal_ui() || ![v4 isEqualToString:@"allowDiagnosticSubmission"] || (keyExistsAndHasValidFormat = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MCInternalOverrideDiagnosticEnforcement", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat), v6 = 1, keyExistsAndHasValidFormat) && AppBooleanValue)
  {
    v7 = [(MCRestrictionManager *)self currentRestrictions];
    v8 = [v7 objectForKey:@"restrictedBool"];
    v9 = [v8 objectForKey:v4];

    v6 = [(MCRestrictionManager *)self _isBoolSettingLockedDown:v9];
  }

  return v6;
}

- (BOOL)_isValueSettingLockedDown:(id)a3 effectiveSetting:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = a3;
    v9 = [v8 objectForKey:@"value"];
    v10 = [v8 objectForKey:@"preferSmallerValues"];

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }

    if ([v10 BOOLValue])
    {
      v12 = [v6 objectForKey:@"rangeMinimum"];
      v13 = v12;
      if (!v12 || [v12 compare:v9] == -1)
      {
LABEL_15:
        v7 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v14 = [v6 objectForKey:@"rangeMaximum"];
      v13 = v14;
      if (!v14 || [v14 compare:v9] == 1)
      {
        goto LABEL_15;
      }
    }

    v7 = 1;
    goto LABEL_17;
  }

LABEL_19:

  return v7;
}

- (BOOL)isValueSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__15;
  v26 = __Block_byref_object_dispose__15;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__15;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  v5 = [(MCRestrictionManager *)self memberQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __63__MCRestrictionManager_isValueSettingLockedDownByRestrictions___block_invoke;
  v11 = &unk_1E77D3178;
  v14 = &v22;
  v12 = self;
  v6 = v4;
  v13 = v6;
  v15 = &v16;
  dispatch_sync(v5, &v8);

  LOBYTE(self) = [(MCRestrictionManager *)self _isValueSettingLockedDown:v23[5] effectiveSetting:v17[5], v8, v9, v10, v11, v12];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return self;
}

void __63__MCRestrictionManager_isValueSettingLockedDownByRestrictions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueRestrictions];
  v3 = [v2 objectForKey:@"restrictedValue"];
  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = [v4 copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v13 = [*(a1 + 32) memberQueueEffectiveUserSettings];
  v8 = [v13 objectForKey:@"restrictedValue"];
  v9 = [v8 objectForKey:*(a1 + 40)];
  v10 = [v9 copy];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (BOOL)isIntersectionSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [v5 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"overrideUserSettings"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    v9 = [v7 objectForKey:@"values"];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isUnionSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  v5 = [(MCRestrictionManager *)self currentRestrictions];
  v6 = [v5 objectForKey:@"union"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"overrideUserSettings"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    v9 = [v7 objectForKey:@"values"];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)appWhitelistState
{
  v3 = [(MCRestrictionManager *)self effectiveUserSettings];
  v4 = [(MCRestrictionManager *)self currentRestrictions];
  v5 = [MCRestrictionManager appWhitelistStateWithSettingsDictionary:v3 restrictionsDictionary:v4];

  return v5;
}

+ (id)defaultSettings
{
  v2 = +[MCHacks sharedHacks];
  v3 = [v2 _deviceSpecificDefaultSettings];

  return v3;
}

+ (id)defaultParametersForBoolSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"restrictedBool"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

+ (id)defaultParametersForValueSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

+ (id)defaultParametersForIntersectedValuesSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

+ (id)defaultParametersForUnionValuesSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"union"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

+ (int)defaultBoolValueForSetting:(id)a3 outAsk:(BOOL *)a4
{
  v6 = a3;
  v7 = [a1 defaultSettings];
  LODWORD(a4) = [a1 BOOLSettingForFeature:v6 outAsk:a4 withUserSettingDictionary:v7];

  return a4;
}

+ (id)defaultValueForSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"value"];

  return v8;
}

+ (id)maximumValueForSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"rangeMaximum"];

  return v8;
}

+ (id)minimumValueForSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"rangeMinimum"];

  return v8;
}

+ (id)defaultIntersectedValuesForSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

+ (id)defaultUnionValuesForSetting:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:@"union"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

+ (id)parametersForSetting:(id)a3 ofType:(id)a4 withUserSettingDictionary:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [MCSignpostManager willGetFeature:v9];
  v10 = [v7 objectForKey:v8];

  v11 = [v10 objectForKey:v9];

  return v11;
}

+ (int)BOOLSettingForFeature:(id)a3 outAsk:(BOOL *)a4 withUserSettingDictionary:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 objectForKey:@"restrictedBool"];
  v10 = [v9 objectForKey:v7];
  v11 = [v10 objectForKey:@"value"];

  if (v11)
  {
    if ([v11 BOOLValue])
    {
      if (a4)
      {
        v12 = [v8 objectForKeyedSubscript:@"restrictedBool"];
        v13 = [v12 objectForKeyedSubscript:v7];
        v14 = [v13 objectForKeyedSubscript:@"ask"];
        *a4 = [v14 BOOLValue];
      }

      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)valueSettingForFeature:(id)a3 withUserSettingDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"value"];

  return v8;
}

+ (id)intersectedValuesSettingForFeature:(id)a3 withUserSettingDectionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

+ (id)unionValuesSettingForFeature:(id)a3 withUserSettingDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"union"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"values"];

  return v8;
}

+ (int)BOOLSettingForFeature:(id)a3 withNewUserSetting:(id)a4 currentSettings:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 BOOLSettingForFeature:v8 outAsk:0 withUserSettingDictionary:a4];
  if (!v10)
  {
    v10 = [a1 BOOLSettingForFeature:v8 outAsk:0 withUserSettingDictionary:v9];
  }

  return v10;
}

+ (id)applyRestrictions:(id)a3 forFeature:(id)a4 toParametersForBoolSetting:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = [a3 objectForKeyedSubscript:@"restrictedBool"];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [v10 objectForKeyedSubscript:@"value"];
  v12 = [v10 objectForKeyedSubscript:@"preference"];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && (v15 = [v11 BOOLValue], v15 == objc_msgSend(v13, "BOOLValue")))
  {
    v20 = @"value";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    v21[0] = v17;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v16 = v7;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)newEffectiveSettingsByApplyingRestrictions:(id)a3 toSettings:(id)a4
{
  v156 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0x1E695D000uLL;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v104 = v7;
  v10 = [v7 objectForKeyedSubscript:@"restrictedBool"];
  v11 = [v10 mutableCopy];

  v107 = v6;
  v103 = v9;
  if (v11)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v12 = [v6 objectForKeyedSubscript:@"restrictedBool"];
    v13 = [v12 countByEnumeratingWithState:&v146 objects:v155 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v147;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v147 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v146 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:v17];
          v19 = [a1 applyRestrictions:v6 forFeature:v17 toParametersForBoolSetting:v18];
          [v11 setObject:v19 forKeyedSubscript:v17];

          v6 = v107;
        }

        v14 = [v12 countByEnumeratingWithState:&v146 objects:v155 count:16];
      }

      while (v14);
    }

    [v103 setObject:v11 forKey:@"restrictedBool"];
    v8 = 0x1E695D000;
  }

  else
  {
    v20 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_ERROR, "settings dictionary missing BOOLean restrictions (restrictedBool)", buf, 2u);
    }

    v21 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v21 forKey:@"restrictedBool"];
  }

  v110 = [v6 objectForKey:@"restrictedValue"];
  v22 = [v104 objectForKey:@"restrictedValue"];
  v109 = [*(v8 + 3984) dictionary];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = v22;
  v113 = [obj countByEnumeratingWithState:&v141 objects:v154 count:16];
  if (v113)
  {
    v108 = *v142;
    do
    {
      for (j = 0; j != v113; ++j)
      {
        if (*v142 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v141 + 1) + 8 * j);
        v25 = [obj objectForKey:v24];
        v117 = v24;
        v26 = [v110 objectForKey:v24];
        v27 = [v25 objectForKey:@"value"];
        v28 = [v25 objectForKey:@"rangeMinimum"];
        v29 = [v25 objectForKey:@"rangeMaximum"];
        v30 = v28;
        v31 = v27;
        v32 = v31;
        v33 = v30;
        v34 = v29;
        if (v26)
        {
          v35 = [v26 objectForKey:@"value"];
          v36 = [v26 objectForKey:@"preferSmallerValues"];
          if (v35)
          {
            v37 = v36 == 0;
          }

          else
          {
            v37 = 1;
          }

          v32 = v31;
          v33 = v30;
          v34 = v29;
          if (v37)
          {
            goto LABEL_43;
          }

          v106 = v36;
          v38 = [v36 BOOLValue];
          v34 = v35;
          if (v38)
          {

            if (!v29 || [v29 compare:v34] != -1)
            {
              if (v30)
              {
                goto LABEL_27;
              }

LABEL_41:
              v33 = 0;
              v32 = v31;
LABEL_42:
              v36 = v106;
LABEL_43:

              goto LABEL_44;
            }

            v44 = v29;

            v34 = v44;
            if (!v30)
            {
              goto LABEL_41;
            }

LABEL_27:
            v105 = v35;
            v39 = [v30 compare:v34];
            v40 = v30;
            v33 = v30;
            v41 = v34;
            if (v39 == 1)
            {
LABEL_28:
              v33 = v40;

              v41 = v33;
            }
          }

          else
          {

            if (v30 && [v30 compare:v34] == 1)
            {
              v42 = v30;

              v34 = v42;
            }

            if (!v29)
            {
              v32 = v31;
              v33 = v34;
              v34 = 0;
              goto LABEL_42;
            }

            v105 = v35;
            v43 = [v29 compare:v34];
            v40 = v29;
            v33 = v34;
            v41 = v29;
            if (v43 == -1)
            {
              goto LABEL_28;
            }
          }

          if ([v41 compare:v33] == 1)
          {
            v32 = v31;
            v34 = v41;
          }

          else
          {
            v32 = v41;

            v34 = v32;
          }

          v35 = v105;
          goto LABEL_42;
        }

LABEL_44:
        if (v34)
        {
          v45 = v32 == 0;
        }

        else
        {
          v45 = 1;
        }

        if (!v45 && [v34 compare:v32] == -1)
        {
          v46 = v34;

          v32 = v46;
        }

        if (v33)
        {
          v47 = v32 == 0;
        }

        else
        {
          v47 = 1;
        }

        if (!v47 && [v33 compare:v32] == 1)
        {
          v48 = v33;

          v32 = v48;
        }

        v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v49 MCSetObjectIfNotNil:v34 forKey:@"rangeMaximum"];
        [v49 MCSetObjectIfNotNil:v33 forKey:@"rangeMinimum"];
        [v49 MCSetObjectIfNotNil:v32 forKey:@"value"];
        [v109 setObject:v49 forKey:v117];
      }

      v113 = [obj countByEnumeratingWithState:&v141 objects:v154 count:16];
    }

    while (v113);
  }

  [v103 setObject:v109 forKey:@"restrictedValue"];
  v50 = [v107 objectForKey:@"intersection"];
  v51 = [v104 objectForKey:@"intersection"];
  v121 = [MEMORY[0x1E695DF90] dictionary];
  v123 = v50;
  v52 = [v50 allKeys];
  v118 = [v52 mutableCopy];

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v53 = v51;
  v111 = v53;
  v119 = [v53 countByEnumeratingWithState:&v137 objects:v153 count:16];
  if (v119)
  {
    obja = *v138;
    do
    {
      for (k = 0; k != v119; ++k)
      {
        if (*v138 != obja)
        {
          objc_enumerationMutation(v53);
        }

        v55 = *(*(&v137 + 1) + 8 * k);
        v56 = [v53 objectForKey:v55];
        v57 = [v56 mutableCopy];

        v58 = [v57 objectForKey:@"values"];
        v59 = [v123 objectForKey:v55];
        v60 = [v59 objectForKey:@"values"];
        if (v60)
        {
          v61 = [v59 objectForKey:@"overrideUserSettings"];
          v62 = [v61 BOOLValue];

          if (v62)
          {
            [v57 setObject:v60 forKey:@"values"];
          }

          else
          {
            if (v58)
            {
              v63 = [MEMORY[0x1E695DFD8] setWithArray:v60];
              v64 = [MEMORY[0x1E695DFA8] setWithArray:v58];
              [v64 intersectSet:v63];
              v65 = [v64 allObjects];
              [v57 setObject:v65 forKey:@"values"];

              v53 = v111;
            }

            else
            {
              v63 = [v60 copy];
              [v57 setObject:v63 forKey:@"values"];
            }
          }
        }

        [v121 setObject:v57 forKey:v55];
        [v118 removeObject:v55];
      }

      v119 = [v53 countByEnumeratingWithState:&v137 objects:v153 count:16];
    }

    while (v119);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v66 = v118;
  v67 = [v66 countByEnumeratingWithState:&v133 objects:v152 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v134;
    do
    {
      for (m = 0; m != v68; ++m)
      {
        if (*v134 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v133 + 1) + 8 * m);
        v72 = [v123 objectForKey:v71];
        [v121 setObject:v72 forKey:v71];
      }

      v68 = [v66 countByEnumeratingWithState:&v133 objects:v152 count:16];
    }

    while (v68);
  }

  [v103 setObject:v121 forKey:@"intersection"];
  v73 = [v107 objectForKeyedSubscript:@"union"];
  v74 = [v104 objectForKeyedSubscript:@"union"];
  v75 = v73;
  v124 = [MEMORY[0x1E695DF90] dictionary];
  v76 = [v73 allKeys];
  v77 = [v76 mutableCopy];

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v78 = v74;
  v114 = v78;
  v122 = [v78 countByEnumeratingWithState:&v129 objects:v151 count:16];
  if (v122)
  {
    v79 = *v130;
    v120 = v75;
    v112 = *v130;
    do
    {
      for (n = 0; n != v122; ++n)
      {
        if (*v130 != v79)
        {
          objc_enumerationMutation(v78);
        }

        v81 = *(*(&v129 + 1) + 8 * n);
        v82 = [v78 objectForKeyedSubscript:v81];
        v83 = [v82 mutableCopy];

        v84 = [v83 objectForKeyedSubscript:@"values"];
        v85 = [v75 objectForKeyedSubscript:v81];
        v86 = [v85 objectForKeyedSubscript:@"values"];
        v87 = v86;
        if (v86)
        {
          if (v84)
          {
            v88 = [MEMORY[0x1E695DFD8] setWithArray:v86];
            v89 = [MEMORY[0x1E695DFA8] setWithArray:v84];
            [v89 unionSet:v88];
            [v89 allObjects];
            v91 = v90 = v77;
            [v83 setObject:v91 forKeyedSubscript:@"values"];

            v77 = v90;
            v79 = v112;

            v78 = v114;
          }

          else
          {
            v88 = [v86 copy];
            [v83 setObject:v88 forKeyedSubscript:@"values"];
          }
        }

        [v124 setObject:v83 forKeyedSubscript:v81];
        [v77 removeObject:v81];

        v75 = v120;
      }

      v122 = [v78 countByEnumeratingWithState:&v129 objects:v151 count:16];
    }

    while (v122);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v92 = v77;
  v93 = [v92 countByEnumeratingWithState:&v125 objects:v150 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v126;
    do
    {
      for (ii = 0; ii != v94; ++ii)
      {
        if (*v126 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = *(*(&v125 + 1) + 8 * ii);
        v98 = [v75 objectForKeyedSubscript:v97];
        [v124 setObject:v98 forKeyedSubscript:v97];
      }

      v94 = [v92 countByEnumeratingWithState:&v125 objects:v150 count:16];
    }

    while (v94);
  }

  [v103 setObject:v124 forKeyedSubscript:@"union"];
  v99 = +[MCHacks sharedHacks];
  [v99 _applyHeuristicsToEffectiveUserSettings:v103];

  v100 = +[MCHacks sharedHacks];
  [v100 _applyMandatorySettingsToEffectiveUserSettings:v103];

  v101 = *MEMORY[0x1E69E9840];
  return v103;
}

+ (BOOL)BOOLSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKey:@"restrictedBool"];
  v11 = [v10 objectForKey:v7];
  v12 = [v11 objectForKey:@"value"];

  v13 = [v9 objectForKey:@"restrictedBool"];
  v14 = [v13 objectForKey:v7];
  v15 = [v14 objectForKey:@"value"];

  if (v12 | v15)
  {
    if ((v12 != 0) != (v15 != 0))
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      if (v12)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17 && [v12 BOOLValue] && objc_msgSend(v15, "BOOLValue"))
      {
        v18 = [v8 objectForKeyedSubscript:@"restrictedBool"];
        v19 = [v18 objectForKeyedSubscript:v7];
        v20 = [v19 objectForKeyedSubscript:@"ask"];
        v25 = [v20 BOOLValue];

        v16 = [v9 objectForKeyedSubscript:@"restrictedBool"];
        v21 = [v16 objectForKeyedSubscript:v7];
        v22 = [v21 objectForKeyedSubscript:@"ask"];
        v23 = [v22 BOOLValue];

        LOBYTE(v16) = v25 ^ v23;
      }

      else
      {
        LODWORD(v16) = [v12 isEqualToNumber:v15] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

+ (BOOL)valueSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKey:@"restrictedValue"];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 objectForKey:@"value"];

  v12 = [v7 objectForKey:@"restrictedValue"];

  v13 = [v12 objectForKey:v8];

  v14 = [v13 objectForKey:@"value"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToNumber:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)intersectedValuesSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKey:@"intersection"];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 objectForKey:@"values"];

  v12 = [v7 objectForKey:@"intersection"];

  v13 = [v12 objectForKey:v8];

  v14 = [v13 objectForKey:@"values"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToArray:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)unionValuesSetting:(id)a3 valueChangedBetweenOldSettings:(id)a4 andNewSettings:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 objectForKey:@"union"];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 objectForKey:@"values"];

  v12 = [v7 objectForKey:@"union"];

  v13 = [v12 objectForKey:v8];

  v14 = [v13 objectForKey:@"values"];

  if (v11 | v14)
  {
    if ((v11 != 0) != (v14 != 0))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      v15 = [v11 isEqualToArray:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (NSArray)memberQueueEffectiveWhitelistedAppsAndOptions
{
  v16 = *MEMORY[0x1E69E9840];
  memberQueueEffectiveWhitelistedAppsAndOptions = self->_memberQueueEffectiveWhitelistedAppsAndOptions;
  if (!memberQueueEffectiveWhitelistedAppsAndOptions)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = MCSystemEffectiveAppWhitelistFilePath();
    v6 = [v4 dataWithContentsOfFile:v5];

    if (v6)
    {
      v13 = 0;
      v7 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v6 options:0 format:0 error:&v13];
      v8 = v13;
      v9 = self->_memberQueueEffectiveWhitelistedAppsAndOptions;
      self->_memberQueueEffectiveWhitelistedAppsAndOptions = v7;

      if (!self->_memberQueueEffectiveWhitelistedAppsAndOptions)
      {
        v10 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v15 = v8;
          _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Could not read effective whitelisted apps and options. Error: %{public}@", buf, 0xCu);
        }
      }
    }

    memberQueueEffectiveWhitelistedAppsAndOptions = self->_memberQueueEffectiveWhitelistedAppsAndOptions;
  }

  v11 = *MEMORY[0x1E69E9840];

  return memberQueueEffectiveWhitelistedAppsAndOptions;
}

+ (int)appWhitelistStateWithSettingsDictionary:(id)a3 restrictionsDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MCRestrictionManager intersectedValuesSettingForFeature:@"appLockBundleIDs" withUserSettingDectionary:v5];

  if (v7)
  {
    if ([MCRestrictionManager isInSingleAppModeWithSettingsDictionary:v5])
    {
      [MCRestrictionManager isPasscodeRequiredToAccessWhitelistedAppsWithSettingsDictionary:v5];
      LODWORD(v7) = 1;
    }

    else if ([MCRestrictionManager isWhitelistedAppsRestrictionEnforcedWithRestrictionsDictionary:v6])
    {
      LODWORD(v7) = 6;
    }

    else
    {
      [MCRestrictionManager mayEnterPasscodeToAccessNonWhitelistedAppsWithSettingsDictionary:v5];
      LODWORD(v7) = 2;
    }
  }

  return v7;
}

+ (BOOL)isWhitelistedAppsRestrictionEnforcedWithRestrictionsDictionary:(id)a3
{
  v3 = [MCRestrictionManager intersectedValuesForFeature:@"appLockBundleIDs" withRestrictionsDictionary:a3];
  v4 = v3 != 0;

  return v4;
}

+ (id)allowedOpenInAppBundleIDsWithOriginalAppBundleIDs:(id)a3 managedAppBundleIDs:(id)a4 localAppBundleID:(id)a5 localAccountIsManaged:(BOOL)a6 mayOpenFromUnmanagedToManaged:(BOOL)a7 mayOpenFromManagedToUnmanaged:(BOOL)a8 isAppBundleIDExemptBlock:(id)a9 isAppBundleIDAccountBasedBlock:(id)a10
{
  v11 = a7;
  v29 = a6;
  v14 = a4;
  v15 = a5;
  v16 = a9;
  v17 = a10;
  v18 = [MEMORY[0x1E695DFA8] setWithArray:a3];
  v19 = +[MCRestrictionManager sharedManager];
  v20 = [v19 restrictedAppBundleIDs];

  if ([v20 count])
  {
    [v18 minusSet:v20];
  }

  v21 = +[MCRestrictionManager sharedManager];
  v22 = [v21 effectiveWhitelistedAppBundleIDs];

  if ([v22 count])
  {
    [v18 intersectSet:v22];
  }

  v23 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  if ((!v11 || !a8) && (v16[2](v16, v15) & 1) == 0)
  {
    v24 = v17[2](v17, v15);
    v25 = v29;
    if ((v24 & 1) == 0)
    {
      v25 = [v23 containsObject:v15];
    }

    if (v25 && !a8)
    {
      v26 = v25;
      [v18 intersectSet:v23];
      v25 = v26;
    }

    if (((v25 | v11) & 1) == 0)
    {
      [v18 minusSet:v23];
    }
  }

  v27 = [v18 allObjects];

  return v27;
}

+ (id)allowedImportFromAppBundleIDsWithOriginalAppBundleIDs:(id)a3 managedAppBundleIDs:(id)a4 localAppBundleID:(id)a5 localAccountIsManaged:(BOOL)a6 mayOpenFromUnmanagedToManaged:(BOOL)a7 mayOpenFromManagedToUnmanaged:(BOOL)a8 isAppBundleIDExemptBlock:(id)a9 isAppBundleIDAccountBasedBlock:(id)a10
{
  v10 = a8;
  v11 = a7;
  v29 = a6;
  v14 = a4;
  v15 = a5;
  v16 = a9;
  v17 = a10;
  v18 = [MEMORY[0x1E695DFA8] setWithArray:a3];
  v19 = +[MCRestrictionManager sharedManager];
  v20 = [v19 restrictedAppBundleIDs];

  if ([v20 count])
  {
    [v18 minusSet:v20];
  }

  v21 = +[MCRestrictionManager sharedManager];
  v22 = [v21 effectiveWhitelistedAppBundleIDs];

  if ([v22 count])
  {
    [v18 intersectSet:v22];
  }

  v23 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  if ((!v11 || !v10) && (v16[2](v16, v15) & 1) == 0)
  {
    v24 = v17[2](v17, v15);
    v25 = v29;
    if ((v24 & 1) == 0)
    {
      v25 = [v23 containsObject:v15];
    }

    if (v25 && !v11)
    {
      v26 = v25;
      [v18 intersectSet:v23];
      v25 = v26;
    }

    if (((v25 | v10) & 1) == 0)
    {
      [v18 minusSet:v23];
    }
  }

  v27 = [v18 allObjects];

  return v27;
}

+ (id)allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs:(id)a3 managedAppBundleIDs:(id)a4 hostAppIsManaged:(BOOL)a5 mayOpenFromUnmanagedToManaged:(BOOL)a6 mayOpenFromManagedToUnmanaged:(BOOL)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a4;
  v12 = [MEMORY[0x1E695DFA8] setWithArray:a3];
  v13 = +[MCRestrictionManager sharedManager];
  v14 = [v13 restrictedAppBundleIDs];

  if ([v14 count])
  {
    [v12 minusSet:v14];
  }

  v15 = +[MCRestrictionManager sharedManager];
  v16 = [v15 effectiveWhitelistedAppBundleIDs];

  if ([v16 count])
  {
    [v12 intersectSet:v16];
  }

  v17 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  if (!v8 || !a7)
  {
    if (v9 && !a7)
    {
      [v12 intersectSet:v17];
    }

    if (!v9 && !v8)
    {
      [v12 minusSet:v17];
    }
  }

  v18 = [v12 allObjects];

  return v18;
}

+ (BOOL)isWebContentFilterUIActiveWithRestrictionDictionary:(id)a3
{
  v3 = a3;
  if ([MCRestrictionManager restrictedBoolForFeature:@"forceWebContentFilterAuto" withRestrictionsDictionary:v3]== 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MCRestrictionManager intersectedValuesForFeature:@"webContentFilterAutoPermittedURLs" withRestrictionsDictionary:v3];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [MCRestrictionManager intersectedValuesForFeature:@"webContentFilterWhitelistedURLs" withRestrictionsDictionary:v3];
      if (v6)
      {
        v4 = 0;
      }

      else
      {
        v7 = [MCRestrictionManager unionValuesForFeature:@"webContentFilterBlacklistedURLs" withRestrictionsDictionary:v3];
        v4 = v7 == 0;
      }
    }
  }

  return v4;
}

@end