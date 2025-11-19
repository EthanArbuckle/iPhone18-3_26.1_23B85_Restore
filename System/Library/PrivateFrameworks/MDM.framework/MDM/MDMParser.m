@interface MDMParser
+ (BOOL)_dmfAction:(unint64_t *)a3 fromMDMActionString:(id)a4;
+ (BOOL)_useDelayFlagAllowed;
+ (id)_DMFKeysToMCKeys;
+ (id)_MCKeysToDMFKeys;
+ (id)_MCKeysWithNoMatchingDMFKey;
+ (id)_errorFromDMFSoftwareUpdateError:(id)a3;
+ (id)_errorWithDomain:(id)a3 code:(int64_t)a4 descriptionKey:(id)a5 underlyingError:(id)a6 type:(id)a7;
+ (id)_numericAccessibilitySettingsKeys;
+ (id)_resolvedInstallActionStringForAction:(unint64_t)a3;
+ (id)_statusFromError:(id)a3 action:(unint64_t)a4;
+ (id)_stringForAppState:(unint64_t)a3;
+ (id)_updateDictionaryFromUpdate:(id)a3;
+ (id)errorChainFromError:(id)a3;
+ (id)malformedRequestErrorResult;
+ (unint64_t)_shouldUseDelayWithRequest:(id)a3;
- (BOOL)_analyticsRequiresNetworkTetheringFromRequest:(id)a3;
- (BOOL)_identifiersIsStringArray:(id)a3;
- (BOOL)_isChlorineEligible;
- (BOOL)_isDDMProfileIdentifier:(id)a3;
- (BOOL)_isManagedApp:(id)a3;
- (BOOL)_isManagedAppFromManagementInformation:(id)a3;
- (BOOL)_isProfileIdentifierManaged:(id)a3;
- (BOOL)_isProvisioningProfileUUIDManaged:(id)a3;
- (BOOL)_isPurchaseMethodAllowed:(int)a3 onUserEnrollment:(BOOL)a4;
- (BOOL)_platformSupportsCellularPlan;
- (BOOL)_platformSupportsClearingRestrictionsPassword;
- (BOOL)_platformSupportsInviteToVPP;
- (BOOL)_platformSupportsLostMode;
- (BOOL)_platformSupportsMediaCommands;
- (BOOL)_platformSupportsMirroring;
- (BOOL)_platformSupportsOSUpdateManagement;
- (BOOL)_platformSupportsRestart;
- (BOOL)_platformSupportsShutdown;
- (BOOL)_platfromSupportsRedemptionCodes;
- (BOOL)_rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:(id)a3;
- (BOOL)_validateSetting:(id)a3 accessRights:(unint64_t)a4 outError:(id *)a5;
- (MDMParser)initWithManagingProfileIdentifier:(id)a3;
- (MDMServerCore)server;
- (id)_accessibilitySettings;
- (id)_allCommands;
- (id)_allSettingsItems;
- (id)_analyticsCommandNameFromRequest:(id)a3;
- (id)_appAlreadyInstalledErrorWithBundleID:(id)a3;
- (id)_appAlreadyInstalledErrorWithiTunesStoreID:(id)a3;
- (id)_appAlreadyQueuedErrorWithBundleID:(id)a3;
- (id)_appAlreadyQueuedErrorWithiTunesStoreID:(id)a3;
- (id)_appAttributesWithRequestedAttributes:(id)a3;
- (id)_appManagementFlagsWithRequestedFlags:(id)a3;
- (id)_appStoreDisabledError;
- (id)_applyRedemptionCode:(id)a3 assertion:(id)a4;
- (id)_cannotValidateAppIDErrorUnderlyingError:(id)a3;
- (id)_certificateList:(id)a3;
- (id)_clearPasscode:(id)a3;
- (id)_commandSetDataSeparatedDeviceEnrollment;
- (id)_commandSetDataSeparatedDeviceEnrollment_once;
- (id)_commandSetDeviceEnrollment;
- (id)_commandSetDeviceEnrollment_once;
- (id)_commandSetSharediPad;
- (id)_commandSetSharediPad_once;
- (id)_commandSetSupervised;
- (id)_commandSetSupervised_once;
- (id)_commandSetUserEnrollment;
- (id)_commandSetUserEnrollment_once;
- (id)_declarativeManagement:(id)a3;
- (id)_deleteAllUsersWithForceDeletion:(BOOL)a3;
- (id)_deleteUser:(id)a3;
- (id)_deviceInformationWithRequest:(id)a3 accessRights:(unint64_t)a4;
- (id)_deviceInformationWithRequest:(id)a3 allowedQueries:(id)a4;
- (id)_ephemeralSupervisedSettingsSet;
- (id)_ephemeralSupervisedSettingsSet_once;
- (id)_handleSetAppManagementInfoRequest:(id)a3 outAdditionalResponseKeys:(id *)a4 block:(id)a5;
- (id)_installApplicationCouldNotModifyDDMAppsError;
- (id)_installProfile:(id)a3 accessRights:(unint64_t)a4 installationType:(int64_t)a5;
- (id)_installProvisioningProfile:(id)a3;
- (id)_installedApplicationList:(id)a3;
- (id)_invalidManifestErrorWithURL:(id)a3 underlyingError:(id)a4;
- (id)_invalidRequestTypeError:(id)a3;
- (id)_invalidRequestTypeInMDMLostModeError:(id)a3;
- (id)_invalidRequestTypeInSingleAppModeError:(id)a3;
- (id)_licenseNotFoundErrorWithBundleID:(id)a3 underlyingError:(id)a4;
- (id)_licenseNotFoundErrorWithiTunesStoreID:(id)a3 underlyingError:(id)a4;
- (id)_malformedRequestError;
- (id)_managedApplicationAttributes:(id)a3;
- (id)_managedApplicationConfiguration:(id)a3;
- (id)_managedApplicationFeedback:(id)a3;
- (id)_managedApplicationList:(id)a3;
- (id)_managedByDDMError:(id)a3;
- (id)_nonSupervisedSettingsSet;
- (id)_nonSupervisedSettingsSetWithUserEnrollment;
- (id)_nonSupervisedSettingsSetWithUserEnrollment_once;
- (id)_nonSupervisedSettingsSet_once;
- (id)_notAuthorizedError;
- (id)_notInRRTSModeError;
- (id)_notManagedAndNotSupervisedErrorAppID:(id)a3;
- (id)_notManagedErrorAppID:(id)a3;
- (id)_notNetworkTetheredError;
- (id)_originator;
- (id)_performSetAccessibilitySettings:(id)a3;
- (id)_performSetAppAnalytics:(id)a3;
- (id)_performSetAppAttributes:(id)a3 outAdditionalResponseKeys:(id *)a4;
- (id)_performSetAppConfig:(id)a3 outAdditionalResponseKeys:(id *)a4;
- (id)_performSetAwaitUserConfiguration:(id)a3;
- (id)_performSetBluetooth:(id)a3;
- (id)_performSetDataRoaming:(id)a3;
- (id)_performSetDefaultApplications:(id)a3;
- (id)_performSetDeviceName:(id)a3;
- (id)_performSetDiagnosticSubmission:(id)a3;
- (id)_performSetGracePeriod:(id)a3;
- (id)_performSetMAIDDefaultDomains:(id)a3;
- (id)_performSetMDMOptions:(id)a3;
- (id)_performSetMaximumResidentUsers:(id)a3;
- (id)_performSetOnlineAuthenticationGracePeriod:(id)a3;
- (id)_performSetOrganizationInfo:(id)a3;
- (id)_performSetPersonalHotspot:(id)a3;
- (id)_performSetResidentUserQuotaSize:(id)a3;
- (id)_performSetResidentUsers:(id)a3;
- (id)_performSetSessionTimeout:(id)a3;
- (id)_performSetSharedDeviceConfiguration:(id)a3;
- (id)_performSetSkipLanguageAndLocaleSetupForNewUsers:(id)a3;
- (id)_performSetTemporarySessionOnly:(id)a3;
- (id)_performSetTimezone:(id)a3;
- (id)_performSetUpdatePath:(id)a3;
- (id)_performSetVoiceRoaming:(id)a3;
- (id)_performSetWallpaper:(id)a3;
- (id)_performSetting:(id)a3 outAdditionalResponseKeys:(id *)a4 outRestartAppleTVApp:(BOOL *)a5;
- (id)_profileList:(id)a3 filterFlags:(int)a4;
- (id)_provisioningProfileList:(id)a3;
- (id)_refreshCellularPlans:(id)a3;
- (id)_removeApplication:(id)a3;
- (id)_removeProfile:(id)a3;
- (id)_removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4;
- (id)_removeProvisioningProfile:(id)a3;
- (id)_responseForMalformedUpdateRequest;
- (id)_restrictions:(id)a3 withProfileFilterFlags:(int)a4;
- (id)_serviceSubscriptionPropertiesWithDMFKeysMappedToMCKeys:(id)a3;
- (id)_serviceSubscriptionsWithDMFKeysMappedToMCKeys:(id)a3;
- (id)_setResidentUsersNumber:(id)a3;
- (id)_settings:(id)a3 accessRights:(unint64_t)a4;
- (id)_softwareUpdatesNotPermittedWithLoggedInUserError;
- (id)_stringForBookState:(unint64_t)a3;
- (id)_supervisedSettingsSet;
- (id)_supervisedSettingsSet_once;
- (id)_unavailableCommandsBeforeFirstUnlock;
- (id)_unavailableCommandsDuringIncompleteAccountDrivenEnrollment;
- (id)_unavailableCommandsInLimitedAppsMode;
- (id)_unavailableCommandsWhileLocked;
- (id)_unblockableCommands;
- (id)_validateApplications:(id)a3;
- (id)unavailableCommandsDuringBuddy;
- (id)unavailableCommandsWhileInMDMLostMode;
- (unint64_t)_profileInstallationStyleForRequest:(id)a3;
- (void)_activationLockBypassCodeRequest:(id)a3 completionBlock:(id)a4;
- (void)_applyOverridesToDeviceInformationDictionary:(id)a3;
- (void)_availableOSUpdates:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_clearActivationLockBypassCodeRequest:(id)a3 completionBlock:(id)a4;
- (void)_deviceConfigured:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_dmfScheduleOSUpdate:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_installApplication:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_installMedia:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_inviteToProgramRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_managedMediaList:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_mdmScheduleOSUpdate:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_performInstallApplicationRequestWithManifestURL:(id)a3 iTunesStoreIDObj:(id)a4 bundleId:(id)a5 flagsObj:(id)a6 attributes:(id)a7 configuration:(id)a8 manageChangeStr:(id)a9 purchaseMethodValue:(int)a10 personaID:(id)a11 completionBlock:(id)a12;
- (void)_performSetDefaultApp:(id)a3 forCategory:(unint64_t)a4 completion:(id)a5;
- (void)_performSetDefaultBrowser:(id)a3 completion:(id)a4;
- (void)_processRequest:(id)a3 accessRights:(unint64_t)a4 assertion:(id)a5 completionBlock:(id)a6;
- (void)_rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:(id)a3;
- (void)_removeMedia:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_requestMirroringRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_scheduleOSUpdate:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_scheduleOSUpdateScan:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)a3 response:(id)a4;
- (void)_statusOfOSUpdates:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_stopMirroringRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)didInitiateSwitchUser;
- (void)processRequest:(id)a3 accessRights:(unint64_t)a4 assertion:(id)a5 completionBlock:(id)a6;
- (void)willTerminateProcess:(id)a3;
@end

@implementation MDMParser

- (MDMParser)initWithManagingProfileIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MDMParser;
  v6 = [(MDMParser *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managingProfileIdentifier, a3);
    v8 = [MEMORY[0x277D24640] sharedConfiguration];
    v7->_isChaperoned = [v8 isSupervised];

    v7->_isMDM = v5 != 0;
    v9 = objc_opt_new();
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v9;
  }

  return v7;
}

- (id)_unavailableCommandsWhileLocked
{
  if (_unavailableCommandsWhileLocked_once != -1)
  {
    [MDMParser _unavailableCommandsWhileLocked];
  }

  v3 = _unavailableCommandsWhileLocked_set;

  return v3;
}

void __44__MDMParser__unavailableCommandsWhileLocked__block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"InstallProfile";
  v5[1] = @"InstallProfileSilent";
  v5[2] = @"InstallProvisioningProfile";
  v5[3] = @"RequestUnlockToken";
  v5[4] = @"SecurityInfo";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsWhileLocked_set;
  _unavailableCommandsWhileLocked_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_unavailableCommandsBeforeFirstUnlock
{
  if (_unavailableCommandsBeforeFirstUnlock_once != -1)
  {
    [MDMParser _unavailableCommandsBeforeFirstUnlock];
  }

  v3 = _unavailableCommandsBeforeFirstUnlock_set;

  return v3;
}

void __50__MDMParser__unavailableCommandsBeforeFirstUnlock__block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"ManagedMediaList";
  v5[1] = @"InstallMedia";
  v5[2] = @"RemoveMedia";
  v5[3] = @"CertificateList";
  v5[4] = @"DeclarativeManagement";
  v5[5] = @"RemoveProfile";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsBeforeFirstUnlock_set;
  _unavailableCommandsBeforeFirstUnlock_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_unavailableCommandsInLimitedAppsMode
{
  if (_unavailableCommandsInLimitedAppsMode_onceToken != -1)
  {
    [MDMParser _unavailableCommandsInLimitedAppsMode];
  }

  v3 = _unavailableCommandsInLimitedAppsMode_set;

  return v3;
}

void __50__MDMParser__unavailableCommandsInLimitedAppsMode__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"ApplyRedemptionCode";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsInLimitedAppsMode_set;
  _unavailableCommandsInLimitedAppsMode_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_unavailableCommandsDuringIncompleteAccountDrivenEnrollment
{
  if (_unavailableCommandsDuringIncompleteAccountDrivenEnrollment_onceToken != -1)
  {
    [MDMParser _unavailableCommandsDuringIncompleteAccountDrivenEnrollment];
  }

  v3 = _unavailableCommandsDuringIncompleteAccountDrivenEnrollment_set;

  return v3;
}

void __72__MDMParser__unavailableCommandsDuringIncompleteAccountDrivenEnrollment__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"InviteToProgram";
  v5[1] = @"InstallApplication";
  v5[2] = @"ApplyRedemptionCode";
  v5[3] = @"InstallMedia";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = _unavailableCommandsDuringIncompleteAccountDrivenEnrollment_set;
  _unavailableCommandsDuringIncompleteAccountDrivenEnrollment_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)unavailableCommandsDuringBuddy
{
  if (unavailableCommandsDuringBuddy_onceToken != -1)
  {
    [MDMParser unavailableCommandsDuringBuddy];
  }

  v2 = [MEMORY[0x277D24640] sharedConfiguration];
  v3 = [v2 isSupervised];
  v4 = &unavailableCommandsDuringBuddy_supervisedSet;
  if (!v3)
  {
    v4 = &unavailableCommandsDuringBuddy_unsupervisedSet;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

void __43__MDMParser_unavailableCommandsDuringBuddy__block_invoke()
{
  v10[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"ApplyRedemptionCode";
  v10[1] = @"DeviceLock";
  v10[2] = @"DisableLostMode";
  v10[3] = @"EnableLostMode";
  v10[4] = @"InstallMedia";
  v10[5] = @"InviteToProgram";
  v10[6] = @"RequestMirroring";
  v10[7] = @"UserList";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = unavailableCommandsDuringBuddy_supervisedSet;
  unavailableCommandsDuringBuddy_supervisedSet = v2;

  v4 = MEMORY[0x277CBEB98];
  v9[0] = @"ApplyRedemptionCode";
  v9[1] = @"DeviceLock";
  v9[2] = @"DisableLostMode";
  v9[3] = @"EnableLostMode";
  v9[4] = @"InstallApplication";
  v9[5] = @"InstallMedia";
  v9[6] = @"InviteToProgram";
  v9[7] = @"RequestMirroring";
  v9[8] = @"UserList";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:9];
  v6 = [v4 setWithArray:v5];
  v7 = unavailableCommandsDuringBuddy_unsupervisedSet;
  unavailableCommandsDuringBuddy_unsupervisedSet = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)unavailableCommandsWhileInMDMLostMode
{
  if (unavailableCommandsWhileInMDMLostMode_onceToken != -1)
  {
    [MDMParser unavailableCommandsWhileInMDMLostMode];
  }

  v3 = unavailableCommandsWhileInMDMLostMode_set;

  return v3;
}

void __50__MDMParser_unavailableCommandsWhileInMDMLostMode__block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"InviteToProgram";
  v5[1] = @"InstallApplication";
  v5[2] = @"ApplyRedemptionCode";
  v5[3] = @"InstallMedia";
  v5[4] = @"RequestMirroring";
  v5[5] = @"DeviceLock";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = unavailableCommandsWhileInMDMLostMode_set;
  unavailableCommandsWhileInMDMLostMode_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_platformSupportsMirroring
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsInviteToVPP
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsMediaCommands
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platfromSupportsRedemptionCodes
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsCellularPlan
{
  if ([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isWatch] ^ 1;
  }
}

- (BOOL)_platformSupportsLostMode
{
  if ([MEMORY[0x277D03530] isAppleTV])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsOSUpdateManagement
{
  if ([MEMORY[0x277D03530] isWatch])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsRestart
{
  if ([MEMORY[0x277D03530] isWatch])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsShutdown
{
  if ([MEMORY[0x277D03530] isWatch] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isAppleTV"))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (BOOL)_platformSupportsClearingRestrictionsPassword
{
  if ([MEMORY[0x277D03530] isWatch])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
  }
}

- (id)_commandSetDeviceEnrollment
{
  v24[20] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v24[0] = @"CertificateList";
  v24[1] = @"DeclarativeManagement";
  v24[2] = @"DeviceInformation";
  v24[3] = @"DeviceLock";
  v24[4] = @"EraseDevice";
  v24[5] = @"InstallApplication";
  v24[6] = @"InstallProfile";
  v24[7] = @"InstallProvisioningProfile";
  v24[8] = @"InstalledApplicationList";
  v24[9] = @"ManagedApplicationAttributes";
  v24[10] = @"ManagedApplicationConfiguration";
  v24[11] = @"ManagedApplicationList";
  v24[12] = @"ProfileList";
  v24[13] = @"ProvisioningProfileList";
  v24[14] = @"RemoveApplication";
  v24[15] = @"RemoveProfile";
  v24[16] = @"RemoveProvisioningProfile";
  v24[17] = @"Restrictions";
  v24[18] = @"SecurityInfo";
  v24[19] = @"Settings";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:20];
  v5 = [v3 setWithArray:v4];

  if ([(MDMParser *)self _platformSupportsApplicationFeedback])
  {
    v23 = @"ManagedApplicationFeedback";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v5 addObjectsFromArray:v6];
  }

  if ([(MDMParser *)self _platformSupportsValidatingApplications])
  {
    v22 = @"ValidateApplications";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v5 addObjectsFromArray:v7];
  }

  if ([(MDMParser *)self _platformHasPasscode])
  {
    v21 = @"ClearPasscode";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v5 addObjectsFromArray:v8];
  }

  if ([(MDMParser *)self _platfromSupportsRedemptionCodes])
  {
    v20 = @"ApplyRedemptionCode";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v5 addObjectsFromArray:v9];
  }

  if ([(MDMParser *)self _platformSupportsInviteToVPP])
  {
    v19 = @"InviteToProgram";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v5 addObjectsFromArray:v10];
  }

  if ([(MDMParser *)self _platformSupportsMirroring])
  {
    v18 = @"RequestMirroring";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v5 addObjectsFromArray:v11];
  }

  if ([(MDMParser *)self _platformSupportsCellularPlan])
  {
    v17 = @"RefreshCellularPlans";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v5 addObjectsFromArray:v12];
  }

  if (-[MDMParser _platformSupportsMediaCommands](self, "_platformSupportsMediaCommands") || [MEMORY[0x277D03500] forceMediaCommandSupport])
  {
    v16[0] = @"InstallMedia";
    v16[1] = @"ManagedMediaList";
    v16[2] = @"RemoveMedia";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    [v5 addObjectsFromArray:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_commandSetDeviceEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MDMParser__commandSetDeviceEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetDeviceEnrollment_once_once != -1)
  {
    dispatch_once(&_commandSetDeviceEnrollment_once_once, block);
  }

  return _commandSetDeviceEnrollment_once_commandSet;
}

uint64_t __45__MDMParser__commandSetDeviceEnrollment_once__block_invoke(uint64_t a1)
{
  _commandSetDeviceEnrollment_once_commandSet = [*(a1 + 32) _commandSetDeviceEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetSupervised
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = [(MDMParser *)self _commandSetDeviceEnrollment];
  v4 = [v3 mutableCopy];

  if ([(MDMParser *)self _platformSupportsLostMode])
  {
    v22[0] = @"EnableLostMode";
    v22[1] = @"PlayLostModeSound";
    v22[2] = @"DisableLostMode";
    v22[3] = @"DeviceLocation";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [v4 addObjectsFromArray:v5];
  }

  if ([(MDMParser *)self _platformSupportsMirroring])
  {
    v21 = @"StopMirroring";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v4 addObjectsFromArray:v6];
  }

  if ([(MDMParser *)self _platformSupportsOSUpdateManagement])
  {
    v20[0] = @"ScheduleOSUpdate";
    v20[1] = @"ScheduleOSUpdateScan";
    v20[2] = @"AvailableOSUpdates";
    v20[3] = @"OSUpdateStatus";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    [v4 addObjectsFromArray:v7];
  }

  if ([(MDMParser *)self _platformSupportsDEP])
  {
    v19 = @"DeviceConfigured";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v4 addObjectsFromArray:v8];
  }

  if ([(MDMParser *)self _platformSupportsActivationLock])
  {
    v18[0] = @"ActivationLockBypassCode";
    v18[1] = @"ClearActivationLockBypassCode";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v4 addObjectsFromArray:v9];
  }

  if ([(MDMParser *)self _platformSupportsRestart])
  {
    v17 = @"RestartDevice";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v4 addObjectsFromArray:v10];
  }

  if ([(MDMParser *)self _platformSupportsShutdown])
  {
    v16 = @"ShutDownDevice";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v4 addObjectsFromArray:v11];
  }

  if ([(MDMParser *)self _platformSupportsClearingRestrictionsPassword])
  {
    v15 = @"ClearRestrictionsPassword";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v4 addObjectsFromArray:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_commandSetSupervised_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDMParser__commandSetSupervised_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetSupervised_once_once != -1)
  {
    dispatch_once(&_commandSetSupervised_once_once, block);
  }

  return _commandSetSupervised_once_commandSet;
}

uint64_t __39__MDMParser__commandSetSupervised_once__block_invoke(uint64_t a1)
{
  _commandSetSupervised_once_commandSet = [*(a1 + 32) _commandSetSupervised];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetDataSeparatedDeviceEnrollment
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [(MDMParser *)self _commandSetDeviceEnrollment];
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x277CBEB98];
  v9[0] = @"InviteToProgram";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v4 setWithArray:v5];
  [v3 minusSet:v6];

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_commandSetDataSeparatedDeviceEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MDMParser__commandSetDataSeparatedDeviceEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetDataSeparatedDeviceEnrollment_once_once != -1)
  {
    dispatch_once(&_commandSetDataSeparatedDeviceEnrollment_once_once, block);
  }

  return _commandSetDataSeparatedDeviceEnrollment_once_commandSet;
}

uint64_t __58__MDMParser__commandSetDataSeparatedDeviceEnrollment_once__block_invoke(uint64_t a1)
{
  _commandSetDataSeparatedDeviceEnrollment_once_commandSet = [*(a1 + 32) _commandSetDataSeparatedDeviceEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetUserEnrollment
{
  v12[20] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v12[0] = @"DeviceInformation";
  v12[1] = @"InstallApplication";
  v12[2] = @"InstalledApplicationList";
  v12[3] = @"InstallProfile";
  v12[4] = @"InstallProvisioningProfile";
  v12[5] = @"ManagedApplicationAttributes";
  v12[6] = @"ManagedApplicationConfiguration";
  v12[7] = @"ManagedApplicationFeedback";
  v12[8] = @"ManagedApplicationList";
  v12[9] = @"ProfileList";
  v12[10] = @"ProvisioningProfileList";
  v12[11] = @"RemoveApplication";
  v12[12] = @"RemoveProfile";
  v12[13] = @"RemoveProvisioningProfile";
  v12[14] = @"SecurityInfo";
  v12[15] = @"Settings";
  v12[16] = @"ValidateApplications";
  v12[17] = @"CertificateList";
  v12[18] = @"DeclarativeManagement";
  v12[19] = @"DeviceLock";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:20];
  v5 = [v3 setWithArray:v4];

  if (-[MDMParser _platformSupportsMediaCommands](self, "_platformSupportsMediaCommands") || [MEMORY[0x277D03500] forceMediaCommandSupport])
  {
    v11[0] = @"InstallMedia";
    v11[1] = @"ManagedMediaList";
    v11[2] = @"RemoveMedia";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    [v5 addObjectsFromArray:v6];
  }

  if ([(MDMParser *)self _platformSupportsMirroring])
  {
    v10 = @"RequestMirroring";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [v5 addObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_commandSetUserEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MDMParser__commandSetUserEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetUserEnrollment_once_once != -1)
  {
    dispatch_once(&_commandSetUserEnrollment_once_once, block);
  }

  return _commandSetUserEnrollment_once_commandSet;
}

uint64_t __43__MDMParser__commandSetUserEnrollment_once__block_invoke(uint64_t a1)
{
  _commandSetUserEnrollment_once_commandSet = [*(a1 + 32) _commandSetUserEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_commandSetSharediPad
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = [(MDMParser *)self _commandSetSupervised];
  v3 = [v2 mutableCopy];

  v11[0] = @"UserList";
  v11[1] = @"LogOutUser";
  v11[2] = @"DeleteUser";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v5 = MEMORY[0x277CBEB98];
  v10[0] = @"ApplyRedemptionCode";
  v10[1] = @"ClearPasscode";
  v10[2] = @"ActivationLockBypassCode";
  v10[3] = @"ClearActivationLockBypassCode";
  v10[4] = @"ClearRestrictionsPassword";
  v10[5] = @"InviteToProgram";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];
  v7 = [v5 setWithArray:v6];

  [v3 addObjectsFromArray:v4];
  [v3 minusSet:v7];

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_commandSetSharediPad_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDMParser__commandSetSharediPad_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_commandSetSharediPad_once_once != -1)
  {
    dispatch_once(&_commandSetSharediPad_once_once, block);
  }

  return _commandSetSharediPad_once_commandSet;
}

uint64_t __39__MDMParser__commandSetSharediPad_once__block_invoke(uint64_t a1)
{
  _commandSetSharediPad_once_commandSet = [*(a1 + 32) _commandSetSharediPad];

  return MEMORY[0x2821F96F8]();
}

- (id)_allCommands
{
  v3 = [MEMORY[0x277D24640] sharedConfiguration];
  if ([v3 userMode] == 1)
  {
  }

  else
  {
    v4 = [MEMORY[0x277D03538] isSharediPad];

    if ((v4 & 1) == 0)
    {
      v7 = [MEMORY[0x277D24640] sharedConfiguration];
      v8 = [v7 isSupervised];

      if (v8)
      {
        v5 = [(MDMParser *)self _commandSetSupervised_once];
      }

      else
      {
        v9 = [MEMORY[0x277D24648] sharedConfiguration];
        v10 = [v9 isUserEnrollment];

        if (v10)
        {
          v5 = [(MDMParser *)self _commandSetUserEnrollment_once];
        }

        else
        {
          v11 = [MEMORY[0x277D24648] sharedConfiguration];
          v12 = [v11 personaID];

          if (v12)
          {
            [(MDMParser *)self _commandSetDataSeparatedDeviceEnrollment_once];
          }

          else
          {
            [(MDMParser *)self _commandSetDeviceEnrollment_once];
          }
          v5 = ;
        }
      }

      goto LABEL_5;
    }
  }

  v5 = [(MDMParser *)self _commandSetSharediPad_once];
LABEL_5:

  return v5;
}

- (id)_unblockableCommands
{
  if (_unblockableCommands_once != -1)
  {
    [MDMParser _unblockableCommands];
  }

  v3 = _unblockableCommands_commandSet;

  return v3;
}

void __33__MDMParser__unblockableCommands__block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"DeviceInformation";
  v5[1] = @"EraseDevice";
  v5[2] = @"InstalledApplicationList";
  v5[3] = @"ProfileList";
  v5[4] = @"ProvisioningProfileList";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = _unblockableCommands_commandSet;
  _unblockableCommands_commandSet = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_ephemeralSupervisedSettingsSet
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = [(MDMParser *)self _supervisedSettingsSet];
  v3 = [v2 mutableCopy];

  v7[0] = @"MaximumResidentUsers";
  v7[1] = @"SharedDeviceConfiguration";
  v7[2] = @"DiagnosticSubmission";
  v7[3] = @"AppAnalytics";
  v7[4] = @"PasscodeLockGracePeriod";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  [v3 addObjectsFromArray:v4];

  [v3 removeObject:@"AccessibilitySettings"];
  [v3 removeObject:@"DefaultApplications"];
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_supervisedSettingsSet
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [(MDMParser *)self _nonSupervisedSettingsSet];
  v3 = [v2 mutableCopy];

  if ([MEMORY[0x277D03530] isAppleTV])
  {
    v21 = @"DeviceName";
    v22 = @"TimeZone";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v21;
    v6 = 2;
LABEL_8:
    v7 = [v4 arrayWithObjects:v5 count:{v6, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
    [v3 addObjectsFromArray:v7];

    goto LABEL_9;
  }

  if ([MEMORY[0x277D03530] isWatch])
  {
    v20 = @"AccessibilitySettings";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v20;
    v6 = 1;
    goto LABEL_8;
  }

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isPad"))
  {
    v13 = @"AccessibilitySettings";
    v14 = @"DeviceName";
    v15 = @"TimeZone";
    v16 = @"Bluetooth";
    v17 = @"SharedDeviceConfiguration";
    v18 = @"SoftwareUpdateSettings";
    v19 = @"Wallpaper";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v13;
    v6 = 7;
    goto LABEL_8;
  }

  if ([MEMORY[0x277D03530] isVisionDevice])
  {
    v10 = @"DeviceName";
    v11 = @"TimeZone";
    v12 = @"SharedDeviceConfiguration";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v10;
    v6 = 3;
    goto LABEL_8;
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_nonSupervisedSettingsSetWithUserEnrollment
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v7[0] = @"ApplicationAttributes";
  v7[1] = @"ApplicationConfiguration";
  v7[2] = @"OrganizationInfo";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_nonSupervisedSettingsSet
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v13[0] = @"OrganizationInfo";
  v13[1] = @"ApplicationAttributes";
  v13[2] = @"ApplicationConfiguration";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v4 = [v2 setWithArray:v3];

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isPad") & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isAppleTV") & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    v12 = @"MDMOptions";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [v4 addObjectsFromArray:v5];
  }

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || (objc_msgSend(MEMORY[0x277D03530], "isPad") & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isVisionDevice"))
  {
    v11 = @"DefaultApplications";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v4 addObjectsFromArray:v6];
  }

  if (([MEMORY[0x277D03530] isPhone] & 1) != 0 || objc_msgSend(MEMORY[0x277D03530], "isPad"))
  {
    v10[0] = @"DataRoaming";
    v10[1] = @"VoiceRoaming";
    v10[2] = @"PersonalHotspot";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    [v4 addObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_ephemeralSupervisedSettingsSet_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MDMParser__ephemeralSupervisedSettingsSet_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_ephemeralSupervisedSettingsSet_once_once != -1)
  {
    dispatch_once(&_ephemeralSupervisedSettingsSet_once_once, block);
  }

  return _ephemeralSupervisedSettingsSet_once_commandSet;
}

uint64_t __49__MDMParser__ephemeralSupervisedSettingsSet_once__block_invoke(uint64_t a1)
{
  _ephemeralSupervisedSettingsSet_once_commandSet = [*(a1 + 32) _ephemeralSupervisedSettingsSet];

  return MEMORY[0x2821F96F8]();
}

- (id)_supervisedSettingsSet_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MDMParser__supervisedSettingsSet_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_supervisedSettingsSet_once_once != -1)
  {
    dispatch_once(&_supervisedSettingsSet_once_once, block);
  }

  return _supervisedSettingsSet_once_commandSet;
}

