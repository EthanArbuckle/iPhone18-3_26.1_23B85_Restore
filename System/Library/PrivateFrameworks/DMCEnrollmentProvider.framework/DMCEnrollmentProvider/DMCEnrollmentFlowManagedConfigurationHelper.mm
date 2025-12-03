@interface DMCEnrollmentFlowManagedConfigurationHelper
+ (id)_createProfileInvalidError;
+ (id)_mdmProfileInfo;
+ (id)organizationNameFromProfile:(id)profile payload:(id)payload;
- (BOOL)_analyzeAppFetchingResult:(id)result terminationStates:(id)states checkManagementState:(BOOL)state checkInstallationState:(BOOL)installationState appType:(id)type;
- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailable;
- (BOOL)isAccountModificationAllowed;
- (BOOL)isDeviceConfigured;
- (BOOL)isDeviceMDMEnrolled;
- (BOOL)isDeviceSupervised;
- (BOOL)isLockdownModeEnabled;
- (BOOL)isMDMProfileADEProfile;
- (BOOL)isMDMProfileLocked;
- (BOOL)isStoredProfileInstalled;
- (BOOL)removeProfileAssociatedWithPersonaID:(id)d;
- (BOOL)validateESSOConfigurationProfile:(id)profile error:(id *)error;
- (DMCEnrollmentFlowAppInstallationObserver)appInstallationObserver;
- (DMCEnrollmentFlowProfileInstallationPresenter)presenter;
- (id)_fetchRequestForMDMv1Apps;
- (id)detailsFromMDMProfile:(id)profile error:(id *)error;
- (id)existingCloudConfigOnDisk;
- (id)extensionIDsFromESSOConfigurationProfile:(id)profile;
- (id)extensionIDsFromESSOProfileIdentifiers:(id)identifiers;
- (id)getMachineInfoForEnrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method canRequestSoftwareUpdate:(BOOL)update;
- (id)installedMDMProfileIdentifier;
- (unint64_t)currentEnrollmentType;
- (void)_awaitESSOConfigActivationWithExtensionIdentifierEnumerator:(id)enumerator completionHandler:(id)handler;
- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)_awaitManagedAppsInstallationWithCompletionHandler:(id)handler;
- (void)_awaitSystemDeletableAppsInstallationWithCompletionHandler:(id)handler;
- (void)_cloudConfigDidChange:(id)change;
- (void)_doAwaitSystemDeletableAppsCleanupWithError:(id)error;
- (void)_handlePasscodeRequestNeedsExtractablePasscode:(BOOL)passcode;
- (void)_handleUserInputRequest:(id)request;
- (void)_mdmV1AppsInstallationStateDidChange:(id)change;
- (void)_systemAppDeletableInstallationStateDidChange:(id)change;
- (void)awaitDeviceConfiguredWithCompletionHandler:(id)handler;
- (void)awaitPendingApplicationInstallationWithObserver:(id)observer completionHandler:(id)handler;
- (void)awaitStoredProfileInstallationWithCompletionHandler:(id)handler;
- (void)blockAppInstallsWithCompletion:(id)completion;
- (void)blockMDMCommandsWithCompletionHandler:(id)handler;
- (void)cleanupOrphanedAppsWithCompletionHandler:(id)handler;
- (void)disablePushWakeWithCompletionHandler:(id)handler;
- (void)enablePushWakeWithCompletionHandler:(id)handler;
- (void)evaluateMigrationStatusWithPollFromServer:(BOOL)server completionHandler:(id)handler;
- (void)fetchCloudConfigWithCompletionHandler:(id)handler;
- (void)generateAndSyncBootstrapTokenWithPasscode:(id)passcode passcodeContext:(id)context completionHandler:(id)handler;
- (void)initiateDEPPushTokenSyncWithCompletionHandler:(id)handler;
- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d rmAccountIdentifier:(id)identifier isESSO:(BOOL)o essoAppITunesStoreID:(id)self0 managedProfileIdentifiers:(id)self1 installationSource:(id)self2 completionHandler:(id)self3;
- (void)manageApplicationWithBundleID:(id)d iTunesItemID:(id)iD organization:(id)organization personaID:(id)personaID associatedDomains:(id)domains associatedDomainsEnableDirectDownloads:(id)downloads configuration:(id)configuration completionHandler:(id)self0;
- (void)markCloudConfigurationAsUICompletedWithCompletionHandler:(id)handler;
- (void)markStoredProfileAsInstalled;
- (void)preserveManagedAppsWithCompletionHandler:(id)handler;
- (void)profileConnection:(id)connection didFinishInstallationWithIdentifier:(id)identifier error:(id)error;
- (void)profileConnection:(id)connection didFinishPreflightWithError:(id)error;
- (void)profileConnectionDidRequestCurrentPasscode:(id)passcode;
- (void)profileConnectionDidRequestCurrentPasscodeContext:(id)context needsExtractablePasscode:(BOOL)passcode;
- (void)reauthenticationComplete;
- (void)removeApplicationWithBundleID:(id)d personaID:(id)iD completionHandler:(id)handler;
- (void)removeCloudConfigWithCompletionHandler:(id)handler;
- (void)removePendingCloudConfigWithCompletionHandler:(id)handler;
- (void)removeProfileWithIdentifier:(id)identifier async:(BOOL)async;
- (void)removeProtectedProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeSetAsideCloudConfigWithCompletionHandler:(id)handler;
- (void)requestEnrollmentFlowMonitorWithPersonaID:(id)d;
- (void)restoreSetAsideCloudConfigAndProfilesWithCompletionHandler:(id)handler;
- (void)stopEnrollmentFlowMonitor;
- (void)storeCloudConfig:(id)config completionHandler:(id)handler;
- (void)unassignFromDEPWithCompletionHandler:(id)handler;
- (void)unblockAppInstallsWithCompletion:(id)completion;
- (void)unblockMDMCommandsWithCompletionHandler:(id)handler;
- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)identifier;
- (void)waitForDDMAppsToBeRegisteredForMDMProfile:(id)profile completionHandler:(id)handler;
@end

@implementation DMCEnrollmentFlowManagedConfigurationHelper

- (BOOL)isDeviceMDMEnrolled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];
  v4 = installedMDMProfileIdentifier != 0;

  return v4;
}

- (BOOL)isDeviceSupervised
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isSupervised = [mEMORY[0x277D262A0] isSupervised];

  return isSupervised;
}

- (BOOL)isStoredProfileInstalled
{
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  isStoredProfileInstalled = [mEMORY[0x277D24640] isStoredProfileInstalled];

  return isStoredProfileInstalled;
}

- (BOOL)isAccountModificationAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAccountModificationAllowed = [mEMORY[0x277D262A0] isAccountModificationAllowed];

  return isAccountModificationAllowed;
}

