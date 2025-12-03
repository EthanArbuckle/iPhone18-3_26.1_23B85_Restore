@interface HDProfileStoreServer
+ (id)requiredEntitlements;
- (void)dealloc;
- (void)profileListDidChange;
- (void)remote_createProfileOfType:(int64_t)type displayName:(id)name completion:(id)completion;
- (void)remote_deleteProfile:(id)profile completion:(id)completion;
- (void)remote_fetchDisplayImageData:(id)data;
- (void)remote_fetchDisplayNameWithCompletion:(id)completion;
- (void)remote_fetchSharingInformationForProfileIdentifier:(id)identifier completion:(id)completion;
- (void)remote_getAllProfilesWithCompletion:(id)completion;
- (void)remote_profileIdentifierForNRDeviceUUID:(id)d completion:(id)completion;
- (void)remote_profileIdentifierForNRDeviceUUID:(id)d ownerAppleID:(id)iD completion:(id)completion;
- (void)remote_setDisplayFirstName:(id)name lastName:(id)lastName completion:(id)completion;
- (void)remote_setDisplayImageData:(id)data completion:(id)completion;
- (void)remote_startObservingWithCompletion:(id)completion;
@end

@implementation HDProfileStoreServer

- (void)dealloc
{
  _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
  [_profileManager removeProfileManagerObserver:self];

  v4.receiver = self;
  v4.super_class = HDProfileStoreServer;
  [(HDProfileStoreServer *)&v4 dealloc];
}

- (void)remote_createProfileOfType:(int64_t)type displayName:(id)name completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  nameCopy = name;
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Creating new profile of type %ld", buf, 0xCu);
  }

  _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
  v15 = 0;
  v12 = [_profileManager createProfileOfType:type displayName:nameCopy error:&v15];

  v13 = v15;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)remote_deleteProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  profileIdentifier = [profile profileIdentifier];
  v11 = [profileIdentifier isEqual:profileCopy];

  if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Delete profile called on health store of the same profile."];
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
    v14 = [_profileManager profileForIdentifier:profileCopy];

    if ([v14 profileType] == 1)
    {
      v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Cannot delete primary profile."];
      completionCopy[2](completionCopy, 0, v12);
    }

    else
    {
      _profileManager2 = [(HDHealthStoreProviderServer *)self _profileManager];
      v17 = 0;
      v16 = [_profileManager2 deleteProfile:profileCopy error:&v17];
      v12 = v17;

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v16, v12);
      }
    }
  }
}

- (void)remote_getAllProfilesWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
    allProfileIdentifiers = [_profileManager allProfileIdentifiers];
    (*(completion + 2))(completionCopy, allProfileIdentifiers, 0);
  }
}

- (void)remote_setDisplayFirstName:(id)name lastName:(id)lastName completion:(id)completion
{
  nameCopy = name;
  lastNameCopy = lastName;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = completionCopy;
  }

  else
  {
    v12 = &__block_literal_global_121;
  }

  if (nameCopy)
  {
    profile = [(HDStandardTaskServer *)self profile];
    v17 = 0;
    v14 = [profile setDisplayFirstName:nameCopy lastName:lastNameCopy error:&v17];
    v15 = v17;

    v12[2](v12, v14, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Display name must not be nil."];
    v12[2](v12, 0, v16);
  }
}

- (void)remote_profileIdentifierForNRDeviceUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy)
    {
      _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
      v9 = [_profileManager profileAssociatedWithNRDeviceUUID:dCopy];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      completionCopy[2](completionCopy, v10, 0);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"NRDevice must not be nil."];
      (completionCopy)[2](completionCopy, 0, v9);
    }
  }
}

