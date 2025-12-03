@interface HDCloudSyncSharedSummaryParticipantProfileCreationOperation
- (HDCloudSyncSharedSummaryParticipantProfileCreationOperation)initWithConfiguration:(id)configuration participants:(id)participants;
- (void)_createProfileIfNecessaryForParticipant:(id)participant completion:(id)completion;
- (void)_createProfileWithProfileIdentifier:(id)identifier contactIdentifier:(id)contactIdentifier firstName:(id)name lastName:(id)lastName completion:(id)completion;
- (void)_createProfileWithUUID:(id)d contactIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName ownerParticipant:(id)participant completion:(id)completion;
- (void)_setUpOwnerParticipantForProfileIdentifier:(id)identifier ownerParticipant:(id)participant completion:(id)completion;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryParticipantProfileCreationOperation

- (HDCloudSyncSharedSummaryParticipantProfileCreationOperation)initWithConfiguration:(id)configuration participants:(id)participants
{
  participantsCopy = participants;
  v13.receiver = self;
  v13.super_class = HDCloudSyncSharedSummaryParticipantProfileCreationOperation;
  v7 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:0];
  if (v7)
  {
    v8 = [participantsCopy copy];
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
  v16 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_participantRecords;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __67__HDCloudSyncSharedSummaryParticipantProfileCreationOperation_main__block_invoke;
        v10[3] = &unk_2786130B0;
        v10[4] = self;
        [(HDCloudSyncSharedSummaryParticipantProfileCreationOperation *)self _createProfileIfNecessaryForParticipant:v8 completion:v10];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __67__HDCloudSyncSharedSummaryParticipantProfileCreationOperation_main__block_invoke(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 32) + 112);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

- (void)_createProfileIfNecessaryForParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  relationshipType = [participantCopy relationshipType];
  if ([relationshipType longValue])
  {
    goto LABEL_6;
  }

  relationshipDirection = [participantCopy relationshipDirection];
  if ([relationshipDirection longValue] != 1)
  {

LABEL_6:
    goto LABEL_7;
  }

  relationshipStatus = [participantCopy relationshipStatus];
  longValue = [relationshipStatus longValue];

  if (longValue != 1)
  {
LABEL_7:
    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_8;
  }

  uUID = [participantCopy UUID];
  contactIdentifier = [participantCopy contactIdentifier];
  firstName = [participantCopy firstName];
  lastName = [participantCopy lastName];
  ownerParticipant = [participantCopy ownerParticipant];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __114__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileIfNecessaryForParticipant_completion___block_invoke;
  v17[3] = &unk_2786130D8;
  v18 = completionCopy;
  [(HDCloudSyncSharedSummaryParticipantProfileCreationOperation *)self _createProfileWithUUID:uUID contactIdentifier:contactIdentifier firstName:firstName lastName:lastName ownerParticipant:ownerParticipant completion:v17];

LABEL_8:
}

- (void)_createProfileWithUUID:(id)d contactIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName ownerParticipant:(id)participant completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  lastNameCopy = lastName;
  participantCopy = participant;
  completionCopy = completion;
  if (participantCopy)
  {
    v20 = [MEMORY[0x277CCD7C8] _profileWithUUID:dCopy type:2];
    configuration = [(HDCloudSyncOperation *)self configuration];
    [configuration repository];
    v22 = v32 = dCopy;
    [v22 cloudSyncShimProvider];
    v23 = lastNameCopy;
    v24 = nameCopy;
    v26 = v25 = identifierCopy;
    profileManagementShim = [v26 profileManagementShim];

    identifierCopy = v25;
    nameCopy = v24;
    lastNameCopy = v23;

    configuration2 = [(HDCloudSyncOperation *)self configuration];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __151__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithUUID_contactIdentifier_firstName_lastName_ownerParticipant_completion___block_invoke;
    v33[3] = &unk_278613128;
    v39 = completionCopy;
    v33[4] = self;
    v34 = v20;
    v35 = identifierCopy;
    v36 = nameCopy;
    v37 = v23;
    v38 = participantCopy;
    v28 = v20;
    [profileManagementShim profileExistsForProfileIdentifier:v28 configuration:configuration2 completion:v33];

    dCopy = v32;
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v42 = 2114;
      v43 = dCopy;
      v44 = 2112;
      v45 = identifierCopy;
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: No owner participant on sharing entry metadata; unable to create a new local profile for accepted sharing entry %{public}@: %@", buf, 0x20u);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __151__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithUUID_contactIdentifier_firstName_lastName_ownerParticipant_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v16 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __151__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithUUID_contactIdentifier_firstName_lastName_ownerParticipant_completion___block_invoke_2;
    v19[3] = &unk_278613100;
    v9 = *(&v16 + 1);
    v10 = *(a1 + 80);
    *&v11 = *(a1 + 72);
    *(&v11 + 1) = v10;
    v20 = v16;
    v21 = v11;
    [v16 _createProfileWithProfileIdentifier:v9 contactIdentifier:v6 firstName:v7 lastName:v8 completion:v19];

    v12 = *(&v20 + 1);
LABEL_6:

    goto LABEL_7;
  }

  if (a2)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __151__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithUUID_contactIdentifier_firstName_lastName_ownerParticipant_completion___block_invoke_2_295;
    v17[3] = &unk_2786130D8;
    v15 = *(a1 + 72);
    v18 = *(a1 + 80);
    [v13 _setUpOwnerParticipantForProfileIdentifier:v14 ownerParticipant:v15 completion:v17];
    v12 = v18;
    goto LABEL_6;
  }

  (*(*(a1 + 80) + 16))();
