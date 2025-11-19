@interface HDProfileStoreServer
+ (id)requiredEntitlements;
- (void)dealloc;
- (void)profileListDidChange;
- (void)remote_createProfileOfType:(int64_t)a3 displayName:(id)a4 completion:(id)a5;
- (void)remote_deleteProfile:(id)a3 completion:(id)a4;
- (void)remote_fetchDisplayImageData:(id)a3;
- (void)remote_fetchDisplayNameWithCompletion:(id)a3;
- (void)remote_fetchSharingInformationForProfileIdentifier:(id)a3 completion:(id)a4;
- (void)remote_getAllProfilesWithCompletion:(id)a3;
- (void)remote_profileIdentifierForNRDeviceUUID:(id)a3 completion:(id)a4;
- (void)remote_profileIdentifierForNRDeviceUUID:(id)a3 ownerAppleID:(id)a4 completion:(id)a5;
- (void)remote_setDisplayFirstName:(id)a3 lastName:(id)a4 completion:(id)a5;
- (void)remote_setDisplayImageData:(id)a3 completion:(id)a4;
- (void)remote_startObservingWithCompletion:(id)a3;
@end

@implementation HDProfileStoreServer

- (void)dealloc
{
  v3 = [(HDHealthStoreProviderServer *)self _profileManager];
  [v3 removeProfileManagerObserver:self];

  v4.receiver = self;
  v4.super_class = HDProfileStoreServer;
  [(HDProfileStoreServer *)&v4 dealloc];
}

- (void)remote_createProfileOfType:(int64_t)a3 displayName:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = a3;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Creating new profile of type %ld", buf, 0xCu);
  }

  v11 = [(HDHealthStoreProviderServer *)self _profileManager];
  v15 = 0;
  v12 = [v11 createProfileOfType:a3 displayName:v9 error:&v15];

  v13 = v15;
  if (v8)
  {
    v8[2](v8, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)remote_deleteProfile:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 profileIdentifier];
  v11 = [v10 isEqual:v7];

  if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Delete profile called on health store of the same profile."];
    v8[2](v8, 0, v12);
  }

  else
  {
    v13 = [(HDHealthStoreProviderServer *)self _profileManager];
    v14 = [v13 profileForIdentifier:v7];

    if ([v14 profileType] == 1)
    {
      v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Cannot delete primary profile."];
      v8[2](v8, 0, v12);
    }

    else
    {
      v15 = [(HDHealthStoreProviderServer *)self _profileManager];
      v17 = 0;
      v16 = [v15 deleteProfile:v7 error:&v17];
      v12 = v17;

      if (v8)
      {
        v8[2](v8, v16, v12);
      }
    }
  }
}

- (void)remote_getAllProfilesWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v7 = [(HDHealthStoreProviderServer *)self _profileManager];
    v6 = [v7 allProfileIdentifiers];
    (*(a3 + 2))(v5, v6, 0);
  }
}

- (void)remote_setDisplayFirstName:(id)a3 lastName:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &__block_literal_global_121;
  }

  if (v9)
  {
    v13 = [(HDStandardTaskServer *)self profile];
    v17 = 0;
    v14 = [v13 setDisplayFirstName:v9 lastName:v10 error:&v17];
    v15 = v17;

    v12[2](v12, v14, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Display name must not be nil."];
    v12[2](v12, 0, v16);
  }
}

- (void)remote_profileIdentifierForNRDeviceUUID:(id)a3 completion:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v7)
  {
    if (v11)
    {
      v8 = [(HDHealthStoreProviderServer *)self _profileManager];
      v9 = [v8 profileAssociatedWithNRDeviceUUID:v11];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v7[2](v7, v10, 0);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"NRDevice must not be nil."];
      (v7)[2](v7, 0, v9);
    }
  }
}

