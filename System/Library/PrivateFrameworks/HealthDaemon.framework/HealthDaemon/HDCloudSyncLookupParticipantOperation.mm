@interface HDCloudSyncLookupParticipantOperation
- (HDCloudSyncLookupParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncLookupParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state identityLookupInfo:(id)info;
- (void)main;
@end

@implementation HDCloudSyncLookupParticipantOperation

- (HDCloudSyncLookupParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncLookupParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state identityLookupInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = HDCloudSyncLookupParticipantOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identityLookupInfo, info);
  }

  return v11;
}

- (void)main
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC410]);
  v14[0] = self->_identityLookupInfo;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = [v3 initWithUserIdentityLookupInfos:v4];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HDCloudSyncLookupParticipantOperation_main__block_invoke;
  v13[3] = &unk_278618AB8;
  v13[4] = self;
  [v5 setPerShareParticipantCompletionBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HDCloudSyncLookupParticipantOperation_main__block_invoke_298;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  [v5 setFetchShareParticipantsCompletionBlock:v12];
  configuration = [(HDCloudSyncOperation *)self configuration];
  operationGroup = [configuration operationGroup];
  [v5 setGroup:operationGroup];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];

  [primaryCKContainer addOperation:v5];
  v11 = *MEMORY[0x277D85DE8];
}

void __45__HDCloudSyncLookupParticipantOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = *(a1 + 32);
    if (!*(v10 + 104))
    {
      objc_storeStrong((v10 + 104), a3);
      [*(a1 + 32) finishWithSuccess:1 error:0];
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching participant %{public}@.", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__HDCloudSyncLookupParticipantOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) participant];

  if (!v3)
  {
    [*(a1 + 32) finishWithSuccess:v4 == 0 error:?];
  }
}

@end