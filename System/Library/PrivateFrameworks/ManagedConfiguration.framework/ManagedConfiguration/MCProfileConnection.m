@interface MCProfileConnection
+ (NSArray)features;
+ (id)profileDaemonConnectionErrorWithUnderlyingError:(id)a3;
+ (id)profileInstallationErrorWithUnderlyingError:(id)a3;
+ (id)sharedConnection;
- (BOOL)_areProfilesRestrictingSettings:(id)a3 outMDMName:(id *)a4 outExchangeName:(id *)a5 outExchangeCount:(int64_t *)a6 outProfileName:(id *)a7 outProfileCount:(int64_t *)a8;
- (BOOL)_checkRemoteProcessHasMDMEntitlement;
- (BOOL)_managedMayWriteUnmanagedContacts;
- (BOOL)_shouldApplyContactsFilterForBundleID:(id)a3 sourceAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6;
- (BOOL)_shouldApplyContactsFilterForTargetBundleID:(id)a3 targetAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6;
- (BOOL)_unmanagedMayReadManagedContacts;
- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailableAndKeyExists:(BOOL *)a3;
- (BOOL)allMarketplacesAllowed;
- (BOOL)anyMarketplaceAllowed;
- (BOOL)applySingleAppModeConfiguration:(id)a3 clientType:(id)a4 clientUUID:(id)a5 localizedClientDescription:(id)a6 outError:(id *)a7;
- (BOOL)areSettingsLockedDownByRestrictions:(id)a3;
- (BOOL)checkApplicationIdentifierEntitlement;
- (BOOL)clearPasscodeWithEscrowKeybagData:(id)a3 secret:(id)a4 outError:(id *)a5;
- (BOOL)clearPasscodeWithEscrowKeybagData:(id)a3 secretContext:(id)a4 outError:(id *)a5;
- (BOOL)clearUserInfoForClientUUIDs:(id)a3;
- (BOOL)cloudConfigIndicatesMDMProfileNeedsToBeInstalled;
- (BOOL)communicationServiceRulesExistForBundleID:(id)a3 forCommunicationServiceType:(id)a4;
- (BOOL)currentPasscodeIsCompliantWithGlobalRestrictionsOutError:(id *)a3;
- (BOOL)currentPasscodeIsCompliantWithProfileRestrictionsOutError:(id *)a3;
- (BOOL)getAreBundlesBlocked:(id *)a3 bundlePaths:(id)a4 outError:(id *)a5;
- (BOOL)getIsBundleBlocked:(BOOL *)a3 bundlePath:(id)a4 outHash:(id *)a5 outHashType:(id *)a6 outError:(id *)a7;
- (BOOL)hasAnyMailAccountIgnoringFiltering;
- (BOOL)hasAppAnalyticsAllowedBeenSet;
- (BOOL)hasDiagnosticSubmissionAllowedBeenSet;
- (BOOL)hasHandWashingDataSubmissionAllowedBeenSet;
- (BOOL)hasHealthDataSubmission2BeenSet;
- (BOOL)hasHealthDataSubmissionAllowedBeenSet;
- (BOOL)hasSafetyDataSubmissionAllowedBeenSet;
- (BOOL)hasWheelchairDataSubmissionAllowedBeenSet;
- (BOOL)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5;
- (BOOL)isActivationLockAllowed;
- (BOOL)isActivationLockAllowedWhileSupervised;
- (BOOL)isAirDropUnmanagedForced;
- (BOOL)isAppManaged:(id)a3;
- (BOOL)isAppRatingLimitInEffect;
- (BOOL)isAppleIntelligenceRestricted;
- (BOOL)isAwaitingDeviceConfigured;
- (BOOL)isAwaitingUserConfigured;
- (BOOL)isBidirectionalDataTransferAllowedWithBundleID:(id)a3;
- (BOOL)isBoolSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isBundleIDAccountBasedForDragDrop:(id)a3;
- (BOOL)isChaperoned;
- (BOOL)isClassroomEnabled;
- (BOOL)isClassroomInstructorRoleEnabled;
- (BOOL)isClassroomStudentRoleEnabled;
- (BOOL)isClassroomUnpromptedScreenObservationForced;
- (BOOL)isCloudSyncAllowed:(id)a3;
- (BOOL)isContactsReadAffectedByOpenInRestrictionsForTargetBundleID:(id)a3;
- (BOOL)isEffectivelyInAppAllowListMode;
- (BOOL)isHomeScreenLayoutApplied;
- (BOOL)isInSingleAppMode;
- (BOOL)isIntersectionSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isLocalStorageAllowed;
- (BOOL)isManagedPasteboardRequired;
- (BOOL)isMarketplaceAllowed:(id)a3;
- (BOOL)isMultiUserNewUserCreationAllowed;
- (BOOL)isNotificationsModificationAllowedForBundleID:(id)a3;
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)isParentalControlsAllowPasscodeAccessToNonWhitelistedAppsUIForcedByRestrictions;
- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)a3 outError:(id *)a4;
- (BOOL)isPasscodeModificationAllowed;
- (BOOL)isPasscodeRecoveryAllowed;
- (BOOL)isPasscodeRecoveryRestricted;
- (BOOL)isPasscodeRequired;
- (BOOL)isPasscodeRequiredByProfiles;
- (BOOL)isPasscodeRequiredToAccessWhitelistedApps;
- (BOOL)isPasscodeSet;
- (BOOL)isProfileInstalledWithIdentifier:(id)a3 outError:(id *)a4;
- (BOOL)isProfileUIInstallationAllowed;
- (BOOL)isProfileUIInstallationEffectivelyAllowed;
- (BOOL)isProfileWithIdentifier:(id)a3 managedByProfileWithIdentifier:(id)a4;
- (BOOL)isProvisionallyEnrolled;
- (BOOL)isProvisioningProfilesWithUUID:(id)a3 managedByProfileWithIdentifier:(id)a4;
- (BOOL)isRemovalRestrictedByPolicyForApp:(id)a3;
- (BOOL)isSafariPasswordAutoFillAllowedForURL:(id)a3;
- (BOOL)isSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isSingleAppModeLogoutAllowed;
- (BOOL)isSupervised;
- (BOOL)isTemporarySessionOnlyModeEnabled;
- (BOOL)isURLManaged:(id)a3;
- (BOOL)isUnionSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isValueSettingLockedDownByRestrictions:(id)a3;
- (BOOL)isWebContentFilteringInEffect;
- (BOOL)mayEnterPasscodeToAccessNonWhitelistedApps;
- (BOOL)mayOpenFromManagedToUnmanaged;
- (BOOL)mayOpenFromUnmanagedToManaged;
- (BOOL)mustInstallProfileNonInteractively:(id)a3;
- (BOOL)needsCheckIn;
- (BOOL)passcode:(id)a3 meetsCurrentConstraintsOutError:(id *)a4;
- (BOOL)passcodeContext:(id)a3 meetsCurrentConstraintsOutError:(id *)a4;
- (BOOL)recoveryPasscodeAvailable;
- (BOOL)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5;
- (BOOL)shouldApplyFilterForBundleID:(id)a3 sourceAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6;
- (BOOL)shouldApplyFilterForTargetBundleID:(id)a3 targetAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6;
- (BOOL)shouldDestroyOldKeybag;
- (BOOL)shouldInstallStoredProfile;
- (BOOL)shouldShowCloudConfigurationUI;
- (BOOL)shouldShowSetupAssistant;
- (BOOL)shouldSkipSetupPanes;
- (BOOL)showProfileErrorUIWithProfileIdentifier:(id)a3 outError:(id *)a4;
- (BOOL)syncTrustedCodeSigningIdentitiesWithOutError:(id *)a3;
- (BOOL)unlockDeviceWithPasscode:(id)a3 outError:(id *)a4;
- (BOOL)unlockDeviceWithPasscodeContext:(id)a3 outError:(id *)a4;
- (BOOL)wasCloudConfigurationApplied;
- (BOOL)wasTeslaCloudConfigurationApplied;
- (MCProfileConnection)init;
- (NSXPCConnection)publicXPCConnection;
- (NSXPCConnection)xpcConnection;
- (double)temporarySessionTimeout;
- (double)userSessionTimeout;
- (id)_cloudConfigurationRetrievalBlockWithCompletion:(id)a3;
- (id)_disallowedRestrictionErrorForRestrictionKey:(id)a3;
- (id)_handleQueueProfileError:(id)a3 targetDevice:(unint64_t)a4;
- (id)_lacksEntitlementError;
- (id)_localizedSourceDescriptionForType:(int64_t)a3 MDMName:(id)a4 exchangeName:(id)a5 exchangeCount:(int64_t)a6 profileName:(id)a7 profileCount:(int64_t)a8;
- (id)_restrictionEnforcedNotificationSettingsForBundleID:(id)a3 settingsArray:(id)a4;
- (id)_settingsLockedDownByRestrictions:(id)a3;
- (id)_sharedDeviceConfiguration;
- (id)_transmogrifyRestrictionDictionaryForUserEnrollment:(id)a3 outError:(id *)a4;
- (id)activationLockBypassHash;
- (id)activationLockBypassKey;
- (id)activeClassroomRoles;
- (id)allClientUUIDsForClientType:(id)a3;
- (id)allowedMarketplaces;
- (id)appleConnect_installMDMAssociatedProfileData:(id)a3 outError:(id *)a4;
- (id)associatedDomainsForManagedApps;
- (id)autonomousSingleAppModePermittedBundleIDs;
- (id)chaperoneOrganization;
- (id)clearRecoveryPasscode;
- (id)clientRestrictionsForClientUUID:(id)a3;
- (id)cloudConfigurationDetails;
- (id)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)defaultParametersForBoolSetting:(id)a3;
- (id)defaultParametersForIntersectionSetting:(id)a3;
- (id)defaultParametersForUnionSetting:(id)a3;
- (id)defaultParametersForValueSetting:(id)a3;
- (id)defaultUserBookmarks;
- (id)defaultValueForSetting:(id)a3;
- (id)defaultValuesForIntersectionSetting:(id)a3;
- (id)defaultValuesForUnionSetting:(id)a3;
- (id)deniedICCIDsForImessageFaceTime;
- (id)deniedICCIDsForRCS;
- (id)deniedMarketplaces;
- (id)deviceAssetTag;
- (id)deviceDepartmentName;
- (id)deviceLockScreenFootnote;
- (id)deviceOrganizationAddress;
- (id)deviceOrganizationAddressLine1;
- (id)deviceOrganizationAddressLine2;
- (id)deviceOrganizationAddressLine3;
- (id)deviceOrganizationCity;
- (id)deviceOrganizationCountry;
- (id)deviceOrganizationName;
- (id)deviceOrganizationRegion;
- (id)deviceOrganizationZipCode;
- (id)deviceProvisionalEnrollmentFootnote;
- (id)diagnosticsUploadURL;
- (id)doNotBackupAppIDs;
- (id)effectiveBlockedAppBundleIDsExcludingRemovedSystemApps;
- (id)effectiveParametersForBoolSetting:(id)a3 configurationUUID:(id)a4;
- (id)effectiveParametersForIntersectionSetting:(id)a3;
- (id)effectiveParametersForUnionSetting:(id)a3;
- (id)effectiveParametersForValueSetting:(id)a3;
- (id)effectiveRestrictions;
- (id)effectiveRestrictionsForPairedDevice;
- (id)effectiveUserSettings;
- (id)effectiveValueForSetting:(id)a3;
- (id)effectiveValueForWatchSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5;
- (id)effectiveValuesForIntersectionSetting:(id)a3;
- (id)effectiveValuesForUnionSetting:(id)a3;
- (id)effectiveValuesForWatchIntersectionSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5;
- (id)effectiveValuesForWatchUnionSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5;
- (id)effectiveWhitelistedAppBundleIDs;
- (id)effectiveWhitelistedAppsAndOptions;
- (id)fetchActivationLockBypassKeyWithError:(id *)a3;
- (id)getMachineInfoWithAdditionalInfo:(id)a3;
- (id)getReducedMachineInfo;
- (id)installProfileData:(id)a3 options:(id)a4 outError:(id *)a5;
- (id)installProfileData:(id)a3 outError:(id *)a4;
- (id)installedConfigurationProfileInfoWithOutMDMProfileInfo:(id *)a3;
- (id)installedMDMProfileIdentifier;
- (id)installedProfileDataWithIdentifier:(id)a3;
- (id)installedProfileIdentifiers;
- (id)installedProfileIdentifiersInstalledBy:(id)a3;
- (id)installedProfileWithIdentifier:(id)a3;
- (id)installedProfilesInstalledBy:(id)a3;
- (id)installedSystemProfileDataWithIdentifier:(id)a3;
- (id)installedSystemProfileWithIdentifier:(id)a3;
- (id)installedUserProfileDataWithIdentifier:(id)a3;
- (id)installedUserProfileWithIdentifier:(id)a3;
- (id)knownAirPrintIPPURLStrings;
- (id)listInstalledProvisioningProfileUUIDsWithManagedOnly:(BOOL)a3;
- (id)localizedDescriptionOfCurrentPasscodeConstraints;
- (id)localizedDescriptionOfDefaultNewPasscodeConstraints;
- (id)localizedRestrictionSourceDescriptionForFeatures:(id)a3;
- (id)lockedDownRootCertificatesWithOutLocalizedSourceDescription:(id *)a3;
- (id)managedAppBundleIDs;
- (id)managedAppIDs;
- (id)managedSystemConfigurationServiceIDs;
- (id)managedWiFiNetworkNames;
- (id)managingOrganizationForFontAtURL:(id)a3;
- (id)managingOrganizationInformation;
- (id)objectRestrictionForFeature:(id)a3;
- (id)parametersForBoolSetting:(id)a3;
- (id)parametersForIntersectionSetting:(id)a3;
- (id)parametersForUnionSetting:(id)a3;
- (id)parametersForValueSetting:(id)a3;
- (id)parentalControlsBlockedAppBundleIDs;
- (id)parentalControlsWhitelistedAppBundleIDs;
- (id)passcodeCreationDate;
- (id)passcodeExpiryDate;
- (id)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)a3;
- (id)permittedAutoLockSeconds;
- (id)popProfileDataFromHeadOfInstallationQueue;
- (id)provisionalEnrollmentExpirationDate;
- (id)provisiongProfileUUIDsForSignerIdentity:(id)a3;
- (id)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 forBundleID:(id)a5 outError:(id *)a6;
- (id)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 outError:(id *)a5;
- (id)recoveryPasscodeExpiryDate;
- (id)removedSystemAppBundleIDs;
- (id)requestEffectiveBoolValueForSetting:(id)a3 configurationUUID:(id)a4 promptOptions:(id)a5 completion:(id)a6;
- (id)restrictedAppBundleIDsExcludingRemovedSystemApps;
- (id)restrictionEnforcedBlockedAppBundleIDs;
- (id)restrictionEnforcedHomeScreenLayout;
- (id)restrictionEnforcedNotificationSettings;
- (id)restrictionEnforcedNotificationSettingsForBundleID:(id)a3;
- (id)restrictionEnforcedWhitelistedAppBundleIDs;
- (id)signerIdentityForBundleID:(id)a3;
- (id)skipSetupKeys;
- (id)trustedCodeSigningIdentities;
- (id)tvProviderUserToken;
- (id)uninstalledProfileDataWithIdentifier:(id)a3 targetDevice:(unint64_t)a4;
- (id)uninstalledProfileIdentifiersForDevice:(unint64_t)a3;
- (id)unverifiedInstalledMDMProfileIdentifier;
- (id)updateProfileWithIdentifier:(id)a3 outError:(id *)a4;
- (id)userBookmarks;
- (id)userInfoForClientUUID:(id)a3;
- (id)userSettingsForCurrentUser;
- (id)userSettingsForPairedDevice;
- (id)userSettingsForSystem;
- (id)userValueForIntersectionSetting:(id)a3;
- (id)userValueForSetting:(id)a3;
- (id)userValueForUnionSetting:(id)a3;
- (id)valueForFeature:(id)a3;
- (id)valueRestrictionForFeature:(id)a3;
- (id)verifiedTrustedCodeSigningIdentities;
- (int)BOOLRestrictionForFeature:(id)a3;
- (int)_getPasscodeComplianceWarningExpiryDate:(id)a3 lastLockDate:(id)a4 outLocalizedTitle:(id *)a5 outLocalizedMessage:(id *)a6;
- (int)appWhitelistState;
- (int)applyRestrictionDictionary:(id)a3 clientType:(id)a4 clientUUID:(id)a5 localizedClientDescription:(id)a6 localizedWarningMessage:(id)a7 complianceBlocking:(int)a8 displayImmediateAlert:(BOOL)a9 limitForUserEnrollment:(BOOL)a10 outRestrictionChanged:(BOOL *)a11 outEffectiveSettingsChanged:(BOOL *)a12 outError:(id *)a13;
- (int)defaultBoolValueForSetting:(id)a3;
- (int)defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3;
- (int)effectiveBoolValueForSetting:(id)a3 configurationUUID:(id)a4 outAsk:(BOOL *)a5;
- (int)effectiveBoolValueForSetting:(id)a3 outAsk:(BOOL *)a4;
- (int)effectiveBoolValueForWatchSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5;
- (int)effectiveRestrictedBoolValueForSetting:(id)a3;
- (int)getPasscodeComplianceWarningLastLockDate:(id)a3 outLocalizedTitle:(id *)a4 outLocalizedMessage:(id *)a5;
- (int)hostMayPairWithOptions:(id)a3 challenge:(id)a4;
- (int)minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3;
- (int)newPasscodeEntryScreenType;
- (int)newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3;
- (int)recoveryPasscodeUnlockScreenType;
- (int)recoveryPasscodeUnlockScreenTypeWithOutSimplePasscodeType:(int *)a3;
- (int)requestEffectiveBoolValueForSetting:(id)a3 configurationUUID:(id)a4 promptOptions:(id)a5 outError:(id *)a6;
- (int)restrictedBoolValueForFeature:(id)a3;
- (int)unlockScreenType;
- (int)unlockScreenTypeForSharedDataVolume:(id)a3 OutSimplePasscodeType:(int *)a4;
- (int)unlockScreenTypeForUser:(id)a3 outSimplePasscodeType:(int *)a4;
- (int)unlockScreenTypeWithOutSimplePasscodeType:(int *)a3;
- (int)userBoolValueForSetting:(id)a3;
- (int)userMode;
- (int64_t)allowedGameCenterPlayerTypes;
- (int64_t)dragDropBidirectionalManagementStateForBaseBundleID:(id)a3;
- (int64_t)dragDropSourceManagementStateForBundleID:(id)a3;
- (int64_t)dragDropTargetManagementStateForBundleID:(id)a3;
- (int64_t)softwareUpdatePath;
- (unint64_t)enforcedSoftwareUpdateDelayInDays;
- (unint64_t)gracePeriod;
- (void)__checkForProfiledCrash;
- (void)_appWhitelistDidChange:(id)a3;
- (void)_applyToObservers:(id)a3;
- (void)_createAndResumePublicXPCConnection;
- (void)_createAndResumeXPCConnection;
- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5 completion:(id)a6;
- (void)_destroyPublicXPCConnectionAndInvalidate:(BOOL)a3;
- (void)_destroyXPCConnectionAndInvalidate:(BOOL)a3;
- (void)_detectProfiledCrashes;
- (void)_effectiveSettingsDidChange:(id)a3;
- (void)_internalDefaultsDidChange;
- (void)_passcodeDidChange;
- (void)_passcodePolicyDidChange;
- (void)_profileListDidChange;
- (void)_queueCreateAndResumePublicXPCConnection;
- (void)_queueCreateAndResumeXPCConnection;
- (void)_restrictionDidChange;
- (void)_setAllowedGrandfatheredRestrictionFeature:(id)a3 forRestrictionKey:(id)a4;
- (void)addActiveClassroomRole:(id)a3;
- (void)addTrustedCodeSigningIdentities:(id)a3;
- (void)allProfilesOutMDMProfileInfo:(id *)a3 outConfigurationProfilesInfo:(id *)a4 outUninstalledProfilesInfo:(id *)a5 forDeviceType:(unint64_t)a6;
- (void)applyPairingWatchMDMEnrollmentData:(id)a3 completion:(id)a4;
- (void)cancelRequestEffectiveBoolValue:(id)a3 completion:(id)a4;
- (void)cancelUserInputResponses;
- (void)checkIn;
- (void)checkInAsynchronously;
- (void)checkInIfNeeded;
- (void)checkInWithCompletion:(id)a3;
- (void)clearRecoveryPasscodeWithCompletion:(id)a3;
- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)a3 completionBlock:(id)a4;
- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)deleteActivationLockBypassKey;
- (void)doMCICDidBeginInstallingNextProfileData:(id)a3 completion:(id)a4;
- (void)doMCICDidFinishInstallationWithIdentifier:(id)a3 error:(id)a4 completion:(id)a5;
- (void)doMCICDidFinishPreflightWithError:(id)a3 completion:(id)a4;
- (void)doMCICDidRequestMAIDSignIn:(id)a3 personaID:(id)a4 completion:(id)a5;
- (void)doMCICDidRequestManagedRestoreWithManagedAppleID:(id)a3 personaID:(id)a4 completion:(id)a5;
- (void)doMCICDidRequestShowUserWarnings:(id)a3 completion:(id)a4;
- (void)doMCICDidRequestUserInput:(id)a3 completion:(id)a4;
- (void)doMCICDidUpdateStatus:(id)a3 completion:(id)a4;
- (void)doMCICWaitForEnrollmentToFinishWithCompletion:(id)a3;
- (void)enrollProvisionallyWithNonce:(id)a3 completionBlock:(id)a4;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)a3;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)a3 completion:(id)a4;
- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)a3;
- (void)forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)a3;
- (void)getPasscodeComplianceWarningLastLockDate:(id)a3 completionBlock:(id)a4;
- (void)installProfileData:(id)a3 interactionDelegate:(id)a4;
- (void)installProfileData:(id)a3 options:(id)a4 interactionDelegate:(id)a5;
- (void)installStoredProfileDataWithExtraOptions:(id)a3 completion:(id)a4;
- (void)invalidateRestrictionCache;
- (void)isProfileInstalledWithIdentifier:(id)a3 completion:(id)a4;
- (void)lockDevice;
- (void)lockdownDidReceiveActivationRecord:(id)a3;
- (void)markStoredProfileAsInstalled;
- (void)notifyClientsToRecomputeCompliance;
- (void)notifyDeviceUnlocked;
- (void)notifyDeviceUnlockedAndPasscodeRequired;
- (void)notifyUserHasSeenComplianceMessageWithLastLockDate:(id)a3;
- (void)preflightUserInputResponses:(id)a3 forPayloadIndex:(unint64_t)a4;
- (void)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 forBundleID:(id)a5 completion:(id)a6;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3;
- (void)recomputeUserComplianceWarning;
- (void)recomputeUserComplianceWarningSynchronously;
- (void)registerObserver:(id)a3;
- (void)removeActiveClassroomRole:(id)a3;
- (void)removeBoolSetting:(id)a3;
- (void)removeExpiredProfiles;
- (void)removeOrphanedClientRestrictions;
- (void)removeOrphanedClientRestrictionsWithCompletion:(id)a3;
- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)a3;
- (void)removeProfileAsyncWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 errorCompletion:(id)a5;
- (void)removeProtectedProfileAsyncWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5;
- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)a3;
- (void)removeTrustedCodeSigningIdentities:(id)a3;
- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5 completion:(id)a6;
- (void)removeValueSetting:(id)a3;
- (void)rereadManagedAppAttributes;
- (void)resetPasscodeMetadataWithCompletion:(id)a3;
- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)a3;
- (void)retrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)a3;
- (void)retrieveCloudConfigurationDetailsCompletionBlock:(id)a3;
- (void)retrieveCloudConfigurationFromURL:(id)a3 username:(id)a4 password:(id)a5 anchorCertificates:(id)a6 additionalMachineInfo:(id)a7 completionBlock:(id)a8;
- (void)retrieveCloudConfigurationWithoutValidationCompletionBlock:(id)a3;
- (void)setActiveClassroomRoles:(id)a3;
- (void)setClassroomInstructorRoleEnabled:(BOOL)a3;
- (void)setClassroomStudentRoleEnabled:(BOOL)a3;
- (void)setGracePeriod:(unint64_t)a3 passcode:(id)a4 completionBlock:(id)a5;
- (void)setParameters:(id)a3 forBoolSetting:(id)a4;
- (void)setParameters:(id)a3 forValueSetting:(id)a4;
- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 waitUntilCompleted:(BOOL)a8 errorCompletionBlock:(id)a9;
- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 passcode:(id)a7 credentialSet:(id)a8 waitUntilCompleted:(BOOL)a9 errorCompletionBlock:(id)a10;
- (void)setParentalControlsBlockedAppBundleIDs:(id)a3;
- (void)setParentalControlsWhitelistedAppBundleIDs:(id)a3;
- (void)setUserBookmarks:(id)a3;
- (void)setUserInfo:(id)a3 forClientUUID:(id)a4;
- (void)setValue:(id)a3 forSetting:(id)a4;
- (void)setValue:(id)a3 forSetting:(id)a4 credentialSet:(id)a5 completion:(id)a6;
- (void)setValue:(id)a3 forSetting:(id)a4 passcode:(id)a5 completion:(id)a6;
- (void)setWebContentFilterAutoPermittedURLStrings:(id)a3;
- (void)setWebContentFilterUserBlacklistedURLStrings:(id)a3;
- (void)setupAssistantDidFinishWithCompletion:(id)a3;
- (void)shutDownWithCompletion:(id)a3;
- (void)startMonitoringEnrollmentStateWithPersonaID:(id)a3;
- (void)stopMonitoringEnrollmentState;
- (void)storeCertificateData:(id)a3 forHostIdentifier:(id)a4;
- (void)storeCloudConfigurationDetails:(id)a3 waitUntilCompleted:(BOOL)a4 completion:(id)a5;
- (void)storePendingCloudConfigurationDetailsForMigration:(id)a3 completionHandler:(id)a4;
- (void)storeProfileData:(id)a3 completion:(id)a4;
- (void)storedProfileDataWithCompletion:(id)a3;
- (void)submitUserInputResponses:(id)a3;
- (void)unenrollWithCompletionBlock:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)a3;
- (void)updateCloudConfigurationWithLastPushTokenHash:(id)a3;
- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)a3;
- (void)updateMDMEnrollmentInfoForPairingWatch:(id)a3 completion:(id)a4;
- (void)updateProfileWithIdentifier:(id)a3 interactionDelegate:(id)a4;
- (void)validateAppBundleIDs:(id)a3 waitUntilCompleted:(BOOL)a4 completion:(id)a5;
@end

@implementation MCProfileConnection

+ (id)sharedConnection
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedConnection_connection)
  {
    v3 = objc_opt_new();
    v4 = sharedConnection_connection;
    sharedConnection_connection = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedConnection_connection;

  return v5;
}

