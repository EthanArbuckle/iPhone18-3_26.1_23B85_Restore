@interface HDCloudSyncPushSequenceOperation
+ (BOOL)shouldPerformRecentRecordRollingForUnfrozenRecords:(id)a3 configuration:(id)a4;
+ (id)operationTagDependencies;
+ (id)unfrozenChangeRecordsForPushTarget:(id)a3 sequenceRecord:(id)a4 configuration:(id)a5 error:(id *)a6;
- (BOOL)syncSession:(id)a3 didEndTransactionWithError:(id *)a4;
- (HDCloudSyncPushSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPushSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequence:(id)a6;
- (HDCloudSyncSequenceState)sequenceState;
- (uint64_t)_lock_finalizeNextChangeRecordForUploadToSession:(int)a3 shouldFreeze:(void *)a4 error:;
- (void)_finalizePushForSession:(uint64_t)a1;
- (void)_setInitialForwardProgressDateIfNecessary;
- (void)_synthesizeEmptySyncForSession:(uint64_t)a1;
- (void)_uploadChangesForSyncSession:(int)a3 isFinalUpload:(void *)a4 completion:;
- (void)main;
- (void)setSequenceState:(id)a3;
- (void)syncSession:(id)a3 didFinishSuccessfully:(BOOL)a4 error:(id)a5;
- (void)syncSession:(id)a3 sendChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 willSyncAnchorRanges:(id)a4;
- (void)syncSessionWillBegin:(id)a3;
@end

@implementation HDCloudSyncPushSequenceOperation

+ (id)operationTagDependencies
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v5[1] = @"compute-pull-targets";
  v5[2] = @"update-anchors";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCloudSyncPushSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPushSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequence:(id)a6
{
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = HDCloudSyncPushSequenceOperation;
  v13 = [(HDCloudSyncOperation *)&v26 initWithConfiguration:a3 cloudState:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_target, a5);
    objc_storeStrong(&v14->_sequenceRecord, a6);
    v14->_lock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v14->_taskGroup;
    v14->_taskGroup = v15;

    [(HDSynchronousTaskGroup *)v14->_taskGroup setDelegate:v14];
    v17 = HKCreateSerialDispatchQueue();
    syncQueue = v14->_syncQueue;
    v14->_syncQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    changeRecordsPendingPush = v14->_changeRecordsPendingPush;
    v14->_changeRecordsPendingPush = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recordsPendingDeletion = v14->_recordsPendingDeletion;
    v14->_recordsPendingDeletion = v21;

    v23 = objc_alloc_init(HDCodableSyncEntityVersionMap);
    changesSyncEntityVersionMap = v14->_changesSyncEntityVersionMap;
    v14->_changesSyncEntityVersionMap = v23;
  }

  return v14;
}

