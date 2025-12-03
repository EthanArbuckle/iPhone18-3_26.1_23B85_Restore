@interface MCProfileConnection
+ (NSArray)features;
+ (id)profileDaemonConnectionErrorWithUnderlyingError:(id)error;
+ (id)profileInstallationErrorWithUnderlyingError:(id)error;
+ (id)sharedConnection;
- (BOOL)_areProfilesRestrictingSettings:(id)settings outMDMName:(id *)name outExchangeName:(id *)exchangeName outExchangeCount:(int64_t *)count outProfileName:(id *)profileName outProfileCount:(int64_t *)profileCount;
- (BOOL)_checkRemoteProcessHasMDMEntitlement;
- (BOOL)_managedMayWriteUnmanagedContacts;
- (BOOL)_shouldApplyContactsFilterForBundleID:(id)d sourceAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts;
- (BOOL)_shouldApplyContactsFilterForTargetBundleID:(id)d targetAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts;
- (BOOL)_unmanagedMayReadManagedContacts;
- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailableAndKeyExists:(BOOL *)exists;
- (BOOL)allMarketplacesAllowed;
- (BOOL)anyMarketplaceAllowed;
- (BOOL)applySingleAppModeConfiguration:(id)configuration clientType:(id)type clientUUID:(id)d localizedClientDescription:(id)description outError:(id *)error;
- (BOOL)areSettingsLockedDownByRestrictions:(id)restrictions;
- (BOOL)checkApplicationIdentifierEntitlement;
- (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret outError:(id *)error;
- (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secretContext:(id)context outError:(id *)error;
- (BOOL)clearUserInfoForClientUUIDs:(id)ds;
- (BOOL)cloudConfigIndicatesMDMProfileNeedsToBeInstalled;
- (BOOL)communicationServiceRulesExistForBundleID:(id)d forCommunicationServiceType:(id)type;
- (BOOL)currentPasscodeIsCompliantWithGlobalRestrictionsOutError:(id *)error;
- (BOOL)currentPasscodeIsCompliantWithProfileRestrictionsOutError:(id *)error;
- (BOOL)getAreBundlesBlocked:(id *)blocked bundlePaths:(id)paths outError:(id *)error;
- (BOOL)getIsBundleBlocked:(BOOL *)blocked bundlePath:(id)path outHash:(id *)hash outHashType:(id *)type outError:(id *)error;
- (BOOL)hasAnyMailAccountIgnoringFiltering;
- (BOOL)hasAppAnalyticsAllowedBeenSet;
- (BOOL)hasDiagnosticSubmissionAllowedBeenSet;
- (BOOL)hasHandWashingDataSubmissionAllowedBeenSet;
- (BOOL)hasHealthDataSubmission2BeenSet;
- (BOOL)hasHealthDataSubmissionAllowedBeenSet;
- (BOOL)hasSafetyDataSubmissionAllowedBeenSet;
- (BOOL)hasWheelchairDataSubmissionAllowedBeenSet;
- (BOOL)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier outError:(id *)error;
- (BOOL)isActivationLockAllowed;
- (BOOL)isActivationLockAllowedWhileSupervised;
- (BOOL)isAirDropUnmanagedForced;
- (BOOL)isAppManaged:(id)managed;
- (BOOL)isAppRatingLimitInEffect;
- (BOOL)isAppleIntelligenceRestricted;
- (BOOL)isAwaitingDeviceConfigured;
- (BOOL)isAwaitingUserConfigured;
- (BOOL)isBidirectionalDataTransferAllowedWithBundleID:(id)d;
- (BOOL)isBoolSettingLockedDownByRestrictions:(id)restrictions;
- (BOOL)isBundleIDAccountBasedForDragDrop:(id)drop;
- (BOOL)isChaperoned;
- (BOOL)isClassroomEnabled;
- (BOOL)isClassroomInstructorRoleEnabled;
- (BOOL)isClassroomStudentRoleEnabled;
- (BOOL)isClassroomUnpromptedScreenObservationForced;
- (BOOL)isCloudSyncAllowed:(id)allowed;
- (BOOL)isContactsReadAffectedByOpenInRestrictionsForTargetBundleID:(id)d;
- (BOOL)isEffectivelyInAppAllowListMode;
- (BOOL)isHomeScreenLayoutApplied;
- (BOOL)isInSingleAppMode;
- (BOOL)isIntersectionSettingLockedDownByRestrictions:(id)restrictions;
- (BOOL)isLocalStorageAllowed;
- (BOOL)isManagedPasteboardRequired;
- (BOOL)isMarketplaceAllowed:(id)allowed;
- (BOOL)isMultiUserNewUserCreationAllowed;
- (BOOL)isNotificationsModificationAllowedForBundleID:(id)d;
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)isParentalControlsAllowPasscodeAccessToNonWhitelistedAppsUIForcedByRestrictions;
- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)policy outError:(id *)error;
- (BOOL)isPasscodeModificationAllowed;
- (BOOL)isPasscodeRecoveryAllowed;
- (BOOL)isPasscodeRecoveryRestricted;
- (BOOL)isPasscodeRequired;
- (BOOL)isPasscodeRequiredByProfiles;
- (BOOL)isPasscodeRequiredToAccessWhitelistedApps;
- (BOOL)isPasscodeSet;
- (BOOL)isProfileInstalledWithIdentifier:(id)identifier outError:(id *)error;
- (BOOL)isProfileUIInstallationAllowed;
- (BOOL)isProfileUIInstallationEffectivelyAllowed;
- (BOOL)isProfileWithIdentifier:(id)identifier managedByProfileWithIdentifier:(id)withIdentifier;
- (BOOL)isProvisionallyEnrolled;
- (BOOL)isProvisioningProfilesWithUUID:(id)d managedByProfileWithIdentifier:(id)identifier;
- (BOOL)isRemovalRestrictedByPolicyForApp:(id)app;
- (BOOL)isSafariPasswordAutoFillAllowedForURL:(id)l;
- (BOOL)isSettingLockedDownByRestrictions:(id)restrictions;
- (BOOL)isSingleAppModeLogoutAllowed;
- (BOOL)isSupervised;
- (BOOL)isTemporarySessionOnlyModeEnabled;
- (BOOL)isURLManaged:(id)managed;
- (BOOL)isUnionSettingLockedDownByRestrictions:(id)restrictions;
- (BOOL)isValueSettingLockedDownByRestrictions:(id)restrictions;
- (BOOL)isWebContentFilteringInEffect;
- (BOOL)mayEnterPasscodeToAccessNonWhitelistedApps;
- (BOOL)mayOpenFromManagedToUnmanaged;
- (BOOL)mayOpenFromUnmanagedToManaged;
- (BOOL)mustInstallProfileNonInteractively:(id)interactively;
- (BOOL)needsCheckIn;
- (BOOL)passcode:(id)passcode meetsCurrentConstraintsOutError:(id *)error;
- (BOOL)passcodeContext:(id)context meetsCurrentConstraintsOutError:(id *)error;
- (BOOL)recoveryPasscodeAvailable;
- (BOOL)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier outError:(id *)error;
- (BOOL)shouldApplyFilterForBundleID:(id)d sourceAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts;
- (BOOL)shouldApplyFilterForTargetBundleID:(id)d targetAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts;
- (BOOL)shouldDestroyOldKeybag;
- (BOOL)shouldInstallStoredProfile;
- (BOOL)shouldShowCloudConfigurationUI;
- (BOOL)shouldShowSetupAssistant;
- (BOOL)shouldSkipSetupPanes;
- (BOOL)showProfileErrorUIWithProfileIdentifier:(id)identifier outError:(id *)error;
- (BOOL)syncTrustedCodeSigningIdentitiesWithOutError:(id *)error;
- (BOOL)unlockDeviceWithPasscode:(id)passcode outError:(id *)error;
- (BOOL)unlockDeviceWithPasscodeContext:(id)context outError:(id *)error;
- (BOOL)wasCloudConfigurationApplied;
- (BOOL)wasTeslaCloudConfigurationApplied;
- (MCProfileConnection)init;
- (NSXPCConnection)publicXPCConnection;
- (NSXPCConnection)xpcConnection;
- (double)temporarySessionTimeout;
- (double)userSessionTimeout;
- (id)_cloudConfigurationRetrievalBlockWithCompletion:(id)completion;
- (id)_disallowedRestrictionErrorForRestrictionKey:(id)key;
- (id)_handleQueueProfileError:(id)error targetDevice:(unint64_t)device;
- (id)_lacksEntitlementError;
- (id)_localizedSourceDescriptionForType:(int64_t)type MDMName:(id)name exchangeName:(id)exchangeName exchangeCount:(int64_t)count profileName:(id)profileName profileCount:(int64_t)profileCount;
- (id)_restrictionEnforcedNotificationSettingsForBundleID:(id)d settingsArray:(id)array;
- (id)_settingsLockedDownByRestrictions:(id)restrictions;
- (id)_sharedDeviceConfiguration;
- (id)_transmogrifyRestrictionDictionaryForUserEnrollment:(id)enrollment outError:(id *)error;
- (id)activationLockBypassHash;
- (id)activationLockBypassKey;
- (id)activeClassroomRoles;
- (id)allClientUUIDsForClientType:(id)type;
- (id)allowedMarketplaces;
- (id)appleConnect_installMDMAssociatedProfileData:(id)data outError:(id *)error;
- (id)associatedDomainsForManagedApps;
- (id)autonomousSingleAppModePermittedBundleIDs;
- (id)chaperoneOrganization;
- (id)clearRecoveryPasscode;
- (id)clientRestrictionsForClientUUID:(id)d;
- (id)cloudConfigurationDetails;
- (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier;
- (id)defaultParametersForBoolSetting:(id)setting;
- (id)defaultParametersForIntersectionSetting:(id)setting;
- (id)defaultParametersForUnionSetting:(id)setting;
- (id)defaultParametersForValueSetting:(id)setting;
- (id)defaultUserBookmarks;
- (id)defaultValueForSetting:(id)setting;
- (id)defaultValuesForIntersectionSetting:(id)setting;
- (id)defaultValuesForUnionSetting:(id)setting;
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
- (id)effectiveParametersForBoolSetting:(id)setting configurationUUID:(id)d;
- (id)effectiveParametersForIntersectionSetting:(id)setting;
- (id)effectiveParametersForUnionSetting:(id)setting;
- (id)effectiveParametersForValueSetting:(id)setting;
- (id)effectiveRestrictions;
- (id)effectiveRestrictionsForPairedDevice;
- (id)effectiveUserSettings;
- (id)effectiveValueForSetting:(id)setting;
- (id)effectiveValueForWatchSetting:(id)setting pairedDevice:(id)device outError:(id *)error;
- (id)effectiveValuesForIntersectionSetting:(id)setting;
- (id)effectiveValuesForUnionSetting:(id)setting;
- (id)effectiveValuesForWatchIntersectionSetting:(id)setting pairedDevice:(id)device outError:(id *)error;
- (id)effectiveValuesForWatchUnionSetting:(id)setting pairedDevice:(id)device outError:(id *)error;
- (id)effectiveWhitelistedAppBundleIDs;
- (id)effectiveWhitelistedAppsAndOptions;
- (id)fetchActivationLockBypassKeyWithError:(id *)error;
- (id)getMachineInfoWithAdditionalInfo:(id)info;
- (id)getReducedMachineInfo;
- (id)installProfileData:(id)data options:(id)options outError:(id *)error;
- (id)installProfileData:(id)data outError:(id *)error;
- (id)installedConfigurationProfileInfoWithOutMDMProfileInfo:(id *)info;
- (id)installedMDMProfileIdentifier;
- (id)installedProfileDataWithIdentifier:(id)identifier;
- (id)installedProfileIdentifiers;
- (id)installedProfileIdentifiersInstalledBy:(id)by;
- (id)installedProfileWithIdentifier:(id)identifier;
- (id)installedProfilesInstalledBy:(id)by;
- (id)installedSystemProfileDataWithIdentifier:(id)identifier;
- (id)installedSystemProfileWithIdentifier:(id)identifier;
- (id)installedUserProfileDataWithIdentifier:(id)identifier;
- (id)installedUserProfileWithIdentifier:(id)identifier;
- (id)knownAirPrintIPPURLStrings;
- (id)listInstalledProvisioningProfileUUIDsWithManagedOnly:(BOOL)only;
- (id)localizedDescriptionOfCurrentPasscodeConstraints;
- (id)localizedDescriptionOfDefaultNewPasscodeConstraints;
- (id)localizedRestrictionSourceDescriptionForFeatures:(id)features;
- (id)lockedDownRootCertificatesWithOutLocalizedSourceDescription:(id *)description;
- (id)managedAppBundleIDs;
- (id)managedAppIDs;
- (id)managedSystemConfigurationServiceIDs;
- (id)managedWiFiNetworkNames;
- (id)managingOrganizationForFontAtURL:(id)l;
- (id)managingOrganizationInformation;
- (id)objectRestrictionForFeature:(id)feature;
- (id)parametersForBoolSetting:(id)setting;
- (id)parametersForIntersectionSetting:(id)setting;
- (id)parametersForUnionSetting:(id)setting;
- (id)parametersForValueSetting:(id)setting;
- (id)parentalControlsBlockedAppBundleIDs;
- (id)parentalControlsWhitelistedAppBundleIDs;
- (id)passcodeCreationDate;
- (id)passcodeExpiryDate;
- (id)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)type;
- (id)permittedAutoLockSeconds;
- (id)popProfileDataFromHeadOfInstallationQueue;
- (id)provisionalEnrollmentExpirationDate;
- (id)provisiongProfileUUIDsForSignerIdentity:(id)identity;
- (id)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name forBundleID:(id)d outError:(id *)error;
- (id)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name outError:(id *)error;
- (id)recoveryPasscodeExpiryDate;
- (id)removedSystemAppBundleIDs;
- (id)requestEffectiveBoolValueForSetting:(id)setting configurationUUID:(id)d promptOptions:(id)options completion:(id)completion;
- (id)restrictedAppBundleIDsExcludingRemovedSystemApps;
- (id)restrictionEnforcedBlockedAppBundleIDs;
- (id)restrictionEnforcedHomeScreenLayout;
- (id)restrictionEnforcedNotificationSettings;
- (id)restrictionEnforcedNotificationSettingsForBundleID:(id)d;
- (id)restrictionEnforcedWhitelistedAppBundleIDs;
- (id)signerIdentityForBundleID:(id)d;
- (id)skipSetupKeys;
- (id)trustedCodeSigningIdentities;
- (id)tvProviderUserToken;
- (id)uninstalledProfileDataWithIdentifier:(id)identifier targetDevice:(unint64_t)device;
- (id)uninstalledProfileIdentifiersForDevice:(unint64_t)device;
- (id)unverifiedInstalledMDMProfileIdentifier;
- (id)updateProfileWithIdentifier:(id)identifier outError:(id *)error;
- (id)userBookmarks;
- (id)userInfoForClientUUID:(id)d;
- (id)userSettingsForCurrentUser;
- (id)userSettingsForPairedDevice;
- (id)userSettingsForSystem;
- (id)userValueForIntersectionSetting:(id)setting;
- (id)userValueForSetting:(id)setting;
- (id)userValueForUnionSetting:(id)setting;
- (id)valueForFeature:(id)feature;
- (id)valueRestrictionForFeature:(id)feature;
- (id)verifiedTrustedCodeSigningIdentities;
- (int)BOOLRestrictionForFeature:(id)feature;
- (int)_getPasscodeComplianceWarningExpiryDate:(id)date lastLockDate:(id)lockDate outLocalizedTitle:(id *)title outLocalizedMessage:(id *)message;
- (int)appWhitelistState;
- (int)applyRestrictionDictionary:(id)dictionary clientType:(id)type clientUUID:(id)d localizedClientDescription:(id)description localizedWarningMessage:(id)message complianceBlocking:(int)blocking displayImmediateAlert:(BOOL)alert limitForUserEnrollment:(BOOL)self0 outRestrictionChanged:(BOOL *)self1 outEffectiveSettingsChanged:(BOOL *)self2 outError:(id *)self3;
- (int)defaultBoolValueForSetting:(id)setting;
- (int)defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type;
- (int)effectiveBoolValueForSetting:(id)setting configurationUUID:(id)d outAsk:(BOOL *)ask;
- (int)effectiveBoolValueForSetting:(id)setting outAsk:(BOOL *)ask;
- (int)effectiveBoolValueForWatchSetting:(id)setting pairedDevice:(id)device outError:(id *)error;
- (int)effectiveRestrictedBoolValueForSetting:(id)setting;
- (int)getPasscodeComplianceWarningLastLockDate:(id)date outLocalizedTitle:(id *)title outLocalizedMessage:(id *)message;
- (int)hostMayPairWithOptions:(id)options challenge:(id)challenge;
- (int)minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type;
- (int)newPasscodeEntryScreenType;
- (int)newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type;
- (int)recoveryPasscodeUnlockScreenType;
- (int)recoveryPasscodeUnlockScreenTypeWithOutSimplePasscodeType:(int *)type;
- (int)requestEffectiveBoolValueForSetting:(id)setting configurationUUID:(id)d promptOptions:(id)options outError:(id *)error;
- (int)restrictedBoolValueForFeature:(id)feature;
- (int)unlockScreenType;
- (int)unlockScreenTypeForSharedDataVolume:(id)volume OutSimplePasscodeType:(int *)type;
- (int)unlockScreenTypeForUser:(id)user outSimplePasscodeType:(int *)type;
- (int)unlockScreenTypeWithOutSimplePasscodeType:(int *)type;
- (int)userBoolValueForSetting:(id)setting;
- (int)userMode;
- (int64_t)allowedGameCenterPlayerTypes;
- (int64_t)dragDropBidirectionalManagementStateForBaseBundleID:(id)d;
- (int64_t)dragDropSourceManagementStateForBundleID:(id)d;
- (int64_t)dragDropTargetManagementStateForBundleID:(id)d;
- (int64_t)softwareUpdatePath;
- (unint64_t)enforcedSoftwareUpdateDelayInDays;
- (unint64_t)gracePeriod;
- (void)__checkForProfiledCrash;
- (void)_appWhitelistDidChange:(id)change;
- (void)_applyToObservers:(id)observers;
- (void)_createAndResumePublicXPCConnection;
- (void)_createAndResumeXPCConnection;
- (void)_debug_scheduleBackgroundTask:(id)task interval:(double)interval tolerance:(double)tolerance completion:(id)completion;
- (void)_destroyPublicXPCConnectionAndInvalidate:(BOOL)invalidate;
- (void)_destroyXPCConnectionAndInvalidate:(BOOL)invalidate;
- (void)_detectProfiledCrashes;
- (void)_effectiveSettingsDidChange:(id)change;
- (void)_internalDefaultsDidChange;
- (void)_passcodeDidChange;
- (void)_passcodePolicyDidChange;
- (void)_profileListDidChange;
- (void)_queueCreateAndResumePublicXPCConnection;
- (void)_queueCreateAndResumeXPCConnection;
- (void)_restrictionDidChange;
- (void)_setAllowedGrandfatheredRestrictionFeature:(id)feature forRestrictionKey:(id)key;
- (void)addActiveClassroomRole:(id)role;
- (void)addTrustedCodeSigningIdentities:(id)identities;
- (void)allProfilesOutMDMProfileInfo:(id *)info outConfigurationProfilesInfo:(id *)profilesInfo outUninstalledProfilesInfo:(id *)uninstalledProfilesInfo forDeviceType:(unint64_t)type;
- (void)applyPairingWatchMDMEnrollmentData:(id)data completion:(id)completion;
- (void)cancelRequestEffectiveBoolValue:(id)value completion:(id)completion;
- (void)cancelUserInputResponses;
- (void)checkIn;
- (void)checkInAsynchronously;
- (void)checkInIfNeeded;
- (void)checkInWithCompletion:(id)completion;
- (void)clearRecoveryPasscodeWithCompletion:(id)completion;
- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)passcode completionBlock:(id)block;
- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)context completionBlock:(id)block;
- (void)dealloc;
- (void)deleteActivationLockBypassKey;
- (void)doMCICDidBeginInstallingNextProfileData:(id)data completion:(id)completion;
- (void)doMCICDidFinishInstallationWithIdentifier:(id)identifier error:(id)error completion:(id)completion;
- (void)doMCICDidFinishPreflightWithError:(id)error completion:(id)completion;
- (void)doMCICDidRequestMAIDSignIn:(id)in personaID:(id)d completion:(id)completion;
- (void)doMCICDidRequestManagedRestoreWithManagedAppleID:(id)d personaID:(id)iD completion:(id)completion;
- (void)doMCICDidRequestShowUserWarnings:(id)warnings completion:(id)completion;
- (void)doMCICDidRequestUserInput:(id)input completion:(id)completion;
- (void)doMCICDidUpdateStatus:(id)status completion:(id)completion;
- (void)doMCICWaitForEnrollmentToFinishWithCompletion:(id)completion;
- (void)enrollProvisionallyWithNonce:(id)nonce completionBlock:(id)block;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)token completion:(id)completion;
- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)completion;
- (void)forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)block;
- (void)getPasscodeComplianceWarningLastLockDate:(id)date completionBlock:(id)block;
- (void)installProfileData:(id)data interactionDelegate:(id)delegate;
- (void)installProfileData:(id)data options:(id)options interactionDelegate:(id)delegate;
- (void)installStoredProfileDataWithExtraOptions:(id)options completion:(id)completion;
- (void)invalidateRestrictionCache;
- (void)isProfileInstalledWithIdentifier:(id)identifier completion:(id)completion;
- (void)lockDevice;
- (void)lockdownDidReceiveActivationRecord:(id)record;
- (void)markStoredProfileAsInstalled;
- (void)notifyClientsToRecomputeCompliance;
- (void)notifyDeviceUnlocked;
- (void)notifyDeviceUnlockedAndPasscodeRequired;
- (void)notifyUserHasSeenComplianceMessageWithLastLockDate:(id)date;
- (void)preflightUserInputResponses:(id)responses forPayloadIndex:(unint64_t)index;
- (void)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name forBundleID:(id)d completion:(id)completion;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)block;
- (void)recomputeUserComplianceWarning;
- (void)recomputeUserComplianceWarningSynchronously;
- (void)registerObserver:(id)observer;
- (void)removeActiveClassroomRole:(id)role;
- (void)removeBoolSetting:(id)setting;
- (void)removeExpiredProfiles;
- (void)removeOrphanedClientRestrictions;
- (void)removeOrphanedClientRestrictionsWithCompletion:(id)completion;
- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)completion;
- (void)removeProfileAsyncWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type errorCompletion:(id)completion;
- (void)removeProtectedProfileAsyncWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)completion;
- (void)removeTrustedCodeSigningIdentities:(id)identities;
- (void)removeUninstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType completion:(id)completion;
- (void)removeValueSetting:(id)setting;
- (void)rereadManagedAppAttributes;
- (void)resetPasscodeMetadataWithCompletion:(id)completion;
- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)completion;
- (void)retrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)block;
- (void)retrieveCloudConfigurationDetailsCompletionBlock:(id)block;
- (void)retrieveCloudConfigurationFromURL:(id)l username:(id)username password:(id)password anchorCertificates:(id)certificates additionalMachineInfo:(id)info completionBlock:(id)block;
- (void)retrieveCloudConfigurationWithoutValidationCompletionBlock:(id)block;
- (void)setActiveClassroomRoles:(id)roles;
- (void)setClassroomInstructorRoleEnabled:(BOOL)enabled;
- (void)setClassroomStudentRoleEnabled:(BOOL)enabled;
- (void)setGracePeriod:(unint64_t)period passcode:(id)passcode completionBlock:(id)block;
- (void)setParameters:(id)parameters forBoolSetting:(id)setting;
- (void)setParameters:(id)parameters forValueSetting:(id)setting;
- (void)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set waitUntilCompleted:(BOOL)completed errorCompletionBlock:(id)block;
- (void)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user passcode:(id)passcode credentialSet:(id)set waitUntilCompleted:(BOOL)completed errorCompletionBlock:(id)self0;
- (void)setParentalControlsBlockedAppBundleIDs:(id)ds;
- (void)setParentalControlsWhitelistedAppBundleIDs:(id)ds;
- (void)setUserBookmarks:(id)bookmarks;
- (void)setUserInfo:(id)info forClientUUID:(id)d;
- (void)setValue:(id)value forSetting:(id)setting;
- (void)setValue:(id)value forSetting:(id)setting credentialSet:(id)set completion:(id)completion;
- (void)setValue:(id)value forSetting:(id)setting passcode:(id)passcode completion:(id)completion;
- (void)setWebContentFilterAutoPermittedURLStrings:(id)strings;
- (void)setWebContentFilterUserBlacklistedURLStrings:(id)strings;
- (void)setupAssistantDidFinishWithCompletion:(id)completion;
- (void)shutDownWithCompletion:(id)completion;
- (void)startMonitoringEnrollmentStateWithPersonaID:(id)d;
- (void)stopMonitoringEnrollmentState;
- (void)storeCertificateData:(id)data forHostIdentifier:(id)identifier;
- (void)storeCloudConfigurationDetails:(id)details waitUntilCompleted:(BOOL)completed completion:(id)completion;
- (void)storePendingCloudConfigurationDetailsForMigration:(id)migration completionHandler:(id)handler;
- (void)storeProfileData:(id)data completion:(id)completion;
- (void)storedProfileDataWithCompletion:(id)completion;
- (void)submitUserInputResponses:(id)responses;
- (void)unenrollWithCompletionBlock:(id)block;
- (void)unregisterObserver:(id)observer;
- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)completion;
- (void)updateCloudConfigurationWithLastPushTokenHash:(id)hash;
- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)identifier;
- (void)updateMDMEnrollmentInfoForPairingWatch:(id)watch completion:(id)completion;
- (void)updateProfileWithIdentifier:(id)identifier interactionDelegate:(id)delegate;
- (void)validateAppBundleIDs:(id)ds waitUntilCompleted:(BOOL)completed completion:(id)completion;
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

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.datamigrator"];

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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

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

    uTF8String = [@"com.apple.managedconfiguration.appwhitelistdidchange" UTF8String];
    v47 = notificationQueue();
    v148[0] = MEMORY[0x1E69E9820];
    v148[1] = 3221225472;
    v148[2] = __27__MCProfileConnection_init__block_invoke_21;
    v148[3] = &unk_1E77D01F8;
    v48 = v43;
    v149 = v48;
    notify_register_dispatch(uTF8String, &out_token, v47, v148);

    v49 = v3->_notificationTokens;
    v50 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v49 addObject:v50];

    uTF8String2 = [@"com.apple.managedconfiguration.defaultsdidchange" UTF8String];
    v52 = notificationQueue();
    v146[0] = MEMORY[0x1E69E9820];
    v146[1] = 3221225472;
    v146[2] = __27__MCProfileConnection_init__block_invoke_22;
    v146[3] = &unk_1E77D01F8;
    v53 = v48;
    v147 = v53;
    notify_register_dispatch(uTF8String2, &out_token, v52, v146);

    v54 = v3->_notificationTokens;
    v55 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v54 addObject:v55];

    uTF8String3 = [@"com.apple.managedconfiguration.keyboardsettingschanged" UTF8String];
    v57 = notificationQueue();
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __27__MCProfileConnection_init__block_invoke_23;
    v144[3] = &unk_1E77D01F8;
    v58 = v53;
    v145 = v58;
    notify_register_dispatch(uTF8String3, &out_token, v57, v144);

    v59 = v3->_notificationTokens;
    v60 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v59 addObject:v60];

    uTF8String4 = [@"com.apple.managedconfiguration.newssettingschanged" UTF8String];
    v62 = notificationQueue();
    v142[0] = MEMORY[0x1E69E9820];
    v142[1] = 3221225472;
    v142[2] = __27__MCProfileConnection_init__block_invoke_24;
    v142[3] = &unk_1E77D01F8;
    v63 = v58;
    v143 = v63;
    notify_register_dispatch(uTF8String4, &out_token, v62, v142);

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

    uTF8String5 = [@"com.apple.managedconfiguration.webFilterUIActiveDidChange" UTF8String];
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __27__MCProfileConnection_init__block_invoke_26;
    v138[3] = &unk_1E77D01F8;
    v72 = v68;
    v139 = v72;
    v73 = MEMORY[0x1E69E96A0];
    notify_register_dispatch(uTF8String5, &out_token, MEMORY[0x1E69E96A0], v138);
    v74 = v3->_notificationTokens;
    v75 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v74 addObject:v75];

    uTF8String6 = [@"com.apple.ManagedConfiguration.managedAppsChanged" UTF8String];
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __27__MCProfileConnection_init__block_invoke_27;
    v136[3] = &unk_1E77D01F8;
    v77 = v72;
    v137 = v77;
    notify_register_dispatch(uTF8String6, &out_token, v73, v136);

    v78 = v3->_notificationTokens;
    v79 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v78 addObject:v79];

    uTF8String7 = [@"MCManagedBooksChanged" UTF8String];
    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __27__MCProfileConnection_init__block_invoke_28;
    v134[3] = &unk_1E77D01F8;
    v81 = v77;
    v135 = v81;
    notify_register_dispatch(uTF8String7, &out_token, v73, v134);

    v82 = v3->_notificationTokens;
    v83 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v82 addObject:v83];

    uTF8String8 = [@"com.apple.managedconfiguration.allowpasscodemodificationchanged" UTF8String];
    v85 = notificationQueue();
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __27__MCProfileConnection_init__block_invoke_29;
    v132[3] = &unk_1E77D01F8;
    v86 = v81;
    v133 = v86;
    notify_register_dispatch(uTF8String8, &out_token, v85, v132);

    v87 = v3->_notificationTokens;
    v88 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v87 addObject:v88];

    uTF8String9 = [@"com.apple.ManagedConfiguration.removedSystemAppsChanged" UTF8String];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __27__MCProfileConnection_init__block_invoke_30;
    v130[3] = &unk_1E77D01F8;
    v90 = v86;
    v131 = v90;
    notify_register_dispatch(uTF8String9, &out_token, v73, v130);

    v91 = v3->_notificationTokens;
    v92 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v91 addObject:v92];

    uTF8String10 = [@"com.apple.ManagedConfiguration.diagnosticsCollected" UTF8String];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __27__MCProfileConnection_init__block_invoke_31;
    v128[3] = &unk_1E77D01F8;
    v94 = v90;
    v129 = v94;
    notify_register_dispatch(uTF8String10, &out_token, v73, v128);

    v95 = v3->_notificationTokens;
    v96 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v95 addObject:v96];

    uTF8String11 = [@"com.apple.managedconfiguration.allowhealthdatasubmissionchanged" UTF8String];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __27__MCProfileConnection_init__block_invoke_32;
    v126[3] = &unk_1E77D01F8;
    v98 = v94;
    v127 = v98;
    notify_register_dispatch(uTF8String11, &out_token, v73, v126);

    v99 = v3->_notificationTokens;
    v100 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [(NSMutableArray *)v99 addObject:v100];

    uTF8String12 = [@"com.apple.managedconfiguration.homescreenlayoutchanged" UTF8String];
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __27__MCProfileConnection_init__block_invoke_33;
    v124[3] = &unk_1E77D01F8;
    v102 = v98;
    v125 = v102;
    notify_register_dispatch(uTF8String12, &out_token, v73, v124);

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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v111 selector:sel__restrictionDidChange name:@"com.apple.managedconfiguration.restrictionchanged" object:v111];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v111 selector:sel__passcodePolicyDidChange name:@"PINPolicyChangedNotification" object:v111];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v111 selector:sel__passcodeDidChange name:@"com.apple.managedconfiguration.passcodechanged" object:v111];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v111 selector:sel__profileListDidChange name:@"com.apple.ManagedConfiguration.profileListChanged" object:v111];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v111 selector:sel__effectiveSettingsDidChange_ name:@"com.apple.managedconfiguration.effectivesettingschanged" object:v111];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v111 selector:sel__defaultsDidChange name:@"com.apple.managedconfiguration.defaultsdidchange" object:v111];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v111 selector:sel__appWhitelistDidChange_ name:@"com.apple.managedconfiguration.appwhitelistdidchange" object:v111];
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
  effectiveUserSettings = [v3 effectiveUserSettings];
  v5 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v5 currentRestrictions];
  v7 = [MCRestrictionManager appWhitelistStateWithSettingsDictionary:effectiveUserSettings restrictionsDictionary:currentRestrictions];

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
  isPasscodeSet = [v2 isPasscodeSet];

  return isPasscodeSet;
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
    effectiveWhitelistedAppBundleIDs = [v3 effectiveWhitelistedAppBundleIDs];
    v2 = [effectiveWhitelistedAppBundleIDs copy];
  }

  return v2;
}

