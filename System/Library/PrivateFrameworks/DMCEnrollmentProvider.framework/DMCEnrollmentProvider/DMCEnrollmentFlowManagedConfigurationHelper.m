@interface DMCEnrollmentFlowManagedConfigurationHelper
+ (id)_createProfileInvalidError;
+ (id)_mdmProfileInfo;
+ (id)organizationNameFromProfile:(id)a3 payload:(id)a4;
- (BOOL)_analyzeAppFetchingResult:(id)a3 terminationStates:(id)a4 checkManagementState:(BOOL)a5 checkInstallationState:(BOOL)a6 appType:(id)a7;
- (BOOL)activationRecordIndicatesCloudConfigurationIsAvailable;
- (BOOL)isAccountModificationAllowed;
- (BOOL)isDeviceConfigured;
- (BOOL)isDeviceMDMEnrolled;
- (BOOL)isDeviceSupervised;
- (BOOL)isLockdownModeEnabled;
- (BOOL)isMDMProfileADEProfile;
- (BOOL)isMDMProfileLocked;
- (BOOL)isStoredProfileInstalled;
- (BOOL)removeProfileAssociatedWithPersonaID:(id)a3;
- (BOOL)validateESSOConfigurationProfile:(id)a3 error:(id *)a4;
- (DMCEnrollmentFlowAppInstallationObserver)appInstallationObserver;
- (DMCEnrollmentFlowProfileInstallationPresenter)presenter;
- (id)_fetchRequestForMDMv1Apps;
- (id)detailsFromMDMProfile:(id)a3 error:(id *)a4;
- (id)existingCloudConfigOnDisk;
- (id)extensionIDsFromESSOConfigurationProfile:(id)a3;
- (id)extensionIDsFromESSOProfileIdentifiers:(id)a3;
- (id)getMachineInfoForEnrollmentType:(unint64_t)a3 enrollmentMethod:(unint64_t)a4 canRequestSoftwareUpdate:(BOOL)a5;
- (id)installedMDMProfileIdentifier;
- (unint64_t)currentEnrollmentType;
- (void)_awaitESSOConfigActivationWithExtensionIdentifierEnumerator:(id)a3 completionHandler:(id)a4;
- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)_awaitManagedAppsInstallationWithCompletionHandler:(id)a3;
- (void)_awaitSystemDeletableAppsInstallationWithCompletionHandler:(id)a3;
- (void)_cloudConfigDidChange:(id)a3;
- (void)_doAwaitSystemDeletableAppsCleanupWithError:(id)a3;
- (void)_handlePasscodeRequestNeedsExtractablePasscode:(BOOL)a3;
- (void)_handleUserInputRequest:(id)a3;
- (void)_mdmV1AppsInstallationStateDidChange:(id)a3;
- (void)_systemAppDeletableInstallationStateDidChange:(id)a3;
- (void)awaitDeviceConfiguredWithCompletionHandler:(id)a3;
- (void)awaitPendingApplicationInstallationWithObserver:(id)a3 completionHandler:(id)a4;
- (void)awaitStoredProfileInstallationWithCompletionHandler:(id)a3;
- (void)blockAppInstallsWithCompletion:(id)a3;
- (void)blockMDMCommandsWithCompletionHandler:(id)a3;
- (void)cleanupOrphanedAppsWithCompletionHandler:(id)a3;
- (void)disablePushWakeWithCompletionHandler:(id)a3;
- (void)enablePushWakeWithCompletionHandler:(id)a3;
- (void)evaluateMigrationStatusWithPollFromServer:(BOOL)a3 completionHandler:(id)a4;
- (void)fetchCloudConfigWithCompletionHandler:(id)a3;
- (void)generateAndSyncBootstrapTokenWithPasscode:(id)a3 passcodeContext:(id)a4 completionHandler:(id)a5;
- (void)initiateDEPPushTokenSyncWithCompletionHandler:(id)a3;
- (void)installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 devicePasscodeContext:(id)a5 passcodeContextExtractable:(BOOL)a6 personaID:(id)a7 rmAccountIdentifier:(id)a8 isESSO:(BOOL)a9 essoAppITunesStoreID:(id)a10 managedProfileIdentifiers:(id)a11 installationSource:(id)a12 completionHandler:(id)a13;
- (void)manageApplicationWithBundleID:(id)a3 iTunesItemID:(id)a4 organization:(id)a5 personaID:(id)a6 associatedDomains:(id)a7 associatedDomainsEnableDirectDownloads:(id)a8 configuration:(id)a9 completionHandler:(id)a10;
- (void)markCloudConfigurationAsUICompletedWithCompletionHandler:(id)a3;
- (void)markStoredProfileAsInstalled;
- (void)preserveManagedAppsWithCompletionHandler:(id)a3;
- (void)profileConnection:(id)a3 didFinishInstallationWithIdentifier:(id)a4 error:(id)a5;
- (void)profileConnection:(id)a3 didFinishPreflightWithError:(id)a4;
- (void)profileConnectionDidRequestCurrentPasscode:(id)a3;
- (void)profileConnectionDidRequestCurrentPasscodeContext:(id)a3 needsExtractablePasscode:(BOOL)a4;
- (void)reauthenticationComplete;
- (void)removeApplicationWithBundleID:(id)a3 personaID:(id)a4 completionHandler:(id)a5;
- (void)removeCloudConfigWithCompletionHandler:(id)a3;
- (void)removePendingCloudConfigWithCompletionHandler:(id)a3;
- (void)removeProfileWithIdentifier:(id)a3 async:(BOOL)a4;
- (void)removeProtectedProfileWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeSetAsideCloudConfigWithCompletionHandler:(id)a3;
- (void)requestEnrollmentFlowMonitorWithPersonaID:(id)a3;
- (void)restoreSetAsideCloudConfigAndProfilesWithCompletionHandler:(id)a3;
- (void)stopEnrollmentFlowMonitor;
- (void)storeCloudConfig:(id)a3 completionHandler:(id)a4;
- (void)unassignFromDEPWithCompletionHandler:(id)a3;
- (void)unblockAppInstallsWithCompletion:(id)a3;
- (void)unblockMDMCommandsWithCompletionHandler:(id)a3;
- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)a3;
- (void)waitForDDMAppsToBeRegisteredForMDMProfile:(id)a3 completionHandler:(id)a4;
@end