- (HDCloudSyncSequenceState)sequenceState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sequenceState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSequenceState:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPushSequenceOperation.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  sequenceState = self->_sequenceState;
  self->_sequenceState = v5;
  v7 = v5;

  v8 = [(HDCloudSyncSequenceState *)self->_sequenceState shouldClearRebaselineDeadline];
  self->_shouldClearRebaselineDeadline = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  v178 = *MEMORY[0x277D85DE8];
  sequenceState = self->_sequenceState;
  if (sequenceState)
  {
    recordsPendingDeletion = self->_recordsPendingDeletion;
    v5 = [(HDCloudSyncSequenceState *)sequenceState recordIDsToDelete];
    [(NSMutableArray *)recordsPendingDeletion addObjectsFromArray:v5];
  }

  v6 = [(HDCloudSyncOperation *)self progress];
  [v6 setTotalUnitCount:1000];

  v163 = 0;
  v7 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 accessibilityAssertion];

  if (v9)
  {
    [v7 addAccessibilityAssertion:v9];
  }

  v10 = [(HDCloudSyncOperation *)self configuration];
  v11 = [v10 repository];
  v12 = [v11 profile];
  v13 = [v12 database];
  v14 = [v13 performTransactionWithContext:v7 error:&v163 block:&__block_literal_global_373 inaccessibilityHandler:0];

  v15 = v163;
  v154 = v15;
  if (v14)
  {
    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    v16 = [(HDCloudSyncTarget *)self->_target store];
    v153 = [v16 syncStoreForEpoch:{-[HDCloudSyncSequenceRecord baselineEpoch](self->_sequenceRecord, "baselineEpoch")}];

    sequenceRecord = self->_sequenceRecord;
    v18 = [(HDCloudSyncTarget *)self->_target storeRecord];
    v19 = [v18 tombstoneSequenceRecord];
    v20 = [(HDCloudSyncSequenceRecord *)sequenceRecord isEqual:v19];

    if (v20)
    {
      v21 = [v153 syncStoreForTombstoneSyncOnly:1];

      v153 = v21;
    }

    v22 = [(HDCloudSyncOperation *)self configuration];
    v23 = [v22 repository];
    v150 = [v23 syncEngine];

    v24 = [(HDCloudSyncOperation *)self configuration];
    v25 = [v24 repository];
    v26 = [v25 profile];
    v27 = [v26 legacyRepositoryProfile];
    v162 = 0;
    v28 = HDUpgradedToSyncIdentity(v27, &v162);
    v152 = v162;

    if (v152)
    {
      [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:?];
LABEL_10:
      v29 = 0;
LABEL_83:

      goto LABEL_84;
    }

    if (v28)
    {
      v161 = 0;
      v30 = [(HDCloudSyncOperation *)self profile];
      v31 = [v30 syncIdentityManager];
      v32 = [v31 currentSyncIdentity];
      v33 = [v32 identity];

      *&v164 = 0;
      *(&v164 + 1) = &v164;
      *&v165 = 0x3032000000;
      *(&v165 + 1) = __Block_byref_object_copy__21;
      *&v166 = __Block_byref_object_dispose__21;
      *(&v166 + 1) = objc_alloc_init(MEMORY[0x277CBEB98]);
      v34 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
      v35 = [(HDCloudSyncOperation *)self configuration];
      v36 = [v35 accessibilityAssertion];
      v37 = [v34 contextWithAccessibilityAssertion:v36];

      v38 = [(HDCloudSyncOperation *)self profile];
      v39 = [v38 database];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __76__HDCloudSyncPushSequenceOperation__excludedSyncIdentitiesForPushWithError___block_invoke;
      v175 = &unk_278615F88;
      *&v176 = self;
      v40 = v33;
      *(&v176 + 1) = v40;
      v177 = &v164;
      LOBYTE(v36) = [v39 performTransactionWithContext:v37 error:&v161 block:buf inaccessibilityHandler:0];

      if (v36)
      {
        v149 = *(*(&v164 + 1) + 40);
      }

      else
      {
        v149 = 0;
      }

      _Block_object_dispose(&v164, 8);
      v50 = v161;
      v51 = v50;
      if (!v149)
      {
        [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v50];

        goto LABEL_10;
      }

      v146 = 0;
      [v149 hk_map:&__block_literal_global_22];
    }

    else
    {
      v41 = [(HDCloudSyncOperation *)self configuration];
      v42 = [v41 repository];
      v43 = [v42 syncIdentityManager];
      v44 = [v43 currentSyncIdentity];
      v45 = [v44 identity];

      v46 = [(HDCloudSyncOperation *)self configuration];
      v47 = [v46 computedState];
      v48 = [v47 targets];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __62__HDCloudSyncPushSequenceOperation__excludedSyncStoresForPush__block_invoke;
      v175 = &unk_278615F38;
      *&v176 = self;
      *(&v176 + 1) = v45;
      v49 = v45;
      v146 = [v48 hk_mapToSet:buf];

      v149 = objc_alloc_init(MEMORY[0x277CBEB98]);
      [v149 hk_map:&__block_literal_global_22];
    }
    v52 = ;
    objc_storeStrong(&self->_excludedSyncIdentities, v52);

    v53 = [(HDCloudSyncOperation *)self configuration];
    v54 = [v53 repository];
    v55 = [v54 profile];
    v56 = [v55 cloudSyncManager];
    v57 = [(HDCloudSyncOperation *)self configuration];
    v58 = [v57 context];
    [v58 reason];
    v59 = HKCloudSyncReasonToString();
    v60 = [(HDCloudSyncOperation *)self configuration];
    v61 = [v60 accessibilityAssertion];
    v148 = [v56 syncSessionForSyncStore:v153 reason:v59 delegate:self accessibilityAssertion:v61 excludedStores:v146 excludedSyncIdentities:v149];

    [v148 setSequenceRecord:self->_sequenceRecord];
    v160 = 0;
    v62 = objc_alloc_init(HDSyncAnchorRangeMap);
    v63 = [(HDCloudSyncOperation *)self profile];
    v64 = HDCloudSyncKeyValueDomainWithProfile(v63);

    v65 = [(HDCloudSyncOperation *)self profile];
    v66 = [v65 syncIdentityManager];
    v67 = [v66 currentSyncIdentity];
    v68 = [v67 identity];
    v69 = [v68 identityString];

    v70 = HDCloudSyncFullSyncAnchorMapLimitKey(v69);
    *buf = 0;
    v71 = [v64 dataForKey:v70 error:buf];
    v72 = *buf;

    if (v72)
    {
      v73 = v72;
      v147 = 0;
      v160 = v72;
    }

    else
    {
      if ([v71 length])
      {
        v74 = [[HDCodableSyncAnchorRangeMap alloc] initWithData:v71];
        v75 = [[HDSyncAnchorRangeMap alloc] initWithCodableSyncAnchorRangeMap:v74 error:&v160];

        v62 = v75;
      }

      else
      {
        v62 = v62;
      }

      v147 = v62;
    }

    v29 = v160;
    if (!v147)
    {
      [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v29];
LABEL_82:

      goto LABEL_83;
    }

    if ([(HDSyncAnchorRangeMap *)v147 anchorRangeCount])
    {
      [v148 setSyncAnchorMapLimits:v147];
    }

    v159 = v29;
    v76 = objc_alloc_init(HDSyncAnchorMap);
    v77 = [HDCloudSyncCachedZone alloc];
    v78 = [(HDCloudSyncTarget *)self->_target zoneIdentifier];
    v79 = [(HDCloudSyncOperation *)self configuration];
    v80 = [v79 repository];
    v81 = [(HDCloudSyncOperation *)self configuration];
    v82 = [v81 accessibilityAssertion];
    v83 = [(HDCloudSyncCachedZone *)v77 initForZoneIdentifier:v78 repository:v80 accessibilityAssertion:v82];

    v84 = objc_opt_class();
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __66__HDCloudSyncPushSequenceOperation__anchorsInCloudForStore_error___block_invoke;
    v175 = &unk_278615E78;
    *&v176 = self;
    *(&v176 + 1) = v76;
    v85 = v76;
    v86 = [v83 recordsForClass:v84 error:&v159 filter:buf];
    if (v86)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0;
    }

    v88 = v87;

    v145 = v159;
    if (!v88)
    {
      [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v145];
LABEL_81:

      v29 = v145;
      goto LABEL_82;
    }

    v158 = 0;
    v89 = [v150 syncAnchorRangesIfRequiredForSession:v148 startingAnchors:v88 error:&v158];
    v90 = v158;
    v144 = v90;
    if (v89)
    {
      if ([v89 anchorRangeCount])
      {
        v157 = v145;
        v91 = v153;
        v141 = v88;
        v142 = v91;
        v92 = [v91 shardPredicate];
        v93 = [v92 type] == 2;

        if (v93)
        {
          v143 = v142;
          v151 = v141;
          if ([(HDSyncAnchorMap *)v151 anchorCount])
          {
LABEL_49:
            _HKInitializeLogging();
            v116 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = v143;
              *&buf[22] = 2114;
              v175 = v85;
              _os_log_impl(&dword_228986000, v116, OS_LOG_TYPE_DEFAULT, "%{public}@: Replace persisted anchors for store %{public}@ with (pushed-staging) %{public}@", buf, 0x20u);
            }

            v117 = [(HDCloudSyncSequenceRecord *)self->_sequenceRecord syncAnchorMap];
            if ([(HDSyncAnchorMap *)v143 replacePersistedAnchorMap:v117 error:&v157])
            {
              v118 = v85;
            }

            else
            {
              v118 = 0;
            }

            v119 = v118;

LABEL_74:
LABEL_76:

            v136 = v157;
            if (v119)
            {
              [(HDCloudSyncPushSequenceOperation *)self _setInitialForwardProgressDateIfNecessary];
              [v148 setSequenceRecord:self->_sequenceRecord];
              syncQueue = self->_syncQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __40__HDCloudSyncPushSequenceOperation_main__block_invoke_2;
              block[3] = &unk_278613920;
              block[4] = self;
              v156 = v148;
              dispatch_async(syncQueue, block);
            }

            else
            {
              [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v136];
            }

            v145 = v136;
            goto LABEL_80;
          }

          v94 = v143;
          v95 = objc_alloc_init(HDSyncAnchorMap);
          v96 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
          v97 = [(HDCloudSyncOperation *)self configuration];
          v98 = [v97 accessibilityAssertion];
          v140 = [v96 contextWithAccessibilityAssertion:v98];

          v99 = [(HDCloudSyncOperation *)self configuration];
          v100 = [v99 repository];
          v101 = [v100 profile];
          v102 = [v101 database];
          v171[0] = MEMORY[0x277D85DD0];
          v171[1] = 3221225472;
          v171[2] = __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke;
          v171[3] = &unk_278615D40;
          v171[4] = self;
          v103 = v94;
          v172 = v103;
          v85 = v95;
          v173 = v85;
          v139 = [v102 performTransactionWithContext:v140 error:&v157 block:v171 inaccessibilityHandler:0];

          v104 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v105 = [(HDCloudSyncOperation *)self profile];
          v106 = [v105 syncEngine];
          v107 = [v106 allSyncEntitiesByIdentifier];

          v168[0] = MEMORY[0x277D85DD0];
          v168[1] = 3221225472;
          v168[2] = __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke_4;
          v168[3] = &unk_278615F10;
          v108 = v103;
          v169 = v108;
          v109 = v104;
          v170 = v109;
          [v107 enumerateKeysAndObjectsUsingBlock:v168];
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v110 = v109;
          v111 = [v110 countByEnumeratingWithState:&v164 objects:buf count:16];
          if (v111)
          {
            v112 = *v165;
            do
            {
              for (i = 0; i != v111; ++i)
              {
                if (*v165 != v112)
                {
                  objc_enumerationMutation(v110);
                }

                [(HDSyncAnchorMap *)v85 setAnchor:0 forSyncEntityIdentifier:*(*(&v164 + 1) + 8 * i)];
              }

              v111 = [v110 countByEnumeratingWithState:&v164 objects:buf count:16];
            }

            while (v111);
          }

          if (v139)
          {
            v114 = v85;
          }

          else
          {
            v114 = 0;
          }

          v115 = v114;

          if (v115)
          {
            [(HDCloudSyncSequenceRecord *)self->_sequenceRecord updateSyncAnchorMapWithSyncAnchorMap:v115];
            goto LABEL_49;
          }
        }

        else
        {
          v143 = [(HDCloudSyncSequenceRecord *)self->_sequenceRecord frozenSyncAnchorMap];
          if (!v143)
          {
            v143 = objc_alloc_init(HDSyncAnchorMap);
          }

          target = self->_target;
          v121 = self->_sequenceRecord;
          v122 = [(HDCloudSyncOperation *)self configuration];
          v151 = [HDCloudSyncPushSequenceOperation unfrozenChangeRecordsForPushTarget:target sequenceRecord:v121 configuration:v122 error:&v157];

          if (v151)
          {
            v123 = [(HDCloudSyncOperation *)self profile];
            v124 = [v123 cloudSyncManager];
            v125 = [v124 canPerformRecentRecordRoll];

            v126 = [(HDCloudSyncOperation *)self configuration];
            LODWORD(v124) = [HDCloudSyncPushSequenceOperation shouldPerformRecentRecordRollingForUnfrozenRecords:v151 configuration:v126];

            v127 = [(HDSyncAnchorMap *)v151 count];
            v128 = v125 & v124;
            v129 = v141;
            if ((v125 & v124) != 0)
            {
              v129 = v143;
            }

            v85 = v129;
            if (v128 == 1)
            {
              [(HDCloudSyncSequenceRecord *)self->_sequenceRecord setFirstUnfrozenChangeRecord:0];
              v130 = [(HDSyncAnchorMap *)v151 hk_map:&__block_literal_global_324_1];
              [(NSMutableArray *)self->_recordsPendingDeletion addObjectsFromArray:v130];
              v131 = self->_sequenceRecord;
              v132 = v143;
              [(HDCloudSyncSequenceRecord *)v131 decrementChildRecordCount:v127];
              [(HDCloudSyncSequenceRecord *)self->_sequenceRecord resetChangeIndex:[(HDCloudSyncSequenceRecord *)self->_sequenceRecord changeIndex]- v127];
              [(HDCloudSyncSequenceRecord *)self->_sequenceRecord updateSyncProtocolVersion:17 syncEntityVersions:self->_changesSyncEntityVersionMap];
              [(HDCloudSyncSequenceRecord *)self->_sequenceRecord replaceSyncAnchorMapWithSyncAnchorMap:v132];

              self->_isPerformingRecentRecordRoll = 1;
            }

            _HKInitializeLogging();
            v133 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v134 = @"pushed";
              *buf = 138544130;
              *&buf[4] = self;
              *&buf[12] = 2114;
              if (v128)
              {
                v134 = @"frozen";
              }

              *&buf[14] = v142;
              *&buf[22] = 2114;
              v175 = v134;
              LOWORD(v176) = 2114;
              *(&v176 + 2) = v85;
              _os_log_impl(&dword_228986000, v133, OS_LOG_TYPE_DEFAULT, "%{public}@: Replace persisted anchors for store %{public}@ with (%{public}@) %{public}@", buf, 0x2Au);
            }

            if ([v142 replacePersistedAnchorMap:v85 error:&v157])
            {
              v135 = v85;
            }

            else
            {
              v135 = 0;
            }

            v119 = v135;
            goto LABEL_74;
          }
        }

        v119 = 0;
        goto LABEL_76;
      }

      [(HDCloudSyncPushSequenceOperation *)self _synthesizeEmptySyncForSession:v148];
      [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
    }

    else
    {
      [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v90];
    }

