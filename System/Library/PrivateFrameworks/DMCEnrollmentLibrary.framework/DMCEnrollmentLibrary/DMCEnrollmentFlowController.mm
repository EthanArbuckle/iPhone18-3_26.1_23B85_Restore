@interface DMCEnrollmentFlowController
+ (id)_createEnrollmentNotAllowedDuringSDPError;
+ (id)_createEnterpriseApplicationExistsErrorWithAppName:(id)a3;
+ (id)_createEnterpriseApplicationMissingEntitlementsError;
+ (id)_createFailedToCaptureSnapshotError;
+ (id)_createFailedToDeleteSnapshotError;
+ (id)_createGeneralError;
+ (id)_createGeneralSignInError;
+ (id)_createInvalidCloudConfigError;
+ (id)_createInvalidErSSODeclarationsError;
+ (id)_createMissingAppleAccountForUserEnrollmentError;
+ (id)_createMissingEnterpriseApplicationBundleIDError;
+ (id)_createMissingEnterpriseApplicationError;
+ (id)_createMissingRMAccountError;
+ (id)_createPasscodeRequiredError;
+ (id)_createUnsupportedFeatureError;
+ (id)_createUpdateFromFactoryVersionRequiredError;
+ (id)chooseServerFromUAORGOServers:(id)a3 error:(id *)a4;
+ (id)enrollmentFlowController;
+ (id)enrollmentFlowControllerWithPresenter:(id)a3 managedConfigurationHelper:(id)a4;
+ (id)enrollmentFlowControllerWithPresenter:(id)a3 managedConfigurationHelper:(id)a4 rmStoreHelper:(id)a5;
- (BOOL)_appWithBundleIDExists:(id)a3;
- (BOOL)_canSkipMDMEnrollmentWithEnrollmentType:(unint64_t)a3;
- (BOOL)_handleNeedCredentialsError:(id)a3;
- (BOOL)_handleSoftwareUpdateRequiredError:(id)a3;
- (BOOL)_shouldDoReturnToService;
- (BOOL)_validEnrollmentMode:(id)a3 enrollmentMethod:(unint64_t)a4;
- (BOOL)_validateBundleID:(id)a3 personaID:(id)a4 requiredEntitlements:(id)a5 error:(id *)a6;
- (BOOL)_verifyAccountsInformationWithAltDSID:(id)a3 personaID:(id)a4;
- (BOOL)_verifyPropertiesFromProfileData:(id)a3 enrollmentMethod:(unint64_t)a4 isRapidReturnToService:(BOOL)a5 isESSO:(BOOL)a6 essoAppITunesStoreID:(id)a7 enrollmentMode:(id)a8 managedAppleID:(id)a9 assignedManagedAppleID:(id)a10 serverCapabilities:(id)a11 error:(id *)a12;
- (DMCEnrollmentDirtyState)dirtyState;
- (DMCEnrollmentFlowController)init;
- (DMCEnrollmentFlowController)initWithPresenter:(id)a3 managedConfigurationHelper:(id)a4 rmStoreHelper:(id)a5;
- (DMCEnrollmentFlowDelegate)delegate;
- (DMCEnrollmentFlowMigrationDelegate)migrationDelegate;
- (DMCObliterationShelter)obliterationShelter;
- (DMCServiceDiscoveryHelper)serviceDiscoveryHelper;
- (id)_ADE_RRTS_snapshotSteps;
- (id)_ADE_RTS_commonSteps;
- (id)_ADE_commonSteps;
- (id)_ADE_migration_cleanupSteps;
- (id)_ADxE_ABE_ESSO_firstPartSteps;
- (id)_ADxE_ABE_ESSO_secondPartSteps_default;
- (id)_ADxE_ABE_ESSO_secondPartSteps_orgToken;
- (id)_ADxE_ABE_firstPartSteps;
- (id)_ADxE_ABE_secondPartSteps_default;
- (id)_ADxE_ABE_secondPartSteps_orgToken;
- (id)_ADxE_ESSO_firstPart_commonSteps;
- (id)_ADxE_ESSO_secondPart_commonSteps_default;
- (id)_ADxE_ESSO_secondPart_commonSteps_orgToken;
- (id)_ADxE_secondPart_commonSteps_default;
- (id)_ADxE_secondPart_commonSteps_orgToken;
- (id)_ADxE_thirdParty_ESSO_firstPartSteps;
- (id)_ADxE_thirdParty_firstPartSteps;
- (id)_ORGO_MACBuddy_firstPartSteps;
- (id)_ORGO_MACBuddy_secondPartSteps;
- (id)_ORGO_MAIDEnrollmentSteps;
- (id)_ORGO_MAIDEnrollmentSteps_orgToken;
- (id)_appNameWithBundleID:(id)a3;
- (id)_bundleIDsFromAppIDs:(id)a3;
- (id)_convertErrorToHumanReadableError:(id)a3;
- (id)_ephemeralAuthSteps;
- (id)_errorTranslation;
- (id)_findServerWithVersion:(id)a3 servers:(id)a4;
- (id)_guardAgainstConflictingAccountsWithUsername:(id)a3 altDSID:(id)a4;
- (id)_machineInfoWithEnrollmentType:(unint64_t)a3 enrollmentMethod:(unint64_t)a4 isDoingReturnToService:(BOOL)a5 isRapidReturnToService:(BOOL)a6;
- (id)_nameForStep:(unint64_t)a3;
- (id)_permanentAuthSteps;
- (id)_postEnrollmentSteps;
- (id)_readDirtyStateFromDisk;
- (id)_stepsWithUI;
- (id)_translatedErrorStringForError:(id)a3;
- (id)_trustedErrors;
- (void)_addNotification;
- (void)_analyzeCloudConfig:(id)a3 enrollmentType:(unint64_t)a4 isDoingReturnToService:(BOOL)a5 obliterationShelter:(id)a6;
- (void)_analyzeESSODetails:(id)a3;
- (void)_askForMDMUsernameAndCredentialWithError:(id)a3;
- (void)_askForPasscodeIfNeededWithEnrollmentType:(unint64_t)a3;
- (void)_askForRestoreChoiceWithMAID:(id)a3 personaID:(id)a4;
- (void)_askForUserConsentWithProfileData:(id)a3 managedAppleID:(id)a4 cloudConfig:(id)a5 isReturnToService:(BOOL)a6 enrollmentType:(unint64_t)a7;
- (void)_askForUsernameWithDefaultUsername:(id)a3;
- (void)_awaitApplicationInstallation;
- (void)_awaitDDMAppConfigurationWithProfileIdentifier:(id)a3;
- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)a3;
- (void)_chooseEnrollmentTypeWithAvailableServers:(id)a3 serverInformationSource:(unint64_t)a4;
- (void)_cleanupDirtyState:(id)a3;
- (void)_cleanupOrphanedAppsIfNeededIsDoingRRTS:(BOOL)a3;
- (void)_correlateMAIDWithAltDSID:(id)a3 withRMAccount:(id)a4 isProfileLocked:(BOOL)a5 organizationName:(id)a6 friendlyName:(id)a7 personaID:(id)a8;
- (void)_createAndSyncBootstrapTokenWithDevicePasscode:(id)a3 devicePasscodeContext:(id)a4;
- (void)_createEnterprisePersonaWithDevicePasscode:(id)a3 devicePasscodeContext:(id)a4;
- (void)_createRMAccountIfNeededWithSignInUserIdentifier:(id)a3 assignedMAID:(id)a4 existingRMAccountID:(id)a5 enrollmentType:(unint64_t)a6 enrollmentMethod:(unint64_t)a7 isRenewalFlow:(BOOL)a8;
- (void)_detectAuthTypeWithServiceURL:(id)a3 enrollmentType:(unint64_t)a4 isPostBuddy:(BOOL)a5 machineInfo:(id)a6 anchorCertificateRefs:(id)a7;
- (void)_displayManagementDetailsOverviewWithProfileData:(id)a3 managedAppleID:(id)a4;
- (void)_enrollmentTypeAuthorizedBySDP:(unint64_t)a3 completion:(id)a4;
- (void)_ensureDeviceActivation;
- (void)_ensureWiFiConnectionWithWiFiProfile:(id)a3;
- (void)_exchangeMAIDForBearerTokenWithRMAccountIdentifier:(id)a3 authParams:(id)a4 anchorCertificateRefs:(id)a5;
- (void)_extensionIDsFromDeclarationProfiles;
- (void)_fetchAppAttributesWithITunesItemID:(id)a3 completionHandler:(id)a4;
- (void)_fetchBundleIDsWithiTunesItemID:(id)a3 debuggingAppIDs:(id)a4 completionHandler:(id)a5;
- (void)_fetchCloudConfigWithEnrollmentType:(unint64_t)a3 isReturnToService:(BOOL)a4;
- (void)_fetchEnrollmentProfileFromServiceURL:(id)a3 authTokens:(id)a4 machineInfo:(id)a5 anchorCertificateRefs:(id)a6 enrollmentMethod:(unint64_t)a7 isReturnToService:(BOOL)a8;
- (void)_fetchEnrollmentProfileFromServiceURL:(id)a3 username:(id)a4 password:(id)a5 machineInfo:(id)a6 anchorCertificateRefs:(id)a7;
- (void)_fetchEnrollmentProfileFromWebURL:(id)a3 machineInfo:(id)a4 anchorCertificateRefs:(id)a5 isReturnToService:(BOOL)a6;
- (void)_fetchServerInformationWithUsername:(id)a3;
- (void)_flowTerminatedWithError:(id)a3 canceled:(BOOL)a4;
- (void)_initiateDEPPushTokenSync;
- (void)_installESSODeclarations:(id)a3 chosenBundleID:(id)a4 personaID:(id)a5 enrollmentType:(unint64_t)a6;
- (void)_installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 devicePasscodeContext:(id)a5 passcodeContextExtractable:(BOOL)a6 personaID:(id)a7 rmAccountIdentifier:(id)a8 isESSO:(BOOL)a9 essoAppITunesStoreID:(id)a10 essoConfigurationProfile:(id)a11 wifiProfileIdentifier:(id)a12 enrollmentType:(unint64_t)a13 isReturnToService:(BOOL)a14;
- (void)_installEnterpriseApplication:(id)a3 debuggingAppIDs:(id)a4 personaID:(id)a5;
- (void)_linkESSOStore:(id)a3 rmAccountIdentifier:(id)a4 profileIdentifier:(id)a5;
- (void)_manageApplicationWithAppBundleID:(id)a3 essoDetails:(id)a4 organization:(id)a5 personaID:(id)a6;
- (void)_preflightEnrollmentWithEnrollmentType:(unint64_t)a3 isRenewalFlow:(BOOL)a4 isPostRestoration:(BOOL)a5 isPostBuddy:(BOOL)a6;
- (void)_processAuthServicesWithAuthParams:(id)a3 enrollmentMethod:(unint64_t)a4 username:(id)a5;
- (void)_processPotentialMigrationIfNeededWithEnrollmentType:(unint64_t)a3 cloudConfig:(id)a4;
- (void)_promoteiCloudWithAltDSID:(id)a3;
- (void)_promptForSoftwareUpdateWithSoftwareUpdateInfo:(id)a3;
- (void)_reauthenticationCompleteWithRMIdentifier:(id)a3;
- (void)_receivedApplicationWillTerminateNotification:(id)a3;
- (void)_requestiCloudSignInConfirmation;
- (void)_resetToInitialSteps;
- (void)_restoreLanguage:(id)a3 locale:(id)a4;
- (void)_restoreSetAsideProfiles;
- (void)_signInMAIDWithAuthenticationResult:(id)a3 enrollmentType:(unint64_t)a4 personaID:(id)a5 isRenewalFlow:(BOOL)a6;
- (void)_skipMDMEnrollment;
- (void)_startEnrollmentFlowWithType:(unint64_t)a3 anchorCertificates:(id)a4 restartIfFail:(BOOL)a5 completionHandler:(id)a6;
- (void)_storeCloudConfig:(id)a3;
- (void)_takeSnapshot;
- (void)_trackDirtyAppBundleIDs:(id)a3 personaID:(id)a4;
- (void)_unblockAppInstallsIfNecessaryWithCaller:(id)a3;
- (void)_unblockAppInstallsWithCaller:(id)a3;
- (void)_unblockMDMCommands;
- (void)_unblockMDMCommandsIfNeededHasBlocked:(BOOL)a3;
- (void)_updateAccountsWithRMIdentifier:(id)a3 managedAppleID:(id)a4 profileIdentifier:(id)a5 organizationName:(id)a6 enrollmentURL:(id)a7 personaID:(id)a8;
- (void)_updateCloudConfigWithRMAccountIdentifier:(id)a3;
- (void)_updateCredentialForAccount:(id)a3 authTokens:(id)a4;
- (void)_updateRMAccountWithIdentifier:(id)a3 authTokens:(id)a4 personaID:(id)a5;
- (void)_updateRMAccountWithIdentifier:(id)a3 authTokens:(id)a4 profileIdentifier:(id)a5 organizationName:(id)a6 personaID:(id)a7 enrollmentMethod:(unint64_t)a8;
- (void)_updateRMAccountWithIdentifier:(id)a3 authenticationResults:(id)a4 enrollmentMethod:(unint64_t)a5;
- (void)_waitForDeviceConfiguration;
- (void)_waitForESSODeclarations;
- (void)_workerQueue_cleanupCachedValues;
- (void)_workerQueue_flowCompleted;
- (void)_workerQueue_performFlowStep:(unint64_t)a3;
- (void)_workerQueue_stopMonitorAndEmptyDiskValues;
- (void)_writeDirtyStateToDisk:(id)a3;
- (void)appInstallationStatusUpdatedForType:(id)a3 totalNumber:(unint64_t)a4 finishedNumber:(unint64_t)a5;
- (void)cleanUpDirtyState;
- (void)continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults:(id)a3 serviceURL:(id)a4 bearerToken:(id)a5 profileData:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)setEnrollmentMethod:(unint64_t)a3;
- (void)setEnrollmentType:(unint64_t)a3;
- (void)startInBuddyEnrollmentFlowRestartIfFail:(BOOL)a3 completionHandler:(id)a4;
- (void)updateMDMUserEnrollmentWithManagedAppleID:(id)a3 profileIdentifier:(id)a4 organizationName:(id)a5 personaID:(id)a6 completionHandler:(id)a7;
- (void)updateSharediPadUserChannelWithManagedAppleID:(id)a3 profileIdentifier:(id)a4 organizationName:(id)a5 enrollmentURL:(id)a6 completionHandler:(id)a7;
@end

@implementation DMCEnrollmentFlowController

+ (id)enrollmentFlowController
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)enrollmentFlowControllerWithPresenter:(id)a3 managedConfigurationHelper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DMCEnrollmentFlowController alloc] initWithPresenter:v6 managedConfigurationHelper:v5 rmStoreHelper:0];

  return v7;
}

+ (id)enrollmentFlowControllerWithPresenter:(id)a3 managedConfigurationHelper:(id)a4 rmStoreHelper:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[DMCEnrollmentFlowController alloc] initWithPresenter:v9 managedConfigurationHelper:v8 rmStoreHelper:v7];

  return v10;
}

- (DMCEnrollmentFlowController)init
{
  v3.receiver = self;
  v3.super_class = DMCEnrollmentFlowController;
  result = [(DMCEnrollmentFlowControllerBase *)&v3 init];
  if (result)
  {
    result->_cleanupIfFail = 1;
  }

  return result;
}

- (DMCEnrollmentFlowController)initWithPresenter:(id)a3 managedConfigurationHelper:(id)a4 rmStoreHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(DMCEnrollmentFlowController *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_presenter, a3);
    objc_storeStrong(&v13->_managedConfigurationHelper, a4);
    objc_storeStrong(&v13->_rmStoreHelper, a5);
    [(DMCEnrollmentFlowController *)v13 _addNotification];
  }

  return v13;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[DMCEnrollmentFlowController dealloc]";
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = NSStringFromSelector(a2);
  [(DMCEnrollmentFlowController *)self _unblockAppInstallsIfNecessaryWithCaller:v5];

  if ([(DMCEnrollmentFlowController *)self hasBlockedMDMCommands])
  {
    [(DMCEnrollmentFlowController *)self _unblockMDMCommands];
  }

  if ([(DMCEnrollmentFlowController *)self hasEnabledPushWake])
  {
    [(DMCEnrollmentFlowController *)self _disablePushWake];
  }

  v7.receiver = self;
  v7.super_class = DMCEnrollmentFlowController;
  [(DMCEnrollmentFlowController *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (DMCServiceDiscoveryHelper)serviceDiscoveryHelper
{
  serviceDiscoveryHelper = self->_serviceDiscoveryHelper;
  if (!serviceDiscoveryHelper)
  {
    v4 = objc_opt_new();
    v5 = self->_serviceDiscoveryHelper;
    self->_serviceDiscoveryHelper = v4;

    serviceDiscoveryHelper = self->_serviceDiscoveryHelper;
  }

  return serviceDiscoveryHelper;
}

- (DMCEnrollmentDirtyState)dirtyState
{
  dirtyState = self->_dirtyState;
  if (!dirtyState)
  {
    v4 = [DMCEnrollmentDirtyState alloc];
    v5 = [(DMCEnrollmentFlowController *)self _readDirtyStateFromDisk];
    v6 = [(DMCEnrollmentDirtyState *)v4 initWithDictionary:v5];
    v7 = self->_dirtyState;
    self->_dirtyState = v6;

    dirtyState = self->_dirtyState;
  }

  return dirtyState;
}

- (DMCObliterationShelter)obliterationShelter
{
  obliterationShelter = self->_obliterationShelter;
  if (!obliterationShelter)
  {
    v4 = objc_opt_new();
    v5 = self->_obliterationShelter;
    self->_obliterationShelter = v4;

    v6 = self->_obliterationShelter;
    v8 = 0;
    [(DMCObliterationShelter *)v6 retrieveWithError:&v8];
    obliterationShelter = self->_obliterationShelter;
  }

  return obliterationShelter;
}

- (void)setEnrollmentType:(unint64_t)a3
{
  if (self->_enrollmentType != a3)
  {
    self->_enrollmentType = a3;
    v5 = [(DMCEnrollmentFlowController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(DMCEnrollmentFlowController *)self delegate];
      [v7 enrollmentFlowController:self didUpdateEnrollmentType:a3];
    }
  }
}

- (void)setEnrollmentMethod:(unint64_t)a3
{
  if (self->_enrollmentMethod != a3)
  {
    self->_enrollmentMethod = a3;
    v5 = [(DMCEnrollmentFlowController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(DMCEnrollmentFlowController *)self delegate];
      [v7 enrollmentFlowController:self didUpdateEnrollmentMethod:a3];
    }
  }
}

+ (id)chooseServerFromUAORGOServers:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 count];
  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = [v5 objectAtIndexedSubscript:0];
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEBUG, "Chosen server: %{public}@", buf, 0xCu);
    }

    a4 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Invalid servers list to choose from: no servers listed.", buf, 2u);
    }

    if (a4)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277D032F0];
      v12 = DMCErrorArray();
      *a4 = [v10 DMCErrorWithDomain:v11 code:15004 descriptionArray:v12 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

      a4 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return a4;
}

- (void)cleanUpDirtyState
{
  v3 = [(DMCEnrollmentFlowController *)self dirtyState];
  [(DMCEnrollmentFlowController *)self _cleanupDirtyState:v3];
}

- (void)startInBuddyEnrollmentFlowRestartIfFail:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DMCEnrollmentFlowController *)self _shouldDoReturnToService];
  v8 = *DMCLogObjects();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Starting Return to Service Enrollment...", buf, 2u);
    }

    [(DMCEnrollmentFlowController *)self setIsDoingReturnToService:1];
  }

  else if (v9)
  {
    *v11 = 0;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Starting in Buddy Enrollment...", v11, 2u);
  }

  if (v4)
  {
    v10 = [(DMCEnrollmentFlowController *)self isDoingReturnToService]^ 1;
  }

  else
  {
    v10 = 0;
  }

  [(DMCEnrollmentFlowController *)self _startEnrollmentFlowWithType:9 anchorCertificates:0 restartIfFail:v10 completionHandler:v6];
}

- (void)continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults:(id)a3 serviceURL:(id)a4 bearerToken:(id)a5 profileData:(id)a6 completionHandler:(id)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  [(DMCEnrollmentFlowController *)self setEnrollmentType:2];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:1];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:v13];

  [(DMCEnrollmentFlowController *)self setRestartIfFail:0];
  [(DMCEnrollmentFlowController *)self setAuthenticationResults:v16];

  [(DMCEnrollmentFlowController *)self setServiceURL:v15];
  v25 = *MEMORY[0x277D245C8];
  v26[0] = v12;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [(DMCEnrollmentFlowController *)self setAuthTokens:v17];

  [(DMCEnrollmentFlowController *)self setProfileData:v14];
  v18 = [(DMCEnrollmentFlowController *)self loggingSupport];

  if (!v18)
  {
    v19 = objc_opt_new();
    [(DMCEnrollmentFlowController *)self setLoggingSupport:v19];

    v20 = [(DMCEnrollmentFlowController *)self loggingSupport];
    [v20 enableDebugLoggingForEnrollment];
  }

  v21 = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __144__DMCEnrollmentFlowController_continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults_serviceURL_bearerToken_profileData_completionHandler___block_invoke;
  v24[3] = &unk_278EE3120;
  v24[4] = self;
  [v21 queueBlock:v24];

  v22 = [(DMCEnrollmentFlowController *)self _ORGO_MACBuddy_secondPartSteps];
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v22];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  v23 = *MEMORY[0x277D85DE8];
}

void __144__DMCEnrollmentFlowController_continueMacBuddyORGOEnrollmentFlowWithAuthenticationResults_serviceURL_bearerToken_profileData_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stepQueue];
  [v1 removeAllObjects];
}

void __107__DMCEnrollmentFlowController_reauthBYODEnrollmentFlowRestartIfFail_rmAccountIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stepQueue];
  [v1 removeAllObjects];
}