uint64_t __40__MDMParser__supervisedSettingsSet_once__block_invoke(uint64_t a1)
{
  _supervisedSettingsSet_once_commandSet = [*(a1 + 32) _supervisedSettingsSet];

  return MEMORY[0x2821F96F8]();
}

- (id)_nonSupervisedSettingsSetWithUserEnrollment_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MDMParser__nonSupervisedSettingsSetWithUserEnrollment_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_nonSupervisedSettingsSetWithUserEnrollment_once_once != -1)
  {
    dispatch_once(&_nonSupervisedSettingsSetWithUserEnrollment_once_once, block);
  }

  return _nonSupervisedSettingsSetWithUserEnrollment_once_commandSet;
}

uint64_t __61__MDMParser__nonSupervisedSettingsSetWithUserEnrollment_once__block_invoke(uint64_t a1)
{
  _nonSupervisedSettingsSetWithUserEnrollment_once_commandSet = [*(a1 + 32) _nonSupervisedSettingsSetWithUserEnrollment];

  return MEMORY[0x2821F96F8]();
}

- (id)_nonSupervisedSettingsSet_once
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MDMParser__nonSupervisedSettingsSet_once__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  if (_nonSupervisedSettingsSet_once_once != -1)
  {
    dispatch_once(&_nonSupervisedSettingsSet_once_once, block);
  }

  return _nonSupervisedSettingsSet_once_commandSet;
}

uint64_t __43__MDMParser__nonSupervisedSettingsSet_once__block_invoke(uint64_t a1)
{
  _nonSupervisedSettingsSet_once_commandSet = [*(a1 + 32) _nonSupervisedSettingsSet];

  return MEMORY[0x2821F96F8]();
}

- (id)_allSettingsItems
{
  if ([(MDMParser *)self isChaperoned])
  {
    v3 = [MEMORY[0x277D24640] sharedConfiguration];
    if ([v3 userMode] == 1)
    {
      [(MDMParser *)self _ephemeralSupervisedSettingsSet_once];
    }

    else
    {
      [(MDMParser *)self _supervisedSettingsSet_once];
    }
    v6 = ;
  }

  else
  {
    v4 = [MEMORY[0x277D24648] sharedConfiguration];
    v5 = [v4 isUserEnrollment];

    if (v5)
    {
      [(MDMParser *)self _nonSupervisedSettingsSetWithUserEnrollment_once];
    }

    else
    {
      [(MDMParser *)self _nonSupervisedSettingsSet_once];
    }
    v6 = ;
  }

  return v6;
}

- (void)processRequest:(id)a3 accessRights:(unint64_t)a4 assertion:(id)a5 completionBlock:(id)a6
{
  v105 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 objectForKey:@"RequestType"];
  v100 = [v9 objectForKey:@"RequestRequiresNetworkTether"];
  v13 = MDMDirtyEnrollmentStateFilePath();
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277D03198]);
    v17 = [MEMORY[0x277CBEAC0] DMCDictionaryFromFile:v13];
    v18 = [v16 initWithDictionary:v17];
  }

  else
  {
    v18 = 0;
  }

  objc_opt_class();
  v19 = v100;
  if ((objc_opt_isKindOfClass() & 1) == 0 || v100 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_80;
  }

  v98 = v18;
  v20 = [(MDMParser *)self _allCommands];
  v21 = [v20 containsObject:v12];

  if (v21)
  {
    if ([(MDMParser *)self isMDMCommandBlocked])
    {
      v22 = [(MDMParser *)self _unblockableCommands];
      v23 = [v22 containsObject:v12];

      if ((v23 & 1) == 0)
      {
        v33 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v34 = "MDM command is being blocked...";
          goto LABEL_34;
        }

LABEL_35:
        v43 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_36:
        v27 = v43;
        goto LABEL_79;
      }
    }

    v24 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
      v25 = [(MDMParser *)self isChaperoned];
      v26 = @"MDM";
      if (v25)
      {
        v26 = @"Supervised";
      }

      *buf = 138543618;
      v102 = v26;
      v103 = 2114;
      v104 = v12;
      _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_DEFAULT, "Attempting to perform %{public}@ request: %{public}@", buf, 0x16u);
    }

    if (([v12 isEqualToString:{@"ClearPasscode", v10}] & 1) == 0)
    {
      v24 = [v9 objectForKey:@"UnlockToken"];

      if (v24)
      {
        v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
        v10 = v97;
        v18 = v98;
        goto LABEL_80;
      }
    }

    v30 = MKBGetDeviceLockState();
    v31 = v30;
    v32 = 0;
    if (v30 && v30 != 3)
    {
      v24 = [(MDMParser *)self _unavailableCommandsWhileLocked];
      v32 = [v24 containsObject:v12];
    }

    if (v31 && v31 != 3)
    {
    }

    if (v32)
    {
      v33 = *(DMCLogObjects() + 8);
      v10 = v97;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v34 = "Device is locked";
LABEL_34:
        _os_log_impl(&dword_2561F5000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v35 = [v98 dirtyPersonaIDs];
    v36 = [MEMORY[0x277D24648] sharedConfiguration];
    v37 = [v36 personaID];
    v38 = [v35 containsObject:v37];

    if (v38)
    {
      v39 = [(MDMParser *)self _unavailableCommandsDuringIncompleteAccountDrivenEnrollment];
      v40 = [v39 containsObject:v12];

      if (v40)
      {
        v41 = *(DMCLogObjects() + 8);
        v10 = v97;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = "Account Driven Enrollment is not done yet";
LABEL_53:
          _os_log_impl(&dword_2561F5000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
          goto LABEL_54;
        }

        goto LABEL_54;
      }
    }

    v44 = MKBDeviceUnlockedSinceBoot();
    v10 = v97;
    if (v44 != 1)
    {
      v45 = v44;
      if (v44)
      {
        v48 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v102) = v45;
          _os_log_impl(&dword_2561F5000, v48, OS_LOG_TYPE_ERROR, "MKB returned error for device unlocked since boot: %d", buf, 8u);
        }
      }

      else
      {
        v46 = [(MDMParser *)self _unavailableCommandsBeforeFirstUnlock];
        v47 = [v46 containsObject:v12];

        if (v47)
        {
          v41 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v42 = "Device has not unlocked since boot";
            goto LABEL_53;
          }

LABEL_54:
          v55 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_55:
          v27 = v55;
LABEL_78:
          v19 = v100;
          goto LABEL_79;
        }
      }
    }

    if (+[MDMMCInterface isLimitedAppsMode])
    {
      v49 = [(MDMParser *)self _unavailableCommandsInLimitedAppsMode];
      v50 = [v49 containsObject:v12];

      if (v50)
      {
        v51 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v51, OS_LOG_TYPE_DEFAULT, "Device is in a limited apps mode", buf, 2u);
        }

        v52 = [(MDMParser *)self _invalidRequestTypeInSingleAppModeError:v12];
LABEL_77:
        v65 = v52;
        v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v52];

        goto LABEL_78;
      }
    }

    if ((DMCIsSetupBuddyDone() & 1) == 0)
    {
      v53 = [(MDMParser *)self unavailableCommandsDuringBuddy];
      v54 = [v53 containsObject:v12];

      if (v54)
      {
        v41 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = "Device is in Setup Assistant";
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    if (+[MDMFindMyUtilities isManagedLostModeActive])
    {
      v56 = [(MDMParser *)self unavailableCommandsWhileInMDMLostMode];
      v57 = [v56 containsObject:v12];

      if (v57)
      {
        v58 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v58, OS_LOG_TYPE_DEFAULT, "Device is in MDM Lost Mode", buf, 2u);
        }

        v59 = [(MDMParser *)self _invalidRequestTypeInMDMLostModeError:v12];
        v60 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v59];
        goto LABEL_69;
      }
    }

    v19 = v100;
    if (v100 && [v100 BOOLValue])
    {
      v61 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v61, OS_LOG_TYPE_DEFAULT, "Request requires network tether", buf, 2u);
      }

      if ((DMCDeviceIsNetworkTethered() & 1) == 0)
      {
        v64 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v64, OS_LOG_TYPE_ERROR, "No network tether was found. Failing command.", buf, 2u);
        }

        v52 = [(MDMParser *)self _notNetworkTetheredError];
        goto LABEL_77;
      }
    }

    if ([v12 isEqualToString:@"DeviceInformation"])
    {
      v62 = [MEMORY[0x277D24648] sharedConfiguration];
      v63 = [v62 isUserEnrollment];

      if (!v63)
      {
        v55 = [(MDMParser *)self _deviceInformationWithRequest:v9 accessRights:a4];
        goto LABEL_55;
      }

      v59 = [MEMORY[0x277D24658] allowedDeviceQueriesWithUserEnrollment];
      v60 = [(MDMParser *)self _deviceInformationWithRequest:v9 allowedQueries:v59];
LABEL_69:
      v27 = v60;

      goto LABEL_78;
    }

    if (([v12 isEqualToString:@"InstallProfile"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"InstallProfileSilent"))
    {
      v43 = [(MDMParser *)self _installProfile:v9 accessRights:a4];
      goto LABEL_36;
    }

    if (!-[MDMParser isChaperoned](self, "isChaperoned") && self->_managingProfileIdentifier && [v12 isEqualToString:@"RemoveProfile"])
    {
      v67 = [v9 objectForKey:@"Identifier"];
      if (v67)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v67 isEqualToString:self->_managingProfileIdentifier])
          {
            WeakRetained = objc_loadWeakRetained(&self->_server);

            if (WeakRetained)
            {
              v69 = objc_loadWeakRetained(&self->_server);
              v70 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
              v71 = [v69 responseFromBasicResponse:v70];
              v72 = [v69 sendResponseSynchronously:v71 outStatusCode:0 outError:0];
            }

            v73 = [(MDMParser *)self _removeProfile:v9];
          }
        }
      }

      v10 = v97;
    }

    v74 = [MEMORY[0x277D24648] sharedConfiguration];
    v75 = [v74 isUserEnrollment];

    if (v75)
    {
      goto LABEL_94;
    }

    v18 = v98;
    v76 = a4;
    if ([(MDMParser *)self isChaperoned])
    {
      v76 = 0x1FFFLL;
LABEL_97:
      v19 = v100;
      goto LABEL_100;
    }

    v77 = [v12 isEqualToString:@"ProfileList"];
    v19 = v100;
    if ((a4 & 1) != 0 && v77)
    {
      goto LABEL_100;
    }

    if ([v12 isEqualToString:@"InstallProfile"])
    {
      if ((a4 & 2) != 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v78 = [v12 isEqualToString:@"RemoveProfile"];
      if (a4 & 2) != 0 && (v78)
      {
        goto LABEL_100;
      }
    }

    v79 = [v12 isEqualToString:@"DeviceLock"];
    if ((a4 & 4) != 0 && v79)
    {
      v10 = v97;
      v18 = v98;
      goto LABEL_97;
    }

    v80 = [v12 isEqualToString:@"RequestUnlockToken"];
    if ((a4 & 4) == 0 || !v80)
    {
      v81 = [v12 isEqualToString:@"ClearPasscode"];
      if ((a4 & 4) == 0 || !v81)
      {
        v82 = [v12 isEqualToString:@"RestartDevice"];
        if ((a4 & 4) == 0 || !v82)
        {
          v83 = [v12 isEqualToString:@"ShutDownDevice"];
          if ((a4 & 4) == 0 || !v83)
          {
            v84 = [v12 isEqualToString:@"EraseDevice"];
            if ((a4 & 8) == 0 || (v84 & 1) == 0)
            {
              v85 = [v12 isEqualToString:@"CertificateList"];
              if ((a4 & 1) == 0 || !v85)
              {
                v86 = [v12 isEqualToString:@"ProvisioningProfileList"];
                if ((a4 & 0x40) == 0 || (v86 & 1) == 0)
                {
                  v87 = [v12 isEqualToString:@"InstallProvisioningProfile"];
                  if ((a4 & 0x80) == 0 || !v87)
                  {
                    v88 = [v12 isEqualToString:@"RemoveProvisioningProfile"];
                    if ((a4 & 0x80) == 0 || !v88)
                    {
                      v89 = [v12 isEqualToString:@"InstalledApplicationList"];
                      if ((a4 & 0x100) == 0 || (v89 & 1) == 0)
                      {
                        v90 = [v12 isEqualToString:@"Restrictions"];
                        if ((a4 & 0x200) != 0 && v90)
                        {
                          if ((a4 & 0x40) == 0)
                          {
                            v91 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
                            [v91 removeObjectForKey:@"ProfileRestrictions"];

                            v9 = v91;
                          }

                          goto LABEL_129;
                        }

                        v92 = [v12 isEqualToString:@"SecurityInfo"];
                        if ((a4 & 0x400) == 0 || (v92 & 1) == 0)
                        {
                          v93 = [v12 isEqualToString:@"Settings"];
                          if ((a4 & 0x800) == 0 || (v93 & 1) == 0)
                          {
                            v94 = [v12 isEqualToString:@"InviteToProgram"];
                            if ((a4 & 0x1000) == 0 || !v94)
                            {
                              if ([v12 isEqualToString:@"InstallApplication"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ValidateApplications") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ApplyRedemptionCode") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationList") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RemoveApplication") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationConfiguration") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationAttributes") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedApplicationFeedback") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"InstallMedia") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ManagedMediaList") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"RemoveMedia") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"AvailableOSUpdates") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"OSUpdateStatus") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"ScheduleOSUpdate"))
                              {
                                if ((a4 & 0x1000) == 0)
                                {
                                  goto LABEL_155;
                                }
                              }

                              else
                              {
                                v96 = [v12 isEqualToString:@"ScheduleOSUpdateScan"];
                                if ((a4 & 0x1000) == 0 || !v96)
                                {
LABEL_155:
                                  if (([v12 isEqualToString:@"RequestMirroring"] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"RefreshCellularPlans") & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"DeclarativeManagement") & 1) == 0)
                                  {
                                    v95 = [(MDMParser *)self _notAuthorizedError];
                                    v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v95];

                                    v10 = v97;
                                    goto LABEL_78;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_129:
    v10 = v97;
LABEL_94:
    v76 = a4;
    v19 = v100;
    v18 = v98;
LABEL_100:
    [(MDMParser *)self _processRequest:v9 accessRights:v76 assertion:v10 completionBlock:v11];
    v27 = 0;
    goto LABEL_82;
  }

  [(MDMParser *)self _invalidRequestTypeError:v12];
  v29 = v28 = v10;
  v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v29];

  v10 = v28;
LABEL_79:
  v18 = v98;
LABEL_80:
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v9 response:v27];
  if (v11)
  {
    v11[2](v11, v27);
  }

LABEL_82:

  v66 = *MEMORY[0x277D85DE8];
}

- (void)_processRequest:(id)a3 accessRights:(unint64_t)a4 assertion:(id)a5 completionBlock:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C3F8;
  v13 = v12;
  v46 = v13;
  v14 = v11;
  v45 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [v10 objectForKey:@"RequestType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v16;
      _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "Handling request type: %{public}@", buf, 0xCu);
    }

    v18 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = v18;
      v20 = [v10 DMCShortenedPlistDescription];
      *buf = 138543362;
      v48 = v20;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEBUG, "Handling request: %{public}@", buf, 0xCu);
    }

    v21 = [MDMRequestClasses classForRequestType:v16];
    if ([(objc_class *)v21 isSubclassOfClass:objc_opt_class()])
    {
      v43 = 0;
      v22 = [(objc_class *)v21 load:v10 serializationType:0 error:&v43];
      v23 = v43;
      if (v22)
      {
        WeakRetained = objc_loadWeakRetained(&self->_server);
        [v22 setChannelType:{objc_msgSend(WeakRetained, "channelType")}];

        [v22 setDelegate:self];
        [v22 setAccessRights:a4];
        v25 = [MEMORY[0x277D24648] sharedConfiguration];
        [v22 setIsUserEnrollment:{objc_msgSend(v25, "isUserEnrollment")}];

        v42 = v23;
        LOBYTE(WeakRetained) = [v22 isRequestAllowedWithError:&v42];
        v26 = v42;

        if (WeakRetained)
        {
          if ([v22 shouldBlockUserSwitch])
          {
            v27 = _Block_copy(v15);

            v13 = v27;
          }

          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke_980;
          v39[3] = &unk_27982C420;
          v39[4] = self;
          v40 = v10;
          v13 = v13;
          v41 = v13;
          [v22 processRequest:v40 completionHandler:v39];

          goto LABEL_24;
        }

        v32 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v26];
        v23 = v26;
      }

      else
      {
        v31 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v48 = v23;
          _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_ERROR, "Malformed command %{public}@.", buf, 0xCu);
        }

        v32 = +[MDMParser malformedRequestErrorResult];
      }

      (*(v13 + 2))(v13, v32);

LABEL_24:
      v29 = 0;
      goto LABEL_25;
    }

    if ([v16 isEqualToString:@"ClearPasscode"])
    {
      v28 = [(MDMParser *)self _clearPasscode:v10];
    }

    else if ([v16 isEqualToString:@"RequestUnlockToken"])
    {
      v28 = [(MDMParser *)self _requestUnlockToken:v10];
    }

    else if ([v16 isEqualToString:@"ProfileList"])
    {
      v28 = [(MDMParser *)self _profileList:v10];
    }

    else if ([v16 isEqualToString:@"CertificateList"])
    {
      v28 = [(MDMParser *)self _certificateList:v10];
    }

    else if ([v16 isEqualToString:@"RemoveProfile"])
    {
      v28 = [(MDMParser *)self _removeProfile:v10];
    }

    else if ([v16 isEqualToString:@"ProvisioningProfileList"])
    {
      v28 = [(MDMParser *)self _provisioningProfileList:v10];
    }

    else if ([v16 isEqualToString:@"InstallProvisioningProfile"])
    {
      v28 = [(MDMParser *)self _installProvisioningProfile:v10];
    }

    else if ([v16 isEqualToString:@"RemoveProvisioningProfile"])
    {
      v28 = [(MDMParser *)self _removeProvisioningProfile:v10];
    }

    else if ([v16 isEqualToString:@"InstalledApplicationList"])
    {
      v28 = [(MDMParser *)self _installedApplicationList:v10];
    }

    else if ([v16 isEqualToString:@"Restrictions"])
    {
      v28 = [(MDMParser *)self _restrictions:v10];
    }

    else if ([v16 isEqualToString:@"Settings"])
    {
      v28 = [(MDMParser *)self _settings:v10 accessRights:a4];
    }

    else
    {
      if ([v16 isEqualToString:@"InstallApplication"])
      {
        [(MDMParser *)self _installApplication:v10 assertion:v14 completionBlock:v15];
        goto LABEL_24;
      }

      if ([v16 isEqualToString:@"ValidateApplications"])
      {
        v28 = [(MDMParser *)self _validateApplications:v10];
      }

      else if ([v16 isEqualToString:@"ApplyRedemptionCode"])
      {
        v28 = [(MDMParser *)self _applyRedemptionCode:v10 assertion:v14];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationList"])
      {
        v28 = [(MDMParser *)self _managedApplicationList:v10];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationConfiguration"])
      {
        v28 = [(MDMParser *)self _managedApplicationConfiguration:v10];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationAttributes"])
      {
        v28 = [(MDMParser *)self _managedApplicationAttributes:v10];
      }

      else if ([v16 isEqualToString:@"ManagedApplicationFeedback"])
      {
        v28 = [(MDMParser *)self _managedApplicationFeedback:v10];
      }

      else if ([v16 isEqualToString:@"RemoveApplication"])
      {
        v28 = [(MDMParser *)self _removeApplication:v10];
      }

      else
      {
        if ([v16 isEqualToString:@"RequestMirroring"])
        {
          [(MDMParser *)self _requestMirroringRequest:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"StopMirroring"])
        {
          [(MDMParser *)self _stopMirroringRequest:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"InviteToProgram"])
        {
          [(MDMParser *)self _inviteToProgramRequest:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ActivationLockBypassCode"])
        {
          [(MDMParser *)self _activationLockBypassCodeRequest:v10 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ClearActivationLockBypassCode"])
        {
          [(MDMParser *)self _clearActivationLockBypassCodeRequest:v10 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"InstallMedia"])
        {
          [(MDMParser *)self _installMedia:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ManagedMediaList"])
        {
          [(MDMParser *)self _managedMediaList:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"RemoveMedia"])
        {
          [(MDMParser *)self _removeMedia:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"DeviceConfigured"])
        {
          [(MDMParser *)self _deviceConfigured:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"UserConfigured"])
        {
          [(MDMParser *)self _userConfigured:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ScheduleOSUpdate"])
        {
          [(MDMParser *)self _scheduleOSUpdate:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"ScheduleOSUpdateScan"])
        {
          [(MDMParser *)self _scheduleOSUpdateScan:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"AvailableOSUpdates"])
        {
          [(MDMParser *)self _availableOSUpdates:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"OSUpdateStatus"])
        {
          [(MDMParser *)self _statusOfOSUpdates:v10 assertion:v14 completionBlock:v15];
          goto LABEL_24;
        }

        if ([v16 isEqualToString:@"DeleteUser"])
        {
          v28 = [(MDMParser *)self _deleteUser:v10];
        }

        else if ([v16 isEqualToString:@"DeclarativeManagement"])
        {
          v28 = [(MDMParser *)self _declarativeManagement:v10];
        }

        else
        {
          if (![v16 isEqualToString:@"RefreshCellularPlans"])
          {
            v38.receiver = self;
            v38.super_class = MDMParser;
            [(MDMAbstractTunnelParser *)&v38 processRequest:v10 assertion:v14 completionBlock:v15];
            goto LABEL_24;
          }

          v28 = [(MDMParser *)self _refreshCellularPlans:v10];
        }
      }
    }
  }

  else
  {
    v28 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }

  v29 = v28;
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v10 response:v28];
  if (v13)
  {
    v30 = dispatch_get_global_queue(0, 0);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke_2;
    v34[3] = &unk_27982C448;
    v13 = v13;
    v37 = v13;
    v29 = v29;
    v35 = v29;
    v36 = v14;
    dispatch_async(v30, v34);
  }

LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__MDMParser__processRequest_accessRights_assertion_completionBlock___block_invoke_980(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)willTerminateProcess:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_server);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_server);
    v6 = [v5 responseFromBasicResponse:v8];
    v7 = [v5 sendResponseSynchronously:v6 outStatusCode:0 outError:0];
  }
}

- (void)didInitiateSwitchUser
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  [WeakRetained setUserSwitchAlreadyInitiated:1];
}

- (id)_profileList:(id)a3 filterFlags:(int)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"ManagedOnly"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = +[MDMParser malformedRequestErrorResult];
  }

  else
  {
    v6 = [v5 BOOLValue];
    v7 = [MEMORY[0x277D24648] sharedConfiguration];
    v8 = [v7 isUserEnrollment];

    if ((v8 | v6))
    {
      v9 = a4 | 0x20u;
    }

    else
    {
      v9 = a4;
    }

    v10 = [MDMMCInterface profileListWithFilterFlags:v9];
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_INFO, "Returning profile array: %{public}@", buf, 0xCu);
    }

    v12 = *MEMORY[0x277D24C40];
    v16[0] = @"Status";
    v16[1] = v12;
    v17[0] = @"Acknowledged";
    v17[1] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_originator
{
  v3 = [(MDMParser *)self server];
  v4 = [v3 organizationName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(MDMParser *)self server];
    v9 = [v7 serverName];
    v6 = DMCLocalizedFormat();
  }

  return v6;
}

- (id)_clearPasscode:(id)a3
{
  v3 = [a3 objectForKey:@"UnlockToken"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = MEMORY[0x277D03520];
    v5 = *MEMORY[0x277D24D00];
    v6 = *MEMORY[0x277D24800];
    v7 = [MEMORY[0x277D24648] sharedConfiguration];
    v21 = 0;
    LOBYTE(v19) = [v7 isUserEnrollment];
    v8 = [v4 dataFromService:v5 account:v6 label:0 description:0 group:0 useSystemKeychain:0 enforcePersonalPersona:v19 outError:&v21];
    v9 = v21;

    v10 = [MEMORY[0x277D03520] stringFromServiceData:v8];
    v11 = v10;
    if (v9)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D03480];
      v14 = DMCErrorArray();
      v15 = [v12 DMCErrorWithDomain:v13 code:12019 descriptionArray:v14 underlyingError:v9 errorType:{*MEMORY[0x277D032F8], 0}];
    }

    else
    {
      v14 = [v10 dataUsingEncoding:4];
      v20 = 0;
      [MDMMCInterface clearPasscodeWithEscrowKeybagData:v3 secret:v14 outError:&v20];
      v15 = v20;
    }

    v17 = v15;

    if (v17)
    {
      [(MDMAbstractTunnelParser *)MDMParser responseWithError:v17];
    }

    else
    {
      [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    }
    v16 = ;
  }

  else
  {
    v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }

  return v16;
}

- (id)_deleteUser:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ForceDeletion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"ForceDeletion"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"DeleteAllUsers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 objectForKeyedSubscript:@"DeleteAllUsers"];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 BOOLValue])
  {
    v9 = -[MDMParser _deleteAllUsersWithForceDeletion:](self, "_deleteAllUsersWithForceDeletion:", [v6 BOOLValue]);
LABEL_19:
    v13 = v9;
    goto LABEL_20;
  }

  v10 = [v4 objectForKeyedSubscript:@"UserName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_18;
  }

  v11 = [v4 objectForKeyedSubscript:@"UserName"];

  if (!v11)
  {
LABEL_18:
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_19;
  }

  v12 = objc_opt_new();
  [v12 setUsername:v11];
  [v12 setForceDeletion:{objc_msgSend(v6, "BOOLValue")}];
  v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v14 = [MEMORY[0x277D04BF8] systemConnection];
  v26 = 0;
  v15 = [v14 performRequest:v12 error:&v26];
  v16 = v26;

  if (v16)
  {
    v17 = [v16 code];
    if (v17 <= 1801)
    {
      if (v17 == 1700)
      {
        v18 = 12070;
        goto LABEL_29;
      }

      if (v17 == 1801)
      {
        v18 = 12072;
        goto LABEL_29;
      }
    }

    else
    {
      switch(v17)
      {
        case 1802:
          v18 = 12071;
          goto LABEL_29;
        case 1803:
          v18 = 12073;
          goto LABEL_29;
        case 1804:
          v18 = 12074;
LABEL_29:
          v25 = v18;
          v20 = MEMORY[0x277CCA9B8];
          v21 = *MEMORY[0x277D03480];
          v22 = DMCErrorArray();
          v23 = [v20 DMCErrorWithDomain:v21 code:v25 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], 0}];

          v16 = v23;
          break;
      }
    }

    v24 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v16];

    v13 = v24;
  }

LABEL_20:

  return v13;
}

- (id)_deleteAllUsersWithForceDeletion:(BOOL)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all users...", buf, 2u);
  }

  v4 = [MEMORY[0x277D77BF8] sharedManager];
  v5 = [v4 allUsers];
  v28 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 username];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = @"Unknown";
        }

        v15 = v14;

        v16 = [v4 currentUser];
        v17 = [v16 isEqualToUser:v11];

        if (v17)
        {
          goto LABEL_16;
        }

        if ([v11 hasDataToSync] && !a3)
        {
          v18 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v40 = v11;
            _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "User %{public}@ has data to sync.", buf, 0xCu);
          }

LABEL_16:
          v19 = DMCLocalizedString();
          [v6 setObject:v19 forKeyedSubscript:v15];
          goto LABEL_18;
        }

        v20 = dispatch_semaphore_create(0);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __46__MDMParser__deleteAllUsersWithForceDeletion___block_invoke;
        v31[3] = &unk_27982C470;
        v31[4] = v11;
        v32 = v6;
        v33 = v15;
        v34 = v20;
        v19 = v20;
        [v4 deleteUser:v11 completionHandler:v31];
        dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);