- (BOOL)isLockdownModeEnabled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isLockdownModeEnabled = [mEMORY[0x277D262A0] isLockdownModeEnabled];

  return isLockdownModeEnabled;
}

- (unint64_t)currentEnrollmentType
{
  installedMDMProfileIdentifier = [(DMCEnrollmentFlowManagedConfigurationHelper *)self installedMDMProfileIdentifier];

  if (!installedMDMProfileIdentifier)
  {
    return 10;
  }

  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  if ([mEMORY[0x277D24640] isSupervised] && (objc_msgSend(mEMORY[0x277D24640], "enrollmentServerInfo"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMDMProfileADEProfile
{
  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  [mEMORY[0x277D24648] refreshDetailsFromDisk];
  managingProfileIdentifier = [mEMORY[0x277D24648] managingProfileIdentifier];

  if (managingProfileIdentifier)
  {
    LOBYTE(managingProfileIdentifier) = [mEMORY[0x277D24648] isADEProfile];
  }

  return managingProfileIdentifier;
}

- (id)installedMDMProfileIdentifier
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];

  return installedMDMProfileIdentifier;
}

- (id)getMachineInfoForEnrollmentType:(unint64_t)type enrollmentMethod:(unint64_t)method canRequestSoftwareUpdate:(BOOL)update
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (type <= 9)
  {
    if (((1 << type) & 0x188) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << type) & 0x206) != 0)
    {
      updateCopy = update;
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v12 = *MEMORY[0x277D24798];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:updateCopy];
      v13[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v5 = [mEMORY[0x277D262A0] getMachineInfoWithAdditionalInfo:v9];

LABEL_10:
      goto LABEL_11;
    }
  }

  if (method <= 6)
  {
    if (((1 << method) & 0x35) != 0)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      getReducedMachineInfo = [mEMORY[0x277D262A0] getReducedMachineInfo];
LABEL_9:
      v5 = getReducedMachineInfo;
      goto LABEL_10;
    }

LABEL_8:
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    getReducedMachineInfo = [mEMORY[0x277D262A0] getMachineInfo];
    goto LABEL_9;
  }

LABEL_11:

  return v5;
}

- (id)detailsFromMDMProfile:(id)profile error:(id *)error
{
  v5 = [MEMORY[0x277D26290] profileWithData:profile outError:?];
  if (v5)
  {
    v6 = [v5 payloadsWithClass:objc_opt_class()];
    firstObject = [v6 firstObject];

    if (firstObject)
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
      identifier = [v5 identifier];
      [v8 setObject:identifier forKeyedSubscript:*MEMORY[0x277D031F8]];

      managedAppleID = [firstObject managedAppleID];
      [v8 setObject:managedAppleID forKeyedSubscript:*MEMORY[0x277D031E8]];

      assignedManagedAppleID = [firstObject assignedManagedAppleID];
      [v8 setObject:assignedManagedAppleID forKeyedSubscript:*MEMORY[0x277D031D0]];

      friendlyName = [firstObject friendlyName];
      [v8 setObject:friendlyName forKeyedSubscript:*MEMORY[0x277D031E0]];

      v13 = [DMCEnrollmentFlowManagedConfigurationHelper organizationNameFromProfile:v5 payload:firstObject];
      [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D031F0]];

      enrollmentMode = [firstObject enrollmentMode];
      [v8 setObject:enrollmentMode forKeyedSubscript:*MEMORY[0x277D031D8]];

      serverCapabilities = [firstObject serverCapabilities];
      [v8 setObject:serverCapabilities forKeyedSubscript:*MEMORY[0x277D03208]];

      requiredAppIDForMDM = [firstObject requiredAppIDForMDM];
      [v8 setObject:requiredAppIDForMDM forKeyedSubscript:*MEMORY[0x277D03200]];

      v17 = [v8 copy];
LABEL_4:

LABEL_12:
      goto LABEL_13;
    }

    if (error)
    {
      v20 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
      v8 = v20;
      if (v20)
      {
        v21 = v20;
        v17 = 0;
        *error = v8;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_4;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  if (error)
  {
    v18 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
    firstObject = v18;
    if (v18)
    {
      v19 = v18;
      v17 = 0;
      *error = firstObject;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

+ (id)organizationNameFromProfile:(id)profile payload:(id)payload
{
  profileCopy = profile;
  payloadCopy = payload;
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  details = [mEMORY[0x277D24640] details];

  v9 = *MEMORY[0x277D030F0];
  v10 = [details objectForKeyedSubscript:*MEMORY[0x277D030F0]];

  if (v10)
  {
    organization2 = [details objectForKeyedSubscript:v9];
LABEL_8:
    serverURLString = organization2;
    goto LABEL_9;
  }

  organization = [payloadCopy organization];

  if (organization)
  {
    v13 = payloadCopy;
LABEL_7:
    organization2 = [v13 organization];
    goto LABEL_8;
  }

  organization3 = [profileCopy organization];

  if (organization3)
  {
    v13 = profileCopy;
    goto LABEL_7;
  }

  serverURLString = [payloadCopy serverURLString];

  if (serverURLString)
  {
    v17 = MEMORY[0x277CBEBC0];
    serverURLString2 = [payloadCopy serverURLString];
    v19 = [v17 URLWithString:serverURLString2];

    if (v19)
    {
      serverURLString = [v19 host];
    }

    else
    {
      serverURLString = 0;
    }
  }

LABEL_9:

  return serverURLString;
}

- (BOOL)isMDMProfileLocked
{
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  isMDMUnremovable = [mEMORY[0x277D24640] isMDMUnremovable];

  return isMDMUnremovable;
}

- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d rmAccountIdentifier:(id)identifier isESSO:(BOOL)o essoAppITunesStoreID:(id)self0 managedProfileIdentifiers:(id)self1 installationSource:(id)self2 completionHandler:(id)self3
{
  extractableCopy = extractable;
  profileCopy = profile;
  iDCopy = iD;
  handlerCopy = handler;
  sourceCopy = source;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  dCopy = d;
  contextCopy = context;
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setDevicePasscode:passcode];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setDevicePasscodeContext:contextCopy];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setIsExtractableContext:extractableCopy];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setInstallingProfileData:profileCopy];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setProfileInstallationCompletionHandler:handlerCopy];

  v25 = objc_opt_new();
  [v25 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D26420]];

  [v25 setObject:identifierCopy forKeyedSubscript:*MEMORY[0x277D26428]];
  [v25 setObject:identifiersCopy forKeyedSubscript:*MEMORY[0x277D263C8]];

  [v25 setObject:sourceCopy forKeyedSubscript:*MEMORY[0x277D263E0]];
  v26 = [MEMORY[0x277D26290] profileWithData:profileCopy outError:0];
  v27 = [v26 payloadsWithClass:objc_opt_class()];
  v28 = [v27 count];

  if (v28)
  {
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    isMDMUnremovable = [mEMORY[0x277D24640] isMDMUnremovable];

    mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
    details = [mEMORY[0x277D24640]2 details];
    v33 = [details objectForKeyedSubscript:*MEMORY[0x277D03038]];
    v34 = [v33 intValue] == 1;

    v35 = [MEMORY[0x277CCABB0] numberWithBool:isMDMUnremovable];
    [v25 setObject:v35 forKeyedSubscript:*MEMORY[0x277D263F8]];

    v36 = [MEMORY[0x277CCABB0] numberWithBool:v34];
    [v25 setObject:v36 forKeyedSubscript:*MEMORY[0x277D26400]];
  }

  if (o)
  {
    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26408]];
    [v25 setObject:iDCopy forKeyedSubscript:*MEMORY[0x277D263D8]];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v38 = [v25 copy];
  [mEMORY[0x277D262A0] installProfileData:profileCopy options:v38 interactionDelegate:self];
}