LABEL_80:

    goto LABEL_81;
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v15];
LABEL_84:

  v138 = *MEMORY[0x277D85DE8];
}

id __40__HDCloudSyncPushSequenceOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 entity];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "persistentID")}];

  return v4;
}

- (void)_synthesizeEmptySyncForSession:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 136) beginTask];
    v4 = *(a1 + 128);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__HDCloudSyncPushSequenceOperation__synthesizeEmptySyncForSession___block_invoke;
    v5[3] = &unk_278613920;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)_setInitialForwardProgressDateIfNecessary
{
  if (a1)
  {
    v2 = [a1 configuration];
    v3 = [v2 repository];
    v4 = [v3 profile];
    v5 = [v4 database];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__HDCloudSyncPushSequenceOperation__setInitialForwardProgressDateIfNecessary__block_invoke;
    v6[3] = &unk_278613968;
    v6[4] = a1;
    [v5 performAsynchronouslySerial:v6];
  }
}

uint64_t __40__HDCloudSyncPushSequenceOperation_main__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  v4 = *(a1 + 40);
  dispatch_assert_queue_V2(v3);
  v5 = [v2 configuration];
  v6 = [v5 repository];
  v7 = [v6 syncEngine];

  [*(v2 + 136) beginTask];
  v8 = [v2 configuration];
  v9 = [v8 accessibilityAssertion];
  v35 = 0;
  v10 = [v7 performSyncSession:v4 accessibilityAssertion:v9 error:&v35];

  v11 = v35;
  if (v10)
  {
    v32 = v7;
    v34 = v11;
    v12 = objc_alloc_init(HDSyncAnchorMap);
    v13 = [*(v2 + 104) store];
    v14 = [v2 configuration];
    v15 = [v14 repository];
    v16 = [v15 profile];
    v17 = [v16 legacyRepositoryProfile];
    v33 = v12;
    v18 = [HDSyncAnchorEntity getSyncAnchorsOfType:0 anchorMap:v12 store:v13 profile:v17 error:&v34];

    if (v18)
    {
      v31 = [v2 configuration];
      v19 = [v31 syncDate];
      v20 = [*(v2 + 104) store];
      v21 = [v2 configuration];
      v22 = [v21 repository];
      v23 = [v22 profile];
      v24 = [v23 legacyRepositoryProfile];
      v25 = v19;
      v26 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v33 type:3 updateDate:v19 store:v20 updatePolicy:2 resetInvalid:0 profile:v24 error:&v34];
    }

    else
    {
      v26 = 0;
    }

    v27 = v34;
    v28 = *(v2 + 136);
    v7 = v32;
    if (v26)
    {
      [v28 finishTask];
    }

    else
    {
      [v28 failTaskWithError:v27];
    }

    v11 = v27;
  }

  else
  {
    [*(v2 + 136) failTaskWithError:v11];
  }

  v29 = *(*(a1 + 32) + 136);

  return [v29 finishTask];
}

uint64_t __66__HDCloudSyncPushSequenceOperation__anchorsInCloudForStore_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sequenceRecordID];
  v5 = [*(*(a1 + 32) + 112) recordID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v3 decodedSyncAnchorRangeMap];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HDCloudSyncPushSequenceOperation__anchorsInCloudForStore_error___block_invoke_2;
    v9[3] = &unk_278615E50;
    v10 = *(a1 + 40);
    [v7 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v9];
  }

  return 0;
}

void __66__HDCloudSyncPushSequenceOperation__anchorsInCloudForStore_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4 > [*(a1 + 32) anchorForSyncEntityIdentifier:?])
  {
    [*(a1 + 32) setAnchor:a4 forSyncEntityIdentifier:v6];
  }
}

uint64_t __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 computedState];
  v7 = [v6 pushTargets];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    v35 = v41;
    v36 = v4;
    v34 = *v45;
    while (2)
    {
      v11 = 0;
      v37 = v9;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * v11);
        v13 = [v12 store];
        v14 = [v13 storeIdentifier];
        v15 = [*(v4 + 40) storeIdentifier];
        v16 = [v14 isEqual:v15];

        if ((v16 & 1) == 0)
        {
          v17 = [v12 storeRecord];
          if (v17)
          {
            v18 = v17;
            v39 = [*(v4 + 32) configuration];
            v19 = [v39 cachedCloudState];
            v20 = [v18 recordID];
            v21 = [*(v4 + 32) configuration];
            v22 = [v21 repository];
            [v22 primaryCKContainer];
            v24 = v23 = a3;
            v25 = [v24 containerIdentifier];
            v26 = [v19 zoneForRecordID:v20 containerIdentifier:v25 error:v23];

            a3 = v23;
            v27 = v18;

            v4 = v36;
            if (!v26)
            {
              goto LABEL_14;
            }

            v28 = objc_opt_class();
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v41[0] = __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke_2;
            v41[1] = &unk_278615EE8;
            v29 = v18;
            v42 = v29;
            v43 = *(v36 + 48);
            v30 = [v26 recordsForClass:v28 error:v23 filter:v40];

            if (!v30)
            {
LABEL_14:

              v31 = 0;
              goto LABEL_15;
            }

            v10 = v34;
            v9 = v37;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v31 = 1;
LABEL_15:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v3 syncAnchorMap];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke_3;
    v9[3] = &unk_278615EC0;
    v10 = *(a1 + 40);
    [v7 enumerateAnchorsAndEntityIdentifiersWithBlock:v9];
  }

  return 0;
}

void __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) anchorForSyncEntityIdentifier:?] < a3)
  {
    [*(a1 + 32) setAnchor:a3 forSyncEntityIdentifier:v5];
  }
}

void __80__HDCloudSyncPushSequenceOperation__startingSyncAnchorMapForStagingStore_error___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 syncEntityDependenciesForSyncProtocolVersion:{objc_msgSend(*(a1 + 32), "protocolVersion")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        v10 = [*(*(&v12 + 1) + 8 * v8) syncEntityIdentifier];
        [v9 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __67__HDCloudSyncPushSequenceOperation__synthesizeEmptySyncForSession___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Synthesizing empty sync (no anchors require push).", &v6, 0xCu);
  }

  [(HDCloudSyncPushSequenceOperation *)*(a1 + 32) _finalizePushForSession:?];
  result = [*(*(a1 + 32) + 136) finishTask];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_finalizePushForSession:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 120));
    v4 = [*(a1 + 144) archiveCreator];
    v5 = [v4 archiveIsValid];

    if (v5)
    {
      v12 = 0;
      v6 = [(HDCloudSyncPushSequenceOperation *)a1 _lock_finalizeNextChangeRecordForUploadToSession:v3 shouldFreeze:0 error:&v12];
      v7 = v12;
      v8 = v7;
      if ((v6 & 1) == 0)
      {
        [*(a1 + 144) finishProgress];
        os_unfair_lock_unlock((a1 + 120));
        goto LABEL_7;
      }
    }

    os_unfair_lock_unlock((a1 + 120));
    [*(a1 + 136) beginTask];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__HDCloudSyncPushSequenceOperation__finalizePushForSession___block_invoke;
    v9[3] = &unk_278616020;
    v10 = v3;
    v11 = a1;
    [(HDCloudSyncPushSequenceOperation *)a1 _uploadChangesForSyncSession:v10 isFinalUpload:1 completion:v9];
    v8 = v10;