- (id)effectiveUserSettings
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  effectiveUserSettings = [v2 effectiveUserSettings];

  return effectiveUserSettings;
}

- (BOOL)isSupervised
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  return isSupervised;
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
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  if ([mEMORY[0x1E69DF068] isSharedIPad])
  {
    currentUser = [mEMORY[0x1E69DF068] currentUser];
    isTransientUser = [currentUser isTransientUser];
  }

  else
  {
    isTransientUser = 1;
  }

  return isTransientUser;
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
  attributesByAppID = [MEMORY[0x1E69AD440] attributesByAppID];
  allKeys = [attributesByAppID allKeys];

  return allKeys;
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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  if (!isSupervised)
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

- (void)_destroyXPCConnectionAndInvalidate:(BOOL)invalidate
{
  xpcConnectionSyncQueue = self->_xpcConnectionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MCProfileConnection__destroyXPCConnectionAndInvalidate___block_invoke;
  v4[3] = &unk_1E77D01A8;
  invalidateCopy = invalidate;
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

- (void)_destroyPublicXPCConnectionAndInvalidate:(BOOL)invalidate
{
  publicXPCConnectionSyncQueue = self->_publicXPCConnectionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MCProfileConnection__destroyPublicXPCConnectionAndInvalidate___block_invoke;
  v4[3] = &unk_1E77D01A8;
  invalidateCopy = invalidate;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v2 = [publicXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_55];
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

- (void)checkInWithCompletion:(id)completion
{
  v4 = MEMORY[0x1AC55F990](completion, a2);
  if (!v4)
  {
    v4 = &__block_literal_global_57;
  }

  v7 = v4;
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v6 = [publicXPCConnection remoteObjectProxyWithErrorHandler:v7];
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
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v2 = [publicXPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
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

- (void)_applyToObservers:(id)observers
{
  v25 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
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
        observersCopy[2](observersCopy, v10);
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

- (void)_appWhitelistDidChange:(id)change
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

- (void)_effectiveSettingsDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MCProfileConnection__effectiveSettingsDidChange___block_invoke;
  v6[3] = &unk_1E77D02D8;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
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

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  notificationSyncQueue = self->_notificationSyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MCProfileConnection_registerObserver___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationSyncQueue, v7);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  notificationSyncQueue = self->_notificationSyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MCProfileConnection_unregisterObserver___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationSyncQueue, v7);
}

- (id)activeClassroomRoles
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"classroomRoles"];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)setActiveClassroomRoles:(id)roles
{
  allObjects = [roles allObjects];
  [(MCProfileConnection *)self setValues:allObjects forIntersectionSetting:@"classroomRoles" toSystem:0 user:1];
}

- (void)addActiveClassroomRole:(id)role
{
  roleCopy = role;
  activeClassroomRoles = [(MCProfileConnection *)self activeClassroomRoles];
  v6 = [activeClassroomRoles mutableCopy];

  [v6 addObject:roleCopy];
  [(MCProfileConnection *)self setActiveClassroomRoles:v6];
}

- (void)removeActiveClassroomRole:(id)role
{
  roleCopy = role;
  activeClassroomRoles = [(MCProfileConnection *)self activeClassroomRoles];
  v6 = [activeClassroomRoles mutableCopy];

  [v6 removeObject:roleCopy];
  [(MCProfileConnection *)self setActiveClassroomRoles:v6];
}

- (BOOL)isClassroomStudentRoleEnabled
{
  activeClassroomRoles = [(MCProfileConnection *)self activeClassroomRoles];
  v3 = [activeClassroomRoles containsObject:@"student"];

  return v3;
}

- (void)setClassroomStudentRoleEnabled:(BOOL)enabled
{
  if (enabled)
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
  activeClassroomRoles = [(MCProfileConnection *)self activeClassroomRoles];
  v3 = [activeClassroomRoles containsObject:@"instructor"];

  return v3;
}

- (void)setClassroomInstructorRoleEnabled:(BOOL)enabled
{
  if (enabled)
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
  activeClassroomRoles = [(MCProfileConnection *)self activeClassroomRoles];
  if ([activeClassroomRoles containsObject:@"instructor"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [activeClassroomRoles containsObject:@"student"];
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

- (int)restrictedBoolValueForFeature:(id)feature
{
  featureCopy = feature;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [(MCProfileConnection *)self BOOLRestrictionForFeature:featureCopy];

  return self;
}

- (id)valueForFeature:(id)feature
{
  featureCopy = feature;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [(MCProfileConnection *)self valueRestrictionForFeature:featureCopy];

  return v5;
}

- (int)effectiveRestrictedBoolValueForSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [(MCProfileConnection *)self effectiveBoolValueForSetting:settingCopy];

  return self;
}

- (id)installedMDMProfileIdentifier
{
  v28 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  unverifiedInstalledMDMProfileIdentifier = [(MCProfileConnection *)self unverifiedInstalledMDMProfileIdentifier];
  if (unverifiedInstalledMDMProfileIdentifier)
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__MCProfileConnection_Profiles__installedMDMProfileIdentifier__block_invoke;
    v13[3] = &unk_1E77D2620;
    v13[4] = &v14;
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
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
        mCVerboseDescription = [v15[5] MCVerboseDescription];
        *buf = 138543362;
        v27 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "MDM profile installation check failed with error: %{public}@", buf, 0xCu);
      }

      v8 = v21[5];
      if (!v8)
      {
        v8 = unverifiedInstalledMDMProfileIdentifier;
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
  allInstalledProfileIdentifiers = [v2 allInstalledProfileIdentifiers];

  return allInstalledProfileIdentifiers;
}

- (id)uninstalledProfileIdentifiersForDevice:(unint64_t)device
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCHoldingTankManifest sharedManifest];
  v5 = [v4 uninstalledProfileIdentifiersForDevice:device];

  return v5;
}