LABEL_18:
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D03480];
    v23 = DMCErrorArray();
    v24 = [v21 DMCErrorWithDomain:v22 code:12074 descriptionArray:v23 errorType:{*MEMORY[0x277D032F8], v6, 0}];

    v25 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v24];
  }

  else
  {
    v25 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __46__MDMParser__deleteAllUsersWithForceDeletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to delete user: %{public}@ with error: %{public}@", &v8, 0x16u);
    }

    v6 = DMCLocalizedString();
    [*(a1 + 40) setObject:v6 forKeyedSubscript:*(a1 + 48)];
  }

  dispatch_semaphore_signal(*(a1 + 56));

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_refreshCellularPlans:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"eSIMServerURL"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v5 = [v3 objectForKeyedSubscript:@"eSIMServerURL"];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = v6;
  if (!v6)
  {
LABEL_14:
    v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_15;
  }

  v8 = [v6 scheme];
  if (![v8 isEqualToString:@"http"])
  {
    v9 = [v7 scheme];
    v10 = [v9 isEqualToString:@"https"];

    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_9:
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v7;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Refreshing available data plans from URL: %{public}@", buf, 0xCu);
  }

  v12 = objc_opt_new();
  v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [v12 setESIMServerURL:v7];
  v14 = [MEMORY[0x277D04BF8] systemConnection];
  v27 = 0;
  v15 = [v14 performRequest:v12 error:&v27];
  v16 = v27;

  if (v16)
  {
    v17 = [v16 code] - 201;
    if (v17 > 3)
    {
      v19 = 36001;
    }

    else
    {
      v18 = off_27982C840[v17];
      v19 = qword_256252600[v17];
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D03480];
    v24 = DMCErrorArray();
    v25 = [v22 DMCErrorWithDomain:v23 code:v19 descriptionArray:v24 errorType:{*MEMORY[0x277D032F8], 0}];

    v26 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v25];

    v13 = v26;
  }

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_declarativeManagement:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Processing DeclarativeManagement command", buf, 2u);
  }

  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  managingProfileIdentifier = self->_managingProfileIdentifier;
  v16 = 0;
  v8 = [MDMDeclarativeManagementCommand processRequestTypeWithProfileIdentifier:managingProfileIdentifier request:v4 error:&v16];

  v9 = v16;
  if (!v8)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v9 DMCVerboseDescription];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_ERROR, "Failed to process DeclarativeManagement command with error: %{public}@", buf, 0xCu);
    }

    v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];

    v6 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_MCKeysToDMFKeys
{
  if (_MCKeysToDMFKeys_onceToken != -1)
  {
    +[MDMParser _MCKeysToDMFKeys];
  }

  v3 = _MCKeysToDMFKeys_MCKeysToDMFKeys;

  return v3;
}

void __29__MDMParser__MCKeysToDMFKeys__block_invoke()
{
  v82[53] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D04B08];
  v1 = *MEMORY[0x277D24BB0];
  v81[0] = *MEMORY[0x277D24B20];
  v81[1] = v1;
  v2 = *MEMORY[0x277D04B68];
  v82[0] = v0;
  v82[1] = v2;
  v3 = *MEMORY[0x277D04A28];
  v4 = *MEMORY[0x277D24A88];
  v81[2] = *MEMORY[0x277D249F8];
  v81[3] = v4;
  v5 = *MEMORY[0x277D04A80];
  v82[2] = v3;
  v82[3] = v5;
  v6 = *MEMORY[0x277D04998];
  v7 = *MEMORY[0x277D24BE0];
  v81[4] = *MEMORY[0x277D249A0];
  v81[5] = v7;
  v8 = *MEMORY[0x277D04BC0];
  v82[4] = v6;
  v82[5] = v8;
  v9 = *MEMORY[0x277D04BB8];
  v10 = *MEMORY[0x277D24A00];
  v81[6] = *MEMORY[0x277D24BD8];
  v81[7] = v10;
  v11 = *MEMORY[0x277D04AB8];
  v82[6] = v9;
  v82[7] = v11;
  v12 = *MEMORY[0x277D04AA8];
  v13 = *MEMORY[0x277D24B00];
  v81[8] = *MEMORY[0x277D24AC0];
  v81[9] = v13;
  v14 = *MEMORY[0x277D04AF0];
  v82[8] = v12;
  v82[9] = v14;
  v15 = *MEMORY[0x277D049B8];
  v16 = *MEMORY[0x277D24998];
  v81[10] = *MEMORY[0x277D249F0];
  v81[11] = v16;
  v17 = *MEMORY[0x277D04990];
  v82[10] = v15;
  v82[11] = v17;
  v18 = *MEMORY[0x277D049C8];
  v19 = *MEMORY[0x277D249A8];
  v81[12] = *MEMORY[0x277D249C8];
  v81[13] = v19;
  v20 = *MEMORY[0x277D049A0];
  v82[12] = v18;
  v82[13] = v20;
  v21 = *MEMORY[0x277D04A78];
  v22 = *MEMORY[0x277D24A18];
  v81[14] = *MEMORY[0x277D24A80];
  v81[15] = v22;
  v23 = *MEMORY[0x277D04A08];
  v82[14] = v21;
  v82[15] = v23;
  v24 = *MEMORY[0x277D04A60];
  v25 = *MEMORY[0x277D24A58];
  v81[16] = *MEMORY[0x277D24A60];
  v81[17] = v25;
  v26 = *MEMORY[0x277D04A50];
  v82[16] = v24;
  v82[17] = v26;
  v27 = *MEMORY[0x277D04A38];
  v28 = *MEMORY[0x277D24A50];
  v81[18] = *MEMORY[0x277D24A40];
  v81[19] = v28;
  v29 = *MEMORY[0x277D04A48];
  v82[18] = v27;
  v82[19] = v29;
  v30 = *MEMORY[0x277D04A40];
  v31 = *MEMORY[0x277D24BD0];
  v81[20] = *MEMORY[0x277D24A48];
  v81[21] = v31;
  v32 = *MEMORY[0x277D04BB0];
  v82[20] = v30;
  v82[21] = v32;
  v33 = *MEMORY[0x277D04AD0];
  v34 = *MEMORY[0x277D24A38];
  v81[22] = *MEMORY[0x277D24AF0];
  v81[23] = v34;
  v35 = *MEMORY[0x277D04A20];
  v82[22] = v33;
  v82[23] = v35;
  v36 = *MEMORY[0x277D04A90];
  v37 = *MEMORY[0x277D24AD0];
  v81[24] = *MEMORY[0x277D24A98];
  v81[25] = v37;
  v38 = *MEMORY[0x277D04AB0];
  v82[24] = v36;
  v82[25] = v38;
  v39 = *MEMORY[0x277D04A18];
  v40 = *MEMORY[0x277D24A20];
  v81[26] = *MEMORY[0x277D24A30];
  v81[27] = v40;
  v41 = *MEMORY[0x277D04A10];
  v82[26] = v39;
  v82[27] = v41;
  v42 = *MEMORY[0x277D049D8];
  v43 = *MEMORY[0x277D24B70];
  v81[28] = *MEMORY[0x277D249D0];
  v81[29] = v43;
  v44 = *MEMORY[0x277D04B40];
  v82[28] = v42;
  v82[29] = v44;
  v45 = *MEMORY[0x277D049C0];
  v46 = *MEMORY[0x277D24AF8];
  v81[30] = *MEMORY[0x277D249C0];
  v81[31] = v46;
  v47 = *MEMORY[0x277D04AD8];
  v82[30] = v45;
  v82[31] = v47;
  v48 = *MEMORY[0x277D04B48];
  v49 = *MEMORY[0x277D24B80];
  v81[32] = *MEMORY[0x277D24B78];
  v81[33] = v49;
  v50 = *MEMORY[0x277D04B50];
  v82[32] = v48;
  v82[33] = v50;
  v51 = *MEMORY[0x277D049E0];
  v52 = *MEMORY[0x277D249E0];
  v81[34] = *MEMORY[0x277D249D8];
  v81[35] = v52;
  v53 = *MEMORY[0x277D049E8];
  v82[34] = v51;
  v82[35] = v53;
  v54 = *MEMORY[0x277D049F0];
  v55 = *MEMORY[0x277D24BC8];
  v81[36] = *MEMORY[0x277D249E8];
  v81[37] = v55;
  v56 = *MEMORY[0x277D04BA0];
  v82[36] = v54;
  v82[37] = v56;
  v57 = *MEMORY[0x277D04A70];
  v58 = *MEMORY[0x277D24A10];
  v81[38] = *MEMORY[0x277D24A78];
  v81[39] = v58;
  v59 = *MEMORY[0x277D04A00];
  v82[38] = v57;
  v82[39] = v59;
  v60 = *MEMORY[0x277D04978];
  v61 = *MEMORY[0x277D24A68];
  v81[40] = *MEMORY[0x277D24988];
  v81[41] = v61;
  v62 = *MEMORY[0x277D04A58];
  v82[40] = v60;
  v82[41] = v62;
  v63 = *MEMORY[0x277D04AC0];
  v64 = *MEMORY[0x277D249B8];
  v81[42] = *MEMORY[0x277D24AD8];
  v81[43] = v64;
  v65 = *MEMORY[0x277D049B0];
  v82[42] = v63;
  v82[43] = v65;
  v66 = *MEMORY[0x277D04AA0];
  v67 = *MEMORY[0x277D249B0];
  v81[44] = *MEMORY[0x277D24AB8];
  v81[45] = v67;
  v68 = *MEMORY[0x277D049A8];
  v82[44] = v66;
  v82[45] = v68;
  v69 = *MEMORY[0x277D04A68];
  v70 = *MEMORY[0x277D24B50];
  v81[46] = *MEMORY[0x277D24A70];
  v81[47] = v70;
  v71 = *MEMORY[0x277D04B38];
  v82[46] = v69;
  v82[47] = v71;
  v72 = *MEMORY[0x277D04B10];
  v73 = *MEMORY[0x277D24B30];
  v81[48] = *MEMORY[0x277D24B28];
  v81[49] = v73;
  v74 = *MEMORY[0x277D04B18];
  v82[48] = v72;
  v82[49] = v74;
  v75 = *MEMORY[0x277D04B28];
  v76 = *MEMORY[0x277D24B40];
  v81[50] = *MEMORY[0x277D24B38];
  v81[51] = v76;
  v77 = *MEMORY[0x277D04B20];
  v82[50] = v75;
  v82[51] = v77;
  v81[52] = *MEMORY[0x277D24B48];
  v82[52] = *MEMORY[0x277D04B30];
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:53];
  v79 = _MCKeysToDMFKeys_MCKeysToDMFKeys;
  _MCKeysToDMFKeys_MCKeysToDMFKeys = v78;

  v80 = *MEMORY[0x277D85DE8];
}

+ (id)_MCKeysWithNoMatchingDMFKey
{
  v18[23] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D24990];
  v18[0] = *MEMORY[0x277D24980];
  v18[1] = v3;
  v4 = *MEMORY[0x277D24A28];
  v18[2] = *MEMORY[0x277D24A08];
  v18[3] = v4;
  v5 = *MEMORY[0x277D24AB0];
  v18[4] = *MEMORY[0x277D24AA8];
  v18[5] = v5;
  v6 = *MEMORY[0x277D24AA0];
  v18[6] = *MEMORY[0x277D24A90];
  v18[7] = v6;
  v7 = *MEMORY[0x277D24AE0];
  v18[8] = *MEMORY[0x277D24AC8];
  v18[9] = v7;
  v8 = *MEMORY[0x277D24B10];
  v18[10] = *MEMORY[0x277D24AE8];
  v18[11] = v8;
  v9 = *MEMORY[0x277D24B58];
  v18[12] = *MEMORY[0x277D24B18];
  v18[13] = v9;
  v10 = *MEMORY[0x277D24B68];
  v18[14] = *MEMORY[0x277D24B60];
  v18[15] = v10;
  v11 = *MEMORY[0x277D24B90];
  v18[16] = *MEMORY[0x277D24B88];
  v18[17] = v11;
  v12 = *MEMORY[0x277D24BA0];
  v18[18] = *MEMORY[0x277D24B98];
  v18[19] = v12;
  v13 = *MEMORY[0x277D24BB8];
  v18[20] = *MEMORY[0x277D24BA8];
  v18[21] = v13;
  v18[22] = *MEMORY[0x277D24BC0];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:23];
  v15 = [v2 setWithArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_DMFKeysToMCKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MDMParser__DMFKeysToMCKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_DMFKeysToMCKeys_onceToken != -1)
  {
    dispatch_once(&_DMFKeysToMCKeys_onceToken, block);
  }

  v2 = _DMFKeysToMCKeys_DMFKeysToMCKeys;

  return v2;
}

void __29__MDMParser__DMFKeysToMCKeys__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _MCKeysToDMFKeys];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:{v9, v14}];
        [v3 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = _DMFKeysToMCKeys_DMFKeysToMCKeys;
  _DMFKeysToMCKeys_DMFKeysToMCKeys = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_serviceSubscriptionPropertiesWithDMFKeysMappedToMCKeys:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() _DMFKeysToMCKeys];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:{v11, v17}];
        if (v12)
        {
          v13 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_serviceSubscriptionsWithDMFKeysMappedToMCKeys:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MDMParser *)self _serviceSubscriptionPropertiesWithDMFKeysMappedToMCKeys:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_deviceInformationWithRequest:(id)a3 accessRights:(unint64_t)a4
{
  v6 = MEMORY[0x277D24648];
  v7 = a3;
  v8 = [v6 sharedConfiguration];
  v9 = [v8 personaID];
  v10 = v9 != 0;

  v11 = [(MDMParser *)self _allowedDeviceQueriesForAccessRights:a4 isDataSeparated:v10];
  v12 = [(MDMParser *)self _deviceInformationWithRequest:v7 allowedQueries:v11];

  return v12;
}

- (id)_deviceInformationWithRequest:(id)a3 allowedQueries:(id)a4
{
  v235 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"DeviceAttestationNonce"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 length] || (v9 = objc_msgSend(v8, "length"), v9 > *MEMORY[0x277D24780]))
    {
      v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
      goto LABEL_34;
    }
  }

  v11 = [v6 objectForKey:@"Queries"];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v11 count])
  {
    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_33;
  }

  v194 = self;
  v191 = [MEMORY[0x277CBEB58] set];
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v187 = v11;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v220 objects:v234 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v221;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v221 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v220 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
          goto LABEL_187;
        }

        if ([v7 containsObject:v17])
        {
          [v191 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v220 objects:v234 count:16];
    }

    while (v14);
  }

  if (([MEMORY[0x277D03530] hasInternetTetheringCapability] & 1) == 0)
  {
    [v191 removeObject:*MEMORY[0x277D24AF0]];
  }

  v12 = [objc_opt_class() _MCKeysToDMFKeys];
  v199 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v191, "count")}];
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v18 = v191;
  v19 = [v18 countByEnumeratingWithState:&v216 objects:v233 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v217;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v217 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v12 objectForKeyedSubscript:*(*(&v216 + 1) + 8 * j)];
        if (v23)
        {
          [v199 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v216 objects:v233 count:16];
    }

    while (v20);
  }

  v185 = v8;

  v24 = objc_opt_new();
  [v24 setPropertyKeys:v199];
  v25 = [MEMORY[0x277D04BF8] systemConnection];
  v215 = 0;
  v26 = [v25 performRequest:v24 error:&v215];
  v27 = v215;

  v28 = objc_opt_class();
  if (v27)
  {
    v10 = [v28 responseWithError:v27];
    goto LABEL_186;
  }

  v180 = v24;
  v182 = v6;
  v183 = v7;
  v197 = [v28 _DMFKeysToMCKeys];
  v184 = v26;
  v31 = [v26 valuesByPropertyKey];
  v195 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v31, "count")}];
  v186 = [MEMORY[0x277D24648] sharedConfiguration];
  v192 = [v186 isUserEnrollment];
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  obj = v31;
  v32 = [obj countByEnumeratingWithState:&v211 objects:v232 count:16];
  v181 = v12;
  v196 = v18;
  if (!v32)
  {
    goto LABEL_73;
  }

  v33 = v32;
  v34 = *v212;
  v35 = *MEMORY[0x277D24A68];
  v36 = *MEMORY[0x277D24B50];
  v193 = *MEMORY[0x277D249F0];
  v190 = *MEMORY[0x277D24998];
  v188 = *MEMORY[0x277D24A18];
  v189 = *MEMORY[0x277CBE9F0];
  do
  {
    v37 = 0;
    do
    {
      if (*v212 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v211 + 1) + 8 * v37);
      v39 = [obj objectForKeyedSubscript:v38];
      v40 = [v197 objectForKeyedSubscript:v38];
      if ([v40 isEqualToString:v35])
      {
        v41 = MEMORY[0x277CCABB0];
        v42 = [MEMORY[0x277D24640] sharedConfiguration];
        v43 = [v41 numberWithBool:{objc_msgSend(v42, "userMode") == 1}];

        goto LABEL_45;
      }

      if ([v40 isEqualToString:v36])
      {
        v44 = [(MDMParser *)v194 _serviceSubscriptionsWithDMFKeysMappedToMCKeys:v39];
        goto LABEL_49;
      }

      if (![v40 isEqualToString:v193])
      {
        if ([v40 isEqualToString:v190])
        {
          v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var"];
          v210 = 0;
          [v42 getResourceValue:&v210 forKey:v189 error:0];
          v49 = v210;
          if (v49)
          {
            v50 = v49;
            v51 = MEMORY[0x277CCABB0];
            [v49 floatValue];
            if (v192)
            {
              *&v52 = *&v52 / 1000000000.0;
              [v51 numberWithFloat:v52];
            }

            else
            {
              [v51 numberWithDouble:*&v52 / 1000000000.0];
            }
            v56 = ;

            v43 = v56;
LABEL_45:
            v39 = v43;
LABEL_46:
            v18 = v196;
          }
        }

        else
        {
          if (!v192 || ![v40 isEqualToString:v188])
          {
            v53 = [MEMORY[0x277CBEB68] null];
            v54 = [v39 isEqual:v53];

            v18 = v196;
            if (v54)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          v44 = [v186 easEnrollmentID];
LABEL_49:
          v42 = v39;
          v39 = v44;
        }

        goto LABEL_51;
      }

      v45 = [MEMORY[0x277D03530] diskCapacity];
      if (v45)
      {
        v46 = v45;
        v47 = MEMORY[0x277CCABB0];
        [v45 floatValue];
        if (v192)
        {
          *&v48 = *&v48 / 1000000000.0;
          [v47 numberWithFloat:v48];
        }

        else
        {
          [v47 numberWithDouble:*&v48 / 1000000000.0];
        }
        v55 = ;

        v42 = v55;
        v39 = v42;
        goto LABEL_46;
      }

LABEL_51:
      if (v40)
      {
        [v195 setObject:v39 forKeyedSubscript:v40];
      }

LABEL_53:

      ++v37;
    }

    while (v33 != v37);
    v57 = [obj countByEnumeratingWithState:&v211 objects:v232 count:16];
    v33 = v57;
  }

  while (v57);
LABEL_73:

  [v184 errorsByPropertyKey];
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v58 = v209 = 0u;
  v59 = [v58 countByEnumeratingWithState:&v206 objects:v231 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v207;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v207 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v206 + 1) + 8 * k);
        v64 = [v58 objectForKeyedSubscript:v63];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = [v64 DMCVerboseDescription];
            *buf = 138543618;
            v228 = v63;
            v229 = 2114;
            v230 = v66;
            _os_log_impl(&dword_2561F5000, v65, OS_LOG_TYPE_ERROR, "Failed to retrieve device information key %{public}@ with error: %{public}@", buf, 0x16u);

            v18 = v196;
          }
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v206 objects:v231 count:16];
    }

    while (v60);
  }

  v67 = *MEMORY[0x277D24AE8];
  v7 = v183;
  v68 = v185;
  v12 = v181;
  v69 = v195;
  if ([v18 containsObject:*MEMORY[0x277D24AE8]])
  {
    v70 = [(MDMParser *)v194 server];
    v71 = [v70 organizationInfo];

    if (v71)
    {
      [v195 setObject:v71 forKeyedSubscript:v67];
    }

    v18 = v196;
  }

  v72 = *MEMORY[0x277D24A90];
  if ([v18 containsObject:*MEMORY[0x277D24A90]])
  {
    v73 = [(MDMParser *)v194 server];
    v74 = [v73 MDMOptions];
    v75 = v74;
    if (v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = MEMORY[0x277CBEC10];
    }

    [v195 setObject:v76 forKeyedSubscript:v72];

    v18 = v196;
  }

  v77 = *MEMORY[0x277D24A70];
  v6 = v182;
  if ([v18 containsObject:*MEMORY[0x277D24A70]])
  {
    v78 = [MEMORY[0x277CCABB0] numberWithBool:DMCDeviceIsNetworkTethered()];
    [v195 setObject:v78 forKeyedSubscript:v77];
  }

  v79 = *MEMORY[0x277D24AB8];
  if ([v18 containsObject:*MEMORY[0x277D24AB8]])
  {
    v80 = DMCIOModelString();
    [v195 setObject:v80 forKeyedSubscript:v79];
  }

  v81 = *MEMORY[0x277D24AC8];
  if ([v18 containsObject:*MEMORY[0x277D24AC8]])
  {
    v82 = [MEMORY[0x277D03530] modelNumber];
    v83 = [MEMORY[0x277D03530] regionInfo];
    v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v82, v83];
    [v195 setObject:v84 forKeyedSubscript:v81];

    v68 = v185;
    v18 = v196;
  }

  v85 = *MEMORY[0x277D24AD8];
  if ([v18 containsObject:*MEMORY[0x277D24AD8]])
  {
    v86 = [MEMORY[0x277D03530] marketingVersion];
    [v195 setObject:v86 forKeyedSubscript:v85];
  }

  v87 = *MEMORY[0x277D249B8];
  if ([v18 containsObject:*MEMORY[0x277D249B8]])
  {
    v88 = [MEMORY[0x277D03530] buildVersion];
    [v195 setObject:v88 forKeyedSubscript:v87];
  }

  v89 = *MEMORY[0x277D24B90];
  if ([v18 containsObject:*MEMORY[0x277D24B90]])
  {
    v90 = [MEMORY[0x277D03530] supplementalMarketingVersionExtra];
    [v195 setObject:v90 forKeyedSubscript:v89];
  }

  v91 = *MEMORY[0x277D24B88];
  if ([v18 containsObject:*MEMORY[0x277D24B88]])
  {
    v92 = [MEMORY[0x277D03530] supplementalBuildVersion];
    [v195 setObject:v92 forKeyedSubscript:v91];
  }

  v93 = *MEMORY[0x277D249B0];
  if ([v18 containsObject:*MEMORY[0x277D249B0]])
  {
    v94 = DMCIOBluetoothMAC();
    [v195 setObject:v94 forKeyedSubscript:v93];
  }

  v95 = *MEMORY[0x277D24BA8];
  if ([v18 containsObject:*MEMORY[0x277D24BA8]])
  {
    v96 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v97 = [v96 name];
    [v195 setObject:v97 forKeyedSubscript:v95];

    v18 = v196;
  }

  v98 = *MEMORY[0x277D24B60];
  if ([v18 containsObject:*MEMORY[0x277D24B60]])
  {
    v99 = [(MDMParser *)v194 server];
    v100 = [v99 softwareUpdatePathFromDisk];

    if (v100)
    {
      [v195 setObject:v100 forKeyedSubscript:v98];
    }

    v18 = v196;
  }

  v101 = *MEMORY[0x277D249A0];
  if ([v18 containsObject:*MEMORY[0x277D249A0]])
  {
    v102 = [(MDMParser *)v194 server];
    v103 = [v102 channelType];

    v104 = v103 == 1;
    v18 = v196;
    if (v104)
    {
      v105 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D03538], "isCurrentUserConfigured") ^ 1}];
      [v195 setObject:v105 forKeyedSubscript:v101];
    }
  }

  v106 = *MEMORY[0x277D24BD0];
  if ([v18 containsObject:*MEMORY[0x277D24BD0]])
  {
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v107 = SCNetworkInterfaceCopyAll();
    v108 = [(__CFArray *)v107 countByEnumeratingWithState:&v202 objects:v226 count:16];
    v109 = v107;
    if (v108)
    {
      v110 = v108;
      v111 = *v203;
      v112 = *MEMORY[0x277CE16D8];
LABEL_122:
      v113 = 0;
      while (1)
      {
        if (*v203 != v111)
        {
          objc_enumerationMutation(v107);
        }

        v114 = *(*(&v202 + 1) + 8 * v113);
        if (([(__CFString *)SCNetworkInterfaceGetInterfaceType(v114) isEqualToString:v112]& 1) != 0)
        {
          break;
        }

        if (v110 == ++v113)
        {
          v110 = [(__CFArray *)v107 countByEnumeratingWithState:&v202 objects:v226 count:16];
          if (v110)
          {
            goto LABEL_122;
          }

          v109 = v107;
          v7 = v183;
          v18 = v196;
          goto LABEL_131;
        }
      }

      v109 = SCNetworkInterfaceGetHardwareAddressString(v114);

      v7 = v183;
      v18 = v196;
      if (!v109)
      {
        goto LABEL_132;
      }

      [v195 setObject:v109 forKeyedSubscript:v106];
    }

LABEL_131:

LABEL_132:
    v68 = v185;
    v69 = v195;
  }

  v115 = *MEMORY[0x277D24B10];
  if ([v18 containsObject:*MEMORY[0x277D24B10]])
  {
    v116 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = [MEMORY[0x277D77BF8] sharedManager];
      v118 = [v117 userQuotaSize];
      *buf = 134217984;
      v228 = v118;
      _os_log_impl(&dword_2561F5000, v116, OS_LOG_TYPE_DEFAULT, "Quota Size is:%llu", buf, 0xCu);
    }

    v119 = MEMORY[0x277CCABB0];
    v120 = [MEMORY[0x277D77BF8] sharedManager];
    v121 = [v119 numberWithUnsignedLongLong:{objc_msgSend(v120, "userQuotaSize") / 0xF4240uLL}];
    [v69 setObject:v121 forKeyedSubscript:v115];

    v18 = v196;
  }

  v122 = *MEMORY[0x277D24B18];
  if ([v18 containsObject:*MEMORY[0x277D24B18]])
  {
    v123 = MEMORY[0x277CCABB0];
    v124 = [MEMORY[0x277D77BF8] sharedManager];
    v125 = [v124 allUsers];
    v126 = [v123 numberWithUnsignedInteger:{objc_msgSend(v125, "count")}];
    [v69 setObject:v126 forKeyedSubscript:v122];

    v68 = v185;
    v18 = v196;
  }

  v127 = *MEMORY[0x277D24AB0];
  if ([v18 containsObject:*MEMORY[0x277D24AB0]])
  {
    [v69 setObject:&unk_2868503E0 forKeyedSubscript:v127];
  }

  v128 = *MEMORY[0x277D24A28];
  if ([v18 containsObject:*MEMORY[0x277D24A28]])
  {
    v129 = [MEMORY[0x277D77BF8] sharedManager];
    v130 = [v129 allUsers];
    v131 = [v130 count];

    v132 = [MEMORY[0x277D77BF8] sharedManager];
    v133 = [v132 userQuotaSize];

    if (v133)
    {
      v134 = [MEMORY[0x277D03538] getDiskAvailableSize] / v133;
    }

    else
    {
      v134 = 0;
    }

    v135 = v134 + v131;
    if (v135 >= 0x20)
    {
      v136 = 32;
    }

    else
    {
      v136 = v135;
    }

    v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v136];
    [v69 setObject:v137 forKeyedSubscript:v128];

    v68 = v185;
    v18 = v196;
  }

  v138 = *MEMORY[0x277D24BB8];
  if ([v18 containsObject:*MEMORY[0x277D24BB8]])
  {
    v139 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D03538] userSessionTimeout];
    v141 = [v139 numberWithInteger:v140];
    [v69 setObject:v141 forKeyedSubscript:v138];
  }

  v142 = *MEMORY[0x277D24BA0];
  if ([v18 containsObject:*MEMORY[0x277D24BA0]])
  {
    v143 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D03538] temporarySessionTimeout];
    v145 = [v143 numberWithInteger:v144];
    [v69 setObject:v145 forKeyedSubscript:v142];
  }

  v146 = *MEMORY[0x277D24B98];
  if ([v18 containsObject:*MEMORY[0x277D24B98]])
  {
    v147 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D03538], "temporarySessionOnly")}];
    [v69 setObject:v147 forKeyedSubscript:v146];
  }

  v148 = *MEMORY[0x277D24AA8];
  if ([v18 containsObject:*MEMORY[0x277D24AA8]])
  {
    v149 = [MEMORY[0x277D03538] managedAppleIDDefaultDomains];
    [v69 setObject:v149 forKeyedSubscript:v148];
  }

  v150 = *MEMORY[0x277D24AE0];
  if ([v18 containsObject:*MEMORY[0x277D24AE0]])
  {
    v151 = [MEMORY[0x277D03538] onlineAuthenticationGracePeriod];
    [v69 setObject:v151 forKeyedSubscript:v150];
  }

  v152 = *MEMORY[0x277D24B58];
  if ([v18 containsObject:*MEMORY[0x277D24B58]])
  {
    v153 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D03538], "shouldSkipLanguageAndLocaleSetupForNewUsers")}];
    [v69 setObject:v153 forKeyedSubscript:v152];
  }

  v154 = *MEMORY[0x277D24AA0];
  if ([v18 containsObject:*MEMORY[0x277D24AA0]])
  {
    v201 = 0;
    v155 = [MEMORY[0x277D034B0] midWithError:&v201];
    v156 = v201;
    if (v156)
    {
      v157 = v156;
      v10 = [objc_opt_class() responseWithError:v156];

      goto LABEL_184;
    }

    [v69 setObject:v155 forKeyedSubscript:v154];

    v68 = v185;
  }

  v158 = *MEMORY[0x277D24990];
  if ([v18 containsObject:*MEMORY[0x277D24990]])
  {
    v159 = [objc_opt_class() appstoredUserAgent];
    [v69 setObject:v159 forKeyedSubscript:v158];
  }

  v160 = *MEMORY[0x277D24BC0];
  if ([v18 containsObject:*MEMORY[0x277D24BC0]])
  {
    v161 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v157 = [v161 deviceIdentifierForVendorSeedData];

    if ([v157 length])
    {
      [v69 setObject:v157 forKeyedSubscript:v160];

      v18 = v196;
      goto LABEL_170;
    }

    v176 = *DMCLogObjects();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v176, OS_LOG_TYPE_ERROR, "Failed to fetch VID seed", buf, 2u);
    }

    v177 = MEMORY[0x277CCA9B8];
    v178 = *MEMORY[0x277D03480];
    v179 = DMCErrorArray();
    v27 = [v177 DMCErrorWithDomain:v178 code:12103 descriptionArray:v179 errorType:{*MEMORY[0x277D032F8], 0}];

    v10 = [objc_opt_class() responseWithError:v27];
  }

  else
  {
LABEL_170:
    v162 = *MEMORY[0x277D24B68];
    if ([v18 containsObject:*MEMORY[0x277D24B68]])
    {
      v163 = [MEMORY[0x277D64908] currentProductType];
      [v69 setObject:v163 forKeyedSubscript:v162];
    }

    v164 = *MEMORY[0x277D24980];
    if ([v18 containsObject:*MEMORY[0x277D24980]])
    {
      v165 = [(MDMParser *)v194 _accessibilitySettings];
      [v69 setObject:v165 forKeyedSubscript:v164];
    }

    v166 = *MEMORY[0x277D24A08];
    if ([v18 containsObject:*MEMORY[0x277D24A08]])
    {
      v167 = +[MDMAttestation sharedInstance];
      v200 = 0;
      v168 = [v167 attestationCertificateChainAnonymous:objc_msgSend(v186 nonce:"isUserEnrollment") outError:{v68, &v200}];
      v169 = v200;

      if (!v168 || v169)
      {
        v170 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v228 = v169;
          _os_log_impl(&dword_2561F5000, v170, OS_LOG_TYPE_ERROR, "Failed obtaining device attestation certificate chain. Continuing without attestation. Error: %@", buf, 0xCu);
        }
      }

      if ([v168 count] == 2)
      {
        v171 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
        v172 = [v168 objectAtIndexedSubscript:0];
        v173 = SecCertificateCopyData(v172);
        [v171 setObject:v173 atIndexedSubscript:0];

        v174 = [v168 objectAtIndexedSubscript:1];
        v175 = SecCertificateCopyData(v174);
        [v171 setObject:v175 atIndexedSubscript:1];

        v69 = v195;
        [v195 setObject:v171 forKeyedSubscript:v166];
      }
    }

    [(MDMParser *)v194 _applyOverridesToDeviceInformationDictionary:v69];
    v225[0] = @"Acknowledged";
    v224[0] = @"Status";
    v224[1] = @"QueryResponses";
    v157 = [v69 copy];
    v225[1] = v157;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v225 forKeys:v224 count:2];