LABEL_7:
  }
}

id __62__HDCloudSyncPushSequenceOperation__excludedSyncStoresForPush__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 purpose])
  {
    v4 = [*(a1 + 32) configuration];
    v5 = [v4 repository];
    v6 = [v3 container];
    v7 = [v5 cachedOwnerIdentifierForContainer:v6];

    v8 = [v3 storeRecord];
    v9 = [v8 pendingOwner];
    v10 = [v7 string];
    v11 = [v9 isEqualToString:v10];

    if (v11 & 1) != 0 || ([v3 storeRecord], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "pendingSyncIdentity"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqual:", *(a1 + 40)), v13, v12, (v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = [v3 store];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL __76__HDCloudSyncPushSequenceOperation__excludedSyncIdentitiesForPushWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v79 = v5;
  v76 = a3;
  if (v6)
  {
    v7 = v5;
    v8 = [v6 profile];
    v9 = [v8 syncIdentityManager];
    *&v88 = 0;
    v10 = [v9 childIdentitiesForCurrentSyncIdentityWithTransaction:v7 error:&v88];

    v11 = v88;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v93 = v6;
        v94 = 2114;
        v95 = v11;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get child sync identities from local storage: %{public}@", buf, 0x16u);
      }

      v14 = v11;
      if (v14)
      {
        if (a3)
        {
          v15 = v14;
          *a3 = v14;
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
    v10 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = [*(a1 + 32) configuration];
  v18 = [v17 computedState];
  v19 = [v18 targets];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __76__HDCloudSyncPushSequenceOperation__excludedSyncIdentitiesForPushWithError___block_invoke_2;
  v82[3] = &unk_278615F60;
  v20 = v10;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v78 = v20;
  v83 = v20;
  v84 = v21;
  v85 = v22;
  v23 = v16;
  v86 = v23;
  [v19 enumerateObjectsUsingBlock:v82];

  v24 = [*(*(a1 + 32) + 104) storeRecord];
  v25 = [v24 sequenceRecord];
  v26 = [v25 includedSyncIdentities];
  v80 = v23;
  [v23 minusSet:v26];

  v77 = a1;
  v27 = *(a1 + 32);
  if (!v27)
  {
    v66 = 0;
    v64 = v78;
    v63 = v79;
LABEL_47:

    v69 = 0;
    goto LABEL_52;
  }

  v28 = [*(a1 + 32) profile];
  v29 = [v28 syncIdentityManager];
  v30 = [v29 legacySyncIdentity];
  v31 = [v30 identity];

  v32 = [HDKeyValueDomain alloc];
  v33 = [v27 profile];
  v34 = [(HDKeyValueDomain *)v32 initWithCategory:0 domainName:@"CloudSync" profile:v33];

  v35 = *MEMORY[0x277CCE388];
  *&v88 = 0;
  v36 = [(HDKeyValueDomain *)v34 numberForKey:v35 error:&v88];
  v37 = v88;
  if (v36 && [v36 BOOLValue])
  {
    [v23 removeObject:v31];
    _HKInitializeLogging();
    v38 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v93 = v27;
      _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Not excluding legacySyncIdentity because device is paired to old watch", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (!v37)
  {
LABEL_21:
    v43 = [v27 profile];
    v44 = [v43 daemon];
    v45 = [v44 behavior];
    v46 = [v45 isAppleWatch];

    if (v46)
    {
      [v23 addObject:v31];
    }

    v42 = 0;
    v41 = 1;
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v39 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v93 = v27;
    v94 = 2114;
    v95 = v37;
    _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Unable to read if device HasEverBeenPairedToOldWatch: %{public}@", buf, 0x16u);
  }

  v40 = v37;
  v41 = 0;
  v42 = v37;
LABEL_24:

  v47 = v42;
  if ((v41 & 1) == 0)
  {
    v66 = v47;
    v64 = v78;
    v63 = v79;
    if (v66)
    {
      if (v76)
      {
        v67 = v66;
        *v76 = v66;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_47;
  }

  v75 = v47;
  v48 = *(v77 + 32);
  v49 = v23;
  v50 = v79;
  if (v48)
  {
    v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v74 = v49;
    obj = v49;
    v52 = [obj countByEnumeratingWithState:&v88 objects:buf count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v89;
      while (2)
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v89 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v88 + 1) + 8 * i);
          v57 = [v48 profile];
          v58 = [v57 syncIdentityManager];
          v87 = 0;
          v59 = [v58 concreteIdentityForIdentity:v56 shouldCreate:0 transaction:v50 error:&v87];
          v60 = v87;

          if (v59)
          {
            v61 = 1;
          }

          else
          {
            v61 = v60 == 0;
          }

          if (!v61)
          {
            if (v76)
            {
              v68 = v60;
              *v76 = v60;
            }

            else
            {
              _HKLogDroppedError();
            }

            v64 = v78;
            v63 = v79;
            v65 = v77;
            v49 = v74;
            v66 = v75;

            v62 = 0;
            goto LABEL_50;
          }

          if (v59)
          {
            [v51 addObject:v59];
          }
        }

        v53 = [obj countByEnumeratingWithState:&v88 objects:buf count:16];
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    v62 = v51;
    v64 = v78;
    v63 = v79;
    v65 = v77;
    v49 = v74;
    v66 = v75;
LABEL_50:
  }

  else
  {
    v62 = 0;
    v64 = v78;
    v63 = v79;
    v65 = v77;
    v66 = v75;
  }

  v70 = *(*(v65 + 48) + 8);
  v71 = *(v70 + 40);
  *(v70 + 40) = v62;

  v69 = *(*(*(v65 + 48) + 8) + 40) != 0;
LABEL_52:

  v72 = *MEMORY[0x277D85DE8];
  return v69;
}

void __76__HDCloudSyncPushSequenceOperation__excludedSyncIdentitiesForPushWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 purpose])
  {
    goto LABEL_14;
  }

  v4 = [v3 storeRecord];
  v5 = [v4 syncIdentity];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  v8 = [v3 storeRecord];
  v9 = [v8 syncIdentity];
  LODWORD(v7) = [v7 containsObject:v9];

  if (!v7)
  {
LABEL_7:
    v15 = [*(a1 + 40) configuration];
    v16 = [v15 repository];
    v17 = [v3 container];
    v13 = [v16 cachedOwnerIdentifierForContainer:v17];

    v18 = [v3 storeRecord];
    v19 = [v18 pendingOwner];
    v20 = [v13 string];
    v21 = [v19 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [v3 storeRecord];
      v23 = [v22 pendingSyncIdentity];
      v24 = [v23 isEqual:*(a1 + 48)];

      if ((v24 & 1) == 0)
      {
        v25 = [v3 storeRecord];
        v26 = [v25 syncIdentity];

        if (v26)
        {
          v27 = *(a1 + 56);
          v28 = [v3 storeRecord];
          v29 = [v28 syncIdentity];
          [v27 addObject:v29];
        }

        v30 = [v3 storeRecord];
        v31 = [v30 sequenceRecord];
        v32 = [v31 includedSyncIdentities];

        if (v32)
        {
          v33 = *(a1 + 56);
          v34 = [v3 storeRecord];
          v35 = [v34 sequenceRecord];
          v36 = [v35 includedSyncIdentities];
          [v33 unionSet:v36];
        }
      }
    }

    goto LABEL_13;
  }

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = [v3 storeRecord];
    v14 = [v13 syncIdentity];
    v38 = 138543618;
    v39 = v11;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Not excluding my child %{public}@ from push.", &v38, 0x16u);

LABEL_13:
  }

LABEL_14:

  v37 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_finalizeNextChangeRecordForUploadToSession:(int)a3 shouldFreeze:(void *)a4 error:
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 120));
    v8 = [*(a1 + 144) pendingAnchorRangeMap];
    v9 = [v8 anchorRangeCount];

    if (v9)
    {
      v10 = [*(a1 + 144) archiveCreator];
      v11 = [v10 archiveIsValid];

      if (v11)
      {
        v12 = [*(a1 + 144) pendingAnchorRangeMap];
        v67 = [HDSyncAnchorMap syncAnchorMapWithSyncAnchorRangeMap:v12];

        v13 = [*(a1 + 144) archiveCreator];
        [v13 closeArchive];

        v14 = [v7 sequenceRecord];
        if (!v14)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a4 code:718 format:@"No sequence record for current session."];
          a1 = 0;
LABEL_55:

          goto LABEL_56;
        }

        v15 = v67;
        v16 = v14;
        [v16 incrementChangeIndex];
        [v16 updateSyncProtocolVersion:17 syncEntityVersions:*(a1 + 184)];
        [v16 updateSyncAnchorMapWithSyncAnchorMap:v15];

        v17 = [*(a1 + 144) archiveCreator];
        v18 = [v17 fileHandle];

        v19 = v18;
        if ([v19 seekToOffset:0 error:a4])
        {
          v20 = [objc_alloc(MEMORY[0x277CCDE88]) initWithFileHandle:v19];
          v72 = 0;
          v73 = &v72;
          v74 = 0x2020000000;
          v75 = 0;
          v70[4] = &v72;
          v71 = 0;
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __69__HDCloudSyncPushSequenceOperation__validateArchiveFileHandle_error___block_invoke;
          v70[3] = &unk_278615FB0;
          v21 = [v20 enumerateEntriesWithError:&v71 block:v70];
          v22 = v71;
          if (v21)
          {

            _Block_object_dispose(&v72, 8);
            v23 = [HDCloudSyncChangeRecord alloc];
            v24 = [*(a1 + 144) pendingAnchorRangeMap];
            v25 = -[HDCloudSyncChangeRecord initWithSyncAnchorRangeMap:finalForSequence:changesetArchiveFileHandle:sequenceRecord:protocolVersion:](v23, "initWithSyncAnchorRangeMap:finalForSequence:changesetArchiveFileHandle:sequenceRecord:protocolVersion:", v24, [*(a1 + 144) hasOpenSequence] ^ 1, v19, v16, 17);

            v69 = 0;
            v66 = v25;
            LOBYTE(v25) = [v25 validateWithError:&v69];
            v26 = v69;
            v27 = v26;
            if ((v25 & 1) == 0)
            {
              _HKInitializeLogging();
              v35 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                *buf = 138543618;
                v77 = a1;
                v78 = 2114;
                v79 = v27;
                _os_log_fault_impl(&dword_228986000, v35, OS_LOG_TYPE_FAULT, "%{public}@: Failed to validate store record after creation: %{public}@", buf, 0x16u);
              }

              v36 = v27;
              v37 = v36;
              if (v36)
              {
                if (a4)
                {
                  v38 = v36;
                  v36 = v37;
                  *a4 = v37;
                }

                else
                {
                  _HKLogDroppedError();
                  v36 = v37;
                }
              }

              a1 = 0;
              goto LABEL_53;
            }

            v70[0] = 0;
            v68 = 0;
            v28 = [v19 seekToEndReturningOffset:v70 error:&v68];
            v65 = v68;
            if (v28)
            {
              v29 = v70[0];
              v30 = [v66 changeSize];
              LOBYTE(v29) = v29 == [v30 unsignedLongLongValue];

              if (v29)
              {
                if (a3 && *(a1 + 168) == 1)
                {
                  _HKInitializeLogging();
                  v31 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v77 = a1;
                    v78 = 2114;
                    v79 = v15;
                    _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Update sequence record's frozen sync anchors with %{public}@", buf, 0x16u);
                  }

                  [v16 updateFrozenSyncAnchorMapWithSyncAnchorMap:v15];
                  [v16 setFirstUnfrozenChangeRecord:0];
                }

                else
                {
                  v47 = [v16 firstUnfrozenChangeRecord];
                  v48 = v47 == 0;

                  if (v48)
                  {
                    v49 = [v66 record];
                    v50 = [v49 recordID];
                    [v16 setFirstUnfrozenChangeRecord:v50];
                  }
                }

                v51 = [*(a1 + 144) archiveSize];
                _HKInitializeLogging();
                v52 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v53 = *(a1 + 144);
                  v54 = v52;
                  v55 = [v53 pendingAnchorRangeMap];
                  *buf = 138543874;
                  v77 = a1;
                  v78 = 2048;
                  v79 = v51;
                  v80 = 2114;
                  v81 = v55;
                  _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: Finalized change record for push: assetSize: (%llu), anchorRangeMap: %{public}@", buf, 0x20u);
                }

                if (v51 > 0x100000)
                {
                  v56 = [a1 configuration];
                  v57 = [v56 operationGroup];
                  [v57 setExpectedSendSize:2];
                }

                [*(a1 + 152) addObject:v66];
                a1 = 1;
                goto LABEL_52;
              }

              _HKInitializeLogging();
              v44 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                v63 = v44;
                v64 = [v66 changeSize];
                *buf = 138543874;
                v77 = a1;
                v78 = 2114;
                v79 = v64;
                v80 = 2048;
                v81 = v70[0];
                _os_log_fault_impl(&dword_228986000, v63, OS_LOG_TYPE_FAULT, "%{public}@: Change size %{public}@ does not match computed file size: %llu", buf, 0x20u);
              }

              v45 = MEMORY[0x277CCA9B8];
              v46 = [v66 changeSize];
              [v45 hk_assignError:a4 code:709 format:{@"Change size %@ does not match computed file size: %llu", v46, v70[0]}];
            }

            else
            {
              _HKInitializeLogging();
              v39 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v77 = a1;
                v78 = 2114;
                v79 = v65;
                _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Failed to compute archive file size: %{public}@", buf, 0x16u);
              }

              v40 = v65;
              v41 = v40;
              if (v40)
              {
                if (a4)
                {
                  v42 = v40;
                  *a4 = v41;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }
            }

            a1 = 0;
