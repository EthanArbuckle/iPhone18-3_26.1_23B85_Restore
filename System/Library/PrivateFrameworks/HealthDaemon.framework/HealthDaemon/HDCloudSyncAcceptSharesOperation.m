@interface HDCloudSyncAcceptSharesOperation
- (HDCloudSyncAcceptSharesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncAcceptSharesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 shareURLs:(id)a5 invitationTokensByShareURL:(id)a6;
- (void)main;
@end

@implementation HDCloudSyncAcceptSharesOperation

- (HDCloudSyncAcceptSharesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncAcceptSharesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 shareURLs:(id)a5 invitationTokensByShareURL:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = HDCloudSyncAcceptSharesOperation;
  v12 = [(HDCloudSyncOperation *)&v19 initWithConfiguration:a3 cloudState:a4];
  if (v12)
  {
    v13 = [v10 copy];
    shareURLs = v12->_shareURLs;
    v12->_shareURLs = v13;

    v15 = [v11 copy];
    invitationTokensByShareURLs = v12->_invitationTokensByShareURLs;
    v12->_invitationTokensByShareURLs = v15;

    acceptedShares = v12->_acceptedShares;
    v12->_acceptedShares = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (void)main
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_shareURLs count])
  {
    v3 = [(NSDictionary *)self->_invitationTokensByShareURLs allKeys];
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      shareURLs = self->_shareURLs;
      invitationTokensByShareURLs = self->_invitationTokensByShareURLs;
      *buf = 138543874;
      v27 = self;
      v28 = 2114;
      v29 = shareURLs;
      v30 = 2114;
      v31 = invitationTokensByShareURLs;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting shares (%{public}@) with invitation tokens: %{public}@", buf, 0x20u);
    }

    v7 = [objc_alloc(MEMORY[0x277CBC3F8]) initWithShareURLs:v3 invitationTokensByShareURL:self->_invitationTokensByShareURLs];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__HDCloudSyncAcceptSharesOperation_main__block_invoke;
    v24[3] = &unk_27861E958;
    v24[4] = self;
    v9 = v8;
    v25 = v9;
    [v7 setPerShareMetadataBlock:v24];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __40__HDCloudSyncAcceptSharesOperation_main__block_invoke_298;
    v21 = &unk_278619460;
    v22 = self;
    v23 = v9;
    v10 = v9;
    [v7 setFetchShareMetadataCompletionBlock:&v18];
    v11 = [(HDCloudSyncOperation *)self configuration:v18];
    v12 = [v11 operationGroup];
    [v7 setGroup:v12];

    v13 = [(HDCloudSyncOperation *)self configuration];
    v14 = [v13 repository];
    v15 = [v14 primaryCKContainer];
    [v15 addOperation:v7];

    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

void __40__HDCloudSyncAcceptSharesOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  v11 = *MEMORY[0x277CCC328];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Share metadata: %{public}@", &v15, 0x20u);
    }

    [*(a1 + 40) addObject:v8];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v15 = 138543874;
    v16 = v14;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: Error retrieving share metadata: %{public}@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __40__HDCloudSyncAcceptSharesOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [a2 hd_errorSurfacingFatalCloudKitPartialFailure];
  if (v3)
  {
    [*(a1 + 32) finishWithSuccess:0 error:v3];
  }

  else if ([*(a1 + 40) count])
  {
    v4 = objc_alloc(MEMORY[0x277CBC6A0]);
    v5 = [*(a1 + 40) firstObject];
    v6 = [v5 ownerIdentity];
    v7 = [v4 _initWithUserIdentity:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 128);
    *(v8 + 128) = v7;

    _HKInitializeLogging();
    v10 = MEMORY[0x277CCC328];
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 128);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Found owner participant: %@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v14 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning share acceptance with metadata: %{public}@", buf, 0x16u);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(a1 + 40);
      v19 = MEMORY[0x277CBC158];
      v20 = v18;
      v21 = [[v19 alloc] initWithShareMetadatas:v20];

      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __67__HDCloudSyncAcceptSharesOperation__acceptSharesWithShareMetadata___block_invoke;
      v40 = &unk_278619460;
      v41 = v17;
      v23 = v22;
      v42 = v23;
      [v21 setAcceptSharesCompletionBlock:buf];
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __67__HDCloudSyncAcceptSharesOperation__acceptSharesWithShareMetadata___block_invoke_306;
      v36 = &unk_27861E980;
      v37 = v17;
      v38 = v23;
      v24 = v23;
      [v21 setPerShareCompletionBlock:&v33];
      v25 = [v17 configuration];
      v26 = [v25 operationGroup];
      [v21 setGroup:v26];

      v27 = [v17 configuration];
      v28 = [v27 repository];
      v29 = [v28 primaryCKContainer];
      [v29 addOperation:v21];
    }
  }

  else
  {
    v30 = *(a1 + 32);
    v31 = [MEMORY[0x277CCA9B8] hk_error:710 format:@"Failed to retrieve any share metadata."];
    [v30 finishWithSuccess:0 error:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __67__HDCloudSyncAcceptSharesOperation__acceptSharesWithShareMetadata___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  v5 = *MEMORY[0x277CCC328];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138543618;
      v16 = v14;
      v17 = 2114;
      v18 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to accept shares: %{public}@", &v15, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = 0;
    v8 = v3;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully accepted all shares", &v15, 0xCu);
    }

    v10 = [*(a1 + 40) copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 120);
    *(v11 + 120) = v10;

    v6 = *(a1 + 32);
    v7 = 1;
    v8 = 0;
  }

  [v6 finishWithSuccess:v7 error:v8];

  v13 = *MEMORY[0x277D85DE8];
}

void __67__HDCloudSyncAcceptSharesOperation__acceptSharesWithShareMetadata___block_invoke_306(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  v11 = *MEMORY[0x277CCC328];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepted share: %{public}@", &v15, 0x16u);
    }

    [*(a1 + 40) addObject:v8];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v15 = 138543874;
    v16 = v14;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to accept share metadata with %{public}@: %{public}@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end