- (BOOL)needsCheckIn
{
  if (MCHasMigrated())
  {
    goto LABEL_9;
  }

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.datamigrator"];

  if (v4)
  {
    v5 = qword_1ED4ADE28;
    v6 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v11 = 0;
      v7 = "Not blocking for migration because we're running inside the data migrator.";
      v8 = &v11;
LABEL_8:
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_9:
      LOBYTE(v6) = 0;
    }
  }

  else if (MCIsDaemonProcess == 1)
  {
    v5 = qword_1ED4ADE28;
    v6 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v10 = 0;
      v7 = "Not blocking for migration because we're running inside profiled.";
      v8 = &v10;
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)checkInIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v3 = mach_absolute_time();
    [(MCProfileConnection *)self checkIn];
    v4 = mach_absolute_time();
    v5 = _MCMachTimeToSeconds(v4 - v3);
    if (v5 > 0.01)
    {
      v6 = qword_1ED4ADE28;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
      {
        v8 = 134217984;
        v9 = v5;
        _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "A call was blocked for a significant time waiting for ManagedConfiguration migration to complete. checkInIfNeeded time elapsed: %f", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (MCProfileConnection)init
{
  MCLoggingInitialize();
  v163.receiver = self;
  v163.super_class = MCProfileConnection;
  v3 = [(MCProfileConnection *)&v163 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.MCProfileConnection._xpcConnectionSyncQueue", 0);
    xpcConnectionSyncQueue = v3->_xpcConnectionSyncQueue;
    v3->_xpcConnectionSyncQueue = v4;

    v6 = dispatch_queue_create("com.apple.MCProfileConnection._publicXPCConnectionSyncQueue", 0);
    publicXPCConnectionSyncQueue = v3->_publicXPCConnectionSyncQueue;
    v3->_publicXPCConnectionSyncQueue = v6;

    v8 = dispatch_queue_create("com.apple.MCProfileConnection._shutDownSerialQueue", 0);
    shutDownSerialQueue = v3->_shutDownSerialQueue;
    v3->_shutDownSerialQueue = v8;

    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v10;

    v12 = dispatch_queue_create("com.apple.MCProfileConnection._notificationSyncQueue", 0);
    notificationSyncQueue = v3->_notificationSyncQueue;
    v3->_notificationSyncQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    notificationTokens = v3->_notificationTokens;
    v3->_notificationTokens = v14;

    out_token = 0;
    v16 = [@"com.apple.managedconfiguration.restrictionchanged" cStringUsingEncoding:4];
    v17 = notificationQueue();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__MCProfileConnection_init__block_invoke;
    handler[3] = &unk_1E77D01F8;
    v18 = v3;
    v161 = v18;
    notify_register_dispatch(v16, &out_token, v17, handler);

    v19 = v3->_notificationTokens;
    v20 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v19 addObject:v20];

    v21 = [@"com.apple.managedconfiguration.passcodechanged" cStringUsingEncoding:4];
    v22 = notificationQueue();
    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 3221225472;
    v158[2] = __27__MCProfileConnection_init__block_invoke_13;
    v158[3] = &unk_1E77D01F8;
    v23 = v18;
    v159 = v23;
    notify_register_dispatch(v21, &out_token, v22, v158);

    v24 = v3->_notificationTokens;
    v25 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v24 addObject:v25];

    v26 = [@"PINPolicyChangedNotification" cStringUsingEncoding:4];
    v27 = notificationQueue();
    v156[0] = MEMORY[0x1E69E9820];
    v156[1] = 3221225472;
    v156[2] = __27__MCProfileConnection_init__block_invoke_14;
    v156[3] = &unk_1E77D01F8;
    v28 = v23;
    v157 = v28;
    notify_register_dispatch(v26, &out_token, v27, v156);

    v29 = v3->_notificationTokens;
    v30 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v29 addObject:v30];

    v31 = [@"com.apple.ManagedConfiguration.profileListChanged" cStringUsingEncoding:4];
    v32 = notificationQueue();
    v154[0] = MEMORY[0x1E69E9820];
    v154[1] = 3221225472;
    v154[2] = __27__MCProfileConnection_init__block_invoke_15;
    v154[3] = &unk_1E77D01F8;
    v33 = v28;
    v155 = v33;
    notify_register_dispatch(v31, &out_token, v32, v154);

    v34 = v3->_notificationTokens;
    v35 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v34 addObject:v35];

    v36 = [@"com.apple.managedconfiguration.settingschanged" cStringUsingEncoding:4];
    v37 = notificationQueue();
    v152[0] = MEMORY[0x1E69E9820];
    v152[1] = 3221225472;
    v152[2] = __27__MCProfileConnection_init__block_invoke_18;
    v152[3] = &unk_1E77D01F8;
    v38 = v33;
    v153 = v38;
    notify_register_dispatch(v36, &out_token, v37, v152);

    v39 = v3->_notificationTokens;
    v40 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v39 addObject:v40];

    v41 = [@"com.apple.managedconfiguration.effectivesettingschanged" cStringUsingEncoding:4];
    v42 = notificationQueue();
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __27__MCProfileConnection_init__block_invoke_19;
    v150[3] = &unk_1E77D01F8;
    v43 = v38;
    v151 = v43;
    notify_register_dispatch(v41, &out_token, v42, v150);

    v44 = v3->_notificationTokens;
    v45 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v44 addObject:v45];

    v46 = [@"com.apple.managedconfiguration.appwhitelistdidchange" UTF8String];
    v47 = notificationQueue();
    v148[0] = MEMORY[0x1E69E9820];
    v148[1] = 3221225472;
    v148[2] = __27__MCProfileConnection_init__block_invoke_21;
    v148[3] = &unk_1E77D01F8;
    v48 = v43;
    v149 = v48;
    notify_register_dispatch(v46, &out_token, v47, v148);

    v49 = v3->_notificationTokens;
    v50 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v49 addObject:v50];

    v51 = [@"com.apple.managedconfiguration.defaultsdidchange" UTF8String];
    v52 = notificationQueue();
    v146[0] = MEMORY[0x1E69E9820];
    v146[1] = 3221225472;
    v146[2] = __27__MCProfileConnection_init__block_invoke_22;
    v146[3] = &unk_1E77D01F8;
    v53 = v48;
    v147 = v53;
    notify_register_dispatch(v51, &out_token, v52, v146);

    v54 = v3->_notificationTokens;
    v55 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v54 addObject:v55];

    v56 = [@"com.apple.managedconfiguration.keyboardsettingschanged" UTF8String];
    v57 = notificationQueue();
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __27__MCProfileConnection_init__block_invoke_23;
    v144[3] = &unk_1E77D01F8;
    v58 = v53;
    v145 = v58;
    notify_register_dispatch(v56, &out_token, v57, v144);

    v59 = v3->_notificationTokens;
    v60 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v59 addObject:v60];

    v61 = [@"com.apple.managedconfiguration.newssettingschanged" UTF8String];
    v62 = notificationQueue();
    v142[0] = MEMORY[0x1E69E9820];
    v142[1] = 3221225472;
    v142[2] = __27__MCProfileConnection_init__block_invoke_24;
    v142[3] = &unk_1E77D01F8;
    v63 = v58;
    v143 = v63;
    notify_register_dispatch(v61, &out_token, v62, v142);

    v64 = v3->_notificationTokens;
    v65 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v64 addObject:v65];

    v66 = [@"com.apple.managedconfiguration.clientrestrictionschanged" cStringUsingEncoding:4];
    v67 = notificationQueue();
    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = __27__MCProfileConnection_init__block_invoke_25;
    v140[3] = &unk_1E77D01F8;
    v68 = v63;
    v141 = v68;
    notify_register_dispatch(v66, &out_token, v67, v140);

    v69 = v3->_notificationTokens;
    v70 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v69 addObject:v70];

    v71 = [@"com.apple.managedconfiguration.webFilterUIActiveDidChange" UTF8String];
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __27__MCProfileConnection_init__block_invoke_26;
    v138[3] = &unk_1E77D01F8;
    v72 = v68;
    v139 = v72;
    v73 = MEMORY[0x1E69E96A0];
    notify_register_dispatch(v71, &out_token, MEMORY[0x1E69E96A0], v138);
    v74 = v3->_notificationTokens;
    v75 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v74 addObject:v75];

    v76 = [@"com.apple.ManagedConfiguration.managedAppsChanged" UTF8String];
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __27__MCProfileConnection_init__block_invoke_27;
    v136[3] = &unk_1E77D01F8;
    v77 = v72;
    v137 = v77;
    notify_register_dispatch(v76, &out_token, v73, v136);

    v78 = v3->_notificationTokens;
    v79 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v78 addObject:v79];

    v80 = [@"MCManagedBooksChanged" UTF8String];
    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __27__MCProfileConnection_init__block_invoke_28;
    v134[3] = &unk_1E77D01F8;
    v81 = v77;
    v135 = v81;
    notify_register_dispatch(v80, &out_token, v73, v134);

    v82 = v3->_notificationTokens;
    v83 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v82 addObject:v83];

    v84 = [@"com.apple.managedconfiguration.allowpasscodemodificationchanged" UTF8String];
    v85 = notificationQueue();
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __27__MCProfileConnection_init__block_invoke_29;
    v132[3] = &unk_1E77D01F8;
    v86 = v81;
    v133 = v86;
    notify_register_dispatch(v84, &out_token, v85, v132);

    v87 = v3->_notificationTokens;
    v88 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v87 addObject:v88];

    v89 = [@"com.apple.ManagedConfiguration.removedSystemAppsChanged" UTF8String];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __27__MCProfileConnection_init__block_invoke_30;
    v130[3] = &unk_1E77D01F8;
    v90 = v86;
    v131 = v90;
    notify_register_dispatch(v89, &out_token, v73, v130);

    v91 = v3->_notificationTokens;
    v92 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v91 addObject:v92];

    v93 = [@"com.apple.ManagedConfiguration.diagnosticsCollected" UTF8String];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __27__MCProfileConnection_init__block_invoke_31;
    v128[3] = &unk_1E77D01F8;
    v94 = v90;
    v129 = v94;
    notify_register_dispatch(v93, &out_token, v73, v128);

    v95 = v3->_notificationTokens;
    v96 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v95 addObject:v96];

    v97 = [@"com.apple.managedconfiguration.allowhealthdatasubmissionchanged" UTF8String];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __27__MCProfileConnection_init__block_invoke_32;
    v126[3] = &unk_1E77D01F8;
    v98 = v94;
    v127 = v98;
    notify_register_dispatch(v97, &out_token, v73, v126);

    v99 = v3->_notificationTokens;
    v100 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v99 addObject:v100];

    v101 = [@"com.apple.managedconfiguration.homescreenlayoutchanged" UTF8String];
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __27__MCProfileConnection_init__block_invoke_33;
    v124[3] = &unk_1E77D01F8;
    v102 = v98;
    v125 = v102;
    notify_register_dispatch(v101, &out_token, v73, v124);

    v103 = v3->_notificationTokens;
    v104 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v103 addObject:v104];

    v105 = [@"com.apple.managedconfiguration.clearpasscodegenerationcaches" cStringUsingEncoding:4];
    v106 = notificationQueue();
    notify_register_dispatch(v105, &out_token, v106, &__block_literal_global_2);

    v107 = v3->_notificationTokens;
    v108 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v107 addObject:v108];

    v109 = [*MEMORY[0x1E69AD418] cStringUsingEncoding:4];
    v110 = notificationQueue();
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __27__MCProfileConnection_init__block_invoke_35;
    v122[3] = &unk_1E77D01F8;
    v111 = v102;
    v123 = v111;
    notify_register_dispatch(v109, &out_token, v110, v122);

    v112 = v3->_notificationTokens;
    v113 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v112 addObject:v113];

    v114 = [MEMORY[0x1E696AD88] defaultCenter];
    [v114 addObserver:v111 selector:sel__restrictionDidChange name:@"com.apple.managedconfiguration.restrictionchanged" object:v111];

    v115 = [MEMORY[0x1E696AD88] defaultCenter];
    [v115 addObserver:v111 selector:sel__passcodePolicyDidChange name:@"PINPolicyChangedNotification" object:v111];

    v116 = [MEMORY[0x1E696AD88] defaultCenter];
    [v116 addObserver:v111 selector:sel__passcodeDidChange name:@"com.apple.managedconfiguration.passcodechanged" object:v111];

    v117 = [MEMORY[0x1E696AD88] defaultCenter];
    [v117 addObserver:v111 selector:sel__profileListDidChange name:@"com.apple.ManagedConfiguration.profileListChanged" object:v111];

    v118 = [MEMORY[0x1E696AD88] defaultCenter];
    [v118 addObserver:v111 selector:sel__effectiveSettingsDidChange_ name:@"com.apple.managedconfiguration.effectivesettingschanged" object:v111];

    v119 = [MEMORY[0x1E696AD88] defaultCenter];
    [v119 addObserver:v111 selector:sel__defaultsDidChange name:@"com.apple.managedconfiguration.defaultsdidchange" object:v111];

    v120 = [MEMORY[0x1E696AD88] defaultCenter];
    [v120 addObserver:v111 selector:sel__appWhitelistDidChange_ name:@"com.apple.managedconfiguration.appwhitelistdidchange" object:v111];
  }

  return v3;
}

- (int)appWhitelistState
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    return 0;
  }

  v3 = +[MCRestrictionManager sharedManager];
  v4 = [v3 effectiveUserSettings];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 currentRestrictions];
  v7 = [MCRestrictionManager appWhitelistStateWithSettingsDictionary:v4 restrictionsDictionary:v6];

  return v7;
}

- (BOOL)mayOpenFromManagedToUnmanaged
{
  v10 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowOpenFromManagedToUnmanaged"];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v3 != 2)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "mayOpenFromManagedToUnmanaged: %@", &v8, 0xCu);
  }

  result = v3 != 2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSXPCConnection)publicXPCConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  publicXPCConnectionSyncQueue = self->_publicXPCConnectionSyncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MCProfileConnection_publicXPCConnection__block_invoke;
  v5[3] = &unk_1E77D0158;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(publicXPCConnectionSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__MCProfileConnection_publicXPCConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[17];
  if (!v3)
  {
    [v2 _queueCreateAndResumePublicXPCConnection];
    v3 = *(*(a1 + 32) + 136);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_queueCreateAndResumePublicXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.managedconfiguration.profiled.public" options:4096];
  publicXPCConnection = self->_publicXPCConnection;
  self->_publicXPCConnection = v3;

  v5 = MCXPCProtocolInterface();
  [(NSXPCConnection *)self->_publicXPCConnection setRemoteObjectInterface:v5];

  v6 = MCProfileConnectionXPCProtocolInterface();
  [(NSXPCConnection *)self->_publicXPCConnection setExportedInterface:v6];

  [(NSXPCConnection *)self->_publicXPCConnection setExportedObject:self];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__MCProfileConnection__queueCreateAndResumePublicXPCConnection__block_invoke;
  v9[3] = &unk_1E77D01D0;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)self->_publicXPCConnection setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__MCProfileConnection__queueCreateAndResumePublicXPCConnection__block_invoke_2;
  v7[3] = &unk_1E77D01D0;
  objc_copyWeak(&v8, &location);
  [(NSXPCConnection *)self->_publicXPCConnection setInterruptionHandler:v7];
  [(NSXPCConnection *)self->_publicXPCConnection resume];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)isPasscodeSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (id)effectiveBlockedAppBundleIDsExcludingRemovedSystemApps
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 effectiveBlockedAppBundleIDsExcludingRemovedSystemApps:1];
    v2 = [v4 copy];
  }

  return v2;
}

- (id)effectiveWhitelistedAppBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 effectiveWhitelistedAppBundleIDs];
    v2 = [v4 copy];
  }

  return v2;
}

- (id)effectiveUserSettings
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveUserSettings];

  return v3;
}

- (BOOL)isSupervised
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isSupervised];

  return v3;
}

- (BOOL)isOpenInRestrictionInEffect
{
  v10 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  if ([(MCProfileConnection *)self mayOpenFromManagedToUnmanaged])
  {
    v3 = ![(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
  }

  else
  {
    v3 = 1;
  }

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "isOpenInRestrictionInEffect: %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)mayOpenFromUnmanagedToManaged
{
  v10 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowOpenFromUnmanagedToManaged"];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v3 != 2)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "mayOpenFromUnmanagedToManaged: %@", &v8, 0xCu);
  }

  result = v3 != 2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isLocalStorageAllowed
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  if ([v2 isSharedIPad])
  {
    v3 = [v2 currentUser];
    v4 = [v3 isTransientUser];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)restrictedAppBundleIDsExcludingRemovedSystemApps
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 restrictedAppBundleIDsExcludingRemovedSystemApps:1];
    v2 = [v4 copy];
  }

  return v2;
}

- (id)restrictionEnforcedHomeScreenLayout
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MEMORY[0x1E695DEC8];
  v3 = MCUserHomeScreenLayoutFilePath();
  v4 = [v2 arrayWithContentsOfFile:v3];

  if (!v4)
  {
    v5 = MEMORY[0x1E695DEC8];
    v6 = MCSystemHomeScreenLayoutFilePath();
    v4 = [v5 arrayWithContentsOfFile:v6];
  }

  return v4;
}

void __27__MCProfileConnection_init__block_invoke_18(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received settings changed notification", buf, 2u);
  }

  v3 = MCIsDaemonProcess;
  v4 = qword_1ED4ADE28;
  v5 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Not invalidating cache because we're running inside profiled.", v9, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Invalidating cache", v8, 2u);
    }

    v6 = +[MCRestrictionManager sharedManager];
    [v6 invalidateSettings];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"com.apple.managedconfiguration.settingschanged" object:*(a1 + 32)];
}

- (id)managedAppIDs
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD440] attributesByAppID];
  v3 = [v2 allKeys];

  return v3;
}

- (id)trustedCodeSigningIdentities
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveUnionValuesForSetting:@"trustedCodeSigningIdentities"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)isActivationLockAllowed
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v4 = [v3 isSupervised];

  if (!v4)
  {
    return 1;
  }

  return [(MCProfileConnection *)self isActivationLockAllowedWhileSupervised];
}

- (BOOL)isPasscodeModificationAllowed
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if ([MEMORY[0x1E6999800] isSharediPad])
  {
    return 1;
  }

  return +[MCRestrictionManager mayChangePasscode];
}

- (NSXPCConnection)xpcConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  xpcConnectionSyncQueue = self->_xpcConnectionSyncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MCProfileConnection_xpcConnection__block_invoke;
  v5[3] = &unk_1E77D0158;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(xpcConnectionSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__MCProfileConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[18];
  if (!v3)
  {
    [v2 _queueCreateAndResumeXPCConnection];
    v3 = *(*(a1 + 32) + 144);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_createAndResumeXPCConnection
{
  xpcConnectionSyncQueue = self->_xpcConnectionSyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MCProfileConnection__createAndResumeXPCConnection__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_sync(xpcConnectionSyncQueue, block);
}

- (void)_destroyXPCConnectionAndInvalidate:(BOOL)a3
{
  xpcConnectionSyncQueue = self->_xpcConnectionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MCProfileConnection__destroyXPCConnectionAndInvalidate___block_invoke;
  v4[3] = &unk_1E77D01A8;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(xpcConnectionSyncQueue, v4);
}

void __58__MCProfileConnection__destroyXPCConnectionAndInvalidate___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 144) invalidate];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;
}

- (void)_queueCreateAndResumeXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.managedconfiguration.profiled" options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = MCXPCProtocolInterface();
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];

  v6 = MCProfileConnectionXPCProtocolInterface();
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v6];

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MCProfileConnection__queueCreateAndResumeXPCConnection__block_invoke;
  v9[3] = &unk_1E77D01D0;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MCProfileConnection__queueCreateAndResumeXPCConnection__block_invoke_1;
  v7[3] = &unk_1E77D01D0;
  objc_copyWeak(&v8, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v7];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__MCProfileConnection__queueCreateAndResumeXPCConnection__block_invoke(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_ERROR, "XPC connection invalidated", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[16];
    if (v5)
    {
      (*(v5 + 16))();
      v6 = v4[16];
      v4[16] = 0;
    }

    [v4 _destroyXPCConnectionAndInvalidate:0];
  }
}

void __57__MCProfileConnection__queueCreateAndResumeXPCConnection__block_invoke_1(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _destroyXPCConnectionAndInvalidate:1];
}

- (void)_createAndResumePublicXPCConnection
{
  publicXPCConnectionSyncQueue = self->_publicXPCConnectionSyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MCProfileConnection__createAndResumePublicXPCConnection__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_sync(publicXPCConnectionSyncQueue, block);
}

- (void)_destroyPublicXPCConnectionAndInvalidate:(BOOL)a3
{
  publicXPCConnectionSyncQueue = self->_publicXPCConnectionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MCProfileConnection__destroyPublicXPCConnectionAndInvalidate___block_invoke;
  v4[3] = &unk_1E77D01A8;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(publicXPCConnectionSyncQueue, v4);
}

void __64__MCProfileConnection__destroyPublicXPCConnectionAndInvalidate___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 136) invalidate];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
}

void __63__MCProfileConnection__queueCreateAndResumePublicXPCConnection__block_invoke(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_ERROR, "Public XPC connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _destroyPublicXPCConnectionAndInvalidate:0];
}

void __63__MCProfileConnection__queueCreateAndResumePublicXPCConnection__block_invoke_2(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEFAULT, "Public XPC connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _destroyPublicXPCConnectionAndInvalidate:1];
}

void __27__MCProfileConnection_init__block_invoke(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received restriction changed notification", buf, 2u);
  }

  v3 = MCIsDaemonProcess;
  v4 = qword_1ED4ADE28;
  v5 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Not invalidating cache because we're running inside profiled.", v9, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Invalidating cache", v8, 2u);
    }

    v6 = +[MCRestrictionManager sharedManager];
    [v6 invalidateRestrictions];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"com.apple.managedconfiguration.restrictionchanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_13(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received passcode changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.passcodechanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_14(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received passcode policy changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PINPolicyChangedNotification" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_15(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received profile list changed notification", buf, 2u);
  }

  v3 = MCIsDaemonProcess;
  v4 = qword_1ED4ADE28;
  v5 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v5)
    {
      *v16 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Not invalidating caches because we're running inside profiled.", v16, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v15 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Invalidating caches", v15, 2u);
    }

    v6 = +[MCDependencyReader sharedReader];
    [v6 invalidateCache];

    v7 = +[MCManifest sharedManifest];
    [v7 invalidateCache];

    v8 = +[MCRestrictionManager sharedManager];
    [v8 invalidateRestrictions];

    v9 = +[MCRestrictionManager sharedManager];
    [v9 invalidateSettings];
  }

  v10 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEBUG, "Sending out a localized restriction source notification!", v14, 2u);
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"com.apple.ManagedConfiguration.profileListChanged" object:*(a1 + 32)];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"com.apple.ManagedConfiguration.localizedRestrictionSourceDescriptionDidChange" object:*(a1 + 32)];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 postNotificationName:@"com.apple.ManagedConfiguration.localizedCertificateSourceDescriptionDidChange" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_19(uint64_t a1, int a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Received effective settings changed notification", &v14, 2u);
  }

  v5 = MCIsDaemonProcess;
  v6 = qword_1ED4ADE28;
  v7 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG);
  if (v5 == 1)
  {
    if (v7)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEBUG, "Not invalidating cache because we're running inside profiled.", &v14, 2u);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEBUG, "Invalidating cache", &v14, 2u);
    }

    v8 = +[MCRestrictionManager sharedManager];
    [v8 invalidateSettings];
  }

  v14 = 0;
  notify_get_state(a2, &v14);
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *(a1 + 32);
  v15 = @"senderPID";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v9 postNotificationName:@"com.apple.managedconfiguration.effectivesettingschanged" object:v10 userInfo:v12];

  v13 = *MEMORY[0x1E69E9840];
}

void __27__MCProfileConnection_init__block_invoke_21(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received app allow list did changed notification", v5, 2u);
  }

  v3 = +[MCRestrictionManager sharedManager];
  [v3 clearEffectiveWhitelistedAppsAndOptionsCache];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"com.apple.managedconfiguration.appwhitelistdidchange" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_22(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received defaults did changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.defaultsdidchange" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_23(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received keyboard settings changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.keyboardsettingschanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_24(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received news settings changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.newssettingschanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_25(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received client restrictions changed notification", buf, 2u);
  }

  v3 = MCIsDaemonProcess;
  v4 = qword_1ED4ADE28;
  v5 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v5)
    {
      *v12 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Not invalidating caches because we're running inside profiled.", v12, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v11 = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "Invalidating caches", v11, 2u);
    }

    v6 = +[MCRestrictionManager sharedManager];
    [v6 invalidateRestrictions];

    v7 = +[MCRestrictionManager sharedManager];
    [v7 invalidateSettings];
  }

  v8 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEBUG, "Sending out a localized restriction source notification!", v10, 2u);
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"com.apple.ManagedConfiguration.localizedRestrictionSourceDescriptionDidChange" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_26(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received web filter UI active did changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.webFilterUIActiveDidChange" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_27(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received managed apps changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.ManagedConfiguration.managedAppsChanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_28(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received managed books changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MCManagedBooksChanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_29(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received allow passcode modification changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.allowpasscodemodificationchanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_30(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received removed system apps changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.ManagedConfiguration.removedSystemAppsChanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_31(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received diagnostics collected notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.ManagedConfiguration.diagnosticsCollected" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_32(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received allow health data submission changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.allowhealthdatasubmissionchanged" object:*(a1 + 32)];
}

void __27__MCProfileConnection_init__block_invoke_33(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received home screen layout changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.managedconfiguration.homescreenlayoutchanged" object:*(a1 + 32)];
}

uint64_t __27__MCProfileConnection_init__block_invoke_34()
{
  v0 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEBUG, "Received clear passcode generation caches notification", v2, 2u);
  }

  return MCKeybagClearPasscodeGenerationCaches();
}

void __27__MCProfileConnection_init__block_invoke_35(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEBUG, "Received skip key changed notification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E69AD418] object:*(a1 + 32)];
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  [(NSXPCConnection *)self->_publicXPCConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_publicXPCConnection invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_notificationTokens;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        notify_cancel([*(*(&v11 + 1) + 8 * v8++) intValue]);
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = MCProfileConnection;
  [(MCProfileConnection *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkIn
{
  v3 = [(MCProfileConnection *)self publicXPCConnection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_55];
  [v2 checkInWithCompletion:&__block_literal_global_55];
}

void __30__MCProfileConnection_checkIn__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Check-in error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkInWithCompletion:(id)a3
{
  v4 = MEMORY[0x1AC55F990](a3, a2);
  if (!v4)
  {
    v4 = &__block_literal_global_57;
  }

  v7 = v4;
  v5 = [(MCProfileConnection *)self publicXPCConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v7];
  [v6 checkInWithCompletion:v7];
}

void __45__MCProfileConnection_checkInWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Check-in error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkInAsynchronously
{
  v3 = [(MCProfileConnection *)self publicXPCConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  [v2 checkInWithCompletion:&__block_literal_global_59];
}

void __44__MCProfileConnection_checkInAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Check-in async error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_applyToObservers:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  notificationSyncQueue = self->_notificationSyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MCProfileConnection__applyToObservers___block_invoke;
  block[3] = &unk_1E77D0260;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(notificationSyncQueue, block);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v19[5];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v4[2](v4, v10);
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __41__MCProfileConnection__applyToObservers___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_restrictionDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCProfileConnection__restrictionDidChange__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__MCProfileConnection__restrictionDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MCProfileConnection__restrictionDidChange__block_invoke_2;
  v3[3] = &unk_1E77D0288;
  v3[4] = v1;
  return [v1 _applyToObservers:v3];
}

void __44__MCProfileConnection__restrictionDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 profileConnectionDidReceiveRestrictionChangedNotification:*(a1 + 32) userInfo:0];
  }
}

- (void)_passcodeDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MCProfileConnection__passcodeDidChange__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __41__MCProfileConnection__passcodeDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MCProfileConnection__passcodeDidChange__block_invoke_2;
  v3[3] = &unk_1E77D0288;
  v3[4] = v1;
  return [v1 _applyToObservers:v3];
}

void __41__MCProfileConnection__passcodeDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 profileConnectionDidReceivePasscodeChangedNotification:*(a1 + 32) userInfo:0];
  }
}

- (void)_passcodePolicyDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MCProfileConnection__passcodePolicyDidChange__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __47__MCProfileConnection__passcodePolicyDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__MCProfileConnection__passcodePolicyDidChange__block_invoke_2;
  v3[3] = &unk_1E77D0288;
  v3[4] = v1;
  return [v1 _applyToObservers:v3];
}

void __47__MCProfileConnection__passcodePolicyDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 profileConnectionDidReceivePasscodePolicyChangedNotification:*(a1 + 32) userInfo:0];
  }
}

- (void)_profileListDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCProfileConnection__profileListDidChange__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__MCProfileConnection__profileListDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MCProfileConnection__profileListDidChange__block_invoke_2;
  v3[3] = &unk_1E77D0288;
  v3[4] = v1;
  return [v1 _applyToObservers:v3];
}

void __44__MCProfileConnection__profileListDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 profileConnectionDidReceiveProfileListChangedNotification:*(a1 + 32) userInfo:0];
  }
}

- (void)_appWhitelistDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MCProfileConnection__appWhitelistDidChange___block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__MCProfileConnection__appWhitelistDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__MCProfileConnection__appWhitelistDidChange___block_invoke_2;
  v3[3] = &unk_1E77D0288;
  v3[4] = v1;
  return [v1 _applyToObservers:v3];
}

void __46__MCProfileConnection__appWhitelistDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 profileConnectionDidReceiveAppWhitelistChangedNotification:*(a1 + 32) userInfo:0];
  }
}

- (void)_internalDefaultsDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__MCProfileConnection__internalDefaultsDidChange__block_invoke;
  v2[3] = &unk_1E77D0288;
  v2[4] = self;
  [(MCProfileConnection *)self _applyToObservers:v2];
}

void __49__MCProfileConnection__internalDefaultsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 profileConnectionDidReceiveDefaultsChangedNotification:*(a1 + 32) userInfo:0];
  }
}

- (void)_effectiveSettingsDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MCProfileConnection__effectiveSettingsDidChange___block_invoke;
  v6[3] = &unk_1E77D02D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __51__MCProfileConnection__effectiveSettingsDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__MCProfileConnection__effectiveSettingsDidChange___block_invoke_2;
  v2[3] = &unk_1E77D02B0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _applyToObservers:v2];
}

void __51__MCProfileConnection__effectiveSettingsDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) userInfo];
    [v5 profileConnectionDidReceiveEffectiveSettingsChangedNotification:v3 userInfo:v4];
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  notificationSyncQueue = self->_notificationSyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MCProfileConnection_registerObserver___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(notificationSyncQueue, v7);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  notificationSyncQueue = self->_notificationSyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MCProfileConnection_unregisterObserver___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(notificationSyncQueue, v7);
}

- (id)activeClassroomRoles
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"classroomRoles"];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)setActiveClassroomRoles:(id)a3
{
  v4 = [a3 allObjects];
  [(MCProfileConnection *)self setValues:v4 forIntersectionSetting:@"classroomRoles" toSystem:0 user:1];
}

- (void)addActiveClassroomRole:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileConnection *)self activeClassroomRoles];
  v6 = [v5 mutableCopy];

  [v6 addObject:v4];
  [(MCProfileConnection *)self setActiveClassroomRoles:v6];
}

- (void)removeActiveClassroomRole:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileConnection *)self activeClassroomRoles];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  [(MCProfileConnection *)self setActiveClassroomRoles:v6];
}

- (BOOL)isClassroomStudentRoleEnabled
{
  v2 = [(MCProfileConnection *)self activeClassroomRoles];
  v3 = [v2 containsObject:@"student"];

  return v3;
}

- (void)setClassroomStudentRoleEnabled:(BOOL)a3
{
  if (a3)
  {
    [(MCProfileConnection *)self addActiveClassroomRole:@"student"];
  }

  else
  {
    [(MCProfileConnection *)self removeActiveClassroomRole:@"student"];
  }
}

- (BOOL)isClassroomInstructorRoleEnabled
{
  v2 = [(MCProfileConnection *)self activeClassroomRoles];
  v3 = [v2 containsObject:@"instructor"];

  return v3;
}

- (void)setClassroomInstructorRoleEnabled:(BOOL)a3
{
  if (a3)
  {
    [(MCProfileConnection *)self addActiveClassroomRole:@"instructor"];
  }

  else
  {
    [(MCProfileConnection *)self removeActiveClassroomRole:@"instructor"];
  }
}

- (BOOL)isClassroomEnabled
{
  v2 = [(MCProfileConnection *)self activeClassroomRoles];
  if ([v2 containsObject:@"instructor"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 containsObject:@"student"];
  }

  return v3;
}

- (BOOL)isClassroomUnpromptedScreenObservationForced
{
  v3 = [(MCProfileConnection *)self effectiveBoolValueForSetting:@"forceClassroomUnpromptedScreenObservation"];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MCProfileConnection *)self effectiveBoolValueForSetting:@"forceUnpromptedManagedClassroomScreenObservation"]== 1;
  }

  return v3;
}

- (int)restrictedBoolValueForFeature:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [(MCProfileConnection *)self BOOLRestrictionForFeature:v4];

  return self;
}

- (id)valueForFeature:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self valueRestrictionForFeature:v4];

  return v5;
}

- (int)effectiveRestrictedBoolValueForSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [(MCProfileConnection *)self effectiveBoolValueForSetting:v4];

  return self;
}

- (id)installedMDMProfileIdentifier
{
  v28 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [(MCProfileConnection *)self unverifiedInstalledMDMProfileIdentifier];
  if (v3)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v4 = [(MCProfileConnection *)self xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__MCProfileConnection_Profiles__installedMDMProfileIdentifier__block_invoke;
    v13[3] = &unk_1E77D2620;
    v13[4] = &v14;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__MCProfileConnection_Profiles__installedMDMProfileIdentifier__block_invoke_2;
    v12[3] = &unk_1E77D2648;
    v12[4] = &v14;
    v12[5] = &v20;
    [v5 verifiedMDMProfileIdentifierWithCompletion:v12];

    if (v15[5])
    {
      v6 = qword_1ED4ADE28;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v15[5] MCVerboseDescription];
        *buf = 138543362;
        v27 = v7;
        _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "MDM profile installation check failed with error: %{public}@", buf, 0xCu);
      }

      v8 = v21[5];
      if (!v8)
      {
        v8 = v3;
      }
    }

    else
    {
      v8 = v21[5];
    }

    v9 = v8;
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __62__MCProfileConnection_Profiles__installedMDMProfileIdentifier__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)unverifiedInstalledMDMProfileIdentifier
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MDMFilePath();
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AD4E8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)installedProfileIdentifiers
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCManifest sharedManifest];
  v3 = [v2 allInstalledProfileIdentifiers];

  return v3;
}