LABEL_184:
    v27 = 0;
  }

  v24 = v180;
  v26 = v184;
LABEL_186:

  v8 = v185;
LABEL_187:
  v11 = v187;

LABEL_33:
LABEL_34:

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_applyOverridesToDeviceInformationDictionary:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277D24AC0];
  v29 = v3;
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D24AC0]];

  if (v5)
  {
    v6 = MEMORY[0x277D03500];
    v7 = [v29 objectForKeyedSubscript:v4];
    v8 = [v6 modelNameWithDefaultValue:v7];
    [v29 setObject:v8 forKeyedSubscript:v4];
  }

  v9 = *MEMORY[0x277D24AC8];
  v10 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24AC8]];

  if (v10)
  {
    v11 = MEMORY[0x277D03500];
    v12 = [v29 objectForKeyedSubscript:v9];
    v13 = [v11 modelNumberWithDefaultValue:v12];
    [v29 setObject:v13 forKeyedSubscript:v9];
  }

  v14 = *MEMORY[0x277D24B00];
  v15 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24B00]];

  if (v15)
  {
    v16 = MEMORY[0x277D03500];
    v17 = [v29 objectForKeyedSubscript:v14];
    v18 = [v16 productNameWithDefaultValue:v17];
    [v29 setObject:v18 forKeyedSubscript:v14];
  }

  v19 = *MEMORY[0x277D24A00];
  v20 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24A00]];

  if (v20)
  {
    v21 = MEMORY[0x277D03500];
    v22 = [v29 objectForKeyedSubscript:v19];
    v23 = [v21 deviceNameWithDefaultValue:v22];
    [v29 setObject:v23 forKeyedSubscript:v19];
  }

  v24 = *MEMORY[0x277D24B68];
  v25 = [v29 objectForKeyedSubscript:*MEMORY[0x277D24B68]];

  if (v25)
  {
    v26 = MEMORY[0x277D03500];
    v27 = [v29 objectForKeyedSubscript:v24];
    v28 = [v26 softwareUpdateDeviceIDWithDefaultValue:v27];
    [v29 setObject:v28 forKeyedSubscript:v24];
  }
}

- (id)_certificateList:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"ManagedOnly"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = v3;
    v4 = [v3 BOOLValue];
    v5 = [MEMORY[0x277D24648] sharedConfiguration];
    v6 = [v5 isUserEnrollment];

    v30 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v30 installedProfilesWithFilterFlags:1];
    v37 = objc_opt_new();
    TypeID = SecIdentityGetTypeID();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v7;
    v35 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (!v35)
    {
      goto LABEL_31;
    }

    v34 = v6 | v4;
    v33 = *v44;
    while (1)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        if ((v34 & 1) == 0 || [*(*(&v43 + 1) + 8 * i) isManagedByMDM])
        {
          v36 = i;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v11 = [v10 payloads];
          v12 = [v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (!v12)
          {
            goto LABEL_28;
          }

          v13 = v12;
          v14 = *v40;
          while (1)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v40 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v39 + 1) + 8 * j);
              v17 = objc_opt_new();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = MEMORY[0x277D26260];
                v19 = [v16 certificatePersistentID];
                v20 = [v18 copyItemWithPersistentID:v19 useSystemKeychain:1];

                if (v20)
                {
                  certificateRef = 0;
                  v21 = CFGetTypeID(v20);
                  if (v21 == TypeID)
                  {
                    SecIdentityCopyCertificate(v20, &certificateRef);
                    CFRelease(v20);
                    v20 = certificateRef;
                    if (!certificateRef)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                    certificateRef = v20;
                  }

                  v22 = SecCertificateCopyData(v20);
                  if (v22)
                  {
                    v23 = v22;
                    [v17 setObject:v22 forKeyedSubscript:@"Data"];
                  }

                  v24 = SecCertificateCopyCommonNames();
                  CFRelease(certificateRef);
                  if (v24)
                  {
                    v25 = [v24 firstObject];
                    [v17 setObject:v25 forKeyedSubscript:@"CommonName"];
                  }

                  v26 = [MEMORY[0x277CCABB0] numberWithBool:v21 == TypeID];
                  [v17 setObject:v26 forKeyedSubscript:@"IsIdentity"];

                  [v37 addObject:v17];
                }
              }

LABEL_26:
            }

            v13 = [v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (!v13)
            {
LABEL_28:

              i = v36;
              break;
            }
          }
        }
      }

      v35 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (!v35)
      {
LABEL_31:

        v47[0] = @"Status";
        v47[1] = @"CertificateList";
        v48[0] = @"Acknowledged";
        v48[1] = v37;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

        v3 = v31;
        goto LABEL_33;
      }
    }
  }

  v27 = +[MDMParser malformedRequestErrorResult];
LABEL_33:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_provisioningProfileList:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"ManagedOnly"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = +[MDMParser malformedRequestErrorResult];
  }

  else
  {
    v27 = v3;
    v4 = [v3 BOOLValue];
    v5 = [MEMORY[0x277D24648] sharedConfiguration];
    v6 = [v5 isUserEnrollment];

    v7 = [MDMMCInterface provisioningProfileUUIDsWithManagedOnly:(v6 | v4) & 1];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          cf[0] = 0;
          v15 = MISCopyProvisioningProfile();
          if (v15)
          {
            v18 = v15;

            v19 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              LOWORD(cf[0]) = 0;
              _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_ERROR, "Could not retrieve the list of provisioning profiles.", cf, 2u);
            }

            v20 = MEMORY[0x277CCA9B8];
            v21 = *MEMORY[0x277D03428];
            v22 = [MEMORY[0x277CCABB0] numberWithInt:v18];
            v23 = DMCErrorArray();
            v24 = [v20 DMCErrorWithDomain:v21 code:25003 descriptionArray:v23 errorType:{*MEMORY[0x277D032F8], v22, 0}];
            v17 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v24];

            goto LABEL_15;
          }

          v16 = objc_opt_new();
          [v16 setObject:MISProvisioningProfileGetName() forKeyedSubscript:@"Name"];
          [v16 setObject:MISProvisioningProfileGetUUID() forKeyedSubscript:@"UUID"];
          [v16 setObject:MISProvisioningProfileGetExpirationDate() forKeyedSubscript:@"ExpiryDate"];
          CFRelease(cf[0]);
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v33[0] = @"Status";
    v33[1] = @"ProvisioningProfileList";
    v34[0] = @"Acknowledged";
    v34[1] = v8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
LABEL_15:
    v3 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_installProvisioningProfile:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"ProvisioningProfile"];
  v5 = [(MDMParser *)self managingProfileIdentifier];
  v9 = 0;
  [MDMMCInterface installProvisioningProfileData:v4 managingProfileIdentifier:v5 outError:&v9];
  v6 = v9;

  if (v6)
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithError:v6];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }
  v7 = ;

  return v7;
}

- (BOOL)_isProfileIdentifierManaged:(id)a3
{
  v4 = a3;
  if ([(MDMParser *)self isChaperoned])
  {
    v5 = 1;
  }

  else if (self->_managingProfileIdentifier)
  {
    v5 = [MDMMCInterface isProfileWithIdentifier:v4 managedByProfileWithIdentifier:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDDMProfileIdentifier:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v6 = [v5 installedProfileWithIdentifier:v4];

  v7 = [v6 installOptions];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D26430]];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isProvisioningProfileUUIDManaged:(id)a3
{
  v4 = a3;
  if ([(MDMParser *)self isChaperoned])
  {
    v5 = 1;
  }

  else if (self->_managingProfileIdentifier)
  {
    v5 = [MDMMCInterface isProvisioningProfileWithUUID:v4 managedByProfileWithIdentifier:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_removeProvisioningProfile:(id)a3
{
  v4 = [a3 objectForKey:@"UUID"];
  if (!v4)
  {
    v8 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
    goto LABEL_10;
  }

  if (![(MDMParser *)self isChaperoned]&& ![(MDMParser *)self _isProvisioningProfileUUIDManaged:v4])
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v6 = [v9 DMCErrorWithDomain:v10 code:12014 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], v4, 0}];

    goto LABEL_8;
  }

  v5 = [(MDMParser *)self managingProfileIdentifier];
  v13 = 0;
  [MDMMCInterface removeProvisioningProfileWithUUID:v4 managingProfileIdentifier:v5 outError:&v13];
  v6 = v13;

  if (v6)
  {
LABEL_8:
    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v6];
    goto LABEL_9;
  }

  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
LABEL_9:
  v8 = v7;

LABEL_10:

  return v8;
}

- (BOOL)_identifiersIsStringArray:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v13 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v10 = 0;
              goto LABEL_15;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v10 = 1;
LABEL_15:
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_installedApplicationList:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MDMInstalledApplicationListCommand);
  v5 = objc_alloc_init(MDMAppPropertyShim);
  [(MDMInstalledApplicationListCommand *)v4 setDataSource:v5];

  v6 = [MEMORY[0x277D24648] sharedConfiguration];
  -[MDMInstalledApplicationListCommand setIsUserEnrollment:](v4, "setIsUserEnrollment:", [v6 isUserEnrollment]);

  v7 = [(MDMInstalledApplicationListCommand *)v4 responseForRequest:v3];

  return v7;
}

- (id)_restrictions:(id)a3 withProfileFilterFlags:(int)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (_restrictions_withProfileFilterFlags__onceToken != -1)
  {
    [MDMParser _restrictions:withProfileFilterFlags:];
  }

  v57 = @"Status";
  v58[0] = @"Acknowledged";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  v7 = [v6 mutableCopy];

  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v55 = 0;
  v10 = [v9 performRequest:v8 error:&v55];
  v11 = v55;

  if (v11)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    DMCErrorArray();
    v15 = v14 = v7;
    v16 = [v12 DMCErrorWithDomain:v13 code:12082 descriptionArray:v15 errorType:{*MEMORY[0x277D032F8], 0}];

    v7 = v14;
    v17 = [objc_opt_class() responseWithError:v16];
    goto LABEL_23;
  }

  v49 = v8;
  v18 = [v10 restrictions];
  v19 = [MDMMCInterface filterMDMRestrictions:v18 acceptingKeysFromDictionary:_restrictions_withProfileFilterFlags__mdmQueryableRestrictions];
  [v7 setObject:v19 forKeyedSubscript:@"GlobalRestrictions"];
  [v7 setObject:v19 forKeyedSubscript:@"GlobalRestrictions"];

  v20 = [v5 objectForKeyedSubscript:@"ProfileRestrictions"];
  if (!v20)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v20 BOOLValue])
  {
    goto LABEL_21;
  }

  v48 = v7;
  v21 = objc_opt_new();
  v22 = v21;
  if (a4 == 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = a4 & 0x3F;
  }

  [v21 setFilterFlags:v23];
  v24 = v22;
  v25 = [MEMORY[0x277D04BF8] systemConnection];
  v54 = 0;
  v26 = [v25 performRequest:v22 error:&v54];
  v27 = v54;

  if (!v27)
  {
    v45 = v24;
    v46 = v20;
    v47 = v5;
    v32 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = v26;
    v33 = [v26 profiles];
    v34 = [v33 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v51;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v50 + 1) + 8 * i);
          v39 = [v38 restrictions];
          v40 = [MDMMCInterface filterMDMRestrictions:v39 acceptingKeysFromDictionary:_restrictions_withProfileFilterFlags__mdmQueryableRestrictions];
          v41 = [v38 identifier];
          [v32 setObject:v40 forKeyedSubscript:v41];
        }

        v35 = [v33 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v35);
    }

    v7 = v48;
    [v48 setObject:v32 forKeyedSubscript:@"ProfileRestrictions"];

    v20 = v46;
    v5 = v47;
LABEL_21:
    v17 = v7;
    v16 = 0;
    goto LABEL_22;
  }

  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277D03480];
  DMCErrorArray();
  v31 = v30 = v26;
  v16 = [v28 DMCErrorWithDomain:v29 code:12083 descriptionArray:v31 errorType:{*MEMORY[0x277D032F8], 0}];

  v17 = [objc_opt_class() responseWithError:v16];

  v7 = v48;
LABEL_22:

  v8 = v49;
LABEL_23:

  v42 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __50__MDMParser__restrictions_withProfileFilterFlags___block_invoke()
{
  _restrictions_withProfileFilterFlags__mdmQueryableRestrictions = +[MDMMCInterface mdmQueryableRestrictions];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)_profileInstallationStyleForRequest:(id)a3
{
  v3 = [(MDMParser *)self managingProfileIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (id)_installProfile:(id)a3 accessRights:(unint64_t)a4 installationType:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 objectForKey:@"Payload"];
  if (v9)
  {
    v30 = 0;
    v29 = 0;
    v10 = [MDMMCInterface profileIdentifierForProfileData:v9 allowEmptyPayload:0 outIsSupervisionProfile:&v30 outProfileSigner:0 outMayInstallCloudProfile:0 outError:&v29];
    v11 = v29;
    if (v11)
    {
LABEL_3:
      v12 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v11];

LABEL_4:
      goto LABEL_6;
    }

    if (-[MDMParser isChaperoned](self, "isChaperoned") || self->_managingProfileIdentifier && ([v10 isEqualToString:?] & 1) != 0 || (objc_msgSend(MEMORY[0x277D24648], "sharedConfiguration"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isUserEnrollment"), v14, (v6 & 2) != 0) || (v15 & 1) != 0)
    {
      if (![(MDMParser *)self _isDDMProfileIdentifier:v10])
      {
        if (v30 == 1)
        {
          v17 = *DMCLogObjects();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring supervision profile.", buf, 2u);
          }
        }

        else
        {
          v18 = objc_opt_new();
          v19 = [(MDMParser *)self managingProfileIdentifier];
          [v18 setManagingProfileIdentifier:v19];

          [v18 setStyle:{-[MDMParser _profileInstallationStyleForRequest:](self, "_profileInstallationStyleForRequest:", v8)}];
          [v18 setProfileData:v9];
          [v18 setType:a5 == 1];
          v20 = [MEMORY[0x277D24648] sharedConfiguration];
          v21 = [v20 personaID];

          if (v21)
          {
            [v18 setPersonaID:v21];
          }

          v22 = [MEMORY[0x277D04BF8] systemConnection];
          v27 = 0;
          v23 = [v22 performRequest:v18 error:&v27];
          v11 = v27;

          v24 = [v11 userInfo];
          v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

          if (v25)
          {
            v26 = v25;

            v11 = v26;
          }

          if (v11)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_27;
      }

      v16 = [(MDMParser *)self _managedByDDMError:v10];
    }

    else
    {
      v16 = [(MDMParser *)self _notAuthorizedError];
    }

    v11 = v16;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_27:
    v12 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    goto LABEL_4;
  }

  v12 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
LABEL_6:

  return v12;
}

- (id)_removeProfile:(id)a3
{
  v4 = [a3 objectForKey:@"Identifier"];
  if (v4)
  {
    [(MDMParser *)self _removeProfileWithIdentifier:v4 forInstalledProfilesWithFilterFlags:19];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }
  v5 = ;

  return v5;
}

- (id)_removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  if (!self->_managingProfileIdentifier)
  {
    goto LABEL_8;
  }

  if ([v6 isEqualToString:?])
  {
    v8 = objc_opt_new();

    [v8 setProfileIdentifier:v6];
    [v8 setType:a4 == 1];
    v9 = [MEMORY[0x277D04BF8] systemConnection];
    [v9 performRequest:v8 completion:&__block_literal_global_1109];

    v10 = 0;
    goto LABEL_14;
  }

  if ([(MDMParser *)self _isDDMProfileIdentifier:v6])
  {
    v11 = [(MDMParser *)self _managedByDDMError:v6];
    goto LABEL_9;
  }

  if ([(MDMParser *)self isChaperoned]|| [(MDMParser *)self _isProfileIdentifierManaged:v6])
  {
LABEL_8:
    [v7 setProfileIdentifier:v6];
    [v7 setType:a4 == 1];
    v12 = [MEMORY[0x277D04BF8] systemConnection];
    v21 = 0;
    v13 = [v12 performRequest:v7 error:&v21];
    v11 = v21;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D03480];
    v20 = DMCErrorArray();
    v11 = [v18 DMCErrorWithDomain:v19 code:12013 descriptionArray:v20 errorType:{*MEMORY[0x277D032F8], v6, 0}];
  }

LABEL_9:

  if (v11)
  {
    v14 = [v11 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v15)
    {
      v16 = v15;

      v11 = v16;
    }

    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v11];
  }

  else
  {
    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }

LABEL_14:

  return v10;
}

void __59__MDMParser__removeProfileWithIdentifier_installationType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Could not remove MDM profile: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateSetting:(id)a3 accessRights:(unint64_t)a4 outError:(id *)a5
{
  v6 = a4;
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 objectForKey:@"Item"];
  if (!v9)
  {
    goto LABEL_96;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_96;
  }

  v10 = [(MDMParser *)self _allSettingsItems];
  v11 = [v10 containsObject:v9];

  if (!v11)
  {
    goto LABEL_96;
  }

  if ([v9 isEqualToString:@"DeviceName"])
  {
    v12 = [v8 objectForKey:@"DeviceName"];
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"Wallpaper"])
  {
    v12 = [v8 objectForKey:@"Image"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v14 = [v8 objectForKey:@"Where"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v14 intValue] < 1)
    {

      goto LABEL_95;
    }

    v15 = [v14 intValue];

    if (v15 < 4)
    {
      goto LABEL_8;
    }

LABEL_96:
    v13 = 0;
    goto LABEL_97;
  }

  if ([v9 isEqualToString:@"SoftwareUpdateSettings"])
  {
    v12 = [v8 objectForKey:@"RecommendationCadence"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 intValue] <= 2 && (objc_msgSend(v12, "intValue") & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"DataRoaming"] || DMCCTSupportsVoiceRoaming() && objc_msgSend(v9, "isEqualToString:", @"VoiceRoaming") || objc_msgSend(v9, "isEqualToString:", @"Bluetooth") || objc_msgSend(MEMORY[0x277D03530], "hasInternetTetheringCapability") && objc_msgSend(v9, "isEqualToString:", @"PersonalHotspot"))
  {
    if ((v6 & 0x20) == 0)
    {
      if (a5)
      {
        [(MDMParser *)self _notAuthorizedError];
        *a5 = v13 = 0;
        goto LABEL_97;
      }

      goto LABEL_96;
    }

LABEL_87:
    v20 = @"Enabled";
    goto LABEL_88;
  }

  if ([v9 isEqualToString:@"ApplicationConfiguration"])
  {
    v12 = [v8 objectForKey:@"Identifier"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v16 = @"Configuration";
LABEL_41:
    v17 = [v8 objectForKey:v16];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [MEMORY[0x277D24648] sharedConfiguration];
      v19 = [v18 isUserEnrollment];

      if ((v6 & 0x1000) == 0 && (v19 & 1) == 0)
      {
        if (a5)
        {
          *a5 = [(MDMParser *)self _notAuthorizedError];
        }

        goto LABEL_94;
      }

LABEL_132:

      goto LABEL_7;
    }

LABEL_94:

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"ApplicationAttributes"])
  {
    v12 = [v8 objectForKey:@"Identifier"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v16 = @"Attributes";
    goto LABEL_41;
  }

  if ([v9 isEqualToString:@"MaximumResidentUsers"])
  {
    v20 = @"MaximumResidentUsers";
    goto LABEL_88;
  }

  if ([v9 isEqualToString:@"SharedDeviceConfiguration"])
  {
    v12 = [v8 objectForKey:@"QuotaSize"];
    v17 = [v8 objectForKey:@"ResidentUsers"];
    obj = [v8 objectForKey:@"UserSessionTimeout"];
    v58 = [v8 objectForKey:@"TemporarySessionTimeout"];
    v57 = [v8 objectForKey:@"TemporarySessionOnly"];
    v56 = [v8 objectForKey:@"ManagedAppleIDDefaultDomains"];
    v55 = [v8 objectForKey:@"OnlineAuthenticationGracePeriod"];
    v54 = [v8 objectForKeyedSubscript:@"AwaitUserConfiguration"];
    v21 = [v8 objectForKeyedSubscript:@"PasscodePolicy"];
    v22 = [MEMORY[0x277D24640] sharedConfiguration];
    v23 = [v22 isRapidReturnToService];

    v24 = [MEMORY[0x277D24640] sharedConfiguration];
    v25 = [v24 userMode];

    v26 = [MEMORY[0x277D034F8] isRRTSMDMTimeoutEnabled];
    if (v25 == 1)
    {
      goto LABEL_51;
    }

    if (v23)
    {
      if (v26)
      {
LABEL_51:
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!obj || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if (!v57 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (!v56 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    if (!v55 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      if (!v54 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v27 = [v54 objectForKey:@"Enabled"];
                          v28 = [v21 objectForKey:@"PasscodeLockGracePeriod"];
                          v29 = [v21 objectForKey:@"AutoLockTime"];
                          v30 = 0;
                          if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v30 = 1;
                              }
                            }
                          }

                          if (v30)
                          {
                            goto LABEL_8;
                          }

                          goto LABEL_96;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_93;
      }

      if (a5)
      {
        v34 = [(MDMParser *)self _invalidRequestTypeError:@"SharedDeviceConfiguration"];
LABEL_92:
        *a5 = v34;
      }
    }

    else if (a5)
    {
      v34 = [(MDMParser *)self _notInRRTSModeError];
      goto LABEL_92;
    }

LABEL_93:

    goto LABEL_94;
  }

  if ([v9 isEqualToString:@"DiagnosticSubmission"])
  {
    v12 = [v8 objectForKey:@"Enabled"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    if (!+[MDMMCInterface isDiagnosticsSubmissionRestricted])
    {
      goto LABEL_7;
    }

LABEL_80:
    if (a5)
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277D03448];
      v33 = DMCErrorArray();
      *a5 = [v31 DMCErrorWithDomain:v32 code:28003 descriptionArray:v33 errorType:{*MEMORY[0x277D032F8], 0}];
    }

    goto LABEL_95;
  }

  if ([v9 isEqualToString:@"AppAnalytics"])
  {
    goto LABEL_87;
  }

  if ([v9 isEqualToString:@"PasscodeLockGracePeriod"])
  {
    v20 = @"PasscodeLockGracePeriod";
LABEL_88:
    v12 = [v8 objectForKey:v20];
    if (v12)
    {
LABEL_6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:

LABEL_8:
        v13 = 1;
        goto LABEL_97;
      }
    }

LABEL_95:

    goto LABEL_96;
  }

  if ([v9 isEqualToString:@"OrganizationInfo"])
  {
    v12 = [v8 objectForKeyedSubscript:@"OrganizationInfo"];
    if (!v12)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030F0]];
    if (!v17)
    {
      goto LABEL_94;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v17 length])
    {
      goto LABEL_94;
    }

    v37 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030D8]];
    if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030F8]];
      if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v39 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030E0]];
        if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v40 = [v12 objectForKeyedSubscript:*MEMORY[0x277D030E8]];
          if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {

LABEL_131:
            goto LABEL_132;
          }
        }
      }
    }

LABEL_164:

    goto LABEL_94;
  }

  if ([v9 isEqualToString:@"DefaultApplications"])
  {
    v12 = [v8 objectForKeyedSubscript:@"WebBrowser"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v17 = [v8 objectForKeyedSubscript:@"Calling"];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![MEMORY[0x277D034F8] isSetDefaultCallingAndMessagingAppsEnabled])
      {
        goto LABEL_94;
      }
    }

    v37 = [v8 objectForKeyedSubscript:@"Messaging"];
    if (!v37)
    {
      goto LABEL_131;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x277D034F8] isSetDefaultCallingAndMessagingAppsEnabled])
    {
      goto LABEL_131;
    }

    goto LABEL_164;
  }

  if ([v9 isEqualToString:@"MDMOptions"])
  {
    v12 = [v8 objectForKeyedSubscript:@"MDMOptions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D24960]];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    v37 = [v12 objectForKeyedSubscript:*MEMORY[0x277D24968]];
    if (!v37)
    {
      goto LABEL_131;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_131;
    }

    goto LABEL_164;
  }

  if ([v9 isEqualToString:@"TimeZone"])
  {
    v12 = [v8 objectForKey:@"TimeZone"];
    if (!v12)
    {
      goto LABEL_95;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_95;
    }

    if (!+[MDMMCInterface isAutomaticDateAndTimeForced])
    {
      goto LABEL_7;
    }

    goto LABEL_80;
  }

  if (![v9 isEqualToString:@"AccessibilitySettings"])
  {
    goto LABEL_96;
  }

  [objc_opt_class() _numericAccessibilitySettingsKeys];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obja = v64 = 0u;
  v41 = [obja countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v62;
    while (2)
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v61 + 1) + 8 * i);
        v46 = [v8 objectForKeyedSubscript:v45];
        if (v46)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a5)
            {
              v49 = 28006;
              goto LABEL_158;
            }

LABEL_159:

            v13 = 0;
            goto LABEL_160;
          }

          if ([v45 isEqualToString:@"TextSize"])
          {
            v47 = +[MDMAccessibilityManager sharedInstance];
            v48 = [v47 isValidTextSize:{objc_msgSend(v46, "integerValue")}];

            if ((v48 & 1) == 0)
            {
              if (a5)
              {
                v49 = 28007;
LABEL_158:
                v50 = MEMORY[0x277CCA9B8];
                v51 = *MEMORY[0x277D03448];
                v53 = v45;
                v52 = DMCErrorArray();
                *a5 = [v50 DMCErrorWithDomain:v51 code:v49 descriptionArray:v52 errorType:{*MEMORY[0x277D032F8], v53, 0}];
              }

              goto LABEL_159;
            }
          }
        }
      }

      v42 = [obja countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_160:

LABEL_97:
  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_performSetDeviceName:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting device name.", buf, 2u);
  }

  v5 = [v3 objectForKey:@"DeviceName"];

  if (DMCLockdownSetDeviceName())
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03458];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:14003 descriptionArray:v9 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  return v6;
}

- (id)_performSetWallpaper:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting wallpaper.", buf, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:@"Image"];
  v6 = [MEMORY[0x277D755B8] imageWithData:v5];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"Where"];
    v8 = [v7 intValue];

    if (v8 == 3)
    {
      v9 = 1;
    }

    else
    {
      if (v8 != 1)
      {
        v14 = 0;
        v9 = 1;
        goto LABEL_13;
      }

      v9 = 0;
    }

    v14 = 1;
LABEL_13:
    *buf = 0;
    v28 = buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__5;
    v31 = __Block_byref_object_dispose__5;
    v32 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = objc_opt_new();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __34__MDMParser__performSetWallpaper___block_invoke;
    v24[3] = &unk_27982C4B8;
    v17 = v15;
    v25 = v17;
    v26 = buf;
    [v16 setWallpaper:v6 forLockScreen:v14 homeScreen:v9 completionHandler:v24];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v28 + 5))
    {
      v18 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v28 + 5);
        *v33 = 138543362;
        v34 = v19;
        _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_ERROR, "Failed to set wallpaper with error: %{public}@", v33, 0xCu);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = DMCErrorArray();
      v13 = [v20 DMCErrorWithDomain:*MEMORY[0x277D03448] code:28002 descriptionArray:v21 errorType:{*MEMORY[0x277D032F8], 0}];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  v10 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_ERROR, "Could not get image from data", buf, 2u);
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = DMCErrorArray();
  v13 = [v11 DMCErrorWithDomain:*MEMORY[0x277D03448] code:28001 descriptionArray:v12 errorType:{*MEMORY[0x277D032F8], 0}];

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