LABEL_7:
}

void __151__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithUUID_contactIdentifier_firstName_lastName_ownerParticipant_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Created local profile for identifier %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __151__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithUUID_contactIdentifier_firstName_lastName_ownerParticipant_completion___block_invoke_294;
    v16[3] = &unk_2786130D8;
    v12 = *(a1 + 48);
    v17 = *(a1 + 56);
    [v10 _setUpOwnerParticipantForProfileIdentifier:v11 ownerParticipant:v12 completion:v16];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to create profile for identifier %{public}@: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setUpOwnerParticipantForProfileIdentifier:(id)identifier ownerParticipant:(id)participant completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  participantCopy = participant;
  completionCopy = completion;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  cloudSyncShimProvider = [repository cloudSyncShimProvider];
  profileManagementShim = [cloudSyncShimProvider profileManagementShim];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration2 repository];
  profileManager = [repository2 profileManager];
  v18 = [profileManager profileForIdentifier:identifierCopy];

  cloudSyncManager = [v18 cloudSyncManager];
  v33 = 0;
  v20 = [cloudSyncManager shareOwnerParticipantWithError:&v33];
  v21 = v33;

  if (v20)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v20 = participantCopy;
    cloudSyncManager2 = [v18 cloudSyncManager];
    v32 = 0;
    v23 = [cloudSyncManager2 setShareOwnerParticipant:v20 error:&v32];
    v28 = v32;

    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    v25 = *MEMORY[0x277CCC328];
    if (v23)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v36 = 2114;
        v37 = v20;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Stored owner participant: %{public}@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v36 = 2114;
        v37 = v28;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to store owner participant: %{public}@", buf, 0x16u);
      }

      configuration3 = [(HDCloudSyncOperation *)self configuration];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __134__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__setUpOwnerParticipantForProfileIdentifier_ownerParticipant_completion___block_invoke;
      v29[3] = &unk_278613150;
      v29[4] = self;
      v30 = identifierCopy;
      v31 = completionCopy;
      [profileManagementShim deleteProfile:v30 configuration:configuration3 completion:v29];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __134__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__setUpOwnerParticipantForProfileIdentifier_ownerParticipant_completion___block_invoke(void *a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete profile for identifier %{public}@: %{public}@", &v10, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_createProfileWithProfileIdentifier:(id)identifier contactIdentifier:(id)contactIdentifier firstName:(id)name lastName:(id)lastName completion:(id)completion
{
  contactIdentifierCopy = contactIdentifier;
  nameCopy = name;
  lastNameCopy = lastName;
  completionCopy = completion;
  v16 = nameCopy;
  if (!nameCopy)
  {
    if (lastNameCopy)
    {
      v16 = &stru_283BF39C8;
    }

    else
    {
      v16 = contactIdentifierCopy;
    }
  }

  v25 = nameCopy;
  identifierCopy = identifier;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  [repository cloudSyncShimProvider];
  v21 = v20 = contactIdentifierCopy;
  profileManagementShim = [v21 profileManagementShim];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __147__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithProfileIdentifier_contactIdentifier_firstName_lastName_completion___block_invoke;
  v26[3] = &unk_278613178;
  v26[4] = self;
  v27 = completionCopy;
  v24 = completionCopy;
  [profileManagementShim createProfileForIdentifier:identifierCopy firstName:v16 lastName:lastNameCopy configuration:configuration2 completion:v26];
}

void __147__HDCloudSyncSharedSummaryParticipantProfileCreationOperation__createProfileWithProfileIdentifier_contactIdentifier_firstName_lastName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Created local profile for identifier %{public}@", &v13, 0x16u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138543874;
      v14 = v12;
      v15 = 2114;
      v16 = 0;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to create profile for identifier %{public}@: %{public}@", &v13, 0x20u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();

  v11 = *MEMORY[0x277D85DE8];
}

@end