- (id)uninstalledProfileIdentifiersForDevice:(unint64_t)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCHoldingTankManifest sharedManifest];
  v5 = [v4 uninstalledProfileIdentifiersForDevice:a3];

  return v5;
}

- (id)installedProfileIdentifiersInstalledBy:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v17 = objc_opt_new();
  [(MCProfileConnection *)self installedProfileIdentifiers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = +[MCManifest sharedManifest];
        v11 = [v10 installedProfileWithIdentifier:v8];

        if (v11)
        {
          v12 = [v11 installOptions];
          v13 = [v12 objectForKey:@"installedBy"];

          if (v13 && [v13 isEqualToString:v18])
          {
            [v17 addObject:v8];
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = [v17 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)installedProfilesInstalledBy:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v18 = objc_opt_new();
  [(MCProfileConnection *)self installedProfileIdentifiers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = +[MCManifest sharedManifest];
        v12 = [v11 installedProfileWithIdentifier:v9];

        if (v12)
        {
          v13 = [v12 installOptions];
          v14 = [v13 objectForKey:@"installedBy"];

          if (v14 && [v14 isEqualToString:v19])
          {
            [v18 addObject:v12];
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = [v18 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)installedConfigurationProfileInfoWithOutMDMProfileInfo:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self unverifiedInstalledMDMProfileIdentifier];
  v5 = [(MCProfileConnection *)self installedProfileIdentifiersWithFilterFlags:1];
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v30 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v7 = 0;
  if (v30)
  {
    v8 = *v33;
    v29 = *v33;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = +[MCManifest sharedManifest];
        v13 = [v12 installedProfileWithIdentifier:v10];

        if (v13)
        {
          v31 = v11;
          v14 = [[MCProfileInfo alloc] initWithProfile:v13];
          v15 = [v13 managingProfileIdentifier];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            [v13 installOptions];
            v18 = v7;
            v19 = v6;
            v21 = v20 = v4;
            v17 = [v21 objectForKey:@"managingProfileIdentifier"];

            v4 = v20;
            v6 = v19;
            v7 = v18;
            v8 = v29;
          }

          if ([v10 isEqualToString:v4])
          {
            v22 = v14;

            v7 = v22;
            v11 = v31;
          }

          else
          {
            v11 = v31;
            if (([v4 isEqualToString:v17] & 1) == 0)
            {
              [v28 addObject:v14];
            }
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v30 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v30);
  }

  if (a3)
  {
    v23 = v7;
    *a3 = v7;
  }

  v24 = [v28 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)installedProfileWithIdentifier:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedProfileWithIdentifier:v4];

  return v5;
}

- (id)installedSystemProfileWithIdentifier:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedSystemProfileWithIdentifier:v4];

  return v5;
}

- (id)installedUserProfileWithIdentifier:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedUserProfileWithIdentifier:v4];

  return v5;
}

- (BOOL)isProfileInstalledWithIdentifier:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v7 = [(MCProfileConnection *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_outError___block_invoke;
  v12[3] = &unk_1E77D2620;
  v12[4] = &v13;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_outError___block_invoke_7;
  v11[3] = &unk_1E77D2670;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 isProfileInstalledWithIdentifier:v6 completion:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __75__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_outError___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Cannot query if a profile is installed. Error: %{public}@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __75__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_outError___block_invoke_7(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (void)isProfileInstalledWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MCProfileConnection *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_completion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_completion___block_invoke_9;
  v12[3] = &unk_1E77D26C0;
  v13 = v9;
  v11 = v9;
  [v10 isProfileInstalledWithIdentifier:v7 completion:v12];
}

void __77__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Cannot query if a profile is installed. Error: %{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __77__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_completion___block_invoke_9(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)installedProfileDataWithIdentifier:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedProfileDataWithIdentifier:v4];

  return v5;
}

- (id)installedSystemProfileDataWithIdentifier:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedSystemProfileDataWithIdentifier:v4];

  return v5;
}

- (id)installedUserProfileDataWithIdentifier:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedUserProfileDataWithIdentifier:v4];

  return v5;
}

- (id)uninstalledProfileDataWithIdentifier:(id)a3 targetDevice:(unint64_t)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCHoldingTankManifest sharedManifest];
  v8 = [v7 uninstalledProfileDataWithIdentifier:v6 targetDevice:a4];

  return v8;
}

- (BOOL)isProfileWithIdentifier:(id)a3 managedByProfileWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MCDependencyReader sharedReader];
  v8 = [v7 dependentsOfParent:v5 inDomain:@"ManagingProfileToManagedProfile"];

  LOBYTE(v7) = [v8 containsObject:v6];
  return v7;
}

- (void)allProfilesOutMDMProfileInfo:(id *)a3 outConfigurationProfilesInfo:(id *)a4 outUninstalledProfilesInfo:(id *)a5 forDeviceType:(unint64_t)a6
{
  v33 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v11 = [(MCProfileConnection *)self installedConfigurationProfileInfoWithOutMDMProfileInfo:a3];
  if (a4)
  {
    v11 = v11;
    *a4 = v11;
  }

  if (a5)
  {
    v26 = v11;
    v27 = a5;
    v12 = +[MCHoldingTankManifest sharedManifest];
    v13 = [(MCProfileConnection *)self uninstalledProfileIdentifiersForDevice:a6];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        v19 = 0;
        do
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * v19);
          v21 = objc_autoreleasePoolPush();
          v22 = [v12 uninstalledProfileWithIdentifier:v20 targetDevice:a6];
          if (v22)
          {
            v23 = [[MCProfileInfo alloc] initWithProfile:v22];
            [v14 addObject:v23];
          }

          objc_autoreleasePoolPop(v21);
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    v24 = v14;
    *v27 = v14;

    v11 = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)popProfileDataFromHeadOfInstallationQueue
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  v3 = [(MCProfileConnection *)self xpcConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_29];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MCProfileConnection_Profiles__popProfileDataFromHeadOfInstallationQueue__block_invoke_11;
  v7[3] = &unk_1E77D26E8;
  v7[4] = &v8;
  [v4 popProfileDataFromHeadOfInstallationQueueWithCompletion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __74__MCProfileConnection_Profiles__popProfileDataFromHeadOfInstallationQueue__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Pop profile data error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __74__MCProfileConnection_Profiles__popProfileDataFromHeadOfInstallationQueue__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Pop profile data error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  v5 = [(MCProfileConnection *)self xpcConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__MCProfileConnection_Profiles__peekProfileDataFromPurgatoryForDeviceType___block_invoke_15;
  v9[3] = &unk_1E77D26E8;
  v9[4] = &v10;
  [v6 peekProfileDataFromPurgatoryForDeviceType:a3 withCompletion:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __75__MCProfileConnection_Profiles__peekProfileDataFromPurgatoryForDeviceType___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Peek profile data from Purgatory error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __75__MCProfileConnection_Profiles__peekProfileDataFromPurgatoryForDeviceType___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Peek profile data from Purgatory error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_handleQueueProfileError:(id)a3 targetDevice:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[MCUserNotificationManager sharedManager];
  v7 = [v6 displayQueueProfileError:v5 targetDevice:a4];

  if ([v5 code] == 4036)
  {
    v8 = 0;
  }

  else
  {
    v9 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v5 MCVerboseDescription];
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Profile data failed to queue with error: %{public}@", &v14, 0xCu);
    }

    v8 = v7;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

void __120__MCProfileConnection_Profiles___queueDataForAcceptance_originalFileName_originatingBundleID_transitionToUI_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _handleQueueProfileError:a2 targetDevice:99];
  (*(v2 + 16))(v2, 0, v3);
}

void __120__MCProfileConnection_Profiles___queueDataForAcceptance_originalFileName_originatingBundleID_transitionToUI_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    v7 = [*(a1 + 32) _handleQueueProfileError:a4 targetDevice:a3];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __118__MCProfileConnection_Profiles___queueDataForAcceptance_originalFileName_originatingBundleID_transitionToUI_outError___block_invoke_2(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(a1[6] + 8) + 24) = a3;
}

- (void)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 forBundleID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self _queueDataForAcceptance:v13 originalFileName:v12 originatingBundleID:v11 transitionToUI:1 completion:v10];
}

- (id)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = [(MCProfileConnection *)self _queueDataForAcceptance:v9 originalFileName:v8 originatingBundleID:0 transitionToUI:1 outError:a5];

  return v10;
}

- (id)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 forBundleID:(id)a5 outError:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v13 = [(MCProfileConnection *)self _queueDataForAcceptance:v12 originalFileName:v11 originatingBundleID:v10 transitionToUI:1 outError:a6];

  return v13;
}

- (id)installProfileData:(id)a3 outError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = [(MCProfileConnection *)self installProfileData:v6 options:0 outError:a4];

  return v7;
}

- (id)installProfileData:(id)a3 options:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__MCProfileConnection_Profiles__installProfileData_options_outError___block_invoke;
  v16[3] = &unk_1E77D2620;
  v16[4] = &v17;
  v10 = MEMORY[0x1AC55F990](v16);
  v11 = [(MCProfileConnection *)self xpcConnection];
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MCProfileConnection_Profiles__installProfileData_options_outError___block_invoke_19;
  v15[3] = &unk_1E77D2788;
  v15[4] = &v17;
  v15[5] = &v23;
  [v12 installProfileData:v8 interactive:0 options:v9 completion:v15];

  if (a5)
  {
    *a5 = v18[5];
  }

  v13 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __69__MCProfileConnection_Profiles__installProfileData_options_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Install profile data connection error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __69__MCProfileConnection_Profiles__installProfileData_options_outError___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Install profile data error. Error: %{public}@", &v16, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)appleConnect_installMDMAssociatedProfileData:(id)a3 outError:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14 = [(MCProfileConnection *)self installedMDMProfileIdentifier];
  if (v14)
  {
    v15 = objc_opt_new();
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isInstalledByMDM"];
    [v15 setObject:v14 forKeyedSubscript:@"managingProfileIdentifier"];
    v16 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_INFO, "AppleConnect installing MDM-associated profile data with options: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__8;
    v35 = __Block_byref_object_dispose__8;
    v36 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__8;
    v30 = __Block_byref_object_dispose__8;
    v31 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __87__MCProfileConnection_Profiles__appleConnect_installMDMAssociatedProfileData_outError___block_invoke;
    v25[3] = &unk_1E77D2620;
    v25[4] = &v26;
    v17 = MEMORY[0x1AC55F990](v25);
    v18 = [(MCProfileConnection *)self xpcConnection];
    v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v17];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__MCProfileConnection_Profiles__appleConnect_installMDMAssociatedProfileData_outError___block_invoke_24;
    v24[3] = &unk_1E77D2788;
    v24[4] = &v26;
    v24[5] = &buf;
    [v19 appleConnect_installMDMAssociatedProfileData:v6 interactive:0 options:v15 completion:v24];

    if (a4)
    {
      *a4 = v27[5];
    }

    a4 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if (a4)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = MCErrorArray(@"ERROR_NO_ASSOCIATED_MDM_PROFILE", v7, v8, v9, v10, v11, v12, v13, 0);
    *a4 = [v20 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4046 descriptionArray:v21 errorType:@"MCFatalError"];

    a4 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return a4;
}

void __87__MCProfileConnection_Profiles__appleConnect_installMDMAssociatedProfileData_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "AppleConnect install profile data connection error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __87__MCProfileConnection_Profiles__appleConnect_installMDMAssociatedProfileData_outError___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "AppleConnect install profile data error. Error: %{public}@", &v16, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_26];

  [v8 removeProfileWithIdentifier:v6 installationType:a4 completion:&__block_literal_global_26];
}

void __78__MCProfileConnection_Profiles__removeProfileWithIdentifier_installationType___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Remove profile error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeProfileAsyncWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__MCProfileConnection_Profiles__removeProfileAsyncWithIdentifier_installationType_completion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v15 = v8;
  v10 = v8;
  v11 = MEMORY[0x1AC55F990](v14);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = [v12 remoteObjectProxyWithErrorHandler:v11];

  [v13 removeProfileWithIdentifier:v9 installationType:a4 completion:v11];
}

void __94__MCProfileConnection_Profiles__removeProfileAsyncWithIdentifier_installationType_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Remove profile async error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeProtectedProfileAsyncWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__MCProfileConnection_Profiles__removeProtectedProfileAsyncWithIdentifier_installationType_completion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v15 = v8;
  v10 = v8;
  v11 = MEMORY[0x1AC55F990](v14);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = [v12 remoteObjectProxyWithErrorHandler:v11];

  [v13 removeProtectedProfileWithIdentifier:v9 installationType:a4 completion:v11];
}

void __103__MCProfileConnection_Profiles__removeProtectedProfileAsyncWithIdentifier_installationType_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Remove protected profile async error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__MCProfileConnection_Profiles__removeProfileWithIdentifier_installationType_completion___block_invoke;
    v12[3] = &unk_1E77D2698;
    v13 = v9;
    v11 = MEMORY[0x1AC55F990](v12);
  }

  else
  {
    v11 = 0;
  }

  [(MCProfileConnection *)self removeProfileWithIdentifier:v8 installationType:a4 errorCompletion:v11];
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 errorCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__MCProfileConnection_Profiles__removeProfileWithIdentifier_installationType_errorCompletion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v15 = v8;
  v10 = v8;
  v11 = MEMORY[0x1AC55F990](v14);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = [v12 remoteObjectProxyWithErrorHandler:v11];

  [v13 removeProfileWithIdentifier:v9 installationType:a4 completion:v11];
}

void __94__MCProfileConnection_Profiles__removeProfileWithIdentifier_installationType_errorCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Remove profile error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__MCProfileConnection_Profiles__removeUninstalledProfileWithIdentifier_installationType_targetDeviceType_completion___block_invoke;
  v16[3] = &unk_1E77D2698;
  v17 = v10;
  v12 = v10;
  v13 = MEMORY[0x1AC55F990](v16);
  v14 = [(MCProfileConnection *)self xpcConnection];
  v15 = [v14 remoteObjectProxyWithErrorHandler:v13];

  [v15 removeUninstalledProfileWithIdentifier:v11 installationType:a4 targetDeviceType:a5 completion:v13];
}

void __117__MCProfileConnection_Profiles__removeUninstalledProfileWithIdentifier_installationType_targetDeviceType_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Remove uninstalled profile error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__MCProfileConnection_Profiles__removePostSetupAutoInstallSetAsideProfileWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];

  [v8 removePostSetupAutoInstallSetAsideProfileWithCompletion:v5];
}

void __89__MCProfileConnection_Profiles__removePostSetupAutoInstallSetAsideProfileWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC connection failed when removing set aside MDM profile. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)updateProfileWithIdentifier:(id)a3 outError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__MCProfileConnection_Profiles__updateProfileWithIdentifier_outError___block_invoke;
  v13[3] = &unk_1E77D2620;
  v13[4] = &v14;
  v7 = MEMORY[0x1AC55F990](v13);
  v8 = [(MCProfileConnection *)self xpcConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MCProfileConnection_Profiles__updateProfileWithIdentifier_outError___block_invoke_27;
  v12[3] = &unk_1E77D2788;
  v12[4] = &v14;
  v12[5] = &v20;
  [v9 updateProfileIdentifier:v6 interactive:0 completion:v12];

  if (a4)
  {
    *a4 = v15[5];
  }

  v10 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __70__MCProfileConnection_Profiles__updateProfileWithIdentifier_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Update profile, interactive error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __70__MCProfileConnection_Profiles__updateProfileWithIdentifier_outError___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Update profile, interactive error. Error: %{public}@", &v13, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

void __64__MCProfileConnection_Profiles___openSensitiveURLString_unlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Open sensitive URL error. Error: %{public}@", &v8, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)showProfileErrorUIWithProfileIdentifier:(id)a3 outError:(id *)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![v6 length])
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = MCErrorArray(@"ERROR_UIOP_NULL_IDENTIFIER", v7, v8, v9, v10, v11, v12, v13, 0);
    v30 = [v40 MCErrorWithDomain:@"MCUIOperationErrorDomain" code:27000 descriptionArray:v41 errorType:@"MCFatalError"];

    if (!v30)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  [(MCProfileConnection *)self installedProfilesWithFilterFlags:1];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = v53 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v50 + 1) + 8 * i) identifier];
        v20 = [v19 isEqualToString:v6];

        if (v20)
        {

          v31 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v29 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v31];

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@&profileID=%@", @"prefs:root=General&path=ManagedConfigurationList/ProfileError", v29, v50];
          if ([(MCProfileConnection *)self _openSensitiveURLString:v32 unlock:0])
          {
            v30 = 0;
          }

          else
          {
            v42 = MEMORY[0x1E696ABC0];
            v43 = MCErrorArray(@"ERROR_UIOP_CANNOT_DISPLAY_P_IDENTIFIER", v33, v34, v35, v36, v37, v38, v39, v6);
            v30 = [v42 MCErrorWithDomain:@"MCUIOperationErrorDomain" code:27001 descriptionArray:v43 errorType:@"MCFatalError"];
          }

          goto LABEL_17;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = MEMORY[0x1E696ABC0];
  v29 = MCErrorArray(@"ERROR_UIOP_IDENTIFIER_NOT_FOUND_P_IDENTIFIER", v22, v23, v24, v25, v26, v27, v28, v6);
  v30 = [v21 MCErrorWithDomain:@"MCUIOperationErrorDomain" code:27000 descriptionArray:v29 errorType:@"MCFatalError"];
LABEL_17:

  if (v30)
  {
LABEL_18:
    v44 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v45 = v44;
      v46 = [v30 MCVerboseDescription];
      *buf = 138543618;
      v55 = v6;
      v56 = 2114;
      v57 = v46;
      _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_ERROR, "Cannot display profile with identifier “%{public}@”. Error: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v47 = v30;
      *a4 = v30;
    }
  }

LABEL_22:

  v48 = *MEMORY[0x1E69E9840];
  return v30 == 0;
}

- (id)listInstalledProvisioningProfileUUIDsWithManagedOnly:(BOOL)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = 0;
  v14 = v4;
  if (v3)
  {
    v5 = +[MCDependencyReader sharedReader];
  }

  v8 = v5;
  MISEnumerateInstalledProvisioningProfiles();
  v6 = [v10[5] copy];

  _Block_object_dispose(&v9, 8);

  return v6;
}

BOOL __86__MCProfileConnection_Profiles__listInstalledProvisioningProfileUUIDsWithManagedOnly___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MISProvisioningProfileGetUUID();
  if (v3)
  {
    if (*(a1 + 48) != 1 || ([*(a1 + 32) dependentsOfParent:v3 inDomain:@"ProvisioningProfileToManagingProfile"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    }
  }

  else
  {
    v6 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Cannot get UUID of installed provisioning profile.", v11, 2u);
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  objc_autoreleasePoolPop(v2);
  return v3 != 0;
}

- (BOOL)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__MCProfileConnection_Profiles__installProvisioningProfileData_managingProfileIdentifier_outError___block_invoke;
  v15[3] = &unk_1E77D27D8;
  v15[4] = &v22;
  v15[5] = &v16;
  v10 = MEMORY[0x1AC55F990](v15);
  v11 = [(MCProfileConnection *)self xpcConnection];
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v10];
  [v12 installProvisioningProfileData:v8 managingProfileIdentifier:v9 completion:v10];

  if (a5)
  {
    *a5 = v17[5];
  }

  v13 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v13;
}

void __99__MCProfileConnection_Profiles__installProvisioningProfileData_managingProfileIdentifier_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Install provisioning profile error. Error: %{public}@", &v10, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__MCProfileConnection_Profiles__removeProvisioningProfileWithUUID_managingProfileIdentifier_outError___block_invoke;
  v16[3] = &unk_1E77D2620;
  v16[4] = &v17;
  v10 = MEMORY[0x1AC55F990](v16);
  v11 = [(MCProfileConnection *)self xpcConnection];
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__MCProfileConnection_Profiles__removeProvisioningProfileWithUUID_managingProfileIdentifier_outError___block_invoke_76;
  v15[3] = &unk_1E77D2800;
  v15[4] = &v23;
  v15[5] = &v17;
  [v12 removeProvisioningProfileWithUUID:v8 managingProfileIdentifier:v9 completion:v15];

  if (a5)
  {
    *a5 = v18[5];
  }

  v13 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __102__MCProfileConnection_Profiles__removeProvisioningProfileWithUUID_managingProfileIdentifier_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Remove provisioning profile error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __102__MCProfileConnection_Profiles__removeProvisioningProfileWithUUID_managingProfileIdentifier_outError___block_invoke_76(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Remove provisioning profile error. Error: %{public}@", &v12, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x1E69E9840];
}

- (id)verifiedTrustedCodeSigningIdentities
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  v3 = [(MCProfileConnection *)self xpcConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MCProfileConnection_Profiles__verifiedTrustedCodeSigningIdentities__block_invoke_81;
  v7[3] = &unk_1E77D2828;
  v7[4] = &v8;
  [v4 trustedCodeSigningIdentitiesWithCompletion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __69__MCProfileConnection_Profiles__verifiedTrustedCodeSigningIdentities__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles XPC failed to get trusted code signing identities with error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __69__MCProfileConnection_Profiles__verifiedTrustedCodeSigningIdentities__block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles failed to get trusted code signing identities with error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addTrustedCodeSigningIdentities:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [(MCProfileConnection *)self trustedCodeSigningIdentities];
  v8 = [v4 setWithArray:v6];

  [v8 unionSet:v5];
  v7 = [v8 allObjects];
  [(MCProfileConnection *)self _setTrustedCodeSigningIdentities:v7];
}

- (void)removeTrustedCodeSigningIdentities:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [(MCProfileConnection *)self trustedCodeSigningIdentities];
  v8 = [v4 setWithArray:v6];

  [v8 minusSet:v5];
  v7 = [v8 allObjects];
  [(MCProfileConnection *)self _setTrustedCodeSigningIdentities:v7];
}

- (BOOL)syncTrustedCodeSigningIdentitiesWithOutError:(id *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MCProfileConnection_Profiles__syncTrustedCodeSigningIdentitiesWithOutError___block_invoke;
  v10[3] = &unk_1E77D2620;
  v10[4] = &v11;
  v5 = MEMORY[0x1AC55F990](v10);
  v6 = [(MCProfileConnection *)self xpcConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__MCProfileConnection_Profiles__syncTrustedCodeSigningIdentitiesWithOutError___block_invoke_84;
  v9[3] = &unk_1E77D2620;
  v9[4] = &v11;
  [v7 syncTrustedCodeSigningIdentitiesWithCompletion:v9];

  if (a3)
  {
    *a3 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
  return a3 == 0;
}

void __78__MCProfileConnection_Profiles__syncTrustedCodeSigningIdentitiesWithOutError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles XPC failed to sync trusted code signing identities with error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __78__MCProfileConnection_Profiles__syncTrustedCodeSigningIdentitiesWithOutError___block_invoke_84(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles failed to sync trusted code signing identities with error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)provisiongProfileUUIDsForSignerIdentity:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__MCProfileConnection_Profiles__provisiongProfileUUIDsForSignerIdentity___block_invoke;
  v15[3] = &unk_1E77D2850;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x1AC55F990](v15);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MCProfileConnection_Profiles__provisiongProfileUUIDsForSignerIdentity___block_invoke_85;
  v12[3] = &unk_1E77D2878;
  v9 = v5;
  v13 = v9;
  v14 = &v17;
  [v8 provisiongProfileUUIDsForSignerIdentity:v9 completion:v12];

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __73__MCProfileConnection_Profiles__provisiongProfileUUIDsForSignerIdentity___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v3 MCVerboseDescription];
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles XPC failed to get provisioning profile UUIDs for signer identity '%{public}@' with error: %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __73__MCProfileConnection_Profiles__provisiongProfileUUIDsForSignerIdentity___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v6 MCVerboseDescription];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles failed to get provisioning profile UUIDs for signer identity '%{public}@' with error: %{public}@", &v14, 0x16u);
    }
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;

  v13 = *MEMORY[0x1E69E9840];
}

- (id)signerIdentityForBundleID:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__MCProfileConnection_Profiles__signerIdentityForBundleID___block_invoke;
  v15[3] = &unk_1E77D2850;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x1AC55F990](v15);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MCProfileConnection_Profiles__signerIdentityForBundleID___block_invoke_86;
  v12[3] = &unk_1E77D28A0;
  v9 = v5;
  v13 = v9;
  v14 = &v17;
  [v8 signerIdentityForBundleID:v9 completion:v12];

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __59__MCProfileConnection_Profiles__signerIdentityForBundleID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v3 MCVerboseDescription];
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles XPC failed to get signer identity for bundle ID '%{public}@' with error: %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __59__MCProfileConnection_Profiles__signerIdentityForBundleID___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v6 MCVerboseDescription];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "MCProfileConnection+Profiles failed to get signer identity for bundle ID '%{public}@' with error: %{public}@", &v14, 0x16u);
    }
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isProvisioningProfilesWithUUID:(id)a3 managedByProfileWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MCDependencyReader sharedReader];
  v8 = [v7 dependentsOfParent:v5 inDomain:@"ManagingProfileToProvisioningProfile"];

  LOBYTE(v7) = [v8 containsObject:v6];
  return v7;
}

- (BOOL)getIsBundleBlocked:(BOOL *)a3 bundlePath:(id)a4 outHash:(id *)a5 outHashType:(id *)a6 outError:(id *)a7
{
  v12 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__8;
  v36 = __Block_byref_object_dispose__8;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__MCProfileConnection_Profiles__getIsBundleBlocked_bundlePath_outHash_outHashType_outError___block_invoke;
  v19[3] = &unk_1E77D2620;
  v19[4] = &v20;
  v13 = MEMORY[0x1AC55F990](v19);
  v14 = [(MCProfileConnection *)self xpcConnection];
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__MCProfileConnection_Profiles__getIsBundleBlocked_bundlePath_outHash_outHashType_outError___block_invoke_87;
  v18[3] = &unk_1E77D28C8;
  v18[4] = &v38;
  v18[5] = &v32;
  v18[6] = &v26;
  v18[7] = &v20;
  [v15 isBundleBlocked:v12 completion:v18];

  if (a3)
  {
    *a3 = *(v39 + 24);
  }

  if (a5)
  {
    *a5 = v33[5];
  }

  if (a6)
  {
    *a6 = v27[5];
  }

  if (a7)
  {
    *a7 = v21[5];
  }

  v16 = v21[5] == 0;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v16;
}

void __92__MCProfileConnection_Profiles__getIsBundleBlocked_bundlePath_outHash_outHashType_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MCProfileConnection isBundleBlocked XPC error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __92__MCProfileConnection_Profiles__getIsBundleBlocked_bundlePath_outHash_outHashType_outError___block_invoke_87(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v11 MCVerboseDescription];
      v24 = 138543362;
      v25 = v14;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "MCProfileConnection isBundleBlocked error: %{public}@", &v24, 0xCu);
    }
  }

  *(*(a1[4] + 8) + 24) = a2;
  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v10;
  v20 = v10;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v11;

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)getAreBundlesBlocked:(id *)a3 bundlePaths:(id)a4 outError:(id *)a5
{
  v7 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__MCProfileConnection_Profiles__getAreBundlesBlocked_bundlePaths_outError___block_invoke;
  v14[3] = &unk_1E77D2620;
  v14[4] = &v15;
  v8 = MEMORY[0x1AC55F990](v14);
  v9 = [(MCProfileConnection *)self xpcConnection];
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__MCProfileConnection_Profiles__getAreBundlesBlocked_bundlePaths_outError___block_invoke_89;
  v13[3] = &unk_1E77D28F0;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 areBundlesBlocked:v7 completion:v13];

  if (a3)
  {
    *a3 = v22[5];
  }

  v11 = v16[5] == 0;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __75__MCProfileConnection_Profiles__getAreBundlesBlocked_bundlePaths_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MCProfileConnection areBundlesBlocked XPC error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __75__MCProfileConnection_Profiles__getAreBundlesBlocked_bundlePaths_outError___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "MCProfileConnection areBundlesBlocked error: %{public}@", &v16, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_detectProfiledCrashes
{
  v2 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_ERROR, "detectProfiledCrashes is no longer available", v3, 2u);
  }
}

- (void)installProfileData:(id)a3 interactionDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self installProfileData:v7 options:0 interactionDelegate:v6];
}

+ (id)profileDaemonConnectionErrorWithUnderlyingError:(id)a3
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v12 = MCErrorArray(@"ERROR_PROFILE_INSTALLATION_FAILED_TITLE", v5, v6, v7, v8, v9, v10, v11, 0);
  v13 = [v3 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4045 descriptionArray:v12 underlyingError:v4 errorType:@"MCFatalError"];

  return v13;
}

+ (id)profileInstallationErrorWithUnderlyingError:(id)a3
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v12 = MCErrorArray(@"ERROR_PROFILE_INSTALLATION_FAILED_TITLE", v5, v6, v7, v8, v9, v10, v11, 0);
  v13 = [v3 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:v12 underlyingError:v4 errorType:@"MCFatalError"];

  return v13;
}