void __34__MDMParser__performSetWallpaper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_performSetDataRoaming:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"Enabled"];
  v4 = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting data roaming enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:v4];
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v15 = 0;
  v10 = [v9 performRequest:v8 error:&v15];
  v11 = v15;
  v12 = v15;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_performSetVoiceRoaming:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"Enabled"];
  v4 = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting voice roaming enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:v4];
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v15 = 0;
  v10 = [v9 performRequest:v8 error:&v15];
  v11 = v15;
  v12 = v15;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_performSetBluetooth:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"Enabled"];
  v4 = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting Bluetooth enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:v4];
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v15 = 0;
  v10 = [v9 performRequest:v8 error:&v15];
  v11 = v15;
  v12 = v15;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_performSetPersonalHotspot:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"Enabled"];
  v4 = [v3 BOOLValue];

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Setting Personal Hotspot enabled: %{public}@", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setEnabled:v4];
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v15 = 0;
  v10 = [v9 performRequest:v8 error:&v15];
  v11 = v15;
  v12 = v15;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_performSetUpdatePath:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Writing Software Update setting to disk.", buf, 2u);
  }

  v5 = [MEMORY[0x277D24648] sharedConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__MDMParser__performSetUpdatePath___block_invoke;
  v14[3] = &unk_27982C098;
  v6 = v3;
  v15 = v6;
  v13 = 0;
  [v5 updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v14 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D03480];
    v10 = DMCErrorArray();
    v11 = [v8 DMCErrorWithDomain:v9 code:12098 descriptionArray:v10 underlyingError:v7 errorType:{*MEMORY[0x277D03300], 0}];
  }

  else
  {
    DMCSendSettingsChangedNotification();
    v11 = 0;
  }

  return v11;
}

- (void)_performSetDefaultApp:(id)a3 forCategory:(unint64_t)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v7;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Setting default app: %{public}@ for category: %lu", buf, 0x16u);
  }

  v18 = 0;
  v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 fetchingPlaceholder:0 error:&v18];
  v11 = v18;
  v12 = [v10 supportedDefaultAppCategories];
  if (v11)
  {
    v8[2](v8, v11);
  }

  else if ((LSDefaultAppCategoryMaskForCategory() & v12) != 0)
  {
    v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__MDMParser__performSetDefaultApp_forCategory_completion___block_invoke;
    v16[3] = &unk_27982BA30;
    v17 = v8;
    [v13 setDefaultApplicationForCategory:a4 toApplicationRecord:v10 completionHandler:v16];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CustomSetDefaultAppErrorDomain" code:1 userInfo:0];
    v8[2](v8, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_performSetDefaultBrowser:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Setting default browser: %{public}@", buf, 0xCu);
  }

  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 fetchingPlaceholder:0 error:&v16];
  v9 = v16;
  if (v9)
  {
    v6[2](v6, v9);
  }

  else if ([v8 isEligibleWebBrowser])
  {
    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__MDMParser__performSetDefaultBrowser_completion___block_invoke;
    v14[3] = &unk_27982BA30;
    v15 = v6;
    [v10 setDefaultWebBrowserToApplicationRecord:v8 completionHandler:v14];
  }

  else
  {
    if ([v8 isWebBrowser])
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CustomSetDefaultBrowserErrorDomain" code:v11 userInfo:0];
    v6[2](v6, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_malformedRequestError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (BOOL)_isManagedApp:(id)a3
{
  v4 = [a3 managementInformation];
  LOBYTE(self) = [(MDMParser *)self _isManagedAppFromManagementInformation:v4];

  return self;
}

- (BOOL)_isManagedAppFromManagementInformation:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
    if (v5 <= 0x10)
    {
      v6 = 0x1F9F5u >> v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)_handleSetAppManagementInfoRequest:(id)a3 outAdditionalResponseKeys:(id *)a4 block:(id)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [a3 objectForKeyedSubscript:@"Identifier"];
  v10 = v9;
  if (a4)
  {
    v45 = @"Identifier";
    v46[0] = v9;
    *a4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  }

  v11 = objc_opt_new();
  [v11 setType:2];
  [v11 setManagedAppsOnly:1];
  v44 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  [v11 setBundleIdentifiers:v12];

  v43[0] = @"managementInformation";
  v43[1] = @"sourceIdentifier";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [v11 setPropertyKeys:v13];

  v14 = [MEMORY[0x277D04BF8] currentUserConnection];
  v41 = 0;
  v15 = [v14 performRequest:v11 error:&v41];
  v16 = v41;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    goto LABEL_11;
  }

  v19 = [v15 appsByBundleIdentifier];
  v20 = [v19 allValues];
  v21 = [v20 firstObject];

  if ([(MDMParser *)self _isManagedApp:v21])
  {
    v22 = [v21 sourceIdentifier];

    if (!v22)
    {
      v8[2](v8, v10);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v40 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v27)
      {
        v28 = v27;
        v34 = v21;
        v35 = v8;
        v29 = *v38;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v37 + 1) + 8 * i);
            v36 = 0;
            v32 = [v14 performRequest:v31 error:&v36];
            v33 = v36;
            if (v33)
            {
              v18 = v33;
              goto LABEL_24;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        v18 = 0;
LABEL_24:
        v21 = v34;
        v8 = v35;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_10;
    }

    v23 = [(MDMParser *)self _installApplicationCouldNotModifyDDMAppsError];
  }

  else
  {
    v23 = [(MDMParser *)self _notManagedErrorAppID:v10];
  }

  v18 = v23;
LABEL_10:

LABEL_11:
  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_performSetAppConfig:(id)a3 outAdditionalResponseKeys:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__MDMParser__performSetAppConfig_outAdditionalResponseKeys___block_invoke;
  v10[3] = &unk_27982C4E0;
  v11 = v6;
  v7 = v6;
  v8 = [(MDMParser *)self _handleSetAppManagementInfoRequest:v7 outAdditionalResponseKeys:a4 block:v10];

  return v8;
}

id __60__MDMParser__performSetAppConfig_outAdditionalResponseKeys___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setBundleIdentifier:v3];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"Configuration"];
  [v4 setConfiguration:v5];

  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_performSetAppAttributes:(id)a3 outAdditionalResponseKeys:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"Attributes"];
  v8 = [(MDMParser *)self _appAttributesWithRequestedAttributes:v7];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24898]];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [(MDMParser *)self _malformedRequestError];
      goto LABEL_55;
    }
  }

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24868]];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24870]];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [(MDMParser *)self _malformedRequestError];
LABEL_53:

        goto LABEL_54;
      }
    }

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24878]];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [(MDMParser *)self _malformedRequestError];
LABEL_52:

        goto LABEL_53;
      }
    }

    v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24880]];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [(MDMParser *)self _malformedRequestError];
LABEL_51:

        goto LABEL_52;
      }
    }

    v38 = v13;
    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24858]];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [(MDMParser *)self _malformedRequestError];
        v26 = v14;
LABEL_50:

        v13 = v38;
        goto LABEL_51;
      }

      v32 = v10;
      v34 = a4;
      v29 = v12;
      v30 = v11;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v51 = 0u;
      v36 = v14;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v52;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v52 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v51 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v25 = [(MDMParser *)self _malformedRequestError];

              v11 = v30;
              v10 = v32;
              v12 = v29;
              v26 = v36;
              goto LABEL_50;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v11 = v30;
      v10 = v32;
      v12 = v29;
      a4 = v34;
      v14 = v36;
    }

    v37 = v14;
    v21 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24860]];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v25 = [(MDMParser *)self _malformedRequestError];
      v26 = v14;
    }

    else
    {
      v22 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24890]];
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = [(MDMParser *)self _malformedRequestError];
      }

      else
      {
        v35 = a4;
        v23 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24848]];
        if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v25 = [(MDMParser *)self _malformedRequestError];
        }

        else
        {
          v33 = v23;
          v31 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24850]];
          if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v25 = [(MDMParser *)self _malformedRequestError];
          }

          else
          {
            v24 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24888]];
            if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v25 = [(MDMParser *)self _malformedRequestError];
            }

            else
            {
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __64__MDMParser__performSetAppAttributes_outAdditionalResponseKeys___block_invoke;
              v39[3] = &unk_27982C508;
              v40 = v9;
              v41 = v10;
              v42 = v11;
              v43 = v12;
              v44 = v38;
              v45 = v37;
              v46 = v21;
              v47 = v22;
              v48 = v33;
              v49 = v31;
              v50 = v24;
              v25 = [(MDMParser *)self _handleSetAppManagementInfoRequest:v6 outAdditionalResponseKeys:v35 block:v39];
            }
          }

          v23 = v33;
        }
      }

      v26 = v37;
    }

    goto LABEL_50;
  }

  v25 = [(MDMParser *)self _malformedRequestError];
LABEL_54:

LABEL_55:
  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

id __64__MDMParser__performSetAppAttributes_outAdditionalResponseKeys___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setBundleIdentifier:v3];
  [v4 setVPNUUIDString:a1[4]];
  [v4 setCellularSliceUUIDString:a1[5]];
  [v4 setContentFilterUUIDString:a1[6]];
  [v4 setDNSProxyUUIDString:a1[7]];
  [v4 setRelayUUIDString:a1[8]];
  v5 = objc_opt_new();
  [v5 setBundleIdentifier:v3];
  [v5 setAssociatedDomains:a1[9]];
  v6 = objc_opt_new();
  [v6 setBundleIdentifier:v3];
  [v6 setAssociatedDomainsEnableDirectDownloads:a1[10]];
  v7 = objc_opt_new();
  [v7 setBundleIdentifier:v3];
  [v7 setTapToPayScreenLock:a1[11]];
  v8 = objc_opt_new();
  [v8 setBundleIdentifier:v3];
  [v8 setAllowUserToHide:a1[12]];
  v9 = objc_opt_new();
  [v9 setBundleIdentifier:v3];
  [v9 setAllowUserToLock:a1[13]];
  v10 = objc_opt_new();
  [v10 setBundleIdentifier:v3];

  [v10 setRemovable:a1[14]];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v12 = v11;
  if (v4)
  {
    [v11 addObject:v4];
  }

  if (v5)
  {
    [v12 addObject:v5];
  }

  if (v6)
  {
    [v12 addObject:v6];
  }

  if (v7)
  {
    [v12 addObject:v7];
  }

  if (v8)
  {
    [v12 addObject:v8];
  }

  if (v9)
  {
    [v12 addObject:v9];
  }

  if (v10)
  {
    [v12 addObject:v10];
  }

  return v12;
}

- (id)_performSetSharedDeviceConfiguration:(id)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting shared device configuration.", buf, 2u);
  }

  v6 = [MEMORY[0x277D24640] sharedConfiguration];
  v7 = [v6 isRapidReturnToService];

  v8 = [MEMORY[0x277D24640] sharedConfiguration];
  v9 = [v8 userMode];

  if (v7 && v9 != 1)
  {
    v10 = MEMORY[0x277CBEB98];
    v43[0] = @"TemporarySessionTimeout";
    v43[1] = @"Item";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __50__MDMParser__performSetSharedDeviceConfiguration___block_invoke;
    v39[3] = &unk_27982C530;
    v40 = v12;
    v14 = v13;
    v41 = v14;
    v15 = v12;
    [v4 enumerateKeysAndObjectsUsingBlock:v39];
    v16 = v14;

    v4 = v16;
  }

  v17 = [v4 objectForKey:@"QuotaSize"];
  v18 = [v4 objectForKey:@"ResidentUsers"];
  v19 = [v4 objectForKey:@"TemporarySessionOnly"];
  v20 = [v4 objectForKey:@"PasscodePolicy"];
  v21 = [v20 objectForKey:@"PasscodeLockGracePeriod"];
  v22 = [v20 objectForKey:@"AutoLockTime"];
  v23 = [(MDMParser *)self _performSetSessionTimeout:v4];
  if (!v23 && v9 == 1)
  {
    if ([v19 BOOLValue])
    {
      if (v17)
      {
        v24 = [(MDMParser *)self _performSetResidentUserQuotaSize:v4];
        if (v24)
        {
LABEL_22:
          v23 = v24;
          goto LABEL_23;
        }
      }

LABEL_17:
      v24 = [(MDMParser *)self _performSetTemporarySessionOnly:v4];
      if (!v24)
      {
        v24 = [(MDMParser *)self _performSetMAIDDefaultDomains:v4];
        if (!v24)
        {
          v24 = [(MDMParser *)self _performSetOnlineAuthenticationGracePeriod:v4];
          if (!v24)
          {
            v24 = [(MDMParser *)self _performSetSkipLanguageAndLocaleSetupForNewUsers:v4];
            if (!v24)
            {
              v24 = [(MDMParser *)self _performSetAwaitUserConfiguration:v4];
              if (!v24)
              {
                v28 = [MEMORY[0x277D26248] sharedHacks];
                v38 = [v28 quantizedGracePeriodInSeconds:v21];

                v29 = [MEMORY[0x277D262A0] sharedConnection];
                [v29 setValue:v38 forSetting:*MEMORY[0x277D25FE0]];

                v30 = MEMORY[0x277CCABB0];
                v31 = [MEMORY[0x277D26248] sharedHacks];
                v32 = [v31 quantizedAutoLockInSeconds:v22];
                v33 = [v32 integerValue];

                v34 = [v22 integerValue];
                if (v33 <= v34)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v33;
                }

                v36 = [v30 numberWithInteger:v35];

                v37 = [MEMORY[0x277D262A0] sharedConnection];
                [v37 setValue:v36 forSetting:*MEMORY[0x277D25D78]];

                v23 = 0;
                v22 = v36;
                v21 = v38;
                goto LABEL_23;
              }
            }
          }
        }
      }

      goto LABEL_22;
    }

    if (v17)
    {
      v25 = [(MDMParser *)self _performSetResidentUserQuotaSize:v4];
    }

    else
    {
      if (!v18)
      {
        goto LABEL_17;
      }

      v25 = [(MDMParser *)self _performSetResidentUsers:v4];
    }

    v23 = v25;
    if (v25)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_23:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

void __50__MDMParser__performSetSharedDeviceConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)_performSetResidentUsers:(id)a3
{
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting resident users for shared device.", v9, 2u);
  }

  v6 = [v4 objectForKey:@"ResidentUsers"];

  v7 = [(MDMParser *)self _setResidentUsersNumber:v6];

  return v7;
}

- (id)_performSetMaximumResidentUsers:(id)a3
{
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting maximum resident users.", v9, 2u);
  }

  v6 = [v4 objectForKey:@"MaximumResidentUsers"];

  v7 = [(MDMParser *)self _setResidentUsersNumber:v6];

  return v7;
}

- (id)_setResidentUsersNumber:(id)a3
{
  v3 = a3;
  if ([v3 integerValue] <= 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v10 = *MEMORY[0x277D032F8];
    v11 = v15;
    v12 = v16;
    v13 = 12092;
  }

  else
  {
    if (![MEMORY[0x277D03538] isFirstSetupBuddyDone] || (objc_msgSend(MEMORY[0x277D77BF8], "sharedManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "allUsers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, !v6))
    {
      v14 = [MEMORY[0x277D03538] configureResidentUsersNumberForSharedDevice:v3 preferenceDomain:*MEMORY[0x277D24950]];
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v10 = *MEMORY[0x277D032F8];
    v11 = v7;
    v12 = v8;
    v13 = 12090;
  }

  v14 = [v11 DMCErrorWithDomain:v12 code:v13 descriptionArray:v9 errorType:{v10, 0}];

LABEL_8:

  return v14;
}

- (id)_performSetResidentUserQuotaSize:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad resident user quota size.", buf, 2u);
  }

  if ([MEMORY[0x277D03538] isFirstSetupBuddyDone] && (objc_msgSend(MEMORY[0x277D77BF8], "sharedManager"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "allUsers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D03480];
    v10 = DMCErrorArray();
    v11 = [v8 DMCErrorWithDomain:v9 code:12090 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  else
  {
    v10 = [v3 objectForKey:@"QuotaSize"];
    if ([v10 integerValue] > 2047)
    {
      v15 = [v10 unsignedLongLongValue];
      v16 = MEMORY[0x277D03538];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:1000000 * v15];
      [v16 configureQuotaSizeForSharedDevice:v14 preferenceDomain:*MEMORY[0x277D24950]];
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D03480];
      v14 = DMCErrorArray();
      [v12 DMCErrorWithDomain:v13 code:12091 descriptionArray:v14 errorType:{*MEMORY[0x277D032F8], 0}];
    }
    v11 = ;
  }

  return v11;
}

- (id)_performSetSessionTimeout:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad session timeout.", buf, 2u);
  }

  v5 = [v3 objectForKey:@"UserSessionTimeout"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  [v5 floatValue];
  v8 = v7;
  v9 = v7 >= 30.0 || v7 <= 0.0;
  v10 = 30.0;
  if (v9)
  {
    v10 = v8;
  }

  if (([MEMORY[0x277D03538] configureUserSessionTimeout:{v10, v8}] & 1) == 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D03480];
    v12 = DMCErrorArray();
    v17 = [v18 DMCErrorWithDomain:v19 code:12093 descriptionArray:v12 errorType:{*MEMORY[0x277D03308], 0}];
  }

  else
  {
LABEL_11:
    v11 = [v3 objectForKey:@"TemporarySessionTimeout"];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_19;
    }

    [v11 floatValue];
    v14 = v13;
    v15 = v13 >= 30.0 || v13 <= 0.0;
    v16 = 30.0;
    if (v15)
    {
      v16 = v14;
    }

    if (([MEMORY[0x277D03538] configureTemporarySessionTimeout:{v16, v14}] & 1) == 0)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D03480];
      v22 = DMCErrorArray();
      v17 = [v20 DMCErrorWithDomain:v21 code:12093 descriptionArray:v22 errorType:{*MEMORY[0x277D03308], 0}];
    }

    else
    {
LABEL_19:
      v17 = 0;
    }
  }

  return v17;
}

- (id)_performSetTemporarySessionOnly:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad temporary session only mode.", buf, 2u);
  }

  v5 = [v3 objectForKey:@"TemporarySessionOnly"];
  v6 = [v3 objectForKey:@"QuotaSize"];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 objectForKeyedSubscript:@"ResidentUsers"];
    v7 = v8 == 0;
  }

  v9 = MEMORY[0x277D03538];
  v10 = [v5 BOOLValue];
  if ([v9 configureTemporarySessionOnly:v10 useDynamicQuotaSize:v6 == 0 restoreQuotaSizeWhenDisabled:v7 preferenceDomain:*MEMORY[0x277D24950]])
  {
    v11 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    v14 = DMCErrorArray();
    v11 = [v12 DMCErrorWithDomain:v13 code:12094 descriptionArray:v14 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v11;
}

- (id)_performSetMAIDDefaultDomains:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad Managed Apple ID default domain.", buf, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:@"ManagedAppleIDDefaultDomains"];

  if ([MEMORY[0x277D03538] configureMAIDDefaultDomains:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = DMCErrorArray();
    v6 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D03480] code:12104 descriptionArray:v7 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetOnlineAuthenticationGracePeriod:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad online authentication grace period", buf, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:@"OnlineAuthenticationGracePeriod"];

  if ([MEMORY[0x277D03538] configureOnlineAuthenticationGracePeriod:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:12105 descriptionArray:v9 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetSkipLanguageAndLocaleSetupForNewUsers:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad skip language and locale setup for new users", buf, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:@"SkipLanguageAndLocaleSetupForNewUsers"];

  if ([MEMORY[0x277D03538] configureShouldSkipLanguageAndLocaleSetupForNewUsers:{objc_msgSend(v5, "BOOLValue")}])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:12115 descriptionArray:v9 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetAwaitUserConfiguration:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Setting Shared iPad await user configuration", buf, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:@"AwaitUserConfiguration"];

  if ([MEMORY[0x277D03538] configureAwaitUserConfiguration:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03480];
    v9 = DMCErrorArray();
    v6 = [v7 DMCErrorWithDomain:v8 code:12123 descriptionArray:v9 errorType:{*MEMORY[0x277D03308], 0}];
  }

  return v6;
}

- (id)_performSetDiagnosticSubmission:(id)a3
{
  v4 = [a3 objectForKey:@"Enabled"];
  v5 = [v4 BOOLValue];

  v6 = [(MDMParser *)self _setDiagnosticSubmissionEnabled:v5];
  if (!v6)
  {
    if ([(MDMParser *)self _isChlorineEligible])
    {
      v6 = [(MDMParser *)self _setAppAnalyticsEnabled:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_performSetAppAnalytics:(id)a3
{
  v4 = [a3 objectForKey:@"Enabled"];
  v5 = [v4 BOOLValue];

  if (![(MDMParser *)self _isChlorineEligible])
  {
    goto LABEL_4;
  }

  v6 = [(MDMParser *)self _setDiagnosticSubmissionEnabled:v5];
  if (v6)
  {
    goto LABEL_5;
  }

  if (![(MDMParser *)self _isChlorineEligible])
  {
    v6 = 0;
  }

  else
  {
LABEL_4:
    v6 = [(MDMParser *)self _setAppAnalyticsEnabled:v5];
  }

LABEL_5:

  return v6;
}

- (id)_performSetGracePeriod:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"PasscodeLockGracePeriod"];
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 67109120;
    v15 = [v3 intValue];
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Setting grace period: %d seconds", buf, 8u);
  }

  v6 = objc_opt_new();
  [v6 setSeconds:{objc_msgSend(v3, "unsignedIntegerValue")}];
  v7 = [MEMORY[0x277D04BF8] systemConnection];
  v13 = 0;
  v8 = [v7 performRequest:v6 error:&v13];
  v9 = v13;
  v10 = v13;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_performSetOrganizationInfo:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"OrganizationInfo"];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    if (_performSetOrganizationInfo__onceToken != -1)
    {
      [MDMParser _performSetOrganizationInfo:];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = _performSetOrganizationInfo__validKeys;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v5 objectForKeyedSubscript:{v12, v22}];
          v14 = v13;
          if (v13 && [v13 length])
          {
            [v6 setObject:v14 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v15 = [v6 count];
    v16 = [(MDMParser *)self server];
    v17 = v16;
    if (v15)
    {
      v18 = v6;
    }

    else
    {
      v18 = 0;
    }

    [v16 setOrganizationInfo:{v18, v22}];
  }

  else
  {
    v19 = [(MDMParser *)self server];
    [v19 setOrganizationInfo:0];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

void __41__MDMParser__performSetOrganizationInfo___block_invoke()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D03100];
  v6[0] = *MEMORY[0x277D030F0];
  v6[1] = v0;
  v1 = *MEMORY[0x277D030F8];
  v6[2] = *MEMORY[0x277D030D8];
  v6[3] = v1;
  v2 = *MEMORY[0x277D030E8];
  v6[4] = *MEMORY[0x277D030E0];
  v6[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = _performSetOrganizationInfo__validKeys;
  _performSetOrganizationInfo__validKeys = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_performSetDefaultApplications:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count") - 1}];
  if (_performSetDefaultApplications__onceToken != -1)
  {
    [MDMParser _performSetDefaultApplications:];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = _performSetDefaultApplications__validKeys;
  v7 = [v6 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v7)
  {
    v8 = *v60;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v11 length])
            {
              [v5 setObject:v11 forKeyedSubscript:v10];
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v7);
  }

  v12 = [v5 objectForKeyedSubscript:@"WebBrowser"];

  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = [v5 objectForKeyedSubscript:@"WebBrowser"];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__5;
  v57 = __Block_byref_object_dispose__5;
  v58 = 0;
  v14 = objc_opt_new();
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __44__MDMParser__performSetDefaultApplications___block_invoke_2;
  v49[3] = &unk_27982C558;
  v15 = v13;
  v50 = v15;
  v52 = &v53;
  v16 = v14;
  v51 = v16;
  [(MDMParser *)self _performSetDefaultBrowser:v15 completion:v49];
  [v16 waitForCompletion];
  v17 = v54[5];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_INFO, "Successfully set the default browser. Disallowing preference prompting.", buf, 2u);
    }

    v20 = [MEMORY[0x277D262A0] sharedConnection];
    [v20 setBoolValue:0 forSetting:@"allowDefaultBrowserPrompting"];
  }

  _Block_object_dispose(&v53, 8);
  if (!v17)
  {
LABEL_21:
    v21 = [v5 objectForKeyedSubscript:@"Calling"];

    if (!v21)
    {
      goto LABEL_27;
    }

    v22 = [v5 objectForKeyedSubscript:@"Calling"];
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__5;
    v57 = __Block_byref_object_dispose__5;
    v58 = 0;
    v23 = objc_opt_new();
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __44__MDMParser__performSetDefaultApplications___block_invoke_1201;
    v44[3] = &unk_27982C558;
    v24 = v22;
    v45 = v24;
    v47 = &v53;
    v25 = v23;
    v46 = v25;
    [(MDMParser *)self _performSetDefaultApp:v24 forCategory:4 completion:v44];
    [v25 waitForCompletion];
    v17 = v54[5];
    if (v17)
    {
      v26 = v17;
    }

    else
    {
      v27 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_DEFAULT, "Successfully set the default calling app.", buf, 2u);
      }
    }

    _Block_object_dispose(&v53, 8);
    if (!v17)
    {
LABEL_27:
      v28 = [v5 objectForKeyedSubscript:@"Messaging"];

      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = [v5 objectForKeyedSubscript:@"Messaging"];
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__5;
      v57 = __Block_byref_object_dispose__5;
      v58 = 0;
      v30 = objc_opt_new();
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __44__MDMParser__performSetDefaultApplications___block_invoke_1202;
      v40 = &unk_27982C558;
      v31 = v29;
      v41 = v31;
      v43 = &v53;
      v32 = v30;
      v42 = v32;
      [(MDMParser *)self _performSetDefaultApp:v31 forCategory:3 completion:&v37];
      [v32 waitForCompletion];
      v17 = v54[5];
      if (v17)
      {
        v33 = v17;
      }

      else
      {
        v34 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Successfully set the default messaging app.", buf, 2u);
        }
      }

      _Block_object_dispose(&v53, 8);
      if (!v17)
      {
LABEL_33:
        v17 = 0;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v17;
}

void __44__MDMParser__performSetDefaultApplications___block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"WebBrowser";
  v3[1] = @"Calling";
  v3[2] = @"Messaging";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = _performSetDefaultApplications__validKeys;
  _performSetDefaultApplications__validKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __44__MDMParser__performSetDefaultApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set default browser to %{public}@ with error code %{public}@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) complete];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__MDMParser__performSetDefaultApplications___block_invoke_1201(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set default calling app to: %{public}@ with error code: %{public}@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) complete];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__MDMParser__performSetDefaultApplications___block_invoke_1202(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set default messaging app to: %{public}@ with error code: %{public}@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) complete];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_performSetMDMOptions:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MDMOptions"];
  v5 = [MEMORY[0x277D24688] validatedMDMOptionsFromOptionsDictionary:v4];
  v6 = [(MDMParser *)self server];
  [v6 setMDMOptions:v5];

  return 0;
}

