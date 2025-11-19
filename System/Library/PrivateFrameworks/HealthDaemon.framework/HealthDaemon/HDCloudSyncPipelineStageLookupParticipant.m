@interface HDCloudSyncPipelineStageLookupParticipant
- (HDCloudSyncPipelineStageLookupParticipant)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPipelineStageLookupParticipant)initWithConfiguration:(id)a3 cloudState:(id)a4 identityLookupInfo:(id)a5;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageLookupParticipant

- (HDCloudSyncPipelineStageLookupParticipant)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPipelineStageLookupParticipant)initWithConfiguration:(id)a3 cloudState:(id)a4 identityLookupInfo:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPipelineStageLookupParticipant;
  v10 = [(HDCloudSyncPipelineStage *)&v13 initWithConfiguration:a3 cloudState:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identityLookupInfo, a5);
  }

  return v11;
}

- (void)main
{
  v3 = [HDCloudSyncLookupParticipantOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncLookupParticipantOperation *)v3 initWithConfiguration:v4 cloudState:v5 identityLookupInfo:self->_identityLookupInfo];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HDCloudSyncPipelineStageLookupParticipant_main__block_invoke;
  v11[3] = &unk_27862CD08;
  v11[4] = self;
  [(HDCloudSyncOperation *)v6 setOnSuccess:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HDCloudSyncPipelineStageLookupParticipant_main__block_invoke_2;
  v10[3] = &unk_278613088;
  v10[4] = self;
  [(HDCloudSyncOperation *)v6 setOnError:v10];
  v7 = [(HDCloudSyncOperation *)self progress];
  v8 = [(HDCloudSyncOperation *)v6 progress];
  v9 = [(HDCloudSyncOperation *)self progress];
  [v7 addChild:v8 withPendingUnitCount:{objc_msgSend(v9, "totalUnitCount")}];

  [(HDCloudSyncOperation *)v6 start];
}

uint64_t __49__HDCloudSyncPipelineStageLookupParticipant_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 participant];
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = v4;

  v7 = [v3 cloudState];

  [*(a1 + 32) setCloudState:v7];
  v8 = *(a1 + 32);

  return [v8 finishWithSuccess:1 error:0];
}

void __49__HDCloudSyncPipelineStageLookupParticipant_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v5];

  [*(a1 + 32) finishWithSuccess:0 error:v6];
}

@end