- (id)installedProfileIdentifiersInstalledBy:(id)by
{
  v25 = *MEMORY[0x1E69E9840];
  byCopy = by;
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
          installOptions = [v11 installOptions];
          v13 = [installOptions objectForKey:@"installedBy"];

          if (v13 && [v13 isEqualToString:byCopy])
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

- (id)installedProfilesInstalledBy:(id)by
{
  v25 = *MEMORY[0x1E69E9840];
  byCopy = by;
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
          installOptions = [v12 installOptions];
          v14 = [installOptions objectForKey:@"installedBy"];

          if (v14 && [v14 isEqualToString:byCopy])
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

- (id)installedConfigurationProfileInfoWithOutMDMProfileInfo:(id *)info
{
  v37 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  unverifiedInstalledMDMProfileIdentifier = [(MCProfileConnection *)self unverifiedInstalledMDMProfileIdentifier];
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
          managingProfileIdentifier = [v13 managingProfileIdentifier];
          v16 = managingProfileIdentifier;
          if (managingProfileIdentifier)
          {
            v17 = managingProfileIdentifier;
          }

          else
          {
            [v13 installOptions];
            v18 = v7;
            v19 = v6;
            v21 = v20 = unverifiedInstalledMDMProfileIdentifier;
            v17 = [v21 objectForKey:@"managingProfileIdentifier"];

            unverifiedInstalledMDMProfileIdentifier = v20;
            v6 = v19;
            v7 = v18;
            v8 = v29;
          }

          if ([v10 isEqualToString:unverifiedInstalledMDMProfileIdentifier])
          {
            v22 = v14;

            v7 = v22;
            v11 = v31;
          }

          else
          {
            v11 = v31;
            if (([unverifiedInstalledMDMProfileIdentifier isEqualToString:v17] & 1) == 0)
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

  if (info)
  {
    v23 = v7;
    *info = v7;
  }

  v24 = [v28 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)installedProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedProfileWithIdentifier:identifierCopy];

  return v5;
}

- (id)installedSystemProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedSystemProfileWithIdentifier:identifierCopy];

  return v5;
}

- (id)installedUserProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedUserProfileWithIdentifier:identifierCopy];

  return v5;
}

- (BOOL)isProfileInstalledWithIdentifier:(id)identifier outError:(id *)error
{
  identifierCopy = identifier;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_outError___block_invoke;
  v12[3] = &unk_1E77D2620;
  v12[4] = &v13;
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_outError___block_invoke_7;
  v11[3] = &unk_1E77D2670;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 isProfileInstalledWithIdentifier:identifierCopy completion:v11];
  if (error)
  {
    *error = v14[5];
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

- (void)isProfileInstalledWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_completion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v9 = completionCopy;
  v15 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MCProfileConnection_Profiles__isProfileInstalledWithIdentifier_completion___block_invoke_9;
  v12[3] = &unk_1E77D26C0;
  v13 = v9;
  v11 = v9;
  [v10 isProfileInstalledWithIdentifier:identifierCopy completion:v12];
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

- (id)installedProfileDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedProfileDataWithIdentifier:identifierCopy];

  return v5;
}

- (id)installedSystemProfileDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedSystemProfileDataWithIdentifier:identifierCopy];

  return v5;
}

- (id)installedUserProfileDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCManifest installedUserProfileDataWithIdentifier:identifierCopy];

  return v5;
}

- (id)uninstalledProfileDataWithIdentifier:(id)identifier targetDevice:(unint64_t)device
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCHoldingTankManifest sharedManifest];
  v8 = [v7 uninstalledProfileDataWithIdentifier:identifierCopy targetDevice:device];

  return v8;
}

- (BOOL)isProfileWithIdentifier:(id)identifier managedByProfileWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  v7 = +[MCDependencyReader sharedReader];
  v8 = [v7 dependentsOfParent:withIdentifierCopy inDomain:@"ManagingProfileToManagedProfile"];

  LOBYTE(v7) = [v8 containsObject:identifierCopy];
  return v7;
}

- (void)allProfilesOutMDMProfileInfo:(id *)info outConfigurationProfilesInfo:(id *)profilesInfo outUninstalledProfilesInfo:(id *)uninstalledProfilesInfo forDeviceType:(unint64_t)type
{
  v33 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v11 = [(MCProfileConnection *)self installedConfigurationProfileInfoWithOutMDMProfileInfo:info];
  if (profilesInfo)
  {
    v11 = v11;
    *profilesInfo = v11;
  }

  if (uninstalledProfilesInfo)
  {
    v26 = v11;
    uninstalledProfilesInfoCopy = uninstalledProfilesInfo;
    v12 = +[MCHoldingTankManifest sharedManifest];
    v13 = [(MCProfileConnection *)self uninstalledProfileIdentifiersForDevice:type];
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
          v22 = [v12 uninstalledProfileWithIdentifier:v20 targetDevice:type];
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
    *uninstalledProfilesInfoCopy = v14;

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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_29];
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

- (id)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)type
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__MCProfileConnection_Profiles__peekProfileDataFromPurgatoryForDeviceType___block_invoke_15;
  v9[3] = &unk_1E77D26E8;
  v9[4] = &v10;
  [v6 peekProfileDataFromPurgatoryForDeviceType:type withCompletion:v9];

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

- (id)_handleQueueProfileError:(id)error targetDevice:(unint64_t)device
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = +[MCUserNotificationManager sharedManager];
  v7 = [v6 displayQueueProfileError:errorCopy targetDevice:device];

  if ([errorCopy code] == 4036)
  {
    v8 = 0;
  }

  else
  {
    v9 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      mCVerboseDescription = [errorCopy MCVerboseDescription];
      v14 = 138543362;
      v15 = mCVerboseDescription;
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

- (void)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name forBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  nameCopy = name;
  acceptanceCopy = acceptance;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self _queueDataForAcceptance:acceptanceCopy originalFileName:nameCopy originatingBundleID:dCopy transitionToUI:1 completion:completionCopy];
}

- (id)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name outError:(id *)error
{
  nameCopy = name;
  acceptanceCopy = acceptance;
  [(MCProfileConnection *)self checkInIfNeeded];
  v10 = [(MCProfileConnection *)self _queueDataForAcceptance:acceptanceCopy originalFileName:nameCopy originatingBundleID:0 transitionToUI:1 outError:error];

  return v10;
}

- (id)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name forBundleID:(id)d outError:(id *)error
{
  dCopy = d;
  nameCopy = name;
  acceptanceCopy = acceptance;
  [(MCProfileConnection *)self checkInIfNeeded];
  v13 = [(MCProfileConnection *)self _queueDataForAcceptance:acceptanceCopy originalFileName:nameCopy originatingBundleID:dCopy transitionToUI:1 outError:error];

  return v13;
}

- (id)installProfileData:(id)data outError:(id *)error
{
  dataCopy = data;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = [(MCProfileConnection *)self installProfileData:dataCopy options:0 outError:error];

  return v7;
}

- (id)installProfileData:(id)data options:(id)options outError:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MCProfileConnection_Profiles__installProfileData_options_outError___block_invoke_19;
  v15[3] = &unk_1E77D2788;
  v15[4] = &v17;
  v15[5] = &v23;
  [v12 installProfileData:dataCopy interactive:0 options:optionsCopy completion:v15];

  if (error)
  {
    *error = v18[5];
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

- (id)appleConnect_installMDMAssociatedProfileData:(id)data outError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  installedMDMProfileIdentifier = [(MCProfileConnection *)self installedMDMProfileIdentifier];
  if (installedMDMProfileIdentifier)
  {
    v15 = objc_opt_new();
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isInstalledByMDM"];
    [v15 setObject:installedMDMProfileIdentifier forKeyedSubscript:@"managingProfileIdentifier"];
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__MCProfileConnection_Profiles__appleConnect_installMDMAssociatedProfileData_outError___block_invoke_24;
    v24[3] = &unk_1E77D2788;
    v24[4] = &v26;
    v24[5] = &buf;
    [v19 appleConnect_installMDMAssociatedProfileData:dataCopy interactive:0 options:v15 completion:v24];

    if (error)
    {
      *error = v27[5];
    }

    error = *(*(&buf + 1) + 40);

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = MCErrorArray(@"ERROR_NO_ASSOCIATED_MDM_PROFILE", v7, v8, v9, v10, v11, v12, v13, 0);
    *error = [v20 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4046 descriptionArray:v21 errorType:@"MCFatalError"];

    error = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return error;
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

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type
{
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_26];

  [v8 removeProfileWithIdentifier:identifierCopy installationType:type completion:&__block_literal_global_26];
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

- (void)removeProfileAsyncWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__MCProfileConnection_Profiles__removeProfileAsyncWithIdentifier_installationType_completion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x1AC55F990](v14);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];

  [v13 removeProfileWithIdentifier:identifierCopy installationType:type completion:v11];
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

- (void)removeProtectedProfileAsyncWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__MCProfileConnection_Profiles__removeProtectedProfileAsyncWithIdentifier_installationType_completion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x1AC55F990](v14);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];

  [v13 removeProtectedProfileWithIdentifier:identifierCopy installationType:type completion:v11];
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

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__MCProfileConnection_Profiles__removeProfileWithIdentifier_installationType_completion___block_invoke;
    v12[3] = &unk_1E77D2698;
    v13 = completionCopy;
    v11 = MEMORY[0x1AC55F990](v12);
  }

  else
  {
    v11 = 0;
  }

  [(MCProfileConnection *)self removeProfileWithIdentifier:identifierCopy installationType:type errorCompletion:v11];
}

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type errorCompletion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__MCProfileConnection_Profiles__removeProfileWithIdentifier_installationType_errorCompletion___block_invoke;
  v14[3] = &unk_1E77D2698;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x1AC55F990](v14);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];

  [v13 removeProfileWithIdentifier:identifierCopy installationType:type completion:v11];
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

- (void)removeUninstalledProfileWithIdentifier:(id)identifier installationType:(int64_t)type targetDeviceType:(unint64_t)deviceType completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self checkApplicationIdentifierEntitlement];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__MCProfileConnection_Profiles__removeUninstalledProfileWithIdentifier_installationType_targetDeviceType_completion___block_invoke;
  v16[3] = &unk_1E77D2698;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = MEMORY[0x1AC55F990](v16);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v13];

  [v15 removeUninstalledProfileWithIdentifier:identifierCopy installationType:type targetDeviceType:deviceType completion:v13];
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

- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__MCProfileConnection_Profiles__removePostSetupAutoInstallSetAsideProfileWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];

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

- (id)updateProfileWithIdentifier:(id)identifier outError:(id *)error
{
  identifierCopy = identifier;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MCProfileConnection_Profiles__updateProfileWithIdentifier_outError___block_invoke_27;
  v12[3] = &unk_1E77D2788;
  v12[4] = &v14;
  v12[5] = &v20;
  [v9 updateProfileIdentifier:identifierCopy interactive:0 completion:v12];

  if (error)
  {
    *error = v15[5];
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

- (BOOL)showProfileErrorUIWithProfileIdentifier:(id)identifier outError:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![identifierCopy length])
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

        identifier = [*(*(&v50 + 1) + 8 * i) identifier];
        v20 = [identifier isEqualToString:identifierCopy];

        if (v20)
        {

          uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v29 = [identifierCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@&profileID=%@", @"prefs:root=General&path=ManagedConfigurationList/ProfileError", v29, v50];
          if ([(MCProfileConnection *)self _openSensitiveURLString:v32 unlock:0])
          {
            v30 = 0;
          }

          else
          {
            v42 = MEMORY[0x1E696ABC0];
            v43 = MCErrorArray(@"ERROR_UIOP_CANNOT_DISPLAY_P_IDENTIFIER", v33, v34, v35, v36, v37, v38, v39, identifierCopy);
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
  v29 = MCErrorArray(@"ERROR_UIOP_IDENTIFIER_NOT_FOUND_P_IDENTIFIER", v22, v23, v24, v25, v26, v27, v28, identifierCopy);
  v30 = [v21 MCErrorWithDomain:@"MCUIOperationErrorDomain" code:27000 descriptionArray:v29 errorType:@"MCFatalError"];
LABEL_17:

  if (v30)
  {
LABEL_18:
    v44 = qword_1ED4ADE28;
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
    {
      v45 = v44;
      mCVerboseDescription = [v30 MCVerboseDescription];
      *buf = 138543618;
      v55 = identifierCopy;
      v56 = 2114;
      v57 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_ERROR, "Cannot display profile with identifier “%{public}@”. Error: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v47 = v30;
      *error = v30;
    }
  }

LABEL_22:

  v48 = *MEMORY[0x1E69E9840];
  return v30 == 0;
}

- (id)listInstalledProvisioningProfileUUIDsWithManagedOnly:(BOOL)only
{
  onlyCopy = only;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  array = [MEMORY[0x1E695DF70] array];
  v5 = 0;
  v14 = array;
  if (onlyCopy)
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

- (BOOL)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier outError:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  [v12 installProvisioningProfileData:dataCopy managingProfileIdentifier:identifierCopy completion:v10];

  if (error)
  {
    *error = v17[5];
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

- (BOOL)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier outError:(id *)error
{
  dCopy = d;
  identifierCopy = identifier;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__MCProfileConnection_Profiles__removeProvisioningProfileWithUUID_managingProfileIdentifier_outError___block_invoke_76;
  v15[3] = &unk_1E77D2800;
  v15[4] = &v23;
  v15[5] = &v17;
  [v12 removeProvisioningProfileWithUUID:dCopy managingProfileIdentifier:identifierCopy completion:v15];

  if (error)
  {
    *error = v18[5];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];
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

- (void)addTrustedCodeSigningIdentities:(id)identities
{
  v4 = MEMORY[0x1E695DFA8];
  identitiesCopy = identities;
  trustedCodeSigningIdentities = [(MCProfileConnection *)self trustedCodeSigningIdentities];
  v8 = [v4 setWithArray:trustedCodeSigningIdentities];

  [v8 unionSet:identitiesCopy];
  allObjects = [v8 allObjects];
  [(MCProfileConnection *)self _setTrustedCodeSigningIdentities:allObjects];
}

- (void)removeTrustedCodeSigningIdentities:(id)identities
{
  v4 = MEMORY[0x1E695DFA8];
  identitiesCopy = identities;
  trustedCodeSigningIdentities = [(MCProfileConnection *)self trustedCodeSigningIdentities];
  v8 = [v4 setWithArray:trustedCodeSigningIdentities];

  [v8 minusSet:identitiesCopy];
  allObjects = [v8 allObjects];
  [(MCProfileConnection *)self _setTrustedCodeSigningIdentities:allObjects];
}

- (BOOL)syncTrustedCodeSigningIdentitiesWithOutError:(id *)error
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__MCProfileConnection_Profiles__syncTrustedCodeSigningIdentitiesWithOutError___block_invoke_84;
  v9[3] = &unk_1E77D2620;
  v9[4] = &v11;
  [v7 syncTrustedCodeSigningIdentitiesWithCompletion:v9];

  if (error)
  {
    *error = v12[5];
  }

  _Block_object_dispose(&v11, 8);
  return error == 0;
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

- (id)provisiongProfileUUIDsForSignerIdentity:(id)identity
{
  identityCopy = identity;
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
  v5 = identityCopy;
  v16 = v5;
  v6 = MEMORY[0x1AC55F990](v15);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v6];
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

- (id)signerIdentityForBundleID:(id)d
{
  dCopy = d;
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
  v5 = dCopy;
  v16 = v5;
  v6 = MEMORY[0x1AC55F990](v15);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v6];
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

- (BOOL)isProvisioningProfilesWithUUID:(id)d managedByProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v7 = +[MCDependencyReader sharedReader];
  v8 = [v7 dependentsOfParent:identifierCopy inDomain:@"ManagingProfileToProvisioningProfile"];

  LOBYTE(v7) = [v8 containsObject:dCopy];
  return v7;
}

- (BOOL)getIsBundleBlocked:(BOOL *)blocked bundlePath:(id)path outHash:(id *)hash outHashType:(id *)type outError:(id *)error
{
  pathCopy = path;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v15 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__MCProfileConnection_Profiles__getIsBundleBlocked_bundlePath_outHash_outHashType_outError___block_invoke_87;
  v18[3] = &unk_1E77D28C8;
  v18[4] = &v38;
  v18[5] = &v32;
  v18[6] = &v26;
  v18[7] = &v20;
  [v15 isBundleBlocked:pathCopy completion:v18];

  if (blocked)
  {
    *blocked = *(v39 + 24);
  }

  if (hash)
  {
    *hash = v33[5];
  }

  if (type)
  {
    *type = v27[5];
  }

  if (error)
  {
    *error = v21[5];
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

- (BOOL)getAreBundlesBlocked:(id *)blocked bundlePaths:(id)paths outError:(id *)error
{
  pathsCopy = paths;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__MCProfileConnection_Profiles__getAreBundlesBlocked_bundlePaths_outError___block_invoke_89;
  v13[3] = &unk_1E77D28F0;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 areBundlesBlocked:pathsCopy completion:v13];

  if (blocked)
  {
    *blocked = v22[5];
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

- (void)installProfileData:(id)data interactionDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataCopy = data;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self installProfileData:dataCopy options:0 interactionDelegate:delegateCopy];
}

+ (id)profileDaemonConnectionErrorWithUnderlyingError:(id)error
{
  v3 = MEMORY[0x1E696ABC0];
  errorCopy = error;
  v12 = MCErrorArray(@"ERROR_PROFILE_INSTALLATION_FAILED_TITLE", v5, v6, v7, v8, v9, v10, v11, 0);
  v13 = [v3 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4045 descriptionArray:v12 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v13;
}

+ (id)profileInstallationErrorWithUnderlyingError:(id)error
{
  v3 = MEMORY[0x1E696ABC0];
  errorCopy = error;
  v12 = MCErrorArray(@"ERROR_PROFILE_INSTALLATION_FAILED_TITLE", v5, v6, v7, v8, v9, v10, v11, 0);
  v13 = [v3 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:v12 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v13;
}

- (void)installProfileData:(id)data options:(id)options interactionDelegate:(id)delegate
{
  dataCopy = data;
  optionsCopy = options;
  delegateCopy = delegate;
  [(MCProfileConnection *)self checkInIfNeeded];
  objc_storeStrong(&self->_originalProfileData, data);
  objc_storeWeak(&self->_interactionDelegate, delegateCopy);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__MCProfileConnection_Profiles__installProfileData_options_interactionDelegate___block_invoke;
  v17[3] = &unk_1E77D2918;
  v17[4] = self;
  objc_copyWeak(&v18, &location);
  v12 = MEMORY[0x1AC55F990](v17);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MCProfileConnection_Profiles__installProfileData_options_interactionDelegate___block_invoke_95;
  v15[3] = &unk_1E77D2940;
  v15[4] = self;
  objc_copyWeak(&v16, &location);
  [v14 installProfileData:dataCopy interactive:1 options:optionsCopy completion:v15];

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

- (void)updateProfileWithIdentifier:(id)identifier interactionDelegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  [(MCProfileConnection *)self checkInIfNeeded];
  objc_storeWeak(&self->_interactionDelegate, delegateCopy);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__MCProfileConnection_Profiles__updateProfileWithIdentifier_interactionDelegate___block_invoke;
  v13[3] = &unk_1E77D2918;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v8 = MEMORY[0x1AC55F990](v13);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__MCProfileConnection_Profiles__updateProfileWithIdentifier_interactionDelegate___block_invoke_96;
  v11[3] = &unk_1E77D2940;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  [v10 updateProfileIdentifier:identifierCopy interactive:delegateCopy != 0 completion:v11];

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

  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  v4 = [mEMORY[0x1E69AD420] userMode] != 1;

  return v4;
}

- (BOOL)mustInstallProfileNonInteractively:(id)interactively
{
  interactivelyCopy = interactively;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (-[MCProfileConnection isProfileUIInstallationEffectivelyAllowed](self, "isProfileUIInstallationEffectivelyAllowed") && ([interactivelyCopy mustInstallNonInteractively] & 1) == 0)
  {
    v5 = MCIsEffectivelyInAppWhitelistMode();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)preflightUserInputResponses:(id)responses forPayloadIndex:(unint64_t)index
{
  responsesCopy = responses;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Profiles) preflightUserInputResponses:forPayloadIndex:];
  }

  userInputReplyBlock = self->userInputReplyBlock;
  if (userInputReplyBlock)
  {
    userInputReplyBlock[2](userInputReplyBlock, responsesCopy, 1, index, 0);
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

- (void)submitUserInputResponses:(id)responses
{
  responsesCopy = responses;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Profiles) submitUserInputResponses:];
  }

  userInputReplyBlock = self->userInputReplyBlock;
  if (userInputReplyBlock)
  {
    (*(userInputReplyBlock + 2))(userInputReplyBlock, responsesCopy, 0, 0, 0);
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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  return isSupervised;
}

- (id)chaperoneOrganization
{
  [(MCProfileConnection *)self checkInIfNeeded];
  cloudConfigurationDetails = [(MCProfileConnection *)self cloudConfigurationDetails];
  v4 = [cloudConfigurationDetails objectForKeyedSubscript:*MEMORY[0x1E6999788]];

  return v4;
}

- (id)effectiveRestrictions
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v2 currentRestrictions];

  return currentRestrictions;
}

- (id)effectiveRestrictionsForPairedDevice
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = objc_alloc_init(MEMORY[0x1E695DF20]);

  return v2;
}

- (int)BOOLRestrictionForFeature:(id)feature
{
  featureCopy = feature;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 restrictedBoolForFeature:featureCopy];

  return v6;
}

- (id)valueRestrictionForFeature:(id)feature
{
  featureCopy = feature;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 valueForFeature:featureCopy];

  return v6;
}

- (id)objectRestrictionForFeature:(id)feature
{
  featureCopy = feature;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 objectForFeature:featureCopy];

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

- (int)applyRestrictionDictionary:(id)dictionary clientType:(id)type clientUUID:(id)d localizedClientDescription:(id)description localizedWarningMessage:(id)message complianceBlocking:(int)blocking displayImmediateAlert:(BOOL)alert limitForUserEnrollment:(BOOL)self0 outRestrictionChanged:(BOOL *)self1 outEffectiveSettingsChanged:(BOOL *)self2 outError:(id *)self3
{
  v108 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  typeCopy = type;
  dCopy = d;
  descriptionCopy = description;
  messageCopy = message;
  [(MCProfileConnection *)self checkInIfNeeded];
  v30 = MCLocalizedErrorFormatByDevice(@"ENCRYPTION_POLICY_CLIENT_FAILURE_TEXT", v23, v24, v25, v26, v27, v28, v29, descriptionCopy);
  v31 = +[MCDeviceCapabilities currentDevice];
  v32 = [v31 validateCapabilitiesRequiredByRestrictions:dictionaryCopy localizedIncompatibilityMessage:v30 outError:error];

  if (v32)
  {
    blockingCopy = blocking;
    if (dictionaryCopy && enrollment)
    {
      v33 = typeCopy;
      v34 = qword_1ED4ADE28;
      if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v105 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEBUG, "Transmogrifying client restrictions from: %{public}@", buf, 0xCu);
      }

      v103 = 0;
      v35 = [(MCProfileConnection *)self _transmogrifyRestrictionDictionaryForUserEnrollment:dictionaryCopy outError:&v103];
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

        typeCopy = v33;
        if (!error)
        {
          v46 = 2;
          v47 = messageCopy;
LABEL_48:

          goto LABEL_49;
        }

        v69 = v36;
        v70 = MEMORY[0x1E696ABC0];
        v49 = MCErrorArray(@"USER_ENROLLMENT_DISALLOWED_RESTRICTIONS_P_CLIENT", v39, v40, v41, v42, v43, v44, v45, descriptionCopy);
        v71 = v70;
        v36 = v69;
        *error = [v71 MCErrorWithDomain:@"MCDeviceCapabilitiesErrorDomain" code:26002 descriptionArray:v49 underlyingError:v69 errorType:@"MCFatalError"];
        v46 = 2;
        v58 = dictionaryCopy;
        v47 = messageCopy;
        goto LABEL_47;
      }

      if (v38)
      {
        *buf = 138543362;
        v105 = v35;
        _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_DEBUG, "Transmogrifying client restrictions to: %{public}@", buf, 0xCu);
      }

      typeCopy = v33;
    }

    else
    {
      v93 = dictionaryCopy;
    }

    v36 = +[MCRestrictionManager sharedManager];
    systemClientRestrictions = [(__CFString *)v36 systemClientRestrictions];
    v49 = [systemClientRestrictions objectForKey:dCopy];

    if (v49)
    {
      v50 = [v49 objectForKey:@"clientType"];
      v51 = [v50 isEqualToString:typeCopy];

      if (v51)
      {
        v86 = dCopy;
        v88 = v36;
        v52 = [v49 objectForKey:@"clientRestrictions"];
        mCMutableDeepCopy = [(__CFString *)v93 MCMutableDeepCopy];
        v54 = +[MCHacks sharedHacks];
        [v54 _applyHeuristicsToRestrictions:mCMutableDeepCopy forProfile:0 ignoresUnrestrictableApps:0];

        v55 = v52;
        if ([mCMutableDeepCopy isEqualToDictionary:v52])
        {
          v56 = [v49 objectForKey:@"compliant"];
          bOOLValue = [v56 BOOLValue];

          if (bOOLValue)
          {

            v46 = 0;
            v58 = v93;
            v47 = messageCopy;
            v59 = v55;
            dCopy = v86;
            v36 = v88;
LABEL_46:

            goto LABEL_47;
          }
        }

        dCopy = v86;
        v36 = v88;
      }
    }

    selfCopy = self;
    v58 = v93;
    v47 = messageCopy;
    if ([(MCProfileConnection *)selfCopy applyRestrictionDictionary:v93 clientType:typeCopy clientUUID:dCopy localizedClientDescription:descriptionCopy localizedWarningMessage:messageCopy outRestrictionChanged:changed outEffectiveSettingsChanged:settingsChanged outError:error])
    {
      v59 = +[MCPasscodeManager sharedManager];
      isDeviceLocked = [v59 isDeviceLocked];
      if (blockingCopy)
      {
        if (isDeviceLocked)
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
            v47 = messageCopy;
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
        if (blockingCopy != 1)
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

            v47 = messageCopy;
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
        if (isDeviceLocked)
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

    dictionaryCopy = v58;
    goto LABEL_48;
  }

  v46 = 2;
  v47 = messageCopy;
LABEL_49:

  v78 = *MEMORY[0x1E69E9840];
  return v46;
}