- (void)updateMDMUserEnrollmentWithManagedAppleID:(id)a3 profileIdentifier:(id)a4 organizationName:(id)a5 personaID:(id)a6 completionHandler:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543874;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Update MDM User Enrollment managedAppleID: %{public}@, profileIdentifier: %{public}@, personaID: %{public}@", &v19, 0x20u);
  }

  [(DMCEnrollmentFlowController *)self setEnrollmentType:6];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:4];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:v15];

  [(DMCEnrollmentFlowController *)self setRestartIfFail:0];
  [(DMCEnrollmentFlowController *)self setManagedAppleID:v12];
  [(DMCEnrollmentFlowController *)self setProfileIdentifier:v13];
  [(DMCEnrollmentFlowController *)self setOrganizationName:v16];

  [(DMCEnrollmentFlowController *)self setPersonaID:v14];
  [(DMCEnrollmentFlowController *)self _resetToInitialSteps];
  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateSharediPadUserChannelWithManagedAppleID:(id)a3 profileIdentifier:(id)a4 organizationName:(id)a5 enrollmentURL:(id)a6 completionHandler:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138544130;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Update Shared iPad User Channel managedAppleID: %{public}@, profileIdentifier: %{public}@, organizationName: %{public}@, enrollmentURL: %{public}@", &v19, 0x2Au);
  }

  [(DMCEnrollmentFlowController *)self setEnrollmentType:7];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:3];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:v16];

  [(DMCEnrollmentFlowController *)self setRestartIfFail:0];
  [(DMCEnrollmentFlowController *)self setManagedAppleID:v12];
  [(DMCEnrollmentFlowController *)self setProfileIdentifier:v13];
  [(DMCEnrollmentFlowController *)self setOrganizationName:v14];
  [(DMCEnrollmentFlowController *)self setEnrollmentURL:v15];
  [(DMCEnrollmentFlowController *)self _resetToInitialSteps];
  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_startEnrollmentFlowWithType:(unint64_t)a3 anchorCertificates:(id)a4 restartIfFail:(BOOL)a5 completionHandler:(id)a6
{
  location[3] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  [(DMCEnrollmentFlowController *)self setEnrollmentType:a3];
  [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:v11];
  if (a3 - 1 >= 6 && a3 - 8 > 1)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = a3;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "Failed: %lu feature is not supported", location, 0xCu);
    }

    v14 = +[DMCEnrollmentFlowController _createUnsupportedFeatureError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v14 canceled:0];
  }

  else
  {
    objc_initWeak(location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __111__DMCEnrollmentFlowController__startEnrollmentFlowWithType_anchorCertificates_restartIfFail_completionHandler___block_invoke;
    v15[3] = &unk_278EE3148;
    objc_copyWeak(v17, location);
    v17[1] = a3;
    v18 = a5;
    v16 = v10;
    [(DMCEnrollmentFlowController *)self _enrollmentTypeAuthorizedBySDP:a3 completion:v15];

    objc_destroyWeak(v17);
    objc_destroyWeak(location);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __111__DMCEnrollmentFlowController__startEnrollmentFlowWithType_anchorCertificates_restartIfFail_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 48);
        v12 = 134217984;
        v13 = v7;
        _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Failed: %lu feature is not supported while SDP is unauthorized", &v12, 0xCu);
      }

      v8 = [objc_opt_class() _createEnrollmentNotAllowedDuringSDPError];
      [v5 _flowTerminatedWithError:v8 canceled:1];
    }

    else
    {
      [WeakRetained setRestartIfFail:*(a1 + 56)];
      v9 = *(a1 + 32);
      v10 = certificatesFromDERCertificateDataArray();
      [v5 setAnchorCertificateRefs:v10];

      [v5 _resetToInitialSteps];
      [v5 _pollNextStep];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_workerQueue_performFlowStep:(unint64_t)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = [(DMCEnrollmentFlowController *)self _nameForStep:?];
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v76 = v5;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Will perform enrollment step: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277D03550] currentPersonaID];
    v8 = [MEMORY[0x277D03550] currentPersonaTypeString];
    *buf = 136315906;
    v76 = "[DMCEnrollmentFlowController _workerQueue_performFlowStep:]";
    v77 = 1024;
    v78 = 420;
    v79 = 2114;
    v80 = v7;
    v81 = 2114;
    v82 = v8;
    _os_log_impl(&dword_247E39000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v9 = [(DMCEnrollmentFlowController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(DMCEnrollmentFlowController *)self delegate];
    [v11 enrollmentFlowController:self performingEnrollmentStepWithName:v5 status:0];
  }

  [(DMCEnrollmentFlowControllerBase *)self setCurrentStep:a3];
  v12 = [(DMCEnrollmentFlowController *)self _stepsWithUI];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v14 = [v12 containsObject:v13];

  if (v14)
  {
    [(DMCEnrollmentFlowController *)self setHasExecutedUIStep:1];
  }

  v15 = [(DMCEnrollmentFlowController *)self _postEnrollmentSteps];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v17 = [v15 containsObject:v16];

  if (v17)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "The core part of the enrollment flow is done. Cleaning up disk values...", buf, 2u);
    }

    [(DMCEnrollmentFlowController *)self _workerQueue_stopMonitorAndEmptyDiskValues];
  }

  switch(a3)
  {
    case 0uLL:
      [(DMCEnrollmentFlowController *)self _preflightEnrollmentWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] isRenewalFlow:[(DMCEnrollmentFlowController *)self isRenewalFlow] isPostRestoration:[(DMCEnrollmentFlowController *)self isPostRestoration] isPostBuddy:[(DMCEnrollmentFlowController *)self isPostBuddy]];
      goto LABEL_82;
    case 1uLL:
      v19 = [(DMCEnrollmentFlowController *)self username];
      [(DMCEnrollmentFlowController *)self _askForUsernameWithDefaultUsername:v19];
      goto LABEL_81;
    case 2uLL:
      v19 = [(DMCEnrollmentFlowController *)self username];
      [(DMCEnrollmentFlowController *)self _fetchServerInformationWithUsername:v19];
      goto LABEL_81;
    case 3uLL:
      v19 = [(DMCEnrollmentFlowController *)self servers];
      [(DMCEnrollmentFlowController *)self _chooseEnrollmentTypeWithAvailableServers:v19 serverInformationSource:[(DMCEnrollmentFlowController *)self serverInformationSource]];
      goto LABEL_81;
    case 4uLL:
      v19 = [(DMCEnrollmentFlowController *)self serviceURL];
      v46 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v47 = [(DMCEnrollmentFlowController *)self isPostBuddy];
      v48 = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:0 isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      v49 = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _detectAuthTypeWithServiceURL:v19 enrollmentType:v46 isPostBuddy:v47 machineInfo:v48 anchorCertificateRefs:v49];

      goto LABEL_64;
    case 5uLL:
      v19 = [(DMCEnrollmentFlowController *)self essoDetails];
      [(DMCEnrollmentFlowController *)self _analyzeESSODetails:v19];
      goto LABEL_81;
    case 6uLL:
      v19 = [(DMCEnrollmentFlowController *)self essoDetails];
      v20 = [v19 iTunesStoreID];
      v21 = [(DMCEnrollmentFlowController *)self essoDetails];
      v22 = [v21 appIDs];
      v29 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _installEnterpriseApplication:v20 debuggingAppIDs:v22 personaID:v29];
      goto LABEL_77;
    case 7uLL:
    case 0x1CuLL:
      v19 = [(DMCEnrollmentFlowController *)self appBundleID];
      v20 = [(DMCEnrollmentFlowController *)self essoDetails];
      v21 = [(DMCEnrollmentFlowController *)self organizationName];
      v22 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _manageApplicationWithAppBundleID:v19 essoDetails:v20 organization:v21 personaID:v22];
      goto LABEL_78;
    case 8uLL:
      v19 = [(DMCEnrollmentFlowController *)self essoDetails];
      v20 = [v19 configurationProfile];
      v21 = [(DMCEnrollmentFlowController *)self essoDetails];
      v22 = [v21 declarations];
      v29 = [(DMCEnrollmentFlowController *)self devicePasscode];
      v50 = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      v51 = [(DMCEnrollmentFlowController *)self devicePasscodeExtractable];
      v52 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _installESSOConfigurationWithProfileData:v20 declarations:v22 devicePasscode:v29 devicePasscodeContext:v50 passcodeContextExtractable:v51 personaID:v52];

      goto LABEL_77;
    case 9uLL:
      v19 = [(DMCEnrollmentFlowController *)self extensionIdentifiersFromConfig];
      [(DMCEnrollmentFlowController *)self _awaitESSOConfigActivationWithExtensionIdentifiers:v19];
      goto LABEL_81;
    case 0xAuLL:
      v19 = [(DMCEnrollmentFlowController *)self authParams];
      v45 = [(DMCEnrollmentFlowController *)self enrollmentMethod];
      v39 = [(DMCEnrollmentFlowController *)self username];
      [(DMCEnrollmentFlowController *)self _processAuthServicesWithAuthParams:v19 enrollmentMethod:v45 username:v39];
      goto LABEL_48;
    case 0xBuLL:
      [(DMCEnrollmentFlowController *)self _askForPasscodeIfNeededWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType]];
      goto LABEL_82;
    case 0xCuLL:
      v19 = [(DMCEnrollmentFlowController *)self devicePasscode];
      v20 = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      [(DMCEnrollmentFlowController *)self _createEnterprisePersonaWithDevicePasscode:v19 devicePasscodeContext:v20];
      goto LABEL_80;
    case 0xDuLL:
      v19 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v38 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v39 = [(DMCEnrollmentFlowController *)self personaID];
      LOBYTE(v69) = [(DMCEnrollmentFlowController *)self isRenewalFlow];
      v40 = self;
      v41 = v19;
      v42 = v38;
      v43 = v39;
      v44 = 0;
      goto LABEL_42;
    case 0xEuLL:
      v19 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v53 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v39 = [(DMCEnrollmentFlowController *)self personaID];
      LOBYTE(v69) = [(DMCEnrollmentFlowController *)self isRenewalFlow];
      v40 = self;
      v41 = v19;
      v42 = v53;
      v43 = v39;
      v44 = 1;
LABEL_42:
      [(DMCEnrollmentFlowController *)v40 _authenticateMAID:v41 authenticationResults:0 enrollmentType:v42 personaID:v43 ephemeral:v44 silent:0 isRenewalFlow:v69];
      goto LABEL_48;
    case 0xFuLL:
      v19 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v20 = [(DMCEnrollmentFlowController *)self authenticationResults];
      v37 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v26 = [(DMCEnrollmentFlowController *)self personaID];
      LOBYTE(v69) = [(DMCEnrollmentFlowController *)self isRenewalFlow];
      [(DMCEnrollmentFlowController *)self _authenticateMAID:v19 authenticationResults:v20 enrollmentType:v37 personaID:v26 ephemeral:0 silent:1 isRenewalFlow:v69];
      goto LABEL_26;
    case 0x10uLL:
      v19 = [(DMCEnrollmentFlowController *)self authenticationResults];
      v54 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v39 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _signInMAIDWithAuthenticationResult:v19 enrollmentType:v54 personaID:v39 isRenewalFlow:[(DMCEnrollmentFlowController *)self isRenewalFlow]];
LABEL_48:

      goto LABEL_81;
    case 0x11uLL:
      v19 = [(DMCEnrollmentFlowController *)self username];
      v20 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v21 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      [(DMCEnrollmentFlowController *)self _createRMAccountIfNeededWithSignInUserIdentifier:v19 assignedMAID:v20 existingRMAccountID:v21 enrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isRenewalFlow:[(DMCEnrollmentFlowController *)self isRenewalFlow]];
      goto LABEL_79;
    case 0x12uLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v20 = [(DMCEnrollmentFlowController *)self authParams];
      v21 = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _exchangeMAIDForBearerTokenWithRMAccountIdentifier:v19 authParams:v20 anchorCertificateRefs:v21];
      goto LABEL_79;
    case 0x13uLL:
      v19 = [(DMCEnrollmentFlowController *)self serviceURL];
      v20 = [(DMCEnrollmentFlowController *)self authTokens];
      v21 = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      v22 = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _fetchEnrollmentProfileFromServiceURL:v19 authTokens:v20 machineInfo:v21 anchorCertificateRefs:v22 enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
      goto LABEL_78;
    case 0x14uLL:
      v19 = [(DMCEnrollmentFlowController *)self profileData];
      v55 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v56 = [(DMCEnrollmentFlowController *)self enrollmentMethod];
      v48 = [(DMCEnrollmentFlowController *)self essoDetails];
      v57 = [(DMCEnrollmentFlowController *)self essoAppITunesStoreID];
      [(DMCEnrollmentFlowController *)self _analyzeProfileData:v19 enrollmentType:v55 enrollmentMethod:v56 isESSO:v48 != 0 essoAppITunesStoreID:v57 isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];

      goto LABEL_64;
    case 0x15uLL:
      v19 = [(DMCEnrollmentFlowController *)self profileData];
      v20 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v21 = [(DMCEnrollmentFlowController *)self cloudConfig];
      [(DMCEnrollmentFlowController *)self _askForUserConsentWithProfileData:v19 managedAppleID:v20 cloudConfig:v21 isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] enrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType]];
      goto LABEL_79;
    case 0x16uLL:
      v19 = [(DMCEnrollmentFlowController *)self profileData];
      v20 = [(DMCEnrollmentFlowController *)self managedAppleID];
      [(DMCEnrollmentFlowController *)self _displayManagementDetailsOverviewWithProfileData:v19 managedAppleID:v20];
      goto LABEL_80;
    case 0x17uLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v20 = [(DMCEnrollmentFlowController *)self authenticationResults];
      [(DMCEnrollmentFlowController *)self _updateRMAccountWithIdentifier:v19 authenticationResults:v20 enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod]];
      goto LABEL_80;
    case 0x18uLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v20 = [(DMCEnrollmentFlowController *)self authTokens];
      v21 = [(DMCEnrollmentFlowController *)self profileIdentifier];
      v22 = [(DMCEnrollmentFlowController *)self organizationName];
      v29 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _updateRMAccountWithIdentifier:v19 authTokens:v20 profileIdentifier:v21 organizationName:v22 personaID:v29 enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod]];
      goto LABEL_77;
    case 0x19uLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v20 = [(DMCEnrollmentFlowController *)self authTokens];
      v21 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _updateRMAccountWithIdentifier:v19 authTokens:v20 personaID:v21];
      goto LABEL_79;
    case 0x1AuLL:
      v19 = [(DMCEnrollmentFlowController *)self altDSID];
      v20 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v25 = [(DMCEnrollmentFlowController *)self isProfileLocked];
      v26 = [(DMCEnrollmentFlowController *)self organizationName];
      v27 = [(DMCEnrollmentFlowController *)self friendlyName];
      v28 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _correlateMAIDWithAltDSID:v19 withRMAccount:v20 isProfileLocked:v25 organizationName:v26 friendlyName:v27 personaID:v28];

LABEL_26:
      goto LABEL_80;
    case 0x1BuLL:
      v74 = [(DMCEnrollmentFlowController *)self profileData];
      v73 = [(DMCEnrollmentFlowController *)self devicePasscode];
      v72 = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      v71 = [(DMCEnrollmentFlowController *)self devicePasscodeExtractable];
      v61 = [(DMCEnrollmentFlowController *)self personaID];
      v62 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v63 = [(DMCEnrollmentFlowController *)self essoDetails];
      v64 = [(DMCEnrollmentFlowController *)self essoAppITunesStoreID];
      v65 = [(DMCEnrollmentFlowController *)self ESSOConfigurationProfileIdentifier];
      v66 = [(DMCEnrollmentFlowController *)self wifiProfileIdentifier];
      v67 = [(DMCEnrollmentFlowController *)self enrollmentType];
      LOBYTE(v70) = [(DMCEnrollmentFlowController *)self isDoingReturnToService];
      LOBYTE(v69) = v63 != 0;
      [(DMCEnrollmentFlowController *)self _installEnrollmentProfile:v74 devicePasscode:v73 devicePasscodeContext:v72 passcodeContextExtractable:v71 personaID:v61 rmAccountIdentifier:v62 isESSO:v69 essoAppITunesStoreID:v64 essoConfigurationProfile:v65 wifiProfileIdentifier:v66 enrollmentType:v67 isReturnToService:v70];

      goto LABEL_82;
    case 0x1DuLL:
      v19 = [(DMCEnrollmentFlowController *)self essoDetails];
      v20 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v21 = [(DMCEnrollmentFlowController *)self profileIdentifier];
      [(DMCEnrollmentFlowController *)self _linkESSOStore:v19 rmAccountIdentifier:v20 profileIdentifier:v21];
      goto LABEL_79;
    case 0x1EuLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v20 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v21 = [(DMCEnrollmentFlowController *)self profileIdentifier];
      v22 = [(DMCEnrollmentFlowController *)self organizationName];
      v29 = [(DMCEnrollmentFlowController *)self personaID];
      v30 = self;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v35 = 0;
      v36 = v29;
      goto LABEL_58;
    case 0x1FuLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      [(DMCEnrollmentFlowController *)self _reauthenticationCompleteWithRMIdentifier:v19];
      goto LABEL_81;
    case 0x20uLL:
      v19 = [(DMCEnrollmentFlowController *)self altDSID];
      [(DMCEnrollmentFlowController *)self _promoteiCloudWithAltDSID:v19];
      goto LABEL_81;
    case 0x21uLL:
      [(DMCEnrollmentFlowController *)self _requestiCloudSignInConfirmation];
      goto LABEL_82;
    case 0x22uLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      v20 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v21 = [(DMCEnrollmentFlowController *)self profileIdentifier];
      v22 = [(DMCEnrollmentFlowController *)self organizationName];
      v29 = [(DMCEnrollmentFlowController *)self enrollmentURL];
      v30 = self;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v35 = v29;
      v36 = 0;
LABEL_58:
      [(DMCEnrollmentFlowController *)v30 _updateAccountsWithRMIdentifier:v31 managedAppleID:v32 profileIdentifier:v33 organizationName:v34 enrollmentURL:v35 personaID:v36];
      goto LABEL_77;
    case 0x23uLL:
      v19 = [(DMCEnrollmentFlowController *)self managedAppleID];
      v20 = [(DMCEnrollmentFlowController *)self personaID];
      [(DMCEnrollmentFlowController *)self _askForRestoreChoiceWithMAID:v19 personaID:v20];
      goto LABEL_80;
    case 0x24uLL:
      [(DMCEnrollmentFlowController *)self _restoreSetAsideProfiles];
      goto LABEL_82;
    case 0x25uLL:
      [(DMCEnrollmentFlowController *)self _fetchCloudConfigWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
      goto LABEL_82;
    case 0x26uLL:
      v19 = [(DMCEnrollmentFlowController *)self cloudConfig];
      [(DMCEnrollmentFlowController *)self _storeCloudConfig:v19];
      goto LABEL_81;
    case 0x27uLL:
      v19 = [(DMCEnrollmentFlowController *)self cloudConfig];
      v58 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v59 = [(DMCEnrollmentFlowController *)self isDoingReturnToService];
      v48 = [(DMCEnrollmentFlowController *)self obliterationShelter];
      [(DMCEnrollmentFlowController *)self _analyzeCloudConfig:v19 enrollmentType:v58 isDoingReturnToService:v59 obliterationShelter:v48];
LABEL_64:

      goto LABEL_81;
    case 0x28uLL:
      v19 = [(DMCEnrollmentFlowController *)self credentialsError];
      [(DMCEnrollmentFlowController *)self _askForMDMUsernameAndCredentialWithError:v19];
      goto LABEL_81;
    case 0x29uLL:
      v19 = [(DMCEnrollmentFlowController *)self serviceURL];
      v20 = [(DMCEnrollmentFlowController *)self username];
      v21 = [(DMCEnrollmentFlowController *)self password];
      v22 = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      v29 = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _fetchEnrollmentProfileFromServiceURL:v19 username:v20 password:v21 machineInfo:v22 anchorCertificateRefs:v29];
      goto LABEL_77;
    case 0x2AuLL:
      v60 = MEMORY[0x277CBEBC0];
      v19 = [(DMCEnrollmentFlowController *)self cloudConfig];
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D03048]];
      v21 = [v60 URLWithString:v20];
      v22 = [(DMCEnrollmentFlowController *)self _machineInfoWithEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] enrollmentMethod:[(DMCEnrollmentFlowController *)self enrollmentMethod] isDoingReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService] isRapidReturnToService:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      v29 = [(DMCEnrollmentFlowController *)self anchorCertificateRefs];
      [(DMCEnrollmentFlowController *)self _fetchEnrollmentProfileFromWebURL:v21 machineInfo:v22 anchorCertificateRefs:v29 isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
      goto LABEL_77;
    case 0x2BuLL:
      [(DMCEnrollmentFlowController *)self _waitForDeviceConfiguration];
      goto LABEL_82;
    case 0x2CuLL:
      v19 = [(DMCEnrollmentFlowController *)self softwareUpdateInfo];
      [(DMCEnrollmentFlowController *)self _promptForSoftwareUpdateWithSoftwareUpdateInfo:v19];
      goto LABEL_81;
    case 0x2DuLL:
      if ([(DMCEnrollmentFlowController *)self isDoingReturnToService])
      {
        v19 = [(DMCEnrollmentFlowController *)self obliterationShelter];
        v20 = [v19 wifiProfileData];
        [(DMCEnrollmentFlowController *)self _ensureWiFiConnectionWithWiFiProfile:v20];
LABEL_80:

LABEL_81:
      }

      else
      {
        [(DMCEnrollmentFlowController *)self _ensureWiFiConnectionWithWiFiProfile:0];
      }

LABEL_82:

      v68 = *MEMORY[0x277D85DE8];
      return;
    case 0x2EuLL:
      v19 = [(DMCEnrollmentFlowController *)self obliterationShelter];
      v20 = [v19 languageStrings];
      v21 = [v20 firstObject];
      v22 = [(DMCEnrollmentFlowController *)self obliterationShelter];
      v29 = [v22 localeString];
      [(DMCEnrollmentFlowController *)self _restoreLanguage:v21 locale:v29];
LABEL_77:

LABEL_78:
LABEL_79:

      goto LABEL_80;
    case 0x2FuLL:
      v19 = [(DMCEnrollmentFlowController *)self rmAccountIdentifier];
      [(DMCEnrollmentFlowController *)self _updateCloudConfigWithRMAccountIdentifier:v19];
      goto LABEL_81;
    case 0x30uLL:
      [(DMCEnrollmentFlowController *)self _ensureDeviceActivation];
      goto LABEL_82;
    case 0x31uLL:
      [(DMCEnrollmentFlowController *)self _initiateDEPPushTokenSync];
      goto LABEL_82;
    case 0x32uLL:
      v23 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v24 = [(DMCEnrollmentFlowController *)self cloudConfig];
      [(DMCEnrollmentFlowController *)self _processPotentialMigrationIfNeededWithEnrollmentType:v23 cloudConfig:v24];

      goto LABEL_82;
    case 0x33uLL:
      v19 = [(DMCEnrollmentFlowController *)self profileIdentifier];
      [(DMCEnrollmentFlowController *)self _awaitDDMAppConfigurationWithProfileIdentifier:v19];
      goto LABEL_81;
    case 0x34uLL:
      [(DMCEnrollmentFlowController *)self _awaitApplicationInstallation];
      goto LABEL_82;
    case 0x35uLL:
      [(DMCEnrollmentFlowController *)self _cleanupOrphanedAppsIfNeededIsDoingRRTS:[(DMCEnrollmentFlowController *)self cloudConfigIndicatesRapidReturnToService]];
      goto LABEL_82;
    case 0x36uLL:
      [(DMCEnrollmentFlowController *)self _takeSnapshot];
      goto LABEL_82;
    case 0x37uLL:
      v19 = [(DMCEnrollmentFlowController *)self devicePasscode];
      v20 = [(DMCEnrollmentFlowController *)self devicePasscodeContext];
      [(DMCEnrollmentFlowController *)self _createAndSyncBootstrapTokenWithDevicePasscode:v19 devicePasscodeContext:v20];
      goto LABEL_80;
    case 0x38uLL:
      [(DMCEnrollmentFlowController *)self _blockMDMCommands];
      goto LABEL_82;
    case 0x39uLL:
      [(DMCEnrollmentFlowController *)self _unblockMDMCommandsIfNeededHasBlocked:[(DMCEnrollmentFlowController *)self hasBlockedMDMCommands]];
      goto LABEL_82;
    case 0x3AuLL:
      [(DMCEnrollmentFlowController *)self _checkForUpdateFromFactoryVersion];
      goto LABEL_82;
    default:
      goto LABEL_82;
  }
}

- (void)_resetToInitialSteps
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentFlowController;
  [(DMCEnrollmentFlowControllerBase *)&v4 _resetToInitialSteps];
  v3 = [(DMCEnrollmentFlowController *)self _commonStepsForEnrollmentType:[(DMCEnrollmentFlowController *)self enrollmentType] isReturnToService:[(DMCEnrollmentFlowController *)self isDoingReturnToService]];
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v3];
}

- (void)_workerQueue_stopMonitorAndEmptyDiskValues
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Clean up local stored stuffs", v7, 2u);
  }

  v4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [v6 stopEnrollmentFlowMonitor];
  }

  [(DMCEnrollmentFlowController *)self _writeDirtyStateToDisk:0];
}

- (void)_workerQueue_flowCompleted
{
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "Enrollment flow completed!", v11, 2u);
  }

  v5 = NSStringFromSelector(a2);
  [(DMCEnrollmentFlowController *)self _unblockAppInstallsIfNecessaryWithCaller:v5];

  if ([(DMCEnrollmentFlowController *)self hasEnabledPushWake])
  {
    [(DMCEnrollmentFlowController *)self _disablePushWake];
  }

  [(DMCEnrollmentFlowController *)self _workerQueue_stopMonitorAndEmptyDiskValues];
  [(DMCEnrollmentFlowController *)self _workerQueue_cleanupCachedValues];
  if (![(DMCEnrollmentFlowController *)self noCompletionScene])
  {
    v6 = [(DMCEnrollmentFlowController *)self presenter];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DMCEnrollmentFlowController *)self presenter];
      [v8 showEnrollmentCompletionScene];
    }
  }

  v9 = [(DMCEnrollmentFlowController *)self enrollmentCompletionHandler];

  if (v9)
  {
    v10 = [(DMCEnrollmentFlowController *)self enrollmentCompletionHandler];
    v10[2](v10, 1, 0, 0);

    [(DMCEnrollmentFlowController *)self setEnrollmentCompletionHandler:0];
  }
}

- (void)_flowTerminatedWithError:(id)a3 canceled:(BOOL)a4
{
  v7 = a3;
  v8 = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__DMCEnrollmentFlowController__flowTerminatedWithError_canceled___block_invoke;
  v10[3] = &unk_278EE3170;
  v14 = a4;
  v11 = v7;
  v12 = self;
  v13 = a2;
  v9 = v7;
  [v8 queueBlock:v10];
}

void __65__DMCEnrollmentFlowController__flowTerminatedWithError_canceled___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v25 = 138543618;
    v26 = v3;
    v27 = 1024;
    v28 = v4;
    _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_DEFAULT, "Enrollment flow terminated with error: %{public}@, canceled: %d", &v25, 0x12u);
  }

  if ([*(a1 + 40) hasExecutedUIStep] && *(a1 + 32))
  {
    v5 = [*(a1 + 40) restartIfFail];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v7 = NSStringFromSelector(*(a1 + 48));
  [v6 _unblockAppInstallsIfNecessaryWithCaller:v7];

  if ([*(a1 + 40) hasBlockedMDMCommands])
  {
    [*(a1 + 40) _unblockMDMCommands];
  }

  if ([*(a1 + 40) hasEnabledPushWake])
  {
    [*(a1 + 40) _disablePushWake];
  }

  v8 = [*(a1 + 40) cleanupIfFail];
  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [*(a1 + 40) dirtyState];
    [v9 _cleanupDirtyState:v10];
  }

  else
  {
    [*(a1 + 40) _writeDirtyStateToDisk:0];
  }

  if ([*(a1 + 40) isDoingReturnToService])
  {
    v11 = [*(a1 + 40) obliterationShelter];
    [v11 clear];
  }

  [*(a1 + 40) _workerQueue_cleanupCachedValues];
  v12 = [*(a1 + 40) managedConfigurationHelper];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [*(a1 + 40) managedConfigurationHelper];
    [v14 stopEnrollmentFlowMonitor];
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      v15 = [*(a1 + 40) presenter];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [*(a1 + 40) _convertErrorToHumanReadableError:*(a1 + 32)];
        v18 = [*(a1 + 40) presenter];
        [v18 showEnrollmentFailure:v17];
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    v19 = [*(a1 + 40) presenter];
    if (objc_opt_respondsToSelector())
    {
      v20 = [*(a1 + 40) noCompletionScene];

      if (v20)
      {
        goto LABEL_27;
      }

      v19 = [*(a1 + 40) presenter];
      [v19 dismissEnrollmentScene];
    }
  }