- (void)remote_profileIdentifierForNRDeviceUUID:(id)d ownerAppleID:(id)iD completion:(id)completion
{
  v90 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v59 = completionCopy;
    if (dCopy)
    {
      _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
      allProfileIdentifiers = [_profileManager allProfileIdentifiers];

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = allProfileIdentifiers;
      v13 = [obj countByEnumeratingWithState:&v74 objects:v89 count:16];
      if (v13)
      {
        v14 = 0;
        v15 = *v75;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v75 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v74 + 1) + 8 * i);
            _profileManager2 = [(HDHealthStoreProviderServer *)self _profileManager];
            v19 = [_profileManager2 profileForIdentifier:v17];

            if (v19)
            {
              if ([v19 profileType] == 3)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  currentHandler = [MEMORY[0x277CCA890] currentHandler];
                  [currentHandler handleFailureInMethod:a2 object:self file:@"HDProfileStoreServer.m" lineNumber:174 description:{@"Profile %@ is of type Tinker but is not an instance of type HDTinkerProfile (#t0)", v19}];
                }

                v19 = v19;
                v73 = 0;
                v20 = [v19 pairedNRDeviceUUIDWithError:&v73];
                v21 = v73;
                if (v20)
                {
                  if ([v20 isEqual:dCopy])
                  {
                    v59[2](v59, v17, 0);

                    goto LABEL_51;
                  }
                }

                else
                {
                  v23 = v14;
                  if (!v14)
                  {
                    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  v14 = v23;
                  [v23 addObject:v19];
                }
              }
            }

            else
            {
              _HKInitializeLogging();
              v22 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = v17;
                _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Profile is nil for profileIdentifier: %{public}@", buf, 0x16u);
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v74 objects:v89 count:16];
        }

        while (v13);

        if (v14)
        {
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Found profiles with missing NRDevice UUID. Fetch share owner participant email address.", buf, 0xCu);
          }

          if (!iDCopy)
          {
            v52 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Owner appleID is nil."];
            (v59)[2](v59, 0, v52);

            goto LABEL_51;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v86 = __Block_byref_object_copy__112;
          v87 = __Block_byref_object_dispose__112;
          v88 = 0;
          v56 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:iDCopy];
          v26 = dispatch_semaphore_create(0);
          profile = [(HDStandardTaskServer *)self profile];
          cloudSyncManager = [profile cloudSyncManager];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __88__HDProfileStoreServer_remote_profileIdentifierForNRDeviceUUID_ownerAppleID_completion___block_invoke;
          v69[3] = &unk_2786230C8;
          v69[4] = self;
          v70 = iDCopy;
          v72 = buf;
          dsema = v26;
          v71 = dsema;
          v29 = [cloudSyncManager lookupParticipantWithIdentityLookUpInfo:v56 completion:v69];

          v30 = dispatch_time(0, 15000000000);
          if (dispatch_semaphore_wait(dsema, v30))
          {
            _HKInitializeLogging();
            v31 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v78 = 138543362;
              selfCopy2 = self;
              _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Timed out waiting for owner participant from CloudKit.", v78, 0xCu);
            }
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v32 = v14;
          v33 = [v32 countByEnumeratingWithState:&v65 objects:v84 count:16];
          if (v33)
          {
            v57 = v32;
            v58 = *v66;
            while (2)
            {
              v34 = v33;
              for (j = 0; j != v34; ++j)
              {
                if (*v66 != v58)
                {
                  objc_enumerationMutation(v57);
                }

                v36 = *(*(&v65 + 1) + 8 * j);
                cloudSyncManager2 = [v36 cloudSyncManager];
                v64 = 0;
                v38 = [cloudSyncManager2 shareOwnerParticipantWithError:&v64];
                v39 = v64;

                if (v38)
                {
                  v40 = 1;
                }

                else
                {
                  v40 = v39 == 0;
                }

                if (v40)
                {
                  userIdentity = [v38 userIdentity];
                  lookupInfo = [userIdentity lookupInfo];
                  emailAddress = [lookupInfo emailAddress];

                  userIdentity2 = [*(*&buf[8] + 40) userIdentity];
                  lookupInfo2 = [userIdentity2 lookupInfo];
                  emailAddress2 = [lookupInfo2 emailAddress];

                  if (emailAddress && [emailAddress isEqualToString:emailAddress2])
                  {
                    v63 = 0;
                    [v36 setPairedNRDeviceUUID:dCopy error:&v63];
                    v53 = v63;
                    profileIdentifier = [v36 profileIdentifier];
                    v59[2](v59, profileIdentifier, 0);

                    v49 = 0;
                    goto LABEL_55;
                  }
                }

                else
                {
                  _HKInitializeLogging();
                  v38 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    profileIdentifier2 = [v36 profileIdentifier];
                    *v78 = 138543874;
                    selfCopy2 = self;
                    v80 = 2114;
                    v81 = profileIdentifier2;
                    v82 = 2114;
                    v83 = v39;
                    _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Error retrieving share owner participant for tinker profile %{public}@, %{public}@", v78, 0x20u);
                  }
                }
              }

              v33 = [v57 countByEnumeratingWithState:&v65 objects:v84 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }

            v49 = 1;
LABEL_55:
            v32 = v57;
          }

          else
          {
            v49 = 1;
          }

          v14 = v32;

          _Block_object_dispose(buf, 8);
          if ((v49 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {

        v14 = 0;
      }

      v59[2](v59, 0, 0);
LABEL_51:

      v10 = v59;
      goto LABEL_52;
    }

    v50 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"NRDevice must not be nil."];
    v10 = v59;
    (v59)[2](v59, 0, v50);
  }