- (id)allClientUUIDsForClientType:(id)type
{
  typeCopy = type;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 allClientUUIDsForClientType:typeCopy];

  return v6;
}

- (id)clientRestrictionsForClientUUID:(id)d
{
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 clientRestrictionsForClientUUID:dCopy];

  return v6;
}

- (id)userInfoForClientUUID:(id)d
{
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 userInfoForClientUUID:dCopy];

  return v6;
}

- (void)setUserInfo:(id)info forClientUUID:(id)d
{
  dCopy = d;
  infoCopy = info;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (MCIsDaemonProcess == 1)
  {
    nSClassFromString(&cfstr_Mcrestrictionm.isa) = [NSClassFromString(&cfstr_Mcrestrictionm.isa) sharedManager];
    [nSClassFromString(&cfstr_Mcrestrictionm.isa) setUserInfo:infoCopy forClientUUID:dCopy sender:@"profiled"];
  }

  else
  {
    nSClassFromString(&cfstr_Mcrestrictionm.isa) = [(MCProfileConnection *)self xpcConnection];
    v9 = [nSClassFromString(&cfstr_Mcrestrictionm.isa) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30];
    [v9 setUserInfo:infoCopy forClientUUID:dCopy completion:&__block_literal_global_30];

    dCopy = infoCopy;
    infoCopy = v9;
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

- (BOOL)clearUserInfoForClientUUIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = MCIsDaemonProcess;
  if (MCIsDaemonProcess == 1)
  {
    nSClassFromString(&cfstr_Mcrestrictionm.isa) = [NSClassFromString(&cfstr_Mcrestrictionm.isa) sharedManager];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = dsCopy;
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

          [nSClassFromString(&cfstr_Mcrestrictionm.isa) setUserInfo:v10 forClientUUID:*(*(&v14 + 1) + 8 * i) sender:{@"profiled", v14}];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
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

- (void)removeOrphanedClientRestrictionsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MCProfileConnection_Restrictions__removeOrphanedClientRestrictionsWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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
  effectiveWhitelistedAppsAndOptions = [v2 effectiveWhitelistedAppsAndOptions];

  return effectiveWhitelistedAppsAndOptions;
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

- (void)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user credentialSet:(id)set waitUntilCompleted:(BOOL)completed errorCompletionBlock:(id)block
{
  completedCopy = completed;
  systemCopy = system;
  userCopy = user;
  v46 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  setCopy = set;
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v16 = xpcConnection;
  if (completedCopy)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:blockCopy];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:blockCopy];
  }
  v29 = ;
  v30 = blockCopy;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = typeCopy;
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

  [v29 setParametersForSettingsByType:v17 configurationUUID:dCopy toSystem:systemCopy user:userCopy credentialSet:setCopy completion:v30];
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

- (void)setParametersForSettingsByType:(id)type configurationUUID:(id)d toSystem:(BOOL)system user:(BOOL)user passcode:(id)passcode credentialSet:(id)set waitUntilCompleted:(BOOL)completed errorCompletionBlock:(id)self0
{
  systemCopy = system;
  userCopy = user;
  v47 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  passcodeCopy = passcode;
  setCopy = set;
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v17 = xpcConnection;
  if (completed)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:blockCopy];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:blockCopy];
  }
  v30 = ;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = typeCopy;
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

  [v30 setParametersForSettingsByType:v18 configurationUUID:dCopy toSystem:systemCopy user:userCopy passcode:passcodeCopy credentialSet:setCopy completion:blockCopy];
  v29 = *MEMORY[0x1E69E9840];
}

- (void)setParameters:(id)parameters forBoolSetting:(id)setting
{
  v14[1] = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  parametersCopy = parameters;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12 = parametersCopy;
  v13 = @"restrictedBool";
  v11 = settingCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [(MCProfileConnection *)self setParametersForSettingsByType:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setParameters:(id)parameters forValueSetting:(id)setting
{
  v14[1] = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  parametersCopy = parameters;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12 = parametersCopy;
  v13 = @"restrictedValue";
  v11 = settingCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [(MCProfileConnection *)self setParametersForSettingsByType:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)value forSetting:(id)setting
{
  settingCopy = setting;
  valueCopy = value;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self setValue:valueCopy forSetting:settingCopy credentialSet:0];
}

- (void)setValue:(id)value forSetting:(id)setting credentialSet:(id)set completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  settingCopy = setting;
  completionCopy = completion;
  setCopy = set;
  [(MCProfileConnection *)self checkInIfNeeded];
  v14 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 67109378;
    unsignedIntValue = [valueCopy unsignedIntValue];
    v28 = 2114;
    v29 = settingCopy;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Set value %u for settings: %{public}@", buf, 0x12u);
  }

  v24 = @"restrictedValue";
  v21 = valueCopy;
  v22 = settingCopy;
  v20 = @"value";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(MCProfileConnection *)self setParametersForSettingsByType:v18 configurationUUID:0 toSystem:1 user:0 credentialSet:setCopy waitUntilCompleted:0 completion:completionCopy];

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

- (void)setValue:(id)value forSetting:(id)setting passcode:(id)passcode completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  settingCopy = setting;
  completionCopy = completion;
  passcodeCopy = passcode;
  [(MCProfileConnection *)self checkInIfNeeded];
  v14 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 67109378;
    unsignedIntValue = [valueCopy unsignedIntValue];
    v29 = 2114;
    v30 = settingCopy;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Set value %u for settings: %{public}@", buf, 0x12u);
  }

  v25 = @"restrictedValue";
  v22 = valueCopy;
  v23 = settingCopy;
  v21 = @"value";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  LOBYTE(v20) = 0;
  [(MCProfileConnection *)self setParametersForSettingsByType:v18 configurationUUID:0 toSystem:1 user:0 passcode:passcodeCopy credentialSet:0 waitUntilCompleted:v20 completion:completionCopy];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)userSettingsForSystem
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  systemUserSettings = [v2 systemUserSettings];

  return systemUserSettings;
}

- (id)userSettingsForCurrentUser
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  userUserSettings = [v2 userUserSettings];

  return userUserSettings;
}

- (id)userSettingsForPairedDevice
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = objc_alloc_init(MEMORY[0x1E695DF20]);

  return v2;
}

- (id)parametersForBoolSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  userSettings = [(MCProfileConnection *)self userSettings];
  v6 = [userSettings objectForKey:@"restrictedBool"];
  v7 = [v6 objectForKey:settingCopy];

  return v7;
}

- (id)parametersForValueSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  userSettings = [(MCProfileConnection *)self userSettings];
  v6 = [userSettings objectForKey:@"restrictedValue"];
  v7 = [v6 objectForKey:settingCopy];

  return v7;
}

- (id)parametersForIntersectionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  userSettings = [(MCProfileConnection *)self userSettings];
  v6 = [userSettings objectForKey:@"intersection"];
  v7 = [v6 objectForKey:settingCopy];

  return v7;
}

- (id)parametersForUnionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  userSettings = [(MCProfileConnection *)self userSettings];
  v6 = [userSettings objectForKeyedSubscript:@"values"];
  v7 = [v6 objectForKeyedSubscript:settingCopy];

  return v7;
}

- (int)defaultBoolValueForSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [MCRestrictionManager defaultBoolValueForSetting:settingCopy];

  return self;
}

- (id)defaultValueForSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultValueForSetting:settingCopy];

  return v5;
}

- (id)defaultValuesForIntersectionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultIntersectedValuesForSetting:settingCopy];

  return v5;
}

- (id)defaultValuesForUnionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultUnionValuesForSetting:settingCopy];

  return v5;
}

- (id)defaultParametersForBoolSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForBoolSetting:settingCopy];

  return v5;
}

- (id)defaultParametersForValueSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForValueSetting:settingCopy];

  return v5;
}

- (id)defaultParametersForIntersectionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForIntersectedValuesSetting:settingCopy];

  return v5;
}

- (id)defaultParametersForUnionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = [MCRestrictionManager defaultParametersForUnionValuesSetting:settingCopy];

  return v5;
}

- (id)effectiveParametersForBoolSetting:(id)setting configurationUUID:(id)d
{
  dCopy = d;
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = +[MCRestrictionManager sharedManager];
  v9 = [v8 effectiveParametersForBoolSetting:settingCopy configurationUUID:dCopy];

  return v9;
}

- (id)effectiveParametersForIntersectionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveParametersForIntersectedSetting:settingCopy];

  return v6;
}

- (id)effectiveParametersForUnionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveParametersForUnionSetting:settingCopy];

  return v6;
}

- (id)effectiveParametersForValueSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 effectiveParametersForValueSetting:settingCopy];

  return v6;
}

- (int)effectiveBoolValueForSetting:(id)setting outAsk:(BOOL *)ask
{
  settingCopy = setting;
  if (![(MCProfileConnection *)self needsCheckIn])
  {
    if ([settingCopy isEqualToString:@"allowCamera"])
    {
      v8 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"allowedCameraRestrictionBundleIDs"];
      if (v8)
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];

        if (bundleIdentifier && ([v8 containsObject:bundleIdentifier] & 1) != 0)
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

    bundleIdentifier = [(MCProfileConnection *)self effectiveParametersForBoolSetting:settingCopy];
    v11 = [bundleIdentifier objectForKeyedSubscript:@"value"];
    v12 = v11;
    if (v11)
    {
      if ([v11 BOOLValue])
      {
        if (ask)
        {
          v13 = [bundleIdentifier objectForKeyedSubscript:@"ask"];
          *ask = [v13 BOOLValue];
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

- (int)effectiveBoolValueForSetting:(id)setting configurationUUID:(id)d outAsk:(BOOL *)ask
{
  settingCopy = setting;
  dCopy = d;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(MCProfileConnection *)self effectiveParametersForBoolSetting:settingCopy configurationUUID:dCopy];
    v12 = [v11 objectForKeyedSubscript:@"value"];
    v13 = v12;
    if (v12)
    {
      if ([v12 BOOLValue])
      {
        if (ask)
        {
          v14 = [v11 objectForKeyedSubscript:@"ask"];
          *ask = [v14 BOOLValue];
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

- (id)effectiveValueForSetting:(id)setting
{
  settingCopy = setting;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self effectiveParametersForValueSetting:settingCopy];
    v5 = [v6 objectForKey:@"value"];
  }

  return v5;
}

- (id)effectiveValuesForIntersectionSetting:(id)setting
{
  settingCopy = setting;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self effectiveParametersForIntersectionSetting:settingCopy];
    v5 = [v6 objectForKeyedSubscript:@"values"];
  }

  return v5;
}

- (id)effectiveValuesForUnionSetting:(id)setting
{
  settingCopy = setting;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCProfileConnection *)self effectiveParametersForUnionSetting:settingCopy];
    v5 = [v6 objectForKeyedSubscript:@"values"];
  }

  return v5;
}

