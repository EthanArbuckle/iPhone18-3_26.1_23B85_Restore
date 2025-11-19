@interface HDCloudSyncRemoveInvalidShareParticipantsOperation
- (HDCloudSyncRemoveInvalidShareParticipantsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (void)main;
- (void)setParticipantsToCheck:(id)a3;
- (void)setRequiredPermission:(int64_t)a3;
@end

@implementation HDCloudSyncRemoveInvalidShareParticipantsOperation

- (HDCloudSyncRemoveInvalidShareParticipantsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncRemoveInvalidShareParticipantsOperation;
  result = [(HDCloudSyncOperation *)&v5 initWithConfiguration:a3 cloudState:a4];
  if (result)
  {
    result->_requiredPermission = 3;
  }

  return result;
}

- (void)setRequiredPermission:(int64_t)a3
{
  if ([(HDCloudSyncOperation *)self status])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDCloudSyncRemoveInvalidShareParticipantsOperation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  self->_requiredPermission = a3;
}

- (void)setParticipantsToCheck:(id)a3
{
  v8 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncRemoveInvalidShareParticipantsOperation.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  v5 = [v8 copy];
  participantsToCheck = self->_participantsToCheck;
  self->_participantsToCheck = v5;
}

- (void)main
{
  v111 = *MEMORY[0x277D85DE8];
  participantsToCheck = self->_participantsToCheck;
  if (participantsToCheck && ![(NSArray *)participantsToCheck count])
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *v107 = 138543362;
      v108 = self;
      _os_log_impl(&dword_228986000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: No participants to check; nothing to do.", v107, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = self->_taskGroup;
    self->_taskGroup = v4;

    [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v6 = [(HDCloudSyncOperation *)self configuration];
    v7 = [v6 repository];
    v8 = [v7 allCKContainers];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v86;
      v65 = v82;
      v66 = v84;
      v13 = 0x277CBE000uLL;
      *&v10 = 138543874;
      v64 = v10;
      v67 = *v86;
      do
      {
        v14 = 0;
        v68 = v11;
        do
        {
          if (*v86 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v71 = v14;
          v15 = *(*(&v85 + 1) + 8 * v14);
          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask:v64];
          v74 = v15;
          v72 = objc_alloc_init(*(v13 + 2840));
          v16 = [(HDCloudSyncOperation *)self configuration];
          v17 = [v16 cachedCloudState];
          v98 = 0;
          v18 = [v17 zonesByIdentifierWithError:&v98];
          v19 = v98;

          v20 = v18;
          if (v18 || !v19)
          {
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v70 = v18;
            v25 = [v18 allValues];
            v26 = v74;
            v78 = [v25 countByEnumeratingWithState:&v94 objects:v107 count:16];
            if (v78)
            {
              v27 = *v95;
              v73 = v25;
              v79 = v19;
              v76 = *v95;
              while (2)
              {
                for (i = 0; i != v78; ++i)
                {
                  if (*v95 != v27)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v29 = *(*(&v94 + 1) + 8 * i);
                  v30 = [v29 zoneIdentifier];
                  v31 = [v30 containerIdentifier];
                  v32 = [v26 containerIdentifier];
                  v33 = [v31 isEqualToString:v32];

                  v19 = v79;
                  if (v33)
                  {
                    v77 = i;
                    v93 = 0;
                    v34 = [v29 zoneShareWithError:&v93];
                    v35 = v93;
                    v24 = v35;
                    if (v34)
                    {
                      v36 = 1;
                    }

                    else
                    {
                      v36 = v35 == 0;
                    }

                    if (!v36)
                    {
                      _HKInitializeLogging();
                      v52 = *MEMORY[0x277CCC328];
                      v53 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
                      v11 = v68;
                      if (v53)
                      {
                        v60 = v52;
                        v61 = [v29 zoneIdentifier];
                        *buf = v64;
                        v102 = self;
                        v103 = 2114;
                        v104 = v61;
                        v105 = 2114;
                        v106 = v24;
                        _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached CKShare for zone %{public}@, %{public}@", buf, 0x20u);
                      }

                      v54 = v24;

                      v23 = 0;
                      goto LABEL_52;
                    }

                    if (v34)
                    {
                      v91 = 0u;
                      v92 = 0u;
                      v89 = 0u;
                      v90 = 0u;
                      v80 = v34;
                      v37 = [v34 participants];
                      v38 = [v37 copy];

                      v39 = [v38 countByEnumeratingWithState:&v89 objects:v100 count:16];
                      if (v39)
                      {
                        v40 = v39;
                        v75 = v24;
                        v41 = 0;
                        v42 = *v90;
                        do
                        {
                          for (j = 0; j != v40; ++j)
                          {
                            if (*v90 != v42)
                            {
                              objc_enumerationMutation(v38);
                            }

                            v44 = *(*(&v89 + 1) + 8 * j);
                            if ([v44 role] != 1)
                            {
                              requiredPermission = self->_requiredPermission;
                              v46 = v44;
                              v47 = [v46 acceptanceStatus];
                              v48 = [v46 permission];

                              if (v47 != 2 || v48 != requiredPermission)
                              {
                                v50 = self->_participantsToCheck;
                                if (!v50 || [(NSArray *)v50 containsObject:v46])
                                {
                                  _HKInitializeLogging();
                                  v51 = *MEMORY[0x277CCC328];
                                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 138543618;
                                    v102 = self;
                                    v103 = 2114;
                                    v104 = v46;
                                    _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: Found invalid participant %{public}@, removing.", buf, 0x16u);
                                  }

                                  [v80 removeParticipant:v46];
                                  v41 = 1;
                                }
                              }
                            }
                          }

                          v40 = [v38 countByEnumeratingWithState:&v89 objects:v100 count:16];
                        }

                        while (v40);

                        v25 = v73;
                        v26 = v74;
                        v19 = v79;
                        v24 = v75;
                        v34 = v80;
                        if (v41)
                        {
                          [v72 addObject:v80];
                        }
                      }

                      else
                      {
                      }
                    }

                    v27 = v76;
                    i = v77;
                  }
                }

                v78 = [v25 countByEnumeratingWithState:&v94 objects:v107 count:16];
                if (v78)
                {
                  continue;
                }

                break;
              }
            }

            v23 = v72;
            v24 = 0;
            v11 = v68;
LABEL_52:
            v12 = v67;
            v13 = 0x277CBE000;
            v20 = v70;
          }

          else
          {
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *v107 = 138543618;
              v108 = self;
              v109 = 2114;
              v110 = v19;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", v107, 0x16u);
            }

            v22 = v19;
            v23 = 0;
            v24 = v19;
          }

          v55 = v24;
          v56 = v55;
          if (v23 || !v55)
          {
            if ([v23 count])
            {
              v57 = [HDCloudSyncModifyRecordsOperation alloc];
              v58 = [(HDCloudSyncOperation *)self configuration];
              v59 = [(HDCloudSyncModifyRecordsOperation *)v57 initWithConfiguration:v58 container:v74 recordsToSave:v23 recordIDsToDelete:0];

              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v84[0] = __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke;
              v84[1] = &unk_278616348;
              v84[2] = self;
              v84[3] = v74;
              [(HDCloudSyncOperation *)v59 setOnError:v83];
              v81[0] = MEMORY[0x277D85DD0];
              v81[1] = 3221225472;
              v82[0] = __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke_304;
              v82[1] = &unk_278614BA8;
              v82[2] = self;
              v82[3] = v74;
              [(HDCloudSyncOperation *)v59 setOnSuccess:v81];
              [(HDCloudSyncOperation *)v59 start];
            }

            else
            {
              [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
            }
          }

          else
          {
            [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v55];
          }

          v14 = v71 + 1;
        }

        while (v71 + 1 != v11);
        v11 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v11);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }

  v63 = *MEMORY[0x277D85DE8];
}

void __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update shares in %{public}@: %{public}@", &v11, 0x20u);
  }

  [*(*(a1 + 32) + 104) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HDCloudSyncRemoveInvalidShareParticipantsOperation_main__block_invoke_304(uint64_t a1)
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
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated share records for %{public}@", &v9, 0x16u);
  }

  result = [*(*(a1 + 32) + 104) finishTask];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end