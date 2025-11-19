@interface HDCloudSyncRemoveSharingParticipantsOperation
- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 participantsToRemove:(id)a5;
- (void)main;
@end

@implementation HDCloudSyncRemoveSharingParticipantsOperation

- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncRemoveSharingParticipantsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 participantsToRemove:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = HDCloudSyncRemoveSharingParticipantsOperation;
  v9 = [(HDCloudSyncOperation *)&v16 initWithConfiguration:a3 cloudState:a4];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [v8 copy];
    participantsToRemove = v10->_participantsToRemove;
    v10->_participantsToRemove = v11;

    v13 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v10->_taskGroup;
    v10->_taskGroup = v13;

    [(HDSynchronousTaskGroup *)v10->_taskGroup setDelegate:v10];
  }

  return v10;
}

- (void)main
{
  v2 = self;
  v103 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 allCKContainers];
  v6 = [v5 count];
  v7 = [(HDCloudSyncOperation *)v2 progress];
  [v7 setTotalUnitCount:v6];

  [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v8 = [(HDCloudSyncOperation *)v2 configuration];
  v9 = [v8 repository];
  v10 = [v9 allCKContainers];

  obj = v10;
  v70 = [v10 countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v70)
  {
    v69 = *v78;
    *&v11 = 138543618;
    v64 = v11;
    v65 = v2;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v78 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v77 + 1) + 8 * i);
        [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
        v14 = v2->_participantsToRemove;
        v15 = v13;
        v16 = [(HDCloudSyncOperation *)v2 configuration];
        v17 = [v16 cachedCloudState];
        v86 = 0;
        v18 = [v17 zonesByIdentifierWithError:&v86];
        v19 = v86;

        v71 = v18;
        if (v18 || !v19)
        {
          v67 = v19;
          v68 = i;
          v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
          memset(buf, 0, sizeof(buf));
          v101 = 0u;
          v102 = 0u;
          v76 = [v18 allValues];
          v24 = [v76 countByEnumeratingWithState:buf objects:v96 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = **&buf[16];
            v73 = **&buf[16];
            v74 = v15;
            while (2)
            {
              v27 = 0;
              v75 = v25;
              do
              {
                if (**&buf[16] != v26)
                {
                  objc_enumerationMutation(v76);
                }

                v28 = *(*&buf[8] + 8 * v27);
                v29 = [v28 zoneIdentifier];
                v30 = [v29 containerIdentifier];
                v31 = [v15 containerIdentifier];
                v32 = [v30 isEqualToString:v31];

                if (v32)
                {
                  v85 = 0;
                  v33 = [v28 zoneShareWithError:&v85];
                  v34 = v85;
                  v19 = v34;
                  if (v33)
                  {
                    v35 = 1;
                  }

                  else
                  {
                    v35 = v34 == 0;
                  }

                  if (!v35)
                  {
                    _HKInitializeLogging();
                    v44 = *MEMORY[0x277CCC328];
                    v45 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
                    v2 = v65;
                    i = v68;
                    if (v45)
                    {
                      v61 = v44;
                      v62 = [v28 zoneIdentifier];
                      *v90 = 138543874;
                      v91 = v65;
                      v92 = 2114;
                      v93 = v62;
                      v94 = 2114;
                      v95 = v19;
                      _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v90, 0x20u);
                    }

                    v46 = v19;

                    v22 = 0;
                    v43 = v72;
                    goto LABEL_41;
                  }

                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v36 = [v33 participants];
                  v37 = [v36 countByEnumeratingWithState:&v81 objects:v88 count:16];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = 0;
                    v40 = *v82;
                    do
                    {
                      for (j = 0; j != v38; ++j)
                      {
                        if (*v82 != v40)
                        {
                          objc_enumerationMutation(v36);
                        }

                        v42 = *(*(&v81 + 1) + 8 * j);
                        if ([(NSSet *)v14 containsObject:v42])
                        {
                          [v33 removeParticipant:v42];
                          v39 = 1;
                        }
                      }

                      v38 = [v36 countByEnumeratingWithState:&v81 objects:v88 count:16];
                    }

                    while (v38);

                    v26 = v73;
                    v15 = v74;
                    if (v39)
                    {
                      [v72 addObject:v33];
                    }
                  }

                  else
                  {
                  }

                  v25 = v75;
                }

                ++v27;
              }

              while (v27 != v25);
              v25 = [v76 countByEnumeratingWithState:buf objects:v96 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v43 = v72;
          v22 = v72;
          v19 = 0;
          v2 = v65;
          i = v68;
LABEL_41:

          v23 = v67;
        }

        else
        {
          _HKInitializeLogging();
          v20 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v96 = v64;
            *&v96[4] = v2;
            *&v96[12] = 2114;
            *&v96[14] = v19;
            _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", v96, 0x16u);
          }

          v21 = v19;
          v22 = 0;
          v23 = v19;
        }

        v47 = v19;
        v48 = v47;
        if (v22 || !v47)
        {
          if ([v22 count])
          {
            v49 = i;
            v50 = v22;
            v51 = v15;
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              v54 = [v50 count];
              v55 = [v51 containerIdentifier];
              *buf = 138543874;
              *&buf[4] = v2;
              *&buf[12] = 2048;
              *&buf[14] = v54;
              *&buf[22] = 2114;
              *&buf[24] = v55;
              _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld updated share records in %{public}@", buf, 0x20u);
            }

            v56 = [HDCloudSyncModifyRecordsOperation alloc];
            v57 = [(HDCloudSyncOperation *)v2 configuration];
            v58 = [(HDCloudSyncModifyRecordsOperation *)v56 initWithConfiguration:v57 container:v51 recordsToSave:v50 recordIDsToDelete:0];

            [(HDCloudSyncModifyRecordsOperation *)v58 setTreatAnyErrorAsFatal:1];
            *v96 = MEMORY[0x277D85DD0];
            *&v96[8] = 3221225472;
            *&v96[16] = __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke;
            v97 = &unk_278616348;
            v98 = v2;
            v59 = v51;
            v99 = v59;
            [(HDCloudSyncOperation *)v58 setOnError:v96];
            v88[0] = MEMORY[0x277D85DD0];
            v88[1] = 3221225472;
            v88[2] = __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke_299;
            v88[3] = &unk_278614BA8;
            v88[4] = v2;
            v60 = v59;
            v89 = v60;
            [(HDCloudSyncOperation *)v58 setOnSuccess:v88];
            [(HDCloudSyncOperation *)v58 start];

            i = v49;
          }

          else
          {
            [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
          }
        }

        else
        {
          [(HDSynchronousTaskGroup *)v2->_taskGroup failTaskWithError:v47];
        }
      }

      v70 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v70);
  }

  [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
  v63 = *MEMORY[0x277D85DE8];
}

void __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = [v7 containerIdentifier];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update share records in %{public}@: %{public}@", &v11, 0x20u);
  }

  [*(*(a1 + 32) + 112) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HDCloudSyncRemoveSharingParticipantsOperation__saveUpdatedShares_container___block_invoke_299(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 containerIdentifier];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated share records in %{public}@", &v9, 0x16u);
  }

  result = [*(*(a1 + 32) + 112) finishTask];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end