- (id)_performSetTimezone:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"TimeZone"];
  [v3 UTF8String];
  v4 = tzlink();
  if (v4)
  {
    v5 = v4;
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v3;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Failed to set timezone to %{public}@ with error code %d", buf, 0x12u);
    }

    if (v5 <= 0x2D && ((1 << v5) & 0x200000000022) != 0)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D03448];
      v9 = DMCErrorArray();
      v10 = *MEMORY[0x277D032F8];
      v11 = v7;
      v12 = v8;
      v13 = 28005;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D03448];
      v9 = DMCErrorArray();
      v10 = *MEMORY[0x277D032F8];
      v11 = v15;
      v12 = v16;
      v13 = 28004;
    }

    v14 = [v11 DMCErrorWithDomain:v12 code:v13 descriptionArray:v9 errorType:{v10, 0}];
  }

  else
  {
    TMSetAutomaticTimeZoneEnabled();
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_performSetAccessibilitySettings:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [objc_opt_class() _allAccessibilitySettingsKeys];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 138543362;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:{v10, v15}];
        if (v11)
        {
          v12 = +[MDMAccessibilityManager sharedInstance];
          if ([v10 isEqualToString:@"ZoomEnabled"])
          {
            [v12 setZoomEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"BoldTextEnabled"])
          {
            [v12 setBoldTextEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"VoiceOverEnabled"])
          {
            [v12 setVoiceOverEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"ReduceMotionEnabled"])
          {
            [v12 setReduceMotionEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"IncreaseContrastEnabled"])
          {
            [v12 setIncreaseContrastEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"TouchAccommodationsEnabled"])
          {
            [v12 setTouchAccommodationsEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"ReduceTransparencyEnabled"])
          {
            [v12 setReduceTransparencyEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"GrayscaleEnabled"])
          {
            [v12 setGrayscaleEnabled:{objc_msgSend(v11, "BOOLValue")}];
          }

          else if ([v10 isEqualToString:@"TextSize"])
          {
            [v12 setTextSize:{objc_msgSend(v11, "integerValue")}];
          }

          else
          {
            log = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v22 = v10;
              _os_log_impl(&dword_2561F5000, log, OS_LOG_TYPE_ERROR, "Ignoring unsupported accessibility key: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)_numericAccessibilitySettingsKeys
{
  if (_numericAccessibilitySettingsKeys_onceToken != -1)
  {
    +[MDMParser _numericAccessibilitySettingsKeys];
  }

  v3 = _numericAccessibilitySettingsKeys_numericKeys;

  return v3;
}

void __46__MDMParser__numericAccessibilitySettingsKeys__block_invoke()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"ZoomEnabled";
  v3[1] = @"BoldTextEnabled";
  v3[2] = @"VoiceOverEnabled";
  v3[3] = @"ReduceMotionEnabled";
  v3[4] = @"IncreaseContrastEnabled";
  v3[5] = @"TouchAccommodationsEnabled";
  v3[6] = @"ReduceTransparencyEnabled";
  v3[7] = @"GrayscaleEnabled";
  v3[8] = @"TextSize";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = _numericAccessibilitySettingsKeys_numericKeys;
  _numericAccessibilitySettingsKeys_numericKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_performSetting:(id)a3 outAdditionalResponseKeys:(id *)a4 outRestartAppleTVApp:(BOOL *)a5
{
  v7 = a3;
  v8 = [v7 objectForKey:@"Item"];
  if ([v8 isEqualToString:@"DeviceName"])
  {
    v9 = [(MDMParser *)self _performSetDeviceName:v7];
LABEL_39:
    v10 = v9;
    goto LABEL_40;
  }

  if ([v8 isEqualToString:@"Wallpaper"])
  {
    v9 = [(MDMParser *)self _performSetWallpaper:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DataRoaming"])
  {
    v9 = [(MDMParser *)self _performSetDataRoaming:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"VoiceRoaming"])
  {
    v9 = [(MDMParser *)self _performSetVoiceRoaming:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"Bluetooth"])
  {
    v9 = [(MDMParser *)self _performSetBluetooth:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"PersonalHotspot"])
  {
    v9 = [(MDMParser *)self _performSetPersonalHotspot:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"ApplicationConfiguration"])
  {
    v9 = [(MDMParser *)self _performSetAppConfig:v7 outAdditionalResponseKeys:a4];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"ApplicationAttributes"])
  {
    v9 = [(MDMParser *)self _performSetAppAttributes:v7 outAdditionalResponseKeys:a4];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"MaximumResidentUsers"])
  {
    v9 = [(MDMParser *)self _performSetMaximumResidentUsers:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"SoftwareUpdateSettings"])
  {
    v9 = [(MDMParser *)self _performSetUpdatePath:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"SharedDeviceConfiguration"])
  {
    v9 = [(MDMParser *)self _performSetSharedDeviceConfiguration:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DiagnosticSubmission"])
  {
    v9 = [(MDMParser *)self _performSetDiagnosticSubmission:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"AppAnalytics"])
  {
    v9 = [(MDMParser *)self _performSetAppAnalytics:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"PasscodeLockGracePeriod"])
  {
    v9 = [(MDMParser *)self _performSetGracePeriod:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"OrganizationInfo"])
  {
    v9 = [(MDMParser *)self _performSetOrganizationInfo:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"DefaultApplications"])
  {
    v9 = [(MDMParser *)self _performSetDefaultApplications:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"MDMOptions"])
  {
    v9 = [(MDMParser *)self _performSetMDMOptions:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"TimeZone"])
  {
    v9 = [(MDMParser *)self _performSetTimezone:v7];
    goto LABEL_39;
  }

  if ([v8 isEqualToString:@"AccessibilitySettings"])
  {
    v9 = [(MDMParser *)self _performSetAccessibilitySettings:v7];
    goto LABEL_39;
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277D03448];
  v14 = DMCErrorArray();
  v10 = [v12 DMCErrorWithDomain:v13 code:28000 descriptionArray:v14 errorType:{*MEMORY[0x277D032F8], v8, 0}];

LABEL_40:

  return v10;
}

- (id)_settings:(id)a3 accessRights:(unint64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKey:@"Settings"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v5;
    v7 = v5;
    v8 = v6;
    obj = v7;
    v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      v28 = self;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];

            goto LABEL_29;
          }

          v14 = [v13 objectForKey:@"Item"];
          if (v14)
          {
            v15 = v8;
            v32 = 0;
            v16 = [(MDMParser *)self _validateSetting:v13 accessRights:a4 outError:&v32];
            v17 = v32;
            if (v16)
            {
              buf[0] = 0;
              v31 = 0;
              v18 = [(MDMParser *)self _performSetting:v13 outAdditionalResponseKeys:&v31 outRestartAppleTVApp:buf];
              v19 = v31;

              if (v18)
              {
                [(MDMAbstractTunnelParser *)MDMParser responseWithError:v18];
              }

              else
              {
                [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
              }
              v21 = ;
            }

            else
            {
              if (v17)
              {
                v21 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v17];
              }

              else
              {
                v21 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
              }

              v19 = 0;
            }

            v8 = v15;
            [v21 setObject:v14 forKey:{@"Item", v26}];
            if (v19)
            {
              [v21 addEntriesFromDictionary:v19];
            }

            [v15 addObject:v21];

            self = v28;
          }

          else
          {
            v20 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_ERROR, "Ignoring setting command missing the Item key", buf, 2u);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v22 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    v23 = [v22 mutableCopy];

    [v23 setObject:v8 forKey:@"Settings"];
LABEL_29:

    v5 = v26;
  }

  else
  {
    v23 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_appStoreDisabledError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12031 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_stringForBookState:(unint64_t)a3
{
  if (a3 - 1 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_27982C860[a3 - 1];
  }
}

+ (id)_stringForAppState:(unint64_t)a3
{
  if (a3 > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_27982C8A8[a3];
  }
}

- (id)_appAlreadyInstalledErrorWithBundleID:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12025 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_appAlreadyInstalledErrorWithiTunesStoreID:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = [a3 stringValue];
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12025 descriptionArray:v6 errorType:{*MEMORY[0x277D032F8], v5, 0}];

  return v7;
}

- (id)_appAlreadyQueuedErrorWithBundleID:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12026 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_appAlreadyQueuedErrorWithiTunesStoreID:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = [a3 stringValue];
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12026 descriptionArray:v6 errorType:{*MEMORY[0x277D032F8], v5, 0}];

  return v7;
}

- (id)_licenseNotFoundErrorWithBundleID:(id)a3 underlyingError:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D03480];
  v7 = a4;
  v11 = a3;
  v8 = DMCErrorArray();
  v9 = [v5 DMCErrorWithDomain:v6 code:12064 descriptionArray:v8 underlyingError:v7 errorType:{*MEMORY[0x277D032F8], v11, 0}];

  return v9;
}

- (id)_licenseNotFoundErrorWithiTunesStoreID:(id)a3 underlyingError:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D03480];
  v7 = a4;
  v8 = [a3 stringValue];
  v9 = DMCErrorArray();
  v10 = [v5 DMCErrorWithDomain:v6 code:12064 descriptionArray:v9 underlyingError:v7 errorType:{*MEMORY[0x277D032F8], v8, 0}];

  return v10;
}

- (id)_cannotValidateAppIDErrorUnderlyingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = a3;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12023 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

- (id)_invalidManifestErrorWithURL:(id)a3 underlyingError:(id)a4
{
  v5 = MEMORY[0x277CCACE0];
  v6 = a4;
  v7 = [v5 componentsWithURL:a3 resolvingAgainstBaseURL:0];
  [v7 setQuery:0];
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D03480];
  v10 = [v7 URL];
  v11 = DMCErrorArray();
  v12 = [v8 DMCErrorWithDomain:v9 code:12024 descriptionArray:v11 underlyingError:v6 errorType:{*MEMORY[0x277D032F8], v10, 0}];

  return v12;
}

- (void)_installApplication:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MDMParser *)self server];
  v12 = [v11 isAppInstallBlocked];

  if (v12)
  {
    v13 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "Application installs are blocked, returning NotNow for InstallApplication.", buf, 2u);
    }

    v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
    [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v8 response:v14];
    if (v10)
    {
      v10[2](v10, v14);
    }

    goto LABEL_41;
  }

  v15 = [v8 objectForKeyedSubscript:@"ManifestURL"];
  v14 = v15;
  if (!v15 || ([MEMORY[0x277CBEBC0] URLWithString:v15], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v57 = v9;
    v58 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke;
    aBlock[3] = &unk_27982C580;
    aBlock[4] = self;
    v16 = v8;
    v84 = v16;
    v17 = v10;
    v85 = v17;
    v56 = _Block_copy(aBlock);
    v18 = [v16 objectForKeyedSubscript:@"Identifier"];
    v19 = [v16 objectForKeyedSubscript:@"iTunesStoreID"];
    v62 = [v16 objectForKeyedSubscript:@"Options"];
    v20 = [v16 objectForKeyedSubscript:@"Attributes"];
    v60 = [v16 objectForKeyedSubscript:@"Configuration"];
    v63 = [v16 objectForKeyedSubscript:@"ManagementFlags"];
    v61 = [v16 objectForKeyedSubscript:@"ChangeManagementState"];
    v21 = [MEMORY[0x277D24648] sharedConfiguration];
    v59 = [v21 personaID];

    v22 = v19 != 0;
    if (v19)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    if (v14)
    {
      v22 = v23;
    }

    v66 = v18;
    if (v18)
    {
      ++v22;
    }

    if (v22 != 1 || v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v62 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v61 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v28 = v56;
      (*(v56 + 2))(v56, 0);
LABEL_36:
      v29 = v58;
      v24 = v62;
LABEL_37:

      v9 = v57;
      goto LABEL_41;
    }

    v54 = [(MDMParser *)self _appManagementFlagsWithRequestedFlags:v63];

    v53 = [(MDMParser *)self _appAttributesWithRequestedAttributes:v20];

    v24 = v62;
    if (v62)
    {
      v25 = [v62 objectForKeyedSubscript:@"NotManaged"];
      v26 = [v62 objectForKeyedSubscript:@"PurchaseMethod"];
      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v28 = v56;
        (*(v56 + 2))(v56, 0);
        goto LABEL_44;
      }

      v64 = v25;
      v27 = [v26 intValue];
      if (v27 >= 2)
      {
        v28 = v56;
        (*(v56 + 2))(v56, @"PurchaseMethodNotSupported");
LABEL_44:

        v20 = v53;
        v63 = v54;
        goto LABEL_36;
      }

      v35 = v27;

      v24 = v62;
    }

    else
    {
      v35 = 0;
    }

    if (!v14 && !v35 && [MEMORY[0x277D03538] isSharediPad])
    {
      v28 = v56;
      (*(v56 + 2))(v56, @"PurchaseMethodNotSupportedInMultiUser");
LABEL_54:
      v20 = v53;
      v63 = v54;
      v29 = v58;
      goto LABEL_37;
    }

    if (v61)
    {
      if (([v61 isEqualToString:@"Managed"] & 1) == 0 || (objc_msgSend(MEMORY[0x277D24648], "sharedConfiguration"), v36 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v36, "isUserEnrollment"), v36, v24 = v62, v65))
      {
        v28 = v56;
        (*(v56 + 2))(v56, @"ManagementChangeNotSupported");
        goto LABEL_54;
      }
    }

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_2;
    v71[3] = &unk_27982C5A8;
    v71[4] = self;
    v52 = v16;
    v72 = v52;
    v37 = v17;
    v81 = v37;
    v29 = v58;
    v38 = v58;
    v73 = v38;
    v74 = v19;
    v75 = v18;
    v63 = v54;
    v76 = v63;
    v55 = v53;
    v77 = v55;
    v78 = v60;
    v79 = v61;
    v39 = v35;
    v82 = v35;
    v80 = v59;
    v40 = _Block_copy(v71);
    v41 = v40;
    if (v38)
    {
      v40[2](v40);
    }

    else
    {
      v42 = [MEMORY[0x277D24648] sharedConfiguration];
      v43 = -[MDMParser _isPurchaseMethodAllowed:onUserEnrollment:](self, "_isPurchaseMethodAllowed:onUserEnrollment:", v39, [v42 isUserEnrollment]);

      if (!v43)
      {
        if ([MEMORY[0x277D03530] isAppleTV])
        {
          v44 = @"NotSupportedOnAppleTV";
        }

        else
        {
          v44 = @"PurchaseMethodNotSupported";
        }

        v28 = v56;
        (*(v56 + 2))(v56, v44);
        v29 = v58;
        goto LABEL_58;
      }

      if (v39 == 1)
      {
        v41[2](v41);
        v29 = v58;
      }

      else
      {
        v51 = DMCLocalizedString();
        v45 = [(MDMParser *)self server];
        v46 = [v45 organizationName];

        v50 = v46;
        if (v46)
        {
          v48 = v46;
          v49 = DMCLocalizedFormat();
        }

        else
        {
          v47 = [(MDMParser *)self server];
          v48 = [v47 serverName];
          v49 = DMCLocalizedFormat();
        }

        v29 = v58;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_4;
        v67[3] = &unk_27982C5D0;
        v69 = v41;
        v67[4] = self;
        v68 = v52;
        v70 = v37;
        [MDMManagedAssetManager promptUserToLoginToiTunesIfNeededTitle:v51 message:v49 assertion:v57 completionBlock:v67, v48];
      }
    }

    v28 = v56;
LABEL_58:
    v24 = v62;

    v20 = v55;
    goto LABEL_37;
  }

  v30 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277D03480];
  v32 = DMCErrorArray();
  v33 = [v30 DMCErrorWithDomain:v31 code:12030 descriptionArray:v32 errorType:{*MEMORY[0x277D032F8], 0}];

  v34 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v33];
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v8 response:v34];
  if (v10)
  {
    v10[2](v10, v34);
  }

LABEL_41:
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MDMParser malformedRequestErrorResult];
  v6 = [v4 mutableCopy];

  [v6 setObject:v3 forKeyedSubscript:@"RejectionReason"];
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v6];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_3;
  aBlock[3] = &unk_27982C420;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v6 = v2;
  v7 = *(a1 + 112);
  v3 = _Block_copy(aBlock);
  LODWORD(v4) = *(a1 + 120);
  [*(a1 + 32) _performInstallApplicationRequestWithManifestURL:*(a1 + 48) iTunesStoreIDObj:*(a1 + 56) bundleId:*(a1 + 64) flagsObj:*(a1 + 72) attributes:*(a1 + 80) configuration:*(a1 + 88) manageChangeStr:*(a1 + 96) purchaseMethodValue:v4 personaID:*(a1 + 104) completionBlock:v3];
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __59__MDMParser__installApplication_assertion_completionBlock___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D03480];
    v7 = DMCErrorArray();
    v10 = [v5 DMCErrorWithDomain:v6 code:12040 descriptionArray:v7 errorType:{*MEMORY[0x277D032F8], 0}];

    v8 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v10];
    [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v8];
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, v8);
    }
  }
}

- (void)_performInstallApplicationRequestWithManifestURL:(id)a3 iTunesStoreIDObj:(id)a4 bundleId:(id)a5 flagsObj:(id)a6 attributes:(id)a7 configuration:(id)a8 manageChangeStr:(id)a9 purchaseMethodValue:(int)a10 personaID:(id)a11 completionBlock:(id)a12
{
  v56[1] = *MEMORY[0x277D85DE8];
  v34 = a3;
  v17 = a4;
  v18 = a5;
  v37 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = [MEMORY[0x277D04BF8] currentUserConnection];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke;
  v43[3] = &unk_27982C6C0;
  v44 = v34;
  v45 = v17;
  v53 = v21;
  v54 = v23;
  v46 = v18;
  v47 = v24;
  v48 = self;
  v49 = v37;
  v50 = v19;
  v51 = v22;
  v55 = a10;
  v52 = v20;
  v42 = v21;
  v41 = v20;
  v40 = v22;
  v39 = v19;
  v38 = v37;
  v25 = v24;
  v36 = v23;
  v26 = v18;
  v27 = v17;
  v28 = v34;
  v29 = [MDMBlockOperation blockOperationWithBlock:v43];
  v56[0] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  v31 = [v25 batchOperationToPerformOperations:v30];

  [v31 setName:@"InstallApplication"];
  v32 = [(MDMParser *)self operationQueue];
  [v32 addOperation:v31];

  v33 = *MEMORY[0x277D85DE8];
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setType:3];
  [v4 setManifestURL:*(a1 + 32)];
  [v4 setStoreItemIdentifier:*(a1 + 40)];
  v31[0] = @"bundleIdentifier";
  v31[1] = @"type";
  v31[2] = @"installationState";
  v31[3] = @"isAppClip";
  v31[4] = @"managementInformation";
  v31[5] = @"sourceIdentifier";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:6];
  [v4 setPropertyKeys:v5];

  if (*(a1 + 48))
  {
    v30 = *(a1 + 48);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v4 setBundleIdentifiers:v6];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_2;
  aBlock[3] = &unk_27982C3F8;
  v7 = *(a1 + 112);
  v28 = v3;
  v29 = v7;
  v8 = v3;
  v9 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_3;
  v15[3] = &unk_27982C698;
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v25 = v9;
  v15[4] = v10;
  v16 = v12;
  v17 = *(a1 + 80);
  v18 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  v26 = *(a1 + 120);
  v23 = *(a1 + 56);
  v24 = *(a1 + 104);
  v13 = v9;
  [v11 performRequest:v4 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 endBlockOperation];
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v168 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_4;
    aBlock[3] = &unk_27982C5F8;
    v162 = *(a1 + 112);
    v8 = _Block_copy(aBlock);
    v9 = [v5 appsByBundleIdentifier];
    v10 = [v9 allValues];
    v11 = [v10 firstObject];
    v12 = [v11 sourceIdentifier];

    if (v12)
    {
      v13 = *(a1 + 112);
      v14 = [*(a1 + 32) _installApplicationCouldNotModifyDDMAppsError];
      v15 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v14];
      (*(v13 + 16))(v13, v15);
LABEL_72:

      goto LABEL_73;
    }

    v16 = [MEMORY[0x277D24648] sharedConfiguration];
    v17 = [v16 personaID];

    v18 = [*(a1 + 40) intValue];
    if (v18 & 1 | v17)
    {
      v19 = (v18 & 0xE) + 1;
    }

    else
    {
      v19 = v18 & 0xE;
    }

    v14 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24898]];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v46 = *(a1 + 112);
        v15 = [*(a1 + 32) _malformedRequestError];
        v20 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v15];
        (*(v46 + 16))(v46, v20);
LABEL_71:

        goto LABEL_72;
      }
    }

    v15 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24868]];
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v47 = *(a1 + 112);
        v20 = [*(a1 + 32) _malformedRequestError];
        v21 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v20];
        (*(v47 + 16))(v47, v21);
LABEL_70:

        goto LABEL_71;
      }
    }

    v20 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24870]];
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v48 = *(a1 + 112);
        v21 = [*(a1 + 32) _malformedRequestError];
        v42 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v21];
        (*(v48 + 16))(v48, v42);
LABEL_69:

        goto LABEL_70;
      }
    }

    v21 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24878]];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v49 = *(a1 + 112);
      v42 = [*(a1 + 32) _malformedRequestError];
      v50 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v42];
      v51 = *(v49 + 16);
      v52 = v49;
      v53 = v50;
      v51(v52, v50);
    }

    else
    {
      v22 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24880]];
      if (v22)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v54 = *(a1 + 112);
          v42 = v22;
          v55 = [*(a1 + 32) _malformedRequestError];
          v43 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v55];
          v56 = *(v54 + 16);
          v57 = v54;
          v53 = v55;
          v56(v57, v43);
LABEL_67:

          goto LABEL_68;
        }
      }

      v133 = v19;
      v23 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24858]];
      if (!v23)
      {
LABEL_29:
        v141 = v21;
        v30 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24860]];
        v137 = v23;
        if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v67 = *(a1 + 112);
          v42 = v22;
          v68 = [*(a1 + 32) _malformedRequestError];
          v69 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v68];
          v70 = *(v67 + 16);
          v71 = v67;
          v53 = v137;
          v132 = v69;
          v70(v71);
          v43 = v30;
          v21 = v141;
        }

        else
        {
          v135 = v20;
          v128 = v30;
          v31 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24890]];
          if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v125 = v31;
            v132 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24848]];
            if (v132)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v76 = *(a1 + 112);
                v42 = v22;
                v129 = [*(a1 + 32) _malformedRequestError];
                v77 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
                v78 = *(v76 + 16);
                v79 = v76;
                v53 = v137;
                v127 = v77;
                v78(v79);
                v43 = v30;
                v21 = v141;
                v68 = v31;
                v20 = v135;

LABEL_65:
                goto LABEL_66;
              }
            }

            [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24850]];
            v129 = v20 = v135;
            if (v129)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v80 = *(a1 + 112);
                v42 = v22;
                v126 = [*(a1 + 32) _malformedRequestError];
                v81 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
                v82 = *(v80 + 16);
                v83 = v80;
                v53 = v137;
                v124 = v81;
                v82(v83);
                v43 = v30;
                v21 = v141;
                v68 = v125;

LABEL_64:
                goto LABEL_65;
              }
            }

            v139 = v22;
            v126 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D24888]];
            if (v126)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v84 = *(a1 + 112);
                v123 = [*(a1 + 32) _malformedRequestError];
                v121 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
                (*(v84 + 16))(v84);
                v53 = v137;
                v42 = v22;
                v43 = v30;
                v21 = v141;
                v68 = v125;

LABEL_63:
                goto LABEL_64;
              }
            }

            v32 = [*(a1 + 32) _originator];
            v33 = [v5 appsByBundleIdentifier];
            v34 = [v33 allValues];
            v35 = [v34 firstObject];

            v36 = v35;
            v37 = [v35 type];
            v123 = v32;
            v120 = v35;
            if ([v35 installationState] < 4 || objc_msgSend(v35, "isAppClip"))
            {
              v38 = objc_opt_new();
              [v38 setBundleIdentifier:*(a1 + 56)];
              [v38 setStoreItemIdentifier:*(a1 + 64)];
              [v38 setManifestURL:*(a1 + 72)];
              [v38 setOriginator:v32];
              [v38 setPersonaIdentifier:*(a1 + 80)];
              [MEMORY[0x277D03500] mdmAppInstallationSourceIdentifierWithDefaultValue:0];
              v40 = v39 = v37;
              v122 = v38;
              [v38 setSourceIdentifier:v40];

              v41 = v39 == 1;
              v42 = v139;
              v21 = v141;
              v43 = v128;
              if (!v41)
              {
                [v122 setManage:1];
                [v122 setManagementOptions:v133];
                [v122 setVPNUUIDString:v14];
                [v122 setCellularSliceUUIDString:v15];
                [v122 setContentFilterUUIDString:v135];
                [v122 setDNSProxyUUIDString:v141];
                [v122 setRelayUUIDString:v139];
                [v122 setAssociatedDomains:v137];
                [v122 setAssociatedDomainsEnableDirectDownloads:v128];
                [v122 setTapToPayScreenLock:v125];
                [v122 setAllowUserToHide:v132];
                [v122 setAllowUserToLock:v129];
                [v122 setRemovable:v126];
                [v122 setConfiguration:*(a1 + 88)];
              }

              if ([MEMORY[0x277D03538] isSharediPad])
              {
                v44 = v122;
                v45 = 1;
              }

              else
              {
                if (!*(a1 + 120))
                {
                  [v122 setLicenseType:2];
                  [v122 setAllowFreePurchases:1];
                  goto LABEL_60;
                }

                v44 = v122;
                v45 = 3;
              }

              [v44 setLicenseType:v45];
LABEL_60:
              v85 = *(a1 + 96);
              v150[0] = MEMORY[0x277D85DD0];
              v150[1] = 3221225472;
              v150[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_5;
              v150[3] = &unk_27982C620;
              v155 = v8;
              v151 = *(a1 + 56);
              v86 = *(a1 + 64);
              v87 = *(a1 + 32);
              v152 = v86;
              v153 = v87;
              v154 = *(a1 + 72);
              v156 = *(a1 + 112);
              [v85 performRequest:v122 completion:v150];

              v88 = v155;
              v53 = v137;
              v68 = v125;
              goto LABEL_61;
            }

            v90 = [*(a1 + 32) _isManagedApp:v35];
            v42 = v139;
            if (v90)
            {
              v91 = objc_opt_new();
              [v91 setBundleIdentifier:*(a1 + 56)];
              [v91 setStoreItemIdentifier:*(a1 + 64)];
              [v91 setManifestURL:*(a1 + 72)];
              [v91 setOriginator:v32];
              [v91 setPersonaIdentifier:*(a1 + 80)];
              [v91 setManagementOptions:v133];
              [v91 setVPNUUIDString:v14];
              [v91 setCellularSliceUUIDString:v15];
              [v91 setContentFilterUUIDString:v135];
              v21 = v141;
              [v91 setDNSProxyUUIDString:v141];
              [v91 setRelayUUIDString:v139];
              [v91 setAssociatedDomains:v137];
              v122 = v91;
              [v91 setAssociatedDomainsEnableDirectDownloads:v128];
              [v91 setTapToPayScreenLock:v125];
              [v91 setAllowUserToHide:v132];
              [v91 setAllowUserToLock:v129];
              [v91 setRemovable:v126];
              [v91 setConfiguration:*(a1 + 88)];
              v92 = *(a1 + 96);
              v147[0] = MEMORY[0x277D85DD0];
              v147[1] = 3221225472;
              v147[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_6;
              v147[3] = &unk_27982C648;
              v148 = v8;
              v93 = *(a1 + 112);
              v68 = v125;
              v20 = v135;
              v149 = v93;
              v94 = v92;
              v53 = v137;
              v43 = v128;
              [v94 performRequest:v122 completion:v147];

              v88 = v148;
              goto LABEL_61;
            }

            v118 = v37;
            v95 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2561F5000, v95, OS_LOG_TYPE_DEFAULT, "MDMParser: beginning check for preserved status during install app command", buf, 2u);
            }

            v96 = objc_opt_new();
            v146 = 0;
            v97 = [v96 preservedAppIDsAndReturnError:&v146];
            v98 = v146;

            v119 = v97;
            if (!v97)
            {
              v99 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v164 = v98;
                _os_log_impl(&dword_2561F5000, v99, OS_LOG_TYPE_ERROR, "MDMParser failed to retrieve preserved App IDs with error: %{public}@", buf, 0xCu);
              }
            }

            v100 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              v101 = v100;
              [v36 bundleIdentifier];
              v103 = v102 = v36;
              *buf = 138543362;
              v164 = v103;
              _os_log_impl(&dword_2561F5000, v101, OS_LOG_TYPE_DEFAULT, "MDMParser: bundleID for the current installation is: %{public}@", buf, 0xCu);

              v36 = v102;
            }

            v104 = [v36 bundleIdentifier];
            v105 = [v119 containsObject:v104];

            v106 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              v107 = v106;
              v108 = [v120 bundleIdentifier];
              *buf = 138543618;
              v164 = v108;
              v165 = 1024;
              v166 = v105;
              _os_log_impl(&dword_2561F5000, v107, OS_LOG_TYPE_DEFAULT, "MDMParser: is  %{public}@ app a preserved app: %d", buf, 0x12u);
            }

            v122 = v98;
            if ((v105 & 1) != 0 || v118 != 1 && *(a1 + 104))
            {
              v109 = [MEMORY[0x277D24648] sharedConfiguration];
              v110 = [v109 personaID];

              if (!v110)
              {
                v111 = objc_opt_new();
                [v111 setBundleIdentifier:*(a1 + 56)];
                [v111 setStoreItemIdentifier:*(a1 + 64)];
                [v111 setManifestURL:*(a1 + 72)];
                [v111 setOriginator:v123];
                [v111 setPersonaIdentifier:*(a1 + 80)];
                [v111 setManagementOptions:v133];
                [v111 setVPNUUIDString:v14];
                [v111 setCellularSliceUUIDString:v15];
                [v111 setContentFilterUUIDString:v135];
                [v111 setDNSProxyUUIDString:v141];
                v42 = v139;
                [v111 setRelayUUIDString:v139];
                [v111 setAssociatedDomains:v137];
                v43 = v128;
                [v111 setAssociatedDomainsEnableDirectDownloads:v128];
                [v111 setTapToPayScreenLock:v125];
                [v111 setAllowUserToHide:v132];
                [v111 setAllowUserToLock:v129];
                [v111 setRemovable:v126];
                [v111 setConfiguration:*(a1 + 88)];
                v114 = *(a1 + 96);
                v142[0] = MEMORY[0x277D85DD0];
                v142[1] = 3221225472;
                v142[2] = __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_1352;
                v142[3] = &unk_27982C670;
                v143 = v120;
                v144 = v8;
                v145 = *(a1 + 112);
                [v114 performRequest:v111 completion:v142];

LABEL_102:
                v53 = v137;
                v21 = v141;
                v68 = v125;
                v88 = v119;
LABEL_61:

                goto LABEL_63;
              }

              v111 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Error"];
              [v111 setObject:@"ManagementChangeNotSupported" forKeyedSubscript:@"RejectionReason"];
            }

            else
            {
              v111 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Error"];
              [v111 setObject:@"AppAlreadyInstalled" forKeyedSubscript:@"RejectionReason"];
              v112 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2561F5000, v112, OS_LOG_TYPE_DEFAULT, "MDMParser: Failed to take over management, setting rejection reason to AppAlreadyInstalled", buf, 2u);
              }

              if (*(a1 + 64))
              {
                v113 = [*(a1 + 32) _appAlreadyInstalledErrorWithiTunesStoreID:?];
                [v111 setObject:v113 forKeyedSubscript:@"ErrorObject"];
              }

              else
              {
                v115 = *(a1 + 56);
                if (v115)
                {
                  v116 = v115;
                }

                else
                {
                  v116 = [v120 bundleIdentifier];
                }

                v113 = v116;
                v117 = [*(a1 + 32) _appAlreadyInstalledErrorWithBundleID:v116];
                [v111 setObject:v117 forKeyedSubscript:@"ErrorObject"];
              }
            }

            (*(*(a1 + 112) + 16))();
            v42 = v139;
            v43 = v128;
            goto LABEL_102;
          }

          v72 = *(a1 + 112);
          v42 = v22;
          v132 = [*(a1 + 32) _malformedRequestError];
          v73 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
          v74 = *(v72 + 16);
          v75 = v72;
          v53 = v137;
          v130 = v73;
          v74(v75);
          v43 = v30;
          v21 = v141;
          v68 = v31;
          v20 = v135;
        }