@implementation DMCEnrollmentFlowManagedConfigurationHelper

- (BOOL)isDeviceMDMEnrolled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isDeviceSupervised
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isSupervised];

  return v3;
}

- (BOOL)isStoredProfileInstalled
{
  v2 = [MEMORY[0x277D24640] sharedConfiguration];
  v3 = [v2 isStoredProfileInstalled];

  return v3;
}

- (BOOL)isAccountModificationAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAccountModificationAllowed];

  return v3;
}

- (BOOL)isLockdownModeEnabled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isLockdownModeEnabled];

  return v3;
}

- (unint64_t)currentEnrollmentType
{
  v2 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self installedMDMProfileIdentifier];

  if (!v2)
  {
    return 10;
  }

  v3 = [MEMORY[0x277D24640] sharedConfiguration];
  if ([v3 isSupervised] && (objc_msgSend(v3, "enrollmentServerInfo"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
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
  v2 = [MEMORY[0x277D24648] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 managingProfileIdentifier];

  if (v3)
  {
    LOBYTE(v3) = [v2 isADEProfile];
  }

  return v3;
}

- (id)installedMDMProfileIdentifier
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];

  return v3;
}

- (id)getMachineInfoForEnrollmentType:(unint64_t)a3 enrollmentMethod:(unint64_t)a4 canRequestSoftwareUpdate:(BOOL)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3 <= 9)
  {
    if (((1 << a3) & 0x188) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << a3) & 0x206) != 0)
    {
      v6 = a5;
      v7 = [MEMORY[0x277D262A0] sharedConnection];
      v12 = *MEMORY[0x277D24798];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v13[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v5 = [v7 getMachineInfoWithAdditionalInfo:v9];

LABEL_10:
      goto LABEL_11;
    }
  }

  if (a4 <= 6)
  {
    if (((1 << a4) & 0x35) != 0)
    {
      v7 = [MEMORY[0x277D262A0] sharedConnection];
      v10 = [v7 getReducedMachineInfo];
LABEL_9:
      v5 = v10;
      goto LABEL_10;
    }

LABEL_8:
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v10 = [v7 getMachineInfo];
    goto LABEL_9;
  }

