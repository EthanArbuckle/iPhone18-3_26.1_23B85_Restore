@interface HDSummarySharingEntryManager
- (BOOL)deleteEntryWithUUID:(id)d error:(id *)error;
- (BOOL)disableAllSharingEntriesWithError:(id *)error;
- (BOOL)enumerateCodableEntriesWithPredicate:(id)predicate error:(id *)error handler:(id)handler;
- (BOOL)lookupEntryWithPredicate:(id)predicate wasFound:(BOOL *)found error:(id *)error;
- (BOOL)pauseActiveEntriesWithError:(id *)error;
- (BOOL)pauseStatusForEntryWithUUID:(id)d error:(id *)error;
- (BOOL)resolveContactsIfNeededWithError:(id *)error;
- (BOOL)updateEntryWithInvitationUUID:(id)d newNotificationStatus:(int64_t)status error:(id *)error;
- (BOOL)updateEntryWithInvitationUUID:(id)d newStatus:(int64_t)status dateAccepted:(id)accepted ownerParticipant:(id)participant error:(id *)error;
- (BOOL)updateEntryWithUUID:(id)d authorizationsToAdd:(id)add authorizationsToDelete:(id)delete deleteOnCommit:(BOOL)commit error:(id *)error;
- (HDProfile)profile;
- (HDSummarySharingEntryManager)initWithProfile:(id)profile;
- (HDSummarySharingEntryManagerDelegate)delegate;
- (id)anyCodableEntryWithPredicate:(id)predicate errorOut:(id *)out;
- (id)authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants:(id)participants error:(id *)error;
- (id)authorizationIdentifiersForEntriesNotPresentInSet:(id)set error:(id *)error;
- (id)codableEntryWithIdentifier:(id)identifier type:(int64_t)type direction:(unint64_t)direction errorOut:(id *)out;
- (id)codableEntryWithUUID:(id)d errorOut:(id *)out;
- (id)fetchAllCodableSharingEntriesWithError:(id *)error;
- (id)fetchSharingEntriesWithError:(id *)error;
- (uint64_t)_areNotificationsEnabledForFeature:(void *)feature profileIdentifier:(void *)identifier coordinator:(void *)coordinator error:;
- (uint64_t)_resolveContactsWithError:(uint64_t)error;
- (void)_contactStoreDidChange;
- (void)dealloc;
- (void)pauseStatusesForUUIDS:(id)s completion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation HDSummarySharingEntryManager

- (HDSummarySharingEntryManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDSummarySharingEntryManager;
  v5 = [(HDSummarySharingEntryManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogSharing();
    v9 = [v7 initWithName:@"sharing-entry-observers" loggingCategory:v8];
    observerSet = v6->_observerSet;
    v6->_observerSet = v9;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];

    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_hasCompletedContactResolution = 0;
    v6->_authorizationStatusWhenContactsResolved = 0;
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBD140] object:0];

  v7.receiver = self;
  v7.super_class = HDSummarySharingEntryManager;
  [(HDSummarySharingEntryManager *)&v7 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  if ([readyCopy profileType] == 1)
  {
    daemon = [readyCopy daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    [analyticsSubmissionCoordinator addObserver:self queue:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__contactStoreDidChange name:*MEMORY[0x277CBD140] object:0];
  }
}

void __121__HDSummarySharingEntryManager_insertOrReplaceCodableEntries_ignoreIfExists_shouldResolveCNContact_syncProvenance_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hk_map:&__block_literal_global_303];
  [v3 sharingEntriesDidUpdate:v4];
}