- (void)removeProfileWithIdentifier:(id)identifier async:(BOOL)async
{
  asyncCopy = async;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = identifierCopy;
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v7 = mEMORY[0x277D262A0];
    if (asyncCopy)
    {
      [mEMORY[0x277D262A0] removeProfileAsyncWithIdentifier:v8];
    }

    else
    {
      [mEMORY[0x277D262A0] removeProfileWithIdentifier:v8];
    }

    identifierCopy = v8;
  }
}

- (BOOL)removeProfileAssociatedWithPersonaID:(id)d
{
  v3 = MEMORY[0x277D24648];
  dCopy = d;
  sharedConfiguration = [v3 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v7 = [personaID isEqualToString:dCopy];

  if (v7)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
    managingProfileIdentifier = [mEMORY[0x277D24648] managingProfileIdentifier];
    [mEMORY[0x277D262A0] removeProfileWithIdentifier:managingProfileIdentifier];
  }

  return v7;
}

- (BOOL)validateESSOConfigurationProfile:(id)profile error:(id *)error
{
  v28[5] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v6 = MEMORY[0x277CBEB98];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v28[4] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  v8 = [v6 setWithArray:v7];

  v9 = [MEMORY[0x277D26290] profileWithData:profileCopy outError:error];
  v10 = v9;
  if (v9)
  {
    payloads = [v9 payloads];
    v12 = [payloads count];

    if (v12)
    {
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      payloads2 = [v10 payloads];
      v14 = [payloads2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(payloads2);
            }

            if (([v8 containsObject:objc_opt_class()] & 1) == 0)
            {
              if (error)
              {
                v21 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
                if (v21)
                {
                  v21 = v21;
                  *error = v21;
                }
              }

              goto LABEL_19;
            }
          }

          v15 = [payloads2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          v18 = 1;
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 1;
      }

      goto LABEL_22;
    }
  }

  if (error)
  {
    v19 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
    payloads2 = v19;
    if (v19)
    {
      v20 = v19;
      v18 = 0;
      *error = payloads2;
    }

    else
    {
LABEL_19:
      v18 = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v18 = 0;
LABEL_23:

  return v18;
}

- (id)extensionIDsFromESSOConfigurationProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D26290] profileWithData:profileCopy outError:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 payloadsWithClass:{objc_opt_class(), 0}];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        esso_extensionIdentifier = [*(*(&v14 + 1) + 8 * i) esso_extensionIdentifier];
        [v4 addObject:esso_extensionIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)extensionIDsFromESSOProfileIdentifiers:(id)identifiers
{
  v36 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = identifiersCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    *&v6 = 138543362;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        v12 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:v10];

        if (v12)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = [v12 payloadsWithClass:objc_opt_class()];
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                esso_extensionIdentifier = [*(*(&v24 + 1) + 8 * j) esso_extensionIdentifier];
                [v4 addObject:esso_extensionIdentifier];
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v15);
          }
        }

        else
        {
          v19 = *DMCLogObjects();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v33 = v10;
            _os_log_impl(&dword_247E7D000, v19, OS_LOG_TYPE_ERROR, "Missing ErSSO profile: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v7);
  }

  v20 = [v4 copy];

  return v20;
}

- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  objectEnumerator = [identifiers objectEnumerator];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _awaitESSOConfigActivationWithExtensionIdentifierEnumerator:objectEnumerator completionHandler:handlerCopy];
}

- (void)_awaitESSOConfigActivationWithExtensionIdentifierEnumerator:(id)enumerator completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__DMCEnrollmentFlowManagedConfigurationHelper__awaitESSOConfigActivationWithExtensionIdentifierEnumerator_completionHandler___block_invoke;
  block[3] = &unk_278EE73A8;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = enumeratorCopy;
  v9 = handlerCopy;
  v10 = enumeratorCopy;
  dispatch_async(v8, block);
}

void __125__DMCEnrollmentFlowManagedConfigurationHelper__awaitESSOConfigActivationWithExtensionIdentifierEnumerator_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextObject];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CEBF00];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __125__DMCEnrollmentFlowManagedConfigurationHelper__awaitESSOConfigActivationWithExtensionIdentifierEnumerator_completionHandler___block_invoke_2;
    v7[3] = &unk_278EE79C0;
    v8 = v2;
    v6 = *(a1 + 32);
    v5 = v6.i64[0];
    v9 = vextq_s8(v6, v6, 8uLL);
    v10 = *(a1 + 48);
    [v4 isConfigurationActiveForExtensionIdentifier:v8 completion:v7];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __125__DMCEnrollmentFlowManagedConfigurationHelper__awaitESSOConfigActivationWithExtensionIdentifierEnumerator_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *DMCLogObjects();
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *v12 = 138543618;
      *&v12[4] = v6;
      *&v12[12] = 2114;
      *&v12[14] = v4;
      v7 = "ESSO configuration with identifier %{public}@ is not active with error: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_247E7D000, v8, v9, v7, v12, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *v12 = 138543362;
    *&v12[4] = v11;
    v7 = "ESSO configuration with identifier %{public}@ is active";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 12;
    goto LABEL_6;
  }

  [*(a1 + 40) _awaitESSOConfigActivationWithExtensionIdentifierEnumerator:*(a1 + 48) completionHandler:{*(a1 + 56), *v12, *&v12[16], v13}];
}

- (void)reauthenticationComplete
{
  mEMORY[0x277D24638] = [MEMORY[0x277D24638] sharedClient];
  [mEMORY[0x277D24638] reauthenticationComplete];
}