- (void)installProfileData:(id)a3 options:(id)a4 interactionDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(MCProfileConnection *)self checkInIfNeeded];
  objc_storeStrong(&self->_originalProfileData, a3);
  objc_storeWeak(&self->_interactionDelegate, v11);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__MCProfileConnection_Profiles__installProfileData_options_interactionDelegate___block_invoke;
  v17[3] = &unk_1E77D2918;
  v17[4] = self;
  objc_copyWeak(&v18, &location);
  v12 = MEMORY[0x1AC55F990](v17);
  v13 = [(MCProfileConnection *)self xpcConnection];
  v14 = [v13 remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MCProfileConnection_Profiles__installProfileData_options_interactionDelegate___block_invoke_95;
  v15[3] = &unk_1E77D2940;
  v15[4] = self;
  objc_copyWeak(&v16, &location);
  [v14 installProfileData:v9 interactive:1 options:v10 completion:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __80__MCProfileConnection_Profiles__installProfileData_options_interactionDelegate___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Install profile data, interactive error. Error: %{public}@", &v11, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [MCProfileConnection profileDaemonConnectionErrorWithUnderlyingError:v3];
  [WeakRetained profileConnection:v8 didFinishInstallationWithIdentifier:0 error:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void __80__MCProfileConnection_Profiles__installProfileData_options_interactionDelegate___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Install profile data, interactive error. Error: %{public}@", &v14, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [MCProfileConnection profileInstallationErrorWithUnderlyingError:v6];
  [WeakRetained profileConnection:v11 didFinishInstallationWithIdentifier:0 error:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateProfileWithIdentifier:(id)a3 interactionDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  objc_storeWeak(&self->_interactionDelegate, v7);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__MCProfileConnection_Profiles__updateProfileWithIdentifier_interactionDelegate___block_invoke;
  v13[3] = &unk_1E77D2918;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v8 = MEMORY[0x1AC55F990](v13);
  v9 = [(MCProfileConnection *)self xpcConnection];
  v10 = [v9 remoteObjectProxyWithErrorHandler:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__MCProfileConnection_Profiles__updateProfileWithIdentifier_interactionDelegate___block_invoke_96;
  v11[3] = &unk_1E77D2940;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  [v10 updateProfileIdentifier:v6 interactive:v7 != 0 completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __81__MCProfileConnection_Profiles__updateProfileWithIdentifier_interactionDelegate___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Update profile, interactive error. Error: %{public}@", &v11, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [MCProfileConnection profileDaemonConnectionErrorWithUnderlyingError:v3];
  [WeakRetained profileConnection:v8 didFinishInstallationWithIdentifier:0 error:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void __81__MCProfileConnection_Profiles__updateProfileWithIdentifier_interactionDelegate___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Update profile, interactive error. Error: %{public}@", &v14, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [MCProfileConnection profileInstallationErrorWithUnderlyingError:v6];
  [WeakRetained profileConnection:v11 didFinishInstallationWithIdentifier:0 error:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isProfileUIInstallationEffectivelyAllowed
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowUIConfigurationProfileInstallation"];

  return v3 != 2;
}

- (BOOL)isProfileUIInstallationAllowed
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isProfileUIInstallationEffectivelyAllowed])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v4 = [v3 userMode] != 1;

  return v4;
}

- (BOOL)mustInstallProfileNonInteractively:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (-[MCProfileConnection isProfileUIInstallationEffectivelyAllowed](self, "isProfileUIInstallationEffectivelyAllowed") && ([v4 mustInstallNonInteractively] & 1) == 0)
  {
    v5 = MCIsEffectivelyInAppWhitelistMode();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)preflightUserInputResponses:(id)a3 forPayloadIndex:(unint64_t)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Profiles) preflightUserInputResponses:forPayloadIndex:];
  }

  userInputReplyBlock = self->userInputReplyBlock;
  if (userInputReplyBlock)
  {
    userInputReplyBlock[2](userInputReplyBlock, v6, 1, a4, 0);
    v8 = self->userInputReplyBlock;
    self->userInputReplyBlock = 0;
  }
}

- (void)cancelUserInputResponses
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Profiles) cancelUserInputResponses];
  }

  userInputReplyBlock = self->userInputReplyBlock;
  if (userInputReplyBlock)
  {
    (*(userInputReplyBlock + 2))(userInputReplyBlock, 0, 0, 0, 0);
    v4 = self->userInputReplyBlock;
    self->userInputReplyBlock = 0;
  }
}

- (void)submitUserInputResponses:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Profiles) submitUserInputResponses:];
  }

  userInputReplyBlock = self->userInputReplyBlock;
  if (userInputReplyBlock)
  {
    (*(userInputReplyBlock + 2))(userInputReplyBlock, v4, 0, 0, 0);
    v6 = self->userInputReplyBlock;
    self->userInputReplyBlock = 0;
  }
}

- (void)__checkForProfiledCrash
{
  [(MCProfileConnection *)self checkInIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  if (WeakRetained)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "profiled crash detected.", buf, 2u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = MCErrorArray(@"INSTALLATION_FAILED", v5, v6, v7, v8, v9, v10, v11, 0);
    v14 = [v12 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:v13 errorType:@"MCFatalError"];

    [(MCProfileConnection *)self doMCICDidFinishInstallationWithIdentifier:0 error:v14 completion:0];
  }
}

- (BOOL)isChaperoned
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isSupervised];

  return v3;
}

- (id)chaperoneOrganization
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [(MCProfileConnection *)self cloudConfigurationDetails];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999788]];

  return v4;
}

- (id)effectiveRestrictions
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 currentRestrictions];

  return v3;
}

- (id)effectiveRestrictionsForPairedDevice
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = objc_alloc_init(MEMORY[0x1E695DF20]);

  return v2;
}

- (int)BOOLRestrictionForFeature:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 restrictedBoolForFeature:v4];

  return v6;
}

- (id)valueRestrictionForFeature:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 valueForFeature:v4];

  return v6;
}

- (id)objectRestrictionForFeature:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 objectForFeature:v4];

  return v6;
}

void __241__MCProfileConnection_Restrictions__applyRestrictionDictionary_toSystem_overrideRestrictions_appsAndOptions_clientType_clientUUID_localizedClientDescription_localizedWarningMessage_outRestrictionChanged_outEffectiveSettingsChanged_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Apply restriction dict error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __241__MCProfileConnection_Restrictions__applyRestrictionDictionary_toSystem_overrideRestrictions_appsAndOptions_clientType_clientUUID_localizedClientDescription_localizedWarningMessage_outRestrictionChanged_outEffectiveSettingsChanged_outError___block_invoke_2(void *a1, char a2, char a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  v9 = a1[6];
  if (v9)
  {
    *v9 = a2;
  }

  v10 = a1[7];
  if (v10)
  {
    *v10 = a3;
  }

  if (v7)
  {
    v11 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v8 MCVerboseDescription];
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Apply restriction dict error. Error: %{public}@", &v17, 0xCu);
    }
  }

  *(*(a1[4] + 8) + 24) = 1;
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;

  v16 = *MEMORY[0x1E69E9840];
}

- (int)applyRestrictionDictionary:(id)a3 clientType:(id)a4 clientUUID:(id)a5 localizedClientDescription:(id)a6 localizedWarningMessage:(id)a7 complianceBlocking:(int)a8 displayImmediateAlert:(BOOL)a9 limitForUserEnrollment:(BOOL)a10 outRestrictionChanged:(BOOL *)a11 outEffectiveSettingsChanged:(BOOL *)a12 outError:(id *)a13
{
  v108 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v94 = a7;
  [(MCProfileConnection *)self checkInIfNeeded];
  v30 = MCLocalizedErrorFormatByDevice(@"ENCRYPTION_POLICY_CLIENT_FAILURE_TEXT", v23, v24, v25, v26, v27, v28, v29, v22);
  v31 = +[MCDeviceCapabilities currentDevice];
  v32 = [v31 validateCapabilitiesRequiredByRestrictions:v19 localizedIncompatibilityMessage:v30 outError:a13];

  if (v32)
  {
    v91 = a8;
    if (v19 && a10)
    {
      v33 = v20;
      v34 = qword_1ED4ADE28;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v105 = v19;
        _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEBUG, "Transmogrifying client restrictions from: %{public}@", buf, 0xCu);
      }

      v103 = 0;
      v35 = [(MCProfileConnection *)self _transmogrifyRestrictionDictionaryForUserEnrollment:v19 outError:&v103];
      v36 = v103;
      v37 = qword_1ED4ADE28;
      v38 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG);
      v93 = v35;
      if (!v35)
      {
        if (v38)
        {
          *buf = 138543362;
          v105 = v36;
          _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_DEBUG, "Rejecting client restrictions: %{public}@", buf, 0xCu);
        }

        v20 = v33;
        if (!a13)
        {
          v46 = 2;
          v47 = v94;
LABEL_48:

          goto LABEL_49;
        }

        v69 = v36;
        v70 = MEMORY[0x1E696ABC0];
        v49 = MCErrorArray(@"USER_ENROLLMENT_DISALLOWED_RESTRICTIONS_P_CLIENT", v39, v40, v41, v42, v43, v44, v45, v22);
        v71 = v70;
        v36 = v69;
        *a13 = [v71 MCErrorWithDomain:@"MCDeviceCapabilitiesErrorDomain" code:26002 descriptionArray:v49 underlyingError:v69 errorType:@"MCFatalError"];
        v46 = 2;
        v58 = v19;
        v47 = v94;
        goto LABEL_47;
      }

      if (v38)
      {
        *buf = 138543362;
        v105 = v35;
        _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_DEBUG, "Transmogrifying client restrictions to: %{public}@", buf, 0xCu);
      }

      v20 = v33;
    }

    else
    {
      v93 = v19;
    }

    v36 = +[MCRestrictionManager sharedManager];
    v48 = [(__CFString *)v36 systemClientRestrictions];
    v49 = [v48 objectForKey:v21];

    if (v49)
    {
      v50 = [v49 objectForKey:@"clientType"];
      v51 = [v50 isEqualToString:v20];

      if (v51)
      {
        v86 = v21;
        v88 = v36;
        v52 = [v49 objectForKey:@"clientRestrictions"];
        v53 = [(__CFString *)v93 MCMutableDeepCopy];
        v54 = +[MCHacks sharedHacks];
        [v54 _applyHeuristicsToRestrictions:v53 forProfile:0 ignoresUnrestrictableApps:0];

        v55 = v52;
        if ([v53 isEqualToDictionary:v52])
        {
          v56 = [v49 objectForKey:@"compliant"];
          v57 = [v56 BOOLValue];

          if (v57)
          {

            v46 = 0;
            v58 = v93;
            v47 = v94;
            v59 = v55;
            v21 = v86;
            v36 = v88;
LABEL_46:

            goto LABEL_47;
          }
        }

        v21 = v86;
        v36 = v88;
      }
    }

    v60 = self;
    v58 = v93;
    v47 = v94;
    if ([(MCProfileConnection *)v60 applyRestrictionDictionary:v93 clientType:v20 clientUUID:v21 localizedClientDescription:v22 localizedWarningMessage:v94 outRestrictionChanged:a11 outEffectiveSettingsChanged:a12 outError:a13])
    {
      v59 = +[MCPasscodeManager sharedManager];
      v61 = [v59 isDeviceLocked];
      if (v91)
      {
        if (v61)
        {
          v87 = v59;
          v89 = v36;
          v62 = dispatch_semaphore_create(0);
          out_token = 0;
          v63 = *MEMORY[0x1E69B1A70];
          v64 = dispatch_get_global_queue(0, 0);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __260__MCProfileConnection_Restrictions__applyRestrictionDictionary_clientType_clientUUID_localizedClientDescription_localizedWarningMessage_complianceBlocking_displayImmediateAlert_limitForUserEnrollment_outRestrictionChanged_outEffectiveSettingsChanged_outError___block_invoke;
          handler[3] = &unk_1E77D01F8;
          v65 = v62;
          v101 = v65;
          v84 = v63;
          v66 = notify_register_dispatch(v63, &out_token, v64, handler);

          if (v66)
          {
            v67 = qword_1ED4ADE28;
            v36 = v89;
            if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v105 = v84;
              v106 = 1024;
              v107 = v66;
              _os_log_impl(&dword_1A795B000, v67, OS_LOG_TYPE_ERROR, "Unable to register for message %{public}s: %d", buf, 0x12u);
            }

            v68 = v101;
LABEL_45:

            v46 = 3;
            v58 = v93;
            v47 = v94;
            v59 = v87;
            goto LABEL_46;
          }

          v59 = v87;
          v36 = v89;
          if ([v87 isDeviceLocked])
          {
            do
            {
              dispatch_semaphore_wait(v65, 0xFFFFFFFFFFFFFFFFLL);
            }

            while (([v87 isDeviceLocked] & 1) != 0);
          }

          notify_cancel(out_token);

          v58 = v93;
        }

        v72 = [v59 currentPasscodeCompliesWithPolicyFromRestrictions:v58 outError:0];
        if (v91 != 1)
        {
          if ((v72 & 1) == 0)
          {
            v87 = v59;
            v90 = v36;
            v92 = v49;
            v73 = dispatch_semaphore_create(0);
            out_token = 0;
            v74 = [@"com.apple.managedconfiguration.passcodechanged" cStringUsingEncoding:4];
            v75 = dispatch_get_global_queue(0, 0);
            v98[0] = MEMORY[0x1E69E9820];
            v98[1] = 3221225472;
            v98[2] = __260__MCProfileConnection_Restrictions__applyRestrictionDictionary_clientType_clientUUID_localizedClientDescription_localizedWarningMessage_complianceBlocking_displayImmediateAlert_limitForUserEnrollment_outRestrictionChanged_outEffectiveSettingsChanged_outError___block_invoke_13;
            v98[3] = &unk_1E77D01F8;
            v65 = v73;
            v99 = v65;
            v76 = notify_register_dispatch(v74, &out_token, v75, v98);

            if (v76)
            {
              v77 = qword_1ED4ADE28;
              v36 = v90;
              v49 = v92;
              if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v105 = @"com.apple.managedconfiguration.passcodechanged";
                v106 = 1024;
                v107 = v76;
                _os_log_impl(&dword_1A795B000, v77, OS_LOG_TYPE_ERROR, "Unable to register for message %{public}@: %d", buf, 0x12u);
              }

              v68 = v99;
              goto LABEL_45;
            }

            v97 = 0;
            v80 = [@"com.apple.managedconfiguration.restrictionchanged" cStringUsingEncoding:4];
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __260__MCProfileConnection_Restrictions__applyRestrictionDictionary_clientType_clientUUID_localizedClientDescription_localizedWarningMessage_complianceBlocking_displayImmediateAlert_limitForUserEnrollment_outRestrictionChanged_outEffectiveSettingsChanged_outError___block_invoke_14;
            v95[3] = &unk_1E77D01F8;
            v81 = v65;
            v96 = v81;
            LODWORD(v80) = notify_register_dispatch(v80, &v97, v75, v95);

            v85 = v80;
            if (v80)
            {
              v82 = qword_1ED4ADE28;
              v36 = v90;
              v49 = v92;
              v58 = v93;
              if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v105 = @"com.apple.managedconfiguration.restrictionchanged";
                v106 = 1024;
                v107 = v85;
                _os_log_impl(&dword_1A795B000, v82, OS_LOG_TYPE_ERROR, "Unable to register for message %{public}@: %d", buf, 0x12u);
              }

              v46 = 3;
              p_out_token = &out_token;
            }

            else
            {
              v58 = v93;
              v36 = v90;
              v49 = v92;
              if (([v87 currentPasscodeCompliesWithPolicyFromRestrictions:v93 outError:0] & 1) == 0)
              {
                do
                {
                  dispatch_semaphore_wait(v81, 0xFFFFFFFFFFFFFFFFLL);
                }

                while (![v87 currentPasscodeCompliesWithPolicyFromRestrictions:v93 outError:0]);
              }

              notify_cancel(out_token);
              v46 = 2;
              p_out_token = &v97;
            }

            v47 = v94;
            notify_cancel(*p_out_token);

            v59 = v87;
            if (v85)
            {
              goto LABEL_46;
            }
          }

          v46 = 0;
          goto LABEL_46;
        }
      }

      else
      {
        if (v61)
        {
          v46 = 4;
          goto LABEL_46;
        }

        v72 = [v59 currentPasscodeCompliesWithPolicyFromRestrictions:v93 outError:0];
      }

      v46 = v72 ^ 1;
      goto LABEL_46;
    }

    v46 = 3;
LABEL_47:

    v19 = v58;
    goto LABEL_48;
  }

  v46 = 2;
  v47 = v94;
LABEL_49:

  v78 = *MEMORY[0x1E69E9840];
  return v46;
}

- (id)allClientUUIDsForClientType:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 allClientUUIDsForClientType:v4];

  return v6;
}

- (id)clientRestrictionsForClientUUID:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 clientRestrictionsForClientUUID:v4];

  return v6;
}

- (id)userInfoForClientUUID:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 userInfoForClientUUID:v4];

  return v6;
}

- (void)setUserInfo:(id)a3 forClientUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (MCIsDaemonProcess == 1)
  {
    v8 = [NSClassFromString(&cfstr_Mcrestrictionm.isa) sharedManager];
    [v8 setUserInfo:v7 forClientUUID:v6 sender:@"profiled"];
  }

  else
  {
    v8 = [(MCProfileConnection *)self xpcConnection];
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30];
    [v9 setUserInfo:v7 forClientUUID:v6 completion:&__block_literal_global_30];

    v6 = v7;
    v7 = v9;
  }

  v10 = +[MCRestrictionManager sharedManager];
  [v10 invalidateRestrictions];
}

void __63__MCProfileConnection_Restrictions__setUserInfo_forClientUUID___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set user info error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)clearUserInfoForClientUUIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MCIsDaemonProcess;
  if (MCIsDaemonProcess == 1)
  {
    v5 = [NSClassFromString(&cfstr_Mcrestrictionm.isa) sharedManager];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      v10 = MEMORY[0x1E695E0F8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 setUserInfo:v10 forClientUUID:*(*(&v14 + 1) + 8 * i) sender:{@"profiled", v14}];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)removeOrphanedClientRestrictions
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
  [v3 removeOrphanedClientRestrictionsWithCompletion:&__block_literal_global_22];
}

void __69__MCProfileConnection_Restrictions__removeOrphanedClientRestrictions__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Remove orphaned client restrictions error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeOrphanedClientRestrictionsWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MCProfileConnection_Restrictions__removeOrphanedClientRestrictionsWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 removeOrphanedClientRestrictionsWithCompletion:v6];
}

void __84__MCProfileConnection_Restrictions__removeOrphanedClientRestrictionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Remove orphaned client restrictions error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)effectiveWhitelistedAppsAndOptions
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveWhitelistedAppsAndOptions];

  return v3;
}

+ (NSArray)features
{
  if (features_onceToken != -1)
  {
    +[MCProfileConnection(Settings) features];
  }

  v3 = features_features;

  return v3;
}

void __41__MCProfileConnection_Settings__features__block_invoke()
{
  v14 = objc_opt_new();
  v0 = +[MCRestrictionManager sharedManager];
  v1 = [v0 defaultRestrictions];

  v2 = [v1 objectForKeyedSubscript:@"restrictedBool"];
  v3 = [v2 allKeys];
  [v14 addObjectsFromArray:v3];

  v4 = [v1 objectForKeyedSubscript:@"restrictedValue"];
  v5 = [v4 allKeys];
  [v14 addObjectsFromArray:v5];

  v6 = [v1 objectForKeyedSubscript:@"intersection"];
  v7 = [v6 allKeys];
  [v14 addObjectsFromArray:v7];

  v8 = [v1 objectForKeyedSubscript:@"union"];
  v9 = [v8 allKeys];
  [v14 addObjectsFromArray:v9];

  v10 = [v1 objectForKeyedSubscript:@"assignedObject"];
  v11 = [v10 allKeys];
  [v14 addObjectsFromArray:v11];

  v12 = [v14 copy];
  v13 = features_features;
  features_features = v12;
}

void __140__MCProfileConnection_Settings__setParametersForSettingsByType_configurationUUID_toSystem_user_credentialSet_waitUntilCompleted_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (!os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v5 = v4;
    v6 = [v3 MCVerboseDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set parameters for settings error. Error: %{public}@", &v9, 0xCu);
  }

  else
  {
    v5 = +[MCRestrictionManager sharedManager];
    [v5 invalidateSettings];
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 waitUntilCompleted:(BOOL)a8 errorCompletionBlock:(id)a9
{
  v9 = a8;
  v32 = a5;
  v33 = a6;
  v46 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v34 = a4;
  v31 = a7;
  v14 = a9;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15 = [(MCProfileConnection *)self xpcConnection];
  v16 = v15;
  if (v9)
  {
    [v15 synchronousRemoteObjectProxyWithErrorHandler:v14];
  }

  else
  {
    [v15 remoteObjectProxyWithErrorHandler:v14];
  }
  v29 = ;
  v30 = v14;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    v35 = v17;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [v17 objectForKeyedSubscript:{*(*(&v40 + 1) + 8 * i), v29, v30}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v37;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v37 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [MCSignpostManager willSetFeature:*(*(&v36 + 1) + 8 * j)];
              }

              v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v25);
          }

          v17 = v35;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v19);
  }

  [v29 setParametersForSettingsByType:v17 configurationUUID:v34 toSystem:v32 user:v33 credentialSet:v31 completion:v30];
  v28 = *MEMORY[0x1E69E9840];
}

void __149__MCProfileConnection_Settings__setParametersForSettingsByType_configurationUUID_toSystem_user_passcode_credentialSet_waitUntilCompleted_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (!os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v5 = v4;
    v6 = [v3 MCVerboseDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set parameters for settings error. Error: %{public}@", &v9, 0xCu);
  }

  else
  {
    v5 = +[MCRestrictionManager sharedManager];
    [v5 invalidateSettings];
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 passcode:(id)a7 credentialSet:(id)a8 waitUntilCompleted:(BOOL)a9 errorCompletionBlock:(id)a10
{
  v33 = a5;
  v34 = a6;
  v47 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v35 = a4;
  v32 = a7;
  v31 = a8;
  v15 = a10;
  [(MCProfileConnection *)self checkInIfNeeded];
  v16 = [(MCProfileConnection *)self xpcConnection];
  v17 = v16;
  if (a9)
  {
    [v16 synchronousRemoteObjectProxyWithErrorHandler:v15];
  }

  else
  {
    [v16 remoteObjectProxyWithErrorHandler:v15];
  }
  v30 = ;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    v36 = v18;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v38;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v38 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [MCSignpostManager willSetFeature:*(*(&v37 + 1) + 8 * j)];
              }

              v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v26);
          }

          v18 = v36;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v20);
  }

  [v30 setParametersForSettingsByType:v18 configurationUUID:v35 toSystem:v33 user:v34 passcode:v32 credentialSet:v31 completion:v15];
  v29 = *MEMORY[0x1E69E9840];
}

- (void)setParameters:(id)a3 forBoolSetting:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12 = v7;
  v13 = @"restrictedBool";
  v11 = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [(MCProfileConnection *)self setParametersForSettingsByType:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setParameters:(id)a3 forValueSetting:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12 = v7;
  v13 = @"restrictedValue";
  v11 = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [(MCProfileConnection *)self setParametersForSettingsByType:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)a3 forSetting:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self setValue:v7 forSetting:v6 credentialSet:0];
}

- (void)setValue:(id)a3 forSetting:(id)a4 credentialSet:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  [(MCProfileConnection *)self checkInIfNeeded];
  v14 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 67109378;
    v27 = [v10 unsignedIntValue];
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Set value %u for settings: %{public}@", buf, 0x12u);
  }

  v24 = @"restrictedValue";
  v21 = v10;
  v22 = v11;
  v20 = @"value";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(MCProfileConnection *)self setParametersForSettingsByType:v18 configurationUUID:0 toSystem:1 user:0 credentialSet:v13 waitUntilCompleted:0 completion:v12];

  v19 = *MEMORY[0x1E69E9840];
}

void __69__MCProfileConnection_Settings__errorCheckedSetBoolValue_forSetting___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Set parameters for settings error. Error: %{public}@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v8 = +[MCRestrictionManager sharedManager];
    [v8 invalidateSettings];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __78__MCProfileConnection_Settings__setBoolValue_forSetting_errorCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (!os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v5 = v4;
    v6 = [v3 MCVerboseDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set parameters for settings error. Error: %{public}@", &v9, 0xCu);
  }

  else
  {
    v5 = +[MCRestrictionManager sharedManager];
    [v5 invalidateSettings];
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)a3 forSetting:(id)a4 passcode:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  [(MCProfileConnection *)self checkInIfNeeded];
  v14 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 67109378;
    v28 = [v10 unsignedIntValue];
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Set value %u for settings: %{public}@", buf, 0x12u);
  }

  v25 = @"restrictedValue";
  v22 = v10;
  v23 = v11;
  v21 = @"value";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  LOBYTE(v20) = 0;
  [(MCProfileConnection *)self setParametersForSettingsByType:v18 configurationUUID:0 toSystem:1 user:0 passcode:v13 credentialSet:0 waitUntilCompleted:v20 completion:v12];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)userSettingsForSystem
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 systemUserSettings];

  return v3;
}

- (id)userSettingsForCurrentUser
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 userUserSettings];

  return v3;
}

- (id)userSettingsForPairedDevice
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = objc_alloc_init(MEMORY[0x1E695DF20]);

  return v2;
}

- (id)parametersForBoolSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self userSettings];
  v6 = [v5 objectForKey:@"restrictedBool"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)parametersForValueSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self userSettings];
  v6 = [v5 objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)parametersForIntersectionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self userSettings];
  v6 = [v5 objectForKey:@"intersection"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)parametersForUnionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self userSettings];
  v6 = [v5 objectForKeyedSubscript:@"values"];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (int)defaultBoolValueForSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [MCRestrictionManager defaultBoolValueForSetting:v4];

  return self;
}

- (id)defaultValueForSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultValueForSetting:v4];

  return v5;
}

- (id)defaultValuesForIntersectionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultIntersectedValuesForSetting:v4];

  return v5;
}

- (id)defaultValuesForUnionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultUnionValuesForSetting:v4];

  return v5;
}

- (id)defaultParametersForBoolSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForBoolSetting:v4];

  return v5;
}

- (id)defaultParametersForValueSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForValueSetting:v4];

  return v5;
}

- (id)defaultParametersForIntersectionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForIntersectedValuesSetting:v4];

  return v5;
}

- (id)defaultParametersForUnionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForUnionValuesSetting:v4];

  return v5;
}

- (id)effectiveParametersForBoolSetting:(id)a3 configurationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = +[MCRestrictionManager sharedManager];
  v9 = [v8 effectiveParametersForBoolSetting:v7 configurationUUID:v6];

  return v9;
}

- (id)effectiveParametersForIntersectionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveParametersForIntersectedSetting:v4];

  return v6;
}

- (id)effectiveParametersForUnionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveParametersForUnionSetting:v4];

  return v6;
}

- (id)effectiveParametersForValueSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveParametersForValueSetting:v4];

  return v6;
}

- (int)effectiveBoolValueForSetting:(id)a3 outAsk:(BOOL *)a4
{
  v6 = a3;
  if (![(MCProfileConnection *)self needsCheckIn])
  {
    if ([v6 isEqualToString:@"allowCamera"])
    {
      v8 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"allowedCameraRestrictionBundleIDs"];
      if (v8)
      {
        v9 = [MEMORY[0x1E696AAE8] mainBundle];
        v10 = [v9 bundleIdentifier];

        if (v10 && ([v8 containsObject:v10] & 1) != 0)
        {
          v7 = 1;
LABEL_18:

          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = [(MCProfileConnection *)self effectiveParametersForBoolSetting:v6];
    v11 = [v10 objectForKeyedSubscript:@"value"];
    v12 = v11;
    if (v11)
    {
      if ([v11 BOOLValue])
      {
        if (a4)
        {
          v13 = [v10 objectForKeyedSubscript:@"ask"];
          *a4 = [v13 BOOLValue];
        }

        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (int)effectiveBoolValueForSetting:(id)a3 configurationUUID:(id)a4 outAsk:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(MCProfileConnection *)self effectiveParametersForBoolSetting:v8 configurationUUID:v9];
    v12 = [v11 objectForKeyedSubscript:@"value"];
    v13 = v12;
    if (v12)
    {
      if ([v12 BOOLValue])
      {
        if (a5)
        {
          v14 = [v11 objectForKeyedSubscript:@"ask"];
          *a5 = [v14 BOOLValue];
        }

        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)effectiveValueForSetting:(id)a3
{
  v4 = a3;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self effectiveParametersForValueSetting:v4];
    v5 = [v6 objectForKey:@"value"];
  }

  return v5;
}

- (id)effectiveValuesForIntersectionSetting:(id)a3
{
  v4 = a3;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self effectiveParametersForIntersectionSetting:v4];
    v5 = [v6 objectForKeyedSubscript:@"values"];
  }

  return v5;
}

- (id)effectiveValuesForUnionSetting:(id)a3
{
  v4 = a3;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self effectiveParametersForUnionSetting:v4];
    v5 = [v6 objectForKeyedSubscript:@"values"];
  }

  return v5;
}

- (int)effectiveBoolValueForWatchSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v9 valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [v9 valueForProperty:*MEMORY[0x1E69B35F8]];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10;
    v25 = __Block_byref_object_dispose__10;
    v26 = 0;
    v13 = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__MCProfileConnection_Settings__effectiveBoolValueForWatchSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__MCProfileConnection_Settings__effectiveBoolValueForWatchSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D2990;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveBoolValueForWatchSetting:v8 pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v32 = v8;
        v33 = 2114;
        v34 = v16;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective BOOL for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (a5)
      {
        *a5 = v22[5];
      }
    }

    else
    {
      v10 = *(v28 + 6);
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void __89__MCProfileConnection_Settings__effectiveBoolValueForWatchSetting_pairedDevice_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v7)
  {
    if ([v7 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

- (id)effectiveValueForWatchSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v9 valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [v9 valueForProperty:*MEMORY[0x1E69B35F8]];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__10;
    v31 = __Block_byref_object_dispose__10;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10;
    v25 = __Block_byref_object_dispose__10;
    v26 = 0;
    v13 = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__MCProfileConnection_Settings__effectiveValueForWatchSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__MCProfileConnection_Settings__effectiveValueForWatchSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D2990;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveValueForWatchSetting:v8 pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v34 = v8;
        v35 = 2114;
        v36 = v16;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective value for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (a5)
      {
        *a5 = v22[5];
      }
    }

    else
    {
      v10 = v28[5];
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

void __85__MCProfileConnection_Settings__effectiveValueForWatchSetting_pairedDevice_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)effectiveValuesForWatchIntersectionSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v9 valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [v9 valueForProperty:*MEMORY[0x1E69B35F8]];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__10;
    v31 = __Block_byref_object_dispose__10;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10;
    v25 = __Block_byref_object_dispose__10;
    v26 = 0;
    v13 = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__MCProfileConnection_Settings__effectiveValuesForWatchIntersectionSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__MCProfileConnection_Settings__effectiveValuesForWatchIntersectionSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D29B8;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveValuesForWatchIntersectionSetting:v8 pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v34 = v8;
        v35 = 2114;
        v36 = v16;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective intersection values for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (a5)
      {
        *a5 = v22[5];
      }
    }

    else
    {
      v10 = v28[5];
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

void __98__MCProfileConnection_Settings__effectiveValuesForWatchIntersectionSetting_pairedDevice_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)effectiveValuesForWatchUnionSetting:(id)a3 pairedDevice:(id)a4 outError:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v9 valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [v9 valueForProperty:*MEMORY[0x1E69B35F8]];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__10;
    v31 = __Block_byref_object_dispose__10;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10;
    v25 = __Block_byref_object_dispose__10;
    v26 = 0;
    v13 = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__MCProfileConnection_Settings__effectiveValuesForWatchUnionSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__MCProfileConnection_Settings__effectiveValuesForWatchUnionSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D29B8;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveValuesForWatchUnionSetting:v8 pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v34 = v8;
        v35 = 2114;
        v36 = v16;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective union values for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (a5)
      {
        *a5 = v22[5];
      }
    }

    else
    {
      v10 = v28[5];
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

void __91__MCProfileConnection_Settings__effectiveValuesForWatchUnionSetting_pairedDevice_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)requestEffectiveBoolValueForSetting:(id)a3 configurationUUID:(id)a4 promptOptions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __112__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_completion___block_invoke;
  v27[3] = &unk_1E77D2A08;
  v28 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = MEMORY[0x1AC55F990](v27);
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  v18 = [(MCProfileConnection *)self xpcConnection];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __112__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_completion___block_invoke_2;
  v25 = &unk_1E77D2698;
  v26 = v15;
  v19 = v15;
  v20 = [v18 remoteObjectProxyWithErrorHandler:&v22];
  [v20 showFeaturePromptForSetting:v14 configurationUUID:v13 promptOptions:v12 promptIdentifier:v17 completion:{v19, v22, v23, v24, v25}];

  return v17;
}