LABEL_52:
            v37 = v65;
LABEL_53:

            goto LABEL_54;
          }

          v32 = v22;
          v33 = v32;
          if (v32)
          {
            if (a4)
            {
              v34 = v32;
              *a4 = v33;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          _HKInitializeLogging();
          v43 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v58 = [*(a1 + 144) archiveURL];
            v59 = [v58 path];
            v60 = v73[3];
            *buf = 138544130;
            v77 = a1;
            v78 = 2114;
            v79 = v59;
            v80 = 2048;
            v81 = v60;
            v82 = 2114;
            v83 = v33;
            _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed to validate change record archive %{public}@ (enumerated %lld entries): %{public}@", buf, 0x2Au);
          }

          _Block_object_dispose(&v72, 8);
        }

        else
        {
        }

        a1 = 0;
LABEL_54:

        goto LABEL_55;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:717 format:@"Unable to create change record with invalid archive."];
      a1 = 0;
    }

    else
    {
      a1 = 1;
    }
  }

LABEL_56:

  v61 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)_uploadChangesForSyncSession:(int)a3 isFinalUpload:(void *)a4 completion:
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a1)
  {
    v8 = [a2 sequenceRecord];
    if (!v8)
    {
      v16 = [MEMORY[0x277CCA9B8] hk_error:718 format:@"No sequence record for current session."];
      v7[2](v7, 0, v16);

LABEL_31:
      goto LABEL_32;
    }

    v9 = [*(a1 + 104) store];
    v10 = [v9 shardPredicate];
    v11 = [*(a1 + 104) storeRecord];
    [v11 setShardPredicate:v10];

    os_unfair_lock_lock((a1 + 120));
    v12 = [*(a1 + 152) hk_map:&__block_literal_global_357];
    v76 = [v12 mutableCopy];

    [*(a1 + 152) removeAllObjects];
    v77 = [*(a1 + 160) copy];
    v13 = *(a1 + 160);
    *(a1 + 160) = 0;

    if (!a3)
    {
      v17 = 0;
LABEL_12:
      v75 = v8;
      os_unfair_lock_unlock((a1 + 120));
      v22 = [*(a1 + 104) storeRecord];
      v23 = [v22 record];
      v24 = [v23 modificationDate];
      v25 = [a1 configuration];
      v26 = [v25 syncDate];
      [v24 timeIntervalSinceDate:v26];
      v28 = v27;

      if ((v17 & 1) != 0 || v28 < -1209600.0 || [v77 count] || objc_msgSend(v76, "count"))
      {
        _HKInitializeLogging();
        v29 = MEMORY[0x277CCC328];
        v30 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v31 = "interim";
          if (a3)
          {
            v31 = "FINAL";
          }

          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 2082;
          *&buf[14] = v31;
          _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Uploading %{public}s changeset record to CloudKit", buf, 0x16u);
        }

        v74 = v7;
        v32 = [a1 configuration];
        v33 = [v32 repository];
        v34 = [v33 behavior];

        v35 = [v34 currentDeviceProductType];
        v36 = [*(a1 + 104) storeRecord];
        [v36 setProductType:v35];

        v37 = [v34 currentOSBuild];
        v38 = [*(a1 + 104) storeRecord];
        [v38 setSystemBuildVersion:v37];

        v39 = [v34 currentDeviceDisplayName];
        v40 = [*(a1 + 104) storeRecord];
        [v40 setDeviceName:v39];

        v41 = [*(a1 + 104) storeRecord];
        [v41 setSupportedProtocolVersion:0];

        v42 = [*(a1 + 104) storeRecord];
        [v42 setRequiredProtocolVersion:0];

        v43 = [a1 configuration];
        v44 = [v43 repository];
        v45 = [v44 deviceMode];
        v46 = [*(a1 + 104) storeRecord];
        [v46 setDeviceMode:v45];

        v47 = [*(a1 + 104) storeRecord];
        v48 = [v47 record];
        [v76 addObject:v48];

        v49 = [v75 record];
        [v76 addObject:v49];

        v50 = *(a1 + 176);
        if (v50)
        {
          v51 = [v50 recordsToSave];
          [v76 addObjectsFromArray:v51];

          v52 = *(a1 + 176);
          *(a1 + 176) = 0;
        }

        v73 = [a1 configuration];
        v72 = [v73 repository];
        v53 = [v72 primaryCKContainer];
        v54 = [v53 containerIdentifier];
        v55 = v76;
        v56 = v77;
        v57 = v54;
        v58 = v74;
        v59 = [a1 configuration];
        v60 = [v59 repository];
        v61 = [v60 containerForContainerIdentifier:v57];

        if (v61)
        {
          v62 = [v55 hk_map:&__block_literal_global_365];
          _HKInitializeLogging();
          v63 = *v29;
          if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            *&buf[4] = a1;
            *&buf[12] = 2114;
            *&buf[14] = v62;
            *&buf[22] = 2114;
            v81 = v56;
            LOWORD(v82) = 2114;
            *(&v82 + 2) = v61;
            _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: save:%{public}@, delete:%{public}@ container:%{public}@", buf, 0x2Au);
          }

          v64 = [HDCloudSyncModifyRecordsOperation alloc];
          v65 = [a1 configuration];
          v66 = [(HDCloudSyncModifyRecordsOperation *)v64 initWithConfiguration:v65 container:v61 recordsToSave:v55 recordIDsToDelete:v56];

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __90__HDCloudSyncPushSequenceOperation__pushRecords_recordIDsToDelete_containerID_completion___block_invoke_367;
          v81 = &unk_2786143E8;
          *&v82 = a1;
          v67 = v58;
          *(&v82 + 1) = v67;
          [(HDCloudSyncOperation *)v66 setOnError:buf];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __90__HDCloudSyncPushSequenceOperation__pushRecords_recordIDsToDelete_containerID_completion___block_invoke_369;
          v78[3] = &unk_278615FF8;
          v78[4] = a1;
          v79 = v67;
          [(HDCloudSyncOperation *)v66 setOnSuccess:v78];
          [(HDCloudSyncOperation *)v66 start];
        }

        else
        {
          _HKInitializeLogging();
          v68 = *v29;
          if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = a1;
            *&buf[12] = 2114;
            *&buf[14] = v57;
            _os_log_error_impl(&dword_228986000, v68, OS_LOG_TYPE_ERROR, "%{public}@: Container not found for container ID: %{public}@", buf, 0x16u);
          }

          v62 = [MEMORY[0x277CCA9B8] hk_error:723 format:{@"Invalid container ID %@", v57}];
          (*(v58 + 2))(v58, 0, v62);
        }

        v8 = v75;
        v69 = v76;

        v7 = v74;
      }

      else
      {
        _HKInitializeLogging();
        v71 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = a1;
          _os_log_impl(&dword_228986000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@: No upload required at the present time; skipping record save.", buf, 0xCu);
        }

        *(a1 + 192) = 1;
        v7[2](v7, 1, 0);
        v8 = v75;
        v69 = v76;
      }

      goto LABEL_31;
    }

    v14 = [*(a1 + 104) storeRecord];
    v15 = [v14 pendingOwner];
    if (v15)
    {
    }

    else
    {
      v18 = [*(a1 + 104) storeRecord];
      v19 = [v18 pendingSyncIdentity];

      if (!v19)
      {
        v17 = 0;
LABEL_10:
        if (([v8 isActive] & 1) == 0)
        {
          v17 = 1;
          [v8 setActive:1];
        }

        goto LABEL_12;
      }
    }

    v20 = [*(a1 + 104) storeRecord];
    [v20 setPendingOwner:0];

    v21 = [*(a1 + 104) storeRecord];
    [v21 setPendingSyncIdentity:0];

    v17 = 1;
    goto LABEL_10;
  }

