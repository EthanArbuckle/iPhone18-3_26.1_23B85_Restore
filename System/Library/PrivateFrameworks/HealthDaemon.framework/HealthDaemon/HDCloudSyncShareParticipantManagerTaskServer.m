@interface HDCloudSyncShareParticipantManagerTaskServer
- (void)remote_fetchAllShareParticipantEmailAddressesForSharingType:(unint64_t)a3 completion:(id)a4;
- (void)remote_fetchSharingParticipantStatus:(id)a3;
- (void)remote_revokeAccessForAllShareParticipantsForSharingType:(unint64_t)a3 completion:(id)a4;
- (void)remote_tearDownHealthSharingForProfile:(id)a3 completion:(id)a4;
@end

@implementation HDCloudSyncShareParticipantManagerTaskServer

- (void)remote_fetchSharingParticipantStatus:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = HDTinkerProtectedKeyValueDomainWithProfile(v5);

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__121;
  v23 = __Block_byref_object_dispose__121;
  v24 = 0;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchSharingParticipantStatus___block_invoke;
  v15[3] = &unk_27861A418;
  v17 = &v19;
  v18 = 0;
  v9 = v6;
  v16 = v9;
  [v8 performHighPriorityTransactionsWithError:&v18 block:v15];
  v10 = v18;

  v11 = v20[5];
  if (v11)
  {
    v12 = [v11 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v10;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch participant share status. Error: %{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

  v4[2](v4, v12);

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchSharingParticipantStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) numberForKey:@"HDCloudSyncSharingStatusKey" error:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_fetchAllShareParticipantEmailAddressesForSharingType:(unint64_t)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 cloudSyncManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __119__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchAllShareParticipantEmailAddressesForSharingType_completion___block_invoke;
  v16[3] = &unk_27861B2F8;
  v16[4] = self;
  v17 = v7;
  v13 = v7;
  v14 = [v12 fetchShareParticipantsForSharingType:a3 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __119__HDCloudSyncShareParticipantManagerTaskServer_remote_fetchAllShareParticipantEmailAddressesForSharingType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 || !v5)
  {
    v33 = v5;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v10 = 0;
      v13 = *v36;
      v14 = 0x277CBE000uLL;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          if ([v16 role] != 1)
          {
            if (!v10)
            {
              v10 = objc_alloc_init(*(v14 + 2904));
            }

            v17 = [v16 userIdentity];
            v18 = [v17 lookupInfo];
            v19 = [v18 emailAddress];

            if (v19)
            {
              v20 = [v16 userIdentity];
              v21 = [v20 lookupInfo];
              v22 = [v21 emailAddress];
              [v10 addObject:v22];
            }

            else
            {
              _HKInitializeLogging();
              v23 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                v24 = *(a1 + 32);
                v25 = v23;
                v26 = [v16 userIdentity];
                v27 = [v26 lookupInfo];
                *buf = 138543874;
                v40 = v24;
                v14 = 0x277CBE000;
                v41 = 2114;
                v42 = v16;
                v43 = 2114;
                v44 = v27;
                _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "%{public}@ Received nil email address for fetched share participant %{public}@ with lookup info %{public}@", buf, 0x20u);
              }
            }
          }
        }

        v12 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v12);
    }

    else
    {
      v10 = 0;
    }

    v28 = *(a1 + 40);
    v29 = [v10 allObjects];
    (*(v28 + 16))(v28, v29, 0);

    v6 = v33;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 32);
      *buf = 138543618;
      v40 = v32;
      v41 = 2114;
      v42 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch participants from cloud zones, error: %{public}@", buf, 0x16u);
    }

    v8 = [v6 hd_cloudKitErrorRequiringUserAction];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = v8;
      (*(v9 + 16))(*(a1 + 40), 0, v8);
    }

    else
    {
      v30 = [v6 hk_sanitizedError];
      (*(v9 + 16))(v9, 0, v30);

      v10 = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)remote_revokeAccessForAllShareParticipantsForSharingType:(unint64_t)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC328];
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v21 = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v21, 0x16u);
  }

  v12 = [(HDStandardTaskServer *)self profile];
  v13 = [v12 profileType];

  if (v13 == 1)
  {
    v14 = [(HDStandardTaskServer *)self profile];
    v15 = [v14 cloudSyncManager];
    v16 = [v15 removeAllParticipantsForSharingType:a3 completion:v7];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v19 = v17;
      v20 = NSStringFromSelector(a2);
      v21 = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v20;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Called on non-primary profile. Abort.", &v21, 0x16u);
    }

    v14 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Revoke access for all share participants called on non-primary profile."];
    v7[2](v7, 0, v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)remote_tearDownHealthSharingForProfile:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v36 = self;
    v37 = 2114;
    v38 = v12;
    v39 = 2114;
    v40 = v7;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ called for profile %{public}@", buf, 0x20u);
  }

  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 profileType];

  if (v14 == 1)
  {
    v15 = [(HDStandardTaskServer *)self profile];
    v16 = [v15 daemon];
    v17 = [v16 profileManager];

    v18 = [v17 profileForIdentifier:v7];
    v19 = v18;
    if (v18)
    {
      if ([v18 profileType] != 1)
      {
        v24 = [v19 cloudSyncManager];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __98__HDCloudSyncShareParticipantManagerTaskServer_remote_tearDownHealthSharingForProfile_completion___block_invoke;
        v31[3] = &unk_278613150;
        v32 = v17;
        v33 = v7;
        v34 = v8;
        v25 = [v24 leaveSharesWithCompletion:v31];

        v23 = v32;
        goto LABEL_15;
      }

      _HKInitializeLogging();
      v20 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v29 = v20;
        v30 = NSStringFromSelector(a2);
        *buf = 138543618;
        v36 = self;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Called for primary profile. Abort.", buf, 0x16u);
      }

      v21 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Tear down health sharing called for primary profile."];
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"No profile for identifier %@.", v7}];
    }

    v23 = v21;
    (*(v8 + 2))(v8, 0, v21);
LABEL_15:

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v22 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v27 = v22;
    v28 = NSStringFromSelector(a2);
    *buf = 138543618;
    v36 = self;
    v37 = 2114;
    v38 = v28;
    _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Must be called on primary profile participant manager. Abort.", buf, 0x16u);
  }

  v17 = [MEMORY[0x277CCA9B8] hk_error:127 class:objc_opt_class() selector:a2 format:@"Tear down health sharing not called on primary profile participant manager."];
  (*(v8 + 2))(v8, 0, v17);
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

void __98__HDCloudSyncShareParticipantManagerTaskServer_remote_tearDownHealthSharingForProfile_completion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = a1[4];
    v8 = a1[5];
    v13 = 0;
    [v7 deleteProfile:v8 error:&v13];
    v9 = v13;
    (*(a1[6] + 16))();
  }

  else
  {
    v10 = [v5 hd_cloudKitErrorRequiringUserAction];
    v11 = a1[6];
    if (v10)
    {
      (*(v11 + 16))(v11, 0, v10);
    }

    else
    {
      v12 = [v6 hk_sanitizedError];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

@end