LABEL_66:

        goto LABEL_67;
      }

      v138 = v22;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v140 = v21;
        v134 = v20;
        v136 = v23;
        v131 = v8;
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v157 objects:v167 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v158;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v158 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v157 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v64 = *(a1 + 112);
                v65 = [*(a1 + 32) _malformedRequestError];
                v66 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v65];
                (*(v64 + 16))(v64, v66);

                v53 = v24;
                v8 = v131;
                v20 = v134;
                v42 = v138;
                v21 = v140;
                goto LABEL_68;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v157 objects:v167 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v8 = v131;
        v20 = v134;
        v23 = v136;
        v22 = v138;
        v21 = v140;
        goto LABEL_29;
      }

      v58 = v23;
      v59 = *(a1 + 112);
      v60 = [*(a1 + 32) _malformedRequestError];
      v61 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v60];
      v62 = *(v59 + 16);
      v63 = v59;
      v53 = v58;
      v62(v63, v61);

      v42 = v138;
    }

LABEL_68:

    goto LABEL_69;
  }

  v6 = *(a1 + 112);
  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:a3];
  (*(v6 + 16))(v6, v7);

LABEL_73:
  v89 = *MEMORY[0x277D85DE8];
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v4 = [v3 bundleIdentifier];
  [v7 setObject:v4 forKeyedSubscript:@"Identifier"];

  v5 = [v3 state];
  v6 = [MDMParser _stringForAppState:v5];
  [v7 setObject:v6 forKeyedSubscript:@"State"];

  (*(*(a1 + 32) + 16))();
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v20 = v4;
  if (!v4)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_38;
  }

  v5 = v4;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277D04BC8]];

  if (!v7)
  {
    v10 = @"NotSupported";
LABEL_36:
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];
    [v9 setObject:v10 forKeyedSubscript:@"RejectionReason"];
    (*(*(a1 + 72) + 16))();
    goto LABEL_37;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v11 = [v5 userInfo];
    v9 = [v11 objectForKeyedSubscript:*MEMORY[0x277D04968]];
  }

  v12 = [v5 code];
  v10 = @"NotSupported";
  if (v12 <= 2603)
  {
    switch(v12)
    {
      case 1001:
        v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
        [v16 setObject:v9 forKeyedSubscript:@"Identifier"];
        [v16 setObject:@"NeedsRedemption" forKeyedSubscript:@"State"];
        goto LABEL_22;
      case 2600:
        v19 = *(a1 + 48);
        if (*(a1 + 40))
        {
          [v19 _appAlreadyInstalledErrorWithiTunesStoreID:?];
        }

        else
        {
          [v19 _appAlreadyInstalledErrorWithBundleID:v9];
        }
        v17 = ;
LABEL_33:
        v18 = v17;
        v10 = @"AppAlreadyInstalled";
        goto LABEL_34;
      case 2603:
        v15 = *(a1 + 48);
        if (*(a1 + 40))
        {
          [v15 _appAlreadyQueuedErrorWithiTunesStoreID:?];
        }

        else
        {
          [v15 _appAlreadyQueuedErrorWithBundleID:v9];
        }
        v18 = ;
        v10 = @"AppAlreadyQueued";
        goto LABEL_34;
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v12 <= 2605)
  {
    if (v12 != 2604)
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      if (v14)
      {
        [v13 _licenseNotFoundErrorWithiTunesStoreID:v14 underlyingError:v5];
      }

      else
      {
        [v13 _licenseNotFoundErrorWithBundleID:v9 underlyingError:v5];
      }
      v18 = ;
      v10 = @"LicenseNotFound";
      goto LABEL_34;
    }

    v17 = [*(a1 + 48) _invalidManifestErrorWithURL:*(a1 + 56) underlyingError:v5];
    goto LABEL_33;
  }

  if (v12 == 2606)
  {
    v18 = [*(a1 + 48) _cannotValidateAppIDErrorUnderlyingError:v5];
    v10 = @"CouldNotVerifyAppID";
LABEL_34:

    v5 = v18;
    goto LABEL_35;
  }

  if (v12 != 2616)
  {
    goto LABEL_35;
  }

  v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_22:
  (*(*(a1 + 72) + 16))();

LABEL_37:
LABEL_38:
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:?];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

void __184__MDMParser__performInstallApplicationRequestWithManifestURL_iTunesStoreIDObj_bundleId_flagsObj_attributes_configuration_manageChangeStr_purchaseMethodValue_personaID_completionBlock___block_invoke_1352(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = a1[6];
    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:a3];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = v8;
      v11 = [v9 bundleIdentifier];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMParser: successfully started managing app with id: %{public}@", &v13, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_validateApplications:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"Identifiers"];
  if ([(MDMParser *)self _identifiersIsStringArray:v4])
  {
    v5 = objc_opt_new();
    [v5 setBundleIdentifiers:v4];
    v6 = [MEMORY[0x277D04BF8] systemConnection];
    v16 = 0;
    v7 = [v6 performRequest:v5 error:&v16];
    v8 = v16;

    if (v8)
    {
      v9 = [v8 userInfo];
      v10 = [v9 objectForKey:*MEMORY[0x277CCA7E8]];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      v13 = v12;

      v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v13];
    }

    else
    {
      v14 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    }
  }

  else
  {
    v14 = +[MDMParser malformedRequestErrorResult];
  }

  return v14;
}

- (id)_applyRedemptionCode:(id)a3 assertion:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"Identifier"];
  v7 = [v5 objectForKeyedSubscript:@"RedemptionCode"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [MEMORY[0x277D24648] sharedConfiguration];
    v9 = [v8 personaID];

    v10 = objc_opt_new();
    [v10 setBundleIdentifier:v6];
    [v10 setRedemptionCode:v7];
    v11 = [(MDMParser *)self _originator];
    [v10 setOriginator:v11];

    [v10 setPersonaIdentifier:v9];
    v12 = [MEMORY[0x277D04BF8] currentUserConnection];
    v25 = 0;
    v13 = [v12 performRequest:v10 error:&v25];
    v14 = v25;

    if (v14)
    {
      v15 = [v14 domain];
      v16 = *MEMORY[0x277D04BC8];

      if (v15 == v16)
      {
        v17 = [v14 code];
        if (v17 == 1006)
        {
          v23 = 0;
          v18 = DMCErrorArray();
          v19 = 12037;
        }

        else if (v17 == 2611)
        {
          v23 = v6;
          v24 = 0;
          v18 = DMCErrorArray();
          v19 = 12028;
        }

        else
        {
          v19 = 0;
          v18 = 0;
        }

        v22 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D03480] code:v19 descriptionArray:v18 errorType:{*MEMORY[0x277D032F8], v23, v24}];

        v14 = v22;
      }

      v20 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v14];
    }

    else
    {
      v20 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    }
  }

  else
  {
    v20 = +[MDMParser malformedRequestErrorResult];
  }

  return v20;
}

- (id)_managedApplicationList:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = @"managementInformation";
  v11 = @"configuration";
  v12 = @"feedback";
  v13 = @"isValidated";
  v14 = @"externalVersionIdentifier";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:5];
  v7 = [(MDMParser *)self _handleFetchAppsRequest:v5 managedOnly:1 deleteFeedback:0 advanceTransientStates:1 propertyKeys:v6 block:&__block_literal_global_1376, v10, v11, v12, v13, v14, v15];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __37__MDMParser__managedApplicationList___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v27 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = v2;
  v28 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v28)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v3);
        }

        v5 = *(*(&v29 + 1) + 8 * i);
        v6 = [v3 objectForKeyedSubscript:v5];
        v7 = [v6 managementInformation];
        v8 = objc_opt_new();
        v9 = +[MDMParser _stringForAppState:](MDMParser, "_stringForAppState:", [v7 state]);
        [v8 setObject:v9 forKeyedSubscript:@"Status"];

        v10 = [v6 configuration];
        v11 = MEMORY[0x277CBEC38];
        v12 = MEMORY[0x277CBEC28];
        if (v10)
        {
          v13 = MEMORY[0x277CBEC38];
        }

        else
        {
          v13 = MEMORY[0x277CBEC28];
        }

        [v8 setObject:v13 forKeyedSubscript:@"HasConfiguration"];

        v14 = [v6 feedback];
        if (v14)
        {
          v15 = v11;
        }

        else
        {
          v15 = v12;
        }

        [v8 setObject:v15 forKeyedSubscript:@"HasFeedback"];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isValidated")}];
        [v8 setObject:v16 forKeyedSubscript:@"IsValidated"];

        v17 = MEMORY[0x277CCABB0];
        v18 = [v6 externalVersionIdentifier];
        v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue")}];
        [v8 setObject:v19 forKeyedSubscript:@"ExternalVersionIdentifier"];

        v20 = [v7 unusedRedemptionCode];
        [v8 setObject:v20 forKeyedSubscript:@"UnusedRedemptionCode"];

        v21 = [v7 options];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21 & 0xF];
        [v8 setObject:v22 forKeyedSubscript:@"ManagementFlags"];

        [v27 setObject:v8 forKeyedSubscript:v5];
      }

      v28 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v28);
  }

  v33 = @"ManagedApplicationList";
  v34 = v27;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_managedApplicationConfiguration:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = @"configuration";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [(MDMParser *)self _handleFetchAppsRequest:v5 managedOnly:1 deleteFeedback:0 advanceTransientStates:0 propertyKeys:v6 block:&__block_literal_global_1378, v10, v11];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __46__MDMParser__managedApplicationConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        [v11 setObject:v9 forKeyedSubscript:{@"Identifier", v17}];
        v12 = [v4 objectForKeyedSubscript:v9];
        v13 = [v12 configuration];
        [v11 setObject:v13 forKeyedSubscript:@"Configuration"];

        [v3 addObject:v11];
        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v21 = @"ApplicationConfigurations";
  v22 = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_managedApplicationAttributes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = @"VPNUUIDString";
  v11 = @"cellularSliceUUIDString";
  v12 = @"contentFilterUUIDString";
  v13 = @"DNSProxyUUIDString";
  v14 = @"relayUUIDString";
  v15 = @"associatedDomains";
  v16 = @"associatedDomainsEnableDirectDownloads";
  v17 = @"removable";
  v18 = @"allowUserToHide";
  v19 = @"allowUserToLock";
  v20 = @"tapToPayScreenLock";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:11];
  v7 = [(MDMParser *)self _handleFetchAppsRequest:v5 managedOnly:1 deleteFeedback:0 advanceTransientStates:0 propertyKeys:v6 block:&__block_literal_global_1416, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __43__MDMParser__managedApplicationAttributes___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v38 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v37 = *v40;
    v36 = *MEMORY[0x277D24898];
    v35 = *MEMORY[0x277D24868];
    v34 = *MEMORY[0x277D24870];
    v33 = *MEMORY[0x277D24878];
    v32 = *MEMORY[0x277D24880];
    v31 = *MEMORY[0x277D24858];
    v30 = *MEMORY[0x277D24860];
    v29 = *MEMORY[0x277D24890];
    v28 = *MEMORY[0x277D24848];
    v6 = *MEMORY[0x277D24850];
    v7 = *MEMORY[0x277D24888];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        [v11 setObject:v9 forKeyedSubscript:@"Identifier"];
        v12 = objc_opt_new();
        v13 = [v3 objectForKeyedSubscript:v9];
        v14 = [v13 VPNUUIDString];
        [v12 setObject:v14 forKeyedSubscript:v36];

        v15 = [v13 cellularSliceUUIDString];
        [v12 setObject:v15 forKeyedSubscript:v35];

        v16 = [v13 contentFilterUUIDString];
        [v12 setObject:v16 forKeyedSubscript:v34];

        v17 = [v13 DNSProxyUUIDString];
        [v12 setObject:v17 forKeyedSubscript:v33];

        v18 = [v13 relayUUIDString];
        [v12 setObject:v18 forKeyedSubscript:v32];

        v19 = [v13 associatedDomains];
        [v12 setObject:v19 forKeyedSubscript:v31];

        v20 = [v13 associatedDomainsEnableDirectDownloads];
        [v12 setObject:v20 forKeyedSubscript:v30];

        v21 = [v13 tapToPayScreenLock];
        [v12 setObject:v21 forKeyedSubscript:v29];

        v22 = [v13 allowUserToHide];
        [v12 setObject:v22 forKeyedSubscript:v28];

        v23 = [v13 allowUserToLock];
        [v12 setObject:v23 forKeyedSubscript:v6];

        v24 = [v13 removable];
        [v12 setObject:v24 forKeyedSubscript:v7];

        [v11 setObject:v12 forKeyedSubscript:@"Attributes"];
        [v38 addObject:v11];

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v5);
  }

  v43 = @"ApplicationAttributes";
  v44 = v38;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_managedApplicationFeedback:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DeleteFeedback"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[MDMParser malformedRequestErrorResult];
  }

  else
  {
    v6 = [v5 BOOLValue];
    v11[0] = @"feedback";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(MDMParser *)self _handleFetchAppsRequest:v4 managedOnly:1 deleteFeedback:v6 advanceTransientStates:0 propertyKeys:v7 block:&__block_literal_global_1421];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __41__MDMParser__managedApplicationFeedback___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        [v11 setObject:v9 forKeyedSubscript:{@"Identifier", v17}];
        v12 = [v4 objectForKeyedSubscript:v9];
        v13 = [v12 feedback];
        [v11 setObject:v13 forKeyedSubscript:@"Feedback"];

        [v3 addObject:v11];
        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v21 = @"ManagedApplicationFeedback";
  v22 = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_removeApplication:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"Identifier"];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = +[MDMParser malformedRequestErrorResult];
    goto LABEL_13;
  }

  v5 = [MEMORY[0x277D24640] sharedConfiguration];
  v6 = [v5 isSupervised];

  v7 = objc_opt_new();
  [v7 setType:6];
  [v7 setManagedAppsOnly:v6 ^ 1u];
  v38[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  [v7 setBundleIdentifiers:v8];

  v37[0] = @"managementInformation";
  v37[1] = @"sourceIdentifier";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  [v7 setPropertyKeys:v9];

  v10 = [MEMORY[0x277D04BF8] currentUserConnection];
  v34 = 0;
  v11 = [v10 performRequest:v7 error:&v34];
  v12 = v34;
  if (!v12)
  {
    v19 = [v11 appsByBundleIdentifier];
    v20 = [v19 allValues];
    v16 = [v20 firstObject];

    v17 = [v16 managementInformation];
    if (([(MDMParser *)self _isManagedAppFromManagementInformation:v17]| v6))
    {
      v21 = [v16 sourceIdentifier];

      if (!v21)
      {
        v23 = objc_opt_new();
        [v23 setBundleIdentifier:v4];
        v26 = [MEMORY[0x277D04BF8] currentUserConnection];
        v33 = 0;
        v27 = [v26 performRequest:v23 error:&v33];
        v13 = v33;

        if (v13)
        {
          v28 = MEMORY[0x277CCA9B8];
          v29 = *MEMORY[0x277D03480];
          v32 = DMCErrorArray();
          v30 = [v28 DMCErrorWithDomain:v29 code:12087 descriptionArray:v32 errorType:{*MEMORY[0x277D032F8], v4, 0}];
          v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v30];
        }

        else
        {
          v31 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v4;
            _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_DEFAULT, "Removed app “%{public}@”.", buf, 0xCu);
          }

          v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
        }

        goto LABEL_11;
      }

      v22 = [(MDMParser *)self _installApplicationCouldNotModifyDDMAppsError];
    }

    else
    {
      v22 = [(MDMParser *)self _notManagedAndNotSupervisedErrorAppID:v4];
    }

    v23 = v22;
    v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v22];
    v13 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v13 = v12;
  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277D03480];
  v16 = DMCErrorArray();
  v17 = [v14 DMCErrorWithDomain:v15 code:12087 descriptionArray:v16 errorType:{*MEMORY[0x277D032F8], v4, 0}];
  v18 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v17];
LABEL_12:

LABEL_13:
  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_requestMirroringRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 objectForKey:@"DestinationName"];
  v10 = [v7 objectForKey:@"DestinationDeviceID"];
  if (v9 | v10)
  {
    v11 = v10;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = +[MDMParser malformedRequestErrorResult];
    }

    else
    {
      v12 = [v7 objectForKey:@"Password"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v16 = +[MDMParser malformedRequestErrorResult];
      }

      else
      {
        v13 = [v7 objectForKey:@"ScanTime"];
        if (!v13)
        {
          v15 = 30.0;
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v13 doubleValue];
          v15 = v14;
LABEL_16:
          v24 = v13;
          if (v11)
          {
            v17 = [v11 uppercaseString];

            v11 = v17;
          }

          v18 = objc_opt_new();
          [v18 setDestinationName:v9];
          [v18 setDestinationDeviceID:v11];
          [v18 setPassword:v12];
          [v18 setScanWaitInterval:v15];
          v19 = [MEMORY[0x277D04BF8] systemConnection];
          v26 = 0;
          v20 = [v19 performRequest:v18 error:&v26];
          v21 = v26;

          if (v21)
          {
            v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v21];
          }

          else
          {
            v16 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
            v22 = [v20 status] - 1;
            if (v22 > 2)
            {
              v23 = @"Unknown";
            }

            else
            {
              v23 = off_27982C940[v22];
            }

            [v16 setObject:v23 forKeyedSubscript:{@"MirroringResult", v24}];
          }

          [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v7 response:v16, v24];
          if (v8)
          {
            v8[2](v8, v16);
          }

          goto LABEL_31;
        }

        v16 = +[MDMParser malformedRequestErrorResult];
      }
    }
  }

  else
  {
    v16 = +[MDMParser malformedRequestErrorResult];
    v11 = 0;
  }

  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v7 response:v16];
  if (v8)
  {
    v8[2](v8, v16);
  }

LABEL_31:
}

- (void)_stopMirroringRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v10 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__MDMParser__stopMirroringRequest_assertion_completionBlock___block_invoke;
  v13[3] = &unk_27982C708;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [v9 performRequest:v10 completion:v13];
}

void __61__MDMParser__stopMirroringRequest_assertion_completionBlock___block_invoke(uint64_t a1)
{
  v3 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, v3);
  }
}

- (void)_inviteToProgramRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v11 = v8;
  v24 = v11;
  v12 = v10;
  v25 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [v11 objectForKeyedSubscript:@"InvitationURL"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
      if (!v15)
      {
        v16 = +[MDMParser malformedRequestErrorResult];
        v13[2](v13, v16);
        goto LABEL_13;
      }

      v16 = [v11 objectForKeyedSubscript:@"ProgramID"];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([&unk_286850308 containsObject:v16])
        {
          v17 = objc_opt_new();
          v18 = [(MDMParser *)self _originator];
          [v17 setOriginator:v18];

          [v17 setURL:v15];
          v19 = [MEMORY[0x277D04BF8] currentUserConnection];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke_2;
          v20[3] = &unk_27982C730;
          v22 = v13;
          v21 = v9;
          [v19 performRequest:v17 completion:v20];

LABEL_11:
LABEL_13:

          goto LABEL_14;
        }

        v17 = +[MDMParser malformedRequestErrorResult];
        [v17 setObject:@"InvalidProgramID" forKeyedSubscript:@"InvitationResult"];
      }

      else
      {
        v17 = +[MDMParser malformedRequestErrorResult];
      }

      v13[2](v13, v17);
      goto LABEL_11;
    }
  }

  v15 = +[MDMParser malformedRequestErrorResult];
  v13[2](v13, v15);
LABEL_14:
}

void __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __63__MDMParser__inviteToProgramRequest_assertion_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = +[MDMParser malformedRequestErrorResult];
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D04BC8]];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [v5 code];
    if (v9 == 1402)
    {
      v10 = @"InvalidInvitationURL";
    }

    else
    {
      if (v9 != 1400)
      {
        goto LABEL_10;
      }

      v10 = @"AppStoreNotAllowed";
    }

    v11 = v6;
  }

  else
  {
    v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    v6 = v11;
    v10 = @"Acknowledged";
  }

  [v11 setObject:v10 forKeyedSubscript:@"InvitationResult"];
LABEL_10:
  (*(*(a1 + 40) + 16))();
}

- (void)_activationLockBypassCodeRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__MDMParser__activationLockBypassCodeRequest_completionBlock___block_invoke;
  v12[3] = &unk_27982C758;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 performRequest:v8 completion:v12];
}

void __62__MDMParser__activationLockBypassCodeRequest_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v18 = @"Status";
    v19[0] = @"Acknowledged";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v10 mutableCopy];

    v7 = [v5 bypassCode];
    [v11 setObject:v7 forKeyedSubscript:@"ActivationLockBypassCode"];
    goto LABEL_9;
  }

  v7 = v6;
  if ([v6 code] == 3600)
  {
    v8 = MEMORY[0x277D032F8];
    v9 = 12085;
LABEL_7:
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    v14 = DMCErrorArray();
    v15 = [v12 DMCErrorWithDomain:v13 code:v9 descriptionArray:v14 errorType:{*v8, 0}];

    v7 = v15;
    goto LABEL_8;
  }

  if ([v7 code] == 3601)
  {
    v8 = MEMORY[0x277D03308];
    v9 = 12086;
    goto LABEL_7;
  }

LABEL_8:
  v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v7];
LABEL_9:

  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v11];
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_clearActivationLockBypassCodeRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D04BF8] systemConnection];
  v9 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__MDMParser__clearActivationLockBypassCodeRequest_completionBlock___block_invoke;
  v12[3] = &unk_27982C708;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v8 performRequest:v9 completion:v12];
}

void __67__MDMParser__clearActivationLockBypassCodeRequest_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }
  v6 = ;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v6];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)_installMedia:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__MDMParser__installMedia_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v11 = v8;
  v47 = v11;
  v12 = v10;
  v48 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [v11 objectForKeyedSubscript:@"MediaType"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v14 isEqualToString:@"Book"])
    {
      v15 = [v11 objectForKeyedSubscript:@"PersistentID"];
      v16 = [v11 objectForKeyedSubscript:@"MediaURL"];
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      v39 = [v11 objectForKeyedSubscript:@"Kind"];
      v18 = [v11 objectForKeyedSubscript:@"iTunesStoreID"];
      if (_installMedia_assertion_completionBlock__onceToken != -1)
      {
        [MDMParser _installMedia:assertion:completionBlock:];
      }

      v38 = v18;
      if (v15)
      {
        if (v17 && [v16 length])
        {
          v35 = v16;
          v19 = v39;
          if (!v39)
          {
            v40 = [MEMORY[0x277CCACE0] componentsWithURL:v17 resolvingAgainstBaseURL:0];
            v20 = [v40 path];
            v19 = [v20 pathExtension];
          }

          v37 = v17;
          v21 = [_installMedia_assertion_completionBlock__typeMap allKeys];
          v39 = v19;
          v22 = [v21 containsObject:v19];

          if ((v22 & 1) == 0)
          {
            v32 = *(DMCLogObjects() + 8);
            v16 = v36;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v50 = v39;
              _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_ERROR, "Invalid book kind: %{public}@", buf, 0xCu);
            }

            v26 = +[MDMParser malformedRequestErrorResult];
            v13[2](v13, v26);
            v17 = v37;
            goto LABEL_29;
          }

          v16 = v36;
          goto LABEL_21;
        }

        v25 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v50 = v16;
          _os_log_impl(&dword_2561F5000, v25, OS_LOG_TYPE_ERROR, "Invalid URL: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = v17;
LABEL_21:
          v26 = objc_opt_new();
          [v26 setPersistentID:v15];
          v27 = [v11 objectForKeyedSubscript:@"Author"];
          [v26 setAuthor:v27];

          v28 = [v11 objectForKeyedSubscript:@"Title"];
          [v26 setTitle:v28];

          v29 = [v11 objectForKeyedSubscript:@"Version"];
          [v26 setVersion:v29];

          [v26 setURL:v37];
          v30 = [_installMedia_assertion_completionBlock__typeMap objectForKeyedSubscript:v39];
          [v26 setType:{objc_msgSend(v30, "unsignedIntegerValue")}];

          if (v38)
          {
            v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v38, "longLongValue")}];
            [v26 setITunesStoreID:v31];
          }

          else
          {
            [v26 setITunesStoreID:0];
          }

          v33 = [(MDMParser *)self _originator];
          [v26 setOriginator:v33];

          v34 = [MEMORY[0x277D04BF8] systemConnection];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_1497;
          v41[3] = &unk_27982C780;
          v41[4] = self;
          v42 = v37;
          v43 = v15;
          v45 = v13;
          v44 = v9;
          [v34 performRequest:v26 completion:v41];

          v17 = v37;
          goto LABEL_29;
        }
      }

      v26 = +[MDMParser malformedRequestErrorResult];
      v13[2](v13, v26);
LABEL_29:

      goto LABEL_15;
    }

    v24 = +[MDMParser malformedRequestErrorResult];
    v15 = [v24 mutableCopy];

    [v15 setObject:@"WrongMediaType" forKeyedSubscript:@"RejectionReason"];
  }

  else
  {
    v15 = +[MDMParser malformedRequestErrorResult];
  }

  v13[2](v13, v15);
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

void __53__MDMParser__installMedia_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v3];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_2;
    v6[3] = &unk_27982B898;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_3()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"ibooks";
  v3[1] = @"pdf";
  v4[0] = &unk_2868503F8;
  v4[1] = &unk_286850410;
  v3[2] = @"epub";
  v4[2] = &unk_286850428;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = _installMedia_assertion_completionBlock__typeMap;
  _installMedia_assertion_completionBlock__typeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __53__MDMParser__installMedia_assertion_completionBlock___block_invoke_1497(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  if (!v5)
  {
    v5 = [v20 book];
    v10 = [v5 iTunesStoreID];
    [v6 setObject:v10 forKeyedSubscript:@"iTunesStoreID"];

    v11 = [*(a1 + 32) _stringForBookState:{objc_msgSend(v5, "state")}];
    [v6 setObject:v11 forKeyedSubscript:@"State"];

    [v6 setObject:@"Book" forKeyedSubscript:@"MediaType"];
    v12 = [*(a1 + 40) absoluteString];
    [v6 setObject:v12 forKeyedSubscript:@"MediaURL"];

    [v6 setObject:*(a1 + 48) forKeyedSubscript:@"PersistentID"];
    goto LABEL_23;
  }

  v7 = [v5 domain];
  if (([v7 isEqualToString:*MEMORY[0x277D04BC8]] & 1) == 0)
  {

LABEL_7:
    v13 = [v5 code];
    if (v13 > 2612)
    {
      switch(v13)
      {
        case 2613:
          v14 = 12043;
          goto LABEL_20;
        case 2614:
          v14 = 12046;
          goto LABEL_20;
        case 2615:
          v14 = 12047;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v13)
      {
        case 1504:
          v14 = 12008;
          goto LABEL_20;
        case 2608:
          v14 = 12040;
          goto LABEL_20;
        case 2612:
          v14 = 12045;
LABEL_20:
          v15 = MEMORY[0x277CCA9B8];
          v16 = *MEMORY[0x277D03480];
          v17 = DMCUnformattedErrorArray();
          v18 = [v15 DMCErrorWithDomain:v16 code:v14 descriptionArray:v17 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

          v5 = v18;
          break;
      }
    }

    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];
    goto LABEL_22;
  }

  v8 = [v5 code];

  if (v8 != 1650)
  {
    goto LABEL_7;
  }

  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_22:
  v19 = v9;

  v6 = v19;
LABEL_23:

  (*(*(a1 + 64) + 16))();
}

- (void)_managedMediaList:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277D04BF8] systemConnection];
  v10 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MDMParser__managedMediaList_assertion_completionBlock___block_invoke;
  v13[3] = &unk_27982C7A8;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [v9 performRequest:v10 completion:v13];
}

void __57__MDMParser__managedMediaList_assertion_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 DMCVerboseDescription];
      *buf = 138543362;
      v40 = v7;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve managed books with error: %{public}@", buf, 0xCu);
    }

    v8 = [v4 domain];
    if ([v8 isEqualToString:*MEMORY[0x277D04BC8]])
    {
      v9 = [v4 code];

      if (v9 == 1650)
      {
        v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v4];
LABEL_21:
    v13 = v10;
    [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v10];
    v29 = *(a1 + 48);
    if (v29)
    {
      (*(v29 + 16))(v29, v13);
    }

    goto LABEL_23;
  }

  v11 = [a2 books];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = objc_opt_new();
        v20 = [v18 iTunesStoreID];
        [v19 setObject:v20 forKeyedSubscript:@"iTunesStoreID"];

        v21 = [v18 persistentID];
        [v19 setObject:v21 forKeyedSubscript:@"PersistentID"];

        v22 = [v18 version];
        [v19 setObject:v22 forKeyedSubscript:@"Version"];

        v23 = [v18 title];
        [v19 setObject:v23 forKeyedSubscript:@"Title"];

        v24 = [v18 author];
        [v19 setObject:v24 forKeyedSubscript:@"Author"];

        v25 = [v18 type];
        if (v25 <= 2)
        {
          [v19 setObject:off_27982C958[v25] forKeyedSubscript:@"Kind"];
        }

        v26 = [*(a1 + 32) _stringForBookState:{objc_msgSend(v18, "state")}];
        [v19 setObject:v26 forKeyedSubscript:@"State"];

        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  v36[0] = @"Status";
  v36[1] = @"Books";
  v37[0] = @"Acknowledged";
  v37[1] = v12;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v27];
  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v27);
  }

  v4 = 0;
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_removeMedia:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v9 = v7;
  v21 = v9;
  v10 = v8;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v9 objectForKeyedSubscript:@"MediaType"];
  v13 = [v9 objectForKeyedSubscript:@"PersistentID"];
  v14 = [v9 objectForKeyedSubscript:@"iTunesStoreID"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 isEqualToString:@"Book"])
    {
      v15 = objc_opt_new();
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v15 setPersistentID:v13];
      }

      else
      {
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v17 = +[MDMParser malformedRequestErrorResult];
          v11[2](v11, v17);
          goto LABEL_14;
        }

        [v15 setITunesStoreID:v14];
      }

      v16 = [MEMORY[0x277D04BF8] systemConnection];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke_3;
      v18[3] = &unk_27982C7D0;
      v19 = v11;
      [v16 performRequest:v15 completion:v18];

      v17 = v19;