void __112__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Request effective restricted BOOL value error. Error: %{public}@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_completion___block_invoke_14;
    block[3] = &unk_1E77D29E0;
    v14 = v9;
    v15 = a2;
    v13 = v5;
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (int)requestEffectiveBoolValueForSetting:(id)a3 configurationUUID:(id)a4 promptOptions:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v13 = [(MCProfileConnection *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_outError___block_invoke;
  v19[3] = &unk_1E77D2620;
  v19[4] = &v20;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __110__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_outError___block_invoke_2;
  v18[3] = &unk_1E77D2A30;
  v18[4] = &v20;
  v18[5] = &v26;
  [v14 showFeaturePromptForSetting:v10 configurationUUID:v11 promptOptions:v12 promptIdentifier:0 completion:v18];

  if (a6)
  {
    v15 = v21[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = *(v27 + 6);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v16;
}

void __110__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_outError___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)cancelRequestEffectiveBoolValue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__MCProfileConnection_Settings__cancelRequestEffectiveBoolValue_completion___block_invoke;
  v18[3] = &unk_1E77D2698;
  v19 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x1AC55F990](v18);
  v10 = [(MCProfileConnection *)self xpcConnection];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76__MCProfileConnection_Settings__cancelRequestEffectiveBoolValue_completion___block_invoke_2;
  v16 = &unk_1E77D2698;
  v17 = v9;
  v11 = v9;
  v12 = [v10 remoteObjectProxyWithErrorHandler:&v13];
  [v12 cancelFeaturePromptWithIdentifier:v8 completion:{v11, v13, v14, v15, v16}];
}

void __76__MCProfileConnection_Settings__cancelRequestEffectiveBoolValue_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Cancel request effective restricted BOOL value error. Error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__MCProfileConnection_Settings__cancelRequestEffectiveBoolValue_completion___block_invoke_17;
    v10[3] = &unk_1E77D2A58;
    v12 = v7;
    v11 = v3;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isSettingLockedDownByRestrictions:v4];

  return v6;
}

- (BOOL)_areProfilesRestrictingSettings:(id)a3 outMDMName:(id *)a4 outExchangeName:(id *)a5 outExchangeCount:(int64_t *)a6 outProfileName:(id *)a7 outProfileCount:(int64_t *)a8
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v49 = v9;
  v50 = [(MCProfileConnection *)self _settingsLockedDownByRestrictions:v9];
  v10 = MEMORY[0x1E695DF20];
  v11 = MDMFilePath();
  v12 = [v10 dictionaryWithContentsOfFile:v11];

  if (v12)
  {
    v54 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69AD4E8]];
  }

  else
  {
    v54 = 0;
  }

  v13 = +[MCRestrictionManager sharedManager];
  v14 = [v13 profileIdentifiersRestrictingSettings:v50];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v52 = 0;
    v19 = *v60;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v59 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        if (v12 && [v21 isEqualToString:v54])
        {
          v23 = [MCManifest installedProfileWithIdentifier:v21];
          v24 = [v23 organization];

          if (v24)
          {
            v25 = [v23 organization];

            v52 = v25;
          }

          else
          {
            v27 = [v23 friendlyName];

            ++v17;
            v18 = v27;
          }
        }

        else
        {
          if (!v18)
          {
            v26 = [MCManifest installedProfileWithIdentifier:v21];
            v18 = [v26 friendlyName];
          }

          ++v17;
        }

        objc_autoreleasePoolPop(v22);
      }

      v16 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v52 = 0;
  }

  v28 = +[MCRestrictionManager sharedManager];
  v29 = [v28 exchangeUUIDsRestrictingSettings:v50];

  v30 = [MEMORY[0x1E6959A48] defaultStore];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v32)
  {
    v33 = v32;
    v51 = 0;
    v34 = 0;
    v35 = *v56;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = [v30 accountWithIdentifier:*(*(&v55 + 1) + 8 * j)];
        v38 = v37;
        if (!v34)
        {
          v34 = [v37 accountDescription];
        }
      }

      v51 += v33;
      v33 = [v31 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v33);
  }

  else
  {
    v51 = 0;
    v34 = 0;
  }

  if (a4)
  {
    v39 = v52;
    *a4 = v52;
  }

  if (a5)
  {
    v40 = v34;
    *a5 = v34;
  }

  if (a6)
  {
    *a6 = v51;
  }

  if (a7)
  {
    v41 = v18;
    *a7 = v18;
  }

  if (a8)
  {
    *a8 = v17;
  }

  v42 = *MEMORY[0x1E69E9840];
  return (v52 | v18 | v34) != 0;
}

- (id)localizedRestrictionSourceDescriptionForFeatures:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = [(MCProfileConnection *)self _areProfilesRestrictingSettings:v4 outMDMName:&v13 outExchangeName:&v12 outExchangeCount:&v15 outProfileName:&v11 outProfileCount:&v14];

  v6 = v13;
  v7 = v12;
  v8 = v11;
  v9 = 0;
  if (v5)
  {
    v9 = [(MCProfileConnection *)self _localizedRestrictionSourceDescriptionFromMDMName:v6 exchangeName:v7 exchangeCount:v15 profileName:v8 profileCount:v14];
  }

  return v9;
}

- (id)_settingsLockedDownByRestrictions:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(MCProfileConnection *)self isSettingLockedDownByRestrictions:v11, v15])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)areSettingsLockedDownByRestrictions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([(MCProfileConnection *)self isSettingLockedDownByRestrictions:*(*(&v13 + 1) + 8 * i), v13])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isBoolSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isBoolSettingLockedDownByRestrictions:v4];

  return v6;
}

- (BOOL)isValueSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isValueSettingLockedDownByRestrictions:v4];

  return v6;
}

- (BOOL)isIntersectionSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isIntersectionSettingLockedDownByRestrictions:v4];

  return v6;
}

- (BOOL)isUnionSettingLockedDownByRestrictions:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isUnionSettingLockedDownByRestrictions:v4];

  return v6;
}

- (void)removeBoolSetting:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Remove Bool settings: %{public}@", &v9, 0xCu);
  }

  v6 = [(MCProfileConnection *)self xpcConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_21];
  [v7 removeBoolSetting:v4 completion:&__block_literal_global_21];

  v8 = *MEMORY[0x1E69E9840];
}

void __51__MCProfileConnection_Settings__removeBoolSetting___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Remove BOOL setting error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeValueSetting:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Remove Value settings: %{public}@", &v9, 0xCu);
  }

  v6 = [(MCProfileConnection *)self xpcConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_23];
  [v7 removeValueSetting:v4 completion:&__block_literal_global_23];

  v8 = *MEMORY[0x1E69E9840];
}

void __52__MCProfileConnection_Settings__removeValueSetting___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Remove value setting error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __59__MCProfileConnection_Settings__resetAllSettingsToDefaults__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Reset all settings error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __105__MCProfileConnection_Settings__resetAllSettingsToDefaultsIsUserInitiated_waitUntilCompleted_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Reset all settings error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (int)userBoolValueForSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 BOOLSettingForFeature:v4];

  return v6;
}

- (id)userValueForSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 valueSettingForFeature:v4];

  return v6;
}

- (id)userValueForIntersectionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 intersectedValuesSettingForFeature:v4];

  return v6;
}

- (id)userValueForUnionSetting:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 unionValuesSettingForFeature:v4];

  return v6;
}

- (id)lockedDownRootCertificatesWithOutLocalizedSourceDescription:(id *)a3
{
  v62 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = +[MCManifest sharedManifest];
  v6 = [v5 allProfileIdentifiersInstalledNonInteractivelyWithFilterFlags:1];

  v38 = v6;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v8 = [(MCProfileConnection *)self installedProfileIdentifiersWithFilterFlags:2];
  [v7 addObjectsFromArray:v8];

  v39 = self;
  v9 = [(MCProfileConnection *)self installedMDMProfileIdentifier];
  if (v9)
  {
    [v7 addObject:v9];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = v7;
  v42 = [v10 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v42)
  {
    v47 = 0;
    v50 = 0;
    v30 = 0;
    v29 = v10;
    goto LABEL_35;
  }

  v45 = 0;
  v50 = 0;
  v47 = 0;
  v41 = *v57;
  v48 = v4;
  v40 = v10;
  do
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v57 != v41)
      {
        objc_enumerationMutation(v10);
      }

      v12 = *(*(&v56 + 1) + 8 * i);
      v13 = objc_autoreleasePoolPush();
      v14 = +[MCManifest sharedManifest];
      v46 = v12;
      v15 = [v14 installedProfileWithIdentifier:v12];

      if (v15)
      {
        v43 = v13;
        v44 = i;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v51 = v15;
        v16 = [v15 payloads];
        v17 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v53;
          v49 = v16;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v53 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v52 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
                if ([v22 isFullyTrustedRootCert])
                {
                  v23 = [v22 copyCertificate];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = SecCertificateCopyData(v23);
                    [v4 addObject:v25];
                    [v51 installOptions];
                    v27 = v26 = v9;
                    v28 = [v27 objectForKey:@"managingProfileIdentifier"];

                    v9 = v26;
                    if (v26 && (([v46 isEqualToString:v26] & 1) != 0 || v28 && (objc_msgSend(v28, "isEqualToString:", v26) & 1) != 0))
                    {
                      v45 = 1;
                    }

                    else
                    {
                      if (!v47)
                      {
                        v47 = [v51 friendlyName];
                      }

                      ++v50;
                    }

                    CFRelease(v24);

                    v4 = v48;
                    v16 = v49;
                  }
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v18);
        }

        v10 = v40;
        v13 = v43;
        i = v44;
        v15 = v51;
      }

      objc_autoreleasePoolPop(v13);
    }

    v42 = [v10 countByEnumeratingWithState:&v56 objects:v61 count:16];
  }

  while (v42);

  if (v45)
  {
    v29 = [(MCProfileConnection *)v39 installedProfileWithIdentifier:v9];
    v30 = [v29 friendlyName];
LABEL_35:

    goto LABEL_37;
  }

  v30 = 0;
LABEL_37:
  v31 = [(MCProfileConnection *)v39 _localizedCertificateSourceDescriptionFromMDMName:v30 exchangeName:0 exchangeCount:0 profileName:v47 profileCount:v50];
  v32 = v31;
  if (a3)
  {
    v33 = v31;
    *a3 = v32;
  }

  v34 = v4;

  v35 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)permittedAutoLockSeconds
{
  v2 = +[MCHacks sharedHacks];
  v3 = [v2 permittedAutoLockNumbers];

  return v3;
}

- (void)_setAllowedGrandfatheredRestrictionFeature:(id)a3 forRestrictionKey:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = MCSystemMetadataFilePath();
  v9 = [v7 fileExistsAtPath:v8];

  v10 = MEMORY[0x1E695DF90];
  if (v9)
  {
    v11 = MCSystemMetadataFilePath();
    v12 = [v10 dictionaryWithContentsOfFile:v11];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = [v12 objectForKeyedSubscript:@"AllowedGrandfatheredRestrictions"];
  v14 = [v13 mutableCopy];

  if ([v14 count])
  {
    v15 = [v14 objectForKeyedSubscript:v6];
    if ([v15 count])
    {
      v16 = [v15 mutableCopy];
      if (([v16 containsObject:v5] & 1) == 0)
      {
        [v16 addObject:v5];
        v17 = [v16 copy];

        v15 = v17;
      }
    }

    else
    {
      v23[0] = v5;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

      v15 = v18;
    }
  }

  else
  {
    v22 = v5;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  }

  [v14 setObject:v15 forKeyedSubscript:v6];

  v19 = [v14 copy];
  [v12 setObject:v19 forKeyedSubscript:@"AllowedGrandfatheredRestrictions"];

  v20 = MCSystemMetadataFilePath();
  [v12 MCWriteToBinaryFile:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)lockDevice
{
  [(MCProfileConnection *)self checkInIfNeeded];

  [(MCProfileConnection *)self lockDeviceImmediately:0];
}

- (BOOL)isPasscodeRequired
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 restrictedBoolForFeature:@"forcePIN"] == 1;

  return v3;
}

- (BOOL)isPasscodeRequiredByProfiles
{
  v19 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 systemProfileRestrictions];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKey:*(*(&v14 + 1) + 8 * i)];
        v10 = [MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:v9];

        if (v10 == 1)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isPasscodeRecoveryAllowed
{
  v3 = [(MCProfileConnection *)self isPasscodeRecoverySupported];
  if (v3)
  {
    LOBYTE(v3) = [(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowPasscodeRecovery"]!= 2;
  }

  return v3;
}

- (BOOL)isPasscodeRecoveryRestricted
{
  if (![(MCProfileConnection *)self isPasscodeRecoverySupported]|| [(MCProfileConnection *)self isSettingLockedDownByRestrictions:@"allowPasscodeRecovery"]|| ![(MCProfileConnection *)self isPasscodeModificationAllowed])
  {
    return 1;
  }

  return [(MCProfileConnection *)self isLockdownModeEnabled];
}

uint64_t __85__MCProfileConnection_Passcode__setPasscodeRecoveryAllowed_passcode_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)recoveryPasscodeAvailable
{
  v2 = [(MCProfileConnection *)self isPasscodeRecoveryAllowed];
  if (v2)
  {

    LOBYTE(v2) = MCKeybagMementoBlobExists();
  }

  return v2;
}

- (id)clearRecoveryPasscode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__11;
  v14 = __Block_byref_object_dispose__11;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MCProfileConnection_Passcode__clearRecoveryPasscode__block_invoke;
  v9[3] = &unk_1E77D2620;
  v9[4] = &v10;
  v3 = MEMORY[0x1AC55F990](v9);
  v4 = [(MCProfileConnection *)self xpcConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MCProfileConnection_Passcode__clearRecoveryPasscode__block_invoke_5;
  v8[3] = &unk_1E77D2620;
  v8[4] = &v10;
  [v5 clearRecoveryPasscodeWithCompletion:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __54__MCProfileConnection_Passcode__clearRecoveryPasscode__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Clear recovery passcode error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __54__MCProfileConnection_Passcode__clearRecoveryPasscode__block_invoke_5(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Clear recovery passcode error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clearRecoveryPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MCProfileConnection_Passcode__clearRecoveryPasscodeWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 clearRecoveryPasscodeWithCompletion:v6];
}

void __69__MCProfileConnection_Passcode__clearRecoveryPasscodeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Clear recovery passcode error. Error: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)a3 outError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__MCProfileConnection_Passcode__isPasscodeCompliantWithNamedPolicy_outError___block_invoke;
  v13[3] = &unk_1E77D2620;
  v13[4] = &v14;
  v7 = MEMORY[0x1AC55F990](v13);
  v8 = [(MCProfileConnection *)self xpcConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MCProfileConnection_Passcode__isPasscodeCompliantWithNamedPolicy_outError___block_invoke_6;
  v12[3] = &unk_1E77D2800;
  v12[4] = &v14;
  v12[5] = &v20;
  [v9 isPasscodeCompliantWithNamedPolicy:v6 completion:v12];

  if (a4)
  {
    *a4 = v15[5];
  }

  v10 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __77__MCProfileConnection_Passcode__isPasscodeCompliantWithNamedPolicy_outError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v7 = v5;
      v8 = [v6 MCVerboseDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Unable to determine passcode compliance. Error: %{public}@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __77__MCProfileConnection_Passcode__isPasscodeCompliantWithNamedPolicy_outError___block_invoke_6(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = v7;
      v10 = [v8 MCVerboseDescription];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Unable to determine passcode compliance. Error: %{public}@", &v12, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;

  v11 = *MEMORY[0x1E69E9840];
}

void __77__MCProfileConnection_Passcode__changePasscodeFrom_to_skipRecovery_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Change passcode error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __77__MCProfileConnection_Passcode__changePasscodeFrom_to_skipRecovery_outError___block_invoke_8(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Change passcode error. Error: %{public}@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;

  v10 = *MEMORY[0x1E69E9840];
}

void __111__MCProfileConnection_Passcode__changePasscodeWithOldPasscodeContext_newPasscodeContext_skipRecovery_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Change passcode with context error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __111__MCProfileConnection_Passcode__changePasscodeWithOldPasscodeContext_newPasscodeContext_skipRecovery_outError___block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Change passcode with context error. Error: %{public}@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;

  v10 = *MEMORY[0x1E69E9840];
}

void __93__MCProfileConnection_Passcode__changePasscodeWithRecoveryPasscode_to_skipRecovery_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Change passcode with recovery passcode error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __93__MCProfileConnection_Passcode__changePasscodeWithRecoveryPasscode_to_skipRecovery_outError___block_invoke_10(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Change passcode with recovery passcode error. Error: %{public}@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;

  v10 = *MEMORY[0x1E69E9840];
}

void __116__MCProfileConnection_Passcode__changePasscodeWithRecoveryPasscodeContext_newPasscodeContext_skipRecovery_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Change passcode with recovery passcode context error. Error: %{public}@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __116__MCProfileConnection_Passcode__changePasscodeWithRecoveryPasscodeContext_newPasscodeContext_skipRecovery_outError___block_invoke_11(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Change passcode with recovery passcode context error. Error: %{public}@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)clearPasscodeWithEscrowKeybagData:(id)a3 secret:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEBUG, "Attempting clearing passcode with escrow keybag", buf, 2u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__MCProfileConnection_Passcode__clearPasscodeWithEscrowKeybagData_secret_outError___block_invoke;
  v16[3] = &unk_1E77D27D8;
  v16[4] = &v23;
  v16[5] = buf;
  v11 = MEMORY[0x1AC55F990](v16);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v13 clearPasscodeWithEscrowKeybagData:v8 secret:v9 completion:v11];

  if (a5)
  {
    *a5 = *(v18 + 5);
  }

  v14 = *(v24 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v23, 8);

  return v14;
}

void __83__MCProfileConnection_Passcode__clearPasscodeWithEscrowKeybagData_secret_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Clear passcode error. Error: %{public}@", &v9, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)clearPasscodeWithEscrowKeybagData:(id)a3 secretContext:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEBUG, "Attempting clearing passcode with escrow keybag context", buf, 2u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__MCProfileConnection_Passcode__clearPasscodeWithEscrowKeybagData_secretContext_outError___block_invoke;
  v16[3] = &unk_1E77D27D8;
  v16[4] = &v23;
  v16[5] = buf;
  v11 = MEMORY[0x1AC55F990](v16);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v13 clearPasscodeWithEscrowKeybagData:v8 secretContext:v9 completion:v11];

  if (a5)
  {
    *a5 = *(v18 + 5);
  }

  v14 = *(v24 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v23, 8);

  return v14;
}

void __90__MCProfileConnection_Passcode__clearPasscodeWithEscrowKeybagData_secretContext_outError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 MCVerboseDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Clear passcode with escrow keybag context error. Error: %{public}@", &v9, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)unlockDeviceWithPasscode:(id)a3 outError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(a4) = [v7 unlockDeviceWithPasscode:v6 outError:a4];

  return a4;
}

- (BOOL)unlockDeviceWithPasscodeContext:(id)a3 outError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(a4) = [v7 unlockDeviceWithPasscodeContext:v6 outError:a4];

  return a4;
}

- (BOOL)passcode:(id)a3 meetsCurrentConstraintsOutError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(a4) = [v7 passcode:v6 compliesWithPolicyCheckHistory:1 outError:a4];

  return a4;
}

- (BOOL)passcodeContext:(id)a3 meetsCurrentConstraintsOutError:(id *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(a4) = [v7 passcodeContext:v6 compliesWithPolicyCheckHistory:1 outError:a4];

  return a4;
}

- (BOOL)currentPasscodeIsCompliantWithGlobalRestrictionsOutError:(id *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 currentRestrictions];

  v6 = +[MCPasscodeManager sharedManager];
  v10 = 0;
  [v6 currentPasscodeCompliesWithPolicyFromRestrictions:v5 outError:&v10];
  v7 = v10;

  if (a3 && v7)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v7 == 0;
}

- (BOOL)currentPasscodeIsCompliantWithProfileRestrictionsOutError:(id *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 combinedProfileRestrictions];

  v6 = +[MCPasscodeManager sharedManager];
  LOBYTE(a3) = [v6 currentPasscodeCompliesWithPolicyFromRestrictions:v5 outError:a3];

  return a3;
}

- (int)_getPasscodeComplianceWarningExpiryDate:(id)a3 lastLockDate:(id)a4 outLocalizedTitle:(id *)a5 outLocalizedMessage:(id *)a6
{
  v85 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (!+[MCRestrictionManager mayChangePasscode])
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v10 timeIntervalSinceNow];
  if (v12 >= 0.0)
  {
    v76 = a5;
    v77 = a6;
    v78 = v10;
    v24 = MEMORY[0x1E695DF20];
    v25 = MCNagUIMetaFilePath();
    v26 = [v24 dictionaryWithContentsOfFile:v25];

    if ([v26 count])
    {
      v27 = 0;
      while (1)
      {
        v28 = [MEMORY[0x1E695DF58] currentLocale];
        v29 = [v28 localeIdentifier];

        v30 = [v26 objectForKeyedSubscript:@"lastLocale"];
        v31 = [v26 objectForKeyedSubscript:@"message"];
        if (!v31 || (v32 = v31, v33 = [v29 isEqualToString:v30], v32, (v33 & 1) != 0))
        {

          v18 = 0;
          v38 = v26;
          goto LABEL_26;
        }

        v34 = qword_1ED4ADE28;
        v35 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          break;
        }

        if (v35)
        {
          *buf = 138543874;
          v80 = v30;
          v81 = 2114;
          v82 = v29;
          v83 = 1024;
          v84 = 1;
          _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Cached nag may be in an old locale (it's %{public}@, we're %{public}@), asking to regenerate it (%d more tries)", buf, 0x1Cu);
        }

        [(MCProfileConnection *)self recomputeUserComplianceWarningSynchronously];

        v36 = MEMORY[0x1E695DF20];
        v37 = MCNagUIMetaFilePath();
        v38 = [v36 dictionaryWithContentsOfFile:v37];

        v27 = 1;
        v26 = v38;
        if (![v38 count])
        {
          goto LABEL_22;
        }
      }

      if (v35)
      {
        *buf = 138543618;
        v80 = v30;
        v81 = 2114;
        v82 = v29;
        _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Cached nag may be in an old locale (it's %{public}@, we're %{public}@), continuing anyway", buf, 0x16u);
      }

      v18 = 0;
      v17 = 0;
      v19 = 0;
LABEL_59:

      a6 = v77;
      v10 = v78;
      a5 = v76;
      if (!v76)
      {
        goto LABEL_9;
      }

LABEL_8:
      v20 = v17;
      *a5 = v17;
      goto LABEL_9;
    }

    v38 = v26;
LABEL_22:
    v39 = [MEMORY[0x1E696AC08] defaultManager];
    v40 = MCBackupContainsPasscodeFilePath();
    v41 = [v39 fileExistsAtPath:v40];

    if (!v41)
    {
      v18 = 0;
      v17 = 0;
      v19 = 0;
      v26 = v38;
      goto LABEL_59;
    }

    if ([(MCProfileConnection *)self isPasscodeSet])
    {
      [(MCProfileConnection *)self notifyUserHasSeenComplianceMessageWithLastLockDate:v11];
      v18 = 0;
      v17 = 0;
      v19 = 0;
LABEL_58:
      v26 = v38;
      goto LABEL_59;
    }

    v56 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v56, OS_LOG_TYPE_DEFAULT, "Advising user to set passcode since they've restored a backup", buf, 2u);
    }

    v17 = MCLocalizedString(@"NAG_UI_PASSCODE_REMINDER_TITLE");
    v18 = MCLocalizedStringByDevice(@"NAG_UI_PASSCODE_REMINDER_MESSAGE");
    if (!v17)
    {
LABEL_26:
      v17 = MCLocalizedFormat(@"NAG_UI_COMPLIANCE_TITLE", v42, v43, v44, v45, v46, v47, v48, 0);
    }

    v49 = [v38 objectForKeyedSubscript:@"mandatory"];
    v50 = [v49 BOOLValue];

    if (!v50)
    {
      v55 = [v38 objectForKeyedSubscript:@"message"];
      v52 = v55;
      if (v55)
      {
        v52 = v55;

        v18 = v52;
      }

      else if (!v18)
      {
        v18 = MCLocalizedStringByDevice(@"NAG_UI_GENERIC_WARNING");
      }

LABEL_54:

      v74 = [v38 objectForKeyedSubscript:@"lastLockDate"];
      v75 = v74;
      if (v74)
      {
        v19 = 2 * ([v74 compare:v11] == -1);
      }

      else
      {
        v19 = 2;
      }

      goto LABEL_58;
    }

    v51 = [v38 objectForKeyedSubscript:@"expiryDate"];
    if (v51)
    {
      v52 = v51;
      [v51 timeIntervalSinceNow];
      if (v53 <= 3600.0)
      {
LABEL_43:
        [v52 timeIntervalSinceNow];
        v60 = v59;
        v61 = MCFormattedStringForTimeInterval(v59);
        v62 = [(MCProfileConnection *)self isPasscodeSet];
        if (v60 <= 60.0)
        {
          if (v62)
          {
            v72 = @"NAG_UI_MANDATORY_MESSAGE";
          }

          else
          {
            v72 = @"NAG_UI_MANDATORY_NOPASS_MESSAGE";
          }

          v73 = MCLocalizedFormatByDevice(v72, v63, v64, v65, v66, v67, v68, v69, v61);

          v19 = 1;
          v26 = v38;
          v18 = v73;
          goto LABEL_59;
        }

        if (v62)
        {
          v70 = @"NAG_UI_COUNTDOWN_MESSAGE_P_MINUTES";
        }

        else
        {
          v70 = @"NAG_UI_COUNTDOWN_NOPASS_MESSAGE_P_MINUTES";
        }

        v71 = MCLocalizedFormatByDevice(v70, v63, v64, v65, v66, v67, v68, v69, v61);

        v18 = v71;
        goto LABEL_54;
      }

      v54 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];

      v52 = v54;
    }

    else
    {
      v52 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
    }

    v57 = [(MCProfileConnection *)self xpcConnection];
    v58 = [v57 remoteObjectProxyWithErrorHandler:&__block_literal_global_33];
    [v58 notifyStartComplianceTimer:v52 completion:&__block_literal_global_33];

    goto LABEL_43;
  }

  v13 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x1E695DF00];
    v15 = v13;
    v16 = [v14 date];
    *buf = 138543618;
    v80 = v10;
    v81 = 2114;
    v82 = v16;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Current passcode expired at %{public}@ and current date is %{public}@. Requiring mandatory passcode change.", buf, 0x16u);
  }

  v17 = MCLocalizedString(@"NAG_UI_EXPIRY_TITLE");
  v18 = MCLocalizedStringByDevice(@"NAG_UI_EXPIRY_MESSAGE");
  v19 = 1;
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a6)
  {
    v21 = v18;
    *a6 = v18;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

void __124__MCProfileConnection_Passcode___getPasscodeComplianceWarningExpiryDate_lastLockDate_outLocalizedTitle_outLocalizedMessage___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Notify start compliance timer error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (int)getPasscodeComplianceWarningLastLockDate:(id)a3 outLocalizedTitle:(id *)a4 outLocalizedMessage:(id *)a5
{
  v8 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9 = [(MCProfileConnection *)self passcodeExpiryDate];
  LODWORD(a5) = [(MCProfileConnection *)self _getPasscodeComplianceWarningExpiryDate:v9 lastLockDate:v8 outLocalizedTitle:a4 outLocalizedMessage:a5];

  return a5;
}

- (void)getPasscodeComplianceWarningLastLockDate:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = +[MCPasscodeManager sharedManager];
  v9 = [v8 passcodeExpiryDate];

  v13 = 0;
  v14 = 0;
  v10 = [(MCProfileConnection *)self _getPasscodeComplianceWarningExpiryDate:v9 lastLockDate:v7 outLocalizedTitle:&v14 outLocalizedMessage:&v13];

  v11 = v14;
  v12 = v13;
  if (v6)
  {
    v6[2](v6, v10, v11, v12);
  }
}

- (void)recomputeUserComplianceWarningSynchronously
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_47_1];
  [v3 recomputeUserComplianceWarningWithCompletion:&__block_literal_global_47_1];
}

void __76__MCProfileConnection_Passcode__recomputeUserComplianceWarningSynchronously__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Recompute user compliance warning error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)recomputeUserComplianceWarning
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_49];
  [v3 recomputeUserComplianceWarningWithCompletion:&__block_literal_global_49];
}

void __63__MCProfileConnection_Passcode__recomputeUserComplianceWarning__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Recompute user compliance warning error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientsToRecomputeCompliance
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_51_0];
  [v3 recomputePerClientUserComplianceWithCompletion:&__block_literal_global_51_0];
}

void __67__MCProfileConnection_Passcode__notifyClientsToRecomputeCompliance__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Notify clients to recompute compliance error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyUserHasSeenComplianceMessageWithLastLockDate:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v4 sinceDate:1.0];

  v5 = [(MCProfileConnection *)self xpcConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_53_1];
  [v6 notifyHaveSeenComplianceMessageWithLastLockDate:v7 completion:&__block_literal_global_53_1];
}

void __84__MCProfileConnection_Passcode__notifyUserHasSeenComplianceMessageWithLastLockDate___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Notify user seen compliance error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)passcodeCreationDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 passcodeCreationDate];

  return v3;
}

- (id)passcodeExpiryDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 passcodeExpiryDate];

  return v3;
}

- (id)recoveryPasscodeExpiryDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 recoveryPasscodeExpiryDate];

  return v3;
}

- (int)unlockScreenType
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 currentUnlockScreenType];

  return v3;
}

- (int)unlockScreenTypeWithOutSimplePasscodeType:(int *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if (a3)
  {
    v4 = +[MCPasscodeManager sharedManager];
    v5 = [v4 currentUnlockSimplePasscodeType];

    *a3 = v5;
  }

  v6 = +[MCPasscodeManager sharedManager];
  v7 = [v6 currentUnlockScreenType];

  return v7;
}