- (BOOL)updateEntryWithInvitationUUID:(id)d newStatus:(int64_t)status dateAccepted:(id)accepted ownerParticipant:(id)participant error:(id *)error
{
  participantCopy = participant;
  acceptedCopy = accepted;
  dCopy = d;
  v15 = [HDUpdateCodableSummarySharingEntryOperation alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [(HDUpdateCodableSummarySharingEntryOperation *)v15 initWithInvitationUUID:dCopy status:status dateModified:date dateAccepted:acceptedCopy ownerParticipant:participantCopy];

  profile = [(HDSummarySharingEntryManager *)self profile];
  v19 = [(HDJournalableOperation *)v17 performOrJournalWithProfile:profile error:error];

  if (![(HDJournalableOperation *)v17 didJournal])
  {
    sharingEntry = [(HDUpdateCodableSummarySharingEntryOperation *)v17 sharingEntry];

    if (sharingEntry)
    {
      observerSet = self->_observerSet;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __108__HDSummarySharingEntryManager_updateEntryWithInvitationUUID_newStatus_dateAccepted_ownerParticipant_error___block_invoke;
      v23[3] = &unk_27861D148;
      v24 = v17;
      [(HKObserverSet *)observerSet notifyObservers:v23];
    }
  }

  return v19;
}

void __108__HDSummarySharingEntryManager_updateEntryWithInvitationUUID_newStatus_dateAccepted_ownerParticipant_error___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharingEntry];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 sharingEntriesDidUpdate:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateEntryWithInvitationUUID:(id)d newNotificationStatus:(int64_t)status error:(id *)error
{
  dCopy = d;
  v9 = [HDSummarySharingEntryUpdateNotificationStatusOperation alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [(HDSummarySharingEntryUpdateNotificationStatusOperation *)v9 initWithInvitationUUID:dCopy notificationStatus:status dateModified:date];

  profile = [(HDSummarySharingEntryManager *)self profile];
  v13 = [(HDJournalableOperation *)v11 performOrJournalWithProfile:profile error:error];

  if (![(HDJournalableOperation *)v11 didJournal])
  {
    sharingEntry = [(HDSummarySharingEntryUpdateNotificationStatusOperation *)v11 sharingEntry];

    if (sharingEntry)
    {
      observerSet = self->_observerSet;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __90__HDSummarySharingEntryManager_updateEntryWithInvitationUUID_newNotificationStatus_error___block_invoke;
      v17[3] = &unk_27861D148;
      v18 = v11;
      [(HKObserverSet *)observerSet notifyObservers:v17];
    }
  }

  return v13;
}

void __90__HDSummarySharingEntryManager_updateEntryWithInvitationUUID_newNotificationStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharingEntry];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 sharingEntriesDidUpdate:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateEntryWithUUID:(id)d authorizationsToAdd:(id)add authorizationsToDelete:(id)delete deleteOnCommit:(BOOL)commit error:(id *)error
{
  dCopy = d;
  addCopy = add;
  deleteCopy = delete;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__66;
  v31[4] = __Block_byref_object_dispose__66;
  v32 = 0;
  profile = [(HDSummarySharingEntryManager *)self profile];
  database = [profile database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __116__HDSummarySharingEntryManager_updateEntryWithUUID_authorizationsToAdd_authorizationsToDelete_deleteOnCommit_error___block_invoke;
  v24[3] = &unk_27861D170;
  v17 = dCopy;
  v25 = v17;
  selfCopy = self;
  v18 = addCopy;
  v27 = v18;
  commitCopy = commit;
  v19 = deleteCopy;
  v28 = v19;
  v29 = v31;
  v20 = [(HDHealthEntity *)HDSharingAuthorizationsEntity performWriteTransactionWithHealthDatabase:database error:error block:v24];

  if (v20)
  {
    observerSet = self->_observerSet;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __116__HDSummarySharingEntryManager_updateEntryWithUUID_authorizationsToAdd_authorizationsToDelete_deleteOnCommit_error___block_invoke_2;
    v23[3] = &unk_27861D198;
    v23[4] = v31;
    [(HKObserverSet *)observerSet notifyObservers:v23];
  }

  _Block_object_dispose(v31, 8);
  return v20;
}

BOOL __116__HDSummarySharingEntryManager_updateEntryWithUUID_authorizationsToAdd_authorizationsToDelete_deleteOnCommit_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_alloc(MEMORY[0x277CCD988]) initForInvitationUUID:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v7 = [WeakRetained sharingAuthorizationManager];
  v8 = v7;
  v9 = *(a1 + 48);
  if (*(a1 + 72))
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = *(a1 + 56);
  }

  v38 = 0;
  v11 = [v7 updateAuthorizationsForRecipientIdentifier:v5 sharingAuthorizationsToAdd:v9 sharingAuthorizationsToRemove:v10 error:&v38];
  v12 = v38;

  if ((v11 & 1) == 0)
  {
    v21 = v12;
    if (v21)
    {
      if (a3)
      {
        v27 = v21;
        v28 = 0;
        *a3 = v21;
      }

      else
      {
        _HKLogDroppedError();
        v28 = 0;
      }
    }

    else
    {
      v28 = 1;
    }

    goto LABEL_29;
  }

  if (*(a1 + 72) != 1)
  {
    goto LABEL_8;
  }

  v13 = objc_loadWeakRetained((*(a1 + 40) + 40));
  v14 = [v13 sharingAuthorizationManager];
  v15 = *(a1 + 56);
  v37 = 0;
  v16 = [v14 markSharingAuthorizationsForDeletion:v15 recipientIdentifier:v5 error:&v37];
  v17 = v37;

  if (v16)
  {

LABEL_8:
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v36 = 0;
    v20 = [v18 codableEntryWithUUID:v19 errorOut:&v36];
    v21 = v36;
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v20;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v35 = a3;
      v24 = [MEMORY[0x277CBEAA8] date];
      [v24 timeIntervalSinceReferenceDate];
      [*(*(*(a1 + 64) + 8) + 40) setDateModified:?];
      if ([*(*(*(a1 + 64) + 8) + 40) hasDateAccepted])
      {
        v25 = MEMORY[0x277CBEAA8];
        [*(*(*(a1 + 64) + 8) + 40) dateAccepted];
        v26 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v26 = 0;
      }

      v31 = HDSummarySharingEntryPredicateForUUID(*(a1 + 32));
      v32 = [*(*(*(a1 + 64) + 8) + 40) status];
      v33 = objc_loadWeakRetained((*(a1 + 40) + 40));
      v28 = [HDSummarySharingEntryEntity updateStatus:v32 dateModified:v24 dateAccepted:v26 predicate:v31 profile:v33 error:v35];
    }

    else
    {
      v24 = v21;
      if (v24)
      {
        if (a3)
        {
          v29 = v24;
          v28 = 0;
          *a3 = v24;
        }

        else
        {
          _HKLogDroppedError();
          v28 = 0;
        }
      }

      else
      {
        v28 = 1;
      }
    }

    goto LABEL_29;
  }

  v21 = v17;
  v28 = v21 == 0;
  if (v21)
  {
    if (a3)
    {
      v30 = v21;
      *a3 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_29:
  return v28;
}

void __116__HDSummarySharingEntryManager_updateEntryWithUUID_authorizationsToAdd_authorizationsToDelete_deleteOnCommit_error___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [v2 sharingEntry];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 sharingEntriesDidUpdate:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)pauseActiveEntriesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HDSummarySharingEntryManager_pauseActiveEntriesWithError___block_invoke;
  v13[3] = &unk_27861D1C0;
  v7 = v5;
  v14 = v7;
  v8 = [HDSummarySharingEntryEntity enumerateCodableEntriesWithPredicate:0 profile:WeakRetained error:error handler:v13];

  if (v8 && [v7 count])
  {
    observerSet = self->_observerSet;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__HDSummarySharingEntryManager_pauseActiveEntriesWithError___block_invoke_2;
    v11[3] = &unk_27861D148;
    v12 = v7;
    [(HKObserverSet *)observerSet notifyObservers:v11];
  }

  return v8;
}

