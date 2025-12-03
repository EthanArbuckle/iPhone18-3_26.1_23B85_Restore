@interface HDIngestDeviceContextsOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDIngestDeviceContextsOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier;
- (HDIngestDeviceContextsOperation)initWithCoder:(id)coder;
- (id)transactionContext;
@end

@implementation HDIngestDeviceContextsOperation

- (HDIngestDeviceContextsOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HDIngestDeviceContextsOperation;
  v9 = [(HDIngestDeviceContextsOperation *)&v12 init];
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
  v83 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v8 = profileCopy;
  v9 = v8;
  selfCopy = self;
  v53 = v8;
  if (!self)
  {

LABEL_44:
    v48 = 0;
    v47 = 0;
    goto LABEL_45;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__166;
  v74 = __Block_byref_object_dispose__166;
  v75 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v80 = __Block_byref_object_copy__166;
  v81 = __Block_byref_object_dispose__166;
  v82 = 0;
  v10 = dispatch_semaphore_create(0);
  cloudSyncManager = [v9 cloudSyncManager];
  v63 = MEMORY[0x277D85DD0];
  v64 = 3221225472;
  v65 = __60__HDIngestDeviceContextsOperation__fetchRepositories_error___block_invoke;
  v66 = &unk_2786186B0;
  v68 = buf;
  v69 = &v70;
  v12 = v10;
  v67 = v12;
  [cloudSyncManager cloudSyncRepositoriesForClient:0 completion:&v63];

  v13 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Timed out waiting to fetch cloud sync repositories"];
    v15 = *(v71 + 40);
    *(v71 + 40) = v14;
  }

  v16 = *(v71 + 40);
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

  obj = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v70, 8);

  if (!obj)
  {
    goto LABEL_44;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = [obj countByEnumeratingWithState:&v59 objects:v78 count:16];
  if (v57)
  {
    v20 = 0;
    v56 = *v60;
    do
    {
      v21 = 0;
      v22 = v20;
      do
      {
        if (*v60 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v59 + 1) + 8 * v21);
        v24 = [[HDCloudSyncCachedCloudState alloc] initWithRepository:v23 accessibilityAssertion:selfCopy->_assertion];
        containerIdentifier = selfCopy->_containerIdentifier;
        v77 = 0;
        v26 = [(HDCloudSyncCachedCloudState *)v24 contextSyncZoneForContainerID:containerIdentifier error:&v77];
        v27 = v77;
        v28 = v27;
        if (v26)
        {
          v29 = 1;
        }

        else
        {
          v29 = v27 == 0;
        }

        if (v29)
        {
          if (v26)
          {
            v30 = objc_opt_class();
            v76 = v28;
            v31 = [v26 recordsForClass:v30 error:&v76];
            v32 = v76;

            v55 = v31 != 0;
            if (v31)
            {
              _HKInitializeLogging();
              v33 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                v35 = [v31 count];
                v36 = selfCopy->_containerIdentifier;
                *buf = 134218242;
                *&buf[4] = v35;
                *&buf[12] = 2114;
                *&buf[14] = v36;
                _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "Fetched %lu context records from the cache from %{public}@", buf, 0x16u);
              }

              v63 = MEMORY[0x277D85DD0];
              v64 = 3221225472;
              v65 = __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke;
              v66 = &unk_27862A188;
              v67 = selfCopy;
              v37 = [v31 hk_map:&v63];
              cloudSyncShimProvider = [v23 cloudSyncShimProvider];
              contextSyncShim = [cloudSyncShimProvider contextSyncShim];
              v70 = MEMORY[0x277D85DD0];
              v71 = 3221225472;
              v72 = __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke_299;
              v73 = &unk_2786130B0;
              v74 = selfCopy;
              [contextSyncShim ingestRemoteDeviceContexts:v37 completion:&v70];

              v41 = v22;
            }

            else
            {
              v44 = v32;
              v41 = v22;
              if (v44)
              {
                v44 = v44;
                v41 = v44;
              }
            }

            v28 = v32;
          }

          else
          {
            _HKInitializeLogging();
            v42 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v43 = selfCopy->_containerIdentifier;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v43;
              _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Context sync zone not present for container identifier: %{public}@", buf, 0x16u);
            }

            v55 = 1;
            v41 = v22;
          }
        }

        else
        {
          v40 = v27;
          v55 = 0;
          v41 = v28;
        }

        v20 = v41;
        ++v21;
        v22 = v20;
      }

      while (v57 != v21);
      v57 = [obj countByEnumeratingWithState:&v59 objects:v78 count:16];
    }

    while (v57);
    if (!v55)
    {
      v45 = v20;
      v20 = v45;
      if (v45)
      {
        if (error)
        {
          v46 = v45;
          *error = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v47 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v20 = 0;
  }

  v47 = 1;
LABEL_42:

  v48 = obj;
LABEL_45:

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

void __60__HDIngestDeviceContextsOperation__fetchRepositories_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

id __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0;
  v4 = [v3 deviceContextWithError:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v3;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch context from record %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

void __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke_299(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to ingest remote device context records, error: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)transactionContext
{
  v3 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v4 = [v3 contextWithAccessibilityAssertion:self->_assertion];

  return v4;
}

- (HDIngestDeviceContextsOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];

  v6 = [(HDIngestDeviceContextsOperation *)self initWithAccessibilityAssertion:0 containerIdentifier:v5];
  return v6;
}

@end