- (void)requestEnrollmentFlowMonitorWithPersonaID:(id)d
{
  v3 = MEMORY[0x277D262A0];
  dCopy = d;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection startMonitoringEnrollmentStateWithPersonaID:dCopy];
}

- (void)stopEnrollmentFlowMonitor
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] stopMonitoringEnrollmentState];
}

- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection updateCloudConfigurationWithRMAccountIdentifier:identifierCopy];
}

- (void)profileConnection:(id)connection didFinishInstallationWithIdentifier:(id)identifier error:(id)error
{
  connectionCopy = connection;
  identifierCopy = identifier;
  errorCopy = error;
  profileInstallationCompletionHandler = [(DMCEnrollmentFlowManagedConfigurationHelper *)self profileInstallationCompletionHandler];

  if (profileInstallationCompletionHandler)
  {
    if (errorCopy && [errorCopy code] == 4045)
    {
      v11 = MEMORY[0x277D26290];
      installingProfileData = [(DMCEnrollmentFlowManagedConfigurationHelper *)self installingProfileData];
      v13 = [v11 profileWithData:installingProfileData outError:0];
      identifier = [v13 identifier];

      v15 = identifier;
      v16 = [connectionCopy installedProfileWithIdentifier:v15];

      if (v16)
      {

        errorCopy = 0;
      }

      identifierCopy = v15;
    }

    profileInstallationCompletionHandler2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self profileInstallationCompletionHandler];
    (profileInstallationCompletionHandler2)[2](profileInstallationCompletionHandler2, identifierCopy, 0, errorCopy);

    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setProfileInstallationCompletionHandler:0];
  }

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setInstallingProfileData:0];
}

- (void)profileConnectionDidRequestCurrentPasscode:(id)passcode
{
  passcodeCopy = passcode;
  devicePasscode = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];

  if (devicePasscode)
  {
    devicePasscode2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];
    [passcodeCopy respondToCurrentPasscodeRequestContinue:1 passcode:devicePasscode2];
  }

  else
  {
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self _handlePasscodeRequestNeedsExtractablePasscode:1];
  }
}

- (void)profileConnectionDidRequestCurrentPasscodeContext:(id)context needsExtractablePasscode:(BOOL)passcode
{
  passcodeCopy = passcode;
  contextCopy = context;
  devicePasscodeContext = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscodeContext];

  if (devicePasscodeContext && !passcodeCopy)
  {
    devicePasscodeContext2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscodeContext];
    [contextCopy respondToCurrentPasscodeRequestContinue:1 passcodeContext:devicePasscodeContext2];
LABEL_6:

    goto LABEL_7;
  }

  devicePasscode = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];

  if (devicePasscode)
  {
    devicePasscodeContext2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];
    [contextCopy respondToCurrentPasscodeRequestContinue:1 passcode:devicePasscodeContext2];
    goto LABEL_6;
  }

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _handlePasscodeRequestNeedsExtractablePasscode:passcodeCopy];
LABEL_7:
}

- (void)profileConnection:(id)connection didFinishPreflightWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__DMCEnrollmentFlowManagedConfigurationHelper_profileConnection_didFinishPreflightWithError___block_invoke;
  v7[3] = &unk_278EE77B8;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __93__DMCEnrollmentFlowManagedConfigurationHelper_profileConnection_didFinishPreflightWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presenter];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) presenter];
    [v4 informQuestionViewControllerOfPreflightResult:*(a1 + 40)];
  }
}

+ (id)_mdmProfileInfo
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = 0;
  v3 = [mEMORY[0x277D262A0] installedConfigurationProfileInfoWithOutMDMProfileInfo:&v7];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (void)_handlePasscodeRequestNeedsExtractablePasscode:(BOOL)passcode
{
  passcodeCopy = passcode;
  v12 = *MEMORY[0x277D85DE8];
  presenter = [(DMCEnrollmentFlowManagedConfigurationHelper *)self presenter];

  v6 = *DMCLogObjects();
  if (presenter)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = passcodeCopy;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Will ask for passcode. needsExtractablePasscode: %d", buf, 8u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke;
    v8[3] = &unk_278EE7A58;
    v8[4] = self;
    v9 = passcodeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "DMCEnrollmentFlowManagedConfigurationHelper: No presenter is provided.", buf, 2u);
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] respondToCurrentPasscodeRequestContinue:0 passcodeContext:0];
  }
}

void __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presenter];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) presenter];
    [v7 requestDevicePasscodeContextNeedsExtractable:*(a1 + 40) completionHandler:&__block_literal_global_2];
  }

  else
  {
    if ((*(a1 + 40) & 1) != 0 || ([*(a1 + 32) presenter], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) == 0))
    {
      v6 = [*(a1 + 32) presenter];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke_4;
      v8[3] = &unk_278EE7A30;
      v8[4] = *(a1 + 32);
      [v6 requestDevicePasscodeWithCompletionHandler:v8];
    }

    else
    {
      v6 = [*(a1 + 32) presenter];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke_3;
      v9[3] = &unk_278EE7A08;
      v9[4] = *(a1 + 32);
      [v6 requestDevicePasscodeDataWithCompletionHandler:v9];
    }
  }
}

void __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = MEMORY[0x277D262A0];
  v6 = a2;
  v7 = [v5 sharedConnection];
  [v7 respondToCurrentPasscodeRequestContinue:a4 ^ 1u passcodeContext:v6];
}

void __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setDevicePasscodeContext:v6];
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  [v7 respondToCurrentPasscodeRequestContinue:a4 ^ 1u passcodeContext:v6];
}

void __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setDevicePasscode:v5];
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  [v6 respondToCurrentPasscodeRequestContinue:a3 ^ 1u passcode:v5];
}

- (void)_handleUserInputRequest:(id)request
{
  requestCopy = request;
  presenter = [(DMCEnrollmentFlowManagedConfigurationHelper *)self presenter];

  v6 = *DMCLogObjects();
  if (presenter)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Will ask for user input", buf, 2u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__DMCEnrollmentFlowManagedConfigurationHelper__handleUserInputRequest___block_invoke;
    v8[3] = &unk_278EE77B8;
    v8[4] = self;
    v9 = requestCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "DMCEnrollmentFlowManagedConfigurationHelper: No presenter is provided.", buf, 2u);
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] cancelUserInputResponses];
  }
}

void __71__DMCEnrollmentFlowManagedConfigurationHelper__handleUserInputRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presenter];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__DMCEnrollmentFlowManagedConfigurationHelper__handleUserInputRequest___block_invoke_2;
  v4[3] = &unk_278EE7A80;
  v5 = v3;
  [v2 requestUserInputWithRequest:v5 completionHandler:v4];
}