LABEL_11:

  return v5;
}

- (id)detailsFromMDMProfile:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277D26290] profileWithData:a3 outError:?];
  if (v5)
  {
    v6 = [v5 payloadsWithClass:objc_opt_class()];
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
      v9 = [v5 identifier];
      [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D031F8]];

      v10 = [v7 managedAppleID];
      [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D031E8]];

      v11 = [v7 assignedManagedAppleID];
      [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D031D0]];

      v12 = [v7 friendlyName];
      [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D031E0]];

      v13 = [DMCEnrollmentFlowManagedConfigurationHelper organizationNameFromProfile:v5 payload:v7];
      [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D031F0]];

      v14 = [v7 enrollmentMode];
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277D031D8]];

      v15 = [v7 serverCapabilities];
      [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x277D03208]];

      v16 = [v7 requiredAppIDForMDM];
      [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x277D03200]];

      v17 = [v8 copy];
LABEL_4:

LABEL_12:
      goto LABEL_13;
    }

    if (a4)
    {
      v20 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
      v8 = v20;
      if (v20)
      {
        v21 = v20;
        v17 = 0;
        *a4 = v8;
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

  if (a4)
  {
    v18 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
    v7 = v18;
    if (v18)
    {
      v19 = v18;
      v17 = 0;
      *a4 = v7;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

+ (id)organizationNameFromProfile:(id)a3 payload:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D24640] sharedConfiguration];
  v8 = [v7 details];

  v9 = *MEMORY[0x277D030F0];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D030F0]];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v9];
LABEL_8:
    v15 = v11;
    goto LABEL_9;
  }

  v12 = [v6 organization];

  if (v12)
  {
    v13 = v6;
LABEL_7:
    v11 = [v13 organization];
    goto LABEL_8;
  }

  v14 = [v5 organization];

  if (v14)
  {
    v13 = v5;
    goto LABEL_7;
  }

  v15 = [v6 serverURLString];

  if (v15)
  {
    v17 = MEMORY[0x277CBEBC0];
    v18 = [v6 serverURLString];
    v19 = [v17 URLWithString:v18];

    if (v19)
    {
      v15 = [v19 host];
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_9:

  return v15;
}

- (BOOL)isMDMProfileLocked
{
  v2 = [MEMORY[0x277D24640] sharedConfiguration];
  v3 = [v2 isMDMUnremovable];

  return v3;
}

- (void)installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 devicePasscodeContext:(id)a5 passcodeContextExtractable:(BOOL)a6 personaID:(id)a7 rmAccountIdentifier:(id)a8 isESSO:(BOOL)a9 essoAppITunesStoreID:(id)a10 managedProfileIdentifiers:(id)a11 installationSource:(id)a12 completionHandler:(id)a13
{
  v15 = a6;
  v40 = a3;
  v39 = a10;
  v19 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a8;
  v23 = a7;
  v24 = a5;
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setDevicePasscode:a4];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setDevicePasscodeContext:v24];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setIsExtractableContext:v15];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setInstallingProfileData:v40];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setProfileInstallationCompletionHandler:v19];

  v25 = objc_opt_new();
  [v25 setObject:v23 forKeyedSubscript:*MEMORY[0x277D26420]];

  [v25 setObject:v22 forKeyedSubscript:*MEMORY[0x277D26428]];
  [v25 setObject:v21 forKeyedSubscript:*MEMORY[0x277D263C8]];

  [v25 setObject:v20 forKeyedSubscript:*MEMORY[0x277D263E0]];
  v26 = [MEMORY[0x277D26290] profileWithData:v40 outError:0];
  v27 = [v26 payloadsWithClass:objc_opt_class()];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [MEMORY[0x277D24640] sharedConfiguration];
    v30 = [v29 isMDMUnremovable];

    v31 = [MEMORY[0x277D24640] sharedConfiguration];
    v32 = [v31 details];
    v33 = [v32 objectForKeyedSubscript:*MEMORY[0x277D03038]];
    v34 = [v33 intValue] == 1;

    v35 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    [v25 setObject:v35 forKeyedSubscript:*MEMORY[0x277D263F8]];

    v36 = [MEMORY[0x277CCABB0] numberWithBool:v34];
    [v25 setObject:v36 forKeyedSubscript:*MEMORY[0x277D26400]];
  }

  if (a9)
  {
    [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26408]];
    [v25 setObject:v39 forKeyedSubscript:*MEMORY[0x277D263D8]];
  }

  v37 = [MEMORY[0x277D262A0] sharedConnection];
  v38 = [v25 copy];
  [v37 installProfileData:v40 options:v38 interactionDelegate:self];
}