uint64_t __60__HDSummarySharingEntryManager_pauseActiveEntriesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sharingEntry];
  if (![v3 direction] && (!objc_msgSend(v3, "status") || objc_msgSend(v3, "status") == 1))
  {
    v4 = [v3 UUID];
    [HDSummarySharingEntryEntity updatePauseStateForEntryWithUUID:v4 shouldPause:1];

    [v3 _setIsPaused:1];
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

uint64_t __70__HDSummarySharingEntryManager_updateEntryWithUUID_pauseStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sharingEntry];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

void __70__HDSummarySharingEntryManager_updateEntryWithUUID_pauseStatus_error___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  [v3 sharingEntriesDidUpdate:{v4, v6, v7}];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)pauseStatusesForUUIDS:(id)s completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  sCopy = s;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = sCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    v14 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        [v9 setObject:v14 forKeyedSubscript:v16];
        v17 = HDSummarySharingEntryPredicateForUUID(v16);
        [v8 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v18 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v8];
  profile = [(HDSummarySharingEntryManager *)self profile];
  v28 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__HDSummarySharingEntryManager_pauseStatusesForUUIDS_completion___block_invoke;
  v26[3] = &unk_27861D1C0;
  v20 = v9;
  v27 = v20;
  v21 = [HDSummarySharingEntryEntity enumerateCodableEntriesWithPredicate:v18 profile:profile error:&v28 handler:v26];
  v22 = v28;

  if (v21)
  {
    v23 = v20;
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = v22;
  }

  completionCopy[2](completionCopy, v23, v24);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HDSummarySharingEntryManager_pauseStatusesForUUIDS_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 codableEntry];
  v7 = [v6 uuid];
  v8 = [v5 initWithUUIDString:v7];

  LODWORD(v6) = [v4 isPaused];
  if (v6)
  {
    v9 = MEMORY[0x277CBEC38];
  }

  else
  {
    v9 = MEMORY[0x277CBEC28];
  }

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];

  return 1;
}

- (BOOL)pauseStatusForEntryWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = HDSummarySharingEntryPredicateForUUID(dCopy);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HDSummarySharingEntryManager_pauseStatusForEntryWithUUID_error___block_invoke;
  v10[3] = &unk_27861D1E8;
  v10[4] = &v11;
  [HDSummarySharingEntryEntity enumerateCodableEntriesWithPredicate:v7 profile:WeakRetained error:error handler:v10];

  LOBYTE(error) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return error;
}

- (id)codableEntryWithIdentifier:(id)identifier type:(int64_t)type direction:(unint64_t)direction errorOut:(id *)out
{
  v8 = HDSummarySharingEntryPredicateForIdentifierTypeAndDirection(identifier, type, direction);
  profile = [(HDSummarySharingEntryManager *)self profile];
  sharingEntryManager = [profile sharingEntryManager];
  v11 = [sharingEntryManager anyCodableEntryWithPredicate:v8 errorOut:out];

  return v11;
}

- (id)codableEntryWithUUID:(id)d errorOut:(id *)out
{
  v6 = HDSummarySharingEntryPredicateForUUID(d);
  v7 = [(HDSummarySharingEntryManager *)self anyCodableEntryWithPredicate:v6 errorOut:out];

  return v7;
}