void __71__DMCEnrollmentFlowManagedConfigurationHelper__handleUserInputRequest___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v6 = a2;
  if ((a3 & 1) != 0 || ![*(a1 + 32) count])
  {
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    [v5 cancelUserInputResponses];
  }

  else
  {
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    [v5 submitUserInputResponses:v6];
  }
}

+ (id)_createProfileInvalidError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15016 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (void)blockAppInstallsWithCompletion:(id)completion
{
  v3 = MEMORY[0x277D24638];
  completionCopy = completion;
  sharedClient = [v3 sharedClient];
  [sharedClient blockAppInstallsWithCompletion:completionCopy];
}

- (void)unblockAppInstallsWithCompletion:(id)completion
{
  v3 = MEMORY[0x277D24638];
  completionCopy = completion;
  sharedClient = [v3 sharedClient];
  [sharedClient unblockAppInstallsWithCompletion:completionCopy];
}

- (void)manageApplicationWithBundleID:(id)d iTunesItemID:(id)iD organization:(id)organization personaID:(id)personaID associatedDomains:(id)domains associatedDomainsEnableDirectDownloads:(id)downloads configuration:(id)configuration completionHandler:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  organizationCopy = organization;
  personaIDCopy = personaID;
  domainsCopy = domains;
  downloadsCopy = downloads;
  configurationCopy = configuration;
  handlerCopy = handler;
  currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
  v22 = objc_opt_new();
  v28 = dCopy;
  [v22 setBundleIdentifier:dCopy];
  [v22 setOriginator:organizationCopy];
  [v22 setPersonaIdentifier:personaIDCopy];
  [v22 setManagementOptions:1];
  [v22 setInternal:MEMORY[0x277CBEC38]];
  [v22 setAssociatedDomains:domainsCopy];
  [v22 setAssociatedDomainsEnableDirectDownloads:downloadsCopy];
  [v22 setRemovable:MEMORY[0x277CBEC28]];
  [v22 setConfiguration:configurationCopy];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v23 = dispatch_queue_create("ersso_manage_application_queue", 0);
  v24 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __202__DMCEnrollmentFlowManagedConfigurationHelper_manageApplicationWithBundleID_iTunesItemID_organization_personaID_associatedDomains_associatedDomainsEnableDirectDownloads_configuration_completionHandler___block_invoke;
  block[3] = &unk_278EE7940;
  block[4] = v35;
  dispatch_after(v24, v23, block);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __202__DMCEnrollmentFlowManagedConfigurationHelper_manageApplicationWithBundleID_iTunesItemID_organization_personaID_associatedDomains_associatedDomainsEnableDirectDownloads_configuration_completionHandler___block_invoke_43;
  v30[3] = &unk_278EE7AA8;
  v25 = v23;
  v31 = v25;
  v33 = v35;
  v26 = handlerCopy;
  v32 = v26;
  [currentUserConnection performRequest:v22 completion:v30];

  _Block_object_dispose(v35, 8);
}

void __202__DMCEnrollmentFlowManagedConfigurationHelper_manageApplicationWithBundleID_iTunesItemID_organization_personaID_associatedDomains_associatedDomainsEnableDirectDownloads_configuration_completionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "ersso_manage_application";
      v7 = 2048;
      v8 = 0x403E000000000000;
      _os_log_impl(&dword_247E7D000, v1, OS_LOG_TYPE_ERROR, "Task %s hasn't finished within %.1f seconds", &v5, 0x16u);
    }

    v2 = [@"ersso_manage_application" stringByAppendingString:@"_stackshot.ips"];
    v3 = MEMORY[0x277D034B8];
    v4 = DMCHangTracerDirectory();
    [v3 dumpStackshotToPath:v4 fileName:v2];
  }
}

void __202__DMCEnrollmentFlowManagedConfigurationHelper_manageApplicationWithBundleID_iTunesItemID_organization_personaID_associatedDomains_associatedDomainsEnableDirectDownloads_configuration_completionHandler___block_invoke_43(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __202__DMCEnrollmentFlowManagedConfigurationHelper_manageApplicationWithBundleID_iTunesItemID_organization_personaID_associatedDomains_associatedDomainsEnableDirectDownloads_configuration_completionHandler___block_invoke_2;
  block[3] = &unk_278EE7940;
  block[4] = a1[6];
  dispatch_async(v5, block);
  (*(a1[5] + 16))();
}

- (void)removeApplicationWithBundleID:(id)d personaID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = MEMORY[0x277D04BF8];
  iDCopy = iD;
  currentUserConnection = [v9 currentUserConnection];
  v12 = objc_opt_new();
  [v12 setBundleIdentifier:dCopy];
  [v12 setPersonaIdentifier:iDCopy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__DMCEnrollmentFlowManagedConfigurationHelper_removeApplicationWithBundleID_personaID_completionHandler___block_invoke;
  v15[3] = &unk_278EE7AD0;
  v16 = dCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  [currentUserConnection performRequest:v12 completion:v15];
}

void __105__DMCEnrollmentFlowManagedConfigurationHelper_removeApplicationWithBundleID_personaID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_ERROR, "Failed to remove application with bundle ID: %{public}@, error: %{public}@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

- (void)awaitPendingApplicationInstallationWithObserver:(id)observer completionHandler:(id)handler
{
  handlerCopy = handler;
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAppInstallationObserver:observer];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__DMCEnrollmentFlowManagedConfigurationHelper_awaitPendingApplicationInstallationWithObserver_completionHandler___block_invoke;
  v16[3] = &unk_278EE7AF8;
  v8 = v7;
  v17 = v8;
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _awaitManagedAppsInstallationWithCompletionHandler:v16];
  dispatch_group_enter(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __113__DMCEnrollmentFlowManagedConfigurationHelper_awaitPendingApplicationInstallationWithObserver_completionHandler___block_invoke_48;
  v14[3] = &unk_278EE7AF8;
  v15 = v8;
  v9 = v8;
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _awaitSystemDeletableAppsInstallationWithCompletionHandler:v14];
  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__DMCEnrollmentFlowManagedConfigurationHelper_awaitPendingApplicationInstallationWithObserver_completionHandler___block_invoke_49;
  block[3] = &unk_278EE7808;
  v13 = handlerCopy;
  v11 = handlerCopy;
  dispatch_group_notify(v9, v10, block);
}