LABEL_32:

  v70 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncPushSequenceOperation__pushRecords_recordIDsToDelete_containerID_completion___block_invoke_367(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to upload changes: %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncPushSequenceOperation__pushRecords_recordIDsToDelete_containerID_completion___block_invoke_369(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully uploaded changes", &buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4 configuration];
  v6 = [v5 repository];
  v7 = [v6 profile];
  v8 = [v7 database];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v25 = __62__HDCloudSyncPushSequenceOperation__recordForwardProgressDate__block_invoke;
  v26 = &unk_278613968;
  v27 = v4;
  [v8 performAsynchronouslySerial:&buf];

  *(*(a1 + 32) + 192) = 1;
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v9 = *(a1 + 32);
  if (*(v9 + 169) == 1)
  {
    v23 = 0;
    v10 = +[HDMutableDatabaseTransactionContext contextForWriting];
    v11 = [v9 configuration];
    v12 = [v11 accessibilityAssertion];
    v13 = [v10 contextWithAccessibilityAssertion:v12];

    v14 = [v9 configuration];
    v15 = [v14 repository];
    v16 = [v15 profile];
    v17 = [v16 database];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v25 = __63__HDCloudSyncPushSequenceOperation__handleRebaselineWithError___block_invoke;
    v26 = &unk_278616048;
    v27 = v9;
    v18 = [v17 performTransactionWithContext:v13 error:&v23 block:&buf inaccessibilityHandler:0];

    v19 = v23;
    v20 = v19;
    v21 = *(a1 + 32);
    if (!v18)
    {
      os_unfair_lock_unlock((v21 + 120));
      (*(*(a1 + 40) + 16))();

      goto LABEL_8;
    }

    *(v21 + 169) = 0;

    v9 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v9 + 120));
  (*(*(a1 + 40) + 16))();
LABEL_8:
  v22 = *MEMORY[0x277D85DE8];
}