- (void)removeProfileWithIdentifier:(id)a3 async:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = v6;
    if (v4)
    {
      [v6 removeProfileAsyncWithIdentifier:v8];
    }

    else
    {
      [v6 removeProfileWithIdentifier:v8];
    }

    v5 = v8;
  }
}

- (BOOL)removeProfileAssociatedWithPersonaID:(id)a3
{
  v3 = MEMORY[0x277D24648];
  v4 = a3;
  v5 = [v3 sharedConfiguration];
  v6 = [v5 personaID];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [MEMORY[0x277D24648] sharedConfiguration];
    v10 = [v9 managingProfileIdentifier];
    [v8 removeProfileWithIdentifier:v10];
  }

  return v7;
}

- (BOOL)validateESSOConfigurationProfile:(id)a3 error:(id *)a4
{
  v28[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v28[4] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  v8 = [v6 setWithArray:v7];

  v9 = [MEMORY[0x277D26290] profileWithData:v5 outError:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 payloads];
    v12 = [v11 count];

    if (v12)
    {
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      v13 = [v10 payloads];
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v13);
            }

            if (([v8 containsObject:objc_opt_class()] & 1) == 0)
            {
              if (a4)
              {
                v21 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
                if (v21)
                {
                  v21 = v21;
                  *a4 = v21;
                }
              }

              goto LABEL_19;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  if (a4)
  {
    v19 = +[DMCEnrollmentFlowManagedConfigurationHelper _createProfileInvalidError];
    v13 = v19;
    if (v19)
    {
      v20 = v19;
      v18 = 0;
      *a4 = v13;
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

- (id)extensionIDsFromESSOConfigurationProfile:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D26290] profileWithData:v3 outError:0];
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

        v11 = [*(*(&v14 + 1) + 8 * i) esso_extensionIdentifier];
        [v4 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)extensionIDsFromESSOProfileIdentifiers:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
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
        v11 = [MEMORY[0x277D262A0] sharedConnection];
        v12 = [v11 installedProfileWithIdentifier:v10];

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

                v18 = [*(*(&v24 + 1) + 8 * j) esso_extensionIdentifier];
                [v4 addObject:v18];
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

- (void)_awaitESSOConfigActivationWithExtensionIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 objectEnumerator];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _awaitESSOConfigActivationWithExtensionIdentifierEnumerator:v7 completionHandler:v6];
}

- (void)_awaitESSOConfigActivationWithExtensionIdentifierEnumerator:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__DMCEnrollmentFlowManagedConfigurationHelper__awaitESSOConfigActivationWithExtensionIdentifierEnumerator_completionHandler___block_invoke;
  block[3] = &unk_278EE73A8;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
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
  v2 = [MEMORY[0x277D24638] sharedClient];
  [v2 reauthenticationComplete];
}