void __113__DMCEnrollmentFlowManagedConfigurationHelper_awaitPendingApplicationInstallationWithObserver_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v3;
      v5 = "Failed to wait for managed apps to be installed. Error: %{public}@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_247E7D000, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "_awaitManagedAppsInstallationWithCompletionHandler done";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __113__DMCEnrollmentFlowManagedConfigurationHelper_awaitPendingApplicationInstallationWithObserver_completionHandler___block_invoke_48(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v3;
      v5 = "Failed to wait for system deletable apps to be installed. Error: %{public}@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_247E7D000, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "_awaitSystemDeletableAppsInstallation done";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __113__DMCEnrollmentFlowManagedConfigurationHelper_awaitPendingApplicationInstallationWithObserver_completionHandler___block_invoke_49(uint64_t a1)
{
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_247E7D000, v2, OS_LOG_TYPE_DEFAULT, "Finished waiting for all apps", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_awaitManagedAppsInstallationWithCompletionHandler:(id)handler
{
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitMDMv1AppsInstallationCompletionHandler:handler];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  appInstallNotificationQueue = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];

  if (!appInstallNotificationQueue)
  {
    v6 = dispatch_queue_create("RTSFetchAppsQueue", 0);
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAppInstallNotificationQueue:v6];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__mdmV1AppsInstallationStateDidChange_ name:*MEMORY[0x277D26120] object:0];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _mdmV1AppsInstallationStateDidChange:0];
}

- (void)_mdmV1AppsInstallationStateDidChange:(id)change
{
  appInstallNotificationQueue = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(appInstallNotificationQueue, block);
}

void __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D04BF8] currentUserConnection];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke_69;
  aBlock[3] = &unk_278EE7AF8;
  aBlock[4] = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _fetchRequestForMDMv1Apps];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke_2;
  v6[3] = &unk_278EE7B20;
  v6[4] = *(a1 + 32);
  v7 = &unk_285A0E3E8;
  v8 = v3;
  v5 = v3;
  [v2 performRequest:v4 completion:v6];
}

void __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke_69(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:*MEMORY[0x277D26120] object:0];

  v4 = [*(a1 + 32) awaitMDMv1AppsInstallationCompletionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) awaitMDMv1AppsInstallationCompletionHandler];
    (v5)[2](v5, v6);

    [*(a1 + 32) setAwaitMDMv1AppsInstallationCompletionHandler:0];
  }
}

void __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch apps result with error: %{public}@.", &v9, 0xCu);
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEBUG, "Evaluating managed apps", &v9, 2u);
  }

  if ([*(a1 + 32) _analyzeAppFetchingResult:v5 terminationStates:*(a1 + 40) checkManagementState:1 checkInstallationState:0 appType:*MEMORY[0x277D03188]])
  {
    v8 = *(*(a1 + 48) + 16);
LABEL_9:
    v8();
  }
}

- (BOOL)_analyzeAppFetchingResult:(id)result terminationStates:(id)states checkManagementState:(BOOL)state checkInstallationState:(BOOL)installationState appType:(id)type
{
  installationStateCopy = installationState;
  stateCopy = state;
  v53 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  typeCopy = type;
  appsByBundleIdentifier = [result appsByBundleIdentifier];
  allValues = [appsByBundleIdentifier allValues];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = allValues;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v13)
  {
    v15 = 0;
    v37 = 1;
    goto LABEL_21;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v41;
  v37 = 1;
  do
  {
    v17 = v12;
    v18 = 0;
    do
    {
      if (*v41 != v16)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v40 + 1) + 8 * v18);
      if (stateCopy)
      {
        managementInformation = [*(*(&v40 + 1) + 8 * v18) managementInformation];
        state = [managementInformation state];
      }

      else
      {
        if (!installationStateCopy)
        {
          goto LABEL_12;
        }

        state = [*(*(&v40 + 1) + 8 * v18) installationState];
      }

      if (state == 0xFFFFFFFFLL || ([MEMORY[0x277CCABB0] numberWithUnsignedInteger:state], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(statesCopy, "containsObject:", v22), v22, (v23 & 1) != 0))
      {
LABEL_12:
        ++v15;
        goto LABEL_13;
      }

      bundleIdentifier = [v19 bundleIdentifier];

      if (bundleIdentifier)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
        bundleIdentifier2 = [v19 bundleIdentifier];
        [dictionary setObject:v25 forKeyedSubscript:bundleIdentifier2];
      }

      v37 = 0;
LABEL_13:
      ++v18;
    }

    while (v14 != v18);
    v12 = v17;
    v27 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
    v14 = v27;
  }

  while (v27);
LABEL_21:

  appInstallationObserver = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallationObserver];
  [appInstallationObserver appInstallationStatusUpdatedForType:typeCopy totalNumber:objc_msgSend(v12 finishedNumber:{"count"), v15}];

  if ([dictionary count])
  {
    v29 = *DMCLogObjects();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [v12 count] - v15;
      v32 = [v12 count];
      *buf = 134218754;
      v45 = v31;
      v46 = 2048;
      v47 = v32;
      v48 = 2114;
      v49 = typeCopy;
      v50 = 2114;
      v51 = dictionary;
      _os_log_impl(&dword_247E7D000, v30, OS_LOG_TYPE_DEFAULT, "Awaiting %lu of %lu %{public}@ apps to be installed: %{public}@", buf, 0x2Au);
    }
  }

  return v37 & 1;
}

- (id)_fetchRequestForMDMv1Apps
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setType:2];
  [v2 setManagedAppsOnly:1];
  v5[0] = @"managementInformation";
  v5[1] = @"bundleIdentifier";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  [v2 setPropertyKeys:v3];

  return v2;
}

- (void)_awaitSystemDeletableAppsInstallationWithCompletionHandler:(id)handler
{
  v21[2] = *MEMORY[0x277D85DE8];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitSystemDeletableAppsInstallationCompletionHandler:handler];
  v4 = objc_opt_new();
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setFetchRequestSystemAppDeletable:v4];

  fetchRequestSystemAppDeletable = [(DMCEnrollmentFlowManagedConfigurationHelper *)self fetchRequestSystemAppDeletable];
  [fetchRequestSystemAppDeletable setType:4];

  v21[0] = @"installationState";
  v21[1] = @"bundleIdentifier";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  fetchRequestSystemAppDeletable2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self fetchRequestSystemAppDeletable];
  [fetchRequestSystemAppDeletable2 setPropertyKeys:v6];

  appInstallNotificationQueue = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];

  if (!appInstallNotificationQueue)
  {
    v9 = dispatch_queue_create("RTSFetchAppsQueue", 0);
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAppInstallNotificationQueue:v9];
  }

  [MEMORY[0x277D03500] awaitSystemDeletableAppsTimeoutWithDefaultValue:1800.0];
  v11 = v10;
  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v11;
    _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "Waiting for system deletable apps to be installed for %f seconds", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__DMCEnrollmentFlowManagedConfigurationHelper__awaitSystemDeletableAppsInstallationWithCompletionHandler___block_invoke;
  v18[3] = &unk_278EE7B48;
  v18[4] = self;
  v13 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:0 repeats:v18 block:v11];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setSadAppInstallTimeoutTimer:v13];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  sadAppInstallTimeoutTimer = [(DMCEnrollmentFlowManagedConfigurationHelper *)self sadAppInstallTimeoutTimer];
  [mainRunLoop addTimer:sadAppInstallTimeoutTimer forMode:*MEMORY[0x277CBE738]];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  _appInstallRegisteredNotification = [(DMCEnrollmentFlowManagedConfigurationHelper *)self _appInstallRegisteredNotification];
  [defaultCenter addObserver:self selector:sel__systemAppDeletableInstallationStateDidChange_ name:_appInstallRegisteredNotification object:0];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _systemAppDeletableInstallationStateDidChange:0];
}

