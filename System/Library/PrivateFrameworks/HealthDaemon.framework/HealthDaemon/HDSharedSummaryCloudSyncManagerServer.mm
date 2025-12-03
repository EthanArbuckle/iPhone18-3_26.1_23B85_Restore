@interface HDSharedSummaryCloudSyncManagerServer
+ (id)requiredEntitlements;
- (HDSharedSummaryCloudSyncManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)remote_fetchAccountInfoWithCompletion:(id)completion;
- (void)remote_pullWithCompletion:(id)completion;
- (void)remote_pushWithCompletion:(id)completion;
@end

@implementation HDSharedSummaryCloudSyncManagerServer

- (HDSharedSummaryCloudSyncManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = HDSharedSummaryCloudSyncManagerServer;
  v6 = [(HDStandardTaskServer *)&v10 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;
  }

  return v6;
}

- (void)remote_fetchAccountInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  [cloudSyncManager fetchCloudKitAccountInfoWithCompletion:completionCopy];
}

- (void)remote_pushWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  sharedSummaryManager = [cloudSyncManager sharedSummaryManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSharedSummaryCloudSyncManagerServer_remote_pushWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [sharedSummaryManager push:v10];
}

void __67__HDSharedSummaryCloudSyncManagerServer_remote_pushWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_pullWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  sharedSummaryManager = [cloudSyncManager sharedSummaryManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSharedSummaryCloudSyncManagerServer_remote_pullWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [sharedSummaryManager pull:v10];
}

void __67__HDSharedSummaryCloudSyncManagerServer_remote_pullWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
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