- (int)unlockScreenTypeForUser:(id)a3 outSimplePasscodeType:(int *)a4
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (a4)
  {
    v7 = +[MCPasscodeManager sharedManager];
    v8 = [v7 unlockSimplePasscodeTypeForUser:v6];

    *a4 = v8;
  }

  v9 = +[MCPasscodeManager sharedManager];
  v10 = [v9 unlockScreenTypeForUser:v6];

  return v10;
}

- (int)unlockScreenTypeForSharedDataVolume:(id)a3 OutSimplePasscodeType:(int *)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = +[MCPasscodeManager sharedManager];
    v7 = [v6 unlockSimplePasscodeTypeForSharedDataVolume:v5];

    *a4 = v7;
  }

  v8 = +[MCPasscodeManager sharedManager];
  v9 = [v8 unlockScreenTypeForSharedDataVolume:v5];

  return v9;
}

- (int)recoveryPasscodeUnlockScreenType
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 recoveryPasscodeUnlockScreenType];

  return v3;
}

- (int)recoveryPasscodeUnlockScreenTypeWithOutSimplePasscodeType:(int *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if (a3)
  {
    v4 = +[MCPasscodeManager sharedManager];
    v5 = [v4 recoveryPasscodeUnlockSimplePasscodeType];

    *a3 = v5;
  }

  v6 = +[MCPasscodeManager sharedManager];
  v7 = [v6 recoveryPasscodeUnlockScreenType];

  return v7;
}

- (int)newPasscodeEntryScreenType
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  v3 = [v2 newPasscodeEntryScreenType];

  return v3;
}

- (int)newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCPasscodeManager sharedManager];
  LODWORD(a3) = [v4 newPasscodeEntryScreenTypeWithOutSimplePasscodeType:a3];

  return a3;
}

- (int)minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCPasscodeManager sharedManager];
  LODWORD(a3) = [v4 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:a3];

  return a3;
}

- (int)defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCPasscodeManager sharedManager];
  LODWORD(a3) = [v4 defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:a3];

  return a3;
}

- (id)localizedDescriptionOfCurrentPasscodeConstraints
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfPasscodePolicyFromRestrictions:v3];

  return v4;
}

- (id)localizedDescriptionOfDefaultNewPasscodeConstraints
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfDefaultNewPasscodePolicyFromRestrictions:v3];

  return v4;
}

- (id)managedWiFiNetworkNames
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v3 = [(MCProfileConnection *)self xpcConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_34];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MCProfileConnection_Misc__managedWiFiNetworkNames__block_invoke_1;
  v7[3] = &unk_1E77D2A80;
  v7[4] = &v8;
  [v4 managedWiFiNetworkNamesWithCompletion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __52__MCProfileConnection_Misc__managedWiFiNetworkNames__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Managed WLAN names error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __52__MCProfileConnection_Misc__managedWiFiNetworkNames__block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Managed WLAN names error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidateRestrictionCache
{
  v2 = +[MCRestrictionManager sharedManager];
  [v2 invalidateSettings];

  v3 = +[MCRestrictionManager sharedManager];
  [v3 invalidateRestrictions];
}

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = [(MCProfileConnection *)self xpcConnection];
  v5 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4_0];
  [v5 recomputeProfileRestrictionsWithCompletionBlock:v4];
}

void __77__MCProfileConnection_Misc__recomputeProfileRestrictionsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Remove Profile Restrictions remote object proxy error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)shutDownWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke;
  v27[3] = &unk_1E77D2698;
  v5 = v4;
  v28 = v5;
  v6 = MEMORY[0x1AC55F990](v27);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v7 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_5;
  v20[3] = &unk_1E77D2AA8;
  objc_copyWeak(&v23, &location);
  v22 = v25;
  v8 = v7;
  v21 = v8;
  v9 = MEMORY[0x1AC55F990](v20);
  xpcConnectionInvalidatedActionBlock = self->xpcConnectionInvalidatedActionBlock;
  self->xpcConnectionInvalidatedActionBlock = v9;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_2;
  v16[3] = &unk_1E77D2B20;
  v11 = v5;
  v18 = v11;
  v19 = v25;
  v16[4] = self;
  v12 = v8;
  v17 = v12;
  v13 = MEMORY[0x1AC55F990](v16);
  v14 = [(MCProfileConnection *)self xpcConnection];
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v6];
  [v15 shutDownWithCompletion:v13];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v25, 8);
}

void __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Shut down connection error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection with profiled was invalidated, stop waiting.", buf, 2u);
    }

    v4 = WeakRetained[8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_6;
    block[3] = &unk_1E77D2418;
    block[4] = *(a1 + 40);
    dispatch_async(v4, block);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Failed to shut down profiled with error: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v6 = *(*(a1 + 32) + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_8;
    block[3] = &unk_1E77D2AF8;
    v7 = *(a1 + 56);
    *&v8 = *(a1 + 40);
    *(&v8 + 1) = *(a1 + 32);
    v11 = v8;
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v7;
    v13 = v11;
    v14 = v9;
    dispatch_async_and_wait(v6, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_8(void *a1)
{
  if (*(*(a1[7] + 8) + 24))
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for profiled to shut down...", buf, 2u);
    }

    v5 = a1[4];
    v6 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v5, v6);
    v7 = *(a1[5] + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_9;
    block[3] = &unk_1E77D2AD0;
    v9 = *(a1 + 3);
    v8 = v9;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke_9(uint64_t a1)
{
  v2 = qword_1ED4ADE28;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEFAULT, "Profiled has exited.", buf, 2u);
    }

    v3 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_FAULT, "Timed out waiting for profiled to exit.", v16, 2u);
    }

    v4 = MEMORY[0x1E69997E0];
    v5 = DMCHangTracerDirectory();
    [v4 dumpStackshotToPath:v5 fileName:@"profiled_shutdown_hang.ips"];

    v6 = MEMORY[0x1E696ABC0];
    v14 = MCErrorArray(@"ERROR_FAILED_TO_SHUT_DOWN_PROFILED", v7, v8, v9, v10, v11, v12, v13, 0);
    v3 = [v6 MCErrorWithDomain:@"MCGeneralErrorDomain" code:65000 descriptionArray:v14 errorType:@"MCFatalError"];
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

- (id)managedSystemConfigurationServiceIDs
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = 0;
  v3 = [(MCProfileConnection *)self xpcConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_17];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MCProfileConnection_Misc__managedSystemConfigurationServiceIDs__block_invoke_18;
  v7[3] = &unk_1E77D2A80;
  v7[4] = &v8;
  [v4 managedSystemConfigurationServiceIDsWithCompletion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __65__MCProfileConnection_Misc__managedSystemConfigurationServiceIDs__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Managed system config service IDs error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __65__MCProfileConnection_Misc__managedSystemConfigurationServiceIDs__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Managed system config service IDs error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)doNotBackupAppIDs
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MEMORY[0x1E69AD440];

  return [v2 managedAppIDsWithFlags:4];
}

void __82__MCProfileConnection_Misc__migrateWithContext_passcodeWasSetInBackup_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Migrate with context error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __82__MCProfileConnection_Misc__migrateWithContext_passcodeWasSetInBackup_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 domain];
  if (![v3 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_5;
  }

  if ([v7 code] != 4097)
  {
    v4 = [v7 code];

    if (v4 == 4099)
    {
      goto LABEL_7;
    }

LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

LABEL_7:
  v5 = [*(a1 + 32) xpcConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:*(a1 + 40)];
  [v6 migrateWithContext:*(a1 + 48) passcodeWasSetInBackup:*(a1 + 52) completion:*(a1 + 40)];

LABEL_8:
}

void __74__MCProfileConnection_Misc__migrateCleanupMigratorWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: Error in handler: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __74__MCProfileConnection_Misc__migrateCleanupMigratorWithContext_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: Error in completion: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)associatedDomainsForManagedApps
{
  v28 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD440] attributesByAppID];
  v3 = v2;
  if (v2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v22 = 0;
      v6 = *v24;
      v19 = @"BundleID";
      v20 = v3;
      do
      {
        v7 = 0;
        v21 = v5;
        do
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * v7);
          v9 = [v3 objectForKeyedSubscript:{v8, v19}];
          v10 = [v9 objectForKeyedSubscript:@"AssociatedDomains"];
          v11 = [v9 objectForKeyedSubscript:@"AssociatedDomainsEnableDirectDownloads"];
          if (v10 | v11)
          {
            v12 = v6;
            v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v13 setObject:v8 forKeyedSubscript:v19];
            [v13 setObject:v10 forKeyedSubscript:@"AssociatedDomains"];
            [v13 setObject:v11 forKeyedSubscript:@"AssociatedDomainsEnableDirectDownloads"];
            v14 = v22;
            if (!v22)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v22 = v14;
            [v14 addObject:v13];

            v6 = v12;
            v5 = v21;
            v3 = v20;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v5);
    }

    else
    {
      v22 = 0;
    }

    v15 = v22;
    v16 = [v22 copy];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)isSafariPasswordAutoFillAllowedForURL:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCSafariPasswordAutoFillDomainsCache sharedCache];
  v6 = [v5 isSafariPasswordAutoFillAllowedForURL:v4];

  return v6;
}

- (void)validateAppBundleIDs:(id)a3 waitUntilCompleted:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MCProfileConnection_Misc__validateAppBundleIDs_waitUntilCompleted_completion___block_invoke;
  v15[3] = &unk_1E77D2698;
  v16 = v8;
  v10 = v8;
  v11 = MEMORY[0x1AC55F990](v15);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = v12;
  if (v5)
  {
    [v12 synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [v12 remoteObjectProxyWithErrorHandler:v11];
  }
  v14 = ;

  [v14 validateAppBundleIDs:v9 completion:v11];
}

void __80__MCProfileConnection_Misc__validateAppBundleIDs_waitUntilCompleted_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Validate app bundle IDs error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isWebContentFilteringInEffect
{
  v2 = +[MCRestrictionManager sharedManager];
  if ([v2 effectiveRestrictedBoolForSetting:@"forceWebContentFilterAuto"] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 effectiveIntersectedValuesForSetting:@"webContentFilterWhitelistedURLs"];
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v5 = [v2 effectiveUnionValuesForSetting:@"webContentFilterBlacklistedURLs"];
      if (v5)
      {
        v3 = 1;
      }

      else
      {
        v6 = +[MCDependencyReader sharedReader];
        v7 = [v6 parentsInDomain:@"MCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey"];
        v3 = [v7 count] != 0;
      }
    }
  }

  return v3;
}

- (BOOL)isRemovalRestrictedByPolicyForApp:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MEMORY[0x1E69AD440] attributesByAppID];
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:v4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:@"Removable"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isAppRatingLimitInEffect
{
  v2 = [(MCProfileConnection *)self effectiveValueForSetting:@"ratingApps"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue] < 1000;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isActivationLockAllowedWhileSupervised
{
  v2 = [MEMORY[0x1E69AD428] sharedConfiguration];
  v3 = [v2 details];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69AD500]];
    v5 = v4;
    v6 = *MEMORY[0x1E69AD4F8];
  }

  else
  {
    v4 = [MEMORY[0x1E69AD448] defaultMDMOptions];
    v5 = v4;
    if (!v4)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = *MEMORY[0x1E69AD4F8];
  }

  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

LABEL_6:
  return v8;
}

- (id)deniedICCIDsForRCS
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(MCProfileConnection *)self effectiveValuesForUnionSetting:@"deniedICCIDsForRCS"];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)deniedICCIDsForImessageFaceTime
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(MCProfileConnection *)self effectiveValuesForUnionSetting:@"deniedICCIDsForiMessageFaceTime"];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (BOOL)hasDiagnosticSubmissionAllowedBeenSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowDiagnosticSubmission"] != 0;

  return v3;
}

- (BOOL)hasAppAnalyticsAllowedBeenSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowAppAnalytics"] != 0;

  return v3;
}

- (BOOL)hasHealthDataSubmissionAllowedBeenSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowHealthDataSubmission"] != 0;

  return v3;
}

- (BOOL)hasHealthDataSubmission2BeenSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowHealthDataSubmission2"] != 0;

  return v3;
}

- (BOOL)hasWheelchairDataSubmissionAllowedBeenSet
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowWheelchairDataSubmission"] != 0;

  return v3;
}

- (BOOL)hasHandWashingDataSubmissionAllowedBeenSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowHandWashingDataSubmission"] != 0;

  return v3;
}

- (BOOL)hasSafetyDataSubmissionAllowedBeenSet
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 BOOLSettingForFeature:@"allowSafetyDataSubmission"] != 0;

  return v3;
}

void __54__MCProfileConnection_Misc__setAutoCorrectionAllowed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set auto-correction allowed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __56__MCProfileConnection_Misc__setSmartPunctuationAllowed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set smart punctuation allowed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __58__MCProfileConnection_Misc__setPredictiveKeyboardAllowed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set predictive keyboard allowed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __62__MCProfileConnection_Misc__setContinuousPathKeyboardAllowed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set predictive keyboard allowed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __57__MCProfileConnection_Misc__setKeyboardShortcutsAllowed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set keyboard shortcuts allowed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __50__MCProfileConnection_Misc__setSpellCheckAllowed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set spell-check allowed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __65__MCProfileConnection_Misc__setAutoCorrectionAllowed_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set auto-correction allowed error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = +[MCRestrictionManager sharedManager];
  [v7 invalidateSettings];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__MCProfileConnection_Misc__setSmartPunctuationAllowed_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set smart punctuation allowed error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = +[MCRestrictionManager sharedManager];
  [v7 invalidateSettings];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __69__MCProfileConnection_Misc__setPredictiveKeyboardAllowed_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set predictive keyboard allowed error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = +[MCRestrictionManager sharedManager];
  [v7 invalidateSettings];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __73__MCProfileConnection_Misc__setContinuousPathKeyboardAllowed_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set predictive keyboard allowed error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = +[MCRestrictionManager sharedManager];
  [v7 invalidateSettings];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68__MCProfileConnection_Misc__setKeyboardShortcutsAllowed_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set keyboard shortcuts allowed error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = +[MCRestrictionManager sharedManager];
  [v7 invalidateSettings];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __61__MCProfileConnection_Misc__setSpellCheckAllowed_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Set spell-check allowed error. Error: %{public}@", &v10, 0xCu);
    }
  }

  v7 = +[MCRestrictionManager sharedManager];
  [v7 invalidateSettings];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)enforcedSoftwareUpdateDelayInDays
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveValueForSetting:@"enforcedSoftwareUpdateDelay"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (int64_t)softwareUpdatePath
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MDMFilePath();
  v4 = [v2 MCDictionaryFromFile:v3];

  v5 = [v4 objectForKeyedSubscript:@"SoftwareUpdateSettings"];
  v6 = [v5 objectForKeyedSubscript:@"RecommendationCadence"];
  v7 = [v6 integerValue];

  return v7;
}

- (id)allowedMarketplaces
{
  if ([(MCProfileConnection *)self isMarketplaceAppInstallationAllowed])
  {
    v3 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"allowedMarketplaceApps"];
    if (v3)
    {
      v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  return v4;
}

- (id)deniedMarketplaces
{
  v3 = [(MCProfileConnection *)self allowedMarketplaces];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MCProfileConnection *)self effectiveValuesForUnionSetting:@"deniedMarketplaceApps"];
    if (v5)
    {
      v4 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)isMarketplaceAllowed:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileConnection *)self allowedMarketplaces];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 containsObject:v4];
  }

  else
  {
    v8 = [(MCProfileConnection *)self deniedMarketplaces];
    v7 = [v8 containsObject:v4] ^ 1;
  }

  return v7;
}

- (BOOL)anyMarketplaceAllowed
{
  v2 = [(MCProfileConnection *)self allowedMarketplaces];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)allMarketplacesAllowed
{
  v3 = [(MCProfileConnection *)self allowedMarketplaces];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MCProfileConnection *)self deniedMarketplaces];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 count] == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)isNotificationsModificationAllowedForBundleID:(id)a3
{
  v4 = [(MCProfileConnection *)self restrictionEnforcedNotificationSettingsForBundleID:a3];

  return [(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowNotificationsModification"]!= 2 && v4 == 0;
}

- (id)restrictionEnforcedNotificationSettingsForBundleID:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self restrictionEnforcedNotificationSettings];
  v6 = [(MCProfileConnection *)self _restrictionEnforcedNotificationSettingsForBundleID:v4 settingsArray:v5];

  return v6;
}

- (id)restrictionEnforcedNotificationSettings
{
  v37 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = MEMORY[0x1E695DEC8];
  v4 = MCUserNotificationSettingsFilePath();
  v5 = [v3 arrayWithContentsOfFile:v4];

  if (!v5)
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = MCSystemNotificationSettingsFilePath();
    v5 = [v6 arrayWithContentsOfFile:v7];
  }

  v8 = [(MCProfileConnection *)self _notificationRestrictedApps];
  if ([v8 count])
  {
    v9 = [v5 mutableCopy];
    v10 = v9;
    v26 = v5;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v12 = v11;

    v13 = MEMORY[0x1E696AE18];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __68__MCProfileConnection_Misc__restrictionEnforcedNotificationSettings__block_invoke;
    v32[3] = &unk_1E77D2B80;
    v25 = v8;
    v14 = v8;
    v33 = v14;
    v15 = [v13 predicateWithBlock:v32];
    [v12 filterUsingPredicate:v15];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      v19 = MEMORY[0x1E695E110];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v34[0] = @"BundleIdentifier";
          v34[1] = @"NotificationsEnabled";
          v35[0] = v21;
          v35[1] = v19;
          v34[2] = @"CriticalAlertEnabled";
          v35[2] = v19;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
          [v12 addObject:v22];
        }

        v17 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    v5 = [v12 copy];
    v8 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __68__MCProfileConnection_Misc__restrictionEnforcedNotificationSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"BundleIdentifier"];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)_restrictionEnforcedNotificationSettingsForBundleID:(id)a3 settingsArray:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"BundleIdentifier", v17}];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_sharedDeviceConfiguration
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MCSharedDeviceConfigurationFilePath();
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  return v4;
}

- (id)deviceLockScreenFootnote
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [(MCProfileConnection *)self _sharedDeviceConfiguration];
  v4 = [v3 objectForKeyedSubscript:@"LockScreenFootnote"];

  return v4;
}

- (id)deviceProvisionalEnrollmentFootnote
{
  if ([(MCProfileConnection *)self isProvisionallyEnrolled])
  {
    v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
    if ([v2 userMode] == 1)
    {
      MCLocalizedString(@"TESLA_PROVISIONAL_ENROLLMENT_EDU_TEXT");
    }

    else
    {
      MCLocalizedStringByDevice(@"TESLA_PROVISIONAL_ENROLLMENT_TEXT");
    }
    v3 = ;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)deviceAssetTag
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [(MCProfileConnection *)self _sharedDeviceConfiguration];
  v4 = [v3 objectForKeyedSubscript:@"AssetTagInformation"];

  return v4;
}

- (double)userSessionTimeout
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MEMORY[0x1E6999800];

  [v2 userSessionTimeout];
  return result;
}

- (double)temporarySessionTimeout
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MEMORY[0x1E6999800];

  [v2 temporarySessionTimeout];
  return result;
}

- (BOOL)isTemporarySessionOnlyModeEnabled
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MEMORY[0x1E6999800];

  return [v2 temporarySessionOnly];
}

- (BOOL)communicationServiceRulesExistForBundleID:(id)a3 forCommunicationServiceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [v7 isEqualToString:@"AudioCall"];

  if (self)
  {
    v8 = +[MCRestrictionManager sharedManager];
    v9 = [v8 effectiveUnionValuesForSetting:@"audioCallDefaultHandlerAppBundleIDs"];

    v10 = [v9 containsObject:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  if (v6 && v7)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__12;
    v17 = __Block_byref_object_dispose__12;
    v18 = 0;
    v9 = [(MCProfileConnection *)self publicXPCConnection];
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_61];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__MCProfileConnection_Misc__defaultAppBundleIDForCommunicationServiceType_forAccountWithIdentifier___block_invoke_62;
    v12[3] = &unk_1E77D2BA8;
    v12[4] = &v13;
    [v10 defaultAppBundleIDForCommunicationServiceType:v6 forAccountWithIdentifier:v7 completion:v12];

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return v8;
}

void __100__MCProfileConnection_Misc__defaultAppBundleIDForCommunicationServiceType_forAccountWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Default app bundle identifier for comm service type error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __100__MCProfileConnection_Misc__defaultAppBundleIDForCommunicationServiceType_forAccountWithIdentifier___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Default app bundle identifier for comm service type error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCloudSyncAllowed:(id)a3
{
  v4 = a3;
  if ([(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowCloudDocumentSync"]== 2)
  {
    v5 = 0;
  }

  else if ([(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowManagedAppsCloudSync"]== 2)
  {
    v6 = [MEMORY[0x1E69AD440] attributesByAppID];
    v7 = [v6 allKeys];
    v8 = [v7 containsObject:v4];

    v5 = v8 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (id)activationLockBypassKey
{
  v8 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [(MCProfileConnection *)self fetchActivationLockBypassKeyWithError:0];
  v4 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 != 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEFAULT, "Requested activation lock bypass code, it exists: %d", v7, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)deleteActivationLockBypassKey
{
  [(MCProfileConnection *)self checkInIfNeeded];

  +[MCCrypto clearStoredActivationLockBypassCode];
}

- (id)activationLockBypassHash
{
  v7 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCCrypto storedActivationLockBypassCodeHash];
  v3 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2 != 0;
    _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEFAULT, "Requested activation lock bypass code hash, it exists: %d", v6, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

void __105__MCProfileConnection_Misc__waitForMigrationIncludingPostRestoreMigration_waitUntilCompleted_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Wait for migration including post restore error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setGracePeriod:(unint64_t)a3 passcode:(id)a4 completionBlock:(id)a5
{
  v12 = a5;
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithUnsignedInteger:a3];
  [(MCProfileConnection *)self setValue:v10 forSetting:@"maxGracePeriod" passcode:v9];

  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
    v11 = v12;
  }
}

- (unint64_t)gracePeriod
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveValueForSetting:@"maxGracePeriod"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)shouldDestroyOldKeybag
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [MEMORY[0x1E69AD428] sharedConfiguration];
  [v3 refreshDetailsFromDisk];

  v4 = [MEMORY[0x1E69AD428] sharedConfiguration];
  v5 = [v4 accessRights];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = MDMFilePath();
  v8 = [v6 fileExistsAtPath:v7 isDirectory:0];

  if (![(MCProfileConnection *)self isSupervised]|| (v8 & ((v5 & 4) != 0)) != 0)
  {
    return 1;
  }

  v10 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.managedconfiguration.notbackedup", @"mobile", *MEMORY[0x1E695E898]);
  v11 = CFPreferencesCopyValue(@"KeybagMigrationHasBeenClearedByHost", @"com.apple.managedconfiguration.notbackedup", @"mobile", v10);
  v12 = [v11 BOOLValue];

  return v12;
}

- (void)startMonitoringEnrollmentStateWithPersonaID:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = [(MCProfileConnection *)self publicXPCConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 monitorEnrollmentStateWithPersonaID:v4];
}

- (void)stopMonitoringEnrollmentState
{
  waitForEnrollmentCompletionBlock = self->waitForEnrollmentCompletionBlock;
  if (waitForEnrollmentCompletionBlock)
  {
    waitForEnrollmentCompletionBlock[2](waitForEnrollmentCompletionBlock, a2);
    v4 = self->waitForEnrollmentCompletionBlock;
    self->waitForEnrollmentCompletionBlock = 0;
  }
}

- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__MCProfileConnection_Misc__createMDMUnlockTokenIfNeededWithPasscode_completionBlock___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x1AC55F990](v12);
  v10 = [(MCProfileConnection *)self xpcConnection];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v11 createMDMUnlockTokenIfNeededWithPasscode:v7 completion:v9];
}

void __86__MCProfileConnection_Misc__createMDMUnlockTokenIfNeededWithPasscode_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Failed to create MDM unlock token. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__MCProfileConnection_Misc__createMDMUnlockTokenIfNeededWithPasscodeContext_completionBlock___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x1AC55F990](v12);
  v10 = [(MCProfileConnection *)self xpcConnection];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v11 createMDMUnlockTokenIfNeededWithPasscodeContext:v7 completion:v9];
}

void __93__MCProfileConnection_Misc__createMDMUnlockTokenIfNeededWithPasscodeContext_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Failed to create MDM unlock token with context. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (int64_t)allowedGameCenterPlayerTypes
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveValueForSetting:@"allowedGameCenterOtherPlayerTypes"];
  v4 = [v3 integerValue];

  v5 = 2;
  if (v4 < 2)
  {
    v5 = v4;
  }

  return v5 & ~(v5 >> 63);
}

- (id)managingOrganizationForFontAtURL:(id)a3
{
  v4 = a3;
  v5 = +[MCDependencyReader sharedReader];
  v6 = [v4 absoluteString];

  v7 = [v5 dependentsOfParent:v6 inDomain:@"MCDMFontURLToProfileIdentifierKey"];

  v8 = [v7 firstObject];
  if (v8)
  {
    v9 = [(MCProfileConnection *)self installedProfileWithIdentifier:v8];
    v10 = [v9 organization];

    if (v10)
    {
      v11 = [v9 organization];
    }

    else
    {
      v12 = [v9 managingProfileIdentifier];
      if (v12)
      {
        v13 = [(MCProfileConnection *)self installedProfileWithIdentifier:v12];
        v11 = [v13 organization];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)skipSetupKeys
{
  v2 = objc_opt_new();
  v3 = [v2 currentSkipKeys];
  v4 = [v3 allObjects];

  return v4;
}

- (BOOL)isMultiUserNewUserCreationAllowed
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  if (([v2 isSharedIPad] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69AD428], "sharedConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "managingProfileIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v6 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69AD428] sharedConfiguration];
    v6 = [v5 isUserEnrollment];
  }

  return v6;
}

- (BOOL)isAppleIntelligenceRestricted
{
  v26 = *MEMORY[0x1E69E9840];
  if (isAppleIntelligenceRestricted_onceToken != -1)
  {
    [MCProfileConnection(Misc) isAppleIntelligenceRestricted];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = isAppleIntelligenceRestricted_BOOLeans;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([(MCProfileConnection *)self effectiveBoolValueForSetting:*(*(&v20 + 1) + 8 * v7)]== 2)
      {
        goto LABEL_20;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = isAppleIntelligenceRestricted_intersections;
  v8 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_13:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:*(*(&v16 + 1) + 8 * v11), v16];

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

LABEL_20:
    v13 = 1;
    goto LABEL_21;
  }

LABEL_19:
  v13 = 0;
LABEL_21:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __58__MCProfileConnection_Misc__isAppleIntelligenceRestricted__block_invoke()
{
  v6[13] = *MEMORY[0x1E69E9840];
  v6[0] = @"allowExternalIntelligenceIntegrations";
  v6[1] = @"allowExternalIntelligenceIntegrationsSignIn";
  v6[2] = @"allowPersonalizedHandwritingResults";
  v6[3] = @"allowWritingTools";
  v6[4] = @"allowGenmoji";
  v6[5] = @"allowImagePlayground";
  v6[6] = @"allowImageWand";
  v6[7] = @"allowMailSummary";
  v6[8] = @"allowVisualIntelligenceSummary";
  v6[9] = @"allowMailSmartReplies";
  v6[10] = @"allowSafariSummary";
  v6[11] = @"allowNotesTranscription";
  v6[12] = @"allowNotesTranscriptionSummary";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:13];
  v1 = isAppleIntelligenceRestricted_BOOLeans;
  isAppleIntelligenceRestricted_BOOLeans = v0;

  v5 = @"allowedExternalIntelligenceWorkspaceIDs";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v3 = isAppleIntelligenceRestricted_intersections;
  isAppleIntelligenceRestricted_intersections = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __69__MCProfileConnection_Private__checkCarrierProfileForceInstallation___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Check carrier profile error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyDeviceUnlocked
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self publicXPCConnection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_3_1];
  [v3 notifyDeviceUnlockedWithCompletion:&__block_literal_global_3_1];
}

void __52__MCProfileConnection_Private__notifyDeviceUnlocked__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Notify device unlocked error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyDeviceUnlockedAndPasscodeRequired
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self publicXPCConnection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v3 notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:&__block_literal_global_5];
}

void __71__MCProfileConnection_Private__notifyDeviceUnlockedAndPasscodeRequired__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Notify device unlocked and passcode required error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeExpiredProfiles
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  [v3 removeExpiredProfilesWithCompletion:&__block_literal_global_7];
}

void __53__MCProfileConnection_Private__removeExpiredProfiles__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Remove expired profiles error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)rereadManagedAppAttributes
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_9_0];
  [v3 rereadManagedAppAttributesWithCompletion:&__block_literal_global_9_0];
}

void __58__MCProfileConnection_Private__rereadManagedAppAttributes__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Reread managed app attributes error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetPasscodeMetadataWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__MCProfileConnection_Private__resetPasscodeMetadataWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v5];
  [v8 resetPasscodeMetadataWithCompletion:v6];
}

void __68__MCProfileConnection_Private__resetPasscodeMetadataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Reset passcode metadata failed. Error: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)doMCICDidUpdateStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidUpdateStatus:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v10 profileConnection:self didUpdateStatus:v6];
  }

  if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)doMCICDidBeginInstallingNextProfileData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidBeginInstallingNextProfileData:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v6 && (v9 & 1) != 0)
  {
    v10 = [MCProfile profileWithData:v6 outError:0];
    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_interactionDelegate);
      [v11 profileConnection:self didBeginInstallingNextProfile:v10];
    }
  }

  if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)doMCICDidFinishInstallationWithIdentifier:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidFinishInstallationWithIdentifier:error:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v13 profileConnection:self didFinishInstallationWithIdentifier:v8 error:v9];

    objc_storeWeak(&self->_interactionDelegate, 0);
  }

  if (v10)
  {
    v10[2](v10, 0);
  }
}

- (void)doMCICDidRequestUserInput:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidRequestUserInput:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MEMORY[0x1AC55F990](v7);
    userInputReplyBlock = self->userInputReplyBlock;
    self->userInputReplyBlock = v10;

    v12 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v12 profileConnection:self didRequestUserInput:v6];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      while (1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [MEMORY[0x1E695DF20] dictionary];
        [v12 addObject:v17];

        if (!--v15)
        {
          v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, v12, 0, 0, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)doMCICDidRequestMAIDSignIn:(id)a3 personaID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidRequestMAIDSignIn:personaID:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = MEMORY[0x1AC55F990](v10);
    MAIDSignInReplyBlock = self->MAIDSignInReplyBlock;
    self->MAIDSignInReplyBlock = v13;

    v15 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v15 profileConnection:self didRequestMAIDSignIn:v8 personaID:v9];
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:&unk_1F1AA59E0 errorType:@"MCFatalError"];
    (*(v10 + 2))(v10, 0, v15, 0);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)doMCICDidRequestManagedRestoreWithManagedAppleID:(id)a3 personaID:(id)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = MEMORY[0x1AC55F990](v9);
    restoreReplyBlock = self->restoreReplyBlock;
    self->restoreReplyBlock = v12;

    v14 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v14 profileConnection:self didRequestManagedRestoreWithManagedAppleID:v15 personaID:v8];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v14 = [MEMORY[0x1E696ABC0] MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:&unk_1F1AA59F8 errorType:@"MCFatalError"];
    (*(v9 + 2))(v9, 0, v14, 0);
  }