LABEL_27:
  v21 = *(a1 + 40);
  if (v5)
  {
    [v21 _resetToInitialSteps];
    [*(a1 + 40) _pollNextStep];
  }

  else
  {
    v22 = [v21 enrollmentCompletionHandler];

    if (v22)
    {
      v23 = [*(a1 + 40) enrollmentCompletionHandler];
      v23[2](v23, 0, *(a1 + 56), *(a1 + 32));

      [*(a1 + 40) setEnrollmentCompletionHandler:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupDirtyState:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_INFO, "Cleaning up dirty state...", buf, 2u);
  }

  v57 = self;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v6 = [v4 dirtyPersonaIDs];
  v7 = [v6 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v76;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v75 + 1) + 8 * i);
        v13 = *DMCLogObjects();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v80 = v12;
          _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Removing dirty persona %{public}@...", buf, 0xCu);
        }

        v74 = 0;
        [MEMORY[0x277D03550] removePersona:v12 error:&v74];
        v14 = v74;
        if (!v14)
        {
          [v4 removeDirtyPersonaID:v12];
          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = [v4 dirtyProfileIdentifiers];
  v16 = [v15 countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v71;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v70 + 1) + 8 * j);
        v21 = *DMCLogObjects();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v80 = v20;
          _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_DEFAULT, "Uninstalling MDM profile %{public}@...", buf, 0xCu);
        }

        v22 = [(DMCEnrollmentFlowController *)v57 managedConfigurationHelper];
        [v22 removeProfileWithIdentifier:v20 async:1];

        [v4 removeDirtyProfileIdentifier:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v17);
    v9 = 1;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v23 = [v4 dirtyAltDISDs];
  v24 = [v23 countByEnumeratingWithState:&v66 objects:v85 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v67;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v67 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v66 + 1) + 8 * k);
        v29 = *DMCLogObjects();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v80 = v28;
          _os_log_impl(&dword_247E39000, v29, OS_LOG_TYPE_DEFAULT, "Cleaning up dirty account with altDSID %{public}@...", buf, 0xCu);
        }

        v30 = [MEMORY[0x277CB8F48] defaultStore];
        [v30 dmc_removeMAIDRelatedAccountsWithAltDSID:v28 asynchronous:1];

        [v4 removeDirtyAltDSID:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v66 objects:v85 count:16];
    }

    while (v25);
    v9 = 1;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v31 = [v4 dirtyRMAccounts];
  v32 = [v31 countByEnumeratingWithState:&v62 objects:v84 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v63;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v63 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v62 + 1) + 8 * m);
        v37 = *DMCLogObjects();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v80 = v36;
          _os_log_impl(&dword_247E39000, v37, OS_LOG_TYPE_DEFAULT, "Cleaning up RM account with identifier %{public}@...", buf, 0xCu);
        }

        v38 = [MEMORY[0x277CB8F48] defaultStore];
        [v38 dmc_removeAccountWithIdentifier:v36 asynchronous:1];

        [v4 removeDirtyRMAccount:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v62 objects:v84 count:16];
    }

    while (v33);
    v9 = 1;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [v4 dirtyBundleIDs];
  v39 = [obj countByEnumeratingWithState:&v58 objects:v83 count:16];
  if (v39)
  {
    v41 = v39;
    v42 = *v59;
    *&v40 = 138543618;
    v55 = v40;
    do
    {
      for (n = 0; n != v41; ++n)
      {
        if (*v59 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v58 + 1) + 8 * n);
        v45 = [MEMORY[0x277D034A8] newAppIdentifierWithIdentifier:{v44, v55}];
        v46 = v45;
        if (v45)
        {
          v47 = [v45 bundleID];
          v48 = [v46 personaID];
          v49 = *DMCLogObjects();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v55;
            v80 = v47;
            v81 = 2114;
            v82 = v48;
            _os_log_impl(&dword_247E39000, v49, OS_LOG_TYPE_DEFAULT, "Cleaning up dirty application with bundle ID: %{public}@, persona ID: %{public}@...", buf, 0x16u);
          }

          v50 = [(DMCEnrollmentFlowController *)v57 managedConfigurationHelper];
          [v50 removeApplicationWithBundleID:v47 personaID:v48 completionHandler:0];

          [v4 removeDirtyBundleID:v44];
          v9 = 1;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v58 objects:v83 count:16];
    }

    while (v41);
  }

  if ([v4 dirtyRMStoreForErSSO])
  {
    v51 = *DMCLogObjects();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v51, OS_LOG_TYPE_DEFAULT, "Cleaning up dirty ErSSO RMStore", buf, 2u);
    }

    v52 = v57;
    v53 = [(DMCEnrollmentFlowController *)v57 rmStoreHelper];
    [v53 removeErSSOStoreWithCompletionHandler:&__block_literal_global_0];

    [v4 clearDirtyRMStoreForErSSO];
    goto LABEL_62;
  }

  v52 = v57;
  if (v9)
  {
LABEL_62:
    [(DMCEnrollmentFlowController *)v52 _writeDirtyStateToDisk:v4];
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)_workerQueue_cleanupCachedValues
{
  [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:0];
  [(DMCEnrollmentFlowController *)self setDevicePasscode:0];
  [(DMCEnrollmentFlowController *)self setDevicePasscodeContext:0];
  [(DMCEnrollmentFlowController *)self setDevicePasscodeExtractable:0];
  [(DMCEnrollmentFlowController *)self setManagedAppleID:0];
  [(DMCEnrollmentFlowController *)self setServiceURL:0];
  [(DMCEnrollmentFlowController *)self setServers:0];
  [(DMCEnrollmentFlowController *)self setServerInformationSource:0];
  [(DMCEnrollmentFlowController *)self setAuthTokens:0];
  [(DMCEnrollmentFlowController *)self setPersonaID:0];
  [(DMCEnrollmentFlowController *)self setAuthenticationResults:0];
  [(DMCEnrollmentFlowController *)self setAltDSID:0];
  [(DMCEnrollmentFlowController *)self setProfileData:0];
  [(DMCEnrollmentFlowController *)self setProfileIdentifier:0];
  [(DMCEnrollmentFlowController *)self setRmAccountIdentifier:0];
  [(DMCEnrollmentFlowController *)self setAnchorCertificateRefs:0];
  [(DMCEnrollmentFlowController *)self setAuthParams:0];
  [(DMCEnrollmentFlowController *)self setHasExecutedUIStep:0];
  [(DMCEnrollmentFlowController *)self setEnrollmentMethod:0];
  [(DMCEnrollmentFlowController *)self setDirtyState:0];
  [(DMCEnrollmentFlowController *)self setOrganizationName:0];
  [(DMCEnrollmentFlowController *)self setFriendlyName:0];
  [(DMCEnrollmentFlowController *)self setEssoDetails:0];
  [(DMCEnrollmentFlowController *)self setAppBundleID:0];
  [(DMCEnrollmentFlowController *)self setESSOConfigurationProfileIdentifier:0];
  [(DMCEnrollmentFlowController *)self setServerCapabilities:0];
  [(DMCEnrollmentFlowController *)self setEssoAppITunesStoreID:0];
  [(DMCEnrollmentFlowController *)self setCloudConfig:0];
  [(DMCEnrollmentFlowController *)self setPassword:0];
  [(DMCEnrollmentFlowController *)self setWifiProfileIdentifier:0];
  [(DMCEnrollmentFlowController *)self setSoftwareUpdateInfo:0];
  [(DMCEnrollmentFlowController *)self setIsDoingReturnToService:0];
  [(DMCEnrollmentFlowController *)self setObliterationShelter:0];
  [(DMCEnrollmentFlowController *)self setExtensionIdentifiersFromConfig:0];
  [(DMCEnrollmentFlowController *)self setCloudConfigIndicatesRapidReturnToService:0];
  [(DMCEnrollmentFlowController *)self setHasBlockedMDMCommands:0];
  [(DMCEnrollmentFlowController *)self setHasEnabledPushWake:0];
  [(DMCEnrollmentFlowController *)self setLoggingSupport:0];

  [(DMCEnrollmentFlowController *)self setCredentialsError:0];
}

- (void)_preflightEnrollmentWithEnrollmentType:(unint64_t)a3 isRenewalFlow:(BOOL)a4 isPostRestoration:(BOOL)a5 isPostBuddy:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v55 = *MEMORY[0x277D85DE8];
  v11 = [(DMCEnrollmentFlowController *)self loggingSupport];

  if (!v11)
  {
    v12 = objc_opt_new();
    [(DMCEnrollmentFlowController *)self setLoggingSupport:v12];

    v13 = [(DMCEnrollmentFlowController *)self loggingSupport];
    [v13 enableDebugLoggingForEnrollment];
  }

  if (!v8)
  {
    v14 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    if (objc_opt_respondsToSelector())
    {
      v15 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v16 = [v15 isDeviceMDMEnrolled];

      if (v16 && (a6 || ![(DMCEnrollmentFlowController *)self _canSkipMDMEnrollmentWithEnrollmentType:a3]))
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "The device is enrolled in MDM already! Aborting...", buf, 2u);
        }

        v18 = MEMORY[0x277CCA9B8];
        v19 = *MEMORY[0x277D032F0];
        v20 = DMCErrorArray();
        v21 = *MEMORY[0x277D032F8];
        v22 = v18;
        v23 = v19;
        v24 = 15010;
LABEL_18:
        v31 = [v22 DMCErrorWithDomain:v23 code:v24 descriptionArray:v20 errorType:{v21, 0}];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v31 canceled:0];

        goto LABEL_43;
      }
    }

    else
    {
    }
  }

  if (a3 == 4)
  {
    v25 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    if (objc_opt_respondsToSelector())
    {
      v26 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v27 = [v26 isDeviceSupervised];

      if (v27)
      {
        v28 = *DMCLogObjects();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v28, OS_LOG_TYPE_ERROR, "Trying to start BYOD enrollment on a supervised device!", buf, 2u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277D032F0];
        v20 = DMCErrorArray();
        v21 = *MEMORY[0x277D032F8];
        v22 = v29;
        v23 = v30;
        v24 = 15012;
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v32 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  if (objc_opt_respondsToSelector())
  {
    v33 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v34 = [v33 isDeviceMDMEnrolled];

    if (v34)
    {
      goto LABEL_24;
    }

    v32 = [(DMCEnrollmentFlowController *)self dirtyState];
    [(DMCEnrollmentFlowController *)self _cleanupDirtyState:v32];
  }

LABEL_24:
  if (v8 && [(DMCEnrollmentFlowController *)self _isORGOEnrollment:a3])
  {
    v35 = [MEMORY[0x277CB8F48] defaultStore];
    v36 = [v35 dmc_RemoteManagementAccounts];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __114__DMCEnrollmentFlowController__preflightEnrollmentWithEnrollmentType_isRenewalFlow_isPostRestoration_isPostBuddy___block_invoke;
    v52[3] = &unk_278EE31B8;
    v52[4] = self;
    v37 = [MEMORY[0x277CCAC30] predicateWithBlock:v52];
    v38 = [v36 filteredArrayUsingPredicate:v37];

    if ([v38 count] >= 2)
    {
      v39 = *DMCLogObjects();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v54 = v38;
        _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_ERROR, "Multiple RM accounts exist on the device: %{public}@!", buf, 0xCu);
      }
    }

    v40 = [v38 firstObject];
    if (v40)
    {
      v41 = *DMCLogObjects();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v54 = v40;
        _os_log_impl(&dword_247E39000, v41, OS_LOG_TYPE_DEFAULT, "Have existing RM Account: %{public}@!", buf, 0xCu);
      }

      v42 = [v40 identifier];
      [(DMCEnrollmentFlowController *)self setRmAccountIdentifier:v42];

      v43 = [v40 dmc_signInUserIdentifier];
      [(DMCEnrollmentFlowController *)self setUsername:v43];

      v44 = [v40 username];
      [(DMCEnrollmentFlowController *)self setManagedAppleID:v44];

      v45 = [v40 dmc_altDSID];
      [(DMCEnrollmentFlowController *)self setAltDSID:v45];

      -[DMCEnrollmentFlowController setEnrollmentType:](self, "setEnrollmentType:", [v40 dmc_enrollmentType]);
    }

    else if (v7)
    {
      v46 = [MEMORY[0x277CB8F48] defaultStore];
      v47 = [v46 dmc_primaryiCloudAccount];

      v48 = *DMCLogObjects();
      if (v47)
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v48, OS_LOG_TYPE_DEFAULT, "We don't have RM Account but we have Apple Account! Using the information from the Apple Account.", buf, 2u);
        }

        v49 = [v47 username];
        [(DMCEnrollmentFlowController *)self setUsername:v49];

        v50 = [v47 username];
        [(DMCEnrollmentFlowController *)self setManagedAppleID:v50];
      }

      else if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v48, OS_LOG_TYPE_ERROR, "No Primary AppleAccount after restoration!", buf, 2u);
      }
    }
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_43:
  v51 = *MEMORY[0x277D85DE8];
}

BOOL __114__DMCEnrollmentFlowController__preflightEnrollmentWithEnrollmentType_isRenewalFlow_isPostRestoration_isPostBuddy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isORGOEnrollment:{objc_msgSend(v3, "dmc_enrollmentType")}])
  {
    v4 = [v3 dmc_enrollmentMethod] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_askForUsernameWithDefaultUsername:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
  {
    v5 = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentDefaultUsername];

    v4 = v5;
  }

  objc_initWeak(&location, self);
  v6 = [(DMCEnrollmentFlowController *)self presenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke;
  v7[3] = &unk_278EE3208;
  objc_copyWeak(&v8, &location);
  [v6 requestUsernameWithDefaultUsername:v4 completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke_2;
    v9[3] = &unk_278EE31E0;
    v9[4] = v7;
    v11 = a3;
    v10 = v5;
    [v8 queueBlock:v9];
  }
}

uint64_t __66__DMCEnrollmentFlowController__askForUsernameWithDefaultUsername___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 1)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _askForUsernameWithDefaultUsername:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  if (*(a1 + 48) == 1)
  {
    result = [*(a1 + 32) _flowTerminatedWithError:0 canceled:1];
  }

  else
  {
    [*(a1 + 32) setUsername:*(a1 + 40)];
    result = [*(a1 + 32) _pollNextStep];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_fetchServerInformationWithUsername:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke;
  v6[3] = &unk_278EE3258;
  objc_copyWeak(&v7, &location);
  [v5 discoverServerForUserIdentifier:v4 anchorCertificateRefs:0 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke_2;
    v12[3] = &unk_278EE3230;
    v12[4] = v10;
    v13 = v8;
    v14 = v7;
    v15 = a3;
    [v11 queueBlock:v12];
  }
}

uint64_t __67__DMCEnrollmentFlowController__fetchServerInformationWithUsername___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 2)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _fetchServerInformationWithUsername:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    result = [*(a1 + 32) _flowTerminatedWithError:v3 canceled:0];
  }

  else
  {
    [*(a1 + 32) setServers:*(a1 + 48)];
    [*(a1 + 32) setServerInformationSource:*(a1 + 56)];
    result = [*(a1 + 32) _pollNextStep];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_findServerWithVersion:(id)a3 servers:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 responseVersion];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v17 = v11;

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = *DMCLogObjects();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v6 count];
    *buf = 138543618;
    v25 = v5;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_INFO, "No %{public}@ server found. Total servers amount: %ld", buf, 0x16u);
  }

  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_chooseEnrollmentTypeWithAvailableServers:(id)a3 serverInformationSource:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D03608] servers:v6];
  v8 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D035E8] servers:v6];
  v9 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D035F8] servers:v6];
  v10 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D035F0] servers:v6];
  v11 = [(DMCEnrollmentFlowController *)self _findServerWithVersion:*MEMORY[0x277D03600] servers:v6];
  if ([MEMORY[0x277D034F8] isAppleInternal] && objc_msgSend(MEMORY[0x277D034E8], "DSLiveOnModeEnabled"))
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "We are on Apple internal device with DS live on feature enabled.", &v27, 2u);
    }

    a4 = 3;
  }

  else if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_11;
  }

  if (v7)
  {
    v13 = 4;
    v14 = v7;
LABEL_20:
    [(DMCEnrollmentFlowController *)self setEnrollmentType:v13];
    v16 = v14;
LABEL_21:
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 responseVersion];
      v27 = 138543362;
      v28 = v19;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "Picked server with version: %{public}@", &v27, 0xCu);
    }

    v20 = MEMORY[0x277CBEBC0];
    v21 = [v16 responseBaseURL];
    v22 = [v20 URLWithString:v21];
    [(DMCEnrollmentFlowController *)self setServiceURL:v22];

    goto LABEL_27;
  }

  if (v8)
  {
    v13 = 5;
    v14 = v8;
    goto LABEL_20;
  }

LABEL_11:
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v9 | v11)
    {
      [(DMCEnrollmentFlowController *)self setEnrollmentType:4];
      if (v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v11;
      }

      v16 = v15;
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else if (v10)
    {
      v13 = 5;
      v14 = v10;
      goto LABEL_20;
    }
  }

  v23 = *DMCLogObjects();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v27 = 138543362;
    v28 = v6;
    _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "Failed to pick server from: %{public}@", &v27, 0xCu);
  }

  [(DMCEnrollmentFlowController *)self setServiceURL:0];
  v16 = 0;
LABEL_27:
  v24 = [(DMCEnrollmentFlowController *)self serviceURL];

  if (v24)
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v25 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v25 canceled:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_detectAuthTypeWithServiceURL:(id)a3 enrollmentType:(unint64_t)a4 isPostBuddy:(BOOL)a5 machineInfo:(id)a6 anchorCertificateRefs:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  objc_initWeak(&location, self);
  v15 = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke;
  v16[3] = &unk_278EE32A8;
  objc_copyWeak(v17, &location);
  v17[1] = a4;
  v18 = a5;
  [v15 determineEnrollmentMethodWithServiceURL:v12 enrollmentType:a4 machineInfo:v13 anchorCertificateRefs:v14 completionHandler:v16];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained workerQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke_2;
    v17[3] = &unk_278EE3280;
    v17[4] = v13;
    v15 = v11;
    v16 = *(a1 + 40);
    v18 = v15;
    v21 = v16;
    v22 = a2;
    v19 = v10;
    v23 = *(a1 + 48);
    v20 = v9;
    [v14 queueBlock:v17];
  }
}

void __122__DMCEnrollmentFlowController__detectAuthTypeWithServiceURL_enrollmentType_isPostBuddy_machineInfo_anchorCertificateRefs___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 4)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315138;
      *&v32[4] = "[DMCEnrollmentFlowController _detectAuthTypeWithServiceURL:enrollmentType:isPostBuddy:machineInfo:anchorCertificateRefs:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", v32, 0xCu);
    }
  }

  if (!*(a1 + 40))
  {
    if (*(a1 + 64) == 3 && *(a1 + 72) != 1)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Failed: UAORGO is only supported for Apple user authentication", v32, 2u);
      }

      v10 = *(a1 + 32);
      v5 = +[DMCEnrollmentFlowController _createUnsupportedFeatureError];
      [v10 _flowTerminatedWithError:v5 canceled:0];
      goto LABEL_89;
    }

    v5 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D245E8]];
    if (v5)
    {
      v6 = [MEMORY[0x277D24660] essoDetailsWithJSONDictionary:v5];
      v7 = *DMCLogObjects();
      if (!v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v32 = 138543362;
          *&v32[4] = v5;
          _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Invalid ESSO details are present: %{public}@", v32, 0xCu);
        }

        v11 = *(a1 + 32);
        v6 = +[DMCEnrollmentFlowController _createGeneralError];
        v12 = v11;
        v13 = v6;
        v14 = 0;
        goto LABEL_41;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v32 = 0;
        _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEBUG, "ESSO details are present", v32, 2u);
      }

      [*(a1 + 32) setEssoDetails:v6];
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) setEnrollmentMethod:*(a1 + 72)];
    v8 = *(a1 + 72);
    if (v8 > 2)
    {
      if (v8 <= 4)
      {
        if (v8 != 3)
        {
LABEL_32:
          v15 = *DMCLogObjects();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *v32 = 0;
            v16 = "Unsupported enrollment method!";
LABEL_39:
            _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, v16, v32, 2u);
            goto LABEL_40;
          }

          goto LABEL_40;
        }

        v17 = *(a1 + 32);
        v18 = [v17 _ORGO_deviceEnrollmentSteps];
        goto LABEL_50;
      }

      if (v8 != 5)
      {
        if (v8 == 6)
        {
          goto LABEL_32;
        }

LABEL_85:
        if ((*(a1 + 80) & 1) == 0)
        {
          v29 = *(a1 + 32);
          v30 = [v29 _ADE_postEnrollmentSteps];
          [v29 _appendSteps:v30];
        }

        [*(a1 + 32) _pollNextStep];
        goto LABEL_88;
      }

LABEL_34:
      [*(a1 + 32) setAuthParams:*(a1 + 56)];
      v17 = *(a1 + 32);
      if (v6)
      {
        [v17 _ADxE_thirdParty_ESSO_firstPartSteps];
      }

      else
      {
        [v17 _ADxE_thirdParty_firstPartSteps];
      }
      v18 = ;
LABEL_50:
      v19 = v18;
      [v17 _appendSteps:v18];
LABEL_84:

      goto LABEL_85;
    }

    if (!v8)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        v16 = "Unknown enrollment method!";
        goto LABEL_39;
      }

LABEL_40:
      v12 = *(a1 + 32);
      v13 = 0;
      v14 = 1;
LABEL_41:
      [v12 _flowTerminatedWithError:v13 canceled:{v14, *v32}];
LABEL_88:

LABEL_89:
      goto LABEL_90;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_85;
      }

      goto LABEL_34;
    }

    v19 = 0;
    v20 = *(a1 + 64);
    if (v20 <= 5)
    {
      if (v20 > 2)
      {
        if ((v20 - 4) < 2)
        {
          v24 = *(a1 + 32);
          if (v6)
          {
            [v24 _ADxE_ABE_ESSO_firstPartSteps];
          }

          else
          {
            [v24 _ADxE_ABE_firstPartSteps];
          }
          v21 = ;
          goto LABEL_80;
        }

        if (v20 != 3)
        {
          goto LABEL_81;
        }

        v25 = *(a1 + 32);
        goto LABEL_71;
      }

      if (v20)
      {
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            v21 = [*(a1 + 32) _ORGO_MACBuddy_firstPartSteps];
LABEL_80:
            v19 = v21;
          }

LABEL_81:
          [*(a1 + 32) _appendSteps:{v19, *v32}];
          v26 = [*(a1 + 32) managedAppleID];
          v27 = [v26 length];

          if (!v27)
          {
            v28 = [*(a1 + 32) username];
            [*(a1 + 32) setManagedAppleID:v28];
          }

          [*(a1 + 32) setAuthParams:*(a1 + 56)];
          goto LABEL_84;
        }

        v25 = *(a1 + 32);
        if ((*(a1 + 80) & 1) == 0)
        {
          v21 = [v25 _ORGO_MAIDEnrollmentSteps];
          goto LABEL_80;
        }

LABEL_71:
        v21 = [v25 _ORGO_MAIDEnrollmentSteps_orgToken];
        goto LABEL_80;
      }

      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        v23 = "Enrollment type is Unknown!";
        goto LABEL_76;
      }

LABEL_77:
      v19 = 0;
      goto LABEL_81;
    }

    if (v20 <= 7)
    {
      if (v20 == 6)
      {
        v22 = *DMCLogObjects();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        *v32 = 0;
        v23 = "Enrollment type MDMUserEnrollment is not supported!";
      }

      else
      {
        v22 = *DMCLogObjects();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        *v32 = 0;
        v23 = "Enrollment type SharediPadUserChannel is not supported!";
      }
    }

    else
    {
      switch(v20)
      {
        case 8:
          v22 = *DMCLogObjects();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *v32 = 0;
          v23 = "Enrollment type Watch is not supported!";
          break;
        case 9:
          v22 = *DMCLogObjects();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *v32 = 0;
          v23 = "Enrollment type ADE is not supported!";
          break;
        case 10:
          v22 = *DMCLogObjects();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *v32 = 0;
          v23 = "Enrollment type is None!";
          break;
        default:
          goto LABEL_81;
      }
    }

LABEL_76:
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_ERROR, v23, v32, 2u);
    goto LABEL_77;
  }

  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 40);
    *v32 = 138543362;
    *&v32[4] = v4;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to retrieve enrollment method with error: %{public}@", v32, 0xCu);
  }

  [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
LABEL_90:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_processAuthServicesWithAuthParams:(id)a3 enrollmentMethod:(unint64_t)a4 username:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if (a4 == 2)
    {
      v10 = 0x277D24620;
    }

    else
    {
      if (a4 != 5)
      {
        v17 = +[DMCEnrollmentFlowController _createGeneralError];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v17 canceled:1];

        goto LABEL_16;
      }

      v10 = 0x277D24680;
    }

    v11 = *v10;
    v12 = objc_opt_new();
    if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Simulating web auth session.", &buf, 2u);
      }

      v23 = *MEMORY[0x277D245C8];
      v24[0] = @"simulated-enrollment";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [(DMCEnrollmentFlowController *)self setAuthTokens:v14];

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    }

    else
    {
      v15 = [v12 webAuthenticationURLForAuthParams:v8 userIdentifier:v9];
      if (v15)
      {
        objc_initWeak(&buf, self);
        v16 = [(DMCEnrollmentFlowController *)self presenter];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke;
        v20[3] = &unk_278EE32F8;
        objc_copyWeak(&v21, &buf);
        [v16 requestWebAuthenticationWithWebAuthURL:v15 authenticator:v12 authParams:v8 completionHandler:v20];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&buf);
      }

      else
      {
        v18 = +[DMCEnrollmentFlowController _createGeneralError];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v18 canceled:1];
      }
    }
  }

  else
  {
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:0 canceled:1];
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

void __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke_2;
    v12[3] = &unk_278EE32D0;
    v12[4] = v10;
    v15 = a3;
    v13 = v8;
    v14 = v7;
    [v11 queueBlock:v12];
  }
}

uint64_t __92__DMCEnrollmentFlowController__processAuthServicesWithAuthParams_enrollmentMethod_username___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 10)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[DMCEnrollmentFlowController _processAuthServicesWithAuthParams:enrollmentMethod:username:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v13, 0xCu);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = 0;
    v5 = 1;
LABEL_10:
    result = [v3 _flowTerminatedWithError:v4 canceled:v5];
    goto LABEL_11;
  }

  v6 = *(a1 + 40);
  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Web authentication failed with error: %{public}@", &v13, 0xCu);
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEBUG, "Web authentication tokens retrieved: %{public}@", &v13, 0xCu);
  }

  v12 = [*(a1 + 48) copy];
  [*(a1 + 32) setAuthTokens:v12];

  result = [*(a1 + 32) _pollNextStep];
LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_askForPasscodeIfNeededWithEnrollmentType:(unint64_t)a3
{
  v4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v5 = [v4 isDevicePasscodeSet];

  if (v5)
  {
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke;
    v18[3] = &unk_278EE3348;
    v18[4] = self;
    objc_copyWeak(&v19, &location);
    v6 = MEMORY[0x24C1BD5A0](v18);
    v7 = [(DMCEnrollmentFlowController *)self presenter];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DMCEnrollmentFlowController *)self presenter];
      v10 = v17;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_64;
      v17[3] = &unk_278EE3370;
      v17[4] = v6;
      [v9 requestDevicePasscodeContextNeedsExtractable:0 completionHandler:v17];
    }

    else
    {
      v11 = [(DMCEnrollmentFlowController *)self presenter];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v9 = [(DMCEnrollmentFlowController *)self presenter];
        v10 = v16;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2_68;
        v16[3] = &unk_278EE3398;
        v16[4] = v6;
        [v9 requestDevicePasscodeDataWithCompletionHandler:v16];
      }

      else
      {
        v13 = [(DMCEnrollmentFlowController *)self presenter];
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
LABEL_12:

          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
          return;
        }

        v9 = [(DMCEnrollmentFlowController *)self presenter];
        v10 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_3;
        v15[3] = &unk_278EE33C0;
        v15[4] = v6;
        [v9 requestDevicePasscodeWithCompletionHandler:v15];
      }
    }

    goto LABEL_12;
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke(uint64_t a1, void *a2, char a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a4;
  v11 = [*(a1 + 32) workerQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2;
  v14[3] = &unk_278EE3320;
  objc_copyWeak(&v17, (a1 + 40));
  v18 = a5;
  v12 = v9;
  v15 = v12;
  v19 = a3;
  v13 = v10;
  v16 = v13;
  [v11 queueBlock:v14];

  objc_destroyWeak(&v17);
}

void __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentStep] != 11)
    {
      v4 = *DMCLogObjects();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "[DMCEnrollmentFlowController _askForPasscodeIfNeededWithEnrollmentType:]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v8, 0xCu);
      }
    }

    if (*(a1 + 56) == 1)
    {
      v5 = [v3 migrationDelegate];
      v6 = [v5 enrollmentFlowControllerIsDoingMigration:v3];

      if (v6)
      {
        [v3 _flowTerminatedWithError:0 canceled:1];
        goto LABEL_13;
      }

      [v3 setNextStepIndex:{objc_msgSend(v3, "nextStepIndex") - 2}];
    }

    else if (*(a1 + 32))
    {
      [v3 setDevicePasscodeContext:?];
      [v3 setDevicePasscodeExtractable:*(a1 + 57)];
    }

    else
    {
      [v3 setDevicePasscode:*(a1 + 40)];
    }

    [v3 _pollNextStep];
  }

LABEL_13:

  v7 = *MEMORY[0x277D85DE8];
}

void __73__DMCEnrollmentFlowController__askForPasscodeIfNeededWithEnrollmentType___block_invoke_2_68(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v8 = a2;
    v5(v4);
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7 encoding:4];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_createEnterprisePersonaWithDevicePasscode:(id)a3 devicePasscodeContext:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D03550] enterprisePersonaIdentifier];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Enterprise persona exists without any MDM enrollment! Cleaning up anyway...", buf, 2u);
  }

  v26 = 0;
  [MEMORY[0x277D03550] removePersona:v8 error:&v26];
  v10 = v26;
  if (v10)
  {
    v11 = v10;
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v10 canceled:0];
  }

  else
  {
LABEL_6:
    v12 = *DMCLogObjects();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "Creating Enterprise persona with passcode data context", buf, 2u);
      }

      v25 = 0;
      v14 = &v25;
      v15 = [MEMORY[0x277D03550] createEnterprisePersonaWithPasscodeData:v7 passcodeDataType:1 error:&v25];
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "Creating Enterprise persona with passcode string", buf, 2u);
      }

      v24 = 0;
      v14 = &v24;
      v15 = [MEMORY[0x277D03550] createEnterprisePersonaWithDevicePasscode:v6 error:&v24];
    }

    v16 = v15;
    v11 = *v14;
    v17 = *DMCLogObjects();
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Enterprise persona created. ID: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self setPersonaID:v16];
      v18 = [(DMCEnrollmentFlowController *)self dirtyState];
      [v18 addDirtyPersonaID:v16];

      v19 = [(DMCEnrollmentFlowController *)self dirtyState];
      [(DMCEnrollmentFlowController *)self _writeDirtyStateToDisk:v19];

      v20 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        [v22 requestEnrollmentFlowMonitorWithPersonaID:v16];
      }

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v11;
        _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "Failed to create enterprise persona with error: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v11 canceled:0];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke_2;
    v12[3] = &unk_278EE33E8;
    v12[4] = v10;
    v16 = a3;
    v13 = v8;
    v14 = v7;
    v17 = *(a1 + 48);
    v15 = *(a1 + 32);
    [v11 queueBlock:v12];
  }
}

void __127__DMCEnrollmentFlowController__authenticateMAID_authenticationResults_enrollmentType_personaID_ephemeral_silent_isRenewalFlow___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) currentStep] - 13) >= 3)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[DMCEnrollmentFlowController _authenticateMAID:authenticationResults:enrollmentType:personaID:ephemeral:silent:isRenewalFlow:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", buf, 0xCu);
    }
  }

  if (*(a1 + 64) != 1)
  {
    if (*(a1 + 40))
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        *buf = 138543362;
        v29 = v7;
        _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "MAID authentication failed with error: %{public}@", buf, 0xCu);
      }

      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = 0;
      goto LABEL_10;
    }

    v9 = [*(a1 + 32) authenticationResults];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [*(a1 + 32) authenticationResults];
      [v11 addEntriesFromDictionary:*(a1 + 48)];
    }

    else
    {
      [*(a1 + 32) setAuthenticationResults:*(a1 + 48)];
    }

    v12 = [*(a1 + 32) authenticationResults];
    v13 = DMCAKAuthenticationAlternateDSIDKey();
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      [*(a1 + 32) setAltDSID:v14];
      if ((*(a1 + 65) & 1) == 0)
      {
        v15 = [*(a1 + 32) _guardAgainstConflictingAccountsWithUsername:0 altDSID:v14];
        if (v15)
        {
          v16 = v15;
          v17 = *DMCLogObjects();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "Duplicate account exists. Abort enrollment flow...", buf, 2u);
          }

          [*(a1 + 32) _flowTerminatedWithError:v16 canceled:0];

          goto LABEL_26;
        }
      }

      if ((*(a1 + 66) & 1) == 0)
      {
        v18 = [*(a1 + 32) dirtyState];
        [v18 addDirtyAltDSID:v14];

        v19 = *(a1 + 32);
        v20 = [v19 dirtyState];
        [v19 _writeDirtyStateToDisk:v20];
      }
    }

    v21 = [*(a1 + 32) altDSID];

    v22 = *(a1 + 32);
    if (v21)
    {
      [*(a1 + 32) _pollNextStep];
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277D032F0];
      v27 = *(a1 + 56);
      v25 = DMCErrorArray();
      v26 = [v23 DMCErrorWithDomain:v24 code:15031 descriptionArray:v25 errorType:{*MEMORY[0x277D032F8], v27, 0}];
      [v22 _flowTerminatedWithError:v26 canceled:0];
    }

LABEL_26:

    goto LABEL_11;
  }

  v3 = *(a1 + 32);
  v4 = 0;
  v5 = 1;
LABEL_10:
  [v3 _flowTerminatedWithError:v4 canceled:v5];
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_signInMAIDWithAuthenticationResult:(id)a3 enrollmentType:(unint64_t)a4 personaID:(id)a5 isRenewalFlow:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  if (a6)
  {
    goto LABEL_4;
  }

  v12 = DMCAKAuthenticationUsernameKey();
  v13 = [v10 objectForKeyedSubscript:v12];
  v14 = DMCAKAuthenticationAlternateDSIDKey();
  v15 = [v10 objectForKeyedSubscript:v14];
  v16 = [(DMCEnrollmentFlowController *)self _guardAgainstConflictingAccountsWithUsername:v13 altDSID:v15];

  if (!v16)
  {
LABEL_4:
    objc_initWeak(&location, self);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke;
    v24 = &unk_278EE3460;
    objc_copyWeak(&v27, &location);
    v17 = v10;
    v25 = v17;
    v18 = v11;
    v26 = v18;
    v19 = MEMORY[0x24C1BD5A0](&v21);
    v20 = [(DMCEnrollmentFlowController *)self presenter:v21];
    [v20 requestMAIDSignInWithAuthenticationResults:v17 personaID:v18 makeiTunesAccountActive:a4 - 6 < 0xFFFFFFFFFFFFFFFELL completionHandler:v19];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:0];
  }
}

void __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke(id *a1, char a2, char a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained workerQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke_2;
    v11[3] = &unk_278EE3438;
    v11[4] = v9;
    v15 = a3;
    v16 = a2;
    v12 = v7;
    v13 = a1[4];
    v14 = a1[5];
    [v10 queueBlock:v11];
  }
}

void __106__DMCEnrollmentFlowController__signInMAIDWithAuthenticationResult_enrollmentType_personaID_isRenewalFlow___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 16)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[DMCEnrollmentFlowController _signInMAIDWithAuthenticationResult:enrollmentType:personaID:isRenewalFlow:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v17, 0xCu);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 32);
    v4 = 0;
    v5 = 1;
LABEL_13:
    [v3 _flowTerminatedWithError:v4 canceled:v5];
    goto LABEL_14;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "MAID sign-in failed with error: %{public}@", &v17, 0xCu);
    }

    v13 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (!v4)
    {
      v16 = +[DMCEnrollmentFlowController _createGeneralSignInError];
      [v13 _flowTerminatedWithError:v16 canceled:0];

      goto LABEL_14;
    }

    v3 = *(a1 + 32);
    v5 = 0;
    goto LABEL_13;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = DMCAKAuthenticationAlternateDSIDKey();
  v9 = [v7 objectForKeyedSubscript:v8];
  LOBYTE(v6) = [v6 _verifyAccountsInformationWithAltDSID:v9 personaID:*(a1 + 56)];

  v10 = *(a1 + 32);
  if (v6)
  {
    [v10 _pollNextStep];
  }

  else
  {
    v15 = +[DMCEnrollmentFlowController _createGeneralSignInError];
    [v10 _flowTerminatedWithError:v15 canceled:0];
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_verifyAccountsInformationWithAltDSID:(id)a3 personaID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 1;
  if (v6)
  {
    v8 = [MEMORY[0x277CB8F48] defaultStore];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v9 = MEMORY[0x277D03550];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__DMCEnrollmentFlowController__verifyAccountsInformationWithAltDSID_personaID___block_invoke;
    v13[3] = &unk_278EE3488;
    v10 = v8;
    v14 = v10;
    v15 = v5;
    v16 = v6;
    v17 = &v18;
    v11 = [v9 performBlockUnderPersona:v16 block:v13];
    v7 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v7 & 1;
}

void __79__DMCEnrollmentFlowController__verifyAccountsInformationWithAltDSID_personaID___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:*(a1 + 40)];
  v3 = [v2 personaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 48)];

  if ((v4 & 1) == 0)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v2 personaIdentifier];
      v8 = *(a1 + 48);
      v17 = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v2;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "The persona ID (%{public}@) of the iCloud account (%{public}@) is different from the persona ID (%{public}@) used in this enrollment.", &v17, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v9 = [*(a1 + 32) dmc_iTunesAccountForRemoteManagingAccountWithAltDSID:*(a1 + 40)];
  v10 = [v9 personaIdentifier];
  v11 = [v10 isEqualToString:*(a1 + 48)];

  if ((v11 & 1) == 0)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v9 personaIdentifier];
      v15 = *(a1 + 48);
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "The persona ID (%{public}@) of the iTunes account (%{public}@) is different from the persona ID (%{public}@) used in this enrollment.", &v17, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_exchangeMAIDForBearerTokenWithRMAccountIdentifier:(id)a3 authParams:(id)a4 anchorCertificateRefs:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Simulating exchange MAID for bearer token.", &buf, 2u);
    }

    v18 = *MEMORY[0x277D245C8];
    v19[0] = @"simulated-enrollment";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [(DMCEnrollmentFlowController *)self setAuthTokens:v12];

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    objc_initWeak(&buf, self);
    v13 = [MEMORY[0x277D24670] authenticatorWithAnchorCertificateRefs:v10];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke;
    v15[3] = &unk_278EE34D8;
    objc_copyWeak(&v16, &buf);
    [v13 fetchTokenWithAuthParams:v9 accountID:v8 completionHandler:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentStep] != 18)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v17 = "[DMCEnrollmentFlowController _exchangeMAIDForBearerTokenWithRMAccountIdentifier:authParams:anchorCertificateRefs:]_block_invoke";
        _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", buf, 0xCu);
      }
    }

    v10 = [v8 workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke_90;
    v12[3] = &unk_278EE34B0;
    v13 = v6;
    v14 = v8;
    v15 = v5;
    [v10 queueBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __115__DMCEnrollmentFlowController__exchangeMAIDForBearerTokenWithRMAccountIdentifier_authParams_anchorCertificateRefs___block_invoke_90(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v4 = [*(a1 + 48) copy];
    [*(a1 + 40) setAuthTokens:v4];

    v5 = *(a1 + 40);

    return [v5 _pollNextStep];
  }
}

- (void)_fetchEnrollmentProfileFromServiceURL:(id)a3 authTokens:(id)a4 machineInfo:(id)a5 anchorCertificateRefs:(id)a6 enrollmentMethod:(unint64_t)a7 isReturnToService:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke;
  v25[3] = &unk_278EE3500;
  objc_copyWeak(&v26, &location);
  v18 = MEMORY[0x24C1BD5A0](v25);
  if (v8 && (-[DMCEnrollmentFlowController obliterationShelter](self, "obliterationShelter"), v19 = objc_claimAutoreleasedReturnValue(), [v19 mdmProfileData], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_DEFAULT, "Return to Service: Has local MDM profile.", v24, 2u);
    }

    v22 = [(DMCEnrollmentFlowController *)self obliterationShelter];
    v23 = [v22 mdmProfileData];
    (v18)[2](v18, v23, 0);
  }

  else
  {
    v22 = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
    [v22 fetchEnrollmentProfileWithServiceURL:v14 authTokens:v15 enrollmentMethod:a7 machineInfo:v16 anchorCertificateRefs:v17 completionHandler:v18];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workerQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke_2;
    v10[3] = &unk_278EE34B0;
    v10[4] = v8;
    v11 = v6;
    v12 = v5;
    [v9 queueBlock:v10];
  }
}

uint64_t __149__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_authTokens_machineInfo_anchorCertificateRefs_enrollmentMethod_isReturnToService___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 19)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[DMCEnrollmentFlowController _fetchEnrollmentProfileFromServiceURL:authTokens:machineInfo:anchorCertificateRefs:enrollmentMethod:isReturnToService:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v8, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277D033B8]];

    if (!v5 || (result = [*(a1 + 32) _handleSoftwareUpdateRequiredError:*(a1 + 40)], (result & 1) == 0) && (result = objc_msgSend(*(a1 + 32), "_handleNeedCredentialsError:", *(a1 + 40)), (result & 1) == 0))
    {
      result = [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
    }
  }

  else
  {
    [*(a1 + 32) setProfileData:*(a1 + 48)];
    result = [*(a1 + 32) _pollNextStep];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_askForUserConsentWithProfileData:(id)a3 managedAppleID:(id)a4 cloudConfig:(id)a5 isReturnToService:(BOOL)a6 enrollmentType:(unint64_t)a7
{
  v8 = a6;
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke;
  v49[3] = &unk_278EE3120;
  v49[4] = self;
  v15 = MEMORY[0x24C1BD5A0](v49);
  if (v8)
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_DEFAULT, "No need to ask for consent during Return to Service", &buf, 2u);
    }

LABEL_4:
    v15[2](v15);
    goto LABEL_31;
  }

  v17 = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v18 = [v17 enrollmentFlowControllerIsDoingMigration:self];

  if (v18)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEFAULT, "No need to ask for consent again during migration", &buf, 2u);
    }

    goto LABEL_4;
  }

  objc_initWeak(&location, self);
  if (v14)
  {
    if ([(DMCEnrollmentFlowController *)self _canSkipMDMEnrollmentWithEnrollmentType:a7])
    {
      v20 = *DMCLogObjects();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]";
        _os_log_impl(&dword_247E39000, v20, OS_LOG_TYPE_DEFAULT, "%s: Skipping core enrollment part", &buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _skipMDMEnrollment];
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v55 = 0x2020000000;
      v56 = 0;
      if (a7 == 9)
      {
        v24 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        v25 = objc_opt_respondsToSelector();

        if (v25)
        {
          v26 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_99;
          v47[3] = &unk_278EE35A0;
          v47[4] = self;
          v47[5] = &buf;
          [v26 awaitStoredProfileInstallationWithCompletionHandler:v47];
        }
      }

      v27 = [(DMCEnrollmentFlowController *)self presenter];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        v29 = [(DMCEnrollmentFlowController *)self presenter];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_104;
        v42[3] = &unk_278EE35F0;
        objc_copyWeak(&v46, &location);
        p_buf = &buf;
        v44 = v15;
        v43 = v14;
        [v29 requestUserConsentWithCloudConfig:v43 completionHandler:v42];

        objc_destroyWeak(&v46);
      }

      else
      {
        v33 = *DMCLogObjects();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = [(DMCEnrollmentFlowController *)self presenter];
          v35 = NSStringFromSelector(sel_requestUserConsentWithCloudConfig_completionHandler_);
          *v50 = 138543618;
          v51 = v34;
          v52 = 2114;
          v53 = v35;
          _os_log_impl(&dword_247E39000, v33, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", v50, 0x16u);
        }

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v21 = [(DMCEnrollmentFlowController *)self presenter];
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      v23 = [(DMCEnrollmentFlowController *)self presenter];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_5;
      v40[3] = &unk_278EE3640;
      objc_copyWeak(&v41, &location);
      [v23 requestUserConsentWithProfileData:v12 managedAppleID:v13 enrollmentType:a7 completionHandler:v40];

      objc_destroyWeak(&v41);
    }

    else
    {
      v30 = [(DMCEnrollmentFlowController *)self presenter];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        v32 = [(DMCEnrollmentFlowController *)self presenter];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_115;
        v38[3] = &unk_278EE3640;
        objc_copyWeak(&v39, &location);
        [v32 requestUserConsentWithProfileData:v12 managedAppleID:v13 completionHandler:v38];

        objc_destroyWeak(&v39);
      }

      else
      {
        v36 = *DMCLogObjects();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_247E39000, v36, OS_LOG_TYPE_ERROR, "presenter didn't implement requestUserConsentWithProfileData:managedAppleID:completionHandler:", &buf, 2u);
        }

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }
    }
  }

  objc_destroyWeak(&location);
LABEL_31:

  v37 = *MEMORY[0x277D85DE8];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedConfigurationHelper];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2;
  v3[3] = &unk_278EE3550;
  v3[4] = *(a1 + 32);
  [v2 markCloudConfigurationAsUICompletedWithCompletionHandler:v3];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _flowTerminatedWithError:v2 canceled:0];
  }

  else
  {
    return [v1 _pollNextStep];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_99(uint64_t a1)
{
  v2 = [*(a1 + 32) workerQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_100;
  v3[3] = &unk_278EE3578;
  v4 = *(a1 + 32);
  [v2 queueBlock:v3 afterDelay:1.0];
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_100(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if ([*(result + 32) currentStep] != 21)
    {
      v2 = *DMCLogObjects();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315138;
        v6 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
      }
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke";
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "%s: Stored profile installed when we are waiting for user consent. This is probably due to TFDEP", &v5, 0xCu);
    }

    result = [*(v1 + 32) _skipMDMEnrollment];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_104(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_105;
    v9[3] = &unk_278EE35C8;
    v9[4] = v5;
    v12 = a2;
    v8 = *(a1 + 40);
    v7 = v8;
    v11 = v8;
    v10 = *(a1 + 32);
    [v6 queueBlock:v9];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_105(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if ([*(a1 + 32) currentStep] != 21)
    {
      v3 = *DMCLogObjects();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", buf, 0xCu);
      }
    }

    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v4 = [MEMORY[0x277D24640] isProvisionallyEnrolledWithCloudConfig:*(a1 + 40)];
      v5 = *(a1 + 32);
      if (v4)
      {
        v6 = [v5 managedConfigurationHelper];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_107;
        v8[3] = &unk_278EE3550;
        v8[4] = *(a1 + 32);
        [v6 unassignFromDEPWithCompletionHandler:v8];
      }

      else
      {
        [v5 _flowTerminatedWithError:0 canceled:1];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_108;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_108(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v4 = [v2 presenter];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3_109;
    v5[3] = &unk_278EE3550;
    v5[4] = *(a1 + 40);
    [v4 requestDeviceErasureWithCompletionHandler:v5];
  }
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_3_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_4;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_5(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_6;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 21)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_6";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    result = [v3 _pollNextStep];
  }

  else
  {
    result = [v3 _flowTerminatedWithError:0 canceled:1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_115(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_116;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __125__DMCEnrollmentFlowController__askForUserConsentWithProfileData_managedAppleID_cloudConfig_isReturnToService_enrollmentType___block_invoke_2_116(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 21)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _askForUserConsentWithProfileData:managedAppleID:cloudConfig:isReturnToService:enrollmentType:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    result = [v3 _pollNextStep];
  }

  else
  {
    result = [v3 _flowTerminatedWithError:0 canceled:1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_displayManagementDetailsOverviewWithProfileData:(id)a3 managedAppleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(DMCEnrollmentFlowController *)self presenter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke;
  v9[3] = &unk_278EE3640;
  objc_copyWeak(&v10, &location);
  [v8 displayManagementDetailsOverviewWithProfileData:v6 managedAppleID:v7 completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke_2;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __95__DMCEnrollmentFlowController__displayManagementDetailsOverviewWithProfileData_managedAppleID___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 22)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _displayManagementDetailsOverviewWithProfileData:managedAppleID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    result = [v3 _pollNextStep];
  }

  else
  {
    result = [v3 _flowTerminatedWithError:0 canceled:1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_skipMDMEnrollment
{
  v3 = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
  v4 = [v3 indexOfObject:&unk_2859F90B8];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:v4 + 1];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 devicePasscodeContext:(id)a5 passcodeContextExtractable:(BOOL)a6 personaID:(id)a7 rmAccountIdentifier:(id)a8 isESSO:(BOOL)a9 essoAppITunesStoreID:(id)a10 essoConfigurationProfile:(id)a11 wifiProfileIdentifier:(id)a12 enrollmentType:(unint64_t)a13 isReturnToService:(BOOL)a14
{
  v36 = a6;
  v37 = a3;
  v42 = a4;
  v39 = a5;
  v41 = a7;
  v40 = a8;
  v38 = a10;
  v19 = a11;
  v20 = a12;
  [(DMCEnrollmentFlowController *)self _blockAppInstallsIfNecessary];
  if (a13 == 9 || a14)
  {
    [(DMCEnrollmentFlowController *)self _enablePushWake];
  }

  objc_initWeak(location, self);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke;
  v43[3] = &unk_278EE3690;
  objc_copyWeak(v44, location);
  v44[1] = a13;
  v21 = MEMORY[0x24C1BD5A0](v43);
  v22 = [(DMCEnrollmentFlowController *)self presenter];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(DMCEnrollmentFlowController *)self presenter];
    [v24 showInstallingEnrollmentProfileScene];
  }

  v25 = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v26 = [v25 enrollmentFlowControllerIsDoingMigration:self];

  if (a13 == 4)
  {
    v27 = MEMORY[0x277D035C8];
    goto LABEL_10;
  }

  if (a13 == 5)
  {
    v27 = MEMORY[0x277D035C0];
LABEL_10:
    v28 = v37;
LABEL_11:
    v29 = *v27;
    goto LABEL_12;
  }

  v27 = MEMORY[0x277D035D0];
  if (a14)
  {
    v27 = MEMORY[0x277D035D8];
  }

  v28 = v37;
  if ((a14 | v26))
  {
    goto LABEL_11;
  }

  v29 = 0;
LABEL_12:
  v30 = objc_opt_new();
  v31 = v30;
  if (v19)
  {
    [v30 addObject:v19];
  }

  if (v20)
  {
    [v31 addObject:v20];
  }

  v32 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v33 = objc_opt_respondsToSelector();

  v34 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  if (v33)
  {
    LOBYTE(v35) = a9;
    [v34 installEnrollmentProfile:v28 devicePasscode:v42 devicePasscodeContext:v39 passcodeContextExtractable:v36 personaID:v41 rmAccountIdentifier:v40 isESSO:v35 essoAppITunesStoreID:v38 managedProfileIdentifiers:v31 installationSource:v29 completionHandler:v21];
  }

  else
  {
    [v34 installEnrollmentProfile:v28 devicePasscode:v42 personaID:v41 rmAccountIdentifier:v40 managedProfileIdentifiers:v31 installationSource:v29 completionHandler:v21];
  }

  objc_destroyWeak(v44);
  objc_destroyWeak(location);
}

void __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke_2;
    v14[3] = &unk_278EE3668;
    v15 = v8;
    v16 = v10;
    v19 = a3;
    v12 = v7;
    v13 = *(a1 + 40);
    v17 = v12;
    v18 = v13;
    [v11 queueBlock:v14];
  }
}

uint64_t __259__DMCEnrollmentFlowController__installEnrollmentProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID_rmAccountIdentifier_isESSO_essoAppITunesStoreID_essoConfigurationProfile_wifiProfileIdentifier_enrollmentType_isReturnToService___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v21 = 138543362;
      v22 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "profile installation failed with error: %{public}@", &v21, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 0;
LABEL_9:
    result = [v4 _flowTerminatedWithError:v5 canceled:v6];
    goto LABEL_10;
  }

  v7 = *(a1 + 64);
  v8 = *DMCLogObjects();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "profile installation canceled", &v21, 2u);
    }

    v4 = *(a1 + 40);
    v5 = 0;
    v6 = 1;
    goto LABEL_9;
  }

  if (v9)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "MDM profile installed.", &v21, 2u);
  }

  [*(a1 + 40) setProfileIdentifier:*(a1 + 48)];
  v12 = [*(a1 + 40) dirtyState];
  [v12 addDirtyProfileIdentifier:*(a1 + 48)];

  v13 = *(a1 + 40);
  v14 = [v13 dirtyState];
  [v13 _writeDirtyStateToDisk:v14];

  if ((*(a1 + 56) | 8) == 9)
  {
    v15 = [*(a1 + 40) managedConfigurationHelper];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [*(a1 + 40) managedConfigurationHelper];
      [v17 markStoredProfileAsInstalled];
    }
  }

  v18 = [*(a1 + 40) delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [*(a1 + 40) delegate];
    [v20 enrollmentFlowController:*(a1 + 40) didInstallEnrollmentProfile:*(a1 + 48)];
  }

  result = [*(a1 + 40) _pollNextStep];
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_createRMAccountIfNeededWithSignInUserIdentifier:(id)a3 assignedMAID:(id)a4 existingRMAccountID:(id)a5 enrollmentType:(unint64_t)a6 enrollmentMethod:(unint64_t)a7 isRenewalFlow:(BOOL)a8
{
  v8 = a8;
  v30 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (v16 && v8)
  {
    v17 = [MEMORY[0x277CB8F48] defaultStore];
    v18 = [v17 accountWithIdentifier:v16];

    if ([v18 dmc_enrollmentType] == a6 && objc_msgSend(v18, "dmc_enrollmentMethod") == a7)
    {
      v19 = [(DMCEnrollmentFlowController *)self dirtyState];
      [v19 addDirtyRMAccount:v16];

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      goto LABEL_12;
    }
  }

  v20 = [MEMORY[0x277CB8F48] defaultStore];
  v21 = [MEMORY[0x277CB8F30] dmc_createManagementAccountWithStore:v20];
  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v29 = v21;
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_INFO, "Will save remote management account: %{public}@", buf, 0xCu);
  }

  [v21 setUsername:v15];
  [v21 dmc_setSignInUserIdentifier:v14];
  [v21 dmc_setEnrollmentType:a6];
  [v21 dmc_setEnrollmentMethod:a7];
  if (a6 == 7)
  {
    [v21 dmc_setAccountScheme:*MEMORY[0x277D032E8]];
  }

  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke;
  v25[3] = &unk_278EE36B8;
  objc_copyWeak(&v27, buf);
  v23 = v21;
  v26 = v23;
  [v20 saveAccount:v23 withCompletionHandler:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

void __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke_2;
    v9[3] = &unk_278EE32D0;
    v13 = a2;
    v10 = v5;
    v11 = v7;
    v12 = *(a1 + 32);
    [v8 queueBlock:v9];
  }
}

