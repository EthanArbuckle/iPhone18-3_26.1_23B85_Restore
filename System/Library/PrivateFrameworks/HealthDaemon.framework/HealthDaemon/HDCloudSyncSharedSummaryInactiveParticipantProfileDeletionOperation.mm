@interface HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation
- (HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation)initWithConfiguration:(id)a3 participants:(id)a4;
- (void)_deleteLocalProfileIfNecessaryForParticipant:(id)a3 completion:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation

- (HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation)initWithConfiguration:(id)a3 participants:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation;
  v7 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:a3 cloudState:0];
  if (v7)
  {
    v8 = [v6 copy];
    participantRecords = v7->_participantRecords;
    v7->_participantRecords = v8;

    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v7->_taskGroup;
    v7->_taskGroup = v10;

    [(HDSynchronousTaskGroup *)v7->_taskGroup setDelegate:v7];
  }

  return v7;
}

- (void)main
{
  v2 = self;
  v31 = *MEMORY[0x277D85DE8];
  v3 = 112;
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v2->_participantRecords;
  v23 = [(NSArray *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v23)
  {
    v5 = *v27;
    v6 = v25;
    v22 = v2;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = [v8 relationshipDirection];
        if ([v9 longValue] == 1)
        {
          v10 = [v8 relationshipType];
          if (![v10 longValue])
          {
            [v8 relationshipStatus];
            v13 = v5;
            v15 = v14 = v3;
            v16 = v6;
            v17 = v4;
            v18 = [v15 longValue];

            v3 = v14;
            v5 = v13;

            v19 = v18 == 1;
            v4 = v17;
            v6 = v16;
            v2 = v22;
            if (v19)
            {
              goto LABEL_12;
            }

            goto LABEL_10;
          }
        }

LABEL_10:
        v11 = [v8 relationshipStatus];
        v12 = [v11 longValue];

        if (v12)
        {
          [*(&v2->super.super.isa + v3) beginTask];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v25[0] = __75__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation_main__block_invoke;
          v25[1] = &unk_2786130B0;
          v25[2] = v2;
          [(HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation *)v2 _deleteLocalProfileIfNecessaryForParticipant:v8 completion:v24];
        }

LABEL_12:
        ++v7;
      }

      while (v23 != v7);
      v20 = [(NSArray *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v23 = v20;
    }

    while (v20);
  }

  [*(&v2->super.super.isa + v3) finishTask];
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(*(a1 + 32) + 112) failTaskWithError:?];
  }

  v4 = *(*(a1 + 32) + 112);

  return [v4 finishTask];
}

- (void)_deleteLocalProfileIfNecessaryForParticipant:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCD7C8];
  v8 = [a3 UUID];
  v9 = [v7 _profileWithUUID:v8 type:2];

  v10 = [(HDCloudSyncOperation *)self configuration];
  v11 = [v10 repository];
  v12 = [v11 profileIdentifier];
  v13 = [v9 isEqual:v12];

  if (v13)
  {
    v6[2](v6, 1, 0);
  }

  else
  {
    v14 = [(HDCloudSyncOperation *)self configuration];
    v15 = [v14 repository];
    v16 = [v15 cloudSyncShimProvider];
    v17 = [v16 profileManagementShim];

    v18 = [(HDCloudSyncOperation *)self configuration];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __127__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation__deleteLocalProfileIfNecessaryForParticipant_completion___block_invoke;
    v20[3] = &unk_278615320;
    v24 = v6;
    v21 = v17;
    v22 = v9;
    v23 = self;
    v19 = v17;
    [v19 profileExistsForProfileIdentifier:v22 configuration:v18 completion:v20];
  }
}

void __127__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation__deleteLocalProfileIfNecessaryForParticipant_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v6 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (a2)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) configuration];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __127__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation__deleteLocalProfileIfNecessaryForParticipant_completion___block_invoke_2;
      v10[3] = &unk_2786130D8;
      v11 = *(a1 + 56);
      [v7 deleteProfile:v8 configuration:v9 completion:v10];

      goto LABEL_7;
    }

    v6 = *(*(a1 + 56) + 16);
  }

  v6();
LABEL_7:
}

@end