- (int)effectiveBoolValueForWatchSetting:(id)setting pairedDevice:(id)device outError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  deviceCopy = device;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [deviceCopy valueForProperty:*MEMORY[0x1E69B35F8]];
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__MCProfileConnection_Settings__effectiveBoolValueForWatchSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__MCProfileConnection_Settings__effectiveBoolValueForWatchSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D2990;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveBoolValueForWatchSetting:settingCopy pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        mCVerboseDescription = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v32 = settingCopy;
        v33 = 2114;
        v34 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective BOOL for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (error)
      {
        *error = v22[5];
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

- (id)effectiveValueForWatchSetting:(id)setting pairedDevice:(id)device outError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  deviceCopy = device;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [deviceCopy valueForProperty:*MEMORY[0x1E69B35F8]];
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__MCProfileConnection_Settings__effectiveValueForWatchSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__MCProfileConnection_Settings__effectiveValueForWatchSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D2990;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveValueForWatchSetting:settingCopy pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        mCVerboseDescription = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v34 = settingCopy;
        v35 = 2114;
        v36 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective value for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (error)
      {
        *error = v22[5];
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

- (id)effectiveValuesForWatchIntersectionSetting:(id)setting pairedDevice:(id)device outError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  deviceCopy = device;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [deviceCopy valueForProperty:*MEMORY[0x1E69B35F8]];
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__MCProfileConnection_Settings__effectiveValuesForWatchIntersectionSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__MCProfileConnection_Settings__effectiveValuesForWatchIntersectionSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D29B8;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveValuesForWatchIntersectionSetting:settingCopy pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        mCVerboseDescription = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v34 = settingCopy;
        v35 = 2114;
        v36 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective intersection values for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (error)
      {
        *error = v22[5];
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

- (id)effectiveValuesForWatchUnionSetting:(id)setting pairedDevice:(id)device outError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  deviceCopy = device;
  if ([(MCProfileConnection *)self needsCheckIn])
  {
    v10 = 0;
  }

  else
  {
    v11 = [deviceCopy valueForProperty:*MEMORY[0x1E69B3610]];
    v12 = [deviceCopy valueForProperty:*MEMORY[0x1E69B35F8]];
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__MCProfileConnection_Settings__effectiveValuesForWatchUnionSetting_pairedDevice_outError___block_invoke;
    v20[3] = &unk_1E77D2620;
    v20[4] = &v21;
    v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__MCProfileConnection_Settings__effectiveValuesForWatchUnionSetting_pairedDevice_outError___block_invoke_2;
    v19[3] = &unk_1E77D29B8;
    v19[4] = &v21;
    v19[5] = &v27;
    [v14 effectiveValuesForWatchUnionSetting:settingCopy pairingID:v11 pairingDataStore:v12 completion:v19];

    if (v22[5])
    {
      v15 = qword_1ED4ADE28;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        mCVerboseDescription = [v22[5] MCVerboseDescription];
        *buf = 138543618;
        v34 = settingCopy;
        v35 = 2114;
        v36 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve effective union values for feature “%{public}@” with error: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      if (error)
      {
        *error = v22[5];
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

- (id)requestEffectiveBoolValueForSetting:(id)setting configurationUUID:(id)d promptOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __112__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_completion___block_invoke;
  v27[3] = &unk_1E77D2A08;
  v28 = completionCopy;
  v11 = completionCopy;
  optionsCopy = options;
  dCopy = d;
  settingCopy = setting;
  v15 = MEMORY[0x1AC55F990](v27);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __112__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_completion___block_invoke_2;
  v25 = &unk_1E77D2698;
  v26 = v15;
  v19 = v15;
  v20 = [xpcConnection remoteObjectProxyWithErrorHandler:&v22];
  [v20 showFeaturePromptForSetting:settingCopy configurationUUID:dCopy promptOptions:optionsCopy promptIdentifier:uUIDString completion:{v19, v22, v23, v24, v25}];

  return uUIDString;
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

- (int)requestEffectiveBoolValueForSetting:(id)setting configurationUUID:(id)d promptOptions:(id)options outError:(id *)error
{
  settingCopy = setting;
  dCopy = d;
  optionsCopy = options;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_outError___block_invoke;
  v19[3] = &unk_1E77D2620;
  v19[4] = &v20;
  v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __110__MCProfileConnection_Settings__requestEffectiveBoolValueForSetting_configurationUUID_promptOptions_outError___block_invoke_2;
  v18[3] = &unk_1E77D2A30;
  v18[4] = &v20;
  v18[5] = &v26;
  [v14 showFeaturePromptForSetting:settingCopy configurationUUID:dCopy promptOptions:optionsCopy promptIdentifier:0 completion:v18];

  if (error)
  {
    v15 = v21[5];
    if (v15)
    {
      *error = v15;
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

- (void)cancelRequestEffectiveBoolValue:(id)value completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__MCProfileConnection_Settings__cancelRequestEffectiveBoolValue_completion___block_invoke;
  v18[3] = &unk_1E77D2698;
  v19 = completionCopy;
  v7 = completionCopy;
  valueCopy = value;
  v9 = MEMORY[0x1AC55F990](v18);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76__MCProfileConnection_Settings__cancelRequestEffectiveBoolValue_completion___block_invoke_2;
  v16 = &unk_1E77D2698;
  v17 = v9;
  v11 = v9;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:&v13];
  [v12 cancelFeaturePromptWithIdentifier:valueCopy completion:{v11, v13, v14, v15, v16}];
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

- (BOOL)isSettingLockedDownByRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isSettingLockedDownByRestrictions:restrictionsCopy];

  return v6;
}

- (BOOL)_areProfilesRestrictingSettings:(id)settings outMDMName:(id *)name outExchangeName:(id *)exchangeName outExchangeCount:(int64_t *)count outProfileName:(id *)profileName outProfileCount:(int64_t *)profileCount
{
  v65 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  [(MCProfileConnection *)self checkInIfNeeded];
  v49 = settingsCopy;
  v50 = [(MCProfileConnection *)self _settingsLockedDownByRestrictions:settingsCopy];
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
    friendlyName2 = 0;
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
          organization = [v23 organization];

          if (organization)
          {
            organization2 = [v23 organization];

            v52 = organization2;
          }

          else
          {
            friendlyName = [v23 friendlyName];

            ++v17;
            friendlyName2 = friendlyName;
          }
        }

        else
        {
          if (!friendlyName2)
          {
            v26 = [MCManifest installedProfileWithIdentifier:v21];
            friendlyName2 = [v26 friendlyName];
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
    friendlyName2 = 0;
    v52 = 0;
  }

  v28 = +[MCRestrictionManager sharedManager];
  v29 = [v28 exchangeUUIDsRestrictingSettings:v50];

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
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
    accountDescription = 0;
    v35 = *v56;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = [defaultStore accountWithIdentifier:*(*(&v55 + 1) + 8 * j)];
        v38 = v37;
        if (!accountDescription)
        {
          accountDescription = [v37 accountDescription];
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
    accountDescription = 0;
  }

  if (name)
  {
    v39 = v52;
    *name = v52;
  }

  if (exchangeName)
  {
    v40 = accountDescription;
    *exchangeName = accountDescription;
  }

  if (count)
  {
    *count = v51;
  }

  if (profileName)
  {
    v41 = friendlyName2;
    *profileName = friendlyName2;
  }

  if (profileCount)
  {
    *profileCount = v17;
  }

  v42 = *MEMORY[0x1E69E9840];
  return (v52 | friendlyName2 | accountDescription) != 0;
}

- (id)localizedRestrictionSourceDescriptionForFeatures:(id)features
{
  featuresCopy = features;
  [(MCProfileConnection *)self checkInIfNeeded];
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = [(MCProfileConnection *)self _areProfilesRestrictingSettings:featuresCopy outMDMName:&v13 outExchangeName:&v12 outExchangeCount:&v15 outProfileName:&v11 outProfileCount:&v14];

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

- (id)_settingsLockedDownByRestrictions:(id)restrictions
{
  v20 = *MEMORY[0x1E69E9840];
  restrictionsCopy = restrictions;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = restrictionsCopy;
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

- (BOOL)areSettingsLockedDownByRestrictions:(id)restrictions
{
  v18 = *MEMORY[0x1E69E9840];
  restrictionsCopy = restrictions;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = restrictionsCopy;
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

- (BOOL)isBoolSettingLockedDownByRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isBoolSettingLockedDownByRestrictions:restrictionsCopy];

  return v6;
}

- (BOOL)isValueSettingLockedDownByRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isValueSettingLockedDownByRestrictions:restrictionsCopy];

  return v6;
}

- (BOOL)isIntersectionSettingLockedDownByRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isIntersectionSettingLockedDownByRestrictions:restrictionsCopy];

  return v6;
}

- (BOOL)isUnionSettingLockedDownByRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 isUnionSettingLockedDownByRestrictions:restrictionsCopy];

  return v6;
}

- (void)removeBoolSetting:(id)setting
{
  v11 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = settingCopy;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Remove Bool settings: %{public}@", &v9, 0xCu);
  }

  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_21];
  [v7 removeBoolSetting:settingCopy completion:&__block_literal_global_21];

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

- (void)removeValueSetting:(id)setting
{
  v11 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = settingCopy;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Remove Value settings: %{public}@", &v9, 0xCu);
  }

  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_23];
  [v7 removeValueSetting:settingCopy completion:&__block_literal_global_23];

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

- (int)userBoolValueForSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 BOOLSettingForFeature:settingCopy];

  return v6;
}

- (id)userValueForSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 valueSettingForFeature:settingCopy];

  return v6;
}

- (id)userValueForIntersectionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 intersectedValuesSettingForFeature:settingCopy];

  return v6;
}

- (id)userValueForUnionSetting:(id)setting
{
  settingCopy = setting;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 unionValuesSettingForFeature:settingCopy];

  return v6;
}

- (id)lockedDownRootCertificatesWithOutLocalizedSourceDescription:(id *)description
{
  v62 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[MCManifest sharedManifest];
  v6 = [v5 allProfileIdentifiersInstalledNonInteractivelyWithFilterFlags:1];

  v38 = v6;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v8 = [(MCProfileConnection *)self installedProfileIdentifiersWithFilterFlags:2];
  [v7 addObjectsFromArray:v8];

  selfCopy = self;
  installedMDMProfileIdentifier = [(MCProfileConnection *)self installedMDMProfileIdentifier];
  if (installedMDMProfileIdentifier)
  {
    [v7 addObject:installedMDMProfileIdentifier];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = v7;
  v42 = [v10 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v42)
  {
    friendlyName = 0;
    v50 = 0;
    friendlyName2 = 0;
    v29 = v10;
    goto LABEL_35;
  }

  v45 = 0;
  v50 = 0;
  friendlyName = 0;
  v41 = *v57;
  v48 = array;
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
        payloads = [v15 payloads];
        v17 = [payloads countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v53;
          v49 = payloads;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v53 != v19)
              {
                objc_enumerationMutation(payloads);
              }

              v21 = *(*(&v52 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
                if ([v22 isFullyTrustedRootCert])
                {
                  copyCertificate = [v22 copyCertificate];
                  if (copyCertificate)
                  {
                    v24 = copyCertificate;
                    v25 = SecCertificateCopyData(copyCertificate);
                    [array addObject:v25];
                    [v51 installOptions];
                    v27 = v26 = installedMDMProfileIdentifier;
                    v28 = [v27 objectForKey:@"managingProfileIdentifier"];

                    installedMDMProfileIdentifier = v26;
                    if (v26 && (([v46 isEqualToString:v26] & 1) != 0 || v28 && (objc_msgSend(v28, "isEqualToString:", v26) & 1) != 0))
                    {
                      v45 = 1;
                    }

                    else
                    {
                      if (!friendlyName)
                      {
                        friendlyName = [v51 friendlyName];
                      }

                      ++v50;
                    }

                    CFRelease(v24);

                    array = v48;
                    payloads = v49;
                  }
                }
              }
            }

            v18 = [payloads countByEnumeratingWithState:&v52 objects:v60 count:16];
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
    v29 = [(MCProfileConnection *)selfCopy installedProfileWithIdentifier:installedMDMProfileIdentifier];
    friendlyName2 = [v29 friendlyName];
LABEL_35:

    goto LABEL_37;
  }

  friendlyName2 = 0;
LABEL_37:
  v31 = [(MCProfileConnection *)selfCopy _localizedCertificateSourceDescriptionFromMDMName:friendlyName2 exchangeName:0 exchangeCount:0 profileName:friendlyName profileCount:v50];
  v32 = v31;
  if (description)
  {
    v33 = v31;
    *description = v32;
  }

  v34 = array;

  v35 = *MEMORY[0x1E69E9840];
  return array;
}

- (id)permittedAutoLockSeconds
{
  v2 = +[MCHacks sharedHacks];
  permittedAutoLockNumbers = [v2 permittedAutoLockNumbers];

  return permittedAutoLockNumbers;
}

- (void)_setAllowedGrandfatheredRestrictionFeature:(id)feature forRestrictionKey:(id)key
{
  v23[1] = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  keyCopy = key;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = MCSystemMetadataFilePath();
  v9 = [defaultManager fileExistsAtPath:v8];

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
    v15 = [v14 objectForKeyedSubscript:keyCopy];
    if ([v15 count])
    {
      v16 = [v15 mutableCopy];
      if (([v16 containsObject:featureCopy] & 1) == 0)
      {
        [v16 addObject:featureCopy];
        v17 = [v16 copy];

        v15 = v17;
      }
    }

    else
    {
      v23[0] = featureCopy;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

      v15 = v18;
    }
  }

  else
  {
    v22 = featureCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  }

  [v14 setObject:v15 forKeyedSubscript:keyCopy];

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
  systemProfileRestrictions = [v2 systemProfileRestrictions];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [systemProfileRestrictions keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = [systemProfileRestrictions objectForKey:*(*(&v14 + 1) + 8 * i)];
        v10 = [MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:v9];

        if (v10 == 1)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  isPasscodeRecoverySupported = [(MCProfileConnection *)self isPasscodeRecoverySupported];
  if (isPasscodeRecoverySupported)
  {
    LOBYTE(isPasscodeRecoverySupported) = [(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowPasscodeRecovery"]!= 2;
  }

  return isPasscodeRecoverySupported;
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
  isPasscodeRecoveryAllowed = [(MCProfileConnection *)self isPasscodeRecoveryAllowed];
  if (isPasscodeRecoveryAllowed)
  {

    LOBYTE(isPasscodeRecoveryAllowed) = MCKeybagMementoBlobExists();
  }

  return isPasscodeRecoveryAllowed;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v3];
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

- (void)clearRecoveryPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MCProfileConnection_Passcode__clearRecoveryPasscodeWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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

- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)policy outError:(id *)error
{
  policyCopy = policy;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MCProfileConnection_Passcode__isPasscodeCompliantWithNamedPolicy_outError___block_invoke_6;
  v12[3] = &unk_1E77D2800;
  v12[4] = &v14;
  v12[5] = &v20;
  [v9 isPasscodeCompliantWithNamedPolicy:policyCopy completion:v12];

  if (error)
  {
    *error = v15[5];
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

- (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret outError:(id *)error
{
  dataCopy = data;
  secretCopy = secret;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v13 clearPasscodeWithEscrowKeybagData:dataCopy secret:secretCopy completion:v11];

  if (error)
  {
    *error = *(v18 + 5);
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

- (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secretContext:(id)context outError:(id *)error
{
  dataCopy = data;
  contextCopy = context;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v13 clearPasscodeWithEscrowKeybagData:dataCopy secretContext:contextCopy completion:v11];

  if (error)
  {
    *error = *(v18 + 5);
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

- (BOOL)unlockDeviceWithPasscode:(id)passcode outError:(id *)error
{
  passcodeCopy = passcode;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(error) = [v7 unlockDeviceWithPasscode:passcodeCopy outError:error];

  return error;
}

- (BOOL)unlockDeviceWithPasscodeContext:(id)context outError:(id *)error
{
  contextCopy = context;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(error) = [v7 unlockDeviceWithPasscodeContext:contextCopy outError:error];

  return error;
}

- (BOOL)passcode:(id)passcode meetsCurrentConstraintsOutError:(id *)error
{
  passcodeCopy = passcode;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(error) = [v7 passcode:passcodeCopy compliesWithPolicyCheckHistory:1 outError:error];

  return error;
}

- (BOOL)passcodeContext:(id)context meetsCurrentConstraintsOutError:(id *)error
{
  contextCopy = context;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = +[MCPasscodeManager sharedManager];
  LOBYTE(error) = [v7 passcodeContext:contextCopy compliesWithPolicyCheckHistory:1 outError:error];

  return error;
}

- (BOOL)currentPasscodeIsCompliantWithGlobalRestrictionsOutError:(id *)error
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v4 currentRestrictions];

  v6 = +[MCPasscodeManager sharedManager];
  v10 = 0;
  [v6 currentPasscodeCompliesWithPolicyFromRestrictions:currentRestrictions outError:&v10];
  v7 = v10;

  if (error && v7)
  {
    v8 = v7;
    *error = v7;
  }

  return v7 == 0;
}

- (BOOL)currentPasscodeIsCompliantWithProfileRestrictionsOutError:(id *)error
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCRestrictionManager sharedManager];
  combinedProfileRestrictions = [v4 combinedProfileRestrictions];

  v6 = +[MCPasscodeManager sharedManager];
  LOBYTE(error) = [v6 currentPasscodeCompliesWithPolicyFromRestrictions:combinedProfileRestrictions outError:error];

  return error;
}

- (int)_getPasscodeComplianceWarningExpiryDate:(id)date lastLockDate:(id)lockDate outLocalizedTitle:(id *)title outLocalizedMessage:(id *)message
{
  v85 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  lockDateCopy = lockDate;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (!+[MCRestrictionManager mayChangePasscode])
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
    if (!title)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [dateCopy timeIntervalSinceNow];
  if (v12 >= 0.0)
  {
    titleCopy = title;
    messageCopy = message;
    v78 = dateCopy;
    v24 = MEMORY[0x1E695DF20];
    v25 = MCNagUIMetaFilePath();
    v26 = [v24 dictionaryWithContentsOfFile:v25];

    if ([v26 count])
    {
      v27 = 0;
      while (1)
      {
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        localeIdentifier = [currentLocale localeIdentifier];

        v30 = [v26 objectForKeyedSubscript:@"lastLocale"];
        v31 = [v26 objectForKeyedSubscript:@"message"];
        if (!v31 || (v32 = v31, v33 = [localeIdentifier isEqualToString:v30], v32, (v33 & 1) != 0))
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
          v82 = localeIdentifier;
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
        v82 = localeIdentifier;
        _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Cached nag may be in an old locale (it's %{public}@, we're %{public}@), continuing anyway", buf, 0x16u);
      }

      v18 = 0;
      v17 = 0;
      v19 = 0;
LABEL_59:

      message = messageCopy;
      dateCopy = v78;
      title = titleCopy;
      if (!titleCopy)
      {
        goto LABEL_9;
      }

LABEL_8:
      v20 = v17;
      *title = v17;
      goto LABEL_9;
    }

    v38 = v26;
LABEL_22:
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v40 = MCBackupContainsPasscodeFilePath();
    v41 = [defaultManager fileExistsAtPath:v40];

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
      [(MCProfileConnection *)self notifyUserHasSeenComplianceMessageWithLastLockDate:lockDateCopy];
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
    bOOLValue = [v49 BOOLValue];

    if (!bOOLValue)
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
        v19 = 2 * ([v74 compare:lockDateCopy] == -1);
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
        isPasscodeSet = [(MCProfileConnection *)self isPasscodeSet];
        if (v60 <= 60.0)
        {
          if (isPasscodeSet)
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

        if (isPasscodeSet)
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

    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v58 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_33];
    [v58 notifyStartComplianceTimer:v52 completion:&__block_literal_global_33];

    goto LABEL_43;
  }

  v13 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x1E695DF00];
    v15 = v13;
    date = [v14 date];
    *buf = 138543618;
    v80 = dateCopy;
    v81 = 2114;
    v82 = date;
    _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Current passcode expired at %{public}@ and current date is %{public}@. Requiring mandatory passcode change.", buf, 0x16u);
  }

  v17 = MCLocalizedString(@"NAG_UI_EXPIRY_TITLE");
  v18 = MCLocalizedStringByDevice(@"NAG_UI_EXPIRY_MESSAGE");
  v19 = 1;
  if (title)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (message)
  {
    v21 = v18;
    *message = v18;
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

- (int)getPasscodeComplianceWarningLastLockDate:(id)date outLocalizedTitle:(id *)title outLocalizedMessage:(id *)message
{
  dateCopy = date;
  [(MCProfileConnection *)self checkInIfNeeded];
  passcodeExpiryDate = [(MCProfileConnection *)self passcodeExpiryDate];
  LODWORD(message) = [(MCProfileConnection *)self _getPasscodeComplianceWarningExpiryDate:passcodeExpiryDate lastLockDate:dateCopy outLocalizedTitle:title outLocalizedMessage:message];

  return message;
}

- (void)getPasscodeComplianceWarningLastLockDate:(id)date completionBlock:(id)block
{
  blockCopy = block;
  dateCopy = date;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = +[MCPasscodeManager sharedManager];
  passcodeExpiryDate = [v8 passcodeExpiryDate];

  v13 = 0;
  v14 = 0;
  v10 = [(MCProfileConnection *)self _getPasscodeComplianceWarningExpiryDate:passcodeExpiryDate lastLockDate:dateCopy outLocalizedTitle:&v14 outLocalizedMessage:&v13];

  v11 = v14;
  v12 = v13;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v10, v11, v12);
  }
}

- (void)recomputeUserComplianceWarningSynchronously
{
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_47_1];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_49];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_51_0];
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