- (void)remote_profileIdentifierForNRDeviceUUID:(id)a3 ownerAppleID:(id)a4 completion:(id)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v60 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v59 = v9;
    if (v61)
    {
      v11 = [(HDHealthStoreProviderServer *)self _profileManager];
      v12 = [v11 allProfileIdentifiers];

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v12;
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
            v18 = [(HDHealthStoreProviderServer *)self _profileManager];
            v19 = [v18 profileForIdentifier:v17];

            if (v19)
            {
              if ([v19 profileType] == 3)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v24 = [MEMORY[0x277CCA890] currentHandler];
                  [v24 handleFailureInMethod:a2 object:self file:@"HDProfileStoreServer.m" lineNumber:174 description:{@"Profile %@ is of type Tinker but is not an instance of type HDTinkerProfile (#t0)", v19}];
                }

                v19 = v19;
                v73 = 0;
                v20 = [v19 pairedNRDeviceUUIDWithError:&v73];
                v21 = v73;
                if (v20)
                {
                  if ([v20 isEqual:v61])
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

          if (!v60)
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
          v56 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:v60];
          v26 = dispatch_semaphore_create(0);
          v27 = [(HDStandardTaskServer *)self profile];
          v28 = [v27 cloudSyncManager];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __88__HDProfileStoreServer_remote_profileIdentifierForNRDeviceUUID_ownerAppleID_completion___block_invoke;
          v69[3] = &unk_2786230C8;
          v69[4] = self;
          v70 = v60;
          v72 = buf;
          dsema = v26;
          v71 = dsema;
          v29 = [v28 lookupParticipantWithIdentityLookUpInfo:v56 completion:v69];

          v30 = dispatch_time(0, 15000000000);
          if (dispatch_semaphore_wait(dsema, v30))
          {
            _HKInitializeLogging();
            v31 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v78 = 138543362;
              v79 = self;
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
                v37 = [v36 cloudSyncManager];
                v64 = 0;
                v38 = [v37 shareOwnerParticipantWithError:&v64];
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
                  v41 = [v38 userIdentity];
                  v42 = [v41 lookupInfo];
                  v43 = [v42 emailAddress];

                  v44 = [*(*&buf[8] + 40) userIdentity];
                  v45 = [v44 lookupInfo];
                  v46 = [v45 emailAddress];

                  if (v43 && [v43 isEqualToString:v46])
                  {
                    v63 = 0;
                    [v36 setPairedNRDeviceUUID:v61 error:&v63];
                    v53 = v63;
                    v54 = [v36 profileIdentifier];
                    v59[2](v59, v54, 0);

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
                    v48 = [v36 profileIdentifier];
                    *v78 = 138543874;
                    v79 = self;
                    v80 = 2114;
                    v81 = v48;
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

- (void)remote_fetchDisplayNameWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
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
    v5 = [(HDStandardTaskServer *)self profile];
    v6 = [v5 database];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HDProfileStoreServer_remote_fetchDisplayNameWithCompletion___block_invoke;
    v12[3] = &unk_27861F358;
    v12[4] = self;
    v12[5] = &v20;
    v12[6] = &v14;
    v13 = 0;
    v7 = [v6 performHighPriorityTransactionsWithError:&v13 block:v12];
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

    v4[2](v4, v10, v11, v9);
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

- (void)remote_fetchDisplayImageData:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v8 = 0;
  v6 = [v5 fetchDisplayImageDataWithError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)remote_setDisplayImageData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [v8 setDisplayImageData:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_startObservingWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(HDHealthStoreProviderServer *)self _profileManager];
  [v4 addProfileManagerObserver:self];

  v5[2]();
}

- (void)remote_fetchSharingInformationForProfileIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HDHealthStoreProviderServer *)self _profileManager];
  v10 = [v9 profileForIdentifier:v7];

  if (v10)
  {
    v19 = 0;
    v11 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity retrieveDatabaseIdentifierCreationDateFromProfile:v10 error:&v19];
    v12 = v19;
    v13 = [v10 cloudSyncManager];
    v18 = 0;
    v14 = [v13 shareOwnerParticipantWithError:&v18];
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

    (v8)[2](v8, v11, v16, v17);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"No profile for identifier %@", v7}];
    (v8)[2](v8, 0, 0, v11);
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