LABEL_14:

      goto LABEL_8;
    }
  }

  v15 = +[MDMParser malformedRequestErrorResult];
  v11[2](v11, v15);
LABEL_8:
}

void __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:v3];
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = dispatch_get_global_queue(0, 0);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke_2;
      v6[3] = &unk_27982B898;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void __52__MDMParser__removeMedia_assertion_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = v4;
  if (!v4)
  {
    v8 = *(a1 + 32);
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    (*(v8 + 16))(v8, v9);
    goto LABEL_9;
  }

  v5 = [v4 domain];
  if (![v5 isEqualToString:*MEMORY[0x277D04BC8]])
  {

    goto LABEL_7;
  }

  v6 = [v10 code];

  if (v6 != 1650)
  {
LABEL_7:
    v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v10];
    goto LABEL_8;
  }

  v7 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
LABEL_8:
  v9 = v7;
  (*(*(a1 + 32) + 16))(*(a1 + 32), v7);
LABEL_9:
}

- (void)_deviceConfigured:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v11 = [MEMORY[0x277D24640] sharedConfiguration];
  v12 = [v11 details];
  v13 = [v12 mutableCopy];

  if (v13)
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D03050]];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke;
    v19[3] = &unk_27982C820;
    v23 = &v24;
    v19[4] = self;
    v20 = v8;
    v22 = v10;
    v21 = v9;
    [MDMMCInterface storeCloudConfigurationDetails:v13 completion:v19];
  }

  else
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "Device asked to end device configuration, but no cloud configuration yet in place.", v18, 2u);
    }

    v15 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"NotNow"];
    v16 = [v15 mutableCopy];
    v17 = v25[5];
    v25[5] = v16;

    [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v8 response:v25[5]];
    if (v10)
    {
      (*(v10 + 2))(v10, v25[5]);
    }
  }

  _Block_object_dispose(&v24, 8);
}

void __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke_2;
  block[3] = &unk_27982C7F8;
  v4 = *(a1 + 64);
  v11 = v3;
  v14 = v4;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__MDMParser__deviceConfigured_assertion_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_ERROR, "Could not update await device configure - %{public}@", &v11, 0xCu);
    }

    v4 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:*(a1 + 32)];
  }

  else
  {
    v4 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  }

  v5 = v4;
  v6 = [v4 mutableCopy];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 40) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 48) response:*(*(*(a1 + 72) + 8) + 40)];
  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))(result, *(*(*(a1 + 72) + 8) + 40));
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_accessibilitySettings
{
  v2 = +[MDMAccessibilityManager sharedInstance];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "zoomEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"ZoomEnabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "boldTextEnabled")}];
  [v3 setObject:v5 forKeyedSubscript:@"BoldTextEnabled"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "voiceOverEnabled")}];
  [v3 setObject:v6 forKeyedSubscript:@"VoiceOverEnabled"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "reduceMotionEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"ReduceMotionEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "increaseContrastEnabled")}];
  [v3 setObject:v8 forKeyedSubscript:@"IncreaseContrastEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "textSize")}];
  [v3 setObject:v9 forKeyedSubscript:@"TextSize"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "reduceTransparencyEnabled")}];
  [v3 setObject:v10 forKeyedSubscript:@"ReduceTransparencyEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "touchAccommodationsEnabled")}];
  [v3 setObject:v11 forKeyedSubscript:@"TouchAccommodationsEnabled"];

  return v3;
}

- (void)_scheduleOSUpdateScan:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Schedule OS update scan start.", buf, 2u);
  }

  v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  [(MDMParser *)self _sendAnalyticsMDMCommandEventWithRequest:v8 response:v10];

  if (v7)
  {
    v7[2](v7, v10);
  }

  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Schedule OS update scan end.", v12, 2u);
  }
}

- (void)_scheduleOSUpdate:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Schedule OS update start", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MDMParser__scheduleOSUpdate_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v12 = v8;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  v14 = _Block_copy(aBlock);
  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v14])
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Rejected software update due to user logged in.";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_2561F5000, v17, v18, v16, buf, 2u);
    }
  }

  else
  {
    [(MDMParser *)self _dmfScheduleOSUpdate:v12 assertion:v9 completionBlock:v14];
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Schedule OS update end.";
      v17 = v19;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }
  }
}

void __57__MDMParser__scheduleOSUpdate_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_dmfScheduleOSUpdate:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v79[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "DMF Schedule OS update start.", buf, 2u);
  }

  v10 = [v7 objectForKeyedSubscript:@"Updates"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Rejected software update due to malformed update array.";
      goto LABEL_19;
    }
  }

  else
  {
    if (![v10 count])
    {
      v77 = @"InstallAction";
      v78 = @"Default";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v79[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];

      v10 = v12;
    }

    if ([v10 count] == 1)
    {
      v13 = [v10 objectAtIndexedSubscript:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
        v21 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_ERROR, "Rejected software update due to missing or malformed OS update object.", buf, 2u);
        }

        goto LABEL_80;
      }

      v14 = [v13 objectForKeyedSubscript:@"ProductKey"];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
          v22 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_ERROR, "Rejected software update due to malformed product key.", buf, 2u);
          }

          goto LABEL_79;
        }
      }

      v15 = [v13 objectForKeyedSubscript:@"InstallAction"];
      if (v15)
      {
        v16 = v15;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
          v17 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v18 = "Rejected software update due to malformed install action.";
LABEL_32:
            _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
            goto LABEL_78;
          }

          goto LABEL_78;
        }
      }

      else
      {
        v16 = @"Default";
      }

      v73 = 0;
      if (([objc_opt_class() _dmfAction:&v73 fromMDMActionString:v16] & 1) == 0)
      {
        [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
        v17 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v18 = "Rejected software update due to malformed OS update action.";
          goto LABEL_32;
        }

LABEL_78:

LABEL_79:
LABEL_80:

        goto LABEL_81;
      }

      v23 = [v13 objectForKeyedSubscript:@"ProductVersion"];
      if (v23)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
          v30 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v31 = "Rejected software update due to malformed product version.";
            goto LABEL_52;
          }

LABEL_77:

          goto LABEL_78;
        }

        v24 = *(DMCLogObjects() + 8);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
LABEL_36:
          v29 = [objc_opt_class() _shouldUseDelayWithRequest:v7];
          if (v29 == 2)
          {
            [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
            v30 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v31 = "Rejected software update due to use delay bad request.";
LABEL_52:
              _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
              goto LABEL_77;
            }

            goto LABEL_77;
          }

          v32 = v29;
          v68 = v16;
          v71 = v23;
          v33 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = @"NO";
            if (v32 == 1)
            {
              v34 = @"YES";
            }

            *buf = 138543362;
            v76 = v34;
            _os_log_impl(&dword_2561F5000, v33, OS_LOG_TYPE_DEFAULT, "scheduleOSUpdate useDelay = %{public}@", buf, 0xCu);
          }

          v35 = objc_opt_new();
          [v35 setProductKey:v14];
          [v35 setProductVersion:v71];
          [v35 setAction:v73];
          [v35 setUseDelay:v32 == 1];
          v36 = [MEMORY[0x277D04BF8] systemConnection];
          v72 = 0;
          v37 = [v36 performRequest:v35 error:&v72];
          v38 = v72;

          v39 = v37;
          if (!v37)
          {
            v48 = v38;
            v45 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v38];
            v49 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v76 = v45;
              _os_log_impl(&dword_2561F5000, v49, OS_LOG_TYPE_ERROR, "Could not schedule an update - %{public}@", buf, 0xCu);
            }

            v47 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v45];
            if (v8)
            {
              v8[2](v8, v47);
            }

            goto LABEL_75;
          }

          v64 = v38;
          v70 = v37;
          v40 = [v37 error];
          v41 = [(__CFString *)v40 domain];
          v42 = *MEMORY[0x277D04BC8];
          v67 = v35;
          v69 = v40;
          if ([v41 isEqualToString:*MEMORY[0x277D04BC8]])
          {
            v43 = [(__CFString *)v40 code];

            if (v43 == 2213)
            {
              v44 = *(DMCLogObjects() + 8);
              v45 = v69;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2561F5000, v44, OS_LOG_TYPE_DEFAULT, "No update available.", buf, 2u);
              }

              v39 = v70;
              if (!v8)
              {
                v48 = v64;
                goto LABEL_76;
              }

              v46 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
              v47 = [v46 mutableCopy];

              [v47 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"UpdateResults"];
              v8[2](v8, v47);
              v48 = v64;
LABEL_75:

LABEL_76:
              v23 = v71;
              v16 = v68;
              goto LABEL_77;
            }
          }

          else
          {
          }

          v50 = [(__CFString *)v69 domain];
          if ([v50 isEqualToString:v42])
          {
            v51 = [(__CFString *)v69 code]== 2200 || [(__CFString *)v69 code]== 2207;
          }

          else
          {
            v51 = 0;
          }

          v52 = [objc_opt_class() _resolvedInstallActionStringForAction:{objc_msgSend(v70, "action")}];
          if (!v69 || v51)
          {
            v65 = 0;
            v53 = @"Error";
            if (v52)
            {
              v53 = v52;
            }
          }

          else
          {

            v65 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v69];
            v53 = @"Error";
          }

          v66 = v53;
          v54 = [objc_opt_class() _statusFromError:v69 action:{objc_msgSend(v70, "action")}];
          v55 = objc_opt_new();
          [v55 setObject:v66 forKeyedSubscript:@"InstallAction"];
          v56 = [v70 productKey];
          [v55 setObject:v56 forKeyedSubscript:@"ProductKey"];

          v63 = v54;
          [v55 setObject:v54 forKeyedSubscript:@"Status"];
          if (v65)
          {
            v57 = [objc_opt_class() errorChainFromError:v65];
            [v55 setObject:v57 forKeyedSubscript:@"ErrorChain"];
          }

          v58 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
          v59 = [v58 mutableCopy];

          v74 = v55;
          v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
          [v59 setObject:v60 forKeyedSubscript:@"UpdateResults"];

          if (v8)
          {
            v8[2](v8, v59);
          }

          v61 = *(DMCLogObjects() + 8);
          v35 = v67;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v61, OS_LOG_TYPE_DEFAULT, "DMF Schedule OS update end.", buf, 2u);
          }

          v45 = v69;
          v39 = v70;
          v48 = v64;
          v47 = v66;
          goto LABEL_75;
        }

        *buf = 138543362;
        v76 = v23;
        v25 = "Requesting an update with a specific PMV - %{public}@";
        v26 = v24;
        v27 = 12;
      }

      else
      {
        v28 = *(DMCLogObjects() + 8);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v25 = "Requesting an update with any PMV";
        v26 = v28;
        v27 = 2;
      }

      _os_log_impl(&dword_2561F5000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_36;
    }

    [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v8];
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Rejected software update due to multiple OS update objects.";
LABEL_19:
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    }
  }

LABEL_81:

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_mdmScheduleOSUpdate:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "MDM Schedule OS update start.", buf, 2u);
  }

  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v8])
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Rejected software update due to user logged in.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_22:
      _os_log_impl(&dword_2561F5000, v12, v13, v11, buf, 2u);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  v14 = [v7 objectForKeyedSubscript:@"Updates"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        v32 = v7;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = *(DMCLogObjects() + 8);
              v7 = v32;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_ERROR, "Rejected software update due to malformed update object.", buf, 2u);
              }

              goto LABEL_35;
            }

            v21 = [v20 objectForKeyedSubscript:@"ProductKey"];
            if (v21)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v28 = *(DMCLogObjects() + 8);
                v7 = v32;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2561F5000, v28, OS_LOG_TYPE_ERROR, "Rejected software update due to malformed product key.", buf, 2u);
                }

                goto LABEL_35;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
          v7 = v32;
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_35:

      goto LABEL_36;
    }

    v23 = *(DMCLogObjects() + 8);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_36:

      if (v8)
      {
        v29 = +[MDMParser malformedRequestErrorResult];
        v30 = [v29 mutableCopy];

        v8[2](v8, v30);
      }

      goto LABEL_38;
    }

    *buf = 0;
    v24 = "Rejected software update due to missing or malformed update array.";
LABEL_29:
    _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_36;
  }

  if (([@"Default" isEqualToString:@"Default"] & 1) == 0)
  {
    v25 = [@"Default" isEqualToString:@"DownloadOnly"];
    v26 = [@"Default" isEqualToString:@"InstallASAP"];
    if ((v25 & 1) == 0 && (v26 & 1) == 0)
    {
      v23 = *(DMCLogObjects() + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v24 = "Rejected software update due to install action being non-default, non-download only nor immediate install actions.";
      goto LABEL_29;
    }
  }

  v22 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "MDM Schedule OS update end.";
    v12 = v22;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_22;
  }

LABEL_38:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_availableOSUpdates:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Available OS update start.", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MDMParser__availableOSUpdates_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v12 = v8;
  v43 = v12;
  v13 = v10;
  v44 = v13;
  v14 = _Block_copy(aBlock);
  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v14])
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Can't fetch available updates due to user logged in.";
LABEL_9:
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v17 = [objc_opt_class() _shouldUseDelayWithRequest:v12];
  if (v17 != 2)
  {
    v18 = v17;
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"NO";
      if (v18 == 1)
      {
        v20 = @"YES";
      }

      *buf = 138543362;
      v47 = v20;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEFAULT, "availableOSUpdates useDelay = %{public}@", buf, 0xCu);
    }

    v21 = v18 == 1;
    v22 = objc_opt_new();
    [v22 setUseDelay:v21];
    v23 = [MEMORY[0x277D04BF8] systemConnection];
    v41 = 0;
    v24 = [v23 performRequest:v22 error:&v41];
    v25 = v41;

    if (v24 || !v25)
    {
      if (v24)
      {
        v30 = [v24 update];
        if (v30)
        {
          v31 = [objc_opt_class() _updateDictionaryFromUpdate:v30];
          v45 = v31;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        }

        else
        {
          v39 = MEMORY[0x277CBEBF8];
        }

        v34 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = v39;
          _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Returning updates array: %{public}@", buf, 0xCu);
        }

        v35 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged", v39];
        v36 = [v35 mutableCopy];

        [v36 setObject:v40 forKeyedSubscript:@"AvailableOSUpdates"];
        v14[2](v14, v36);
        v37 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v37, OS_LOG_TYPE_DEFAULT, "Available OS update end.", buf, 2u);
        }

        goto LABEL_35;
      }

      if (!v25)
      {
        [MDMParser _availableOSUpdates:assertion:completionBlock:];
      }
    }

    else
    {
      v26 = [v25 domain];
      if ([v26 isEqualToString:*MEMORY[0x277D04BC8]])
      {
        v27 = [v25 code];

        if (v27 == 2213)
        {
          v28 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v28, OS_LOG_TYPE_DEFAULT, "No updates available.", buf, 2u);
          }

          v29 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
          v30 = [v29 mutableCopy];

          [v30 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"AvailableOSUpdates"];
          v14[2](v14, v30);
LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v30 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v25];
    v32 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v30;
      _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_ERROR, "Could not check for available iOS updates - %{public}@", buf, 0xCu);
    }

    v33 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v30];
    v14[2](v14, v33);

    goto LABEL_35;
  }

  [(MDMParser *)self _rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:v14];
  v15 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Rejected software update due to use delay bad request.";
    goto LABEL_9;
  }

LABEL_36:

  v38 = *MEMORY[0x277D85DE8];
}

void __59__MDMParser__availableOSUpdates_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_statusOfOSUpdates:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MDMParser__statusOfOSUpdates_assertion_completionBlock___block_invoke;
  aBlock[3] = &unk_27982C420;
  aBlock[4] = self;
  v11 = v8;
  v39 = v11;
  v12 = v10;
  v40 = v12;
  v13 = _Block_copy(aBlock);
  v14 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "Status of OS update start.", buf, 2u);
  }

  if ([(MDMParser *)self _rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:v13])
  {
    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Can't fetch OS update status due to user logged in.", buf, 2u);
    }
  }

  else
  {
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277D04BF8] systemConnection];
    v37 = 0;
    v18 = [v17 performRequest:v16 error:&v37];
    v19 = v37;

    if (v18)
    {
      v20 = objc_opt_new();
      v21 = [v18 status];
      if (v21 <= 2)
      {
        [v20 setObject:off_27982C970[v21] forKeyedSubscript:@"Status"];
      }

      v22 = [v18 productKey];
      [v20 setObject:v22 forKeyedSubscript:@"ProductKey"];

      [v18 downloadPercentComplete];
      if (v23 < 1.0)
      {
        v24 = MEMORY[0x277CBEC28];
      }

      else
      {
        v24 = MEMORY[0x277CBEC38];
      }

      [v20 setObject:v24 forKeyedSubscript:@"IsDownloaded"];
      v25 = MEMORY[0x277CCABB0];
      [v18 downloadPercentComplete];
      v26 = [v25 numberWithDouble:?];
      [v20 setObject:v26 forKeyedSubscript:@"DownloadPercentComplete"];

      v27 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
      v28 = [v27 mutableCopy];

      v41 = v20;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v28 setObject:v29 forKeyedSubscript:@"OSUpdateStatus"];

      v30 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = v18;
        _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_DEFAULT, "OSUpdateStatus DMF raw data: %{public}@", buf, 0xCu);
      }

      v31 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = v28;
        _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_DEFAULT, "OSUpdateStatus response: %{public}@", buf, 0xCu);
      }

      v9 = v36;
    }

    else
    {
      if (!v19)
      {
        [MDMParser _statusOfOSUpdates:assertion:completionBlock:];
      }

      v20 = [objc_opt_class() _errorFromDMFSoftwareUpdateError:v19];
      v32 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = v20;
        _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_ERROR, "Could not check for iOS update status - %{public}@", buf, 0xCu);
      }

      v33 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v20];
      v28 = [v33 mutableCopy];
    }

    v13[2](v13, v28);
    v34 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Status of OS update end.", buf, 2u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __58__MDMParser__statusOfOSUpdates_assertion_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendAnalyticsMDMCommandEventWithRequest:*(a1 + 40) response:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

+ (id)_errorWithDomain:(id)a3 code:(int64_t)a4 descriptionKey:(id)a5 underlyingError:(id)a6 type:(id)a7
{
  v10 = MEMORY[0x277CCA9B8];
  v11 = a7;
  v12 = a6;
  v13 = a3;
  v14 = DMCUnformattedErrorArray();
  v15 = [v10 DMCErrorWithDomain:v13 code:a4 descriptionArray:v14 underlyingError:v12 errorType:{v11, 0}];

  return v15;
}

+ (id)_errorFromDMFSoftwareUpdateError:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  switch([v3 code])
  {
    case 2200:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_IN_PROGRESS";
      v8 = 12051;
      goto LABEL_18;
    case 2201:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_COMPLETE";
      v8 = 12052;
      goto LABEL_18;
    case 2202:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_FAILED";
      v8 = 12057;
      goto LABEL_18;
    case 2203:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_INSUFFICIENT_NETWORK";
      v8 = 12056;
      goto LABEL_18;
    case 2204:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_INSUFFICIENT_SPACE";
      v8 = 12054;
      goto LABEL_18;
    case 2205:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_INSUFFICIENT_POWER";
      v8 = 12055;
      goto LABEL_18;
    case 2206:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DOWNLOAD_REQUIRES_COMPUTER";
      v8 = 12053;
      goto LABEL_18;
    case 2207:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_IN_PROGRESS";
      v8 = 12058;
      goto LABEL_18;
    case 2208:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_FAILED";
      v8 = 12062;
      goto LABEL_18;
    case 2209:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_INSUFFICIENT_SPACE";
      v8 = 12060;
      goto LABEL_18;
    case 2210:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_INSUFFICIENT_POWER";
      v8 = 12061;
      goto LABEL_18;
    case 2211:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_INSTALL_REQUIRES_DOWNLOAD";
      v8 = 12059;
      goto LABEL_18;
    case 2212:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_DEVICE_PASSCODE_MUST_BE_CLEARED";
      v8 = 12049;
      goto LABEL_18;
    case 2213:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_NO_UPDATE_AVAILABLE";
      v8 = 12048;
      goto LABEL_18;
    case 2214:
      v4 = objc_opt_class();
      v5 = *MEMORY[0x277D03480];
      v6 = *MEMORY[0x277D032F8];
      v7 = @"MDM_ERROR_SU_SCAN_FAILED";
      v8 = 12050;
LABEL_18:
      v13 = [v4 _errorWithDomain:v5 code:v8 descriptionKey:v7 underlyingError:v3 type:v6];
      break;
    default:
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D033C8];
      v11 = *MEMORY[0x277CCA7E8];
      v16[0] = *MEMORY[0x277CCA450];
      v16[1] = v11;
      v17[0] = @"Unknown software update error";
      v17[1] = v3;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v13 = [v9 errorWithDomain:v10 code:3 userInfo:v12];

      break;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_dmfAction:(unint64_t *)a3 fromMDMActionString:(id)a4
{
  v5 = [a4 lowercaseString];
  v6 = [@"DownloadOnly" lowercaseString];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [@"InstallASAP" lowercaseString];
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v11 = [@"Default" lowercaseString];
      v12 = [v5 isEqualToString:v11];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_8;
      }

      v8 = 2;
    }
  }

  *a3 = v8;
  v13 = 1;
LABEL_8:

  return v13;
}

+ (id)_resolvedInstallActionStringForAction:(unint64_t)a3
{
  v3 = @"InstallASAP";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"DownloadOnly";
  }
}

+ (unint64_t)_shouldUseDelayWithRequest:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() _useDelayFlagAllowed])
  {
    v4 = [v3 objectForKeyedSubscript:@"UseDelay"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = 2;
    }

    else
    {
      v5 = [v4 BOOLValue];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_statusFromError:(id)a3 action:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D04BC8]];

    if (v8 && (v9 = [v6 code], (v9 - 2200) <= 0xC))
    {
      v10 = off_27982C988[v9 - 2200];
    }

    else
    {
      v10 = @"Idle";
    }
  }

  else
  {
    v11 = @"Idle";
    if (a4 == 1)
    {
      v11 = @"Installing";
    }

    if (a4)
    {
      v10 = v11;
    }

    else
    {
      v10 = @"Downloading";
    }
  }

  return v10;
}

+ (id)_updateDictionaryFromUpdate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 productKey];

    if (v5)
    {
      v6 = [v3 productKey];
      [v4 setObject:v6 forKeyedSubscript:@"ProductKey"];
    }

    v7 = [v3 humanReadableName];

    if (v7)
    {
      v8 = [v3 humanReadableName];
      [v4 setObject:v8 forKeyedSubscript:@"HumanReadableName"];
    }

    v9 = [v3 productName];

    if (v9)
    {
      v10 = [v3 productName];
      [v4 setObject:v10 forKeyedSubscript:@"ProductName"];
    }

    v11 = [v3 version];

    if (v11)
    {
      v12 = [v3 version];
      [v4 setObject:v12 forKeyedSubscript:@"Version"];
    }

    v13 = [v3 build];

    if (v13)
    {
      v14 = [v3 build];
      [v4 setObject:v14 forKeyedSubscript:@"Build"];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "downloadSize")}];
    [v4 setObject:v15 forKeyedSubscript:@"DownloadSize"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "installSize")}];
    [v4 setObject:v16 forKeyedSubscript:@"InstallSize"];

    v17 = [v3 isCritical];
    v18 = MEMORY[0x277CBEC28];
    v19 = MEMORY[0x277CBEC38];
    if (v17)
    {
      v20 = MEMORY[0x277CBEC38];
    }

    else
    {
      v20 = MEMORY[0x277CBEC28];
    }

    [v4 setObject:v20 forKeyedSubscript:@"IsCritical"];
    if ([v3 restartRequired])
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    [v4 setObject:v21 forKeyedSubscript:@"RestartRequired"];
    if ([v3 allowsInstallLater])
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    [v4 setObject:v22 forKeyedSubscript:@"AllowsInstallLater"];
    if ([v3 isSplat])
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    [v4 setObject:v23 forKeyedSubscript:@"IsSecurityResponse"];
    v24 = [v3 supplementalBuild];

    if (v24)
    {
      v25 = [v3 supplementalBuild];
      [v4 setObject:v25 forKeyedSubscript:@"SupplementalBuildVersion"];
    }

    v26 = [v3 supplementalVersionExtra];

    if (v26)
    {
      v27 = [v3 supplementalVersionExtra];
      [v4 setObject:v27 forKeyedSubscript:@"SupplementalOSVersionExtra"];
    }

    v28 = [v4 copy];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (BOOL)_useDelayFlagAllowed
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MCUseSoftwareUpdateDelayFlagAllowed"];

  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_INFO, "useDelayFlagAllowed = %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_responseForMalformedUpdateRequest
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  v10[0] = @"ProductKey";
  v10[1] = @"InstallAction";
  v11[0] = &stru_2868451F0;
  v11[1] = @"Error";
  v11[2] = @"Idle";
  v10[2] = @"Status";
  v10[3] = @"ErrorChain";
  v6 = [objc_opt_class() errorChainFromError:v5];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_rejectSoftwareUpdateBecauseUserLoggedInCompletionBlock:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D03538] isSharediPad])
  {
    v5 = [MEMORY[0x277D77BF8] sharedManager];
    v6 = [v5 currentUser];
    v7 = [v6 isLoginUser];
    v8 = v7 ^ 1;

    if (v4 && (v7 & 1) == 0)
    {
      v9 = [(MDMParser *)self _softwareUpdatesNotPermittedWithLoggedInUserError];
      v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];

      v4[2](v4, v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_rejectSoftwareUpdateBecauseOfMalformedRequestCompletionBlock:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[MDMParser malformedRequestErrorResult];
    v5 = [v4 mutableCopy];

    v3[2](v3, v5);
  }
}

- (id)_softwareUpdatesNotPermittedWithLoggedInUserError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12077 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)a3 response:(id)a4
{
  if (a3 && a4)
  {
    v6 = MEMORY[0x277D24640];
    v7 = a4;
    v8 = a3;
    v12 = [v6 sharedConfiguration];
    v9 = [MEMORY[0x277D24648] sharedConfiguration];
    v10 = [(MDMParser *)self _analyticsCommandNameFromRequest:v8];
    v11 = [(MDMParser *)self _analyticsErrorFromResponse:v7];

    [(MDMParser *)self _analyticsRequiresNetworkTetheringFromRequest:v8];
    [v12 isTeslaEnrolled];
    [v12 isSupervised];
    [v9 isUserEnrollment];
    [MEMORY[0x277D03538] isSharediPad];
    MDMAnalyticsSendCommandEvent(v10, v11);
  }
}

- (id)_analyticsCommandNameFromRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"RequestType"];
  if ([v4 isEqualToString:@"InstallApplication"])
  {
    v5 = [v3 objectForKeyedSubscript:@"Options"];
    v6 = [v5 objectForKeyedSubscript:@"PurchaseMethod"];
    if ([v6 intValue] == 1)
    {
      v7 = @"%@.vpp";
    }

    else
    {
      v7 = @"%@.legacy";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v4];

    v4 = v8;
  }

  return v4;
}

- (BOOL)_analyticsRequiresNetworkTetheringFromRequest:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RequestRequiresNetworkTether"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)errorChainFromError:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v15 = v3;
  if (v15)
  {
    v5 = *MEMORY[0x277CCA7E8];
    v6 = v15;
    do
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v8 = [v6 userInfo];
      v9 = [v6 localizedDescription];
      [v7 DMCSetObjectIfNotNil:v9 forKey:@"LocalizedDescription"];

      v10 = [v6 domain];
      [v7 DMCSetObjectIfNotNil:v10 forKey:@"ErrorDomain"];

      v11 = [v6 DMCUSEnglishDescription];
      [v7 DMCSetObjectIfNotNil:v11 forKey:@"USEnglishDescription"];

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
      [v7 setObject:v12 forKey:@"ErrorCode"];

      [v4 addObject:v7];
      v13 = [v8 objectForKey:v5];

      v6 = v13;
    }

    while (v13);
  }

  return v4;
}

+ (id)malformedRequestErrorResult
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];
  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v5];

  return v6;
}

- (id)_invalidRequestTypeError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12021 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_notAuthorizedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12007 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_notManagedErrorAppID:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12038 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_notManagedAndNotSupervisedErrorAppID:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12130 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_invalidRequestTypeInMDMLostModeError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12078 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_invalidRequestTypeInSingleAppModeError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12084 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_notNetworkTetheredError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12081 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_installApplicationCouldNotModifyDDMAppsError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_managedByDDMError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:12126 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (id)_notInRRTSModeError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12131 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_appAttributesWithRequestedAttributes:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D03500] forceAppInstallUnremovability])
  {
    if (v3)
    {
      v4 = [v3 mutableCopy];
    }

    else
    {
      v4 = [MEMORY[0x277CBEB38] dictionary];
    }

    v5 = v4;
    [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D24888]];

    v3 = v5;
  }

  return v3;
}

- (id)_appManagementFlagsWithRequestedFlags:(id)a3
{
  v3 = [a3 unsignedIntegerValue];
  v4 = [MEMORY[0x277D03500] forceAppRemovalOnUnenroll];
  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithUnsignedInteger:v3 | v4];
}

- (BOOL)_isPurchaseMethodAllowed:(int)a3 onUserEnrollment:(BOOL)a4
{
  result = a3 == 1;
  if (a3 != 1 && !a4)
  {
    if ([MEMORY[0x277D03530] isAppleTV])
    {
      return 0;
    }

    else
    {
      return [MEMORY[0x277D03530] isVisionDevice] ^ 1;
    }
  }

  return result;
}

- (BOOL)_isChlorineEligible
{
  v9 = *MEMORY[0x277D85DE8];
  domain_answer = os_eligibility_get_domain_answer();
  v3 = *(DMCLogObjects() + 8);
  if (domain_answer)
  {
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      *buf = 67109120;
      LODWORD(v8) = domain_answer;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Eligibility check failed with error code: %d", buf, 8u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v8 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEBUG, "isChlorineEligible: %llu", buf, 0xCu);
    }

    LOBYTE(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (MDMServerCore)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end