- (void)notifyUserHasSeenComplianceMessageWithLastLockDate:(id)date
{
  dateCopy = date;
  [(MCProfileConnection *)self checkInIfNeeded];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:1.0];

  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_53_1];
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
  passcodeCreationDate = [v2 passcodeCreationDate];

  return passcodeCreationDate;
}

- (id)passcodeExpiryDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  passcodeExpiryDate = [v2 passcodeExpiryDate];

  return passcodeExpiryDate;
}

- (id)recoveryPasscodeExpiryDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  recoveryPasscodeExpiryDate = [v2 recoveryPasscodeExpiryDate];

  return recoveryPasscodeExpiryDate;
}

- (int)unlockScreenType
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  currentUnlockScreenType = [v2 currentUnlockScreenType];

  return currentUnlockScreenType;
}

- (int)unlockScreenTypeWithOutSimplePasscodeType:(int *)type
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if (type)
  {
    v4 = +[MCPasscodeManager sharedManager];
    currentUnlockSimplePasscodeType = [v4 currentUnlockSimplePasscodeType];

    *type = currentUnlockSimplePasscodeType;
  }

  v6 = +[MCPasscodeManager sharedManager];
  currentUnlockScreenType = [v6 currentUnlockScreenType];

  return currentUnlockScreenType;
}

- (int)unlockScreenTypeForUser:(id)user outSimplePasscodeType:(int *)type
{
  userCopy = user;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (type)
  {
    v7 = +[MCPasscodeManager sharedManager];
    v8 = [v7 unlockSimplePasscodeTypeForUser:userCopy];

    *type = v8;
  }

  v9 = +[MCPasscodeManager sharedManager];
  v10 = [v9 unlockScreenTypeForUser:userCopy];

  return v10;
}

- (int)unlockScreenTypeForSharedDataVolume:(id)volume OutSimplePasscodeType:(int *)type
{
  volumeCopy = volume;
  if (type)
  {
    v6 = +[MCPasscodeManager sharedManager];
    v7 = [v6 unlockSimplePasscodeTypeForSharedDataVolume:volumeCopy];

    *type = v7;
  }

  v8 = +[MCPasscodeManager sharedManager];
  v9 = [v8 unlockScreenTypeForSharedDataVolume:volumeCopy];

  return v9;
}

- (int)recoveryPasscodeUnlockScreenType
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  recoveryPasscodeUnlockScreenType = [v2 recoveryPasscodeUnlockScreenType];

  return recoveryPasscodeUnlockScreenType;
}

- (int)recoveryPasscodeUnlockScreenTypeWithOutSimplePasscodeType:(int *)type
{
  [(MCProfileConnection *)self checkInIfNeeded];
  if (type)
  {
    v4 = +[MCPasscodeManager sharedManager];
    recoveryPasscodeUnlockSimplePasscodeType = [v4 recoveryPasscodeUnlockSimplePasscodeType];

    *type = recoveryPasscodeUnlockSimplePasscodeType;
  }

  v6 = +[MCPasscodeManager sharedManager];
  recoveryPasscodeUnlockScreenType = [v6 recoveryPasscodeUnlockScreenType];

  return recoveryPasscodeUnlockScreenType;
}

- (int)newPasscodeEntryScreenType
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCPasscodeManager sharedManager];
  newPasscodeEntryScreenType = [v2 newPasscodeEntryScreenType];

  return newPasscodeEntryScreenType;
}

- (int)newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCPasscodeManager sharedManager];
  LODWORD(type) = [v4 newPasscodeEntryScreenTypeWithOutSimplePasscodeType:type];

  return type;
}

- (int)minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCPasscodeManager sharedManager];
  LODWORD(type) = [v4 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:type];

  return type;
}

- (int)defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v4 = +[MCPasscodeManager sharedManager];
  LODWORD(type) = [v4 defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:type];

  return type;
}

- (id)localizedDescriptionOfCurrentPasscodeConstraints
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfPasscodePolicyFromRestrictions:currentRestrictions];

  return v4;
}

- (id)localizedDescriptionOfDefaultNewPasscodeConstraints
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfDefaultNewPasscodePolicyFromRestrictions:currentRestrictions];

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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_34];
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

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4_0];
  [v5 recomputeProfileRestrictionsWithCompletionBlock:blockCopy];
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

- (void)shutDownWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__MCProfileConnection_Misc__shutDownWithCompletion___block_invoke;
  v27[3] = &unk_1E77D2698;
  v5 = completionCopy;
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v15 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v6];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_17];
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
  attributesByAppID = [MEMORY[0x1E69AD440] attributesByAppID];
  v3 = attributesByAppID;
  if (attributesByAppID)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [attributesByAppID countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (BOOL)isSafariPasswordAutoFillAllowedForURL:(id)l
{
  lCopy = l;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCSafariPasswordAutoFillDomainsCache sharedCache];
  v6 = [v5 isSafariPasswordAutoFillAllowedForURL:lCopy];

  return v6;
}

- (void)validateAppBundleIDs:(id)ds waitUntilCompleted:(BOOL)completed completion:(id)completion
{
  completedCopy = completed;
  completionCopy = completion;
  dsCopy = ds;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MCProfileConnection_Misc__validateAppBundleIDs_waitUntilCompleted_completion___block_invoke;
  v15[3] = &unk_1E77D2698;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x1AC55F990](v15);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = xpcConnection;
  if (completedCopy)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  }
  v14 = ;

  [v14 validateAppBundleIDs:dsCopy completion:v11];
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

- (BOOL)isRemovalRestrictedByPolicyForApp:(id)app
{
  appCopy = app;
  [(MCProfileConnection *)self checkInIfNeeded];
  attributesByAppID = [MEMORY[0x1E69AD440] attributesByAppID];
  v6 = attributesByAppID;
  if (attributesByAppID && ([attributesByAppID objectForKeyedSubscript:appCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  details = [mEMORY[0x1E69AD428] details];

  if (details)
  {
    defaultMDMOptions = [details objectForKeyedSubscript:*MEMORY[0x1E69AD500]];
    v5 = defaultMDMOptions;
    v6 = *MEMORY[0x1E69AD4F8];
  }

  else
  {
    defaultMDMOptions = [MEMORY[0x1E69AD448] defaultMDMOptions];
    v5 = defaultMDMOptions;
    if (!defaultMDMOptions)
    {
      bOOLValue = 0;
      goto LABEL_6;
    }

    v6 = *MEMORY[0x1E69AD4F8];
  }

  v7 = [defaultMDMOptions objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

LABEL_6:
  return bOOLValue;
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
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)softwareUpdatePath
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MDMFilePath();
  v4 = [v2 MCDictionaryFromFile:v3];

  v5 = [v4 objectForKeyedSubscript:@"SoftwareUpdateSettings"];
  v6 = [v5 objectForKeyedSubscript:@"RecommendationCadence"];
  integerValue = [v6 integerValue];

  return integerValue;
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
  allowedMarketplaces = [(MCProfileConnection *)self allowedMarketplaces];

  if (allowedMarketplaces)
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

- (BOOL)isMarketplaceAllowed:(id)allowed
{
  allowedCopy = allowed;
  allowedMarketplaces = [(MCProfileConnection *)self allowedMarketplaces];
  v6 = allowedMarketplaces;
  if (allowedMarketplaces)
  {
    LOBYTE(v7) = [allowedMarketplaces containsObject:allowedCopy];
  }

  else
  {
    deniedMarketplaces = [(MCProfileConnection *)self deniedMarketplaces];
    v7 = [deniedMarketplaces containsObject:allowedCopy] ^ 1;
  }

  return v7;
}

- (BOOL)anyMarketplaceAllowed
{
  allowedMarketplaces = [(MCProfileConnection *)self allowedMarketplaces];
  v3 = allowedMarketplaces;
  if (allowedMarketplaces)
  {
    v4 = [allowedMarketplaces count] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)allMarketplacesAllowed
{
  allowedMarketplaces = [(MCProfileConnection *)self allowedMarketplaces];
  if (allowedMarketplaces)
  {
    v4 = 0;
  }

  else
  {
    deniedMarketplaces = [(MCProfileConnection *)self deniedMarketplaces];
    v6 = deniedMarketplaces;
    if (deniedMarketplaces)
    {
      v4 = [deniedMarketplaces count] == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)isNotificationsModificationAllowedForBundleID:(id)d
{
  v4 = [(MCProfileConnection *)self restrictionEnforcedNotificationSettingsForBundleID:d];

  return [(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowNotificationsModification"]!= 2 && v4 == 0;
}

- (id)restrictionEnforcedNotificationSettingsForBundleID:(id)d
{
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  restrictionEnforcedNotificationSettings = [(MCProfileConnection *)self restrictionEnforcedNotificationSettings];
  v6 = [(MCProfileConnection *)self _restrictionEnforcedNotificationSettingsForBundleID:dCopy settingsArray:restrictionEnforcedNotificationSettings];

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

  _notificationRestrictedApps = [(MCProfileConnection *)self _notificationRestrictedApps];
  if ([_notificationRestrictedApps count])
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
    v25 = _notificationRestrictedApps;
    v14 = _notificationRestrictedApps;
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
    _notificationRestrictedApps = v25;
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

- (id)_restrictionEnforcedNotificationSettingsForBundleID:(id)d settingsArray:(id)array
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"BundleIdentifier", v17}];
        v13 = [v12 isEqualToString:dCopy];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v8 = [arrayCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  _sharedDeviceConfiguration = [(MCProfileConnection *)self _sharedDeviceConfiguration];
  v4 = [_sharedDeviceConfiguration objectForKeyedSubscript:@"LockScreenFootnote"];

  return v4;
}

- (id)deviceProvisionalEnrollmentFootnote
{
  if ([(MCProfileConnection *)self isProvisionallyEnrolled])
  {
    mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
    if ([mEMORY[0x1E69AD420] userMode] == 1)
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
  _sharedDeviceConfiguration = [(MCProfileConnection *)self _sharedDeviceConfiguration];
  v4 = [_sharedDeviceConfiguration objectForKeyedSubscript:@"AssetTagInformation"];

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

- (BOOL)communicationServiceRulesExistForBundleID:(id)d forCommunicationServiceType:(id)type
{
  dCopy = d;
  typeCopy = type;
  [(MCProfileConnection *)self checkInIfNeeded];
  LODWORD(self) = [typeCopy isEqualToString:@"AudioCall"];

  if (self)
  {
    v8 = +[MCRestrictionManager sharedManager];
    v9 = [v8 effectiveUnionValuesForSetting:@"audioCallDefaultHandlerAppBundleIDs"];

    v10 = [v9 containsObject:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = 0;
  if (typeCopy && identifierCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__12;
    v17 = __Block_byref_object_dispose__12;
    v18 = 0;
    publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
    v10 = [publicXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_61];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__MCProfileConnection_Misc__defaultAppBundleIDForCommunicationServiceType_forAccountWithIdentifier___block_invoke_62;
    v12[3] = &unk_1E77D2BA8;
    v12[4] = &v13;
    [v10 defaultAppBundleIDForCommunicationServiceType:typeCopy forAccountWithIdentifier:identifierCopy completion:v12];

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

- (BOOL)isCloudSyncAllowed:(id)allowed
{
  allowedCopy = allowed;
  if ([(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowCloudDocumentSync"]== 2)
  {
    v5 = 0;
  }

  else if ([(MCProfileConnection *)self effectiveBoolValueForSetting:@"allowManagedAppsCloudSync"]== 2)
  {
    attributesByAppID = [MEMORY[0x1E69AD440] attributesByAppID];
    allKeys = [attributesByAppID allKeys];
    v8 = [allKeys containsObject:allowedCopy];

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

- (void)setGracePeriod:(unint64_t)period passcode:(id)passcode completionBlock:(id)block
{
  blockCopy = block;
  v8 = MEMORY[0x1E696AD98];
  passcodeCopy = passcode;
  v10 = [v8 numberWithUnsignedInteger:period];
  [(MCProfileConnection *)self setValue:v10 forSetting:@"maxGracePeriod" passcode:passcodeCopy];

  v11 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0);
    v11 = blockCopy;
  }
}

- (unint64_t)gracePeriod
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveValueForSetting:@"maxGracePeriod"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)shouldDestroyOldKeybag
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  [mEMORY[0x1E69AD428] refreshDetailsFromDisk];

  mEMORY[0x1E69AD428]2 = [MEMORY[0x1E69AD428] sharedConfiguration];
  accessRights = [mEMORY[0x1E69AD428]2 accessRights];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = MDMFilePath();
  v8 = [defaultManager fileExistsAtPath:v7 isDirectory:0];

  if (![(MCProfileConnection *)self isSupervised]|| (v8 & ((accessRights & 4) != 0)) != 0)
  {
    return 1;
  }

  v10 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.managedconfiguration.notbackedup", @"mobile", *MEMORY[0x1E695E898]);
  v11 = CFPreferencesCopyValue(@"KeybagMigrationHasBeenClearedByHost", @"com.apple.managedconfiguration.notbackedup", @"mobile", v10);
  bOOLValue = [v11 BOOLValue];

  return bOOLValue;
}

- (void)startMonitoringEnrollmentStateWithPersonaID:(id)d
{
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  remoteObjectProxy = [publicXPCConnection remoteObjectProxy];
  [remoteObjectProxy monitorEnrollmentStateWithPersonaID:dCopy];
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

- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)passcode completionBlock:(id)block
{
  blockCopy = block;
  passcodeCopy = passcode;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__MCProfileConnection_Misc__createMDMUnlockTokenIfNeededWithPasscode_completionBlock___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = MEMORY[0x1AC55F990](v12);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v11 createMDMUnlockTokenIfNeededWithPasscode:passcodeCopy completion:v9];
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

- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__MCProfileConnection_Misc__createMDMUnlockTokenIfNeededWithPasscodeContext_completionBlock___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = MEMORY[0x1AC55F990](v12);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v11 createMDMUnlockTokenIfNeededWithPasscodeContext:contextCopy completion:v9];
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
  integerValue = [v3 integerValue];

  v5 = 2;
  if (integerValue < 2)
  {
    v5 = integerValue;
  }

  return v5 & ~(v5 >> 63);
}

- (id)managingOrganizationForFontAtURL:(id)l
{
  lCopy = l;
  v5 = +[MCDependencyReader sharedReader];
  absoluteString = [lCopy absoluteString];

  v7 = [v5 dependentsOfParent:absoluteString inDomain:@"MCDMFontURLToProfileIdentifierKey"];

  firstObject = [v7 firstObject];
  if (firstObject)
  {
    v9 = [(MCProfileConnection *)self installedProfileWithIdentifier:firstObject];
    organization = [v9 organization];

    if (organization)
    {
      organization2 = [v9 organization];
    }

    else
    {
      managingProfileIdentifier = [v9 managingProfileIdentifier];
      if (managingProfileIdentifier)
      {
        v13 = [(MCProfileConnection *)self installedProfileWithIdentifier:managingProfileIdentifier];
        organization2 = [v13 organization];
      }

      else
      {
        organization2 = 0;
      }
    }
  }

  else
  {
    organization2 = 0;
  }

  return organization2;
}

- (id)skipSetupKeys
{
  v2 = objc_opt_new();
  currentSkipKeys = [v2 currentSkipKeys];
  allObjects = [currentSkipKeys allObjects];

  return allObjects;
}

- (BOOL)isMultiUserNewUserCreationAllowed
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  if (([mEMORY[0x1E69DF068] isSharedIPad] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69AD428], "sharedConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "managingProfileIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    isUserEnrollment = 1;
  }

  else
  {
    mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
    isUserEnrollment = [mEMORY[0x1E69AD428] isUserEnrollment];
  }

  return isUserEnrollment;
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
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v3 = [publicXPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_3_1];
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
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v3 = [publicXPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_9_0];
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

- (void)resetPasscodeMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__MCProfileConnection_Private__resetPasscodeMetadataWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v5];
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

- (void)doMCICDidUpdateStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidUpdateStatus:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v10 profileConnection:self didUpdateStatus:statusCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)doMCICDidBeginInstallingNextProfileData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidBeginInstallingNextProfileData:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (dataCopy && (v9 & 1) != 0)
  {
    v10 = [MCProfile profileWithData:dataCopy outError:0];
    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_interactionDelegate);
      [v11 profileConnection:self didBeginInstallingNextProfile:v10];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)doMCICDidFinishInstallationWithIdentifier:(id)identifier error:(id)error completion:(id)completion
{
  identifierCopy = identifier;
  errorCopy = error;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidFinishInstallationWithIdentifier:error:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v13 profileConnection:self didFinishInstallationWithIdentifier:identifierCopy error:errorCopy];

    objc_storeWeak(&self->_interactionDelegate, 0);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)doMCICDidRequestUserInput:(id)input completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidRequestUserInput:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MEMORY[0x1AC55F990](completionCopy);
    userInputReplyBlock = self->userInputReplyBlock;
    self->userInputReplyBlock = v10;

    v12 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v12 profileConnection:self didRequestUserInput:inputCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(inputCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = inputCopy;
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

        dictionary = [MEMORY[0x1E695DF20] dictionary];
        [v12 addObject:dictionary];

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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v12, 0, 0, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)doMCICDidRequestMAIDSignIn:(id)in personaID:(id)d completion:(id)completion
{
  inCopy = in;
  dCopy = d;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidRequestMAIDSignIn:personaID:completion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = MEMORY[0x1AC55F990](completionCopy);
    MAIDSignInReplyBlock = self->MAIDSignInReplyBlock;
    self->MAIDSignInReplyBlock = v13;

    v15 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v15 profileConnection:self didRequestMAIDSignIn:inCopy personaID:dCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:&unk_1F1AA59E0 errorType:@"MCFatalError"];
    (*(completionCopy + 2))(completionCopy, 0, v15, 0);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)doMCICDidRequestManagedRestoreWithManagedAppleID:(id)d personaID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = MEMORY[0x1AC55F990](completionCopy);
    restoreReplyBlock = self->restoreReplyBlock;
    self->restoreReplyBlock = v12;

    v14 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v14 profileConnection:self didRequestManagedRestoreWithManagedAppleID:dCopy personaID:iDCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v14 = [MEMORY[0x1E696ABC0] MCErrorWithDomain:@"MCInstallationErrorDomain" code:4001 descriptionArray:&unk_1F1AA59F8 errorType:@"MCFatalError"];
    (*(completionCopy + 2))(completionCopy, 0, v14, 0);
  }

LABEL_6:
}

- (void)doMCICDidRequestShowUserWarnings:(id)warnings completion:(id)completion
{
  warningsCopy = warnings;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidRequestShowUserWarnings:completion:];
  }

  if (![warningsCopy count])
  {

    warningsCopy = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MEMORY[0x1AC55F990](completionCopy);
    showWarningsReplyBlock = self->showWarningsReplyBlock;
    self->showWarningsReplyBlock = v10;

    v12 = objc_loadWeakRetained(&self->_interactionDelegate);
    [v12 profileConnection:self didShowUserWarnings:warningsCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)doMCICDidFinishPreflightWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICDidFinishPreflightWithError:completion:];
  }

  v8 = MEMORY[0x1AC55F990](completionCopy);
  userInputReplyBlock = self->userInputReplyBlock;
  self->userInputReplyBlock = v8;

  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
  [WeakRetained profileConnection:self didFinishPreflightWithError:errorCopy];
}

- (void)doMCICWaitForEnrollmentToFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEBUG))
  {
    [MCProfileConnection(Private) doMCICWaitForEnrollmentToFinishWithCompletion:];
  }

  v5 = MEMORY[0x1AC55F990](completionCopy);
  waitForEnrollmentCompletionBlock = self->waitForEnrollmentCompletionBlock;
  self->waitForEnrollmentCompletionBlock = v5;
}