- (void)requestEnrollmentFlowMonitorWithPersonaID:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 startMonitoringEnrollmentStateWithPersonaID:v4];
}

- (void)stopEnrollmentFlowMonitor
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  [v2 stopMonitoringEnrollmentState];
}

- (void)updateCloudConfigurationWithRMAccountIdentifier:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 updateCloudConfigurationWithRMAccountIdentifier:v4];
}

- (void)profileConnection:(id)a3 didFinishInstallationWithIdentifier:(id)a4 error:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self profileInstallationCompletionHandler];

  if (v10)
  {
    if (v9 && [v9 code] == 4045)
    {
      v11 = MEMORY[0x277D26290];
      v12 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self installingProfileData];
      v13 = [v11 profileWithData:v12 outError:0];
      v14 = [v13 identifier];

      v15 = v14;
      v16 = [v18 installedProfileWithIdentifier:v15];

      if (v16)
      {

        v9 = 0;
      }

      v8 = v15;
    }

    v17 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self profileInstallationCompletionHandler];
    (v17)[2](v17, v8, 0, v9);

    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setProfileInstallationCompletionHandler:0];
  }

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setInstallingProfileData:0];
}

- (void)profileConnectionDidRequestCurrentPasscode:(id)a3
{
  v6 = a3;
  v4 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];

  if (v4)
  {
    v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];
    [v6 respondToCurrentPasscodeRequestContinue:1 passcode:v5];
  }

  else
  {
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self _handlePasscodeRequestNeedsExtractablePasscode:1];
  }
}

- (void)profileConnectionDidRequestCurrentPasscodeContext:(id)a3 needsExtractablePasscode:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscodeContext];

  if (v6 && !v4)
  {
    v7 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscodeContext];
    [v9 respondToCurrentPasscodeRequestContinue:1 passcodeContext:v7];
LABEL_6:

    goto LABEL_7;
  }

  v8 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];

  if (v8)
  {
    v7 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self devicePasscode];
    [v9 respondToCurrentPasscodeRequestContinue:1 passcode:v7];
    goto LABEL_6;
  }

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _handlePasscodeRequestNeedsExtractablePasscode:v4];
LABEL_7:
}

- (void)profileConnection:(id)a3 didFinishPreflightWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__DMCEnrollmentFlowManagedConfigurationHelper_profileConnection_didFinishPreflightWithError___block_invoke;
  v7[3] = &unk_278EE77B8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v7 = 0;
  v3 = [v2 installedConfigurationProfileInfoWithOutMDMProfileInfo:&v7];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (void)_handlePasscodeRequestNeedsExtractablePasscode:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self presenter];

  v6 = *DMCLogObjects();
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Will ask for passcode. needsExtractablePasscode: %d", buf, 8u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __94__DMCEnrollmentFlowManagedConfigurationHelper__handlePasscodeRequestNeedsExtractablePasscode___block_invoke;
    v8[3] = &unk_278EE7A58;
    v8[4] = self;
    v9 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "DMCEnrollmentFlowManagedConfigurationHelper: No presenter is provided.", buf, 2u);
    }

    v7 = [MEMORY[0x277D262A0] sharedConnection];
    [v7 respondToCurrentPasscodeRequestContinue:0 passcodeContext:0];
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

- (void)_handleUserInputRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self presenter];

  v6 = *DMCLogObjects();
  if (v5)
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
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "DMCEnrollmentFlowManagedConfigurationHelper: No presenter is provided.", buf, 2u);
    }

    v7 = [MEMORY[0x277D262A0] sharedConnection];
    [v7 cancelUserInputResponses];
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

- (void)blockAppInstallsWithCompletion:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 blockAppInstallsWithCompletion:v4];
}

- (void)unblockAppInstallsWithCompletion:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 unblockAppInstallsWithCompletion:v4];
}