LABEL_52:

  v51 = *MEMORY[0x277D85DE8];
}

void __88__HDProfileStoreServer_remote_profileIdentifierForNRDeviceUUID_ownerAppleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15 = 138543874;
        v16 = v13;
        v17 = 2114;
        v18 = v14;
        v19 = 2114;
        v20 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Error retrieving share owner participant for owner ID %{public}@, %{public}@", &v15, 0x20u);
      }
    }
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 48));
  v12 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchDisplayNameWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__112;
    v24 = __Block_byref_object_dispose__112;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__112;
    v18 = __Block_byref_object_dispose__112;
    v19 = 0;
    profile = [(HDStandardTaskServer *)self profile];
    database = [profile database];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HDProfileStoreServer_remote_fetchDisplayNameWithCompletion___block_invoke;
    v12[3] = &unk_27861F358;
    v12[4] = self;
    v12[5] = &v20;
    v12[6] = &v14;
    v13 = 0;
    v7 = [database performHighPriorityTransactionsWithError:&v13 block:v12];
    v8 = v13;

    if (v7)
    {
      v9 = 0;
      v10 = v21[5];
      v11 = v15[5];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v9 = v8;
    }

    completionCopy[2](completionCopy, v10, v11, v9);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }
}

uint64_t __62__HDProfileStoreServer_remote_fetchDisplayNameWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  v8 = *(v5 + 8);
  v11 = *(v8 + 40);
  obj = v7;
  v9 = [v4 fetchDisplayFirstName:&obj lastName:&v11 error:a2];
  objc_storeStrong((v6 + 40), obj);
  objc_storeStrong((v8 + 40), v11);

  return v9;
}

- (void)remote_fetchDisplayImageData:(id)data
{
  dataCopy = data;
  profile = [(HDStandardTaskServer *)self profile];
  v8 = 0;
  v6 = [profile fetchDisplayImageDataWithError:&v8];
  v7 = v8;

  dataCopy[2](dataCopy, v6, v7);
}

- (void)remote_setDisplayImageData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [profile setDisplayImageData:dataCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_startObservingWithCompletion:(id)completion
{
  completionCopy = completion;
  _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
  [_profileManager addProfileManagerObserver:self];

  completionCopy[2]();
}

- (void)remote_fetchSharingInformationForProfileIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
  v10 = [_profileManager profileForIdentifier:identifierCopy];

  if (v10)
  {
    v19 = 0;
    v11 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity retrieveDatabaseIdentifierCreationDateFromProfile:v10 error:&v19];
    v12 = v19;
    cloudSyncManager = [v10 cloudSyncManager];
    v18 = 0;
    v14 = [cloudSyncManager shareOwnerParticipantWithError:&v18];
    v15 = v18;

    v16 = [v14 description];
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v15;
    }

    (completionCopy)[2](completionCopy, v11, v16, v17);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"No profile for identifier %@", identifierCopy}];
    (completionCopy)[2](completionCopy, 0, 0, v11);
  }
}

- (void)profileListDidChange
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HDProfileStoreServer_profileListDidChange__block_invoke;
  v3[3] = &unk_2786138D0;
  v3[4] = self;
  v2 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v3];
  [v2 client_remoteDidUpdateProfileList];
}

void __44__HDProfileStoreServer_profileListDidChange__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC318];
  if (os_log_type_enabled(*MEMORY[0x277CCC318], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: failed to notify client of profile changes due to: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end