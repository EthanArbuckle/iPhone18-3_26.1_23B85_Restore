@interface HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation
- (CKUserIdentity)userIdentity;
- (HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (void)main;
- (void)setUserIdentity:(id)a3;
@end

@implementation HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation

- (HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation;
  result = [(HDCloudSyncOperation *)&v5 initWithConfiguration:a3 cloudState:a4];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setUserIdentity:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  userIdentity = self->_userIdentity;
  self->_userIdentity = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (CKUserIdentity)userIdentity
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_userIdentity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)main
{
  v28 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    userIdentity = self->_userIdentity;
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = userIdentity;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Beginning operation with user identity %{public}@", buf, 0x16u);
  }

  v6 = self->_userIdentity;
  if (v6)
  {
    v7 = [(CKUserIdentity *)v6 userRecordID];
    v8 = [v7 recordName];
    v9 = HDSummarySharingEntryPredicateForCloudKitIdentifierTypeStatusAndDirection(v8, 0, 0, 0);

    v10 = [(CKUserIdentity *)self->_userIdentity userRecordID];
    v11 = [v10 recordName];
    v12 = HDSummarySharingEntryPredicateForCloudKitIdentifierTypeStatusAndDirection(v11, 0, 1, 0);

    v13 = MEMORY[0x277D10B20];
    v23[0] = v9;
    v23[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v15 = [v13 predicateMatchingAnyPredicates:v14];

    v16 = [(HDCloudSyncOperation *)self configuration];
    v17 = [v16 repository];
    v18 = [v17 cloudSyncShimProvider];
    v19 = [v18 summarySharingEntryShim];

    v20 = [(HDCloudSyncOperation *)self configuration];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation_main__block_invoke;
    v22[3] = &unk_278614A68;
    v22[4] = self;
    [v19 sharingEntryExistsWithPredicate:v15 configuration:v20 completion:v22];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"_userIdentity" class:objc_opt_class() selector:a2];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v9];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __67__HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation_main__block_invoke(uint64_t a1, int a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  if (a3)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:730 format:@"You already have a pending or accepted invitation with this participant"];
      [v8 finishWithSuccess:0 error:v9];
    }

    else
    {
      v10 = [*(a1 + 32) configuration];
      v11 = [v10 repository];
      v12 = [v11 primaryCKContainer];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation_main__block_invoke_2;
      v13[3] = &unk_278614A40;
      v13[4] = *(a1 + 32);
      [v12 fetchUserRecordIDWithCompletionHandler:v13];
    }
  }

  else
  {
    [*(a1 + 32) finishWithSuccess:0 error:v7];
  }
}

void __67__HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    v6 = [v15 recordName];
    v7 = [*(*(a1 + 32) + 112) userRecordID];
    v8 = [v7 recordName];
    v9 = [v6 isEqualToString:v8];

    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [MEMORY[0x277CCA9B8] hk_error:732 format:@"You are attempting to share with yourself."];
      [v10 finishWithSuccess:0 error:v11];

      goto LABEL_7;
    }

    v12 = v10;
    v13 = 1;
    v14 = 0;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = 0;
    v14 = v5;
  }

  [v12 finishWithSuccess:v13 error:v14];
LABEL_7:
}

@end