void __60__HDCloudSyncPushSequenceOperation__finalizePushForSession___block_invoke(uint64_t a1, int a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) syncStore];
    v33 = 0;
    v7 = [v6 persistedStateWithError:&v33];
    v8 = v33;

    if (v7)
    {
      v9 = [*(a1 + 40) configuration];
      v10 = [v9 syncDate];

      v11 = [v7 stateByRecordingLastSyncDate:v10];

      v12 = [v11 lastCheckDate];

      if (!v12)
      {
        v13 = [v11 stateByRecordingLastCheckDate:v10];

        v11 = v13;
      }

      _HKInitializeLogging();
      v14 = MEMORY[0x277CCC328];
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = v15;
        v19 = [v16 syncStore];
        v20 = [v11 lastSyncDate];
        *buf = 138543874;
        v35 = v17;
        v36 = 2114;
        v37 = v19;
        v38 = 2114;
        v39 = v20;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Update persisted state for %{public}@ with successful sync date %{public}@", buf, 0x20u);
      }

      v21 = [*(a1 + 32) syncStore];
      v32 = v8;
      v22 = [v21 persistState:v11 error:&v32];
      v23 = v32;

      if ((v22 & 1) == 0)
      {
        _HKInitializeLogging();
        v24 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          v31 = *(a1 + 40);
          *buf = 138543618;
          v35 = v31;
          v36 = 2114;
          v37 = v23;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record sync completion date: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 40);
        *buf = 138543618;
        v35 = v30;
        v36 = 2114;
        v37 = v8;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve persisted sync store state for recording completion date: %{public}@", buf, 0x16u);
      }

      v23 = v8;
    }

    [*(*(a1 + 40) + 136) finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      *buf = 138543874;
      v35 = v28;
      v36 = 2114;
      v37 = v29;
      v38 = 2114;
      v39 = v5;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Sync session %{public}@ failed during upload: %{public}@", buf, 0x20u);
    }

    [*(*(a1 + 40) + 136) failTaskWithError:v5];
  }

  os_unfair_lock_lock((*(a1 + 40) + 120));
  [*(*(a1 + 40) + 144) finishProgress];
  os_unfair_lock_unlock((*(a1 + 40) + 120));

  v27 = *MEMORY[0x277D85DE8];
}

void __77__HDCloudSyncPushSequenceOperation__setInitialForwardProgressDateIfNecessary__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 repository];
  v4 = [v3 profile];
  v5 = [v4 legacyRepositoryProfile];
  v6 = HDCloudSyncKeyValueDomainWithProfile(v5);

  v20 = 0;
  v7 = [v6 dateForKey:@"HDCloudSyncPrimaryLastPushForwardProgressDate" error:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (!v7)
    {
      v11 = [*(a1 + 32) configuration];
      v12 = [v11 syncDate];
      v19 = v9;
      v13 = [v6 setDate:v12 forKey:@"HDCloudSyncPrimaryLastPushForwardProgressDate" error:&v19];
      v14 = v19;

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v22 = @"HDCloudSyncPrimaryLastPushForwardProgressDate";
          v23 = 2114;
          v24 = v14;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to update %{public}@: %{public}@.", buf, 0x16u);
        }
      }

      v9 = v14;
    }
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = @"HDCloudSyncPrimaryLastPushForwardProgressDate";
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Unable to determine value for %{public}@: %{public}@.", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __62__HDCloudSyncPushSequenceOperation__recordForwardProgressDate__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 repository];
  v4 = [v3 profile];
  v5 = [v4 legacyRepositoryProfile];
  v6 = HDCloudSyncKeyValueDomainWithProfile(v5);

  v7 = [*(a1 + 32) configuration];
  v8 = [v7 syncDate];
  v12 = 0;
  LOBYTE(v4) = [v6 setDate:v8 forKey:@"HDCloudSyncPrimaryLastPushForwardProgressDate" error:&v12];
  v9 = v12;

  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to record push operation forward progress: %{public}@.", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HDCloudSyncPushSequenceOperation__handleRebaselineWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(*(a1 + 32) + 104) store];
  v6 = [v5 persistedStateWithError:a3];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 stateByResettingRebaselineDeadline];

  v8 = [*(*(a1 + 32) + 104) store];
  v9 = [v8 persistState:v7 error:a3];

  return v9;
}

+ (BOOL)shouldPerformRecentRecordRollingForUnfrozenRecords:(id)a3 configuration:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*(*(&v23 + 1) + 8 * i) changeSize];
          v9 += [v12 longLongValue];
        }

        v8 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v14 = [v5 count];
    v15 = [v6 repository];
    v16 = [v15 profile];
    v17 = [v16 cloudSyncManager];
    v18 = [v17 bytesPerChangeRecordAssetThreshold];

    v13 = v14 > 21 || v9 > v18 || v14 == 0;
  }

  else
  {
    v13 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)unfrozenChangeRecordsForPushTarget:(id)a3 sequenceRecord:(id)a4 configuration:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v9 frozenSyncAnchorMap];
  if (!v12)
  {
    v12 = objc_alloc_init(HDSyncAnchorMap);
  }

  v13 = [HDCloudSyncCachedZone alloc];
  v14 = [v11 zoneIdentifier];

  v15 = [v10 repository];
  v16 = [v10 accessibilityAssertion];

  v17 = [(HDCloudSyncCachedZone *)v13 initForZoneIdentifier:v14 repository:v15 accessibilityAssertion:v16];
  v18 = objc_opt_class();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __106__HDCloudSyncPushSequenceOperation_unfrozenChangeRecordsForPushTarget_sequenceRecord_configuration_error___block_invoke;
  v23[3] = &unk_278615E78;
  v24 = v9;
  v25 = v12;
  v19 = v12;
  v20 = v9;
  v21 = [v17 recordsForClass:v18 error:a6 filter:v23];

  return v21;
}