- (void)manageApplicationWithBundleID:(id)a3 iTunesItemID:(id)a4 organization:(id)a5 personaID:(id)a6 associatedDomains:(id)a7 associatedDomainsEnableDirectDownloads:(id)a8 configuration:(id)a9 completionHandler:(id)a10
{
  v15 = a3;
  v27 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v29 = a10;
  v21 = [MEMORY[0x277D04BF8] currentUserConnection];
  v22 = objc_opt_new();
  v28 = v15;
  [v22 setBundleIdentifier:v15];
  [v22 setOriginator:v16];
  [v22 setPersonaIdentifier:v17];
  [v22 setManagementOptions:1];
  [v22 setInternal:MEMORY[0x277CBEC38]];
  [v22 setAssociatedDomains:v18];
  [v22 setAssociatedDomainsEnableDirectDownloads:v19];
  [v22 setRemovable:MEMORY[0x277CBEC28]];
  [v22 setConfiguration:v20];
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
  v26 = v29;
  v32 = v26;
  [v21 performRequest:v22 completion:v30];

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

- (void)removeApplicationWithBundleID:(id)a3 personaID:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277D04BF8];
  v10 = a4;
  v11 = [v9 currentUserConnection];
  v12 = objc_opt_new();
  [v12 setBundleIdentifier:v7];
  [v12 setPersonaIdentifier:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__DMCEnrollmentFlowManagedConfigurationHelper_removeApplicationWithBundleID_personaID_completionHandler___block_invoke;
  v15[3] = &unk_278EE7AD0;
  v16 = v7;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [v11 performRequest:v12 completion:v15];
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

- (void)awaitPendingApplicationInstallationWithObserver:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAppInstallationObserver:a3];
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
  v13 = v6;
  v11 = v6;
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

- (void)_awaitManagedAppsInstallationWithCompletionHandler:(id)a3
{
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitMDMv1AppsInstallationCompletionHandler:a3];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];

  if (!v5)
  {
    v6 = dispatch_queue_create("RTSFetchAppsQueue", 0);
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAppInstallNotificationQueue:v6];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__mdmV1AppsInstallationStateDidChange_ name:*MEMORY[0x277D26120] object:0];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self _mdmV1AppsInstallationStateDidChange:0];
}

- (void)_mdmV1AppsInstallationStateDidChange:(id)a3
{
  v4 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__DMCEnrollmentFlowManagedConfigurationHelper__mdmV1AppsInstallationStateDidChange___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(v4, block);
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

- (BOOL)_analyzeAppFetchingResult:(id)a3 terminationStates:(id)a4 checkManagementState:(BOOL)a5 checkInstallationState:(BOOL)a6 appType:(id)a7
{
  v39 = a6;
  v8 = a5;
  v53 = *MEMORY[0x277D85DE8];
  v38 = a4;
  v35 = a7;
  v10 = [a3 appsByBundleIdentifier];
  v11 = [v10 allValues];

  v36 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v11;
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
      if (v8)
      {
        v20 = [*(*(&v40 + 1) + 8 * v18) managementInformation];
        v21 = [v20 state];
      }

      else
      {
        if (!v39)
        {
          goto LABEL_12;
        }

        v21 = [*(*(&v40 + 1) + 8 * v18) installationState];
      }

      if (v21 == 0xFFFFFFFFLL || ([MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v38, "containsObject:", v22), v22, (v23 & 1) != 0))
      {
LABEL_12:
        ++v15;
        goto LABEL_13;
      }

      v24 = [v19 bundleIdentifier];

      if (v24)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
        v26 = [v19 bundleIdentifier];
        [v36 setObject:v25 forKeyedSubscript:v26];
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

  v28 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallationObserver];
  [v28 appInstallationStatusUpdatedForType:v35 totalNumber:objc_msgSend(v12 finishedNumber:{"count"), v15}];

  if ([v36 count])
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
      v49 = v35;
      v50 = 2114;
      v51 = v36;
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

- (void)_awaitSystemDeletableAppsInstallationWithCompletionHandler:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitSystemDeletableAppsInstallationCompletionHandler:a3];
  v4 = objc_opt_new();
  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setFetchRequestSystemAppDeletable:v4];

  v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self fetchRequestSystemAppDeletable];
  [v5 setType:4];

  v21[0] = @"installationState";
  v21[1] = @"bundleIdentifier";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v7 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self fetchRequestSystemAppDeletable];
  [v7 setPropertyKeys:v6];

  v8 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];

  if (!v8)
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

  v14 = [MEMORY[0x277CBEB88] mainRunLoop];
  v15 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self sadAppInstallTimeoutTimer];
  [v14 addTimer:v15 forMode:*MEMORY[0x277CBE738]];

  v16 = [MEMORY[0x277CCA9A0] defaultCenter];
  v17 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self _appInstallRegisteredNotification];
  [v16 addObserver:self selector:sel__systemAppDeletableInstallationStateDidChange_ name:v17 object:0];

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