- (id)fetchActivationLockBypassKeyWithError:(id *)error
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
      mCVerboseDescription = [v5 MCVerboseDescription];
      *buf = 138543362;
      v14 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Activation lock bypass key fetch error. Error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v9 = v5;
      *error = v5;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_localizedSourceDescriptionForType:(int64_t)type MDMName:(id)name exchangeName:(id)exchangeName exchangeCount:(int64_t)count profileName:(id)profileName profileCount:(int64_t)profileCount
{
  v135 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  exchangeNameCopy = exchangeName;
  profileNameCopy = profileName;
  v16 = profileNameCopy;
  v17 = @"SETTINGS";
  if (!type)
  {
    v17 = @"CERTIFICATES";
  }

  if (nameCopy)
  {
    v18 = count < 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  if (v19 == 1 && profileCount <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME", v17];
    goto LABEL_19;
  }

  v21 = v19 ^ 1;
  if (profileCount == 1)
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
    MCLocalizedFormat(v23, v24, v25, v26, v27, v28, v29, v30, nameCopy);
    v31 = LABEL_20:;
LABEL_21:

    goto LABEL_22;
  }

  if (profileCount < 2)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_MULTIPLE_PROFILES", v17];
    v23 = LABEL_29:;
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:profileCount];
    MCLocalizedFormat(v23, v35, v36, v37, v38, v39, v40, v41, nameCopy);
    v31 = LABEL_30:;

    goto LABEL_21;
  }

  if (nameCopy)
  {
    v42 = count == 1;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;
  if (v42 && profileCount <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_ONE_EXCHANGE", v17];
    goto LABEL_19;
  }

  if (nameCopy)
  {
    v44 = count <= 1;
  }

  else
  {
    v44 = 1;
  }

  v45 = !v44;
  if (v45 == 1 && profileCount <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_AND_MULTIPLE_EXCHANGES", v17];
    v46 = LABEL_50:;
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    MCLocalizedFormat(v46, v48, v49, v50, v51, v52, v53, v54, nameCopy);
    v31 = LABEL_51:;
LABEL_52:

    goto LABEL_22;
  }

  v55 = v43 ^ 1;
  if (profileCount == 1)
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

  if (profileCount < 2)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_ONE_EXCHANGE_AND_MULTIPLE_PROFILES", v17];
    goto LABEL_29;
  }

  v57 = v45 ^ 1;
  if (profileCount == 1)
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

  if (profileCount < 2)
  {
    v57 = 1;
  }

  if ((v57 & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MDM_NAME_MULTIPLE_EXCHANGES_AND_MULTIPLE_PROFILES", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v59 = [MEMORY[0x1E696AD98] numberWithInteger:profileCount];
    MCLocalizedFormat(v46, v60, v61, v62, v63, v64, v65, v66, nameCopy);
    v31 = LABEL_71:;

    goto LABEL_52;
  }

  if (exchangeNameCopy)
  {
    v67 = count == 1;
  }

  else
  {
    v67 = 0;
  }

  v68 = v67;
  if (v67 && profileCount <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME", v17];
    v23 = LABEL_86:;
    MCLocalizedFormat(v23, v69, v70, v71, v72, v73, v74, v75, exchangeNameCopy);
    goto LABEL_20;
  }

  if (exchangeNameCopy && count == 2 && profileCount <= 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_ONE_OTHER", v17];
    goto LABEL_86;
  }

  if (exchangeNameCopy && count >= 3 && profileCount <= 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_MULTIPLE_OTHERS", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:count - 1];
    MCLocalizedFormat(v46, v76, v77, v78, v79, v80, v81, v82, exchangeNameCopy);
    goto LABEL_51;
  }

  v83 = v68 ^ 1;
  if (profileCount == 1)
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

  if (profileCount < 2)
  {
    v83 = 1;
  }

  if ((v83 & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_EXCHANGE_NAME_AND_MULTIPLE_PROFILES", v17];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:profileCount];
    MCLocalizedFormat(v23, v85, v86, v87, v88, v89, v90, v91, exchangeNameCopy);
    goto LABEL_30;
  }

  if (count >= 2 && profileCount == 1)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MULTIPLE_EXCHANGES_AND_ONE_PROFILE", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    MCLocalizedFormat(v46, v92, v93, v94, v95, v96, v97, v98, v47);
    goto LABEL_51;
  }

  if (count >= 2 && profileCount >= 2)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_MULTIPLE_EXCHANGES_AND_MULTIPLE_PROFILES", v17];
    v47 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v59 = [MEMORY[0x1E696AD98] numberWithInteger:profileCount];
    MCLocalizedFormat(v46, v99, v100, v101, v102, v103, v104, v105, v47);
    goto LABEL_71;
  }

  if (profileNameCopy && profileCount == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_PROFILE_NAME", v17];
    v23 = LABEL_112:;
    MCLocalizedFormat(v23, v106, v107, v108, v109, v110, v111, v112, v16);
    goto LABEL_20;
  }

  if (profileNameCopy && profileCount == 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_PROFILE_NAME_AND_ONE_OTHER", v17];
    goto LABEL_112;
  }

  if (profileNameCopy && profileCount >= 3)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_RESTRICTED_BY_PROFILE_NAME_AND_MULTIPLE_OTHERS", v17];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:profileCount - 1];
    MCLocalizedFormat(v23, v113, v114, v115, v116, v117, v118, v119, v16);
    goto LABEL_30;
  }

  v120 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_ERROR))
  {
    v121 = MEMORY[0x1E696AD98];
    v122 = v120;
    v123 = [v121 numberWithInteger:count];
    v124 = [MEMORY[0x1E696AD98] numberWithInteger:profileCount];
    *buf = 138544386;
    v126 = nameCopy;
    v127 = 2114;
    v128 = exchangeNameCopy;
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

- (id)_disallowedRestrictionErrorForRestrictionKey:(id)key
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"USER_ENROLLMENT_DISALLOWED_RESTRICTION_P_RESTRICTION", a2, key, v3, v4, v5, v6, v7, key);
  v10 = [v8 MCErrorWithDomain:@"MCDeviceCapabilitiesErrorDomain" code:26002 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)_transmogrifyRestrictionDictionaryForUserEnrollment:(id)enrollment outError:(id *)error
{
  enrollmentCopy = enrollment;
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
  mCMutableDeepCopy = [enrollmentCopy MCMutableDeepCopy];
  v7 = +[MCRestrictionsPayload userEnrollmentAllowedKeysFilter];
  v8 = +[MCRestrictionManager sharedManager];
  defaultRestrictions = [v8 defaultRestrictions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MCProfileConnection_Private___transmogrifyRestrictionDictionaryForUserEnrollment_outError___block_invoke;
  v15[3] = &unk_1E77D2BF8;
  v10 = v7;
  v16 = v10;
  v19 = &v35;
  v20 = &v23;
  v11 = defaultRestrictions;
  v21 = &v39;
  v22 = &v29;
  v17 = v11;
  selfCopy = self;
  [enrollmentCopy enumerateKeysAndObjectsUsingBlock:v15];
  if (*(v36 + 24) == 1)
  {
    [v24[5] MCSetBoolRestriction:@"allowSimple" value:0];
    [v24[5] MCSetValueRestriction:@"minLength" value:&unk_1F1AA5800];
  }

  if (!error || (v40[3] & 1) != 0)
  {
    if (!*(v40 + 24))
    {
      goto LABEL_6;
    }
  }

  else
  {
    *error = v30[5];
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

- (void)_debug_scheduleBackgroundTask:(id)task interval:(double)interval tolerance:(double)tolerance completion:(id)completion
{
  completionCopy = completion;
  taskCopy = task;
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:completionCopy];
  [v12 _debug_scheduleBackgroundTask:taskCopy interval:completionCopy tolerance:interval completion:tolerance];
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

- (void)setUserBookmarks:(id)bookmarks
{
  v20 = *MEMORY[0x1E69E9840];
  bookmarksCopy = bookmarks;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (bookmarksCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(bookmarksCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = bookmarksCopy;
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

          serializableDictionary = [*(*(&v15 + 1) + 8 * v10) serializableDictionary];
          [v5 addObject:serializableDictionary];

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

  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_38];
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
  userBookmarks = [v2 userBookmarks];

  return userBookmarks;
}

- (id)defaultUserBookmarks
{
  v41 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = MCSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/WebContentAnalysis.framework"];

  v4 = [MEMORY[0x1E696AAE8] bundleWithPath:v3];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];
  v7 = [@"com.apple.webcontentfilter.defaults." stringByAppendingString:languageCode];

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
      v32 = currentLocale;
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
      currentLocale = v32;
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

- (void)setWebContentFilterAutoPermittedURLStrings:(id)strings
{
  stringsCopy = strings;
  [(MCProfileConnection *)self checkInIfNeeded];
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v5 = [publicXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30_1];
  [v5 setAllowedURLStrings:stringsCopy completion:&__block_literal_global_30_1];
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

- (void)setWebContentFilterUserBlacklistedURLStrings:(id)strings
{
  stringsCopy = strings;
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self setValues:stringsCopy forUnionSetting:@"webContentFilterBlacklistedURLs"];
}

- (int)hostMayPairWithOptions:(id)options challenge:(id)challenge
{
  v42 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  challengeCopy = challenge;
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
    *&buf[4] = optionsCopy;
    _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEBUG, "Pairing options: %{public}@", buf, 0xCu);
  }

  cloudConfigurationDetails = [(MCProfileConnection *)self cloudConfigurationDetails];
  v11 = [cloudConfigurationDetails objectForKeyedSubscript:*MEMORY[0x1E69997B0]];
  if (optionsCopy)
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

      optionsCopy = 0;
    }
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"SupervisorCertificate"];
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

  if (!challengeCopy || ![v11 count])
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

  v19 = [optionsCopy objectForKeyedSubscript:@"ChallengeResponse"];
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
  if (![challengeCopy isEqualToData:?])
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

- (void)lockdownDidReceiveActivationRecord:(id)record
{
  v12 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  [(MCProfileConnection *)self checkInIfNeeded];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = qword_1ED4ADE28;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = recordCopy;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_INFO, "Received activation record: %{public}@", &v10, 0xCu);
    }

    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];
    [v8 storeActivationRecord:recordCopy completion:&__block_literal_global_41];
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MCUserHomeScreenLayoutFilePath();
  if ([defaultManager fileExistsAtPath:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = MCSystemHomeScreenLayoutFilePath();
    v4 = [defaultManager fileExistsAtPath:v5];
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
    parentalControlsBlockedAppBundleIDs = [v3 parentalControlsBlockedAppBundleIDs];
    v2 = [parentalControlsBlockedAppBundleIDs copy];
  }

  return v2;
}

- (void)setParentalControlsBlockedAppBundleIDs:(id)ds
{
  if (ds)
  {
    allObjects = [ds allObjects];
  }

  else
  {
    allObjects = 0;
  }

  v5 = allObjects;
  [(MCProfileConnection *)self setValues:allObjects forUnionSetting:@"blockedAppBundleIDs"];
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
    restrictionEnforcedWhitelistedAppBundleIDs = [v3 restrictionEnforcedWhitelistedAppBundleIDs];
    v2 = [restrictionEnforcedWhitelistedAppBundleIDs copy];
  }

  return v2;
}

- (BOOL)isInSingleAppMode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  isInSingleAppMode = [v2 isInSingleAppMode];

  return isInSingleAppMode;
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
  effectiveUserSettings = [v2 effectiveUserSettings];
  v4 = [MCRestrictionManager isPasscodeRequiredToAccessWhitelistedAppsWithSettingsDictionary:effectiveUserSettings];

  return v4;
}

- (BOOL)mayEnterPasscodeToAccessNonWhitelistedApps
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  effectiveUserSettings = [v2 effectiveUserSettings];
  v4 = [MCRestrictionManager mayEnterPasscodeToAccessNonWhitelistedAppsWithSettingsDictionary:effectiveUserSettings];

  return v4;
}

- (BOOL)isSingleAppModeLogoutAllowed
{
  [(MCProfileConnection *)self checkInIfNeeded];
  v2 = +[MCRestrictionManager sharedManager];
  isSingleAppModeLogoutAllowed = [v2 isSingleAppModeLogoutAllowed];

  return isSingleAppModeLogoutAllowed;
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
    parentalControlsWhitelistedAppBundleIDs = [v3 parentalControlsWhitelistedAppBundleIDs];
    v2 = [parentalControlsWhitelistedAppBundleIDs copy];
  }

  return v2;
}

- (void)setParentalControlsWhitelistedAppBundleIDs:(id)ds
{
  if (ds)
  {
    allObjects = [ds allObjects];
  }

  else
  {
    allObjects = 0;
  }

  v5 = allObjects;
  [(MCProfileConnection *)self setValues:allObjects forIntersectionSetting:@"appLockBundleIDs"];
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
    allObjects = 0;
  }

  else
  {
    v4 = [(MCProfileConnection *)self effectiveValuesForIntersectionSetting:@"autonomousSingleAppModePermittedAppIDs"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFA8] setWithArray:v4];
      restrictedAppBundleIDs = [(MCProfileConnection *)self restrictedAppBundleIDs];
      effectiveWhitelistedAppBundleIDs = [(MCProfileConnection *)self effectiveWhitelistedAppBundleIDs];
      if (restrictedAppBundleIDs)
      {
        [v5 minusSet:restrictedAppBundleIDs];
      }

      if (effectiveWhitelistedAppBundleIDs)
      {
        [v5 intersectSet:effectiveWhitelistedAppBundleIDs];
      }

      allObjects = [v5 allObjects];
    }

    else
    {
      allObjects = 0;
    }
  }

  return allObjects;
}

- (void)storeCertificateData:(id)data forHostIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  [(MCProfileConnection *)self checkInIfNeeded];
  if ([(MCProfileConnection *)self _checkRemoteProcessHasMDMEntitlement])
  {
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_47];
    [v8 storeCertificateData:dataCopy forIPCUIdentifier:identifierCopy completion:&__block_literal_global_47];
  }

  else
  {
    xpcConnection = [(MCProfileConnection *)self _lacksEntitlementError];
    __67__MCProfileConnection_MDM__storeCertificateData_forHostIdentifier___block_invoke(xpcConnection, xpcConnection);
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

- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__MCProfileConnection_MDM__unstageMDMEnrollmentInfoForPairingWatchWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken_completion___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = MEMORY[0x1AC55F990](v12);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  [v11 fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:tokenCopy completion:v8];
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

- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__MCProfileConnection_MDM__fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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

- (void)applyPairingWatchMDMEnrollmentData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MCProfileConnection_MDM__applyPairingWatchMDMEnrollmentData_completion___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = MEMORY[0x1AC55F990](v12);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  [v11 applyPairingWatchMDMEnrollmentData:dataCopy completion:v8];
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

- (void)updateMDMEnrollmentInfoForPairingWatch:(id)watch completion:(id)completion
{
  completionCopy = completion;
  watchCopy = watch;
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
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x1AC55F990](v13);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v12 updateMDMEnrollmentInfoForPairingWatch:watchCopy completion:v9];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection valueForEntitlement:@"com.apple.managedconfiguration.profileconnection.mdm-access"];

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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  [mEMORY[0x1E69AD420] refreshDetailsFromDisk];
  details = [mEMORY[0x1E69AD420] details];

  return details;
}

- (void)enrollProvisionallyWithNonce:(id)nonce completionBlock:(id)block
{
  blockCopy = block;
  nonceCopy = nonce;
  [(MCProfileConnection *)self checkInIfNeeded];
  v8 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MCProfileConnection_CloudConfiguration__enrollProvisionallyWithNonce_completionBlock___block_invoke;
  v10[3] = &unk_1E77D3300;
  v11 = blockCopy;
  v9 = blockCopy;
  [v8 provisionallyEnrollWithNonce:nonceCopy completionBlock:v10];
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

- (void)unenrollWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MCProfileConnection_CloudConfiguration__unenrollWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E77D3300;
  v8 = blockCopy;
  v6 = blockCopy;
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

- (void)retrieveCloudConfigurationDetailsCompletionBlock:(id)block
{
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = objc_opt_new();
  v5 = [(MCProfileConnection *)self _cloudConfigurationRetrievalBlockWithCompletion:blockCopy];

  [v6 fetchConfigurationWithCompletionBlock:v5];
}

- (void)retrieveCloudConfigurationWithoutValidationCompletionBlock:(id)block
{
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  v6 = objc_opt_new();
  v5 = [(MCProfileConnection *)self _cloudConfigurationRetrievalBlockWithCompletion:blockCopy];

  [v6 fetchConfigurationWithoutValidationWithCompletionBlock:v5];
}

- (void)retrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)block
{
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  if (details)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 0);
    }
  }

  else
  {
    [(MCProfileConnection *)self forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock:blockCopy];
  }
}

- (void)forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __105__MCProfileConnection_CloudConfiguration__forceRetrieveAndStoreCloudConfigurationDetailsCompletionBlock___block_invoke;
  v6[3] = &unk_1E77D3328;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
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

- (id)_cloudConfigurationRetrievalBlockWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__MCProfileConnection_CloudConfiguration___cloudConfigurationRetrievalBlockWithCompletion___block_invoke;
  v7[3] = &unk_1E77D3300;
  v8 = completionCopy;
  v4 = completionCopy;
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

- (id)getMachineInfoWithAdditionalInfo:(id)info
{
  infoCopy = info;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  v15 = 0;
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_49];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__MCProfileConnection_CloudConfiguration__getMachineInfoWithAdditionalInfo___block_invoke_13;
  v9[3] = &unk_1E77D26E8;
  v9[4] = &v10;
  [v6 cloudConfigurationMachineInfoDataWithAdditionalInfo:infoCopy completion:v9];

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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
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