uint64_t __159__DMCEnrollmentFlowController__createRMAccountIfNeededWithSignInUserIdentifier_assignedMAID_existingRMAccountID_enrollmentType_enrollmentMethod_isRenewalFlow___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *DMCLogObjects();
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = v3;
      v6 = [v4 identifier];
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", &v15, 0xCu);
    }

    v7 = [*(a1 + 48) identifier];
    [*(a1 + 40) setRmAccountIdentifier:v7];

    v8 = [*(a1 + 40) dirtyState];
    v9 = [*(a1 + 48) identifier];
    [v8 addDirtyRMAccount:v9];

    v10 = *(a1 + 40);
    v11 = [v10 dirtyState];
    [v10 _writeDirtyStateToDisk:v11];

    result = [*(a1 + 40) _pollNextStep];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", &v15, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateRMAccountWithIdentifier:(id)a3 authenticationResults:(id)a4 enrollmentMethod:(unint64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(DMCEnrollmentFlowController *)self managedAppleID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = DMCAKAuthenticationUsernameKey();
    v12 = [v9 objectForKeyedSubscript:v13];
  }

  v14 = [MEMORY[0x277CB8F48] defaultStore];
  v28 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __101__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authenticationResults_enrollmentMethod___block_invoke;
  v24 = &unk_278EE36E0;
  v15 = v12;
  v25 = v15;
  v16 = v9;
  v26 = v16;
  v27 = a5;
  v17 = [v14 dmc_updateAccountWithIdentifier:v8 error:&v28 updateBlock:&v21];
  v18 = v28;

  v19 = *DMCLogObjects();
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v8;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep:v21];
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v18 canceled:0, v21, v22, v23, v24, v25];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __101__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authenticationResults_enrollmentMethod___block_invoke(void *a1, void *a2)
{
  v15 = a2;
  [v15 setUsername:a1[4]];
  [v15 setAccountDescription:a1[4]];
  v3 = a1[5];
  v4 = DMCAKAuthenticationAlternateDSIDKey();
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = a1[5];
    v7 = DMCAKAuthenticationAlternateDSIDKey();
    v8 = [v6 objectForKeyedSubscript:v7];
    [v15 dmc_setAltDSID:v8];
  }

  v9 = a1[5];
  v10 = DMCAKAuthenticationDSIDKey();
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = a1[5];
    v13 = DMCAKAuthenticationDSIDKey();
    v14 = [v12 objectForKeyedSubscript:v13];
    [v15 dmc_setDSID:v14];
  }

  if (a1[6] == 1)
  {
    [MEMORY[0x277D24610] stashMAIDShortLivedTokenWithAccount:v15 authenticationResults:a1[5]];
  }
}

- (void)_updateRMAccountWithIdentifier:(id)a3 authTokens:(id)a4 profileIdentifier:(id)a5 organizationName:(id)a6 personaID:(id)a7 enrollmentMethod:(unint64_t)a8
{
  v52 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v19 = MEMORY[0x277D03550];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke;
  v30[3] = &unk_278EE3730;
  v37 = &v40;
  v20 = v14;
  v31 = v20;
  v38 = &v44;
  v21 = v17;
  v32 = v21;
  v33 = self;
  v22 = v15;
  v34 = v22;
  v23 = v16;
  v35 = v23;
  v24 = v18;
  v36 = v24;
  v39 = a8;
  v25 = [v19 performBlockUnderPersona:v24 block:v30];
  if (v41[3])
  {
    v26 = *DMCLogObjects();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v20;
      _os_log_impl(&dword_247E39000, v26, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v27 = *DMCLogObjects();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v45[5];
      *buf = 138543362;
      v51 = v28;
      _os_log_impl(&dword_247E39000, v27, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v45[5] canceled:0];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  v29 = *MEMORY[0x277D85DE8];
}

void __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = *(*(a1 + 88) + 8);
  v17 = *(v3 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke_2;
  v12[3] = &unk_278EE3708;
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 48);
  v11 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 96);
  v15 = v9;
  v16 = v10;
  LOBYTE(v4) = [v2 dmc_updateAccountWithIdentifier:v4 error:&v17 updateBlock:v12];
  objc_storeStrong((v3 + 40), v17);
  *(*(*(a1 + 80) + 8) + 24) = v4;
}

void __135__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_profileIdentifier_organizationName_personaID_enrollmentMethod___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAccountDescription:*(a1 + 32)];
  [*(a1 + 40) _updateCredentialForAccount:v3 authTokens:*(a1 + 48)];
  [v3 dmc_setManagementProfileIdentifier:*(a1 + 56)];
  [v3 dmc_setPersonaIdentifier:*(a1 + 64)];
  if (*(a1 + 72) == 1)
  {
    [MEMORY[0x277D24610] removeMAIDShortLivedTokenWithAccount:v3];
  }
}

- (void)_updateRMAccountWithIdentifier:(id)a3 authTokens:(id)a4 personaID:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v11 = MEMORY[0x277D03550];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke;
  v19[3] = &unk_278EE3780;
  v23 = &v25;
  v12 = v8;
  v24 = &v29;
  v20 = v12;
  v21 = self;
  v13 = v9;
  v22 = v13;
  v14 = [v11 performBlockUnderPersona:v10 block:v19];
  if (v26[3])
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v12;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v30[5];
      *buf = 138543362;
      v36 = v17;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v30[5] canceled:0];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = *(a1[8] + 8);
  v8 = *(v3 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke_2;
  v6[3] = &unk_278EE3758;
  v4 = a1[4];
  v5 = a1[6];
  v6[4] = a1[5];
  v7 = v5;
  LOBYTE(v4) = [v2 dmc_updateAccountWithIdentifier:v4 error:&v8 updateBlock:v6];
  objc_storeStrong((v3 + 40), v8);
  *(*(a1[7] + 8) + 24) = v4;
}

void __83__DMCEnrollmentFlowController__updateRMAccountWithIdentifier_authTokens_personaID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _updateCredentialForAccount:v4 authTokens:v3];
  [v4 dmc_setBearerReauthURL:0];
  [v4 dmc_setBearerReauthParams:0];
}

- (void)_correlateMAIDWithAltDSID:(id)a3 withRMAccount:(id)a4 isProfileLocked:(BOOL)a5 organizationName:(id)a6 friendlyName:(id)a7 personaID:(id)a8
{
  v82 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [MEMORY[0x277CB8F48] defaultStore];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke;
  v75[3] = &unk_278EE37A8;
  v44 = v15;
  v76 = v44;
  v42 = v14;
  v77 = v42;
  v19 = v16;
  v78 = v19;
  v79 = a5;
  v20 = MEMORY[0x24C1BD5A0](v75);
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy_;
  v73 = __Block_byref_object_dispose_;
  v74 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 1;
  v21 = MEMORY[0x277D03550];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_2;
  v59[3] = &unk_278EE37D0;
  v63 = &v65;
  v22 = v18;
  v60 = v22;
  v23 = v13;
  v61 = v23;
  v64 = &v69;
  v24 = v20;
  v62 = v24;
  v25 = [v21 performBlockUnderPersona:v17 block:v59];
  if (v66[3])
  {
    v26 = *DMCLogObjects();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v26, OS_LOG_TYPE_DEFAULT, "iCloud Account Saved Successfully.", buf, 2u);
    }

    v27 = MEMORY[0x277D03550];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_132;
    v53[3] = &unk_278EE37D0;
    v57 = &v65;
    v28 = v22;
    v54 = v28;
    v29 = v23;
    v55 = v29;
    v58 = &v69;
    v56 = v24;
    v30 = [v27 performBlockUnderPersona:v17 block:{v53, v42, v44}];
    if (v66[3])
    {
      v31 = *DMCLogObjects();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v31, OS_LOG_TYPE_DEFAULT, "iTunes Account Saved Successfully.", buf, 2u);
      }

      v32 = MEMORY[0x277D03550];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_133;
      v47[3] = &unk_278EE3818;
      v50 = &v65;
      v48 = v28;
      v49 = v29;
      v51 = &v69;
      v52 = a5;
      v33 = [v32 performBlockUnderPersona:v17 block:v47];
      if (v66[3])
      {
        v34 = *DMCLogObjects();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v34, OS_LOG_TYPE_DEFAULT, "RM Account Saved Successfully.", buf, 2u);
        }

        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
      }

      else
      {
        v39 = *DMCLogObjects();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = v70[5];
          *buf = 138543362;
          v81 = v40;
          _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_ERROR, "Error Updating RM Account: %{public}@", buf, 0xCu);
        }

        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v70[5] canceled:0];
      }
    }

    else
    {
      v37 = *DMCLogObjects();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = v70[5];
        *buf = 138543362;
        v81 = v38;
        _os_log_impl(&dword_247E39000, v37, OS_LOG_TYPE_ERROR, "Error Updating iTunes Account: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v70[5] canceled:0];
    }
  }

  else
  {
    v35 = *DMCLogObjects();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v70[5];
      *buf = 138543362;
      v81 = v36;
      _os_log_impl(&dword_247E39000, v35, OS_LOG_TYPE_ERROR, "Error Updating iCloud Account: %{public}@", buf, 0xCu);
    }

    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v70[5] canceled:0, v42, v44];
  }

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);

  v41 = *MEMORY[0x277D85DE8];
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAccountDescription:v3];
  [v4 dmc_setRemoteManagingAccountIdentifier:*(a1 + 40)];
  [v4 setManagingOwnerIdentifier:*MEMORY[0x277D246C0]];
  [v4 setManagingSourceName:*(a1 + 48)];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D246B8]];
  [v4 dmc_setManagementProfileLocked:*(a1 + 56)];
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_2(void *a1)
{
  v2 = *MEMORY[0x277CB8BA0];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_132(void *a1)
{
  v2 = *MEMORY[0x277CB8D58];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_133(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8CF0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  obj = *(v3 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __127__DMCEnrollmentFlowController__correlateMAIDWithAltDSID_withRMAccount_isProfileLocked_organizationName_friendlyName_personaID___block_invoke_2_134;
  v7[3] = &__block_descriptor_33_e19_v16__0__ACAccount_8l;
  v8 = *(a1 + 64);
  v6 = [v4 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v5 error:&obj updateBlock:v7];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (void)_updateAccountsWithRMIdentifier:(id)a3 managedAppleID:(id)a4 profileIdentifier:(id)a5 organizationName:(id)a6 enrollmentURL:(id)a7 personaID:(id)a8
{
  v93 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v13 = a4;
  v14 = a5;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v15 = [MEMORY[0x277CB8F48] defaultStore];
  v16 = [v15 dmc_iCloudAccountWithUsername:v13];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 username];
    v19 = [v17 dmc_altDSID];
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = 1;
    v20 = v14;
    *v81 = 0;
    v82 = v81;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy_;
    v85 = __Block_byref_object_dispose_;
    v86 = 0;
    v50 = v13;
    v21 = MEMORY[0x277D03550];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke;
    v70[3] = &unk_278EE3868;
    v79 = &v87;
    v48 = v15;
    v22 = v15;
    v71 = v22;
    v23 = v52;
    v72 = v23;
    v80 = v81;
    v24 = v18;
    v73 = v24;
    v74 = v53;
    v25 = v19;
    v75 = v25;
    v26 = v55;
    v76 = v26;
    v77 = v14;
    v78 = v54;
    v27 = [v21 performBlockUnderPersona:v26 block:v70];
    if (v88[3])
    {
      v28 = *DMCLogObjects();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v92 = v23;
        _os_log_impl(&dword_247E39000, v28, OS_LOG_TYPE_DEFAULT, "Remote Management Account Saved Successfully: %{public}@", buf, 0xCu);
      }

      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_135;
      v68[3] = &unk_278EE3890;
      v69 = v23;
      v29 = MEMORY[0x24C1BD5A0](v68);
      v30 = MEMORY[0x277D03550];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2_136;
      v62[3] = &unk_278EE37D0;
      v66 = &v87;
      v31 = v22;
      v63 = v31;
      v32 = v25;
      v64 = v32;
      v67 = v81;
      v33 = v29;
      v65 = v33;
      v34 = v30;
      v14 = v20;
      v35 = [v34 performBlockUnderPersona:v26 block:v62];
      if (v88[3])
      {
        v36 = *DMCLogObjects();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v36, OS_LOG_TYPE_DEFAULT, "iCloud Account Saved Successfully.", buf, 2u);
        }

        v37 = MEMORY[0x277D03550];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_137;
        v56[3] = &unk_278EE37D0;
        v60 = &v87;
        v57 = v31;
        v58 = v32;
        v61 = v81;
        v59 = v33;
        v38 = [v37 performBlockUnderPersona:v26 block:v56];
        v14 = v20;
        if (v88[3])
        {
          v39 = *DMCLogObjects();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_DEFAULT, "iTunes Account Saved Successfully.", buf, 2u);
          }

          [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
        }

        else
        {
          v45 = *DMCLogObjects();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = *(v82 + 5);
            *buf = 138543362;
            v92 = v46;
            _os_log_impl(&dword_247E39000, v45, OS_LOG_TYPE_ERROR, "Error Updating iTunes Account: %{public}@", buf, 0xCu);
          }

          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:*(v82 + 5) canceled:0, v48];
        }
      }

      else
      {
        v43 = *DMCLogObjects();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(v82 + 5);
          *buf = 138543362;
          v92 = v44;
          _os_log_impl(&dword_247E39000, v43, OS_LOG_TYPE_ERROR, "Error Updating iCloud Account: %{public}@", buf, 0xCu);
        }

        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:*(v82 + 5) canceled:0, v48];
      }

      v13 = v50;
    }

    else
    {
      v41 = *DMCLogObjects();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = *(v82 + 5);
        *buf = 138543362;
        v92 = v42;
        _os_log_impl(&dword_247E39000, v41, OS_LOG_TYPE_ERROR, "Error Saving Remote Management Account: %{public}@", buf, 0xCu);
      }

      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:*(v82 + 5) canceled:0, v48];
    }

    v15 = v49;
    _Block_object_dispose(v81, 8);

    _Block_object_dispose(&v87, 8);
  }

  else
  {
    v40 = *DMCLogObjects();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v81 = 0;
      _os_log_impl(&dword_247E39000, v40, OS_LOG_TYPE_ERROR, "Error Missing Apple Account during User Enrollment", v81, 2u);
    }

    v24 = +[DMCEnrollmentFlowController _createMissingAppleAccountForUserEnrollmentError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v24 canceled:0];
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 104) + 8);
  v16 = *(v4 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2;
  v11[3] = &unk_278EE3840;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  LOBYTE(v2) = [v2 dmc_updateAccountWithIdentifier:v3 error:&v16 updateBlock:v11];
  objc_storeStrong((v4 + 40), v16);
  *(*(*(a1 + 96) + 8) + 24) = v2;
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setUsername:v3];
  [v4 setAccountDescription:a1[5]];
  [v4 dmc_setAltDSID:a1[6]];
  [v4 dmc_setPersonaIdentifier:a1[7]];
  [v4 dmc_setManagementProfileIdentifier:a1[8]];
  [v4 dmc_setEnrollmentURL:a1[9]];
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_2_136(void *a1)
{
  v2 = *MEMORY[0x277CB8BA0];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

void __137__DMCEnrollmentFlowController__updateAccountsWithRMIdentifier_managedAppleID_profileIdentifier_organizationName_enrollmentURL_personaID___block_invoke_137(void *a1)
{
  v2 = *MEMORY[0x277CB8D58];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

- (void)_reauthenticationCompleteWithRMIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6 = objc_opt_respondsToSelector();

  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEBUG, "Reauthentication complete for: %{public}@.", &v12, 0xCu);
    }

    v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [v8 reauthenticationComplete];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10 = NSStringFromSelector(sel_reauthenticationComplete);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", &v12, 0x16u);

LABEL_7:
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_requestiCloudSignInConfirmation
{
  objc_initWeak(&location, self);
  v3 = [(DMCEnrollmentFlowController *)self presenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke;
  v4[3] = &unk_278EE3640;
  objc_copyWeak(&v5, &location);
  [v3 requestiCloudSignInConfirmationWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke_2;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __63__DMCEnrollmentFlowController__requestiCloudSignInConfirmation__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 33)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _requestiCloudSignInConfirmation]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    result = [v3 _pollNextStep];
  }

  else
  {
    result = [v3 _flowTerminatedWithError:0 canceled:1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_promoteiCloudWithAltDSID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [v5 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:v4];

  objc_initWeak(&location, self);
  v7 = [(DMCEnrollmentFlowController *)self presenter];
  v8 = [v6 dmc_accountQuotaString];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke;
  v9[3] = &unk_278EE38B8;
  objc_copyWeak(&v10, &location);
  [v7 showiCloudPromotionPageWithiCloudQuotaString:v8 completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workerQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke_2;
    v4[3] = &unk_278EE3120;
    v4[4] = v2;
    [v3 queueBlock:v4];
  }
}

uint64_t __57__DMCEnrollmentFlowController__promoteiCloudWithAltDSID___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 32)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _promoteiCloudWithAltDSID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  result = [*(a1 + 32) _pollNextStep];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_askForRestoreChoiceWithMAID:(id)a3 personaID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DMCEnrollmentFlowController *)self presenter];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(location, self);
    v10 = [(DMCEnrollmentFlowController *)self presenter];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke;
    v16[3] = &unk_278EE3640;
    objc_copyWeak(&v17, location);
    [v10 suggestRestoreForAccountWithUsername:v6 personaID:v7 completionHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [(DMCEnrollmentFlowController *)self presenter];
      v14 = NSStringFromSelector(sel_suggestRestoreForAccountWithUsername_personaID_completionHandler_);
      *location = 138543618;
      *&location[4] = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", location, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workerQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke_2;
    v4[3] = &unk_278EE3120;
    v4[4] = v2;
    [v3 queueBlock:v4];
  }
}

uint64_t __70__DMCEnrollmentFlowController__askForRestoreChoiceWithMAID_personaID___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 35)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _askForRestoreChoiceWithMAID:personaID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  result = [*(a1 + 32) _pollNextStep];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_analyzeESSODetails:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 declarations];

  if (v5)
  {
    v6 = [(DMCEnrollmentFlowController *)self rmStoreHelper];

    if (v6)
    {
      v7 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
      v8 = [v4 declarations];
      v36 = 0;
      v9 = [v7 appDetailsFromDeclarations:v8 error:&v36];
      v10 = v36;

      if (v9)
      {
        if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
        {
          v11 = MEMORY[0x277CBEB98];
          v12 = [v9 objectForKeyedSubscript:@"BundleID"];
          v13 = v12;
          v14 = MEMORY[0x277CBEBF8];
          if (v12)
          {
            v15 = v12;
          }

          else
          {
            v15 = MEMORY[0x277CBEBF8];
          }

          v16 = [v11 setWithArray:v15];

          v17 = MEMORY[0x277CBEB98];
          v18 = [v4 appIDs];
          v19 = [(DMCEnrollmentFlowController *)self _bundleIDsFromAppIDs:v18];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v14;
          }

          v22 = [v17 setWithArray:v21];

          if ([v16 isEqualToSet:v22])
          {

LABEL_22:
            [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_31:

            goto LABEL_32;
          }

          v31 = *DMCLogObjects();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            v33 = [v4 appIDs];
            *buf = 138543618;
            v38 = v33;
            v39 = 2114;
            v40 = v16;
            _os_log_impl(&dword_247E39000, v32, OS_LOG_TYPE_ERROR, "ErSSO declaration AppIDs do not match: %{public}@ and %{public}@", buf, 0x16u);
          }

          v34 = +[DMCEnrollmentFlowController _createInvalidErSSODeclarationsError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v34 canceled:0];
        }

        else
        {
          v16 = [v9 objectForKeyedSubscript:@"AppStoreID"];
          if (v16)
          {
            v26 = [v4 iTunesStoreID];
            v27 = [v26 isEqualToNumber:v16];

            if (v27)
            {
              goto LABEL_22;
            }
          }

          v28 = *DMCLogObjects();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = v28;
            v30 = [v4 iTunesStoreID];
            *buf = 138543618;
            v38 = v30;
            v39 = 2114;
            v40 = v16;
            _os_log_impl(&dword_247E39000, v29, OS_LOG_TYPE_ERROR, "ErSSO declaration AppStoreIDs do not match: %{public}@ and %{public}@", buf, 0x16u);
          }

          v22 = +[DMCEnrollmentFlowController _createInvalidErSSODeclarationsError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v22 canceled:0];
        }
      }

      else
      {
        v25 = *DMCLogObjects();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v38 = v10;
          _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_ERROR, "Invalid ErSSO declarations: %{public}@", buf, 0xCu);
        }

        v16 = +[DMCEnrollmentFlowController _createInvalidErSSODeclarationsError];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:0];
      }

      goto LABEL_31;
    }

    v23 = *DMCLogObjects();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", buf, 2u);
    }

    v24 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v24 canceled:0];
  }

  else
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

LABEL_32:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_installEnterpriseApplication:(id)a3 debuggingAppIDs:(id)a4 personaID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke;
  v12[3] = &unk_278EE39D0;
  v12[4] = self;
  v13 = v9;
  v14 = v8;
  v10 = v8;
  v11 = v9;
  [(DMCEnrollmentFlowController *)self _fetchBundleIDsWithiTunesItemID:v10 debuggingAppIDs:a4 completionHandler:v12];
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2;
  v8[3] = &unk_278EE38E0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  [v4 queueBlock:v8];
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if ([a1[4] count])
  {
    if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
    {
LABEL_16:
      if ([MEMORY[0x277D03500] allowAnyESSOApplicationEntitlements])
      {
        v14 = 0;
      }

      else
      {
        v42 = @"com.apple.developer.enrollment-sso-capable";
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_144;
      v32[3] = &unk_278EE38E0;
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[6];
      v33 = v15;
      v34 = v16;
      v35 = v17;
      v18 = v14;
      v36 = v18;
      v19 = MEMORY[0x24C1BD5A0](v32);
      v20 = MEMORY[0x277D03550];
      v21 = a1[6];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_145;
      v26[3] = &unk_278EE39A8;
      v25 = *(a1 + 2);
      v22 = v25.i64[0];
      v27 = vextq_s8(v25, v25, 8uLL);
      v28 = v18;
      v29 = a1[6];
      v31 = v19;
      v30 = a1[7];
      v23 = v19;
      v9 = v18;
      [v20 setPersonaIdentifierForApps:v22 personaID:v21 completionHandler:v26];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v2 = a1[4];
      v3 = [v2 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v38;
        while (2)
        {
          v6 = 0;
          do
          {
            if (*v38 != v5)
            {
              objc_enumerationMutation(v2);
            }

            if (![a1[5] _appWithBundleIDExists:*(*(&v37 + 1) + 8 * v6)])
            {

              goto LABEL_16;
            }

            ++v6;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      v7 = a1[5];
      v8 = [a1[4] firstObject];
      v9 = [v7 _appNameWithBundleID:v8];

      v10 = a1[5];
      v11 = [DMCEnrollmentFlowController _createEnterpriseApplicationExistsErrorWithAppName:v9];
      [v10 _flowTerminatedWithError:v11 canceled:0];
    }
  }

  else
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "No application bundle ID", buf, 2u);
    }

    v13 = a1[5];
    v9 = +[DMCEnrollmentFlowController _createMissingEnterpriseApplicationBundleIDError];
    [v13 _flowTerminatedWithError:v9 canceled:0];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_144(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v3)
  {

    v14 = *(a1 + 40);
LABEL_13:
    v5 = +[DMCEnrollmentFlowController _createMissingEnterpriseApplicationError];
    goto LABEL_14;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v18;
  while (2)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v17 + 1) + 8 * v7);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v16 = v8;
      v13 = [v10 _validateBundleID:v9 personaID:v11 requiredEntitlements:v12 error:&v16];
      v5 = v16;

      if (v13)
      {
        [*(a1 + 40) setAppBundleID:v9];

        [*(a1 + 40) _pollNextStep];
        goto LABEL_15;
      }

      ++v7;
      v8 = v5;
    }

    while (v4 != v7);
    v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  v14 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  [v14 _flowTerminatedWithError:v5 canceled:0];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_145(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _flowTerminatedWithError:v3 canceled:0];
  }

  else
  {
    if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
    {
      objc_initWeak(&location, *(a1 + 32));
      v4 = [*(a1 + 32) presenter];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_3;
      v14[3] = &unk_278EE3930;
      objc_copyWeak(&v17, &location);
      v15 = *(a1 + 56);
      v16 = *(a1 + 72);
      [v4 requestDebuggingApplicationsInstallation:v5 requiredEntitlements:v6 completionHandler:v14];

      v7 = &v17;
    }

    else
    {
      [*(a1 + 32) _trackDirtyAppBundleIDs:*(a1 + 40) personaID:*(a1 + 56)];
      objc_initWeak(&location, *(a1 + 32));
      v8 = [*(a1 + 32) presenter];
      v9 = *(a1 + 64);
      v10 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_147;
      v11[3] = &unk_278EE3980;
      objc_copyWeak(&v13, &location);
      v12 = *(a1 + 72);
      [v8 requestESSOApplicationInstallationWithITunesItemID:v9 requiredEntitlements:v10 completionHandler:v11];

      v7 = &v13;
    }

    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_3(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_4;
    v12[3] = &unk_278EE3908;
    v12[4] = v10;
    v13 = v7;
    v14 = a1[4];
    v17 = a2;
    v15 = v8;
    v16 = a1[5];
    [v11 queueBlock:v12];
  }
}