- (id)anyCodableEntryWithPredicate:(id)predicate errorOut:(id *)out
{
  v29 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__66;
  v23 = __Block_byref_object_dispose__66;
  v24 = 0;
  profile = [(HDSummarySharingEntryManager *)self profile];
  sharingEntryManager = [profile sharingEntryManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__HDSummarySharingEntryManager_anyCodableEntryWithPredicate_errorOut___block_invoke;
  v18[3] = &unk_27861D1E8;
  v18[4] = &v19;
  v9 = [sharingEntryManager enumerateCodableEntriesWithPredicate:predicateCopy error:out handler:v18];

  if (v9)
  {
    v10 = v20[5];
    if (v10)
    {
      v11 = v10;
      goto LABEL_13;
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"We found no entries in the database."];
    v14 = v13;
    if (v13)
    {
      if (out)
      {
        v15 = v13;
        *out = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogSummarySharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v27 = 2114;
      v28 = predicateCopy;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[sharing] %{public}@: Error retrieving entry with predicate %{public}@.", buf, 0x16u);
    }
  }

  v11 = 0;
LABEL_13:
  _Block_object_dispose(&v19, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __70__HDSummarySharingEntryManager_anyCodableEntryWithPredicate_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 codableEntry];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (BOOL)deleteEntryWithUUID:(id)d error:(id *)error
{
  v6 = HDSummarySharingEntryPredicateForUUID(d);
  profile = [(HDSummarySharingEntryManager *)self profile];
  database = [profile database];
  LOBYTE(error) = [(HDHealthEntity *)HDSummarySharingEntryEntity deleteEntitiesWithPredicate:v6 healthDatabase:database error:error];

  return error;
}

- (id)fetchAllCodableSharingEntriesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HDSummarySharingEntryManager_fetchAllCodableSharingEntriesWithError___block_invoke;
  v10[3] = &unk_27861D1C0;
  v11 = v5;
  v6 = v5;
  if ([(HDSummarySharingEntryManager *)self enumerateCodableEntriesWithPredicate:0 error:error handler:v10])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

uint64_t __71__HDSummarySharingEntryManager_fetchAllCodableSharingEntriesWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 codableEntry];
  [v2 addObject:v3];

  return 1;
}

- (BOOL)enumerateCodableEntriesWithPredicate:(id)predicate error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  profile = [(HDSummarySharingEntryManager *)self profile];
  database = [profile database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__HDSummarySharingEntryManager_enumerateCodableEntriesWithPredicate_error_handler___block_invoke;
  v15[3] = &unk_278618368;
  v16 = predicateCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = predicateCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:database error:error block:v15];

  return error;
}

BOOL __83__HDSummarySharingEntryManager_enumerateCodableEntriesWithPredicate_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HDSummarySharingEntryManager_enumerateCodableEntriesWithPredicate_error_handler___block_invoke_2;
  v10[3] = &unk_27861D210;
  v11 = v5;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = v5;
  v8 = [HDSummarySharingEntryEntity enumerateCodableEntriesWithPredicate:v6 transaction:v7 error:a3 handler:v10];

  return v8;
}

uint64_t __83__HDSummarySharingEntryManager_enumerateCodableEntriesWithPredicate_error_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 codableEntry];
  v7 = [v6 sharingRecipientIdentifier];
  v8 = [HDSharingAuthorizationsEntity sharingAuthorizationsForRecipientIdentifier:v7 databaseTransaction:*(a1 + 32) error:a3];

  if (v8)
  {
    v9 = HDCodableSharingAuthorizationsFromSharingAuthorizations(v8);
    v10 = [v5 codableEntry];
    [v10 setSharingAuthorizations:v9];

    v11 = [v5 codableEntry];
    v12 = [v11 sharingAuthorizations];
    v13 = HDAuthorizationIdentifiersFromCodableSharingAuthorizations(v12);
    v14 = [v5 codableEntry];
    [v14 setAuthorizationCategories:v13];

    v15 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)disableAllSharingEntriesWithError:(id *)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = HDSummarySharingEntryPredicateForTypeAndStatus(0, 0);
  v6 = HDSummarySharingEntryPredicateForTypeAndStatus(0, 1);
  v7 = MEMORY[0x277D10B20];
  v22[0] = v5;
  v22[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v9 = [v7 predicateMatchingAnyPredicates:v8];

  _HKInitializeLogging();
  v10 = HKLogSummarySharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = objc_opt_class();
    v11 = v21;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[sharing] %{public}@: Disabling all sharing entries", buf, 0xCu);
  }

  profile = [(HDSummarySharingEntryManager *)self profile];
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__HDSummarySharingEntryManager_disableAllSharingEntriesWithError___block_invoke;
  v18[3] = &unk_278613218;
  v18[4] = self;
  v19 = v9;
  v14 = v9;
  v15 = [(HDHealthEntity *)HDSummarySharingEntryEntity performWriteTransactionWithHealthDatabase:database error:error block:v18];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __66__HDSummarySharingEntryManager_disableAllSharingEntriesWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDSummarySharingEntryManager_disableAllSharingEntriesWithError___block_invoke_2;
  v7[3] = &unk_27861D1C0;
  v7[4] = v5;
  return [v5 enumerateCodableEntriesWithPredicate:v4 error:a3 handler:v7];
}