- (void)retrieveCloudConfigurationFromURL:(id)l username:(id)username password:(id)password anchorCertificates:(id)certificates additionalMachineInfo:(id)info completionBlock:(id)block
{
  lCopy = l;
  usernameCopy = username;
  passwordCopy = password;
  certificatesCopy = certificates;
  infoCopy = info;
  blockCopy = block;
  [(MCProfileConnection *)self checkInIfNeeded];
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__MCProfileConnection_CloudConfiguration__retrieveCloudConfigurationFromURL_username_password_anchorCertificates_additionalMachineInfo_completionBlock___block_invoke;
  block[3] = &unk_1E77D33A0;
  v28 = lCopy;
  selfCopy = self;
  v30 = infoCopy;
  v31 = usernameCopy;
  v32 = passwordCopy;
  v33 = certificatesCopy;
  v34 = blockCopy;
  v21 = blockCopy;
  v22 = certificatesCopy;
  v23 = passwordCopy;
  v24 = usernameCopy;
  v25 = infoCopy;
  v26 = lCopy;
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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];
  v4 = [details objectForKey:*MEMORY[0x1E6999710]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasTeslaCloudConfigurationApplied
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999710]];
  if ([v4 BOOLValue])
  {
    v5 = [details objectForKeyedSubscript:*MEMORY[0x1E6999718]];
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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999700]];
  if ([v4 BOOLValue])
  {
    v5 = [details objectForKeyedSubscript:*MEMORY[0x1E6999720]];
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
  mEMORY[0x1E69AD460] = [MEMORY[0x1E69AD460] sharedClient];
  isAwaitingUserConfigured = [mEMORY[0x1E69AD460] isAwaitingUserConfigured];

  return isAwaitingUserConfigured;
}

- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69AD420];
  identifierCopy = identifier;
  sharedConfiguration = [v4 sharedConfiguration];
  details = [sharedConfiguration details];
  v8 = [details mutableCopy];

  [v8 setObject:identifierCopy forKeyedSubscript:*MEMORY[0x1E69997A8]];
  [(MCProfileConnection *)self storeCloudConfigurationDetails:v8 waitUntilCompleted:1 completion:0];
}

- (void)updateCloudConfigurationWithLastPushTokenHash:(id)hash
{
  v4 = MEMORY[0x1E69AD420];
  hashCopy = hash;
  sharedConfiguration = [v4 sharedConfiguration];
  details = [sharedConfiguration details];
  v8 = [details mutableCopy];

  [v8 setObject:hashCopy forKeyedSubscript:*MEMORY[0x1E6999748]];
  [(MCProfileConnection *)self storeCloudConfigurationDetails:v8 waitUntilCompleted:1 completion:0];
}

- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];

  [v6 restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:completionCopy];
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

- (void)storeCloudConfigurationDetails:(id)details waitUntilCompleted:(BOOL)completed completion:(id)completion
{
  completedCopy = completed;
  completionCopy = completion;
  detailsCopy = details;
  [(MCProfileConnection *)self checkInIfNeeded];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__MCProfileConnection_CloudConfiguration__storeCloudConfigurationDetails_waitUntilCompleted_completion___block_invoke;
  v15[3] = &unk_1E77D2698;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x1AC55F990](v15);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v13 = xpcConnection;
  if (completedCopy)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  }
  v14 = ;

  [v14 cloudConfigurationStoreDetails:detailsCopy completion:v11];
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

- (void)storePendingCloudConfigurationDetailsForMigration:(id)migration completionHandler:(id)handler
{
  handlerCopy = handler;
  migrationCopy = migration;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__MCProfileConnection_CloudConfiguration__storePendingCloudConfigurationDetailsForMigration_completionHandler___block_invoke;
  v12[3] = &unk_1E77D2698;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = MEMORY[0x1AC55F990](v12);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  [v11 cloudConfigurationStoreDetailsForPendingMigration:migrationCopy completion:v9];
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

- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__MCProfileConnection_CloudConfiguration__removeSetAsideCloudConfigurationProfileWithCompletion___block_invoke;
  v9[3] = &unk_1E77D2698;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x1AC55F990](v9);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];

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

- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailableAndKeyExists:(BOOL *)exists
{
  [(MCProfileConnection *)self checkInIfNeeded];
  [(MCProfileConnection *)self flush];
  v5 = CFPreferencesCopyAppValue(@"LockdownActivationIndicatesCloudConfigurationAvailable", @"com.apple.managedconfiguration.notbackedup");
  v6 = v5;
  if (!v5)
  {
    bOOLValue = 0;
    if (!exists)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  bOOLValue = [v5 BOOLValue];
  if (exists)
  {
LABEL_3:
    *exists = v6 != 0;
  }

LABEL_4:

  return bOOLValue;
}

- (BOOL)shouldSkipSetupPanes
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999718]];
  if ([v4 intValue] == 1)
  {
    v5 = [details objectForKeyedSubscript:*MEMORY[0x1E6999710]];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue & 1;
}

- (BOOL)shouldShowCloudConfigurationUI
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  [mEMORY[0x1E69AD420] refreshDetailsFromDisk];
  details = [mEMORY[0x1E69AD420] details];
  if (details)
  {
    setAsideDetails = details;
  }

  else
  {
    setAsideDetails = [mEMORY[0x1E69AD420] setAsideDetails];
    if (!setAsideDetails && ![(MCProfileConnection *)self activationRecordIndicatesCloudConfigurationIsAvailable])
    {
      goto LABEL_8;
    }
  }

  v6 = [setAsideDetails objectForKeyedSubscript:*MEMORY[0x1E6999708]];
  bOOLValue = [v6 BOOLValue];

  v8 = qword_1ED4ADE28;
  v9 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "User has completed cloud configuration. Not showing UI again.", buf, 2u);
    }

LABEL_8:
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults BOOLForKey:@"MCForceShowCloudConfigurationUI"];

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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  if (!details)
  {
    goto LABEL_15;
  }

  v5 = [details objectForKeyedSubscript:*MEMORY[0x1E69997A0]];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
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

  v10 = [details objectForKeyedSubscript:*MEMORY[0x1E6999740]];
  bOOLValue2 = [v10 BOOLValue];

  if ((bOOLValue2 & 1) == 0)
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

  v12 = [details objectForKeyedSubscript:*MEMORY[0x1E6999738]];
  bOOLValue3 = [v12 BOOLValue];

  if ((bOOLValue3 & 1) == 0)
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

  unverifiedInstalledMDMProfileIdentifier = [(MCProfileConnection *)self unverifiedInstalledMDMProfileIdentifier];

  v7 = qword_1ED4ADE28;
  v15 = os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_DEFAULT);
  if (unverifiedInstalledMDMProfileIdentifier)
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

- (void)storedProfileDataWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MCProfileConnection_CloudConfiguration__storedProfileDataWithCompletion___block_invoke;
  v12[3] = &unk_1E77D2698;
  v5 = completionCopy;
  v13 = v5;
  v6 = MEMORY[0x1AC55F990](v12);
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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

- (void)installStoredProfileDataWithExtraOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  [(MCProfileConnection *)self checkInIfNeeded];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__MCProfileConnection_CloudConfiguration__installStoredProfileDataWithExtraOptions_completion___block_invoke;
  v10[3] = &unk_1E77D3440;
  v10[4] = self;
  v11 = optionsCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = optionsCopy;
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

- (void)storeProfileData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  [(MCProfileConnection *)self checkInIfNeeded];
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:completionCopy];
  [v8 storeProfileData:dataCopy completion:completionCopy];
}

- (BOOL)shouldInstallStoredProfile
{
  [(MCProfileConnection *)self checkInIfNeeded];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MCPostSetupAutoInstallProfilePathNF();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (v4)
  {
    mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
    details = [mEMORY[0x1E69AD420] details];

    v7 = [details objectForKeyedSubscript:*MEMORY[0x1E6999708]];
    if ([v7 BOOLValue])
    {
      v8 = [details objectForKeyedSubscript:*MEMORY[0x1E69997A0]];
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
  xpcConnection = [(MCProfileConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_57_0];
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

- (void)setupAssistantDidFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  DMPerformMigrationIfNeeded();
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = qword_1ED4ADE28;
  if (os_log_type_enabled(qword_1ED4ADE28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_INFO, "Setup assistant has finished. Preventing further cloud configuration changes.", buf, 2u);
  }

  v6 = ([MEMORY[0x1E69AD428] getManagementStateForMAID] >> 2) & 1;
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];
  v9 = [details mutableCopy];

  mEMORY[0x1E69AD420]2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  setAsideDetails = [mEMORY[0x1E69AD420]2 setAsideDetails];
  v12 = [setAsideDetails mutableCopy];

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
  v14 = completionCopy;
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
    xpcConnection = [(MCProfileConnection *)self xpcConnection];
    v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v16];
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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  diagnosticsUploadURL = [mEMORY[0x1E69AD420] diagnosticsUploadURL];

  return diagnosticsUploadURL;
}

- (BOOL)isProvisionallyEnrolled
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isProvisionallyEnrolled = [mEMORY[0x1E69AD420] isProvisionallyEnrolled];

  return isProvisionallyEnrolled;
}

- (id)provisionalEnrollmentExpirationDate
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  provisionalEnrollmentExpirationDate = [mEMORY[0x1E69AD420] provisionalEnrollmentExpirationDate];

  return provisionalEnrollmentExpirationDate;
}

- (int)userMode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  userMode = [mEMORY[0x1E69AD420] userMode];

  return userMode != 0;
}

- (id)tvProviderUserToken
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  tvProviderUserToken = [mEMORY[0x1E69AD420] tvProviderUserToken];

  return tvProviderUserToken;
}

- (id)deviceOrganizationName
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999788]];

  return v4;
}

- (id)deviceDepartmentName
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999780]];

  return v4;
}

- (id)deviceOrganizationAddress
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999750]];

  return v4;
}

- (id)deviceOrganizationAddressLine1
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999758]];

  return v4;
}

- (id)deviceOrganizationAddressLine2
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999760]];

  return v4;
}

- (id)deviceOrganizationAddressLine3
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999768]];

  return v4;
}

- (id)deviceOrganizationCity
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999770]];

  return v4;
}

- (id)deviceOrganizationRegion
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999790]];

  return v4;
}

- (id)deviceOrganizationZipCode
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999798]];

  return v4;
}

- (id)deviceOrganizationCountry
{
  [(MCProfileConnection *)self checkInIfNeeded];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v4 = [details objectForKeyedSubscript:*MEMORY[0x1E6999778]];

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
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v4 = [publicXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_67];
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

- (BOOL)applySingleAppModeConfiguration:(id)configuration clientType:(id)type clientUUID:(id)d localizedClientDescription:(id)description outError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  typeCopy = type;
  dCopy = d;
  descriptionCopy = description;
  v14 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = configurationCopy;
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

  v22 = [(MCProfileConnection *)self applyRestrictionDictionary:v14 appsAndOptions:0 clientType:typeCopy clientUUID:dCopy localizedClientDescription:descriptionCopy localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:error];
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

- (BOOL)isURLManaged:(id)managed
{
  v15 = *MEMORY[0x1E69E9840];
  managedCopy = managed;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = +[MCManagedDomainsCache sharedCache];
  v6 = [v5 isURLManaged:managedCopy];

  v7 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v11 = 138412546;
    v12 = managedCopy;
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

- (BOOL)isAppManaged:(id)managed
{
  v17 = *MEMORY[0x1E69E9840];
  managedCopy = managed;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = MCContainingBundleIDForBundleID(managedCopy);
  attributesByAppID = [MEMORY[0x1E69AD440] attributesByAppID];
  allKeys = [attributesByAppID allKeys];
  v8 = [allKeys containsObject:v5];

  v9 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v13 = 138412546;
    v14 = managedCopy;
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
  attributesByAppID = [MEMORY[0x1E69AD440] attributesByAppID];
  allKeys = [attributesByAppID allKeys];

  v4 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = allKeys;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEBUG, "managedAppBundleIDs => %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];

  return allKeys;
}

- (BOOL)isBidirectionalDataTransferAllowedWithBundleID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  if ([(MCProfileConnection *)self isOpenInRestrictionInEffect])
  {
    v5 = MCContainingBundleIDForBundleID(dCopy);
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
    v13 = dCopy;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEBUG, "isBidirectionalDataTransferAllowedWithBundleID:%@ => %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isBundleIDAccountBasedForDragDrop:(id)drop
{
  v3 = MCContainingBundleIDForBundleID(drop);
  v4 = MCIsAppAccountBasedForDragDrop(v3);

  return v4;
}

- (int64_t)dragDropBidirectionalManagementStateForBaseBundleID:(id)d
{
  dCopy = d;
  if (MCIsAppAccountBasedForDragDrop(dCopy))
  {
    v5 = 2;
  }

  else if (MCIsAppExemptFromDragDropManagement(dCopy))
  {
    v5 = 3;
  }

  else
  {
    v5 = [(MCProfileConnection *)self isAppManaged:dCopy];
  }

  return v5;
}

- (int64_t)dragDropSourceManagementStateForBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = MCContainingBundleIDForBundleID(dCopy);
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
    v11 = dCopy;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEBUG, "dragDropSourceManagementStateForBundleID:%@ => %li", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)dragDropTargetManagementStateForBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = MCContainingBundleIDForBundleID(dCopy);
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
    v11 = dCopy;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEBUG, "dragDropTargetManagementStateForBundleID:%@ => %li", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isContactsReadAffectedByOpenInRestrictionsForTargetBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  v5 = (MCIsAppExemptFromImportFromTargetRestrictionsForContacts(dCopy) & 1) == 0 && [(MCProfileConnection *)self _shouldApplyContactsFilterForTargetBundleID:dCopy targetAccountManagement:0 outAllowManagedAccounts:0 outAllowUnmanagedAccounts:0];
  v6 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = dCopy;
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
  publicXPCConnection = [(MCProfileConnection *)self publicXPCConnection];
  v4 = [publicXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30_3];

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

- (BOOL)shouldApplyFilterForBundleID:(id)d sourceAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromOpenInSourceRestrictions(dCopy) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedSourceForOpenIn(dCopy))
  {
    if (management != 1)
    {
      if (management != 2)
      {
LABEL_3:
        v11 = 0;
        mayOpenFromManagedToUnmanaged = 1;
LABEL_4:
        v13 = 1;
        v14 = v11;
        goto LABEL_5;
      }

LABEL_34:
      mayOpenFromManagedToUnmanaged = [(MCProfileConnection *)self mayOpenFromManagedToUnmanaged];
      v11 = !mayOpenFromManagedToUnmanaged;
      goto LABEL_4;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:dCopy];

    if (v23)
    {
      goto LABEL_34;
    }
  }

  mayOpenFromUnmanagedToManaged = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
  v11 = 0;
  v13 = 0;
  mayOpenFromManagedToUnmanaged = 1;
  v14 = 1;
  if (mayOpenFromUnmanagedToManaged)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (accounts)
  {
    *accounts = v13;
  }

  if (unmanagedAccounts)
  {
    *unmanagedAccounts = mayOpenFromManagedToUnmanaged;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (management == 2)
    {
      v16 = @"MANAGED";
    }

    if (!management)
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

    if (accounts)
    {
      if (*accounts)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (unmanagedAccounts)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (unmanagedAccounts)
      {
LABEL_22:
        if (*unmanagedAccounts)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = dCopy;
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

- (BOOL)shouldApplyFilterForTargetBundleID:(id)d targetAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromImportFromTargetRestrictions(dCopy) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedTargetForOpenIn(dCopy))
  {
    if (management != 1)
    {
      if (management != 2)
      {
LABEL_3:
        v11 = 0;
        mayOpenFromUnmanagedToManaged = 1;
LABEL_4:
        v13 = 1;
        v14 = v11;
        goto LABEL_5;
      }

LABEL_34:
      mayOpenFromUnmanagedToManaged = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
      v11 = !mayOpenFromUnmanagedToManaged;
      goto LABEL_4;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:dCopy];

    if (v23)
    {
      goto LABEL_34;
    }
  }

  mayOpenFromManagedToUnmanaged = [(MCProfileConnection *)self mayOpenFromManagedToUnmanaged];
  v11 = 0;
  v13 = 0;
  mayOpenFromUnmanagedToManaged = 1;
  v14 = 1;
  if (mayOpenFromManagedToUnmanaged)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (accounts)
  {
    *accounts = v13;
  }

  if (unmanagedAccounts)
  {
    *unmanagedAccounts = mayOpenFromUnmanagedToManaged;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (management == 2)
    {
      v16 = @"MANAGED";
    }

    if (!management)
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

    if (accounts)
    {
      if (*accounts)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (unmanagedAccounts)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (unmanagedAccounts)
      {
LABEL_22:
        if (*unmanagedAccounts)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = dCopy;
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

- (BOOL)_shouldApplyContactsFilterForBundleID:(id)d sourceAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromOpenInSourceRestrictions(dCopy) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedSourceForOpenIn(dCopy))
  {
    if (management != 1)
    {
      if (management != 2)
      {
        goto LABEL_3;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:dCopy];

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

  mayOpenFromUnmanagedToManaged = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
  v11 = 0;
  v13 = 0;
  v12 = 1;
  v14 = 1;
  if (mayOpenFromUnmanagedToManaged)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (accounts)
  {
    *accounts = v13;
  }

  if (unmanagedAccounts)
  {
    *unmanagedAccounts = v12;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (management == 2)
    {
      v16 = @"MANAGED";
    }

    if (!management)
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

    if (accounts)
    {
      if (*accounts)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (unmanagedAccounts)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (unmanagedAccounts)
      {
LABEL_22:
        if (*unmanagedAccounts)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = dCopy;
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

- (BOOL)_shouldApplyContactsFilterForTargetBundleID:(id)d targetAccountManagement:(int)management outAllowManagedAccounts:(BOOL *)accounts outAllowUnmanagedAccounts:(BOOL *)unmanagedAccounts
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(MCProfileConnection *)self checkInIfNeeded];
  if (![(MCProfileConnection *)self isOpenInRestrictionInEffect]|| (MCIsAppExemptFromImportFromTargetRestrictionsForContacts(dCopy) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (MCIsAppAccountBasedTargetForOpenIn(dCopy))
  {
    if (management != 1)
    {
      if (management != 2)
      {
        goto LABEL_3;
      }

LABEL_34:
      mayOpenFromUnmanagedToManaged = [(MCProfileConnection *)self mayOpenFromUnmanagedToManaged];
      v11 = !mayOpenFromUnmanagedToManaged;
      goto LABEL_4;
    }
  }

  else
  {
    v22 = +[MCProfileConnection sharedConnection];
    v23 = [v22 isAppManaged:dCopy];

    if (v23)
    {
      goto LABEL_34;
    }
  }

  if ([(MCProfileConnection *)self mayOpenFromManagedToUnmanaged])
  {
LABEL_3:
    v11 = 0;
    mayOpenFromUnmanagedToManaged = 1;
LABEL_4:
    v13 = 1;
    v14 = v11;
    goto LABEL_5;
  }

  _unmanagedMayReadManagedContacts = [(MCProfileConnection *)self _unmanagedMayReadManagedContacts];
  v11 = 0;
  v13 = 0;
  mayOpenFromUnmanagedToManaged = 1;
  v14 = 1;
  if (_unmanagedMayReadManagedContacts)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (accounts)
  {
    *accounts = v13;
  }

  if (unmanagedAccounts)
  {
    *unmanagedAccounts = mayOpenFromUnmanagedToManaged;
  }

  v15 = qword_1ED4ADE08;
  if (os_log_type_enabled(qword_1ED4ADE08, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"UNMANAGED";
    if (management == 2)
    {
      v16 = @"MANAGED";
    }

    if (!management)
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

    if (accounts)
    {
      if (*accounts)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (unmanagedAccounts)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = @"NOT RETURNED";
      if (unmanagedAccounts)
      {
LABEL_22:
        if (*unmanagedAccounts)
        {
          v17 = @"YES";
        }

        goto LABEL_31;
      }
    }

    v17 = @"NOT RETURNED";
LABEL_31:
    v25 = 138413314;
    v26 = dCopy;
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