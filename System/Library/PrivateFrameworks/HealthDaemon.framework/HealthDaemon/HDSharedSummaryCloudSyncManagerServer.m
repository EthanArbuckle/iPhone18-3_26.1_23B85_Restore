@interface HDSharedSummaryCloudSyncManagerServer
+ (id)requiredEntitlements;
- (HDSharedSummaryCloudSyncManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)remote_fetchAccountInfoWithCompletion:(id)a3;
- (void)remote_pullWithCompletion:(id)a3;
- (void)remote_pushWithCompletion:(id)a3;
@end

@implementation HDSharedSummaryCloudSyncManagerServer

- (HDSharedSummaryCloudSyncManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10.receiver = self;
  v10.super_class = HDSharedSummaryCloudSyncManagerServer;
  v6 = [(HDStandardTaskServer *)&v10 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;
  }

  return v6;
}

- (void)remote_fetchAccountInfoWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(HDStandardTaskServer *)self profile];
  v5 = [v6 cloudSyncManager];
  [v5 fetchCloudKitAccountInfoWithCompletion:v4];
}

- (void)remote_pushWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 cloudSyncManager];
  v7 = [v6 sharedSummaryManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSharedSummaryCloudSyncManagerServer_remote_pushWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v8 = v4;
  v9 = [v7 push:v10];
}

void __67__HDSharedSummaryCloudSyncManagerServer_remote_pushWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_pullWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 cloudSyncManager];
  v7 = [v6 sharedSummaryManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSharedSummaryCloudSyncManagerServer_remote_pullWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v8 = v4;
  v9 = [v7 pull:v10];
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