BOOL __66__HDSummarySharingEntryManager_disableAllSharingEntriesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 codableEntry];
  v7 = [v6 sharingEntry];

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v5 codableEntry];

  v10 = [v9 invitationUUID];
  v11 = [v8 initWithUUIDString:v10];

  if ([v7 direction] || objc_msgSend(v7, "status") != 1)
  {
    if ([v7 direction] || objc_msgSend(v7, "status"))
    {
      if ([v7 direction] == 1 && !objc_msgSend(v7, "status"))
      {
        v17 = *(a1 + 32);
        v24 = 0;
        v13 = [v17 updateEntryWithInvitationUUID:v11 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v24];
        v14 = v24;
      }

      else
      {
        if ([v7 direction] != 1 || objc_msgSend(v7, "status") != 1)
        {
          v16 = 0;
LABEL_15:
          v20 = 1;
          goto LABEL_21;
        }

        v15 = *(a1 + 32);
        v23 = 0;
        v13 = [v15 updateEntryWithInvitationUUID:v11 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v23];
        v14 = v23;
      }
    }

    else
    {
      v18 = *(a1 + 32);
      v25 = 0;
      v13 = [v18 updateEntryWithInvitationUUID:v11 newStatus:3 dateAccepted:0 ownerParticipant:0 error:&v25];
      v14 = v25;
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v26 = 0;
    v13 = [v12 updateEntryWithInvitationUUID:v11 newStatus:4 dateAccepted:0 ownerParticipant:0 error:&v26];
    v14 = v26;
  }

  v19 = v14;
  v16 = v19;
  if (v13)
  {
    goto LABEL_15;
  }

  v16 = v19;
  v20 = v16 == 0;
  if (v16)
  {
    if (a3)
    {
      v21 = v16;
      *a3 = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:
  return v20;
}

- (BOOL)lookupEntryWithPredicate:(id)predicate wasFound:(BOOL *)found error:(id *)error
{
  predicateCopy = predicate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDSummarySharingEntryManager_lookupEntryWithPredicate_wasFound_error___block_invoke;
  v10[3] = &unk_27861D1E8;
  v10[4] = &v11;
  LOBYTE(error) = [(HDSummarySharingEntryManager *)self enumerateCodableEntriesWithPredicate:predicateCopy error:error handler:v10];
  *found = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return error;
}

- (id)authorizationIdentifiersForEntriesNotPresentInSet:(id)set error:(id *)error
{
  setCopy = set;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HDSummarySharingEntryManager_authorizationIdentifiersForEntriesNotPresentInSet_error___block_invoke;
  v13[3] = &unk_27861D238;
  v14 = setCopy;
  selfCopy = self;
  v8 = v7;
  v16 = v8;
  v9 = setCopy;
  v10 = [(HDSummarySharingEntryManager *)self enumerateCodableEntriesWithPredicate:0 error:error handler:v13];
  if (!error || (v11 = 0, v10))
  {
    v11 = v8;
  }

  return v11;
}

uint64_t __88__HDSummarySharingEntryManager_authorizationIdentifiersForEntriesNotPresentInSet_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [v5 codableEntry];
  v8 = [v7 uuid];
  v9 = [v6 initWithUUIDString:v8];

  if (([*(a1 + 32) containsObject:v9] & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x277CCD988]);
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [v5 codableEntry];
    v13 = [v12 uuid];
    v14 = [v11 initWithUUIDString:v13];
    v15 = [v10 initForInvitationUUID:v14];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    v17 = [WeakRetained sharingAuthorizationManager];
    v18 = [v17 sharingAuthorizationsForRecipientIdentifier:v15 error:a3];

    v19 = HKAuthorizationIdentifiersFromSharingAuthorizations();
    v20 = *(a1 + 48);
    v21 = [v5 codableEntry];
    [v20 setObject:v19 forKeyedSubscript:v21];
  }

  return 1;
}