- (void)_systemAppDeletableInstallationStateDidChange:(id)a3
{
  v4 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self appInstallNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__DMCEnrollmentFlowManagedConfigurationHelper__systemAppDeletableInstallationStateDidChange___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)_doAwaitSystemDeletableAppsCleanupWithError:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self _appInstallRegisteredNotification];
  [v4 removeObserver:self name:v5 object:0];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setFetchRequestSystemAppDeletable:0];
  v6 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self sadAppInstallTimeoutTimer];
  [v6 invalidate];

  [(DMCEnrollmentFlowManagedConfigurationHelper *)self setSadAppInstallTimeoutTimer:0];
  v7 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitSystemDeletableAppsInstallationCompletionHandler];

  if (v7)
  {
    v8 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitSystemDeletableAppsInstallationCompletionHandler];
    (v8)[2](v8, v9);

    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitSystemDeletableAppsInstallationCompletionHandler:0];
  }
}

- (void)preserveManagedAppsWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 preserveAppsWithCompletion:v4];
}

- (void)cleanupOrphanedAppsWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 removeUnusedPreservedAppsWithCompletion:v4];
}

- (void)waitForDDMAppsToBeRegisteredForMDMProfile:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__DMCEnrollmentFlowManagedConfigurationHelper_waitForDDMAppsToBeRegisteredForMDMProfile_completionHandler___block_invoke;
  v7[3] = &unk_278EE7B98;
  v8 = v5;
  v6 = v5;
  [DMCAppWait waitForDDMAppConfigurationsWithProfileIdentifier:a3 completionHandler:v7];
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
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 activationRecordIndicatesCloudConfigurationIsAvailable];
  if ((v3 & 1) == 0)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "No cloud configuration according to activation record.", v6, 2u);
    }
  }

  return v3;
}

- (id)existingCloudConfigOnDisk
{
  v2 = [MEMORY[0x277D24640] sharedConfiguration];
  [v2 refreshDetailsFromDisk];

  v3 = [MEMORY[0x277D24640] sharedConfiguration];
  v4 = [v3 details];

  return v4;
}

- (void)fetchCloudConfigWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
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
  v8 = v3;
  v6 = v3;
  [v4 retrieveCloudConfigurationDetailsCompletionBlock:v7];
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

- (void)storeCloudConfig:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 storeCloudConfigurationDetails:v7 completion:v6];
}

- (void)removeCloudConfigWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 storeCloudConfigurationDetails:0 completion:v4];
}

- (void)removeSetAsideCloudConfigWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 removeSetAsideCloudConfigurationProfileWithCompletion:v4];
}

- (void)removePendingCloudConfigWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 storePendingCloudConfigurationDetailsForMigration:0 completionHandler:v4];
}

- (void)awaitStoredProfileInstallationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(DMCEnrollmentFlowManagedConfigurationHelper *)self isStoredProfileInstalled])
  {
    v4[2]();
  }

  else
  {
    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitStoredProfileInstallationCompletionHandler:v4];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__cloudConfigDidChange_ name:*MEMORY[0x277D25C90] object:0];
  }
}