uint64_t __106__HDCloudSyncPushSequenceOperation_unfrozenChangeRecordsForPushTarget_sequenceRecord_configuration_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sequenceRecordID];
  v5 = [*(a1 + 32) recordID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = [v3 decodedSyncAnchorRangeMap];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __106__HDCloudSyncPushSequenceOperation_unfrozenChangeRecordsForPushTarget_sequenceRecord_configuration_error___block_invoke_2;
    v10[3] = &unk_278616070;
    v11 = *(a1 + 40);
    v12 = &v13;
    [v7 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v10];

    v8 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __106__HDCloudSyncPushSequenceOperation_unfrozenChangeRecordsForPushTarget_sequenceRecord_configuration_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) anchorForSyncEntityIdentifier:a2];
  if (a4 > result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)syncSessionWillBegin:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_syncQueue);
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning sync session: %{public}@", &v14, 0x16u);
  }

  _HKInitializeLogging();
  v7 = *v5;
  if (os_signpost_enabled(*v5))
  {
    v8 = v7;
    v9 = os_signpost_id_make_with_pointer(*v5, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(HDCloudSyncOperation *)self configuration];
        v12 = [v11 descriptionForSignpost];
        v14 = 138543362;
        v15 = v12;
        _os_signpost_emit_with_name_impl(&dword_228986000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "cloud-sync-push-session", "%{public}@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)a3 willSyncAnchorRanges:(id)a4
{
  v16 = a4;
  dispatch_assert_queue_V2(self->_syncQueue);
  if (!self->_sessionContext)
  {
    v5 = [HDCloudSyncSessionContext alloc];
    v6 = [v16 anchorRangeCount];
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 profile];
    v10 = [v9 legacyRepositoryProfile];
    v11 = [(HDCloudSyncSessionContext *)v5 initWithChangedSyncEntityCount:v6 profile:v10];
    sessionContext = self->_sessionContext;
    self->_sessionContext = v11;

    v13 = [(HDCloudSyncOperation *)self progress];
    v14 = [(HDCloudSyncSessionContext *)self->_sessionContext progress];
    v15 = [(HDCloudSyncOperation *)self progress];
    [v13 addChild:v14 withPendingUnitCount:{objc_msgSend(v15, "totalUnitCount")}];
  }
}

- (void)syncSession:(id)a3 sendChanges:(id)a4 completion:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_syncQueue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v54 = [MEMORY[0x277CCA890] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPushSequenceOperation.m" lineNumber:1114 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[HDCloudSyncSession class]]"}];
  }

  v12 = [(HDCloudSyncOperation *)self configuration];
  v13 = [v12 context];
  v14 = [v13 backgroundTask];
  v15 = [v14 shouldDefer];

  if (!v15)
  {
    v18 = [v10 hk_mapToSet:&__block_literal_global_384];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __71__HDCloudSyncPushSequenceOperation_syncSession_sendChanges_completion___block_invoke_2;
    v65[3] = &unk_2786160B8;
    v65[4] = self;
    [v10 enumerateObjectsUsingBlock:v65];
    v61 = v18;
    v23 = [v18 allObjects];
    v24 = [v23 componentsJoinedByString:{@", "}];

    os_unfair_lock_lock(&self->_lock);
    sessionContext = self->_sessionContext;
    v26 = [v9 sessionUUID];
    v64 = 0;
    LOBYTE(sessionContext) = [(HDCloudSyncSessionContext *)sessionContext resetInvalidArchiveCreatorWithSessionUUID:v26 error:&v64];
    v60 = v64;

    v27 = [(HDCloudSyncSessionContext *)self->_sessionContext archiveSize];
    os_unfair_lock_unlock(&self->_lock);
    if ((sessionContext & 1) == 0)
    {
      _HKInitializeLogging();
      v45 = *MEMORY[0x277CCC328];
      v43 = v60;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v67 = self;
        v68 = 2114;
        v69 = v60;
        _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset invalid archive creator: (%{public}@)", buf, 0x16u);
      }

      v11[2](v11, 0, v60);
      goto LABEL_32;
    }

    v28 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    v57 = v10;
    [v28 encodeObject:v10 forKey:@"changes"];
    v55 = v28;
    v59 = [v28 encodedData];
    v29 = [v59 length] + v27;
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v59 length];
      *buf = 138544386;
      v67 = self;
      v68 = 2112;
      v69 = v24;
      v70 = 2048;
      v71 = v29;
      v72 = 2048;
      v73 = v27;
      v74 = 2048;
      v75 = v32;
      _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Archiving changes for (%@): total: (%llu), assetSize: (%llu), data.length: (%lu)", buf, 0x34u);
    }

    v56 = v24;
    v33 = [(HDCloudSyncOperation *)self configuration];
    v34 = [v33 repository];
    [v34 profile];
    v35 = v58 = v29;
    v36 = [v35 cloudSyncManager];
    v37 = [v36 bytesPerChangeRecordAssetThresholdHardLimit];

    v38 = [(HDCloudSyncOperation *)self configuration];
    v39 = [v38 repository];
    v40 = [v39 profile];
    v41 = [v40 cloudSyncManager];
    v42 = [v41 bytesPerChangeRecordAssetThreshold];

    if (v58 >= v37)
    {
      _HKInitializeLogging();
      v46 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v67 = self;
        v68 = 2114;
        v69 = v9;
        v70 = 2048;
        v71 = v58;
        v72 = 2048;
        v73 = v37;
        _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Estimated asset data size (%llu) is over threshold hard limit (%ld), and needs to be uploaded", buf, 0x2Au);
      }

      os_unfair_lock_lock(&self->_lock);
      v63 = 0;
      v47 = [(HDCloudSyncPushSequenceOperation *)self _lock_finalizeNextChangeRecordForUploadToSession:v9 shouldFreeze:1 error:&v63];
      v43 = v63;
      os_unfair_lock_unlock(&self->_lock);
      v10 = v57;
      if ((v47 & 1) == 0)
      {
        goto LABEL_30;
      }

      v44 = 0;
    }

    else
    {
      v43 = v60;
      if (v58 >= v42)
      {
        _HKInitializeLogging();
        v48 = *MEMORY[0x277CCC328];
        v10 = v57;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v67 = self;
          v68 = 2114;
          v69 = v9;
          v70 = 2048;
          v71 = v58;
          v72 = 2048;
          v73 = v42;
          _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Estimated asset data size (%llu) is over threshold (%ld), and needs to be uploaded", buf, 0x2Au);
        }

        v44 = 1;
      }

      else
      {
        v44 = 0;
        v10 = v57;
      }
    }

    v49 = v43;
    v50 = self->_sessionContext;
    v51 = [v9 sessionUUID];
    v62 = v43;
    LOBYTE(v50) = [(HDCloudSyncSessionContext *)v50 addChangeData:v59 changes:v10 sessionIdentifier:v51 outError:&v62];
    v43 = v62;

    if (v50)
    {
      v24 = v56;
      if ((v44 & 1) != 0 || [(NSMutableArray *)self->_changeRecordsPendingPush count])
      {
        if ([(HDCloudSyncSessionContext *)self->_sessionContext hasOpenSequence])
        {
          v52 = 1;
        }

        else
        {
          v52 = 2;
        }
      }

      else
      {
        v52 = 1;
      }

      v18 = v61;
      v11[2](v11, v52, 0);
      goto LABEL_31;
    }

LABEL_30:
    v11[2](v11, 0, v43);
    v18 = v61;
    v24 = v56;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v67 = self;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation deferral requested.", buf, 0xCu);
  }

  v17 = MEMORY[0x277CCA9B8];
  v18 = [(HDCloudSyncOperation *)self configuration];
  v19 = [v18 context];
  v20 = [v19 backgroundTask];
  v21 = [v20 identifier];
  v22 = [v17 hk_error:708 format:{@"Canceling sync, xpc activity %@ indicated deferral.", v21}];
  v11[2](v11, 0, v22);

LABEL_33:
  v53 = *MEMORY[0x277D85DE8];
}

void __71__HDCloudSyncPushSequenceOperation_syncSession_sendChanges_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(HDCodableSyncEntityVersionRange);
  v4 = [v3 syncEntityIdentifier];
  v5 = [v4 codableEntityIdentifier];

  v6 = objc_alloc_init(HDCodableSyncVersionRange);
  -[HDCodableSyncVersionRange setMinimum:](v6, "setMinimum:", [v3 versionRange]);
  v7 = [v3 versionRange];

  [(HDCodableSyncVersionRange *)v6 setCurrent:HIDWORD(v7)];
  [(HDCodableSyncEntityVersionRange *)v8 setEntityIdentifier:v5];
  [(HDCodableSyncEntityVersionRange *)v8 setVersionRange:v6];
  [*(*(a1 + 32) + 184) addEntityVersionRange:v8];
}

- (BOOL)syncSession:(id)a3 didEndTransactionWithError:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  dispatch_assert_queue_V2(self->_syncQueue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPushSequenceOperation.m" lineNumber:1200 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[HDCloudSyncSession class]]"}];
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: didEndTransaction called for session: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(HDCloudSyncPushSequenceOperation *)self _lock_finalizeNextChangeRecordForUploadToSession:v7 shouldFreeze:1 error:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v28 = __Block_byref_object_copy__21;
    v29 = __Block_byref_object_dispose__21;
    v30 = 0;
    v10 = dispatch_semaphore_create(0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__HDCloudSyncPushSequenceOperation_syncSession_didEndTransactionWithError___block_invoke;
    v19[3] = &unk_2786160E0;
    v21 = &v23;
    v22 = buf;
    v11 = v10;
    v20 = v11;
    [(HDCloudSyncPushSequenceOperation *)self _uploadChangesForSyncSession:v7 isFinalUpload:0 completion:v19];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = *(v24 + 24);
    if ((v12 & 1) == 0)
    {
      v13 = *(*&buf[8] + 40);
      v14 = v13;
      if (v13)
      {
        if (a4)
        {
          v15 = v13;
          *a4 = v14;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v12 = *(v24 + 24);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __75__HDCloudSyncPushSequenceOperation_syncSession_didEndTransactionWithError___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)syncSession:(id)a3 didFinishSuccessfully:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  dispatch_assert_queue_V2(self->_syncQueue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPushSequenceOperation.m" lineNumber:1234 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[HDCloudSyncSession class]]"}];
  }

  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC328];
  v12 = *MEMORY[0x277CCC328];
  if (os_signpost_enabled(*MEMORY[0x277CCC328]))
  {
    v13 = v12;
    v14 = os_signpost_id_make_with_pointer(*v11, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        v16 = [(HDCloudSyncOperation *)self configuration];
        v17 = [v16 descriptionForSignpost];
        *buf = 67109378;
        *v23 = v6;
        *&v23[4] = 2114;
        *&v23[6] = v17;
        _os_signpost_emit_with_name_impl(&dword_228986000, v13, OS_SIGNPOST_INTERVAL_END, v15, "cloud-sync-push-session", "success=%{BOOL}d, %{public}@", buf, 0x12u);
      }
    }
  }

  _HKInitializeLogging();
  v18 = *v11;
  v19 = *v11;
  if (v6)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v23 = self;
      *&v23[8] = 2114;
      *&v23[10] = v9;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished session: %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncPushSequenceOperation *)self _finalizePushForSession:v9];
    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v23 = self;
      *&v23[8] = 2114;
      *&v23[10] = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Sync session %{public}@ failed: %{public}@", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(HDCloudSyncSessionContext *)self->_sessionContext finishProgress];
    os_unfair_lock_unlock(&self->_lock);
    [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v10];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end