uint64_t __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 6)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _installEnterpriseApplication:debuggingAppIDs:personaID:]_block_invoke_4";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  [*(a1 + 32) _trackDirtyAppBundleIDs:*(a1 + 40) personaID:*(a1 + 48)];
  v3 = *(a1 + 56);
  if ((*(a1 + 72) & 1) != 0 || v3)
  {
    result = [*(a1 + 32) _flowTerminatedWithError:v3 canceled:?];
  }

  else
  {
    result = (*(*(a1 + 64) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_147(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workerQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_148;
    v9[3] = &unk_278EE3958;
    v9[4] = v7;
    v12 = a2;
    v10 = v5;
    v11 = *(a1 + 32);
    [v8 queueBlock:v9];
  }
}

uint64_t __87__DMCEnrollmentFlowController__installEnterpriseApplication_debuggingAppIDs_personaID___block_invoke_2_148(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 6)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _installEnterpriseApplication:debuggingAppIDs:personaID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if ((*(a1 + 56) & 1) != 0 || v3)
  {
    result = [*(a1 + 32) _flowTerminatedWithError:v3 canceled:?];
  }

  else
  {
    result = (*(*(a1 + 48) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_validateBundleID:(id)a3 personaID:(id)a4 requiredEntitlements:(id)a5 error:(id *)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31 = v9;
  v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:a6];
  v13 = v12;
  v32 = a6;
  if (*a6)
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a6;
      *buf = 138543618;
      v40 = v9;
      v41 = 2114;
      v42 = v15;
      _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "Failed to load record for app: %{public}@ with error: %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v17 = [v12 managedPersonas];
    if ([v17 containsObject:v10])
    {
      v29 = v11;
      v30 = v10;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v11;
      v18 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        v16 = 1;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            v23 = [v13 entitlements];
            v24 = [v23 objectForKey:v22 ofClass:objc_opt_class()];
            v25 = [v24 BOOLValue];

            if ((v25 & 1) == 0)
            {
              v26 = *DMCLogObjects();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v40 = v31;
                v41 = 2114;
                v42 = v22;
                _os_log_impl(&dword_247E39000, v26, OS_LOG_TYPE_ERROR, "Application (%{public}@) doesn't have the required entitlement: %{public}@", buf, 0x16u);
              }

              +[DMCEnrollmentFlowController _createEnterpriseApplicationMissingEntitlementsError];
              *v32 = v16 = 0;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v19);
      }

      else
      {
        v16 = 1;
      }

      v11 = v29;
      v10 = v30;
    }

    else
    {
      v16 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (void)_trackDirtyAppBundleIDs:(id)a3 personaID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [objc_alloc(MEMORY[0x277D034A8]) initWithBundleID:*(*(&v17 + 1) + 8 * v11) personaID:v7];
        v13 = [(DMCEnrollmentFlowController *)self dirtyState];
        v14 = [v12 identifier];
        [v13 addDirtyBundleID:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [(DMCEnrollmentFlowController *)self dirtyState];
  [(DMCEnrollmentFlowController *)self _writeDirtyStateToDisk:v15];

  v16 = *MEMORY[0x277D85DE8];
}

void __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) workerQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke_2;
  v12[3] = &unk_278EE34B0;
  v9 = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  [v8 queueBlock:v12];
}

uint64_t __138__DMCEnrollmentFlowController__installESSOConfigurationProfile_devicePasscode_devicePasscodeContext_passcodeContextExtractable_personaID___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "ESSO configuration profile installation failed with error: %{public}@", &v11, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [*(a1 + 40) setESSOConfigurationProfileIdentifier:*(a1 + 48)];
    v6 = [*(a1 + 40) dirtyState];
    [v6 addDirtyProfileIdentifier:*(a1 + 48)];

    v7 = *(a1 + 40);
    v8 = [v7 dirtyState];
    [v7 _writeDirtyStateToDisk:v8];

    v9 = *(a1 + 40);
    v10 = *MEMORY[0x277D85DE8];

    return [v9 _pollNextStep];
  }

  return result;
}

- (void)_installESSODeclarations:(id)a3 chosenBundleID:(id)a4 personaID:(id)a5 enrollmentType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DMCEnrollmentFlowController *)self rmStoreHelper];

  if (v13)
  {
    v14 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke;
    v18[3] = &unk_278EE3550;
    v18[4] = self;
    [v14 createErSSOStoreWithDeclarations:v10 chosenBundleID:v11 personaID:v12 isUserEnrollment:a6 == 4 completionHandler:v18];
  }

  else
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v17, 2u);
    }

    v16 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v16 canceled:0];
  }
}

void __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __96__DMCEnrollmentFlowController__installESSODeclarations_chosenBundleID_personaID_enrollmentType___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "ErSSO declarations installation failed with error: %{public}@", &v11, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = [*(a1 + 40) dirtyState];
    [v6 setDirtyRMStoreForErSSO];

    v7 = *(a1 + 40);
    v8 = [v7 dirtyState];
    [v7 _writeDirtyStateToDisk:v8];

    v9 = *(a1 + 40);
    v10 = *MEMORY[0x277D85DE8];

    return [v9 _waitForESSODeclarations];
  }

  return result;
}

- (void)_waitForESSODeclarations
{
  v3 = [(DMCEnrollmentFlowController *)self rmStoreHelper];

  if (v3)
  {
    v4 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke;
    v7[3] = &unk_278EE3550;
    v7[4] = self;
    [v4 waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:v7 completionHandler:60.0];
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v6, 2u);
    }

    v4 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v4 canceled:0];
  }
}

void __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __55__DMCEnrollmentFlowController__waitForESSODeclarations__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "ErSSO declarations wait failed with error: %{public}@", &v8, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x277D85DE8];

    return [v6 _extensionIDsFromDeclarationProfiles];
  }

  return result;
}

- (void)_extensionIDsFromDeclarationProfiles
{
  v3 = [(DMCEnrollmentFlowController *)self rmStoreHelper];

  if (v3)
  {
    v4 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke;
    v7[3] = &unk_278EE3A20;
    v7[4] = self;
    [v4 extensibleSSOProfileIdentifiersWithCompletionHandler:v7];
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v6, 2u);
    }

    v4 = +[DMCEnrollmentFlowController _createGeneralError];
    [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v4 canceled:0];
  }
}

void __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workerQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke_2;
  v11[3] = &unk_278EE34B0;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v7 queueBlock:v11];
}

uint64_t __67__DMCEnrollmentFlowController__extensionIDsFromDeclarationProfiles__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "ErSSO declarations profile identifiers failed with error: %{public}@", &v12, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v5 = [*(a1 + 40) managedConfigurationHelper];
    v6 = [v5 extensionIDsFromESSOProfileIdentifiers:*(a1 + 48)];
    [*(a1 + 40) setExtensionIdentifiersFromConfig:v6];

    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 extensionIdentifiersFromConfig];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEBUG, "ErSSO configuration profile identifiers: %{public}@", &v12, 0xCu);
    }

    result = [*(a1 + 40) _pollNextStep];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke;
  v6[3] = &unk_278EE3550;
  v6[4] = self;
  [v5 _awaitESSOConfigActivationWithExtensionIdentifiers:v4 completionHandler:v6];
}

void __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __82__DMCEnrollmentFlowController__awaitESSOConfigActivationWithExtensionIdentifiers___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _flowTerminatedWithError:v2 canceled:0];
  }

  else
  {
    return [v1 _pollNextStep];
  }
}

- (void)_manageApplicationWithAppBundleID:(id)a3 essoDetails:(id)a4 organization:(id)a5 personaID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DMCEnrollmentFlowController *)self profileIdentifier];
  if (v14 && (v15 = v14, [v11 declarations], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  else
  {
    v17 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v18 = [v11 iTunesStoreID];
    v19 = [v11 associatedDomains];
    v20 = [v11 associatedDomainsEnableDirectDownloads];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__DMCEnrollmentFlowController__manageApplicationWithAppBundleID_essoDetails_organization_personaID___block_invoke;
    v21[3] = &unk_278EE3550;
    v21[4] = self;
    [v17 manageApplicationWithBundleID:v10 iTunesItemID:v18 organization:v12 personaID:v13 associatedDomains:v19 associatedDomainsEnableDirectDownloads:v20 configuration:0 completionHandler:v21];
  }
}

uint64_t __100__DMCEnrollmentFlowController__manageApplicationWithAppBundleID_essoDetails_organization_personaID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _flowTerminatedWithError:a2 canceled:0];
  }

  else
  {
    return [v2 _pollNextStep];
  }
}

- (void)_linkESSOStore:(id)a3 rmAccountIdentifier:(id)a4 profileIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 declarations];

  if (v10)
  {
    v11 = [(DMCEnrollmentFlowController *)self rmStoreHelper];

    if (v11)
    {
      v12 = [(DMCEnrollmentFlowController *)self rmStoreHelper];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke;
      v15[3] = &unk_278EE3550;
      v15[4] = self;
      [v12 linkErSSOStoreToMDMWithProfileIdentifier:v9 accountIdentifier:v8 completionHandler:v15];
    }

    else
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "Invalid ErSSO RMStore helper", v14, 2u);
      }

      v12 = +[DMCEnrollmentFlowController _createGeneralError];
      [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v12 canceled:0];
    }
  }

  else
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __84__DMCEnrollmentFlowController__linkESSOStore_rmAccountIdentifier_profileIdentifier___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "ErSSO cannot link store with error: %{public}@", &v8, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x277D85DE8];

    return [v6 _pollNextStep];
  }

  return result;
}

- (void)_restoreSetAsideProfiles
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__DMCEnrollmentFlowController__restoreSetAsideProfiles__block_invoke;
    v11[3] = &unk_278EE3550;
    v11[4] = self;
    [v5 restoreSetAsideCloudConfigAndProfilesWithCompletionHandler:v11];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v9 = NSStringFromSelector(sel_restoreSetAsideCloudConfigAndProfilesWithCompletionHandler_);
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__DMCEnrollmentFlowController__restoreSetAsideProfiles__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "Failed to restore set aside profiles with error: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) _pollNextStep];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCloudConfigWithEnrollmentType:(unint64_t)a3 isReturnToService:(BOOL)a4
{
  v4 = a4;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke;
  v24[3] = &unk_278EE3A48;
  v24[4] = self;
  v25 = a4;
  v6 = MEMORY[0x24C1BD5A0](v24, a2, a3);
  if (v4 && (-[DMCEnrollmentFlowController obliterationShelter](self, "obliterationShelter"), v7 = objc_claimAutoreleasedReturnValue(), [v7 cloudConfigurationDetails], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "Device has local Cloud Config profile from Return to Service, restoring...", buf, 2u);
    }

    (v6)[2](v6, v8, 0);
  }

  else
  {
    v8 = [MEMORY[0x277D24640] sharedConfiguration];
    [v8 refreshDetailsFromDisk];
    v10 = [v8 details];
    if (v10)
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Cloud Configuration is available locally, returning...", buf, 2u);
      }

      (v6)[2](v6, v10, 0);
    }

    else
    {
      v12 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v13 = [v12 activationRecordIndicatesCloudConfigurationIsAvailable];

      if (v13)
      {
        v14 = *DMCLogObjects();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_DEFAULT, "Activation record indicates cloud configuration is available, will fetch...", buf, 2u);
        }

        v15 = [(DMCEnrollmentFlowController *)self presenter];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [(DMCEnrollmentFlowController *)self presenter];
          [v17 showFetchingCloudConfigurationScene];
        }

        if ([MEMORY[0x277D03500] shouldSimulateDEPCommunication])
        {
          v18 = dispatch_time(0, 1000000000);
          v19 = dispatch_get_global_queue(21, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke_155;
          block[3] = &unk_278EE3A70;
          v22 = v6;
          dispatch_after(v18, v19, block);
        }

        else
        {
          v20 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
          [v20 fetchCloudConfigWithCompletionHandler:v6];
        }
      }

      else
      {
        v6[2](v6, 0, 0);
      }
    }
  }
}

void __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 copy];
    [*(a1 + 32) setCloudConfig:v6];

    v7 = *(a1 + 32);
LABEL_3:
    [v7 _pollNextStep];
    goto LABEL_9;
  }

  if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_3;
    }

    v8 = v5;
    v9 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = v5 == 0;
    v8 = v5;
  }

  [v7 _flowTerminatedWithError:v8 canceled:v9];
LABEL_9:
}

void __85__DMCEnrollmentFlowController__fetchCloudConfigWithEnrollmentType_isReturnToService___block_invoke_155(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D03500] simulatedCloudConfigProfile];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)_analyzeCloudConfig:(id)a3 enrollmentType:(unint64_t)a4 isDoingReturnToService:(BOOL)a5 obliterationShelter:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (!v7)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_9;
  }

  if (([v11 isSupervised] & 1) == 0)
  {
    v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03090]];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "Supervision state has changed, continue as non-RTS flow.", buf, 2u);
      }

      [(DMCEnrollmentFlowController *)self setIsDoingReturnToService:0];
      [v12 clear];
      goto LABEL_7;
    }
  }

  v16 = 1;
LABEL_9:
  v17 = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v18 = [v17 enrollmentFlowControllerIsDoingMigration:self];

  v19 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03088]];
  v20 = [v19 BOOLValue];

  [(DMCEnrollmentFlowController *)self setCloudConfigIndicatesRapidReturnToService:v20];
  if ((v18 & 1) == 0 && !v20)
  {
    goto LABEL_18;
  }

  v21 = [(DMCEnrollmentFlowController *)self loggingSupport];
  [v21 enableDebugLoggingForAppPreservation];

  if (!v20)
  {
    goto LABEL_18;
  }

  v22 = *DMCLogObjects();
  if (!v18)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_DEFAULT, "Device is doing Rapid Return to Service", buf, 2u);
    }

LABEL_18:
    v24 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03060]];
    v23 = v24;
    if (v24)
    {
      if (v18)
      {
        v25 = *DMCLogObjects();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_ERROR, "ORGO enrollment during MDM Migration is not supported", buf, 2u);
        }

        v26 = +[DMCEnrollmentFlowController _createInvalidCloudConfigError];
        [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v26 canceled:0];
      }

      else
      {
        v31 = MEMORY[0x277CBEBC0];
        v32 = [v24 objectForKeyedSubscript:*MEMORY[0x277D03068]];
        v26 = [v31 URLWithString:v32];

        v33 = [v23 objectForKeyedSubscript:*MEMORY[0x277D03058]];
        v34 = certificatesFromDERCertificateDataArray();
        if (v26)
        {
          [(DMCEnrollmentFlowController *)self setAnchorCertificateRefs:v34];
          [(DMCEnrollmentFlowController *)self setServiceURL:v26];
          [(DMCEnrollmentFlowController *)self setEnrollmentType:1];
          v35 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03120]];
          [(DMCEnrollmentFlowController *)self setIsRenewalFlow:v35 != 0];

          v36 = [(DMCEnrollmentFlowController *)self _ORGO_commonSteps];
          [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v36];

          [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
        }

        else
        {
          v45 = +[DMCEnrollmentFlowController _createInvalidCloudConfigError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v45 canceled:0];
        }
      }

      goto LABEL_47;
    }

    v57 = v12;
    v56 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03010]];
    v55 = certificatesFromDERCertificateDataArray();
    [(DMCEnrollmentFlowController *)self setAnchorCertificateRefs:?];
    v27 = MEMORY[0x277CBEBC0];
    v28 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03048]];
    v29 = [v27 URLWithString:v28];

    if ([(DMCEnrollmentFlowController *)self _canSkipMDMEnrollmentWithEnrollmentType:a4])
    {
      v30 = *DMCLogObjects();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v30, OS_LOG_TYPE_DEFAULT, "The MDM enrollment is done already! Fast forward to AwaitDeviceConfiguration", buf, 2u);
      }

      goto LABEL_34;
    }

    if (v29)
    {
      if (v16)
      {
        v37 = [v57 mdmProfileData];

        if (!v37)
        {
          v53 = *DMCLogObjects();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247E39000, v53, OS_LOG_TYPE_ERROR, "Return to Service: Does not support webURL!", buf, 2u);
          }

          v54 = +[DMCEnrollmentFlowController _createUnsupportedFeatureError];
          [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v54 canceled:0];

          v26 = v56;
          goto LABEL_42;
        }
      }

      v38 = *DMCLogObjects();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v38, OS_LOG_TYPE_DEFAULT, "Cloud config has Web URL", buf, 2u);
      }

      [(DMCEnrollmentFlowController *)self setServiceURL:v29];
      [(DMCEnrollmentFlowController *)self setEnrollmentMethod:6];
      v39 = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_webURL_steps];
      [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v39];

LABEL_34:
      v40 = 1;
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v46 = MEMORY[0x277CBEBC0];
    v47 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03040]];
    v48 = [v46 URLWithString:v47];

    [(DMCEnrollmentFlowController *)self setServiceURL:v48];
    [(DMCEnrollmentFlowController *)self setEnrollmentMethod:3];
    v49 = *DMCLogObjects();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v48)
    {
      if (v50)
      {
        *buf = 0;
        v51 = "Cloud config has traditional configuration URL.";
LABEL_55:
        _os_log_impl(&dword_247E39000, v49, OS_LOG_TYPE_DEFAULT, v51, buf, 2u);
      }
    }

    else
    {
      if (!v16)
      {
        if (v50)
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v49, OS_LOG_TYPE_DEFAULT, "Cloud config doesn't require an enrollment.", buf, 2u);
        }

        v40 = 0;
LABEL_57:

        if (!v20)
        {
LABEL_36:
          if (v40)
          {
            v44 = [(DMCEnrollmentFlowController *)self _ADE_postEnrollmentSteps];
            [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v44];

            if (!v18)
            {
              goto LABEL_39;
            }
          }

          else if (!v18)
          {
LABEL_39:
            v26 = v56;
            if (v20)
            {
              v43 = [(DMCEnrollmentFlowController *)self _ADE_RRTS_snapshotSteps];
              [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v43];
            }

            [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_42:

            v12 = v57;
LABEL_47:

            goto LABEL_48;
          }

          v42 = [(DMCEnrollmentFlowController *)self _ADE_migration_cleanupSteps];
          [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v42];

          goto LABEL_39;
        }

LABEL_35:
        v41 = [(DMCEnrollmentFlowController *)self _ADE_bootstrapTokenSteps];
        [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v41];

        goto LABEL_36;
      }

      if (v50)
      {
        *buf = 0;
        v51 = "Cloud config has no configuration URL. But we are doing Return to Service!";
        goto LABEL_55;
      }
    }

    v52 = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_legacy_steps];
    [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v52];

    v40 = 1;
    goto LABEL_57;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_ERROR, "Rapid Return to Service during MDM Migration is not supported", buf, 2u);
  }

  v23 = +[DMCEnrollmentFlowController _createInvalidCloudConfigError];
  [(DMCEnrollmentFlowController *)self _flowTerminatedWithError:v23 canceled:0];
LABEL_48:
}

- (void)_storeCloudConfig:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke;
    v7[3] = &unk_278EE3A98;
    v7[4] = self;
    v8 = v4;
    [v5 storeCloudConfig:v8 completionHandler:v7];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "No cloud config to store. Skipping...", buf, 2u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke_2;
  v8[3] = &unk_278EE34B0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 queueBlock:v8];
}

uint64_t __49__DMCEnrollmentFlowController__storeCloudConfig___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_DEFAULT, "Failed to store cloud config. Error: %{public}@", &v12, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = [*(a1 + 40) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 40) delegate];
      [v8 enrollmentFlowController:*(a1 + 40) didReceiveCloudConfiguration:*(a1 + 48)];
    }

    v9 = [*(a1 + 40) migrationDelegate];
    [v9 enrollmentFlowController:*(a1 + 40) didReceiveCloudConfiguration:*(a1 + 48)];

    v10 = *(a1 + 40);
    v11 = *MEMORY[0x277D85DE8];

    return [v10 _pollNextStep];
  }

  return result;
}

- (void)_waitForDeviceConfiguration
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v13 = NSStringFromSelector(sel_isDeviceConfigured);
      *buf = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v17 = NSStringFromSelector(sel_awaitDeviceConfiguredWithCompletionHandler_);
      *buf = 138543618;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

LABEL_9:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_16:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v8 = [v7 isDeviceConfigured];

  if (!v8)
  {
    v18 = [(DMCEnrollmentFlowController *)self presenter];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(DMCEnrollmentFlowController *)self presenter];
      [v20 showAwaitingDeviceConfigurationScene];
    }

    objc_initWeak(buf, self);
    v21 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke;
    v23[3] = &unk_278EE38B8;
    objc_copyWeak(&v24, buf);
    [v21 awaitDeviceConfiguredWithCompletionHandler:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
    goto LABEL_16;
  }

  v9 = *MEMORY[0x277D85DE8];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workerQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke_2;
    v4[3] = &unk_278EE3120;
    v4[4] = v2;
    [v3 queueBlock:v4];
  }
}

uint64_t __58__DMCEnrollmentFlowController__waitForDeviceConfiguration__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 43)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _waitForDeviceConfiguration]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  result = [*(a1 + 32) _pollNextStep];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_askForMDMUsernameAndCredentialWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D035B8]];
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke;
  v15 = &unk_278EE3AC0;
  objc_copyWeak(&v16, &location);
  v8 = MEMORY[0x24C1BD5A0](&v12);
  v9 = [(DMCEnrollmentFlowController *)self presenter:v12];
  v10 = objc_opt_respondsToSelector();

  v11 = [(DMCEnrollmentFlowController *)self presenter];
  if (v10)
  {
    [v11 requestMDMUsernameAndPasswordWithErrorMessage:v7 completionHandler:v8];
  }

  else
  {
    [v11 requestMDMUsernameAndPasswordWithCompletionHandler:v8];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke_2;
    v12[3] = &unk_278EE32D0;
    v12[4] = v10;
    v15 = a4;
    v13 = v7;
    v14 = v8;
    [v11 queueBlock:v12];
  }
}

uint64_t __72__DMCEnrollmentFlowController__askForMDMUsernameAndCredentialWithError___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 40)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCEnrollmentFlowController _askForMDMUsernameAndCredentialWithError:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  if (*(a1 + 56) == 1)
  {
    result = [*(a1 + 32) _flowTerminatedWithError:0 canceled:1];
  }

  else
  {
    [*(a1 + 32) setUsername:*(a1 + 40)];
    [*(a1 + 32) setPassword:*(a1 + 48)];
    result = [*(a1 + 32) _pollNextStep];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_fetchEnrollmentProfileFromServiceURL:(id)a3 username:(id)a4 password:(id)a5 machineInfo:(id)a6 anchorCertificateRefs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v17 = [(DMCEnrollmentFlowController *)self serviceDiscoveryHelper];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke;
  v18[3] = &unk_278EE3500;
  objc_copyWeak(&v19, &location);
  [v17 fetchEnrollmentProfileWithServiceURL:v12 username:v13 password:v14 authTokens:0 enrollmentMethod:3 machineInfo:v15 anchorCertificateRefs:v16 completionHandler:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workerQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke_2;
    v10[3] = &unk_278EE34B0;
    v10[4] = v8;
    v11 = v6;
    v12 = v5;
    [v9 queueBlock:v10];
  }
}

uint64_t __121__DMCEnrollmentFlowController__fetchEnrollmentProfileFromServiceURL_username_password_machineInfo_anchorCertificateRefs___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 41)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[DMCEnrollmentFlowController _fetchEnrollmentProfileFromServiceURL:username:password:machineInfo:anchorCertificateRefs:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v8, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277D033B8]];

    if (!v5 || (result = [*(a1 + 32) _handleSoftwareUpdateRequiredError:*(a1 + 40)], (result & 1) == 0) && (result = objc_msgSend(*(a1 + 32), "_handleNeedCredentialsError:", *(a1 + 40)), (result & 1) == 0))
    {
      result = [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];
    }
  }

  else
  {
    [*(a1 + 32) setProfileData:*(a1 + 48)];
    result = [*(a1 + 32) _pollNextStep];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_handleNeedCredentialsError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (([v5 isEqualToString:*MEMORY[0x277D033B8]] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [v4 code];

  if (v6 != 23003)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_9;
  }

  v7 = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
  v8 = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_legacy_additionalNativeAuth_steps];
  v9 = [v8 firstObject];
  v10 = [v7 indexOfObject:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(DMCEnrollmentFlowController *)self setCredentialsError:v4];
    v11 = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_legacy_additionalNativeAuth_steps];
    v12 = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{-[DMCEnrollmentFlowControllerBase nextStepIndex](self, "nextStepIndex"), objc_msgSend(v11, "count")}];
    [v12 insertObjects:v11 atIndexes:v13];
  }

  else
  {
    v15 = [(DMCEnrollmentFlowController *)self presenter];
    [v15 showEnrollmentFailure:v4];

    [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:v10];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  v14 = 1;
LABEL_9:

  return v14;
}

- (void)_fetchEnrollmentProfileFromWebURL:(id)a3 machineInfo:(id)a4 anchorCertificateRefs:(id)a5 isReturnToService:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke;
  v20[3] = &unk_278EE3AE8;
  objc_copyWeak(&v21, &location);
  v13 = MEMORY[0x24C1BD5A0](v20);
  if (v6 && (-[DMCEnrollmentFlowController obliterationShelter](self, "obliterationShelter"), v14 = objc_claimAutoreleasedReturnValue(), [v14 mdmProfileData], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_DEFAULT, "Return to Service: Has local MDM profile.", v19, 2u);
    }

    v17 = [(DMCEnrollmentFlowController *)self obliterationShelter];
    v18 = [v17 mdmProfileData];
    (v13)[2](v13, v18, 0, 0);
  }

  else
  {
    v17 = [(DMCEnrollmentFlowController *)self presenter];
    [v17 fetchEnrollmentProfileWithWebAuthURL:v10 machineInfo:v11 anchorCertificateRefs:v12 completionHandler:v13];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke_2;
    v12[3] = &unk_278EE32D0;
    v12[4] = v10;
    v13 = v8;
    v15 = a3;
    v14 = v7;
    [v11 queueBlock:v12];
  }
}