- (id)authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants:(id)participants error:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = HDSummarySharingEntryPredicateForTypeStatusAndDirection(0, 0, 0);
  v9 = HDSummarySharingEntryPredicateForTypeStatusAndDirection(0, 1, 0);
  v10 = MEMORY[0x277D10B20];
  v26[0] = v8;
  v26[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v12 = [v10 predicateMatchingAnyPredicates:v11];

  profile = [(HDSummarySharingEntryManager *)self profile];
  database = [profile database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __124__HDSummarySharingEntryManager_authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants_error___block_invoke;
  v22[3] = &unk_27861B120;
  v22[4] = self;
  v23 = v12;
  v24 = participantsCopy;
  v15 = v7;
  v25 = v15;
  v16 = participantsCopy;
  v17 = v12;
  v18 = [(HDHealthEntity *)HDSharingAuthorizationsEntity performReadTransactionWithHealthDatabase:database error:error block:v22];

  if (!error || (v19 = 0, v18))
  {
    v19 = v15;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __124__HDSummarySharingEntryManager_authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __124__HDSummarySharingEntryManager_authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants_error___block_invoke_2;
  v11[3] = &unk_27861D238;
  v12 = *(a1 + 48);
  v13 = v5;
  v14 = *(a1 + 56);
  v8 = v5;
  v9 = [v6 enumerateCodableEntriesWithPredicate:v7 error:a3 handler:v11];

  return v9;
}

BOOL __124__HDSummarySharingEntryManager_authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = [v5 codableEntry];
  v8 = [v7 primaryContactIdentifier];
  LODWORD(v6) = [v6 containsObject:v8];

  if (v6)
  {
    v9 = [v5 codableEntry];
    v10 = [v9 sharingRecipientIdentifier];
    v11 = a1[5];
    v21 = 0;
    v12 = [HDSharingAuthorizationsEntity sharingAuthorizationsForRecipientIdentifier:v10 databaseTransaction:v11 includeMarkedForDeletion:1 error:&v21];
    v13 = v21;

    if (v12)
    {
      v14 = HKAuthorizationIdentifiersFromSharingAuthorizations();
      v15 = a1[6];
      v16 = [v5 codableEntry];
      v17 = [v16 primaryContactIdentifier];
      [v15 setObject:v14 forKeyedSubscript:v17];

      v18 = 1;
    }

    else
    {
      v12 = v13;
      v18 = v12 == 0;
      if (v12)
      {
        if (a3)
        {
          v20 = v12;
          *a3 = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)resolveContactsIfNeededWithError:(id *)error
{
  if (!self)
  {
    return 1;
  }

  hd_authorizationStatusForHealthApp = [MEMORY[0x277CBDAB8] hd_authorizationStatusForHealthApp];
  os_unfair_lock_lock(&self->_lock);
  if (self->_hasCompletedContactResolution)
  {
    authorizationStatusWhenContactsResolved = self->_authorizationStatusWhenContactsResolved;
    os_unfair_lock_unlock(&self->_lock);
    if (authorizationStatusWhenContactsResolved == hd_authorizationStatusForHealthApp)
    {
      return 1;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return [(HDSummarySharingEntryManager *)self _resolveContactsWithError:error];
}

- (uint64_t)_resolveContactsWithError:(uint64_t)error
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (!error)
  {
    v20 = 0;
    goto LABEL_13;
  }

  _HKInitializeLogging();
  v4 = HKLogSummarySharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    errorCopy2 = error;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[sharing] %{public}@: Attempting to resolve contacts.", buf, 0xCu);
  }

  v5 = HDSummarySharingEntryPredicateForTypeAndStatus(0, 0);
  v6 = HDSummarySharingEntryPredicateForTypeAndStatus(0, 1);
  v7 = MEMORY[0x277D10B20];
  v33[0] = v5;
  v33[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v9 = [v7 predicateMatchingAnyPredicates:v8];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hd_contactStoreWithHealthAppIdentity = [MEMORY[0x277CBDAB8] hd_contactStoreWithHealthAppIdentity];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __58__HDSummarySharingEntryManager__resolveContactsWithError___block_invoke;
  v26 = &unk_27861D260;
  v12 = hd_contactStoreWithHealthAppIdentity;
  v27 = v12;
  v13 = v10;
  v28 = v13;
  if (![error enumerateCodableEntriesWithPredicate:v9 error:a2 handler:&v23])
  {
    goto LABEL_11;
  }

  if ([v13 count])
  {
    _HKInitializeLogging();
    v14 = HKLogSummarySharing();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      *buf = 138543618;
      errorCopy2 = error;
      v31 = 2048;
      v32 = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[sharing] %{public}@: Updating %lu entries.", buf, 0x16u);
    }

    if ([error insertOrReplaceCodableEntries:v13 shouldResolveCNContact:1 error:a2])
    {
      profile = [error profile];
      daemon = [profile daemon];
      profileManager = [daemon profileManager];
      [profileManager dispatchProfileListDidChange];

      goto LABEL_10;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

LABEL_10:
  hd_authorizationStatusForHealthApp = [MEMORY[0x277CBDAB8] hd_authorizationStatusForHealthApp];
  os_unfair_lock_lock((error + 16));
  v20 = 1;
  *(error + 20) = 1;
  *(error + 24) = hd_authorizationStatusForHealthApp;
  os_unfair_lock_unlock((error + 16));
LABEL_12:

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __58__HDSummarySharingEntryManager__resolveContactsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 codableEntry];
  v5 = HDCNContactForCodableEntry(v4, *(a1 + 32));

  v6 = [v3 codableEntry];
  v7 = [v6 copy];

  v8 = [v3 CNContactIdentifier];
  v9 = v8;
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_4;
    }

    v10 = [v3 codableEntry];
    v11 = [v5 givenName];
    v12 = [v5 familyName];
    v13 = [v10 isEqualFirstName:v11 lastName:v12];

    if ((v13 & 1) == 0)
    {
LABEL_4:
      v14 = [v5 givenName];
      [v7 setFirstName:v14];

      v15 = [v5 familyName];
      [v7 setLastName:v15];

LABEL_7:
      [*(a1 + 40) addObject:v7];
    }
  }

  else
  {

    if (v9)
    {
      [v7 setFirstName:0];
      [v7 setLastName:0];
      goto LABEL_7;
    }
  }

  return 1;
}

- (void)_contactStoreDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogSummarySharing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[sharing] %{public}@: Contacts changed notification received.", buf, 0xCu);
  }

  v8 = 0;
  v4 = [(HDSummarySharingEntryManager *)self _resolveContactsWithError:?];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogSummarySharing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing] %{public}@: Error resolving contacts %{public}@.", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v125 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v115 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = -1;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v91 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __79__HDSummarySharingEntryManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke;
  v82[3] = &unk_27861D2B0;
  v84 = &v116;
  v85 = &v112;
  v82[4] = selfCopy;
  v86 = &v108;
  v64 = v6;
  v83 = v64;
  v87 = &v104;
  v88 = &v100;
  v89 = &v96;
  v90 = &v92;
  v63 = [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:database error:&v91 block:v82];
  v62 = v91;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  profile = [(HDSummarySharingEntryManager *)selfCopy profile];
  daemon = [profile daemon];
  profileManager = [daemon profileManager];
  obj = [profileManager allProfileIdentifiers];

  v12 = [obj countByEnumeratingWithState:&v78 objects:v124 count:16];
  if (v12)
  {
    v66 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v72 = *v79;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v79 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v78 + 1) + 8 * i);
        if ([v14 type] == 2)
        {
          profile2 = [(HDSummarySharingEntryManager *)selfCopy profile];
          daemon2 = [profile2 daemon];
          profileManager2 = [daemon2 profileManager];
          v18 = [profileManager2 profileForIdentifier:v14];

          if (v18)
          {
            v77 = 0;
            v19 = [(HDSummarySharingEntryManager *)selfCopy _areNotificationsEnabledForFeature:v14 profileIdentifier:coordinatorCopy coordinator:&v77 error:?];
            v20 = v77;
            v21 = v20 == 0;
            v22 = v21 & v19;
            if ((v21 & v19) != 0)
            {
              v23 = 0;
            }

            else
            {
              v23 = v20;
            }

            v76 = v23;
            v24 = [(HDSummarySharingEntryManager *)selfCopy _areNotificationsEnabledForFeature:v14 profileIdentifier:coordinatorCopy coordinator:&v76 error:?];
            v25 = v76;

            v26 = v25 == 0;
            v27 = v26 & v24;
            if ((v26 & v24) != 0)
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

            v75 = v28;
            v29 = [(HDSummarySharingEntryManager *)selfCopy _areNotificationsEnabledForFeature:v14 profileIdentifier:coordinatorCopy coordinator:&v75 error:?];
            v30 = v75;

            v31 = v30 == 0;
            v32 = v31 & v29;
            if ((v31 & v29) != 0)
            {
              v33 = 0;
            }

            else
            {
              v33 = v30;
            }

            sharedSummaryManager = [v18 sharedSummaryManager];
            v74 = 0;
            v35 = [sharedSummaryManager mostRecentTransactionCreationDateWithError:&v74];
            v36 = v74;

            if (v35)
            {
              if (v66)
              {
                if ([v35 hk_isAfterDate:?])
                {
                  v37 = v35;

                  v66 = v37;
                }
              }

              else
              {
                v66 = v35;
              }
            }

            else if (v36)
            {
              _HKInitializeLogging();
              v38 = HKLogSummarySharing();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v121 = selfCopy;
                v122 = 2114;
                v123 = v36;
                _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[analytics] %{public}@: Failed to retrieve most recent transaction creation date for analytics: %{public}@", buf, 0x16u);
              }
            }

            v68 += v22;
            v69 += v27;
            v70 += v32;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v78 objects:v124 count:16];
    }

    while (v12);
  }

  else
  {
    v66 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
  }

  v39 = objc_alloc(MEMORY[0x277CBEBD0]);
  v40 = [v39 initWithSuiteName:*MEMORY[0x277CCE378]];
  v41 = selfCopy;
  v42 = [v40 integerForKey:*MEMORY[0x277CCE400]];
  v43 = [v40 integerForKey:*MEMORY[0x277CCE3F8]];
  v44 = [v40 integerForKey:*MEMORY[0x277CCE3F0]];
  if (v63)
  {
    v45 = v44;
    v46 = objc_alloc_init(HDSummarySharingAnalytics);
    -[HDSummarySharingAnalytics setNumberAuthorizationsSharingOut:](v46, "setNumberAuthorizationsSharingOut:", [v64 count]);
    v47 = v113[3];
    if (v47)
    {
      [(HDSummarySharingAnalytics *)v46 setAverageNumberAuthorizationsSharedOutPerPerson:(v109[3] / v47)];
    }

    [(HDSummarySharingAnalytics *)v46 setMaxAuthorizationsSharedOutPerPerson:v105[3], v62];
    [(HDSummarySharingAnalytics *)v46 setMinAuthorizationsSharedOutPerPerson:v101[3]];
    [(HDSummarySharingAnalytics *)v46 setNumberPeopleSharingOut:v113[3]];
    [(HDSummarySharingAnalytics *)v46 setNumberPeopleSharingIn:v117[3]];
    if (v117[3])
    {
      [(HDSummarySharingAnalytics *)v46 setMostRecentIncomingTransactionDate:v66];
    }

    [(HDSummarySharingAnalytics *)v46 setNumberOfAlertNotificationsEnabled:v68];
    [(HDSummarySharingAnalytics *)v46 setNumberOfTrendNotificationsEnabled:v69];
    [(HDSummarySharingAnalytics *)v46 setNumberOfUpdateNotificationsEnabled:v70];
    if (v42 >= 1)
    {
      v48 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v42];
      [(HDSummarySharingAnalytics *)v46 setAskSomeoneToShareLastSelectedDate:v48];

      v41 = selfCopy;
    }

    if (v43 >= 1)
    {
      v49 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v43];
      [(HDSummarySharingAnalytics *)v46 setAnySharingWithYouLastViewedDate:v49];

      v41 = selfCopy;
    }

    if (v45 >= 1)
    {
      v50 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v45];
      [(HDSummarySharingAnalytics *)v46 setSharingContactOptionLastSelectedDate:v50];

      v41 = selfCopy;
    }

    if (!v41)
    {
      v55 = 0;
      goto LABEL_54;
    }

    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

    if (getActivePairedDevice)
    {
      v53 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];
      if (v53)
      {
        v54 = v53;
        v55 = v54;
LABEL_53:

LABEL_54:
        v57 = NSStringFromHKBiologicalSex(v93[3]);
        v58 = objc_loadWeakRetained(&selfCopy->_profile);
        daemon3 = [v58 daemon];
        analyticsSubmissionCoordinator = [daemon3 analyticsSubmissionCoordinator];
        [analyticsSubmissionCoordinator summarySharing_reportDailyAnalytics:v46 activeWatchProductType:v55 age:v97[3] sex:v57];

        goto LABEL_55;
      }

      _HKInitializeLogging();
      v56 = HKLogSummarySharing();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v121 = selfCopy;
        _os_log_impl(&dword_228986000, v56, OS_LOG_TYPE_DEFAULT, "[sharing] %{public}@: No watch product type retrieved, returning unavailable", buf, 0xCu);
      }

      v54 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v54 = HKLogSummarySharing();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v121 = selfCopy;
        _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "[sharing] %{public}@: No active paired device, returning unavailable", buf, 0xCu);
      }
    }

    v55 = @"unavailable";
    goto LABEL_53;
  }

