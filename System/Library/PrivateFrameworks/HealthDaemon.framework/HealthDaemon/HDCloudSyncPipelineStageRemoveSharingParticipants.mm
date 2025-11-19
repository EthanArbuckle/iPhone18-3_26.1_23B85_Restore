@interface HDCloudSyncPipelineStageRemoveSharingParticipants
- (HDCloudSyncRemoveSharingParticipantsOperation)_delegateToOperationForRemoveSharingParticipants:(void *)a1;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageRemoveSharingParticipants

- (void)main
{
  v57 = *MEMORY[0x277D85DE8];
  if (self->_removeAllParticipants)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = [(HDCloudSyncOperation *)self configuration];
    v5 = [v4 cachedCloudState];
    v48 = 0;
    v6 = [v5 zonesByIdentifierWithError:&v48];
    v7 = v48;

    if (v6 || !v7)
    {
      v33 = v7;
      v34 = v6;
      v35 = self;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = [v6 allValues];
      v12 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v12)
      {
        v13 = v12;
        v37 = *v45;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v45 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v44 + 1) + 8 * i);
            v43 = 0;
            v16 = [v15 zoneShareWithError:&v43];
            v17 = v43;
            v18 = v17;
            if (v16)
            {
              v19 = 1;
            }

            else
            {
              v19 = v17 == 0;
            }

            if (!v19)
            {
              _HKInitializeLogging();
              v28 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v31 = v28;
                v32 = [v15 zoneIdentifier];
                *buf = 138543874;
                v51 = v35;
                v52 = 2114;
                v53 = v32;
                v54 = 2114;
                v55 = v18;
                _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", buf, 0x20u);
              }

              [(HDCloudSyncOperation *)v35 finishWithSuccess:0 error:v18];

              goto LABEL_37;
            }

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v20 = [v16 participants];
            v21 = [v20 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v40;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v40 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v39 + 1) + 8 * j);
                  if ([v25 role] != 1)
                  {
                    [v3 addObject:v25];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v39 objects:v49 count:16];
              }

              while (v22);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v26 = [(HDCloudSyncPipelineStageRemoveSharingParticipants *)v35 _delegateToOperationForRemoveSharingParticipants:v3];
LABEL_37:
      v7 = v33;
      v6 = v34;
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v51 = self;
        v52 = 2114;
        v53 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];
    }

    goto LABEL_39;
  }

  participantsToRemove = self->_participantsToRemove;
  if (participantsToRemove)
  {
    v11 = [(HDCloudSyncPipelineStageRemoveSharingParticipants *)self _delegateToOperationForRemoveSharingParticipants:?];
LABEL_39:
    v30 = *MEMORY[0x277D85DE8];
    return;
  }

  v38 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"_participantsToRemove" class:objc_opt_class() selector:a2];
  [(HDCloudSyncOperation *)self finishWithSuccess:0 error:?];
  v27 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncRemoveSharingParticipantsOperation)_delegateToOperationForRemoveSharingParticipants:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [HDCloudSyncRemoveSharingParticipantsOperation alloc];
    v5 = [a1 configuration];
    v6 = [a1 cloudState];
    v7 = [(HDCloudSyncRemoveSharingParticipantsOperation *)v4 initWithConfiguration:v5 cloudState:v6 participantsToRemove:v3];

    [a1 delegateToOperation:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end