LABEL_6:
}

- (void)doMCICDidRequestShowUserWarnings:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidRequestShowUserWarnings:completion:];
  }

  if (![v6 count])
  {

    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MEMORY[0x1AC55F990](v7);
    showWarningsReplyBlock = self->showWarningsReplyBlock;
    self->showWarningsReplyBlock = v10;

    v12 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v12 profileConnection:self didShowUserWarnings:v6];
  }

  else if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)doMCICDidFinishPreflightWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidFinishPreflightWithError:completion:];
  }

  v8 = MEMORY[0x1AC55F990](v7);
  userInputReplyBlock = self->userInputReplyBlock;
  self->userInputReplyBlock = v8;

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  [WeakRetained profileConnection:self didFinishPreflightWithError:v6];
}

- (void)doMCICWaitForEnrollmentToFinishWithCompletion:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICWaitForEnrollmentToFinishWithCompletion:];
  }

  v5 = MEMORY[0x1AC55F990](v4);
  waitForEnrollmentCompletionBlock = self->waitForEnrollmentCompletionBlock;
  self->waitForEnrollmentCompletionBlock = v5;
}

- (id)fetchActivationLockBypassKeyWithError:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v12 = 0;
  v4 = [MCCrypto storedActivationLockBypassCodeWithOutError:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Activation lock bypass key fetch error. Error: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v9 = v5;
      *a3 = v5;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_localizedSourceDescriptionForType:(int64_t)a3 MDMName:(id)a4 exchangeName:(id)a5 exchangeCount:(int64_t)a6 profileName:(id)a7 profileCount:(int64_t)a8
{
  v135 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  v17 = @"SETTINGS";
  if (!a3)
  {
    v17 = @"CERTIFICATES";
  }

  if (v13)
  {
    v18 = a6 < 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  if (v19 == 1 && a8 <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME", v17];
    goto LABEL_19;
  }

  v21 = v19 ^ 1;
  if (a8 == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_ONE_PROFILE", v17];
    v23 = LABEL_19:;
    MCLocalizedFormat(v23, v24, v25, v26, v27, v28, v29, v30, v13);
    v31 = LABEL_20:;
LABEL_21:

    goto LABEL_22;
  }

  if (a8 < 2)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_MULTIPLE_PROFILES", v17];
    v23 = LABEL_29:;
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:a8];
    MCLocalizedFormat(v23, v35, v36, v37, v38, v39, v40, v41, v13);
    v31 = LABEL_30:;

    goto LABEL_21;
  }

  if (v13)
  {
    v42 = a6 == 1;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;
  if (v42 && a8 <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_ONE_EXCHANGE", v17];
    goto LABEL_19;
  }

  if (v13)
  {
    v44 = a6 <= 1;
  }

  else
  {
    v44 = 1;
  }

  v45 = !v44;
  if (v45 == 1 && a8 <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_MULTIPLE_EXCHANGES", v17];
    v46 = LABEL_50:;
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    MCLocalizedFormat(v46, v48, v49, v50, v51, v52, v53, v54, v13);
    v31 = LABEL_51:;
LABEL_52:

    goto LABEL_22;
  }

  v55 = v43 ^ 1;
  if (a8 == 1)
  {
    v56 = v55;
  }

  else
  {
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_ONE_EXCHANGE_AND_ONE_PROFILE", v17];
    goto LABEL_19;
  }

  if (a8 < 2)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_ONE_EXCHANGE_AND_MULTIPLE_PROFILES", v17];
    goto LABEL_29;
  }

  v57 = v45 ^ 1;
  if (a8 == 1)
  {
    v58 = v57;
  }

  else
  {
    v58 = 1;
  }

  if ((v58 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_MULTIPLE_EXCHANGES_AND_ONE_PROFILE", v17];
    goto LABEL_50;
  }

  if (a8 < 2)
  {
    v57 = 1;
  }

  if ((v57 & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_MULTIPLE_EXCHANGES_AND_MULTIPLE_PROFILES", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    v59 = [MEMORY[0x1E696AD98] numberWithInteger:a8];
    MCLocalizedFormat(v46, v60, v61, v62, v63, v64, v65, v66, v13);
    v31 = LABEL_71:;

    goto LABEL_52;
  }

  if (v14)
  {
    v67 = a6 == 1;
  }

  else
  {
    v67 = 0;
  }

  v68 = v67;
  if (v67 && a8 <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME", v17];
    v23 = LABEL_86:;
    MCLocalizedFormat(v23, v69, v70, v71, v72, v73, v74, v75, v14);
    goto LABEL_20;
  }

  if (v14 && a6 == 2 && a8 <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_ONE_OTHER", v17];
    goto LABEL_86;
  }

  if (v14 && a6 >= 3 && a8 <= 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_MULTIPLE_OTHERS", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:a6 - 1];
    MCLocalizedFormat(v46, v76, v77, v78, v79, v80, v81, v82, v14);
    goto LABEL_51;
  }

  v83 = v68 ^ 1;
  if (a8 == 1)
  {
    v84 = v83;
  }

  else
  {
    v84 = 1;
  }

  if ((v84 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_ONE_PROFILE", v17];
    goto LABEL_86;
  }

  if (a8 < 2)
  {
    v83 = 1;
  }

  if ((v83 & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_MULTIPLE_PROFILES", v17];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:a8];
    MCLocalizedFormat(v23, v85, v86, v87, v88, v89, v90, v91, v14);
    goto LABEL_30;
  }

  if (a6 >= 2 && a8 == 1)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MULTIPLE_EXCHANGES_AND_ONE_PROFILE", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    MCLocalizedFormat(v46, v92, v93, v94, v95, v96, v97, v98, v47);
    goto LABEL_51;
  }

  if (a6 >= 2 && a8 >= 2)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MULTIPLE_EXCHANGES_AND_MULTIPLE_PROFILES", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    v59 = [MEMORY[0x1E696AD98] numberWithInteger:a8];
    MCLocalizedFormat(v46, v99, v100, v101, v102, v103, v104, v105, v47);
    goto LABEL_71;
  }

  if (v15 && a8 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_PROFILE_NAME", v17];
    v23 = LABEL_112:;
    MCLocalizedFormat(v23, v106, v107, v108, v109, v110, v111, v112, v16);
    goto LABEL_20;
  }

  if (v15 && a8 == 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_PROFILE_NAME_AND_ONE_OTHER", v17];
    goto LABEL_112;
  }

  if (v15 && a8 >= 3)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_PROFILE_NAME_AND_MULTIPLE_OTHERS", v17];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:a8 - 1];
    MCLocalizedFormat(v23, v113, v114, v115, v116, v117, v118, v119, v16);
    goto LABEL_30;
  }

  v120 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v121 = MEMORY[0x1E696AD98];
    v122 = v120;
    v123 = [v121 numberWithInteger:a6];
    v124 = [MEMORY[0x1E696AD98] numberWithInteger:a8];
    *buf = 138544386;
    v126 = v13;
    v127 = 2114;
    v128 = v14;
    v129 = 2114;
    v130 = v123;
    v131 = 2114;
    v132 = v16;
    v133 = 2114;
    v134 = v124;
    _os_log_impl(&dword_1A795B000, v122, OS_LOG_TYPE_ERROR, "Couldn't craft proper restriction info string for (%{public}@, %{public}@, %{public}@, %{public}@, %{public}@)", buf, 0x34u);
  }

  v31 = 0;
LABEL_22:

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)_disallowedRestrictionErrorForRestrictionKey:(id)a3
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"USER_ENROLLMENT_DISALLOWED_RESTRICTION_P_RESTRICTION", a2, a3, v3, v4, v5, v6, v7, a3);
  v10 = [v8 MCErrorWithDomain:@"MCDeviceCapabilitiesErrorDomain" code:26002 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)_transmogrifyRestrictionDictionaryForUserEnrollment:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__13;
  v33 = __Block_byref_object_dispose__13;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = [v6 MCMutableDeepCopy];
  v7 = +[MCRestrictionsPayload userEnrollmentAllowedKeysFilter];
  v8 = +[MCRestrictionManager sharedManager];
  v9 = [v8 defaultRestrictions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MCProfileConnection_Private___transmogrifyRestrictionDictionaryForUserEnrollment_outError___block_invoke;
  v15[3] = &unk_1E77D2BF8;
  v10 = v7;
  v16 = v10;
  v19 = &v35;
  v20 = &v23;
  v11 = v9;
  v21 = &v39;
  v22 = &v29;
  v17 = v11;
  v18 = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v15];
  if (*(v36 + 24) == 1)
  {
    [v24[5] MCSetBoolRestriction:@"allowSimple" value:0];
    [v24[5] MCSetValueRestriction:@"minLength" value:&unk_1F1AA5800];
  }

  if (!a4 || (v40[3] & 1) != 0)
  {
    if (!*(v40 + 24))
    {
      goto LABEL_6;
    }
  }

  else
  {
    *a4 = v30[5];
    if ((v40[3] & 1) == 0)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_9;
    }
  }

  v12 = v24[5];
LABEL_9:
  v13 = v12;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v13;
}

void __93__MCProfileConnection_Private___transmogrifyRestrictionDictionaryForUserEnrollment_outError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 objectForKeyedSubscript:v7];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MCProfileConnection_Private___transmogrifyRestrictionDictionaryForUserEnrollment_outError___block_invoke_2;
  v15[3] = &unk_1E77D2BD0;
  v16 = v10;
  v17 = v7;
  v20 = *(a1 + 56);
  v11 = *(a1 + 40);
  v21 = *(a1 + 72);
  v12 = *(a1 + 48);
  v18 = v11;
  v19 = v12;
  v13 = v7;
  v14 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];

  *a4 = *(*(*(a1 + 72) + 8) + 24) ^ 1;
}

void __93__MCProfileConnection_Private___transmogrifyRestrictionDictionaryForUserEnrollment_outError___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  if (([*(a1 + 32) containsObject:v19] & 1) == 0)
  {
    if ([*(a1 + 40) isEqualToString:@"restrictedValue"])
    {
      if (![v19 isEqualToString:@"minLength"])
      {
LABEL_8:
        v15 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 40)];
        [v15 setObject:0 forKeyedSubscript:v19];

        goto LABEL_12;
      }

LABEL_4:
      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_8;
    }

    if ([*(a1 + 40) isEqualToString:@"restrictedBool"])
    {
      v8 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
      v9 = [v8 objectForKeyedSubscript:v19];

      if (v9)
      {
        v10 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
        v11 = [v10 objectForKeyedSubscript:v19];
        v12 = [v11 objectForKeyedSubscript:@"preference"];
        v13 = [v12 BOOLValue];

        v14 = [v7 objectForKeyedSubscript:@"value"];
        LODWORD(v11) = [v14 BOOLValue];

        if (v13 != v11)
        {
          goto LABEL_8;
        }

        if (([v19 isEqualToString:@"forcePIN"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"allowSimple"))
        {
          goto LABEL_4;
        }
      }
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
    v16 = [*(a1 + 56) _disallowedRestrictionErrorForRestrictionKey:v19];
    v17 = *(*(a1 + 88) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
  }

LABEL_12:
}

- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v13 = [(MCProfileConnection *)self xpcConnection];
  v12 = [v13 remoteObjectProxyWithErrorHandler:v10];
  [v12 _debug_scheduleBackgroundTask:v11 interval:v10 tolerance:a4 completion:a5];
}

- (BOOL)checkApplicationIdentifierEntitlement
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v2)
  {
    v3 = v2;
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", &error);
    v5 = v4 != 0;
    if (!v4)
    {
      v6 = qword_1ED4ADE28;
      if (error)
      {
        if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v16 = error;
          v7 = "Failed to retrieve application-identifier entitlement with error: %{public}@";
          v8 = v6;
          v9 = OS_LOG_TYPE_ERROR;
          v10 = 12;
LABEL_11:
          _os_log_impl(&dword_1A795B000, v8, v9, v7, buf, v10);
        }
      }

      else if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v7 = "This process requires an application-identifier entitlement to communicate with profiled. This will cause a crash in the future.";
        v8 = v6;
        v9 = OS_LOG_TYPE_FAULT;
        v10 = 2;
        goto LABEL_11;
      }
    }

    CFRelease(v3);

    goto LABEL_13;
  }

  v11 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Failed to construct SecTask for client application-identifier entitlement check", buf, 2u);
  }

  v5 = 0;
LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setUserBookmarks:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
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
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) serializableDictionary];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_38];
  [v13 setUserBookmarks:v5 completion:&__block_literal_global_38];

  v14 = *MEMORY[0x1E69E9840];
}

void __57__MCProfileConnection_SafariBookmarks__setUserBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set user bookmarks error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)userBookmarks
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCBookmarkManager sharedManager];
  v3 = [v2 userBookmarks];

  return v3;
}

- (id)defaultUserBookmarks
{
  v41 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MCSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/WebContentAnalysis.framework"];

  v4 = [MEMORY[0x1E696AAE8] bundleWithPath:v3];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 languageCode];
  v7 = [@"com.apple.webcontentfilter.defaults." stringByAppendingString:v6];

  v8 = [v4 pathForResource:v7 ofType:@"plist"];
  if (v8)
  {
    v9 = v8;
LABEL_5:
    v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
    v13 = [v12 objectForKeyedSubscript:@"siteWhitelist"];
    if ([v13 count])
    {
      v30 = v12;
      v31 = v9;
      v32 = v5;
      v33 = v4;
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v29 = v13;
      obj = v13;
      v15 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            v20 = objc_alloc_init(MCBookmark);
            v21 = MEMORY[0x1E695DFF8];
            v22 = [v19 objectForKeyedSubscript:@"address"];
            v23 = [v21 URLWithString:v22];
            [(MCBookmark *)v20 setURL:v23];

            v24 = [v19 objectForKeyedSubscript:@"bookmarkPath"];
            [(MCBookmark *)v20 setPath:v24];

            v25 = [v19 objectForKeyedSubscript:@"pageTitle"];
            [(MCBookmark *)v20 setTitle:v25];

            [v14 addObject:v20];
          }

          v16 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v16);
      }

      v4 = v33;
      v5 = v32;
      v12 = v30;
      v9 = v31;
      v13 = v29;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_16;
  }

  v10 = [@"com.apple.webcontentfilter.defaults." stringByAppendingString:@"en"];

  v11 = [v4 pathForResource:v10 ofType:@"plist"];
  if (v11)
  {
    v9 = v11;
    v7 = v10;
    goto LABEL_5;
  }

  v28 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "Could not find English default bookmarks file", buf, 2u);
  }

  v14 = 0;
  v7 = v10;
LABEL_16:

  v26 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setWebContentFilterAutoPermittedURLStrings:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = [(MCProfileConnection *)self publicXPCConnection];
  v5 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30_1];
  [v5 setAllowedURLStrings:v4 completion:&__block_literal_global_30_1];
}

void __83__MCProfileConnection_SafariBookmarks__setWebContentFilterAutoPermittedURLStrings___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Set webcontentfilter autopermitted URLs error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setWebContentFilterUserBlacklistedURLStrings:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self setValues:v4 forUnionSetting:@"webContentFilterBlacklistedURLs"];
}

- (int)hostMayPairWithOptions:(id)a3 challenge:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_INFO, "Received pairing request.", buf, 2u);
  }

  v9 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEBUG, "Pairing options: %{public}@", buf, 0xCu);
  }

  v10 = [(MCProfileConnection *)self cloudConfigurationDetails];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69997B0]];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = qword_1ED4ADE28;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Rejecting pairing options because it's not a dictionary.", buf, 2u);
      }

      v6 = 0;
    }
  }

  v13 = [v6 objectForKeyedSubscript:@"SupervisorCertificate"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = qword_1ED4ADE28;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Rejecting supervisor certificate because it is not a data object.", buf, 2u);
      }

      v13 = 0;
    }
  }

  v15 = +[MCRestrictionManager sharedManager];
  v16 = [v15 effectiveRestrictedBoolForSetting:@"allowHostPairing"];
  if (v13)
  {
    if ([v11 containsObject:v13])
    {
      v17 = qword_1ED4ADE28;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_INFO, "Challenge requested for silent pairing.", buf, 2u);
      }

      v18 = 3;
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (!v7 || ![v11 count])
  {
LABEL_34:
    v25 = qword_1ED4ADE28;
    if (v16 == 2)
    {
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_ERROR, "Pairing is not allowed.", buf, 2u);
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_INFO, "Pairing is allowed pending user acceptance.", buf, 2u);
      }
    }

    goto LABEL_40;
  }

  v19 = [v6 objectForKeyedSubscript:@"ChallengeResponse"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Challenge response is invalid.";
LABEL_32:
      _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    }

LABEL_33:

    goto LABEL_34;
  }

  BasicX509 = SecPolicyCreateBasicX509();
  if (!BasicX509)
  {
    v23 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Could not create security policy.";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v21 = BasicX509;
  v40 = 0;
  *buf = 0;
  v38 = v19;
  if (SecCMSVerifyCopyDataAndAttributes())
  {
    v22 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_ERROR, "Could not extract the signing certificate from the response.", v39, 2u);
    }

    CFRelease(v21);
    v19 = v38;
    goto LABEL_33;
  }

  v37 = v40;
  if (![v7 isEqualToData:?])
  {
    v32 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      v33 = "Response data does not match challenge.";
LABEL_53:
      _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, v33, v39, 2u);
    }

LABEL_54:
    v36 = 0;
    v18 = 0;
    goto LABEL_55;
  }

  if (!*buf || SecTrustGetCertificateCount(*buf) < 1)
  {
    v32 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      v33 = "Could not determine challenge signer.";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v28 = [MCCrypto copyLeafCertificateFromTrust:*buf];
  v34 = SecCertificateCopyData(v28);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = [v11 containsObject:{v34, v34}];
  v30 = qword_1ED4ADE28;
  v36 = v29;
  if (v29)
  {
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
    {
      *v39 = 0;
      v31 = v30;
      v18 = 2;
      _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_INFO, "Pairing approved without prompting.", v39, 2u);
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "The signing certificate is not among the list of approved certificates.", v39, 2u);
    }

    v18 = 0;
  }

LABEL_55:
  if (*buf)
  {
    CFRelease(*buf);
  }

  CFRelease(v21);
  if ((v36 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_40:

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)lockdownDidReceiveActivationRecord:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = qword_1ED4ADE28;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_INFO, "Received activation record: %{public}@", &v10, 0xCu);
    }

    v7 = [(MCProfileConnection *)self xpcConnection];
    v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];
    [v8 storeActivationRecord:v4 completion:&__block_literal_global_41];
  }

  else if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Activation record configuration is not a dictionary. Ignoring.", &v10, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68__MCProfileConnection_Lockdown__lockdownDidReceiveActivationRecord___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Lockdown did receive activation record error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isHomeScreenLayoutApplied
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MCUserHomeScreenLayoutFilePath();
  if ([v2 fileExistsAtPath:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = MCSystemHomeScreenLayoutFilePath();
    v4 = [v2 fileExistsAtPath:v5];
  }

  return v4;
}

- (id)removedSystemAppBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 effectiveUnionValuesForSetting:@"removedSystemAppBundleIDs"];
    v2 = [v4 copy];
  }

  return v2;
}

- (id)restrictionEnforcedBlockedAppBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 restrictionEnforcedBlockedAppBundleIDsExcludingRemovedSystemApps:1];
    v2 = [v4 copy];
  }

  return v2;
}

- (id)parentalControlsBlockedAppBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 parentalControlsBlockedAppBundleIDs];
    v2 = [v4 copy];
  }

  return v2;
}

- (void)setParentalControlsBlockedAppBundleIDs:(id)a3
{
  if (a3)
  {
    v4 = [a3 allObjects];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(MCProfileConnection *)self setValues:v4 forUnionSetting:@"blockedAppBundleIDs"];
}

- (id)restrictionEnforcedWhitelistedAppBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 restrictionEnforcedWhitelistedAppBundleIDs];
    v2 = [v4 copy];
  }

  return v2;
}

- (BOOL)isInSingleAppMode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 isInSingleAppMode];

  return v3;
}

- (BOOL)isEffectivelyInAppAllowListMode
{
  [(MCProfileConnection *)self checkInIfNeeded];

  return MCIsEffectivelyInAppWhitelistMode();
}

- (BOOL)isPasscodeRequiredToAccessWhitelistedApps
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveUserSettings];
  v4 = [MCRestrictionManager isPasscodeRequiredToAccessWhitelistedAppsWithSettingsDictionary:v3];

  return v4;
}

- (BOOL)mayEnterPasscodeToAccessNonWhitelistedApps
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveUserSettings];
  v4 = [MCRestrictionManager mayEnterPasscodeToAccessNonWhitelistedAppsWithSettingsDictionary:v3];

  return v4;
}

- (BOOL)isSingleAppModeLogoutAllowed
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 isSingleAppModeLogoutAllowed];

  return v3;
}

- (id)parentalControlsWhitelistedAppBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[MCRestrictionManager sharedManager];
    v4 = [v3 parentalControlsWhitelistedAppBundleIDs];
    v2 = [v4 copy];
  }

  return v2;
}

- (void)setParentalControlsWhitelistedAppBundleIDs:(id)a3
{
  if (a3)
  {
    v4 = [a3 allObjects];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(MCProfileConnection *)self setValues:v4 forIntersectionSetting:@"appLockBundleIDs"];
}

- (BOOL)isParentalControlsAllowPasscodeAccessToNonWhitelistedAppsUIForcedByRestrictions
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:@"allowAccessWithoutPasscodeInAppLock"];

  return v3;
}

- (id)autonomousSingleAppModePermittedBundleIDs
{
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"autonomousSingleAppModePermittedAppIDs"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFA8] setWithArray:v4];
      v6 = [(MCProfileConnection *)self restrictedAppBundleIDs];
      v7 = [(MCProfileConnection *)self effectiveWhitelistedAppBundleIDs];
      if (v6)
      {
        [v5 minusSet:v6];
      }

      if (v7)
      {
        [v5 intersectSet:v7];
      }

      v3 = [v5 allObjects];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)storeCertificateData:(id)a3 forHostIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  if ([(MCProfileConnection *)self _checkRemoteProcessHasMDMEntitlement])
  {
    v7 = [(MCProfileConnection *)self xpcConnection];
    v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_47];
    [v8 storeCertificateData:v9 forIPCUIdentifier:v6 completion:&__block_literal_global_47];
  }

  else
  {
    v7 = [(MCProfileConnection *)self _lacksEntitlementError];
    __67__MCProfileConnection_MDM__storeCertificateData_forHostIdentifier___block_invoke(v7, v7);
  }
}

void __67__MCProfileConnection_MDM__storeCertificateData_forHostIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Store certificate data error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __176__MCProfileConnection_MDM__stageMDMEnrollmentInfoForPairingWatchWithProfileData_orServiceURL_anchorCertificates_supervised_declarationKeys_declarationConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error staging enrollment data: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__MCProfileConnection_MDM__unstageMDMEnrollmentInfoForPairingWatchWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 unstageMDMEnrollmentInfoForPairingWatchWithCompletion:v5];
}

void __82__MCProfileConnection_MDM__unstageMDMEnrollmentInfoForPairingWatchWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error unstaging enrollment data: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:v5];
}

void __86__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error fetching staged enrollment data: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken_completion___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x1AC55F990](v12);
  v10 = [(MCProfileConnection *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:v7 completion:v8];
}

void __99__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error fetching staged enrollment data: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:v5];
}

void __97__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error fetching staged declaration keys: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)applyPairingWatchMDMEnrollmentData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MCProfileConnection_MDM__applyPairingWatchMDMEnrollmentData_completion___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x1AC55F990](v12);
  v10 = [(MCProfileConnection *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 applyPairingWatchMDMEnrollmentData:v7 completion:v8];
}

void __74__MCProfileConnection_MDM__applyPairingWatchMDMEnrollmentData_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error applying enrollment data: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateMDMEnrollmentInfoForPairingWatch:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEBUG, "updateMDMEnrollmentInfoForPairingWatch", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__MCProfileConnection_MDM__updateMDMEnrollmentInfoForPairingWatch_completion___block_invoke;
  v13[3] = &unk_1E77D2698;
  v14 = v6;
  v9 = v6;
  v10 = MEMORY[0x1AC55F990](v13);
  v11 = [(MCProfileConnection *)self xpcConnection];
  v12 = [v11 remoteObjectProxyWithErrorHandler:v10];
  [v12 updateMDMEnrollmentInfoForPairingWatch:v7 completion:v9];
}

void __78__MCProfileConnection_MDM__updateMDMEnrollmentInfoForPairingWatch_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC error updating enrollment data for pairing watch: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkRemoteProcessHasMDMEntitlement
{
  v2 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.managedconfiguration.profileconnection.mdm-access"];

  v4 = 0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)_lacksEntitlementError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"XPC_ERROR_LACKS_ENTITLEMENT_CODE", a2, v2, v3, v4, v5, v6, v7, @"com.apple.managedconfiguration.profileconnection.mdm-access");
  v10 = [v8 MCErrorWithDomain:@"MCXPCErrorDomain" code:39000 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)knownAirPrintIPPURLStrings
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveUnionValuesForSetting:@"knownAirPrintTargets"];

  return v3;
}

- (id)cloudConfigurationDetails
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 details];

  return v3;
}

- (void)enrollProvisionallyWithNonce:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MCProfileConnection_CloudConfiguration__enrollProvisionallyWithNonce_completionBlock___block_invoke;
  v10[3] = &unk_1E77D3300;
  v11 = v6;
  v9 = v6;
  [v8 provisionallyEnrollWithNonce:v7 completionBlock:v10];
}

void __88__MCProfileConnection_CloudConfiguration__enrollProvisionallyWithNonce_completionBlock___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = a3;
  v14 = a4;
  if (a2)
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v20);
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = MCErrorArray(@"CLOUD_CONFIG_PROVISIONAL_ENROLLMENT_FAILED", v7, v8, v9, v10, v11, v12, v13, 0);
    v18 = [v16 MCErrorWithDomain:@"MCCloudConfigErrorDomain" code:33007 descriptionArray:v17 underlyingError:v14 errorType:@"MCFatalError"];

    v19 = *(a1 + 32);
    if (v19)
    {
      (*(v19 + 16))(v19, v18, 0);
    }
  }
}

- (void)unenrollWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MCProfileConnection_CloudConfiguration__unenrollWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E77D3300;
  v8 = v4;
  v6 = v4;
  [v5 unenrollWithCompletionBlock:v7];
}

void __71__MCProfileConnection_CloudConfiguration__unenrollWithCompletionBlock___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = a3;
  v14 = a4;
  if (a2)
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, 0);
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = MCErrorArray(@"CLOUD_CONFIG_UNENROLLMENT_FAILED", v7, v8, v9, v10, v11, v12, v13, 0);
    v18 = [v16 MCErrorWithDomain:@"MCCloudConfigErrorDomain" code:33008 descriptionArray:v17 underlyingError:v14 errorType:@"MCFatalError"];

    v19 = *(a1 + 32);
    if (v19)
    {
      (*(v19 + 16))(v19, v18);
    }
  }
}

- (void)retrieveCloudConfigurationDetailsCompletionBlock:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = objc_opt_new();
  v5 = [(MCProfileConnection *)self _cloudConfigurationRetrievalBlockWithCompletion:v4];

  [v6 fetchConfigurationWithCompletionBlock:v5];
}

- (void)retrieveCloudConfigurationWithoutValidationCompletionBlock:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = objc_opt_new();
  v5 = [(MCProfileConnection *)self _cloudConfigurationRetrievalBlockWithCompletion:v4];

  [v6 fetchConfigurationWithoutValidationWithCompletionBlock:v5];
}

- (void)retrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)a3
{
  v6 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v5 = [v4 details];

  if (v5)
  {
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    [(MCProfileConnection *)self forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock:v6];
  }
}

- (void)forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __105__MCProfileConnection_CloudConfiguration__forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock___block_invoke;
  v6[3] = &unk_1E77D3328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MCProfileConnection *)self retrieveCloudConfigurationDetailsCompletionBlock:v6];
}

void __105__MCProfileConnection_CloudConfiguration__forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
    goto LABEL_4;
  }

  if (v5)
  {
    v8 = [v5 mutableCopy];
    [v8 setObject:&unk_1F1AA5920 forKeyedSubscript:*MEMORY[0x1E6999718]];
    [*(a1 + 32) storeCloudConfigurationDetails:v8 completion:*(a1 + 40)];
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v7 = *(v9 + 16);
LABEL_4:
      v7();
    }
  }

LABEL_7:
}

- (id)_cloudConfigurationRetrievalBlockWithCompletion:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__MCProfileConnection_CloudConfiguration___cloudConfigurationRetrievalBlockWithCompletion___block_invoke;
  v7[3] = &unk_1E77D3300;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1AC55F990](v7);

  return v5;
}

void __91__MCProfileConnection_CloudConfiguration___cloudConfigurationRetrievalBlockWithCompletion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = a4;
  if (a2)
  {
    v14 = [a3 mutableCopy];
    [v14 setObject:&unk_1F1AA5920 forKeyedSubscript:*MEMORY[0x1E6999718]];
    v15 = *(a1 + 32);
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = *(v15 + 16);
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = MCErrorArray(@"CLOUD_CONFIG_NOT_AVAILABLE", v7, v8, v9, v10, v11, v12, v13, 0);
    v14 = [v17 MCErrorWithDomain:@"MCCloudConfigErrorDomain" code:33001 descriptionArray:v18 underlyingError:v20 errorType:@"MCFatalError"];

    v19 = *(a1 + 32);
    if (!v19)
    {
      goto LABEL_7;
    }

    v16 = *(v19 + 16);
  }

  v16();
LABEL_7:
}