void __106__DMCEnrollmentFlowManagedConfigurationHelper__awaitSystemDeletableAppsInstallationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03438];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:16007 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  [*(a1 + 32) _doAwaitSystemDeletableAppsCleanupWithError:v5];
}

- (void)_systemAppDeletableInstallationStateDidChange:(id)change
{
  appInstallNotificationQueue = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__DMCEnrollmentFlowManagedConfigurationHelper__systemAppDeletableInstallationStateDidChange___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(appInstallNotificationQueue, block);
}

void __93__DMCEnrollmentFlowManagedConfigurationHelper__systemAppDeletableInstallationStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchRequestSystemAppDeletable];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) awaitSystemDeletableAppsInstallationCompletionHandler];

    if (v4)
    {
      v5 = [MEMORY[0x277D04BF8] currentUserConnection];
      v6 = [*(a1 + 32) fetchRequestSystemAppDeletable];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __93__DMCEnrollmentFlowManagedConfigurationHelper__systemAppDeletableInstallationStateDidChange___block_invoke_100;
      v7[3] = &unk_278EE7B70;
      v7[4] = *(a1 + 32);
      v8 = &unk_285A0E400;
      [v5 performRequest:v6 completion:v7];
    }
  }
}

void __93__DMCEnrollmentFlowManagedConfigurationHelper__systemAppDeletableInstallationStateDidChange___block_invoke_100(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch apps result.", v9, 2u);
    }

    v7 = *(a1 + 32);
    v8 = v5;
    goto LABEL_7;
  }

  if ([*(a1 + 32) _analyzeAppFetchingResult:a2 terminationStates:*(a1 + 40) checkManagementState:0 checkInstallationState:1 appType:*MEMORY[0x277D03190]])
  {
    v7 = *(a1 + 32);
    v8 = 0;
LABEL_7:
    [v7 _doAwaitSystemDeletableAppsCleanupWithError:v8];
  }
}

- (void)_doAwaitSystemDeletableAppsCleanupWithError:(id)error
{
  errorCopy = error;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  _appInstallRegisteredNotification = [(DMCEnrollmentFlowManagedConfigurationHelper *)self _appInstallRegisteredNotification];
  [defaultCenter removeObserver:self name:_appInstallRegisteredNotification object:0];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setFetchRequestSystemAppDeletable:0];
  sadAppInstallTimeoutTimer = [(DMCEnrollmentFlowManagedConfigurationHelper *)self sadAppInstallTimeoutTimer];
  [sadAppInstallTimeoutTimer invalidate];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setSadAppInstallTimeoutTimer:0];
  awaitSystemDeletableAppsInstallationCompletionHandler = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitSystemDeletableAppsInstallationCompletionHandler];

  if (awaitSystemDeletableAppsInstallationCompletionHandler)
  {
    awaitSystemDeletableAppsInstallationCompletionHandler2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitSystemDeletableAppsInstallationCompletionHandler];
    (awaitSystemDeletableAppsInstallationCompletionHandler2)[2](awaitSystemDeletableAppsInstallationCompletionHandler2, errorCopy);

    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitSystemDeletableAppsInstallationCompletionHandler:0];
  }
}

- (void)preserveManagedAppsWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient preserveAppsWithCompletion:handlerCopy];
}

- (void)cleanupOrphanedAppsWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient removeUnusedPreservedAppsWithCompletion:handlerCopy];
}

- (void)waitForDDMAppsToBeRegisteredForMDMProfile:(id)profile completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__DMCEnrollmentFlowManagedConfigurationHelper_waitForDDMAppsToBeRegisteredForMDMProfile_completionHandler___block_invoke;
  v7[3] = &unk_278EE7B98;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [DMCAppWait waitForDDMAppConfigurationsWithProfileIdentifier:profile completionHandler:v7];
}

void __107__DMCEnrollmentFlowManagedConfigurationHelper_waitForDDMAppsToBeRegisteredForMDMProfile_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = *(*(a1 + 32) + 16);
LABEL_3:
    v5();
    goto LABEL_6;
  }

  if (!a2)
  {
    v5 = *(*(a1 + 32) + 16);
    goto LABEL_3;
  }

  [DMCAppWait waitForMADAppStatusWithCompletionHandler:*(a1 + 32)];
LABEL_6:
}

- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailable
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  activationRecordIndicatesCloudConfigurationIsAvailable = [mEMORY[0x277D262A0] activationRecordIndicatesCloudConfigurationIsAvailable];
  if ((activationRecordIndicatesCloudConfigurationIsAvailable & 1) == 0)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "No cloud configuration according to activation record.", v6, 2u);
    }
  }

  return activationRecordIndicatesCloudConfigurationIsAvailable;
}

- (id)existingCloudConfigOnDisk
{
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  [mEMORY[0x277D24640] refreshDetailsFromDisk];

  mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
  details = [mEMORY[0x277D24640]2 details];

  return details;
}

- (void)fetchCloudConfigWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_DEFAULT, "Fetching cloud config from cloud...", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__DMCEnrollmentFlowManagedConfigurationHelper_fetchCloudConfigWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE7BC0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [mEMORY[0x277D262A0] retrieveCloudConfigurationDetailsCompletionBlock:v7];
}

void __85__DMCEnrollmentFlowManagedConfigurationHelper_fetchCloudConfigWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_ERROR, "Failed to retrieve and store cloud configuration with error: %{public}@", &v9, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "Cloud Configuration fetched", &v9, 2u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

- (void)storeCloudConfig:(id)config completionHandler:(id)handler
{
  v5 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  configCopy = config;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeCloudConfigurationDetails:configCopy completion:handlerCopy];
}

- (void)removeCloudConfigWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection storeCloudConfigurationDetails:0 completion:handlerCopy];
}

- (void)removeSetAsideCloudConfigWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection removeSetAsideCloudConfigurationProfileWithCompletion:handlerCopy];
}

- (void)removePendingCloudConfigWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection storePendingCloudConfigurationDetailsForMigration:0 completionHandler:handlerCopy];
}

- (void)awaitStoredProfileInstallationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(DMCEnrollmentFlowManagedConfigurationHelper *)self isStoredProfileInstalled])
  {
    handlerCopy[2]();
  }

  else
  {
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitStoredProfileInstallationCompletionHandler:handlerCopy];

    handlerCopy = [MEMORY[0x277CCAB98] defaultCenter];
    [handlerCopy addObserver:self selector:sel__cloudConfigDidChange_ name:*MEMORY[0x277D25C90] object:0];
  }
}

- (void)awaitDeviceConfiguredWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(DMCEnrollmentFlowManagedConfigurationHelper *)self isDeviceConfigured])
  {
    handlerCopy[2]();
  }

  else
  {
    if ([MEMORY[0x277D03500] shouldSimulateMDMCommunication])
    {
      v4 = dispatch_time(0, 2000000000);
      dispatch_after(v4, MEMORY[0x277D85CD0], &__block_literal_global_110);
    }

    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitDeviceConfigurationCompletionHandler:handlerCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__cloudConfigDidChange_ name:*MEMORY[0x277D25C90] object:0];
  }
}

void __90__DMCEnrollmentFlowManagedConfigurationHelper_awaitDeviceConfiguredWithCompletionHandler___block_invoke()
{
  v0 = [MEMORY[0x277D24640] sharedConfiguration];
  [v0 refreshDetailsFromDisk];

  v1 = [MEMORY[0x277D24640] sharedConfiguration];
  v2 = [v1 details];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "Simulating device configured.", v6, 2u);
    }

    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D03050]];
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    [v5 storeCloudConfigurationDetails:v3 completion:&__block_literal_global_113];
  }
}

- (BOOL)isDeviceConfigured
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAwaitingDeviceConfigured = [mEMORY[0x277D262A0] isAwaitingDeviceConfigured];

  return isAwaitingDeviceConfigured ^ 1;
}

- (void)_cloudConfigDidChange:(id)change
{
  awaitStoredProfileInstallationCompletionHandler = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitStoredProfileInstallationCompletionHandler];

  if (awaitStoredProfileInstallationCompletionHandler)
  {
    isStoredProfileInstalled = [(DMCEnrollmentFlowManagedConfigurationHelper *)self isStoredProfileInstalled];
    v6 = *DMCLogObjects();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isStoredProfileInstalled)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Stored profile installed!", buf, 2u);
      }

      awaitStoredProfileInstallationCompletionHandler2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitStoredProfileInstallationCompletionHandler];
      awaitStoredProfileInstallationCompletionHandler2[2]();

      [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitStoredProfileInstallationCompletionHandler:0];
    }

    else if (v7)
    {
      *v18 = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Cloud config changed but stored profile is not installed.", v18, 2u);
    }
  }

  awaitDeviceConfigurationCompletionHandler = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitDeviceConfigurationCompletionHandler];

  if (awaitDeviceConfigurationCompletionHandler)
  {
    isDeviceConfigured = [(DMCEnrollmentFlowManagedConfigurationHelper *)self isDeviceConfigured];
    v11 = *DMCLogObjects();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isDeviceConfigured)
    {
      if (v12)
      {
        *v17 = 0;
        _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_DEFAULT, "Device is configured!", v17, 2u);
      }

      awaitDeviceConfigurationCompletionHandler2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitDeviceConfigurationCompletionHandler];
      awaitDeviceConfigurationCompletionHandler2[2]();

      [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitDeviceConfigurationCompletionHandler:0];
    }

    else if (v12)
    {
      *v16 = 0;
      _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_DEFAULT, "Cloud config changed but device is not configured.", v16, 2u);
    }
  }

  awaitDeviceConfigurationCompletionHandler3 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitDeviceConfigurationCompletionHandler];
  if (awaitDeviceConfigurationCompletionHandler3)
  {
    goto LABEL_16;
  }

  awaitStoredProfileInstallationCompletionHandler3 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitStoredProfileInstallationCompletionHandler];

  if (!awaitStoredProfileInstallationCompletionHandler3)
  {
    awaitDeviceConfigurationCompletionHandler3 = [MEMORY[0x277CCAB98] defaultCenter];
    [awaitDeviceConfigurationCompletionHandler3 removeObserver:self];
LABEL_16:
  }
}

- (void)restoreSetAsideCloudConfigAndProfilesWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:handlerCopy];
}

- (void)markCloudConfigurationAsUICompletedWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection cloudConfigurationUIDidCompleteWasApplied:1 completionHandler:handlerCopy];
}

- (void)markStoredProfileAsInstalled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] markStoredProfileAsInstalled];
}

- (void)unassignFromDEPWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection unenrollWithCompletionBlock:handlerCopy];
}

- (void)initiateDEPPushTokenSyncWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient monitorDEPPushTokenIfNeededWithCompletion:handlerCopy];
}

- (void)removeProtectedProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = MEMORY[0x277D262A0];
  handlerCopy = handler;
  identifierCopy = identifier;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection removeProtectedProfileAsyncWithIdentifier:identifierCopy installationType:1 completion:handlerCopy];
}

- (void)generateAndSyncBootstrapTokenWithPasscode:(id)passcode passcodeContext:(id)context completionHandler:(id)handler
{
  passcodeCopy = passcode;
  contextCopy = context;
  v8 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v8 sharedClient];
  if (passcodeCopy)
  {
    v11 = [passcodeCopy dataUsingEncoding:4];
    [sharedClient generateAndSyncBootstrapTokenWithDevicePasscode:v11 completionHandler:handlerCopy];

    handlerCopy = v11;
  }

  else
  {
    [sharedClient generateAndSyncBootstrapTokenWithDevicePasscodeContext:contextCopy completionHandler:handlerCopy];
  }
}

- (void)blockMDMCommandsWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient blockMDMCommandsWithCompletion:handlerCopy];
}

- (void)unblockMDMCommandsWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient unblockMDMCommandsWithCompletion:handlerCopy];
}

- (void)enablePushWakeWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient enablePushWakeWithCompletion:handlerCopy];
}

- (void)disablePushWakeWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v3 sharedClient];
  [sharedClient disablePushWakeWithCompletion:handlerCopy];
}

- (void)evaluateMigrationStatusWithPollFromServer:(BOOL)server completionHandler:(id)handler
{
  serverCopy = server;
  v5 = MEMORY[0x277D24638];
  handlerCopy = handler;
  sharedClient = [v5 sharedClient];
  [sharedClient evaluateMigrationStatusWithPollFromServer:serverCopy completionHandler:handlerCopy];
}

- (DMCEnrollmentFlowProfileInstallationPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (DMCEnrollmentFlowAppInstallationObserver)appInstallationObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_appInstallationObserver);

  return WeakRetained;
}

@end