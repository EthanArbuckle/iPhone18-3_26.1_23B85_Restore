@interface HDCloudSyncUpdateSharingStatusOperation
- (void)_finishOperationWithParticipantSharingStatus:(void *)a1;
- (void)main;
@end

@implementation HDCloudSyncUpdateSharingStatusOperation

- (void)main
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 syncAvailability];

  if ([v5 shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(v5, "shouldSyncSummarySharingPush"))
  {
    v6 = [(HDCloudSyncOperation *)self configuration];
    v7 = [v6 cachedCloudState];
    v50 = 0;
    v8 = [v7 zonesByIdentifierWithError:&v50];
    v9 = v50;

    if (v8 || !v9)
    {
      v11 = [v8 allValues];
      v12 = v11;
      if (v11)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = v11;
        v39 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v39)
        {
          v38 = *v47;
          *&v13 = 138543874;
          v34 = v13;
          v36 = v9;
          v37 = v8;
          v35 = v12;
          do
          {
            v14 = 0;
            v15 = v38;
            v16 = v39;
            do
            {
              if (*v47 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v46 + 1) + 8 * v14);
              v45 = 0;
              v18 = [v17 zoneShareWithError:{&v45, v34}];
              v19 = v45;
              v20 = v19;
              if (v18)
              {
                v21 = 1;
              }

              else
              {
                v21 = v19 == 0;
              }

              if (v21)
              {
                if (v18)
                {
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  v22 = [v18 participants];
                  v23 = [v22 countByEnumeratingWithState:&v41 objects:v51 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v42;
                    while (2)
                    {
                      for (i = 0; i != v24; ++i)
                      {
                        if (*v42 != v25)
                        {
                          objc_enumerationMutation(v22);
                        }

                        v27 = *(*(&v41 + 1) + 8 * i);
                        if ([v27 acceptanceStatus] == 2 || objc_msgSend(v27, "acceptanceStatus") == 1)
                        {
                          [(HDCloudSyncUpdateSharingStatusOperation *)self _finishOperationWithParticipantSharingStatus:?];

                          v9 = v36;
                          v8 = v37;
                          v12 = v35;
                          goto LABEL_40;
                        }
                      }

                      v24 = [v22 countByEnumeratingWithState:&v41 objects:v51 count:16];
                      v15 = v38;
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v16 = v39;
                }
              }

              else
              {
                _HKInitializeLogging();
                v28 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v30 = v28;
                  v31 = [v17 zoneIdentifier];
                  *buf = v34;
                  v53 = self;
                  v54 = 2114;
                  v55 = v31;
                  v56 = 2114;
                  v57 = v20;
                  _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached CKShare for zone %{public}@, %{public}@", buf, 0x20u);
                }
              }

              ++v14;
            }

            while (v14 != v16);
            v9 = v36;
            v8 = v37;
            v12 = v35;
            v39 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v39);
        }
      }

      [(HDCloudSyncUpdateSharingStatusOperation *)self _finishOperationWithParticipantSharingStatus:?];
LABEL_40:
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v53 = self;
        v54 = 2114;
        v55 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v9];
    }
  }

  else
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v53 = self;
      _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping operation because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_finishOperationWithParticipantSharingStatus:(void *)a1
{
  if (a1)
  {
    v4 = [a1 profile];
    v5 = HDTinkerProtectedKeyValueDomainWithProfile(v4);

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v9 = 0;
    v7 = [v5 setNumber:v6 forKey:@"HDCloudSyncSharingStatusKey" error:&v9];
    v8 = v9;

    [a1 finishWithSuccess:v7 error:v8];
  }
}

@end