- (void)awaitDeviceConfiguredWithCompletionHandler:(id)a3
{
  v6 = a3;
  if ([(DMCEnrollmentFlowManagedConfigurationHelper *)self isDeviceConfigured])
  {
    v6[2]();
  }

  else
  {
    if ([MEMORY[0x277D03500] shouldSimulateMDMCommunication])
    {
      v4 = dispatch_time(0, 2000000000);
      dispatch_after(v4, MEMORY[0x277D85CD0], &__block_literal_global_110);
    }

    [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitDeviceConfigurationCompletionHandler:v6];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__cloudConfigDidChange_ name:*MEMORY[0x277D25C90] object:0];
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
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAwaitingDeviceConfigured];

  return v3 ^ 1;
}

- (void)_cloudConfigDidChange:(id)a3
{
  v4 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitStoredProfileInstallationCompletionHandler];

  if (v4)
  {
    v5 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self isStoredProfileInstalled];
    v6 = *DMCLogObjects();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Stored profile installed!", buf, 2u);
      }

      v8 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitStoredProfileInstallationCompletionHandler];
      v8[2]();

      [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitStoredProfileInstallationCompletionHandler:0];
    }

    else if (v7)
    {
      *v18 = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "Cloud config changed but stored profile is not installed.", v18, 2u);
    }
  }

  v9 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitDeviceConfigurationCompletionHandler];

  if (v9)
  {
    v10 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self isDeviceConfigured];
    v11 = *DMCLogObjects();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *v17 = 0;
        _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_DEFAULT, "Device is configured!", v17, 2u);
      }

      v13 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitDeviceConfigurationCompletionHandler];
      v13[2]();

      [(DMCEnrollmentFlowManagedConfigurationHelper *)self setAwaitDeviceConfigurationCompletionHandler:0];
    }

    else if (v12)
    {
      *v16 = 0;
      _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_DEFAULT, "Cloud config changed but device is not configured.", v16, 2u);
    }
  }

  v14 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitDeviceConfigurationCompletionHandler];
  if (v14)
  {
    goto LABEL_16;
  }

  v15 = [(DMCEnrollmentFlowManagedConfigurationHelper *)self awaitStoredProfileInstallationCompletionHandler];

  if (!v15)
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 removeObserver:self];
LABEL_16:
  }
}

- (void)restoreSetAsideCloudConfigAndProfilesWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:v4];
}

- (void)markCloudConfigurationAsUICompletedWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 cloudConfigurationUIDidCompleteWasApplied:1 completionHandler:v4];
}

- (void)markStoredProfileAsInstalled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  [v2 markStoredProfileAsInstalled];
}

- (void)unassignFromDEPWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 unenrollWithCompletionBlock:v4];
}

- (void)initiateDEPPushTokenSyncWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 monitorDEPPushTokenIfNeededWithCompletion:v4];
}

- (void)removeProtectedProfileWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 removeProtectedProfileAsyncWithIdentifier:v7 installationType:1 completion:v6];
}

- (void)generateAndSyncBootstrapTokenWithPasscode:(id)a3 passcodeContext:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D24638];
  v9 = a5;
  v10 = [v8 sharedClient];
  if (v12)
  {
    v11 = [v12 dataUsingEncoding:4];
    [v10 generateAndSyncBootstrapTokenWithDevicePasscode:v11 completionHandler:v9];

    v9 = v11;
  }

  else
  {
    [v10 generateAndSyncBootstrapTokenWithDevicePasscodeContext:v7 completionHandler:v9];
  }
}

- (void)blockMDMCommandsWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 blockMDMCommandsWithCompletion:v4];
}

- (void)unblockMDMCommandsWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 unblockMDMCommandsWithCompletion:v4];
}

- (void)enablePushWakeWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 enablePushWakeWithCompletion:v4];
}

- (void)disablePushWakeWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277D24638];
  v4 = a3;
  v5 = [v3 sharedClient];
  [v5 disablePushWakeWithCompletion:v4];
}

- (void)evaluateMigrationStatusWithPollFromServer:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D24638];
  v6 = a4;
  v7 = [v5 sharedClient];
  [v7 evaluateMigrationStatusWithPollFromServer:v4 completionHandler:v6];
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