- (id)getMachineInfoWithAdditionalInfo:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  v15 = 0;
  v5 = [(MCProfileConnection *)self xpcConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_49];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__MCProfileConnection_CloudConfiguration__getMachineInfoWithAdditionalInfo___block_invoke_13;
  v9[3] = &unk_1E77D26E8;
  v9[4] = &v10;
  [v6 cloudConfigurationMachineInfoDataWithAdditionalInfo:v4 completion:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __76__MCProfileConnection_CloudConfiguration__getMachineInfoWithAdditionalInfo___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Failed to communicate with profiled. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76__MCProfileConnection_CloudConfiguration__getMachineInfoWithAdditionalInfo___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Cloud config machine info error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)getReducedMachineInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v2 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__MCProfileConnection_CloudConfiguration__getReducedMachineInfo__block_invoke_17;
  v6[3] = &unk_1E77D26E8;
  v6[4] = &v7;
  [v3 reducedMachineInfoDataWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__MCProfileConnection_CloudConfiguration__getReducedMachineInfo__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "User enrollment machine info error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __64__MCProfileConnection_CloudConfiguration__getReducedMachineInfo__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "User enrollment machine info error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)retrieveCloudConfigurationFromURL:(id)a3 username:(id)a4 password:(id)a5 anchorCertificates:(id)a6 additionalMachineInfo:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  [(MCProfileConnection *)self checkInIfNeeded];
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke;
  block[3] = &unk_1E77D33A0;
  v28 = v14;
  v29 = self;
  v30 = v18;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v19;
  v21 = v19;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v18;
  v26 = v14;
  dispatch_async(v20, block);
}

void __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD68] requestWithURL:*(a1 + 32)];
  [v2 setHTTPMethod:@"POST"];
  [v2 setTimeoutInterval:90.0];
  [v2 setValue:@"application/pkcs7-signature" forHTTPHeaderField:@"Content-Type"];
  [v2 setValue:@"CloudConfiguration/1.0" forHTTPHeaderField:@"User-Agent"];
  v3 = [*(a1 + 40) getMachineInfoWithAdditionalInfo:*(a1 + 48)];
  [v2 setHTTPBody:v3];
  v4 = objc_alloc_init(MEMORY[0x1E69997F8]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke_2;
  v13[3] = &unk_1E77D3378;
  v14 = v4;
  v15 = v2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v16 = v10;
  v17 = v9;
  v11 = v2;
  v12 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke_3;
  v6[3] = &unk_1E77D3350;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 startWithRequest:v2 username:v3 password:v4 anchorCertificateRefs:v5 completionBlock:v6];
}

void __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v25 = 0;
    v16 = [MCProfile profileWithData:v7 fileName:0 outError:&v25];
    v17 = v25;
    if (v17)
    {
      v18 = v17;
      v19 = *(a1 + 32);
    }

    else
    {
      v26 = @"isCloudProfile";
      v27[0] = MEMORY[0x1E695E118];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v24 = 0;
      v21 = [v16 mayInstallWithOptions:v20 hasInteractionClient:0 outError:&v24];
      v18 = v24;

      v19 = *(a1 + 32);
      if (v21)
      {
        if (v19)
        {
          v22 = *(v19 + 16);
LABEL_15:
          v22();
        }

LABEL_16:

        v10 = 0;
        goto LABEL_17;
      }
    }

    if (v19)
    {
      v22 = *(v19 + 16);
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 domain];
  if ([v11 isEqualToString:*MEMORY[0x1E69997D0]])
  {
    v12 = [v10 code];

    if (v12 != 23003)
    {
      goto LABEL_6;
    }

    v13 = MEMORY[0x1E696ABC0];
    v11 = [v10 userInfo];
    v14 = [v13 errorWithDomain:@"MCCloudConfigErrorDomain" code:33000 userInfo:v11];

    v10 = v14;
  }

LABEL_6:
  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v10, 0);
  }

LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)wasCloudConfigurationApplied
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];
  v4 = [v3 objectForKey:*MEMORY[0x1E6999710]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)wasTeslaCloudConfigurationApplied
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999710]];
  if ([v4 BOOLValue])
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999718]];
    v6 = [v5 intValue] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAwaitingDeviceConfigured
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999700]];
  if ([v4 BOOLValue])
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999720]];
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isAwaitingUserConfigured
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD460] sharedClient];
  v3 = [v2 isAwaitingUserConfigured];

  return v3;
}

- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69AD420];
  v5 = a3;
  v6 = [v4 sharedConfiguration];
  v7 = [v6 details];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69997A8]];
  [(MCProfileConnection *)self storeCloudConfigurationDetails:v8 waitUntilCompleted:1 completion:0];
}

- (void)updateCloudConfigurationWithLastPushTokenHash:(id)a3
{
  v4 = MEMORY[0x1E69AD420];
  v5 = a3;
  v6 = [v4 sharedConfiguration];
  v7 = [v6 details];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6999748]];
  [(MCProfileConnection *)self storeCloudConfigurationDetails:v8 waitUntilCompleted:1 completion:0];
}

- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self xpcConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];

  [v6 restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:v4];
}

void __105__MCProfileConnection_CloudConfiguration__restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Failed to restore set aside cloud config and MDM profile. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)storeCloudConfigurationDetails:(id)a3 waitUntilCompleted:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__MCProfileConnection_CloudConfiguration__storeCloudConfigurationDetails_waitUntilCompleted_completion___block_invoke;
  v15[3] = &unk_1E77D2698;
  v16 = v8;
  v10 = v8;
  v11 = MEMORY[0x1AC55F990](v15);
  v12 = [(MCProfileConnection *)self xpcConnection];
  v13 = v12;
  if (v5)
  {
    [v12 synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [v12 remoteObjectProxyWithErrorHandler:v11];
  }
  v14 = ;

  [v14 cloudConfigurationStoreDetails:v9 completion:v11];
}

void __104__MCProfileConnection_CloudConfiguration__storeCloudConfigurationDetails_waitUntilCompleted_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (!os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v5 = v4;
    v6 = [v3 MCVerboseDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Store cloud config details error. Error: %{public}@", &v9, 0xCu);
  }

  else
  {
    v5 = [MEMORY[0x1E69AD420] sharedConfiguration];
    [v5 refreshDetailsFromDisk];
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)storePendingCloudConfigurationDetailsForMigration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__MCProfileConnection_CloudConfiguration__storePendingCloudConfigurationDetailsForMigration_completionHandler___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x1AC55F990](v12);
  v10 = [(MCProfileConnection *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  [v11 cloudConfigurationStoreDetailsForPendingMigration:v7 completion:v9];
}

void __111__MCProfileConnection_CloudConfiguration__storePendingCloudConfigurationDetailsForMigration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Store cloud config details error. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__MCProfileConnection_CloudConfiguration__removeSetAsideCloudConfigurationProfileWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x1AC55F990](v9);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];

  [v8 removeSetAsideCloudConfigurationProfileWithCompletion:v5];
}

void __97__MCProfileConnection_CloudConfiguration__removeSetAsideCloudConfigurationProfileWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "XPC connection failed when removing set aside cloud config profile. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailableAndKeyExists:(BOOL *)a3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self flush];
  v5 = CFPreferencesCopyAppValue(@"LockdownActivationIndicatesCloudConfigurationAvailable", @"com.apple.managedconfiguration.notbackedup");
  v6 = v5;
  if (!v5)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [v5 BOOLValue];
  if (a3)
  {
LABEL_3:
    *a3 = v6 != 0;
  }

LABEL_4:

  return v7;
}

- (BOOL)shouldSkipSetupPanes
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999718]];
  if ([v4 intValue] == 1)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999710]];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)shouldShowCloudConfigurationUI
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [MEMORY[0x1E69AD420] sharedConfiguration];
  [v3 refreshDetailsFromDisk];
  v4 = [v3 details];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v3 setAsideDetails];
    if (!v5 && ![(MCProfileConnection *)self activationRecordIndicatesCloudConfigurationIsAvailable])
    {
      goto LABEL_8;
    }
  }

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6999708]];
  v7 = [v6 BOOLValue];

  v8 = qword_1ED4ADE28;
  v9 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "User has completed cloud configuration. Not showing UI again.", buf, 2u);
    }

LABEL_8:
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 BOOLForKey:@"MCForceShowCloudConfigurationUI"];

    if (!v11)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v8 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v12 = "Force-displaying cloud configuration UI.";
      v13 = &v16;
LABEL_13:
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (v9)
  {
    *v17 = 0;
    v12 = "Cloud configuration is available.";
    v13 = v17;
    goto LABEL_13;
  }

LABEL_14:
  v14 = 1;
LABEL_16:

  return v14;
}

- (BOOL)cloudConfigIndicatesMDMProfileNeedsToBeInstalled
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v3 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v4 = [v3 details];

  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69997A0]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v8 = "Cloud config indicates that MDM profile has been installed.";
      v9 = &v22;
LABEL_14:
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6999740]];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v8 = "Cloud config indicates that the device is not supervised.";
      v9 = &v21;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6999738]];
  v13 = [v12 BOOLValue];

  if ((v13 & 1) == 0)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Cloud config indicates that the MDM profile is not mandatory";
      v9 = buf;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v14 = [(MCProfileConnection *)self unverifiedInstalledMDMProfileIdentifier];

  v7 = qword_1ED4ADE28;
  v15 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v15)
    {
      v19 = 0;
      v8 = "Found installed MDM profile.";
      v9 = &v19;
      goto LABEL_14;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (v15)
  {
    *v18 = 0;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "Cloud configuration is available and the MDM profile hasn't been installed.", v18, 2u);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)shouldShowSetupAssistant
{
  DMPerformMigrationIfNeeded();
  if ([(MCProfileConnection *)self shouldShowCloudConfigurationUI]|| [(MCProfileConnection *)self cloudConfigIndicatesMDMProfileNeedsToBeInstalled]|| [(MCProfileConnection *)self wasCloudConfigurationApplied]&& [(MCProfileConnection *)self isAwaitingDeviceConfigured])
  {
    return 1;
  }

  return [(MCProfileConnection *)self shouldShowMDMMigrationUI];
}

- (void)storedProfileDataWithCompletion:(id)a3
{
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke;
  v12[3] = &unk_1E77D2698;
  v5 = v4;
  v13 = v5;
  v6 = MEMORY[0x1AC55F990](v12);
  v7 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke_2;
  v10[3] = &unk_1E77D33F0;
  v11 = v5;
  v9 = v5;
  [v8 storedProfileDataWithCompletion:v10];
}

void __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Profile data stored for purpose error. Error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke_48;
    v10[3] = &unk_1E77D2A58;
    v12 = v7;
    v11 = v3;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Profile data stored for purpose error. Error: %{public}@", buf, 0xCu);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke_49;
    block[3] = &unk_1E77D33C8;
    v16 = v10;
    v14 = v5;
    v15 = v6;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)installStoredProfileDataWithExtraOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MCProfileConnection *)self checkInIfNeeded];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__MCProfileConnection_CloudConfiguration__installStoredProfileDataWithExtraOptions_completion___block_invoke;
  v10[3] = &unk_1E77D3440;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MCProfileConnection *)self storedProfileDataWithCompletion:v10];
}

void __95__MCProfileConnection_CloudConfiguration__installStoredProfileDataWithExtraOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = v6;
  if (v5)
  {
    v15 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__MCProfileConnection_CloudConfiguration__installStoredProfileDataWithExtraOptions_completion___block_invoke_2;
    block[3] = &unk_1E77D3418;
    v16 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v21 = v16;
    v22 = v5;
    v23 = *(a1 + 48);
    dispatch_async(v15, block);
  }

  else
  {
    if (!v6)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = MCErrorArray(@"ERROR_PROFILE_NOT_FOUND", v7, v8, v9, v10, v11, v12, v13, 0);
      v14 = [v17 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4023 descriptionArray:v18 errorType:@"MCFatalError"];
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, v14);
    }
  }
}

void __95__MCProfileConnection_CloudConfiguration__installStoredProfileDataWithExtraOptions_completion___block_invoke_2(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cloudConfigurationDetails];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6999730]];
  v4 = [v3 BOOLValue];

  v5 = [*(a1 + 32) cloudConfigurationDetails];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6999718]];
  v7 = [v6 intValue] == 1;

  v19[0] = @"isCloudLocked";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v20[0] = v8;
  v19[1] = @"isCloudProfile";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v20[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v11 = [v10 mutableCopy];

  if (*(a1 + 40))
  {
    [v11 addEntriesFromDictionary:?];
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v18 = 0;
  v14 = [v12 installProfileData:v13 options:v11 outError:&v18];
  v15 = v18;
  if (!v15)
  {
    [*(a1 + 32) markStoredProfileAsInstalled];
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)storeProfileData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9 = [(MCProfileConnection *)self xpcConnection];
  v8 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v6];
  [v8 storeProfileData:v7 completion:v6];
}

- (BOOL)shouldInstallStoredProfile
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MCPostSetupAutoInstallProfilePathNF();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E69AD420] sharedConfiguration];
    v6 = [v5 details];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6999708]];
    if ([v7 BOOLValue])
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69997A0]];
      v4 = [v8 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)markStoredProfileAsInstalled
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = [(MCProfileConnection *)self xpcConnection];
  v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_57_0];
  [v3 markStoredProfileAsInstalledWithCompletion:&__block_literal_global_57_0];
}

void __71__MCProfileConnection_CloudConfiguration__markStoredProfileAsInstalled__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Mark stored profile for purpose as installed error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupAssistantDidFinishWithCompletion:(id)a3
{
  v4 = a3;
  DMPerformMigrationIfNeeded();
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_INFO, "Setup assistant has finished. Preventing further cloud configuration changes.", buf, 2u);
  }

  v6 = ([MEMORY[0x1E69AD428] getManagementStateForMAID] >> 2) & 1;
  v7 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v8 = [v7 details];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v11 = [v10 setAsideDetails];
  v12 = [v11 mutableCopy];

  if (v9 || !v12)
  {
    if (v9 | v12)
    {
      goto LABEL_9;
    }

    v13 = [MEMORY[0x1E69AD420] canonicalConfigurationWithSupervision:0];
  }

  else
  {
    v13 = v12;
  }

  v9 = v13;
LABEL_9:
  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6999708]];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__MCProfileConnection_CloudConfiguration__setupAssistantDidFinishWithCompletion___block_invoke;
  v21[3] = &unk_1E77D3468;
  v23 = v6;
  v21[4] = self;
  v14 = v4;
  v22 = v14;
  v15 = MEMORY[0x1AC55F990](v21);
  v16 = v15;
  if (v14)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__MCProfileConnection_CloudConfiguration__setupAssistantDidFinishWithCompletion___block_invoke_64;
    v19[3] = &unk_1E77D3490;
    v19[4] = self;
    v20 = v15;
    [(MCProfileConnection *)self storeCloudConfigurationDetails:v9 waitUntilCompleted:0 completion:v19];
  }

  else
  {
    [(MCProfileConnection *)self storeCloudConfigurationDetails:v9 waitUntilCompleted:1 completion:0];
    v17 = [(MCProfileConnection *)self xpcConnection];
    v18 = [v17 remoteObjectProxyWithErrorHandler:v16];
    [v18 setupAssistantDidFinishCompletion:v16];
  }
}

void __81__MCProfileConnection_CloudConfiguration__setupAssistantDidFinishWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    MDMSendDevicePostureChangedNotification();
  }

  [*(a1 + 32) removeSetAsideCloudConfigurationProfileWithCompletion:&__block_literal_global_60];
  [*(a1 + 32) removePostSetupAutoInstallSetAsideProfileWithCompletion:&__block_literal_global_63_0];
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Could not tell profiled that Setup Assistant has completed. Error: %{public}@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __81__MCProfileConnection_CloudConfiguration__setupAssistantDidFinishWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_ERROR, "Failed to remove set aside cloud config profile with error: %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __81__MCProfileConnection_CloudConfiguration__setupAssistantDidFinishWithCompletion___block_invoke_61(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_ERROR, "Failed to remove auto install set aside profile with error: %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __81__MCProfileConnection_CloudConfiguration__setupAssistantDidFinishWithCompletion___block_invoke_64(uint64_t a1)
{
  v3 = [*(a1 + 32) xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:*(a1 + 40)];
  [v2 setupAssistantDidFinishCompletion:*(a1 + 40)];
}

- (id)diagnosticsUploadURL
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 diagnosticsUploadURL];

  return v3;
}

- (BOOL)isProvisionallyEnrolled
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isProvisionallyEnrolled];

  return v3;
}

- (id)provisionalEnrollmentExpirationDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 provisionalEnrollmentExpirationDate];

  return v3;
}

- (int)userMode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 userMode];

  return v3 != 0;
}

- (id)tvProviderUserToken
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 tvProviderUserToken];

  return v3;
}

- (id)deviceOrganizationName
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999788]];

  return v4;
}

- (id)deviceDepartmentName
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999780]];

  return v4;
}

- (id)deviceOrganizationAddress
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999750]];

  return v4;
}

- (id)deviceOrganizationAddressLine1
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999758]];

  return v4;
}

- (id)deviceOrganizationAddressLine2
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999760]];

  return v4;
}

- (id)deviceOrganizationAddressLine3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999768]];

  return v4;
}

- (id)deviceOrganizationCity
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999770]];

  return v4;
}

- (id)deviceOrganizationRegion
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999790]];

  return v4;
}

- (id)deviceOrganizationZipCode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999798]];

  return v4;
}

- (id)deviceOrganizationCountry
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6999778]];

  return v4;
}

- (id)managingOrganizationInformation
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = 0;
  v3 = [(MCProfileConnection *)self publicXPCConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_67];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MCProfileConnection_CloudConfiguration__managingOrganizationInformation__block_invoke_68;
  v7[3] = &unk_1E77D34B8;
  v7[4] = &v8;
  [v4 managingOrganizationInformationWithCompletion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __74__MCProfileConnection_CloudConfiguration__managingOrganizationInformation__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch organization info. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __74__MCProfileConnection_CloudConfiguration__managingOrganizationInformation__block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch organization info. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)applySingleAppModeConfiguration:(id)a3 clientType:(id)a4 clientUUID:(id)a5 localizedClientDescription:(id)a6 outError:(id *)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v15 objectForKeyedSubscript:v20];
        [v14 MCSetBoolRestriction:v20 value:{objc_msgSend(v21, "BOOLValue")}];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = [(MCProfileConnection *)self applyRestrictionDictionary:v14 appsAndOptions:0 clientType:v11 clientUUID:v12 localizedClientDescription:v13 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:a7];
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)isAirDropUnmanagedForced
{
  v10 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"forceAirDropUnmanaged"];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v3 == 1)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "isAirDropUnmanagedForced: %@", &v8, 0xCu);
  }

  result = v3 == 1;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isURLManaged:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCManagedDomainsCache sharedCache];
  v6 = [v5 isURLManaged:v4];

  v7 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEBUG, "isURLManaged(%@): %@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void __110__MCProfileConnection_ManagedOpenIn__mayShareToMessagesForOriginatingAppBundleID_originatingAccountIsManaged___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "May share to Messages error. Error: %{public}@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) ^ 1;

  v7 = *MEMORY[0x1E69E9840];
}

void __110__MCProfileConnection_ManagedOpenIn__mayShareToMessagesForOriginatingAppBundleID_originatingAccountIsManaged___block_invoke_6(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "May share to Messages error. Error: %{public}@", &v10, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x1E69E9840];
}

void __109__MCProfileConnection_ManagedOpenIn__mayShareToAirDropForOriginatingAppBundleID_originatingAccountIsManaged___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 MCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "May share to AirDrop error. Error: %{public}@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) ^ 1;

  v7 = *MEMORY[0x1E69E9840];
}

void __109__MCProfileConnection_ManagedOpenIn__mayShareToAirDropForOriginatingAppBundleID_originatingAccountIsManaged___block_invoke_8(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "May share to AirDrop error. Error: %{public}@", &v10, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  v9 = *MEMORY[0x1E69E9840];
}

void __148__MCProfileConnection_ManagedOpenIn__allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs_originatingAppBundleID_originatingAccountIsManaged___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Allowed open in app bundleIDs error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __148__MCProfileConnection_ManagedOpenIn__allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs_originatingAppBundleID_originatingAccountIsManaged___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Allowed open in app bundleIDs error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

void __145__MCProfileConnection_ManagedOpenIn__allowedImportFromAppBundleIDsAfterApplyingFilterToBundleIDs_importingAppBundleID_importingAccountIsManaged___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 MCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Allowed import from app bundleIDs error. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __145__MCProfileConnection_ManagedOpenIn__allowedImportFromAppBundleIDsAfterApplyingFilterToBundleIDs_importingAppBundleID_importingAccountIsManaged___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 MCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Allowed import from app bundleIDs error. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAppManaged:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = MCContainingBundleIDForBundleID(v4);
  v6 = [MEMORY[0x1E69AD440] attributesByAppID];
  v7 = [v6 allKeys];
  v8 = [v7 containsObject:v5];

  v9 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEBUG, "isAppManaged:%@ => %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)managedAppBundleIDs
{
  v9 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = [MEMORY[0x1E69AD440] attributesByAppID];
  v3 = [v2 allKeys];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "managedAppBundleIDs => %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isBidirectionalDataTransferAllowedWithBundleID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if ([(MCProfileConnection *)self isOpenInRestrictionInEffect])
  {
    v5 = MCContainingBundleIDForBundleID(v4);
    if (MCIsAppAccountBasedTargetForOpenIn(v5) & 1) != 0 || (MCIsAppExemptFromImportFromTargetRestrictions(v5))
    {
      v6 = 1;
    }

    else
    {
      v7 = [(MCProfileConnection *)self isAppManaged:v5];
      v6 = v7 ^ [MEMORY[0x1E6999808] isCurrentPersonaEnterprise] ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v8 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    if (v6)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEBUG, "isBidirectionalDataTransferAllowedWithBundleID:%@ => %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isBundleIDAccountBasedForDragDrop:(id)a3
{
  v3 = MCContainingBundleIDForBundleID(a3);
  v4 = MCIsAppAccountBasedForDragDrop(v3);

  return v4;
}

- (int64_t)dragDropBidirectionalManagementStateForBaseBundleID:(id)a3
{
  v4 = a3;
  if (MCIsAppAccountBasedForDragDrop(v4))
  {
    v5 = 2;
  }

  else if (MCIsAppExemptFromDragDropManagement(v4))
  {
    v5 = 3;
  }

  else
  {
    v5 = [(MCProfileConnection *)self isAppManaged:v4];
  }

  return v5;
}

- (int64_t)dragDropSourceManagementStateForBundleID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MCContainingBundleIDForBundleID(v4);
  if ([v5 isEqualToString:@"com.apple.MobileSMS"])
  {
    v6 = 3;
  }

  else
  {
    v6 = [(MCProfileConnection *)self dragDropBidirectionalManagementStateForBaseBundleID:v5];
  }

  v7 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEBUG, "dragDropSourceManagementStateForBundleID:%@ => %li", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)dragDropTargetManagementStateForBundleID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MCContainingBundleIDForBundleID(v4);
  if ([v5 isEqualToString:@"com.apple.MobileSMS"])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self dragDropBidirectionalManagementStateForBaseBundleID:v5];
  }

  v7 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEBUG, "dragDropTargetManagementStateForBundleID:%@ => %li", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isContactsReadAffectedByOpenInRestrictionsForTargetBundleID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = (MCIsAppExemptFromImportFromTargetRestrictionsForContacts(v4) & 1) == 0 && [(MCProfileConnection *)self _shouldApplyContactsFilterForTargetBundleID:v4 targetAccountManagement:0 outAllowManagedAccounts:0 outAllowUnmanagedAccounts:0];
  v6 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEBUG, "isContactsReadAffectedByOpenInRestrictionsForTargetBundleID:%@ => %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void __74__MCProfileConnection_ManagedOpenIn__canSendMail_sourceAccountManagement___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = [a2 MCVerboseDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Could not filter accounts. Error: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasAnyMailAccountIgnoringFiltering
{
  v17 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(MCProfileConnection *)self publicXPCConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30_3];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__MCProfileConnection_ManagedOpenIn__hasAnyMailAccountIgnoringFiltering__block_invoke_31;
  v10[3] = &unk_1E77D3548;
  v10[4] = &v11;
  [v4 hasMailAccountsWithFilteringEnabled:0 sourceAccountManagement:0 completion:v10];
  v5 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    if (*(v12 + 24))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEBUG, "canSendMailIgnoringAllFiltering => %@", buf, 0xCu);
  }

  v7 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void __72__MCProfileConnection_ManagedOpenIn__hasAnyMailAccountIgnoringFiltering__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = [a2 MCVerboseDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Could not filter accounts. Error: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldApplyFilterForBundleID:(id)a3 sourceAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromOpenInSourceRestrictions(v10) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedSourceForOpenIn(v10))
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
LABEL_3:
        v11 = 0;
        v12 = 1;
LABEL_4:
        v13 = 1;
        v14 = v11;
        goto LABEL_5;
      }

LABEL_34:
      v12 = [(MCProfileConnection *)self mayOpenFromManagedToUnmanaged];
      v11 = !v12;
      goto LABEL_4;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:v10];

    if (v23)
    {
      goto LABEL_34;
    }
  }

  v24 = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
  v11 = 0;
  v13 = 0;
  v12 = 1;
  v14 = 1;
  if (v24)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v12;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (a4 == 2)
    {
      v16 = @"MANAGED";
    }

    if (!a4)
    {
      v16 = @"NONE";
    }

    v17 = @"NO";
    if (v14)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (a5)
    {
      if (*a5)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (a6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (a6)
      {
LABEL_22:
        if (*a6)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = v10;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "shouldApplyFilterForBundleID:%@ sourceAccountManagement:%@ => %@, allowManagedAccounts:%@, allowUnamangedAccounts:%@", &v25, 0x34u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (BOOL)shouldApplyFilterForTargetBundleID:(id)a3 targetAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromImportFromTargetRestrictions(v10) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedTargetForOpenIn(v10))
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
LABEL_3:
        v11 = 0;
        v12 = 1;
LABEL_4:
        v13 = 1;
        v14 = v11;
        goto LABEL_5;
      }

LABEL_34:
      v12 = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
      v11 = !v12;
      goto LABEL_4;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:v10];

    if (v23)
    {
      goto LABEL_34;
    }
  }

  v24 = [(MCProfileConnection *)self mayOpenFromManagedToUnmanaged];
  v11 = 0;
  v13 = 0;
  v12 = 1;
  v14 = 1;
  if (v24)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v12;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (a4 == 2)
    {
      v16 = @"MANAGED";
    }

    if (!a4)
    {
      v16 = @"NONE";
    }

    v17 = @"NO";
    if (v14)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (a5)
    {
      if (*a5)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (a6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (a6)
      {
LABEL_22:
        if (*a6)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = v10;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "shouldApplyFilterForTargetBundleID:%@ targetAccountManagement:%@ => %@, allowManagedAccounts:%@, allowUnamangedAccounts:%@", &v25, 0x34u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

void __137__MCProfileConnection_ManagedOpenIn__allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs_hostAppBundleID_accountIsManaged_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v3 MCVerboseDescription];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Could not filter keyboards. Error: %{public}@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, MEMORY[0x1E695E0F0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __137__MCProfileConnection_ManagedOpenIn__allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs_hostAppBundleID_accountIsManaged_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v10 = 138413058;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs:%@ hostAppBundleID:%@ accountIsManaged:%@ => %@", &v10, 0x2Au);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __126__MCProfileConnection_ManagedOpenIn__allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs_hostAppBundleID_accountIsManaged___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = [a2 MCVerboseDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Could not filter keyboards synchronously. Error: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __126__MCProfileConnection_ManagedOpenIn__allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs_hostAppBundleID_accountIsManaged___block_invoke_42(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v11 = 138413058;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs:%@ hostAppBundleID:%@ accountIsManaged:%@ => %@", &v11, 0x2Au);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isManagedPasteboardRequired
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"requireManagedPasteboard"] == 1;

  return v3;
}

- (BOOL)_unmanagedMayReadManagedContacts
{
  v10 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowUnmanagedToReadManagedContacts"];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v3 != 2)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "unmanagedMayReadManagedContacts: %@", &v8, 0xCu);
  }

  result = v3 != 2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_managedMayWriteUnmanagedContacts
{
  v10 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowManagedToWriteUnmanagedContacts"];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v3 != 2)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "managedMayWriteUnmanagedContacts: %@", &v8, 0xCu);
  }

  result = v3 != 2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_shouldApplyContactsFilterForBundleID:(id)a3 sourceAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromOpenInSourceRestrictions(v10) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedSourceForOpenIn(v10))
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_3;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:v10];

    if (v23)
    {
LABEL_34:
      if (![(MCProfileConnection *)self mayOpenFromManagedToUnmanaged]&& ![(MCProfileConnection *)self _managedMayWriteUnmanagedContacts])
      {
        v12 = 0;
        v11 = 1;
        goto LABEL_4;
      }

LABEL_3:
      v11 = 0;
      v12 = 1;
LABEL_4:
      v13 = 1;
      v14 = v11;
      goto LABEL_5;
    }
  }

  v24 = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
  v11 = 0;
  v13 = 0;
  v12 = 1;
  v14 = 1;
  if (v24)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v12;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (a4 == 2)
    {
      v16 = @"MANAGED";
    }

    if (!a4)
    {
      v16 = @"NONE";
    }

    v17 = @"NO";
    if (v14)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (a5)
    {
      if (*a5)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (a6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (a6)
      {
LABEL_22:
        if (*a6)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = v10;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "shouldApplyContactsFilterForBundleID:%@ sourceAccountManagement:%@ => %@, allowManagedAccounts:%@, allowUnamangedAccounts:%@", &v25, 0x34u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_shouldApplyContactsFilterForTargetBundleID:(id)a3 targetAccountManagement:(int)a4 outAllowManagedAccounts:(BOOL *)a5 outAllowUnmanagedAccounts:(BOOL *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromImportFromTargetRestrictionsForContacts(v10) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedTargetForOpenIn(v10))
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_3;
      }

LABEL_34:
      v12 = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
      v11 = !v12;
      goto LABEL_4;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:v10];

    if (v23)
    {
      goto LABEL_34;
    }
  }

  if ([(MCProfileConnection *)self mayOpenFromManagedToUnmanaged])
  {
LABEL_3:
    v11 = 0;
    v12 = 1;
LABEL_4:
    v13 = 1;
    v14 = v11;
    goto LABEL_5;
  }

  v24 = [(MCProfileConnection *)self _unmanagedMayReadManagedContacts];
  v11 = 0;
  v13 = 0;
  v12 = 1;
  v14 = 1;
  if (v24)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v12;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (a4 == 2)
    {
      v16 = @"MANAGED";
    }

    if (!a4)
    {
      v16 = @"NONE";
    }

    v17 = @"NO";
    if (v14)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (a5)
    {
      if (*a5)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (a6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (a6)
      {
LABEL_22:
        if (*a6)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = v10;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "shouldApplyContactsFilterForTargetBundleID:%@ targetAccountManagement:%@ => %@, allowManagedAccounts:%@, allowUnamangedAccounts:%@", &v25, 0x34u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

@end