uint64_t __117__DMCEnrollmentFlowController__fetchEnrollmentProfileFromWebURL_machineInfo_anchorCertificateRefs_isReturnToService___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 42)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCEnrollmentFlowController _fetchEnrollmentProfileFromWebURL:machineInfo:anchorCertificateRefs:isReturnToService:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  result = [*(a1 + 32) _handleSoftwareUpdateRequiredError:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if ((*(a1 + 56) & 1) != 0 || v4)
    {
      result = [*(a1 + 32) _flowTerminatedWithError:v4 canceled:?];
    }

    else
    {
      [*(a1 + 32) setProfileData:*(a1 + 48)];
      result = [*(a1 + 32) _pollNextStep];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_handleSoftwareUpdateRequiredError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277D033B8]];
  if (v6)
  {
    v7 = [v4 code];

    if (v7 != 23006)
    {
      LOBYTE(v6) = 0;
      goto LABEL_6;
    }

    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D035B0]];
    [(DMCEnrollmentFlowController *)self setSoftwareUpdateInfo:v9];

    v5 = [(DMCEnrollmentFlowController *)self _ADE_deviceEnrollment_softwareUpdate_steps];
    v10 = [(DMCEnrollmentFlowControllerBase *)self stepQueue];
    v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{-[DMCEnrollmentFlowControllerBase nextStepIndex](self, "nextStepIndex"), objc_msgSend(v5, "count")}];
    [v10 insertObjects:v5 atIndexes:v11];

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

LABEL_6:
  return v6;
}

- (void)_ensureWiFiConnectionWithWiFiProfile:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke;
  v13[3] = &unk_278EE3B38;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v5 = MEMORY[0x24C1BD5A0](v13);
  if (v4)
  {
    v6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_172;
    v10[3] = &unk_278EE3B88;
    objc_copyWeak(&v12, &location);
    v11 = v5;
    LOBYTE(v8) = 0;
    [v6 installEnrollmentProfile:v4 devicePasscode:0 devicePasscodeContext:0 passcodeContextExtractable:0 personaID:0 rmAccountIdentifier:0 isESSO:v8 essoAppITunesStoreID:0 managedProfileIdentifiers:0 installationSource:0 completionHandler:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "WiFi profile is not available.", buf, 2u);
    }

    v5[2](v5);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) presenter];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) presenter];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_171;
    v11[3] = &unk_278EE3B10;
    objc_copyWeak(&v12, (a1 + 40));
    [v4 ensureNetworkConnectionWithCompletionHandler:v11];

    objc_destroyWeak(&v12);
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 presenter];
      v9 = NSStringFromSelector(sel_ensureNetworkConnectionWithCompletionHandler_);
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _pollNextStep];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7 afterDelay:1.0];
  }
}

uint64_t __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 45)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[DMCEnrollmentFlowController _ensureWiFiConnectionWithWiFiProfile:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    result = [v3 _flowTerminatedWithError:v4 canceled:0];
  }

  else
  {
    result = [v3 _pollNextStep];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_172(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained workerQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2_173;
    v12[3] = &unk_278EE3B60;
    v17 = a3;
    v13 = v8;
    v14 = v10;
    v15 = v7;
    v16 = *(a1 + 32);
    [v11 queueBlock:v12];
  }
}

uint64_t __68__DMCEnrollmentFlowController__ensureWiFiConnectionWithWiFiProfile___block_invoke_2_173(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v16 = 138543362;
      v17 = v3;
      v4 = "Failed to install WiFi profile: %{public}@";
      v5 = v2;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 12;
LABEL_7:
      _os_log_impl(&dword_247E39000, v5, v6, v4, &v16, v7);
    }
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = *DMCLogObjects();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == 1)
    {
      if (v10)
      {
        LOWORD(v16) = 0;
        v4 = "WiFi profile installation canceled";
        v5 = v9;
        v6 = OS_LOG_TYPE_DEFAULT;
        v7 = 2;
        goto LABEL_7;
      }
    }

    else
    {
      if (v10)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "WiFi profile installed", &v16, 2u);
      }

      [*(a1 + 40) setWifiProfileIdentifier:*(a1 + 48)];
      v11 = [*(a1 + 40) dirtyState];
      [v11 addDirtyProfileIdentifier:*(a1 + 48)];

      v12 = *(a1 + 40);
      v13 = [v12 dirtyState];
      [v12 _writeDirtyStateToDisk:v13];
    }
  }

  result = (*(*(a1 + 56) + 16))();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_restoreLanguage:(id)a3 locale:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DMCEnrollmentFlowController *)self presenter];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [(DMCEnrollmentFlowController *)self presenter];
      v14 = NSStringFromSelector(sel_updateLanguage_locale_completionHandler_);
      *location = 138543618;
      *&location[4] = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", location, 0x16u);
    }

    goto LABEL_10;
  }

  if (![v6 length] || !objc_msgSend(v7, "length"))
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Not able to set language & locale", location, 2u);
    }

LABEL_10:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    goto LABEL_11;
  }

  objc_initWeak(location, self);
  v10 = [(DMCEnrollmentFlowController *)self presenter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke;
  v17[3] = &unk_278EE3B10;
  objc_copyWeak(&v18, location);
  [v10 updateLanguage:v6 locale:v7 completionHandler:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

void __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7];
  }
}

uint64_t __55__DMCEnrollmentFlowController__restoreLanguage_locale___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 46)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[DMCEnrollmentFlowController _restoreLanguage:locale:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to update language & locale due to error: %{public}@", &v7, 0xCu);
    }
  }

  result = [*(a1 + 32) _pollNextStep];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_ensureDeviceActivation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DMCEnrollmentFlowController *)self presenter];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    objc_initWeak(location, self);
    v5 = [(DMCEnrollmentFlowController *)self presenter];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke;
    v11[3] = &unk_278EE3B10;
    objc_copyWeak(&v12, location);
    [v5 ensureActivationWithCompletionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [(DMCEnrollmentFlowController *)self presenter];
      v9 = NSStringFromSelector(sel_ensureActivationWithCompletionHandler_);
      *location = 138543618;
      *&location[4] = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", location, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7];
  }
}

uint64_t __54__DMCEnrollmentFlowController__ensureDeviceActivation__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 48)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[DMCEnrollmentFlowController _ensureDeviceActivation]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v7, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    result = [v3 _flowTerminatedWithError:v4 canceled:0];
  }

  else
  {
    result = [v3 _pollNextStep];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_promptForSoftwareUpdateWithSoftwareUpdateInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DMCEnrollmentFlowController *)self presenter];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke;
  v6[3] = &unk_278EE3B10;
  objc_copyWeak(&v7, &location);
  [v5 requestSoftwareUpdateWithInfoDictionary:v4 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke_2;
    v7[3] = &unk_278EE3528;
    v7[4] = v5;
    v8 = v3;
    [v6 queueBlock:v7];
  }
}

uint64_t __78__DMCEnrollmentFlowController__promptForSoftwareUpdateWithSoftwareUpdateInfo___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 44)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[DMCEnrollmentFlowController _promptForSoftwareUpdateWithSoftwareUpdateInfo:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v8, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "Failed to trigger software update due to error: %{public}@", &v8, 0xCu);
    }

    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  result = [*(a1 + 32) _flowTerminatedWithError:v5 canceled:v5 == 0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateCloudConfigWithRMAccountIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [v7 updateCloudConfigurationWithRMAccountIdentifier:v4];
  }

  else
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v11 = NSStringFromSelector(sel_updateCloudConfigurationWithRMAccountIdentifier_);
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", &v13, 0x16u);
    }
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_initiateDEPPushTokenSync
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke;
    v11[3] = &unk_278EE3550;
    v11[4] = self;
    [v5 initiateDEPPushTokenSyncWithCompletionHandler:v11];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v9 = NSStringFromSelector(sel_initiateDEPPushTokenSyncWithCompletionHandler_);
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __56__DMCEnrollmentFlowController__initiateDEPPushTokenSync__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to initiate DEP push token sync with error: %{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_processPotentialMigrationIfNeededWithEnrollmentType:(unint64_t)a3 cloudConfig:(id)a4
{
  v6 = a4;
  if (a3 == 9 && (-[DMCEnrollmentFlowController migrationDelegate](self, "migrationDelegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 enrollmentFlowControllerIsDoingMigration:self], v7, !v8) && +[DMCMigrationHelper isMigrationSupportedWithExistingCloudConfig:outReason:](DMCMigrationHelper, "isMigrationSupportedWithExistingCloudConfig:outReason:", v6, 0))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke;
    v9[3] = &unk_278EE3BD8;
    v9[4] = self;
    [DMCMigrationHelper makeEndMigrationRequestIfNeededWithCloudConfig:v6 success:1 completionHandler:v9];
  }

  else
  {
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workerQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_2;
  v10[3] = &unk_278EE34B0;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v7 queueBlock:v10];
}

void __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *DMCLogObjects();
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v4 = *(a1 + 32);
    *buf = 138543362;
    v20 = v4;
    v5 = "Failed to make end migration request with error: %{public}@";
    v6 = v3;
    v7 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 40);
    *buf = 138543362;
    v20 = v8;
    v5 = "End Migration request came back with response: %{public}@";
    v6 = v3;
    v7 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_247E39000, v6, v7, v5, buf, 0xCu);
LABEL_7:
  v9 = [*(a1 + 48) managedConfigurationHelper];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [*(a1 + 48) managedConfigurationHelper];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_185;
    v18[3] = &unk_278EE3BB0;
    v18[4] = *(a1 + 48);
    [v11 evaluateMigrationStatusWithPollFromServer:0 completionHandler:v18];
  }

  else
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = v12;
      v15 = [v13 managedConfigurationHelper];
      v16 = NSStringFromSelector(sel_evaluateMigrationStatusWithPollFromServer_completionHandler_);
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [*(a1 + 48) _pollNextStep];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __96__DMCEnrollmentFlowController__processPotentialMigrationIfNeededWithEnrollmentType_cloudConfig___block_invoke_185(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "evaluateMigrationStatusWithPollFromServer came back with error: %{public}@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) _pollNextStep];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_awaitDDMAppConfigurationWithProfileIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v7 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke;
      v16[3] = &unk_278EE3550;
      v16[4] = self;
      [v9 waitForDDMAppsToBeRegisteredForMDMProfile:v5 completionHandler:v16];
    }

    else
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        v13 = NSStringFromSelector(sel_waitForDDMAppsToBeRegisteredForMDMProfile_completionHandler_);
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
      }

      [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    }

    goto LABEL_10;
  }

  v6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v5 = [v6 installedMDMProfileIdentifier];

  if (v5)
  {
    goto LABEL_4;
  }

  v15 = *DMCLogObjects();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Couldn't find profile identifier. Continuing...", buf, 2u);
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
}

void __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __78__DMCEnrollmentFlowController__awaitDDMAppConfigurationWithProfileIdentifier___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to wait for DDM apps configuration with error: %{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_awaitApplicationInstallation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke;
    v11[3] = &unk_278EE3550;
    v11[4] = self;
    [v5 awaitPendingApplicationInstallationWithObserver:self completionHandler:v11];
  }

  else
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v9 = NSStringFromSelector(sel_awaitPendingApplicationInstallationWithObserver_completionHandler_);
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __60__DMCEnrollmentFlowController__awaitApplicationInstallation__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to wait for app installation with error: %{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_cleanupOrphanedAppsIfNeededIsDoingRRTS:(BOOL)a3
{
  v5 = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v6 = [v5 enrollmentFlowControllerIsDoingMigration:self];

  if ((v6 & 1) != 0 || a3)
  {
    v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke;
    v9[3] = &unk_278EE3550;
    v9[4] = self;
    [v8 cleanupOrphanedAppsWithCompletionHandler:v9];
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "Device is not doing migration nor Rapid Return to Service, continue...", buf, 2u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __71__DMCEnrollmentFlowController__cleanupOrphanedAppsIfNeededIsDoingRRTS___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to clean up orphaned apps with error: %{public}@", &v7, 0xCu);
    }
  }

  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "cleanupOrphanedAppsWithCompletionHandler done", &v7, 2u);
  }

  result = [*(a1 + 40) _pollNextStep];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_takeSnapshot
{
  v3 = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__DMCEnrollmentFlowController__takeSnapshot__block_invoke;
  v4[3] = &unk_278EE3120;
  v4[4] = self;
  [v3 queueBlock:v4 afterDelay:1.0];
}

void __44__DMCEnrollmentFlowController__takeSnapshot__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277D035E0];
  v4 = [v2 deleteSystemVolumeSnapshotWithName:*MEMORY[0x277D035E0]];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v5 captureSystemVolumeSnapshotWithName:v3];

    if (v6)
    {
      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v3;
        _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_DEFAULT, "Snapshot created with name: %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) _pollNextStep];
      v8 = *MEMORY[0x277D85DE8];
      return;
    }

    v9 = *(a1 + 32);
    v10 = +[DMCEnrollmentFlowController _createFailedToCaptureSnapshotError];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = +[DMCEnrollmentFlowController _createFailedToDeleteSnapshotError];
  }

  v12 = v10;
  [v9 _flowTerminatedWithError:? canceled:?];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createAndSyncBootstrapTokenWithDevicePasscode:(id)a3 devicePasscodeContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke;
    v16[3] = &unk_278EE3BB0;
    v16[4] = self;
    [v10 generateAndSyncBootstrapTokenWithPasscode:v6 passcodeContext:v7 completionHandler:v16];
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      v14 = NSStringFromSelector(sel_generateAndSyncBootstrapTokenWithPasscode_passcodeContext_completionHandler_);
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) workerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke_2;
  v9[3] = &unk_278EE31E0;
  v12 = a2;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 queueBlock:v9];
}

uint64_t __100__DMCEnrollmentFlowController__createAndSyncBootstrapTokenWithDevicePasscode_devicePasscodeContext___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v9 = *(a1 + 48);
    v10 = *DMCLogObjects();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (!v11)
      {
        goto LABEL_11;
      }

      *v14 = 0;
      v5 = "Generate and sync bootstrap token succeeded.";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_11;
      }

      *v14 = 0;
      v5 = "Bootstrap token exists already.";
    }

    v6 = v10;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_10;
  }

  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *v14 = 138543618;
    *&v14[4] = v3;
    *&v14[12] = 2048;
    *&v14[14] = v4;
    v5 = "Generate and sync bootstrap token failed with error: %{public}@. Token created: %ld";
    v6 = v2;
    v7 = OS_LOG_TYPE_ERROR;
    v8 = 22;
LABEL_10:
    _os_log_impl(&dword_247E39000, v6, v7, v5, v14, v8);
  }

LABEL_11:
  result = [*(a1 + 40) _pollNextStep];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __48__DMCEnrollmentFlowController__blockMDMCommands__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DMCEnrollmentFlowController__blockMDMCommands__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __48__DMCEnrollmentFlowController__blockMDMCommands__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to block MDM commands with error: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) setHasBlockedMDMCommands:1];
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_unblockMDMCommandsIfNeededHasBlocked:(BOOL)a3
{
  if (a3)
  {
    [(DMCEnrollmentFlowController *)self _unblockMDMCommands];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_enrollmentTypeAuthorizedBySDP:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 > 0xA || ((1 << a3) & 0x78F) != 0)
  {
    (*(v5 + 2))(v5, 0);
  }

  else
  {
    [MEMORY[0x277D03580] isAuthorizedForOperation:1 completion:v5];
  }
}

- (DMCEnrollmentFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DMCEnrollmentFlowMigrationDelegate)migrationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDelegate);

  return WeakRetained;
}

- (id)_ORGO_MAIDEnrollmentSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MAIDEnrollmentSteps_onceToken != -1)
  {
    dispatch_once(&_ORGO_MAIDEnrollmentSteps_onceToken, block);
  }

  return _ORGO_MAIDEnrollmentSteps_ret;
}

void __66__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) _permanentAuthSteps];
  v20[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v20[1] = v4;
  v5 = [*(a1 + 32) _signInMAIDSteps];
  v20[2] = v5;
  v20[3] = &unk_2859F9190;
  v20[4] = &unk_2859F91A8;
  v6 = [*(a1 + 32) _enrollmentSteps];
  v20[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [v2 copy];
  v14 = _ORGO_MAIDEnrollmentSteps_ret;
  _ORGO_MAIDEnrollmentSteps_ret = v13;

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_ORGO_MAIDEnrollmentSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MAIDEnrollmentSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ORGO_MAIDEnrollmentSteps_orgToken_onceToken, block);
  }

  return _ORGO_MAIDEnrollmentSteps_orgToken_ret;
}

void __75__DMCEnrollmentFlowController_Sequence___ORGO_MAIDEnrollmentSteps_orgToken__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) _permanentAuthSteps];
  v20[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v20[1] = v4;
  v5 = [*(a1 + 32) _enrollmentSteps];
  v20[2] = v5;
  v6 = [*(a1 + 32) _signInMAIDSteps];
  v20[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [v2 copy];
  v14 = _ORGO_MAIDEnrollmentSteps_orgToken_ret;
  _ORGO_MAIDEnrollmentSteps_orgToken_ret = v13;

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_ORGO_MACBuddy_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MACBuddy_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ORGO_MACBuddy_firstPartSteps_onceToken, block);
  }

  return _ORGO_MACBuddy_firstPartSteps_ret;
}

void __70__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_firstPartSteps__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) _permanentAuthSteps];
  v19[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v19[1] = v4;
  v5 = [*(a1 + 32) _enrollmentSteps];
  v19[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v2 copy];
  v13 = _ORGO_MACBuddy_firstPartSteps_ret;
  _ORGO_MACBuddy_firstPartSteps_ret = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_ORGO_MACBuddy_secondPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_secondPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ORGO_MACBuddy_secondPartSteps_onceToken != -1)
  {
    dispatch_once(&_ORGO_MACBuddy_secondPartSteps_onceToken, block);
  }

  return _ORGO_MACBuddy_secondPartSteps_ret;
}

void __71__DMCEnrollmentFlowController_Sequence___ORGO_MACBuddy_secondPartSteps__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19[0] = &unk_2859F9160;
  v3 = [*(a1 + 32) _silentAuthSteps];
  v19[1] = v3;
  v4 = [*(a1 + 32) _createRMAccountSteps];
  v19[2] = v4;
  v19[3] = &unk_2859F91C0;
  v5 = [*(a1 + 32) _signInMAIDSteps];
  v19[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v2 copy];
  v13 = _ORGO_MACBuddy_secondPartSteps_ret;
  _ORGO_MACBuddy_secondPartSteps_ret = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ABE_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DMCEnrollmentFlowController_Sequence___ADxE_ABE_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_firstPartSteps_onceToken, block);
  }

  return _ADxE_ABE_firstPartSteps_ret;
}

void __65__DMCEnrollmentFlowController_Sequence___ADxE_ABE_firstPartSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _ephemeralAuthSteps];
  v18[0] = v3;
  v4 = [*(a1 + 32) _MAID_fetchEnrollmentProfileSteps];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_ABE_firstPartSteps_ret;
  _ADxE_ABE_firstPartSteps_ret = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ABE_secondPartSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_secondPartSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_secondPartSteps_default_onceToken, block);
  }

  return _ADxE_ABE_secondPartSteps_default_ret;
}

void __74__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_default__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_secondPart_commonSteps_default];
  v17[0] = v3;
  v17[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_secondPartSteps_default_ret;
  _ADxE_ABE_secondPartSteps_default_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ABE_secondPartSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_secondPartSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_secondPartSteps_orgToken_onceToken, block);
  }

  return _ADxE_ABE_secondPartSteps_orgToken_ret;
}

void __75__DMCEnrollmentFlowController_Sequence___ADxE_ABE_secondPartSteps_orgToken__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_secondPart_commonSteps_orgToken];
  v17[0] = v3;
  v17[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_secondPartSteps_orgToken_ret;
  _ADxE_ABE_secondPartSteps_orgToken_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ABE_ESSO_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_ESSO_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_ESSO_firstPartSteps_onceToken, block);
  }

  return _ADxE_ABE_ESSO_firstPartSteps_ret;
}

void __70__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_firstPartSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_firstPart_commonSteps];
  v18[0] = v3;
  v4 = [*(a1 + 32) _ADxE_ABE_firstPartSteps];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_ABE_ESSO_firstPartSteps_ret;
  _ADxE_ABE_ESSO_firstPartSteps_ret = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ABE_ESSO_secondPartSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_ESSO_secondPartSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_ESSO_secondPartSteps_default_onceToken, block);
  }

  return _ADxE_ABE_ESSO_secondPartSteps_default_ret;
}

void __79__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_default__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_secondPart_commonSteps_default];
  v17[0] = v3;
  v17[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_ESSO_secondPartSteps_default_ret;
  _ADxE_ABE_ESSO_secondPartSteps_default_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ABE_ESSO_secondPartSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ABE_ESSO_secondPartSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_ABE_ESSO_secondPartSteps_orgToken_onceToken, block);
  }

  return _ADxE_ABE_ESSO_secondPartSteps_orgToken_ret;
}

void __80__DMCEnrollmentFlowController_Sequence___ADxE_ABE_ESSO_secondPartSteps_orgToken__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_secondPart_commonSteps_orgToken];
  v17[0] = v3;
  v17[1] = &unk_2859F9238;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADxE_ABE_ESSO_secondPartSteps_orgToken_ret;
  _ADxE_ABE_ESSO_secondPartSteps_orgToken_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_thirdParty_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_thirdParty_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_thirdParty_firstPartSteps_onceToken, block);
  }

  return _ADxE_thirdParty_firstPartSteps_ret;
}

void __72__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_firstPartSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _ADxE_thirdParty_fetchEnrollmentProfileSteps];
  v18[0] = v3;
  v18[1] = &unk_2859F9250;
  v4 = [*(a1 + 32) _ephemeralAuthSteps];
  v18[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_thirdParty_firstPartSteps_ret;
  _ADxE_thirdParty_firstPartSteps_ret = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_thirdParty_ESSO_firstPartSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_ESSO_firstPartSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_thirdParty_ESSO_firstPartSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_thirdParty_ESSO_firstPartSteps_onceToken, block);
  }

  return _ADxE_thirdParty_ESSO_firstPartSteps_ret;
}

void __77__DMCEnrollmentFlowController_Sequence___ADxE_thirdParty_ESSO_firstPartSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _ADxE_ESSO_firstPart_commonSteps];
  v18[0] = v3;
  v4 = [*(a1 + 32) _ADxE_thirdParty_firstPartSteps];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_thirdParty_ESSO_firstPartSteps_ret;
  _ADxE_thirdParty_ESSO_firstPartSteps_ret = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_secondPart_commonSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_secondPart_commonSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_secondPart_commonSteps_default_onceToken, block);
  }

  return _ADxE_secondPart_commonSteps_default_ret;
}

void __77__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_default__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(a1 + 32) _ADxE_consentAndCreatePersonaSteps];
  v21[0] = v3;
  v4 = [*(a1 + 32) _silentAuthSteps];
  v21[1] = v4;
  v5 = [*(a1 + 32) _signInMAIDSteps];
  v21[2] = v5;
  v6 = [*(a1 + 32) _enrollmentSteps];
  v21[3] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v21[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_secondPart_commonSteps_default_ret;
  _ADxE_secondPart_commonSteps_default_ret = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_secondPart_commonSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_secondPart_commonSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_secondPart_commonSteps_orgToken_onceToken, block);
  }

  return _ADxE_secondPart_commonSteps_orgToken_ret;
}

void __78__DMCEnrollmentFlowController_Sequence___ADxE_secondPart_commonSteps_orgToken__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(a1 + 32) _ADxE_consentAndCreatePersonaSteps];
  v21[0] = v3;
  v4 = [*(a1 + 32) _enrollmentSteps];
  v21[1] = v4;
  v5 = [*(a1 + 32) _silentAuthSteps];
  v21[2] = v5;
  v6 = [*(a1 + 32) _signInMAIDSteps];
  v21[3] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v21[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_secondPart_commonSteps_orgToken_ret;
  _ADxE_secondPart_commonSteps_orgToken_ret = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ESSO_firstPart_commonSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_firstPart_commonSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ESSO_firstPart_commonSteps_onceToken != -1)
  {
    dispatch_once(&_ADxE_ESSO_firstPart_commonSteps_onceToken, block);
  }

  return _ADxE_ESSO_firstPart_commonSteps_ret;
}

void __73__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_firstPart_commonSteps__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) _ADxE_consentAndCreatePersonaSteps];
  v18[0] = v3;
  v4 = [*(a1 + 32) _ADxE_ESSO_installAppSteps];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];
  v12 = _ADxE_ESSO_firstPart_commonSteps_ret;
  _ADxE_ESSO_firstPart_commonSteps_ret = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ESSO_secondPart_commonSteps_default
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_default__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ESSO_secondPart_commonSteps_default_onceToken != -1)
  {
    dispatch_once(&_ADxE_ESSO_secondPart_commonSteps_default_onceToken, block);
  }

  return _ADxE_ESSO_secondPart_commonSteps_default_ret;
}

void __82__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_default__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21[0] = &unk_2859F92B0;
  v3 = [*(a1 + 32) _silentAuthSteps];
  v21[1] = v3;
  v4 = [*(a1 + 32) _signInMAIDSteps];
  v21[2] = v4;
  v5 = [*(a1 + 32) _enrollmentSteps];
  v21[3] = v5;
  v6 = [*(a1 + 32) _ADxE_ESSO_postEnrollmentSteps];
  v21[4] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v21[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_ESSO_secondPart_commonSteps_default_ret;
  _ADxE_ESSO_secondPart_commonSteps_default_ret = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ADxE_ESSO_secondPart_commonSteps_orgToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_orgToken__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADxE_ESSO_secondPart_commonSteps_orgToken_onceToken != -1)
  {
    dispatch_once(&_ADxE_ESSO_secondPart_commonSteps_orgToken_onceToken, block);
  }

  return _ADxE_ESSO_secondPart_commonSteps_orgToken_ret;
}

