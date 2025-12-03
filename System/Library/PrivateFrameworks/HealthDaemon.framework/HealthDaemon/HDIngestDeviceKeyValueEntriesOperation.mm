@interface HDIngestDeviceKeyValueEntriesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDIngestDeviceKeyValueEntriesOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier;
- (HDIngestDeviceKeyValueEntriesOperation)initWithCoder:(id)coder;
- (id)transactionContext;
@end

@implementation HDIngestDeviceKeyValueEntriesOperation

- (HDIngestDeviceKeyValueEntriesOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HDIngestDeviceKeyValueEntriesOperation;
  v9 = [(HDIngestDeviceKeyValueEntriesOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assertion, assertion);
    objc_storeStrong(&v10->_containerIdentifier, identifier);
  }

  return v10;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v8 = profileCopy;
  v9 = v8;
  selfCopy = self;
  v61 = v8;
  if (!self)
  {

LABEL_47:
    v54 = 0;
    v53 = 0;
    goto LABEL_48;
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__35;
  v84 = __Block_byref_object_dispose__35;
  v85 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__35;
  v77 = __Block_byref_object_dispose__35;
  v78 = 0;
  v10 = dispatch_semaphore_create(0);
  cloudSyncManager = [v9 cloudSyncManager];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __67__HDIngestDeviceKeyValueEntriesOperation__fetchRepositories_error___block_invoke;
  v89 = &unk_2786186B0;
  v91 = &v73;
  v92 = &v80;
  v12 = v10;
  v90 = v12;
  [cloudSyncManager cloudSyncRepositoriesForClient:0 completion:buf];

  v13 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Timed out waiting to fetch cloud sync repositories"];
    v15 = v81[5];
    v81[5] = v14;
  }

  v16 = v81[5];
  if (v16)
  {
    v17 = v16;
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  obj = *(v74 + 40);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v80, 8);

  if (!obj)
  {
    goto LABEL_47;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v62 = [obj countByEnumeratingWithState:&v68 objects:v87 count:16];
  if (v62)
  {
    v20 = 0;
    v59 = *v69;
    do
    {
      v21 = 0;
      v66 = v20;
      do
      {
        if (*v69 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v68 + 1) + 8 * v21);
        v67 = v66;
        v63 = v61;
        v23 = v22;
        v64 = transactionCopy;
        v80 = 0;
        v81 = &v80;
        v82 = 0x3032000000;
        v83 = __Block_byref_object_copy__35;
        v84 = __Block_byref_object_dispose__35;
        v85 = 0;
        v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v25 = [[HDCloudSyncCachedCloudState alloc] initWithRepository:v23 accessibilityAssertion:selfCopy->_assertion];
        containerIdentifier = selfCopy->_containerIdentifier;
        v27 = (v81 + 5);
        v79 = v81[5];
        v28 = [(HDCloudSyncCachedCloudState *)v25 contextSyncZoneForContainerID:containerIdentifier error:&v79];
        objc_storeStrong(v27, v79);
        if (v28)
        {
          v29 = objc_opt_class();
          v73 = MEMORY[0x277D85DD0];
          v74 = 3221225472;
          v75 = __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke;
          v76 = &unk_2786186D8;
          v77 = selfCopy;
          v30 = v24;
          v78 = v30;
          [v28 recordsForClass:v29 epoch:0 error:&v67 enumerationHandler:&v73];
          if ([v30 count])
          {
            v31 = MEMORY[0x277CBEB58];
            v32 = v28;
            v33 = objc_alloc_init(v31);
            v34 = objc_opt_class();
            v86 = 0;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __81__HDIngestDeviceKeyValueEntriesOperation__fetchRemoteCloudEntriesFromZone_error___block_invoke;
            v89 = &unk_2786186D8;
            v90 = selfCopy;
            v35 = v33;
            v91 = v35;
            v36 = [v32 recordsForClass:v34 epoch:0 error:&v86 enumerationHandler:buf];

            v37 = v86;
            v38 = v37;
            if (v36)
            {
              v39 = v35;
            }

            else
            {
              v42 = v37;
              v43 = v42;
              if (v42)
              {
                v44 = v42;
                v67 = v43;
              }

              _HKInitializeLogging();
              v45 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *v93 = 138543618;
                v94 = selfCopy;
                v95 = 2114;
                v96 = v43;
                _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "%{public}@: Error enumerating over remote key value entries %{public}@", v93, 0x16u);
              }

              v39 = 0;
            }

            v41 = v39 != 0;
            if (v39)
            {
              cloudSyncShimProvider = [v23 cloudSyncShimProvider];
              contextSyncShim = [cloudSyncShimProvider contextSyncShim];
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke_300;
              v72[3] = &unk_278618700;
              v72[5] = &v80;
              v72[4] = selfCopy;
              [contextSyncShim updateKeyValuePairsForRemoteEntries:v39 deviceContexts:v30 completion:v72];
            }
          }

          else
          {
            v41 = 1;
          }
        }

        else
        {
          v40 = v81[5];
          if (v40)
          {
            v67 = v40;

            v41 = 0;
          }

          else
          {
            _HKInitializeLogging();
            v48 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v49 = selfCopy->_containerIdentifier;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v49;
              _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: Context sync zone not present for container identifier: %{public}@", buf, 0x16u);
            }

            v41 = 1;
          }
        }

        _Block_object_dispose(&v80, 8);
        v20 = v67;

        ++v21;
        v66 = v20;
      }

      while (v62 != v21);
      v50 = [obj countByEnumeratingWithState:&v68 objects:v87 count:16];
      v62 = v50;
    }

    while (v50);
    if (!v41)
    {
      v51 = v20;
      v20 = v51;
      if (v51)
      {
        if (error)
        {
          v52 = v51;
          *error = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v53 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0;
  }

  v53 = 1;
LABEL_45:

  v54 = obj;
LABEL_48:

  v55 = *MEMORY[0x277D85DE8];
  return v53;
}

void __67__HDIngestDeviceKeyValueEntriesOperation__fetchRepositories_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0;
  v4 = [v3 deviceContextWithError:&v12];
  v5 = v12;
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v6;
      v11 = [v3 recordID];
      *buf = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Error creating device context from record(%{public}@) %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke_300(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    objc_storeStrong((v7 + 40), a3);
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update device key value pairs: %{public}@", &v13, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __81__HDIngestDeviceKeyValueEntriesOperation__fetchRemoteCloudEntriesFromZone_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = 0;
  v7 = [v6 deviceKeyValueEntry:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v10 = v8;
    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        *a4 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = v12;
      v17 = [v6 recordID];
      *buf = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v10;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching key value entry for remote record(%{public}@) during deleting local entries %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)transactionContext
{
  v3 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v4 = [v3 contextWithAccessibilityAssertion:self->_assertion];

  return v4;
}

- (HDIngestDeviceKeyValueEntriesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];

  v6 = [(HDIngestDeviceKeyValueEntriesOperation *)self initWithAccessibilityAssertion:0 containerIdentifier:v5];
  return v6;
}

@end