LABEL_55:
  (*(completionCopy + 2))(completionCopy, 0, 0, 0);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);

  v61 = *MEMORY[0x277D85DE8];
}

BOOL __79__HDSummarySharingEntryManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = HDSummarySharingEntryPredicateForTypeAndStatus(0, 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HDSummarySharingEntryManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_2;
  v11[3] = &unk_27861D288;
  v11[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  v10 = *(a1 + 40);
  v7 = v10;
  v12 = v10;
  v14 = *(a1 + 72);
  v8 = [HDSummarySharingEntryEntity enumerateCodableEntriesWithPredicate:v6 transaction:v5 error:a3 handler:v11];

  return v8;
}

uint64_t __79__HDSummarySharingEntryManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 codableEntry];
  v7 = [v6 direction];

  if (v7 == 1)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
LABEL_14:
    LOBYTE(v13) = 1;
    goto LABEL_15;
  }

  ++*(*(*(a1 + 56) + 8) + 24);
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v5 codableEntry];
  v10 = [v9 uuid];
  v11 = [v8 initWithUUIDString:v10];

  v12 = [objc_alloc(MEMORY[0x277CCD988]) initForInvitationUUID:v11];
  v13 = [*(a1 + 32) profile];
  v14 = [v13 sharingAuthorizationManager];
  v20 = 0;
  v15 = [v14 sharingAuthorizationsForRecipientIdentifier:v12 error:&v20];
  v16 = v20;

  if (v15)
  {
    *(*(*(a1 + 64) + 8) + 24) += [v15 count];
    [*(a1 + 40) addObjectsFromArray:v15];
    if ([v15 count] > *(*(*(a1 + 72) + 8) + 24))
    {
      *(*(*(a1 + 72) + 8) + 24) = [v15 count];
    }

    if ([v15 count] < *(*(*(a1 + 80) + 8) + 24))
    {
      *(*(*(a1 + 80) + 8) + 24) = [v15 count];
    }
  }

  else
  {
    v17 = v16;
    LOBYTE(v13) = v17 == 0;
    if (v17)
    {
      if (a3)
      {
        v18 = v17;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (v15)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v13 & 1;
}

- (uint64_t)_areNotificationsEnabledForFeature:(void *)feature profileIdentifier:(void *)identifier coordinator:(void *)coordinator error:
{
  v9 = a2;
  featureCopy = feature;
  identifierCopy = identifier;
  if (self)
  {
    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v13 = [v12 initWithSuiteName:*MEMORY[0x277CCE378]];
    v14 = MEMORY[0x277CCACA8];
    identifier = [featureCopy identifier];
    uUIDString = [identifier UUIDString];
    v17 = [v14 stringWithFormat:@"HealthSharingPreferences_%@_Notifications_%@", uUIDString, v9];

    v18 = [v13 objectForKey:v17];
    v19 = v18;
    if (v18)
    {
      bOOLValue = [v18 BOOLValue];
    }

    else
    {
      coordinatorCopy = coordinator;
      v21 = [identifierCopy _createHealthStoreForProfileIdentifier:featureCopy];
      v22 = objc_alloc(MEMORY[0x277CCD570]);
      v32 = v21;
      v23 = [v22 initWithCategory:1 domainName:*MEMORY[0x277CCE3E0] healthStore:v21];
      v33 = 0;
      v24 = [v23 numberForKey:v9 error:&v33];
      v25 = v33;
      v26 = v25;
      if (v24)
      {
        bOOLValue = [v24 BOOLValue];
      }

      else
      {
        v27 = v25;
        v28 = v27;
        if (v27)
        {
          if (coordinatorCopy)
          {
            v29 = v27;
            *coordinatorCopy = v28;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        bOOLValue = 0;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (HDSummarySharingEntryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (id)fetchSharingEntriesWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __70__HDSummarySharingEntryManager_Support__fetchSharingEntriesWithError___block_invoke;
  v13 = &unk_27861D260;
  selfCopy = self;
  v6 = v5;
  v15 = v6;
  v7 = [(HDSummarySharingEntryManager *)self enumerateCodableEntriesWithPredicate:0 error:error handler:&v10];
  v8 = 0;
  if (v7)
  {
    v8 = [v6 copy];
  }

  return v8;
}

uint64_t __70__HDSummarySharingEntryManager_Support__fetchSharingEntriesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sharingEntry];
  v4 = [*(a1 + 32) profile];
  v5 = [v4 daemon];
  v6 = [v5 profileManager];
  v7 = [v3 UUID];
  v8 = [v6 profileIdentifierForUUID:v7];

  if (v8 && [v8 type] == 2)
  {
    [v3 _setProfileIdentifier:v8];
  }

  [*(a1 + 40) addObject:v3];

  return 1;
}

@end