void __83__DMCEnrollmentFlowController_Sequence___ADxE_ESSO_secondPart_commonSteps_orgToken__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21[0] = &unk_2859F92B0;
  v3 = [*(a1 + 32) _enrollmentSteps];
  v21[1] = v3;
  v4 = [*(a1 + 32) _ADxE_ESSO_postEnrollmentSteps];
  v21[2] = v4;
  v5 = [*(a1 + 32) _silentAuthSteps];
  v21[3] = v5;
  v6 = [*(a1 + 32) _signInMAIDSteps];
  v21[4] = v6;
  v7 = [*(a1 + 32) _ADxE_postEnrollmentSteps];
  v21[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v2 copy];
  v15 = _ADxE_ESSO_secondPart_commonSteps_orgToken_ret;
  _ADxE_ESSO_secondPart_commonSteps_orgToken_ret = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ADE_commonSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DMCEnrollmentFlowController_Sequence___ADE_commonSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_commonSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_commonSteps_onceToken, block);
  }

  return _ADE_commonSteps_ret;
}

void __57__DMCEnrollmentFlowController_Sequence___ADE_commonSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = &unk_2859F90D0;
  v17[1] = &unk_2859F9388;
  v17[2] = &unk_2859F91D8;
  v3 = [*(a1 + 32) _fetchAndAnalyzeCloudConfigSteps];
  v17[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_commonSteps_ret;
  _ADE_commonSteps_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADE_RTS_commonSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DMCEnrollmentFlowController_Sequence___ADE_RTS_commonSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_RTS_commonSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_RTS_commonSteps_onceToken, block);
  }

  return _ADE_RTS_commonSteps_ret;
}

void __61__DMCEnrollmentFlowController_Sequence___ADE_RTS_commonSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = &unk_2859F90D0;
  v17[1] = &unk_2859F93A0;
  v17[2] = &unk_2859F91D8;
  v17[3] = &unk_2859F93B8;
  v3 = [*(a1 + 32) _fetchAndAnalyzeCloudConfigSteps];
  v17[4] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_RTS_commonSteps_ret;
  _ADE_RTS_commonSteps_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADE_migration_cleanupSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DMCEnrollmentFlowController_Sequence___ADE_migration_cleanupSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_migration_cleanupSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_migration_cleanupSteps_onceToken, block);
  }

  return _ADE_migration_cleanupSteps_ret;
}

void __68__DMCEnrollmentFlowController_Sequence___ADE_migration_cleanupSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = &unk_2859F94A8;
  v3 = [*(a1 + 32) _ADE_cleanupOrphanedAppsSteps];
  v17[1] = v3;
  v17[2] = &unk_2859F94C0;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_migration_cleanupSteps_ret;
  _ADE_migration_cleanupSteps_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ADE_RRTS_snapshotSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DMCEnrollmentFlowController_Sequence___ADE_RRTS_snapshotSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ADE_RRTS_snapshotSteps_onceToken != -1)
  {
    dispatch_once(&_ADE_RRTS_snapshotSteps_onceToken, block);
  }

  return _ADE_RRTS_snapshotSteps_ret;
}

void __64__DMCEnrollmentFlowController_Sequence___ADE_RRTS_snapshotSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = &unk_2859F94A8;
  v3 = [*(a1 + 32) _ADE_cleanupOrphanedAppsSteps];
  v17[1] = v3;
  v17[2] = &unk_2859F94D8;
  v17[3] = &unk_2859F94F0;
  v17[4] = &unk_2859F94C0;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ADE_RRTS_snapshotSteps_ret;
  _ADE_RRTS_snapshotSteps_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_ephemeralAuthSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DMCEnrollmentFlowController_Sequence___ephemeralAuthSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_ephemeralAuthSteps_onceToken != -1)
  {
    dispatch_once(&_ephemeralAuthSteps_onceToken, block);
  }

  return _ephemeralAuthSteps_ret;
}

void __60__DMCEnrollmentFlowController_Sequence___ephemeralAuthSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = &unk_2859F9550;
  v3 = [*(a1 + 32) _createRMAccountSteps];
  v17[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _ephemeralAuthSteps_ret;
  _ephemeralAuthSteps_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_permanentAuthSteps
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DMCEnrollmentFlowController_Sequence___permanentAuthSteps__block_invoke;
  block[3] = &unk_278EE3120;
  block[4] = self;
  if (_permanentAuthSteps_onceToken != -1)
  {
    dispatch_once(&_permanentAuthSteps_onceToken, block);
  }

  return _permanentAuthSteps_ret;
}

void __60__DMCEnrollmentFlowController_Sequence___permanentAuthSteps__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = &unk_2859F9568;
  v3 = [*(a1 + 32) _createRMAccountSteps];
  v17[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObjectsFromArray:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v2 copy];
  v11 = _permanentAuthSteps_ret;
  _permanentAuthSteps_ret = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_stepsWithUI
{
  if (_stepsWithUI_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Sequence) _stepsWithUI];
  }

  v3 = _stepsWithUI_steps;

  return v3;
}

uint64_t __53__DMCEnrollmentFlowController_Sequence___stepsWithUI__block_invoke()
{
  _stepsWithUI_steps = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9CE8];

  return MEMORY[0x2821F96F8]();
}

- (id)_postEnrollmentSteps
{
  if (_postEnrollmentSteps_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Sequence) _postEnrollmentSteps];
  }

  v3 = _postEnrollmentSteps_steps;

  return v3;
}

uint64_t __61__DMCEnrollmentFlowController_Sequence___postEnrollmentSteps__block_invoke()
{
  _postEnrollmentSteps_steps = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9D00];

  return MEMORY[0x2821F96F8]();
}

- (id)_nameForStep:(unint64_t)a3
{
  if (a3 > 0x3A)
  {
    return @"PromptForUsername";
  }

  else
  {
    return off_278EE3C18[a3];
  }
}

- (id)_machineInfoWithEnrollmentType:(unint64_t)a3 enrollmentMethod:(unint64_t)a4 isDoingReturnToService:(BOOL)a5 isRapidReturnToService:(BOOL)a6
{
  v9 = a6 | ~a5;
  v10 = [(DMCEnrollmentFlowController *)self migrationDelegate];
  v11 = [v10 enrollmentFlowControllerIsDoingMigration:self];

  v12 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v13 = [v12 getMachineInfoForEnrollmentType:a3 enrollmentMethod:a4 canRequestSoftwareUpdate:v9 & (v11 ^ 1u)];

  return v13;
}

- (void)_addNotification
{
  v7 = [(DMCEnrollmentFlowController *)self presenter];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(DMCEnrollmentFlowController *)self presenter];
    v4 = [v3 notificationNameForApplicationWillTerminate];

    if (!v4)
    {
      return;
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__receivedApplicationWillTerminateNotification_ name:v4 object:0];

    v6 = v4;
  }

  else
  {
    v6 = v7;
  }
}

- (void)_receivedApplicationWillTerminateNotification:(id)a3
{
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "DMCEnrollmentFlowController: Settings app will be terminated!", v5, 2u);
  }

  [(DMCEnrollmentFlowController *)self terminateEnrollmentFlow];
}

- (id)_guardAgainstConflictingAccountsWithUsername:(id)a3 altDSID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [MEMORY[0x277CB8F48] defaultStore];
    v18 = 0;
    v8 = [v7 dmc_conflictingAccountsExistWithUsername:v5 error:&v18];
    v9 = v18;

    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ((v8 & 1) == 0)
  {
    if (![v6 length])
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    v10 = [MEMORY[0x277CB8F48] defaultStore];
    v17 = 0;
    v8 = [v10 dmc_conflictingAccountsExistWithAltDSID:v6 error:&v17];
    v9 = v17;
  }

LABEL_8:
  if (!v9)
  {
    if (v8)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D032F0];
      v14 = DMCErrorArray();
      v9 = [v12 DMCErrorWithDomain:v13 code:15007 descriptionArray:v14 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = *DMCLogObjects();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch accounts with error: %{public}@", buf, 0xCu);
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_updateCredentialForAccount:(id)a3 authTokens:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 dmc_enrollmentMethod];
  if ((v6 - 1) >= 2)
  {
    if (v6 != 5)
    {
      goto LABEL_6;
    }

    v7 = [MEMORY[0x277D24680] serializeTokens:v5];
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D245C8]];
  }

  v8 = v7;
  [v9 dmc_setBearerToken:v7];

LABEL_6:
}

- (BOOL)_appWithBundleIDExists:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = *DMCLogObjects();
    v7 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Failed to load record for app: %{public}@ with error: %{public}@. This could mean that the app doesn't exist on the device.", buf, 0x16u);
      v7 = 0;
    }
  }

  else
  {
    v7 = v4 != 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_appNameWithBundleID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Failed to load record for app: %{public}@ with error: %{public}@.", buf, 0x16u);
    }
  }

  v7 = [v4 localizedName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_fetchAppAttributesWithITunesItemID:(id)a3 completionHandler:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v7 = getAMSMediaTaskClass_softClass;
  v40 = getAMSMediaTaskClass_softClass;
  if (!getAMSMediaTaskClass_softClass)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __getAMSMediaTaskClass_block_invoke;
    v35 = &unk_278EE3E48;
    v36 = &v37;
    __getAMSMediaTaskClass_block_invoke(&v32);
    v7 = v38[3];
  }

  v8 = v7;
  _Block_object_dispose(&v37, 8);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v9 = getAMSBagClass_softClass;
  v40 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __getAMSBagClass_block_invoke;
    v35 = &unk_278EE3E48;
    v36 = &v37;
    __getAMSBagClass_block_invoke(&v32);
    v9 = v38[3];
  }

  v10 = v9;
  _Block_object_dispose(&v37, 8);
  v11 = [v7 bagSubProfile];
  v12 = [v7 bagSubProfileVersion];
  v13 = [v9 bagForProfile:v11 profileVersion:v12];

  v14 = [[v7 alloc] initWithType:0 clientIdentifier:@"com.apple.devicemanagementclient" clientVersion:@"1" bag:v13];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v15 = getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr;
  v40 = getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr;
  if (!getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __getAMSMediaTaskPlatformiPhoneSymbolLoc_block_invoke;
    v35 = &unk_278EE3E48;
    v36 = &v37;
    v16 = AppleMediaServicesLibrary();
    v17 = dlsym(v16, "AMSMediaTaskPlatformiPhone");
    *(v36[1] + 24) = v17;
    getAMSMediaTaskPlatformiPhoneSymbolLoc_ptr = *(v36[1] + 24);
    v15 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v15)
  {
    goto LABEL_12;
  }

  v18 = *v15;
  v42 = v18;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v19 = getAMSMediaTaskPlatformiPadSymbolLoc_ptr;
  v40 = getAMSMediaTaskPlatformiPadSymbolLoc_ptr;
  if (!getAMSMediaTaskPlatformiPadSymbolLoc_ptr)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __getAMSMediaTaskPlatformiPadSymbolLoc_block_invoke;
    v35 = &unk_278EE3E48;
    v36 = &v37;
    v20 = AppleMediaServicesLibrary();
    v21 = dlsym(v20, "AMSMediaTaskPlatformiPad");
    *(v36[1] + 24) = v21;
    getAMSMediaTaskPlatformiPadSymbolLoc_ptr = *(v36[1] + 24);
    v19 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v19)
  {
LABEL_12:
    [DMCEnrollmentFlowController(Utilities) _fetchAppAttributesWithITunesItemID:completionHandler:];
    __break(1u);
  }

  v43 = *v19;
  v22 = MEMORY[0x277CBEA60];
  v23 = v43;
  v24 = [v22 arrayWithObjects:&v42 count:2];

  [v14 setAdditionalPlatforms:v24];
  v25 = [v5 stringValue];
  v41 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  [v14 setItemIdentifiers:v26];

  [v14 setAdditionalQueryParams:&unk_2859F9EB0];
  v27 = [v14 perform];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __96__DMCEnrollmentFlowController_Utilities___fetchAppAttributesWithITunesItemID_completionHandler___block_invoke;
  v30[3] = &unk_278EE3DF8;
  v31 = v6;
  v28 = v6;
  [v27 resultWithCompletion:v30];

  v29 = *MEMORY[0x277D85DE8];
}

void __96__DMCEnrollmentFlowController_Utilities___fetchAppAttributesWithITunesItemID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Failed to get app attributes with error: %{public}@", &v12, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 responseDataItems];
    v8 = *(a1 + 32);
    v9 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 firstObject];
      (*(v8 + 16))(v8, v10, 0);
    }

    else
    {
      (*(v8 + 16))(v8, 0, 0);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validEnrollmentMode:(id)a3 enrollmentMethod:(unint64_t)a4
{
  v6 = a3;
  v7 = [(DMCEnrollmentFlowController *)self enrollmentType];
  if (v7 <= 3)
  {
    if ((v7 - 1) < 2)
    {
      if (a4 == 3)
      {
        v8 = MEMORY[0x277D247D8];
      }

      else
      {
        v8 = MEMORY[0x277D247E0];
      }

      goto LABEL_12;
    }

    if (v7 == 3)
    {
      v8 = MEMORY[0x277D247E8];
      goto LABEL_12;
    }

LABEL_14:
    v9 = v6 == 0;
    goto LABEL_13;
  }

  if (v7 == 4)
  {
    v8 = MEMORY[0x277D247D0];
    goto LABEL_12;
  }

  if (v7 != 5)
  {
    goto LABEL_14;
  }

  v8 = MEMORY[0x277D247C8];
LABEL_12:
  v9 = [v6 isEqualToString:*v8];
LABEL_13:

  return v9;
}

- (BOOL)_canSkipMDMEnrollmentWithEnrollmentType:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFF7) != 1)
  {
    return 0;
  }

  v4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    if ([v5 isDeviceSupervised])
    {
      v6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
      if (objc_opt_respondsToSelector())
      {
        v7 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
        v8 = [v7 isStoredProfileInstalled];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_writeDirtyStateToDisk:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 dictionary];
  v4 = MDMDirtyEnrollmentStateFilePath();
  if ([v3 count])
  {
    [v3 DMCWriteToBinaryFile:v4];
    DMCSetSkipBackupAttributeToItemAtPath();
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = 0;
      [v7 removeItemAtPath:v4 error:&v14];
      v8 = v14;

      if (v8)
      {
        v9 = *DMCLogObjects();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v16 = v8;
          _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Failed to remove dirty state file! Error: %{public}@", buf, 0xCu);
        }

        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v13 = v8;
        [v10 removeItemAtPath:v4 error:&v13];
        v11 = v13;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_readDirtyStateFromDisk
{
  v2 = MDMDirtyEnrollmentStateFilePath();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] DMCDictionaryFromFile:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_verifyPropertiesFromProfileData:(id)a3 enrollmentMethod:(unint64_t)a4 isRapidReturnToService:(BOOL)a5 isESSO:(BOOL)a6 essoAppITunesStoreID:(id)a7 enrollmentMode:(id)a8 managedAppleID:(id)a9 assignedManagedAppleID:(id)a10 serverCapabilities:(id)a11 error:(id *)a12
{
  v12 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v15 = a8;
  v16 = a11;
  if (![(DMCEnrollmentFlowController *)self _validEnrollmentMode:v15 enrollmentMethod:a4])
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      *buf = 138543874;
      v43 = v15;
      v44 = 2048;
      v45 = [(DMCEnrollmentFlowController *)self enrollmentType];
      v46 = 2048;
      v47 = a4;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_ERROR, "Enrollment mode in profile: %{public}@ does not match enrollment type %lu and method %lu", buf, 0x20u);
    }

    if (([MEMORY[0x277D03500] ignoreEnrollmentMode] & 1) == 0)
    {
      v31 = *DMCLogObjects();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v31, OS_LOG_TYPE_ERROR, "Enrollment profile has invalid EnrollmentMode key. Aborting...", buf, 2u);
      }

      if (!a12)
      {
        goto LABEL_27;
      }

      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277D032F0];
      v22 = DMCErrorArray();
      v23 = *MEMORY[0x277D032F8];
      v24 = v32;
      v25 = v33;
      v26 = 15017;
      goto LABEL_24;
    }
  }

  if (a9)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_ERROR, "Enrollment profile must not have the ManagedAppleID key. Aborting...", buf, 2u);
    }

    if (!a12)
    {
      goto LABEL_27;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = *MEMORY[0x277D032F8];
    v24 = v20;
    v25 = v21;
    v26 = 15018;
    goto LABEL_24;
  }

  v27 = a4 == 5 || a4 == 2;
  if (v27 && !a10)
  {
    v28 = *DMCLogObjects();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v28, OS_LOG_TYPE_ERROR, "3rd party enrollment profile doesn't have the AssignedManagedAppleID key. Aborting...", buf, 2u);
    }

    if (!a12)
    {
      goto LABEL_27;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = *MEMORY[0x277D032F8];
    v24 = v29;
    v25 = v30;
    v26 = 15013;
    goto LABEL_24;
  }

  if (!v12 || ([v16 containsObject:*MEMORY[0x277D24788]] & 1) != 0)
  {
    v36 = 1;
    goto LABEL_28;
  }

  v39 = *DMCLogObjects();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v39, OS_LOG_TYPE_ERROR, "Doing Rapid Return to Service but server does not support bootstrap token. Aborting...", buf, 2u);
  }

  if (a12)
  {
    v40 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = *MEMORY[0x277D032F8];
    v24 = v40;
    v25 = v41;
    v26 = 15036;
LABEL_24:
    v34 = [v24 DMCErrorWithDomain:v25 code:v26 descriptionArray:v22 errorType:{v23, 0}];

    if (v34)
    {
      v35 = v34;
      *a12 = v34;
    }
  }

LABEL_27:
  v36 = 0;
LABEL_28:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)_convertErrorToHumanReadableError:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DMCErrorArray();
  v6 = [(DMCEnrollmentFlowController *)self _trustedErrors];
  v7 = [v4 domain];
  v8 = [v6 objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 domain];
    v11 = [v6 objectForKeyedSubscript:v10];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "code")}];
    if ([v11 containsObject:v12])
    {

LABEL_6:
      v15 = [v4 localizedDescription];
      v26[0] = v15;
      v16 = [MEMORY[0x277CBEB68] null];
      v26[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

      goto LABEL_10;
    }

    [v4 domain];
    v13 = v25 = v5;
    v14 = [v6 objectForKeyedSubscript:v13];
    v24 = [v14 containsObject:&unk_2859F9658];

    v5 = v25;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = [(DMCEnrollmentFlowController *)self _translatedErrorStringForError:v4];
  if (v18)
  {
    v23 = 0;
    v19 = DMCUnformattedErrorArray();

    v5 = v19;
  }

  v17 = v5;
LABEL_10:
  v20 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D032F0] code:15022 descriptionArray:v17 underlyingError:v4 errorType:{*MEMORY[0x277D032F8], v23}];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_trustedErrors
{
  if (_trustedErrors_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Utilities) _trustedErrors];
  }

  v3 = _trustedErrors_dict;

  return v3;
}

void __56__DMCEnrollmentFlowController_Utilities___trustedErrors__block_invoke()
{
  v15[3] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v0 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  v13 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  if (!getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getAKAppleIDAuthenticationErrorDomainSymbolLoc_block_invoke;
    v9[3] = &unk_278EE3E48;
    v9[4] = &v10;
    __getAKAppleIDAuthenticationErrorDomainSymbolLoc_block_invoke(v9);
    v0 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v0)
  {
    [DMCEnrollmentFlowController(Utilities) _fetchAppAttributesWithITunesItemID:completionHandler:];
    __break(1u);
  }

  v14[0] = *v0;
  v1 = MEMORY[0x277CBEB98];
  v2 = v14[0];
  v3 = [v1 setWithArray:&unk_2859F9D18];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D032F0];
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9D30];
  v15[1] = v4;
  v14[2] = *MEMORY[0x277D033B8];
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9D48];
  v15[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v7 = _trustedErrors_dict;
  _trustedErrors_dict = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_errorTranslation
{
  if (_errorTranslation_onceToken != -1)
  {
    [DMCEnrollmentFlowController(Utilities) _errorTranslation];
  }

  v3 = _errorTranslation_dict;

  return v3;
}

void __59__DMCEnrollmentFlowController_Utilities___errorTranslation__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D032F0];
  v4[0] = &unk_2859F97F0;
  v4[1] = &unk_2859F9808;
  v5[0] = @"DMC_SERVER_RESPONSE_USER_UNAUTHORIZED";
  v5[1] = @"DEVICE_MISSING_APPLEACCOUNT_NEEDS_ERASE";
  v4[2] = &unk_2859F9820;
  v5[2] = @"DMC_SERVER_RESPONSE_UNEXPECTED_403_UI";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v7[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v2 = _errorTranslation_dict;
  _errorTranslation_dict = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (id)_translatedErrorStringForError:(id)a3
{
  v4 = a3;
  v5 = [(DMCEnrollmentFlowController *)self _errorTranslation];
  v6 = [v4 domain];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "code")}];
    v9 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_createGeneralError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15022 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createUnsupportedFeatureError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createEnrollmentNotAllowedDuringSDPError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15035 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingRMAccountError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15005 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingAppleAccountForUserEnrollmentError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15014 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createInvalidErSSODeclarationsError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15028 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingEnterpriseApplicationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15028 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createEnterpriseApplicationExistsErrorWithAppName:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D032F0];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:15030 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

+ (id)_createEnterpriseApplicationMissingEntitlementsError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15029 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingEnterpriseApplicationBundleIDError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15028 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createGeneralSignInError
{
  v2 = DMCErrorArray();
  v3 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D032F0] code:15032 descriptionArray:v2 errorType:{*MEMORY[0x277D032F8], 0}];

  return v3;
}

+ (id)_createInvalidCloudConfigError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15034 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createFailedToCaptureSnapshotError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15038 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createFailedToDeleteSnapshotError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15037 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createPasscodeRequiredError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15039 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createUpdateFromFactoryVersionRequiredError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15040 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

void __59__DMCEnrollmentFlowController_Utilities___blockAppInstalls__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 DMCVerboseDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "block app installs, enrollment flow controller, blocking end, error: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_unblockAppInstallsIfNecessaryWithCaller:(id)a3
{
  v4 = a3;
  if ([(DMCEnrollmentFlowController *)self enrollmentType]== 4 || [(DMCEnrollmentFlowController *)self enrollmentType]== 5)
  {
    [(DMCEnrollmentFlowController *)self _unblockAppInstallsWithCaller:v4];
  }
}

- (void)_unblockAppInstallsWithCaller:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "block app installs, unblocking begin (%{public}@)", buf, 0xCu);
  }

  v6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__DMCEnrollmentFlowController_Utilities___unblockAppInstallsWithCaller___block_invoke;
    v11[3] = &unk_278EE3550;
    v12 = v4;
    [v8 unblockAppInstallsWithCompletion:v11];
  }

  else
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "block app installs, enrollment flow controller, app unblocking not supported, ignoring", buf, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __72__DMCEnrollmentFlowController_Utilities___unblockAppInstallsWithCaller___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 DMCVerboseDescription];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "block app installs, unblocking end (%{public}@), error: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fetchBundleIDsWithiTunesItemID:(id)a3 debuggingAppIDs:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
  {
    v11 = [(DMCEnrollmentFlowController *)self _bundleIDsFromAppIDs:v9];
    v10[2](v10, v11, 0);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __108__DMCEnrollmentFlowController_Utilities___fetchBundleIDsWithiTunesItemID_debuggingAppIDs_completionHandler___block_invoke;
    v12[3] = &unk_278EE3E20;
    v14 = v10;
    v12[4] = self;
    v13 = v8;
    [(DMCEnrollmentFlowController *)self _fetchAppAttributesWithITunesItemID:v13 completionHandler:v12];
  }
}

void __108__DMCEnrollmentFlowController_Utilities___fetchBundleIDsWithiTunesItemID_debuggingAppIDs_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"attributes"];
    v8 = [v7 objectForKeyedSubscript:@"name"];

    v9 = [v6 objectForKeyedSubscript:@"attributes"];
    v10 = [v9 objectForKeyedSubscript:@"platformAttributes"];
    v11 = [v10 objectForKeyedSubscript:@"ios"];
    v12 = [v11 objectForKeyedSubscript:@"bundleId"];

    if (v12)
    {
      v25[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [*(a1 + 32) setEssoAppITunesStoreID:*(a1 + 40)];
    }

    else
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v6 objectForKeyedSubscript:@"attributes"];
        v17 = [v16 objectForKeyedSubscript:@"platformAttributes"];
        v18 = [v17 objectForKeyedSubscript:@"ios"];
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "App attributes dictionary does not contain bundleID: %{public}@", &v21, 0xCu);
      }

      v13 = 0;
    }

    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEBUG, "Found application with name: '%{public}@', bundle ID: %{public}@", &v21, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_bundleIDsFromAppIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 rangeOfString:{@".", v17}];
          v13 = [v10 substringFromIndex:v11 + v12];
          if (v13)
          {
            [v4 addObject:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)appInstallationStatusUpdatedForType:(id)a3 totalNumber:(unint64_t)a4 finishedNumber:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2048;
    v17 = a5;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEBUG, "DMCEnrollmentFlowContrller: App type: %@, %lu of %lu completed", &v14, 0x20u);
  }

  v10 = [(DMCEnrollmentFlowController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(DMCEnrollmentFlowController *)self delegate];
    [v12 enrollmentFlowController:self appInstallationStatusUpdatedForType:v8 totalNumber:a4 finishedNumber:a5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldDoReturnToService
{
  v2 = [(DMCEnrollmentFlowController *)self obliterationShelter];
  v3 = [v2 hasConfigFile];

  return v3;
}

- (void)_unblockMDMCommands
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Unblocking MDM commands...", buf, 2u);
  }

  v4 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DMCEnrollmentFlowController *)self managedConfigurationHelper];
    [v6 unblockMDMCommandsWithCompletionHandler:&__block_literal_global_190];
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "managedConfigurationHelper didn't implement the unblockMDMCommandsWithCompletionHandler method", v8, 2u);
    }
  }
}

void __61__DMCEnrollmentFlowController_Utilities___unblockMDMCommands__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *DMCLogObjects();
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      v4 = "Failed to unblock MDM commands with error: %{public}@";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_247E39000, v5, v6, v4, &v9, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v4 = "Unblocked MDM commands";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end