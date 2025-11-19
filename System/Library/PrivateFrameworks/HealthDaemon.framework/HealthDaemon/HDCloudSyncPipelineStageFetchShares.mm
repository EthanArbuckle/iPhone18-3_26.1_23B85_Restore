@interface HDCloudSyncPipelineStageFetchShares
- (void)main;
@end

@implementation HDCloudSyncPipelineStageFetchShares

- (void)main
{
  v3 = [HDCloudSyncFetchSharesOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncFetchSharesOperation *)v3 initWithConfiguration:v4 cloudState:0];

  [(HDCloudSyncFetchSharesOperation *)v5 setFetchAllShares:self->_fetchAllShares];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HDCloudSyncPipelineStageFetchShares_main__block_invoke;
  v10[3] = &unk_278626FD8;
  v10[4] = self;
  [(HDCloudSyncOperation *)v5 setOnSuccess:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HDCloudSyncPipelineStageFetchShares_main__block_invoke_2;
  v9[3] = &unk_278613088;
  v9[4] = self;
  [(HDCloudSyncOperation *)v5 setOnError:v9];
  v6 = [(HDCloudSyncOperation *)self progress];
  v7 = [(HDCloudSyncOperation *)v5 progress];
  v8 = [(HDCloudSyncOperation *)self progress];
  [v6 addChild:v7 withPendingUnitCount:{objc_msgSend(v8, "totalUnitCount")}];

  [(HDCloudSyncOperation *)v5 start];
}

uint64_t __43__HDCloudSyncPipelineStageFetchShares_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 shares];
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = v3;

  v6 = *(a1 + 32);

  return [v6 finishWithSuccess:1 error:0];
}

@end