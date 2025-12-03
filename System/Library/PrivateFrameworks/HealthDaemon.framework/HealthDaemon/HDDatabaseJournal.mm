@interface HDDatabaseJournal
+ (id)_journalEntriesFromChapterEnties:(uint64_t)enties;
- (BOOL)addJournalEntries:(id)entries profile:(id)profile error:(id *)error;
- (BOOL)mergeWithProfile:(id)profile activity:(id)activity shouldContinueHandler:(id)handler;
- (BOOL)performMergeTransactionWithProfile:(id)profile transactionContext:(id)context error:(id *)error block:(id)block;
- (HDDatabaseJournal)init;
- (HDDatabaseJournal)initWithType:(int64_t)type path:(id)path;
- (HDDatabaseJournalDelegate)delegate;
- (double)ageOfOldestJournal;
- (id)description;
- (id)journalMergeInterruptions;
- (id)progressForJournalMerge;
- (int64_t)journalChapterCount;
- (uint64_t)_setActiveTransactionAndReturnInterrupted:(uint64_t)interrupted;
- (unint64_t)sizeOnDisk;
- (void)_executeAtomically:(os_unfair_lock_s *)atomically;
- (void)_unitTesting_closeCurrentJournalChapter;
- (void)dealloc;
- (void)interruptJournalMerge;
- (void)invalidate;
- (void)resetJournalMergeInterruptionsCount;
- (void)resumeJournalMerge;
@end

@implementation HDDatabaseJournal

- (HDDatabaseJournal)initWithType:(int64_t)type path:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!type)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournal.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"type != HDDatabaseJournalTypeDefault"}];
  }

  v25.receiver = self;
  v25.super_class = HDDatabaseJournal;
  v8 = [(HDDatabaseJournal *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    URL = v9->_URL;
    v9->_URL = v10;

    v9->_journalLock._os_unfair_lock_opaque = 0;
    v12 = HKCreateSerialDispatchQueue();
    mergeQueue = v9->_mergeQueue;
    v9->_mergeQueue = v12;

    v9->_progressLock._os_unfair_lock_opaque = 0;
    *&v9->_interruptionLock._os_unfair_lock_opaque = 0;
    v9->_activeTransactionLock._os_unfair_lock_opaque = 0;
    v9->_journalStatus = 0;
    lastInsertedEntryClassName = v9->_lastInsertedEntryClassName;
    v9->_lastInsertedEntryClassName = 0;

    v9->_serializedDataEnumerationThreshold = 0x10000;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    journalMergeInterruptions = v9->_journalMergeInterruptions;
    v9->_journalMergeInterruptions = v15;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:pathCopy isDirectory:0] & 1) == 0)
    {
      v24 = 0;
      v18 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v24];
      v19 = v24;
      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v27 = pathCopy;
          v28 = 2114;
          v29 = v19;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Error creating journal directory %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HDDatabaseJournal)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  [(HDJournalChapter *)self->_currentJournalChapter close];
  v3.receiver = self;
  v3.super_class = HDDatabaseJournal;
  [(HDDatabaseJournal *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = HDStringFromDatabaseJournalType(self->_type);
  journalStatus = self->_journalStatus;
  if (journalStatus >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected (%ld)", self->_journalStatus];
  }

  else
  {
    v7 = off_278621460[journalStatus];
  }

  isOpen = [(HDJournalChapter *)self->_currentJournalChapter isOpen];
  v9 = @"Closed";
  if (isOpen)
  {
    v9 = @"Open";
  }

  v10 = [v3 stringWithFormat:@"<%@:%p, %@, %@, %@>", v4, self, v5, v7, v9];

  return v10;
}

- (BOOL)addJournalEntries:(id)entries profile:(id)profile error:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  os_unfair_lock_assert_owner(&self->_journalLock);
  if (self->_invalidated)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"Journal has already been invalidated."];
    v9 = 0;
    goto LABEL_55;
  }

  errorCopy = error;
  self->_journalStatus = 2;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2A0];
  v57 = entriesCopy;
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    v49 = v10;
    v50 = [entriesCopy count];
    path = [(NSURL *)self->_URL path];
    *buf = 134218242;
    v80 = v50;
    entriesCopy = v57;
    v81 = 2114;
    v82 = path;
    _os_log_debug_impl(&dword_228986000, v49, OS_LOG_TYPE_DEBUG, "Appending %lu journal entries to %{public}@", buf, 0x16u);
  }

  maximumJournalBytes = [(HDDatabaseJournal *)self maximumJournalBytes];
  if (maximumJournalBytes)
  {
    sizeOnDisk = [(HDDatabaseJournal *)self sizeOnDisk];
  }

  else
  {
    sizeOnDisk = 0;
  }

  v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = entriesCopy;
  v64 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (!v64)
  {
    v61 = 0;
    v65 = 0;
    goto LABEL_44;
  }

  v61 = 0;
  v65 = 0;
  v63 = *v76;
  v62 = maximumJournalBytes;
LABEL_10:
  v12 = 0;
  while (1)
  {
    if (*v76 != v63)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v75 + 1) + 8 * v12);
    v14 = objc_autoreleasePoolPush();
    v74 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v74];
    v16 = v74;
    if (maximumJournalBytes)
    {
      unsignedLongValue = [maximumJournalBytes unsignedLongValue];
      if ([v15 length] + sizeOnDisk > unsignedLongValue)
      {
        break;
      }
    }

    v67 = v12;
    v68 = v14;
    if (v15)
    {
      v18 = 1;
      while (1)
      {
        v19 = v18;
        v20 = objc_opt_class();
        v73 = v16;
        v21 = v15;
        if ([v21 length])
        {
          if (([(HDJournalChapter *)self->_currentJournalChapter canAppendData:v21]& 1) == 0)
          {
            [(HDJournalChapter *)self->_currentJournalChapter close];
          }

          if (([(HDJournalChapter *)self->_currentJournalChapter isOpen]& 1) != 0)
          {
LABEL_25:
            LOBYTE(v22) = [(HDJournalChapter *)self->_currentJournalChapter appendData:v21 entryClass:v20 error:&v73];
            goto LABEL_29;
          }

          v22 = [HDJournalChapterEnumerator nextJournalChapterNameForURL:self->_URL];
          if (v22)
          {
            v23 = [HDDatabaseJournalDatabase alloc];
            v24 = [(NSURL *)self->_URL URLByAppendingPathComponent:v22];
            v25 = [(HDDatabaseJournalDatabase *)v23 initWithURL:v24];
            currentJournalChapter = self->_currentJournalChapter;
            self->_currentJournalChapter = v25;

            _HKInitializeLogging();
            v27 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
            {
              v30 = self->_currentJournalChapter;
              *buf = 138543362;
              v80 = v30;
              _os_log_debug_impl(&dword_228986000, v27, OS_LOG_TYPE_DEBUG, "Creating new journal chapter %{public}@", buf, 0xCu);
            }

            v28 = [(HDJournalChapter *)self->_currentJournalChapter createAndOpenForWritingWithError:&v73];

            if (v28)
            {
              goto LABEL_25;
            }

            LOBYTE(v22) = 0;
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:&v73 code:102 format:@"Unable to create journal name"];
          }
        }

        else
        {
          LOBYTE(v22) = 1;
        }

LABEL_29:

        v29 = v73;
        if (v22)
        {
          ++v61;
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v59 objectForKeyedSubscript:v32];
          integerValue = [v33 integerValue];
          v35 = [v21 length];
          if (integerValue <= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = integerValue;
          }

          v37 = [MEMORY[0x277CCABB0] numberWithInteger:v36 >> 10];
          [v59 setObject:v37 forKeyedSubscript:v32];

          sizeOnDisk += [v21 length];
          goto LABEL_39;
        }

        v18 = 0;
        v16 = v29;
        if ((v19 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    v29 = v16;
LABEL_33:
    if (!v65)
    {
      v29 = v29;
      v65 = v29;
    }

LABEL_39:
    maximumJournalBytes = v62;

    objc_autoreleasePoolPop(v68);
    v12 = v67 + 1;
    if (v67 + 1 == v64)
    {
      v64 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
      if (!v64)
      {
        goto LABEL_44;
      }

      goto LABEL_10;
    }
  }

  v38 = [MEMORY[0x277CCA9B8] hk_error:123 format:{@"Cannot append journal entry of %lu bytes: current size is %lu and maximum is %zu", objc_msgSend(v15, "length"), sizeOnDisk, unsignedLongValue}];

  objc_autoreleasePoolPop(v14);
  v65 = v38;
LABEL_44:

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __53__HDDatabaseJournal_addJournalEntries_profile_error___block_invoke;
  v70[3] = &unk_278621358;
  v71 = profileCopy;
  selfCopy = self;
  [v59 enumerateKeysAndObjectsUsingBlock:v70];
  v9 = v65 == 0;
  if (v65)
  {
    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v52 = v39;
      v53 = [obj count];
      path2 = [(NSURL *)self->_URL path];
      *buf = 134218754;
      v80 = v61;
      v81 = 2048;
      v82 = v53;
      v83 = 2114;
      v84 = path2;
      v85 = 2114;
      v86 = v65;
      _os_log_error_impl(&dword_228986000, v52, OS_LOG_TYPE_ERROR, "Added %lu of %lu entries to %{public}@, error: %{public}@", buf, 0x2Au);
    }
  }

  v40 = self->_currentJournalChapter;
  v69 = 0;
  v41 = [(HDJournalChapter *)v40 flushDataToDisk:&v69];
  v42 = v69;
  if ((v41 & 1) == 0)
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v55 = self->_currentJournalChapter;
      *buf = 138543618;
      v80 = v55;
      v81 = 2114;
      v82 = v42;
      _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "Failed to flush data to %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v44 = v65;
  v45 = v44;
  if (v65)
  {
    if (errorCopy)
    {
      v46 = v44;
      *errorCopy = v45;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  entriesCopy = v57;
LABEL_55:

  v47 = *MEMORY[0x277D85DE8];
  return v9;
}

void __53__HDDatabaseJournal_addJournalEntries_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 daemon];
  v8 = [v9 analyticsSubmissionCoordinator];
  [v8 database_reportJournalEntryInsertedForJournal:*(*(a1 + 40) + 104) entryClass:v7 entrySize:v6];
}

- (BOOL)performMergeTransactionWithProfile:(id)profile transactionContext:(id)context error:(id *)error block:(id)block
{
  contextCopy = context;
  blockCopy = block;
  database = [profile database];
  if (!database)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournal.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

    if (self)
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_7;
  }

  if (!self)
  {
    goto LABEL_9;
  }

LABEL_3:
  v14 = [contextCopy mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  }

  v17 = v16;

  [(HDMutableDatabaseTransactionContext *)v17 setSkipJournalMerge:1];
  [(HDMutableDatabaseTransactionContext *)v17 setJournalType:self->_type];
  [(HDMutableDatabaseTransactionContext *)v17 setRequiresWrite:1];
  [(HDMutableDatabaseTransactionContext *)v17 setRequiresProtectedData:1];
LABEL_7:
  v18 = [database performTransactionWithContext:v17 error:error block:blockCopy inaccessibilityHandler:0];

  return v18;
}

- (id)progressForJournalMerge
{
  os_unfair_lock_lock(&self->_progressLock);
  if (self->_progressLock_observableProgress)
  {
    v3 = [MEMORY[0x277CCAC48] hd_progressMirroringProgress:?];
    os_unfair_lock_unlock(&self->_progressLock);
  }

  else
  {
    v4 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
    progressLock_observableProgress = self->_progressLock_observableProgress;
    self->_progressLock_observableProgress = v4;

    os_unfair_lock_unlock(&self->_progressLock);
    v3 = self->_progressLock_observableProgress;
  }

  return v3;
}

- (BOOL)mergeWithProfile:(id)profile activity:(id)activity shouldContinueHandler:(id)handler
{
  profileCopy = profile;
  activityCopy = activity;
  handlerCopy = handler;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__95;
  v28 = __Block_byref_object_dispose__95;
  v29 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HDDatabaseJournal_mergeWithProfile_activity_shouldContinueHandler___block_invoke;
  v17[3] = &unk_278621380;
  v17[4] = self;
  v21 = &v34;
  v11 = profileCopy;
  v18 = v11;
  v22 = &v24;
  v12 = activityCopy;
  v19 = v12;
  v13 = handlerCopy;
  v20 = v13;
  v23 = &v30;
  [(HDDatabaseJournal *)self _executeAtomically:v17];
  if (*(v35 + 24) == 1 && *(v31 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained databaseJournalMergeDidComplete:self];
  }

  [v25[5] invalidate];
  v15 = *(v35 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v15;
}

void __69__HDDatabaseJournal_mergeWithProfile_activity_shouldContinueHandler___block_invoke(uint64_t a1)
{
  v127 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 65) == 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_4:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(v2 + 56) == 1)
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 40) database];
  v5 = [v4 contentProtectionManager];
  v6 = [v5 observedState];

  if (v6 == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Trying to merge journals when device is locked", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v9 = [*(a1 + 40) daemon];
  v10 = [v9 maintenanceWorkCoordinator];
  v11 = [v10 takeMaintenanceSuspensionAssertionForOwner:@"HDDatabaseJournal.mergeWithProfile:activity:shouldContinueHandler:"];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v89 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:*(a1 + 32)];
  *(*(a1 + 32) + 96) = 1;
  v14 = *(a1 + 32);
  v15 = *(a1 + 56);
  v93 = *(a1 + 48);
  v97 = *(a1 + 40);
  v94 = v15;
  if (v14)
  {
    v98 = [[HDJournalChapterEnumerator alloc] initWithURL:*(v14 + 136)];
    v103 = v14;
    if ([(HDJournalChapterEnumerator *)v98 hasJournalChapters])
    {
      v16 = objc_opt_class();
      v87 = NSStringFromClass(v16);
      v17 = [v97 database];
      v106 = 0;
      v92 = [v17 takeAccessibilityAssertionWithOwnerIdentifier:v87 shouldPerformTransaction:0 timeout:&v106 error:600.0];
      v86 = v106;

      if (v92)
      {
        v105 = 0;
        v18 = [(HDJournalChapterEnumerator *)v98 loadSortedJournalChaptersWithError:&v105];
        v85 = v105;
        if (v18)
        {
          v19 = v14;
          os_unfair_lock_lock((v14 + 8));
          if (!*(v14 + 16))
          {
            v20 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
            v21 = *(v14 + 16);
            *(v14 + 16) = v20;

            v19 = v14;
          }

          v22 = *(v19 + 24);
          if (v22)
          {
            [*(v14 + 24) setTotalUnitCount:{-[HDJournalChapterEnumerator totalJournalChapterCount](v98, "totalJournalChapterCount") + objc_msgSend(v22, "completedUnitCount")}];
          }

          else
          {
            v27 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{-[HDJournalChapterEnumerator totalJournalChapterCount](v98, "totalJournalChapterCount")}];
            v28 = *(v14 + 24);
            *(v14 + 24) = v27;

            [*(v14 + 16) addChild:*(v14 + 24) withPendingUnitCount:1];
          }

          v84 = *(v14 + 24);
          os_unfair_lock_unlock((v14 + 8));
          if (![(HDJournalChapterEnumerator *)v98 hasMoreJournalChapters])
          {
            v74 = 0;
            goto LABEL_92;
          }

LABEL_28:
          v104 = 0;
          v88 = [(HDJournalChapterEnumerator *)v98 nextOpenJournalChapterError:&v104];
          v83 = v104;
          if (v88)
          {
            v96 = 0;
            v29 = 0;
            while (1)
            {
              os_unfair_lock_lock((v103 + 40));
              os_unfair_lock_unlock((v103 + 40));
              v100 = v29;
              if (v29 < 1)
              {
                v102 = 0;
              }

              else
              {
                if (v93)
                {
                  [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v29 + 1];
                }

                else
                {
                  [MEMORY[0x277CCACA8] stringWithFormat:@"(%ld / %ld)", v29 + 1, 10];
                }
                v30 = ;
                v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retrying, attempt %@", v30];
              }

              if (v96 >= 1)
              {
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuing (%ld)", v96];

                v102 = v31;
              }

              _HKInitializeLogging();
              v32 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
              {
                if (v102)
                {
                  v33 = v102;
                }

                else
                {
                  v33 = @"Starting";
                }

                v34 = v32;
                v35 = [(HDJournalChapterEnumerator *)v98 currentJournalChapterIndex];
                v36 = [(HDJournalChapterEnumerator *)v98 totalJournalChapterCount];
                *buf = 138413058;
                *&buf[4] = v33;
                *&buf[12] = 2114;
                *&buf[14] = v88;
                *&buf[22] = 2048;
                v116 = v35;
                LOWORD(v117) = 2048;
                *(&v117 + 2) = v36;
                _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%@ journal merge for %{public}@ (%ld of %ld)", buf, 0x2Au);
              }

              v37 = v88;
              v38 = v97;
              v99 = v92;
              v39 = v94;
              v40 = objc_alloc_init(MEMORY[0x277CBEAA8]);
              v41 = objc_alloc_init(HDDatabaseJournalMetrics);
              v42 = *MEMORY[0x277CCC2A0];
              v43 = _HKLogSignpostIDGenerate();
              _HKInitializeLogging();
              v44 = *MEMORY[0x277CCC2A0];
              if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
              {
                v45 = v44;
                v46 = v45;
                if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
                {
                  v47 = [v37 name];
                  LODWORD(v124) = 138543362;
                  *(&v124 + 4) = v47;
                  _os_signpost_emit_with_name_impl(&dword_228986000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v43, "merge-journal-chapter", "chapter=%{public}@", &v124, 0xCu);
                }
              }

              *&v124 = 0;
              *(&v124 + 1) = &v124;
              v125 = 0x2020000000;
              v126 = 0;
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke;
              v116 = &unk_2786213F8;
              *&v117 = v103;
              v122 = &v124;
              v95 = v37;
              *(&v117 + 1) = v95;
              v123 = v43;
              v48 = v38;
              v118 = v48;
              v90 = v39;
              v121 = v90;
              v49 = v41;
              v119 = v49;
              v91 = v40;
              v120 = v91;
              v50 = _Block_copy(buf);
              v51 = [v48 dataManager];
              [v51 openObserverTransaction];

              v52 = [v48 userDomainConceptManager];
              [v52 openObserverTransaction];

              v53 = *(v103 + 72);
              *(v103 + 72) = 0;

              v54 = objc_alloc_init(HDMutableDatabaseTransactionContext);
              [(HDMutableDatabaseTransactionContext *)v54 setCacheScope:1];
              [(HDMutableDatabaseTransactionContext *)v54 addAccessibilityAssertion:v99];
              v108 = 0;
              v55 = [v103 performMergeTransactionWithProfile:v48 transactionContext:v54 error:&v108 block:v50];
              v56 = v108;
              [(HDDatabaseJournal *)v103 _setActiveTransactionAndReturnInterrupted:?];
              v57 = [v48 dataManager];
              [v57 closeObserverTransaction];

              v58 = [v48 userDomainConceptManager];
              [v58 closeObserverTransaction];

              _HKInitializeLogging();
              v59 = *MEMORY[0x277CCC2A0];
              if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
              {
                v60 = v59;
                v61 = v60;
                if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
                {
                  v62 = [v95 name];
                  *v109 = 138543618;
                  v110 = v62;
                  v111 = 1024;
                  LODWORD(v112) = v55;
                  _os_signpost_emit_with_name_impl(&dword_228986000, v61, OS_SIGNPOST_INTERVAL_END, v43, "merge-journal-chapter", "chapter=%{public}@ success=%{BOOL}d", v109, 0x12u);
                }
              }

              if (v55)
              {
                if ((*(*(&v124 + 1) + 24) - 2) > 2 || ([*(v103 + 144) close], *(*(&v124 + 1) + 24) == 4))
                {
                  v63 = v56;
                }

                else
                {
                  [v95 close];
                  v107 = v56;
                  v71 = [v95 removeWithError:&v107];
                  v63 = v107;

                  if ((v71 & 1) == 0)
                  {
                    _HKInitializeLogging();
                    v72 = *MEMORY[0x277CCC2A0];
                    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                    {
                      *v109 = 138543618;
                      v110 = v88;
                      v111 = 2114;
                      v112 = v63;
                      _os_log_error_impl(&dword_228986000, v72, OS_LOG_TYPE_ERROR, "An error occurred while removing %{public}@: %{public}@", v109, 0x16u);
                    }
                  }
                }

                v64 = *(*(&v124 + 1) + 24);
                v56 = v63;
              }

              else if ([v56 hk_isTransactionInterruptedError])
              {
                _HKInitializeLogging();
                v65 = *MEMORY[0x277CCC2A0];
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = [*(v103 + 136) path];
                  v67 = *(v103 + 72);
                  v68 = [MEMORY[0x277CCACA8] stringWithFormat:@" with original error: %@", v56];
                  *v109 = 138543874;
                  v110 = v66;
                  v111 = 2114;
                  v112 = v67;
                  v113 = 2112;
                  v114 = v68;
                  _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_DEFAULT, "Journal merge transaction for %{public}@ (%{public}@) was interrupted%@", v109, 0x20u);
                }

                v64 = 1;
              }

              else
              {
                _HKInitializeLogging();
                v69 = *MEMORY[0x277CCC2A0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                {
                  *v109 = 138543618;
                  v110 = v88;
                  v111 = 2114;
                  v112 = v56;
                  _os_log_error_impl(&dword_228986000, v69, OS_LOG_TYPE_ERROR, "Merge transaction aborted for %{public}@; bailing out of journal merge: %{public}@", v109, 0x16u);
                }

                v64 = 0;
              }

              _Block_object_dispose(&v124, 8);
              if (v64 == 1)
              {
                v96 = 0;
                v101 = v100 + 1;
              }

              else
              {
                if (v64 != 4)
                {
                  if (v64)
                  {

                    if (v100 <= 9 || v93 != 0)
                    {
                      if (v84)
                      {
                        [v84 setCompletedUnitCount:{objc_msgSend(v84, "completedUnitCount") + 1}];
                      }

                      v74 = 0;
                      if ([(HDJournalChapterEnumerator *)v98 hasMoreJournalChapters])
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_92;
                    }
                  }

                  else
                  {

                    v75 = v93 != 0;
                    if (v100 < 10)
                    {
                      v75 = 1;
                    }

                    if (v75)
                    {
                      goto LABEL_91;
                    }
                  }

LABEL_90:
                  _HKInitializeLogging();
                  v76 = *MEMORY[0x277CCC2A0];
                  if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_91;
                  }

                  *buf = 138412290;
                  *&buf[4] = v88;
                  v82 = "Used maximum retry attempts for %@";
                  goto LABEL_102;
                }

                v101 = 0;
                ++v96;
              }

              v29 = v101;
              if (v101 >= 10 && v93 == 0)
              {
                goto LABEL_90;
              }
            }
          }

          _HKInitializeLogging();
          v76 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v83;
            v82 = "Could not get next journal chapter %{public}@";
LABEL_102:
            _os_log_error_impl(&dword_228986000, v76, OS_LOG_TYPE_ERROR, v82, buf, 0xCu);
          }

LABEL_91:

          v74 = 1;
LABEL_92:
          [v92 invalidate];
          [(HDJournalChapterEnumerator *)v98 closeJournalChapters];
          if ((v74 & 1) == 0)
          {
            os_unfair_lock_lock((v103 + 8));
            v77 = *(v103 + 24);
            *(v103 + 24) = 0;

            v78 = *(v103 + 16);
            *(v103 + 16) = 0;

            os_unfair_lock_unlock((v103 + 8));
            *(v103 + 56) = 1;
          }

          v24 = v74 ^ 1;
        }

        else
        {
          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v85;
            _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Failed to load sorted journal chapters: %{public}@", buf, 0xCu);
          }

          [v92 invalidate];
          v24 = 0;
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v86;
          _os_log_debug_impl(&dword_228986000, v25, OS_LOG_TYPE_DEBUG, "Failed to acquire database accessibility assertion for journal merge: %{public}@", buf, 0xCu);
        }

        v24 = 0;
      }
    }

    else
    {
      if (*(v14 + 104) != 1)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          v80 = *(v14 + 136);
          *buf = 138543362;
          *&buf[4] = v80;
          v81 = v23;
          _os_log_debug_impl(&dword_228986000, v81, OS_LOG_TYPE_DEBUG, "No journal chapter files to merge in %{public}@", buf, 0xCu);
        }
      }

      v24 = 1;
      *(v14 + 56) = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v24;
  *(*(a1 + 32) + 96) = 0;
  [v89 invalidate];
  *(*(*(a1 + 80) + 8) + 24) = 1;
  v79 = *MEMORY[0x277D85DE8];
}

- (void)_executeAtomically:(os_unfair_lock_s *)atomically
{
  v3 = a2;
  if (atomically)
  {
    os_unfair_lock_lock(atomically + 8);
    v3[2]();
    os_unfair_lock_unlock(atomically + 8);
  }
}

- (void)interruptJournalMerge
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_interruptionsInfoLock);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:dispatch_queue_get_label(0)];
  v4 = [(NSMutableDictionary *)self->_journalMergeInterruptions objectForKeyedSubscript:v3];
  unsignedIntValue = [v4 unsignedIntValue];

  journalMergeInterruptions = self->_journalMergeInterruptions;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
  [(NSMutableDictionary *)journalMergeInterruptions setObject:v7 forKey:v3];

  os_unfair_lock_unlock(&self->_interruptionsInfoLock);
  os_unfair_lock_lock(&self->_interruptionLock);
  os_unfair_lock_lock(&self->_activeTransactionLock);
  self->_interrupted = 1;
  if (self->_activeMergeTransaction)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      selfCopy = self;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Journal merge interruption requested on %@", &v10, 0x16u);
    }

    [(HDDatabaseTransaction *)self->_activeMergeTransaction requestTransactionInterruption];
  }

  os_unfair_lock_unlock(&self->_activeTransactionLock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resumeJournalMerge
{
  os_unfair_lock_lock(&self->_activeTransactionLock);
  self->_interrupted = 0;
  os_unfair_lock_unlock(&self->_activeTransactionLock);

  os_unfair_lock_unlock(&self->_interruptionLock);
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __31__HDDatabaseJournal_invalidate__block_invoke;
  v2[3] = &unk_278613968;
  v2[4] = self;
  [(HDDatabaseJournal *)self _executeAtomically:v2];
}

- (int64_t)journalChapterCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDDatabaseJournal_journalChapterCount__block_invoke;
  v4[3] = &unk_278613990;
  v4[4] = self;
  v4[5] = &v5;
  [(HDDatabaseJournal *)self _executeAtomically:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

int64_t __40__HDDatabaseJournal_journalChapterCount__block_invoke(uint64_t a1)
{
  result = [HDJournalChapterEnumerator journalChapterCountForURL:*(*(a1 + 32) + 136)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)sizeOnDisk
{
  v47[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v5 = *MEMORY[0x277CBE8A8];
  v6 = *MEMORY[0x277CBE910];
  v47[0] = *MEMORY[0x277CBE8A8];
  v47[1] = v6;
  v31 = v6;
  v7 = MEMORY[0x277CBEA60];
  v8 = URL;
  v9 = [v7 arrayWithObjects:v47 count:2];
  v30 = v3;
  v10 = [v3 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:0 errorHandler:&__block_literal_global_104];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = 0;
    v14 = *v39;
    while (1)
    {
      v15 = 0;
      v33 = v13;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        v36 = 0;
        v37 = 0;
        v17 = [v16 getResourceValue:&v37 forKey:v5 error:&v36];
        v18 = v37;
        v19 = v36;
        if ((v17 & 1) == 0)
        {
          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v43 = v16;
            v44 = 2114;
            v45 = v19;
            _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_INFO, "Failed to retrieve file type during size computation: %{public}@ (%{public}@)", buf, 0x16u);
          }

LABEL_14:
          v25 = v19;
          goto LABEL_18;
        }

        if (![v18 BOOLValue])
        {
          goto LABEL_14;
        }

        v20 = v14;
        v21 = v5;
        v22 = v11;
        v34 = 0;
        v35 = 0;
        v23 = [v16 getResourceValue:&v35 forKey:v31 error:&v34];
        v24 = v35;
        v25 = v34;

        if (v23)
        {
          v32 += [v24 longLongValue];
        }

        else
        {
          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v43 = v16;
            v44 = 2114;
            v45 = v25;
            _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_INFO, "Failed to retrieve file size during size computation: %{public}@ (%{public}@)", buf, 0x16u);
          }
        }

        v11 = v22;

        v5 = v21;
        v14 = v20;
        v13 = v33;
LABEL_18:

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (!v13)
      {
        goto LABEL_22;
      }
    }
  }

  v32 = 0;
LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __31__HDDatabaseJournal_sizeOnDisk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Failed to enumerate URL during size computation: %{public}@ (%{public}@)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (double)ageOfOldestJournal
{
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v5 = *MEMORY[0x277CBE8A8];
  v6 = *MEMORY[0x277CBE7C0];
  v54[0] = *MEMORY[0x277CBE8A8];
  v54[1] = v6;
  v35 = v6;
  v7 = MEMORY[0x277CBEA60];
  v8 = URL;
  v9 = [v7 arrayWithObjects:v54 count:2];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __39__HDDatabaseJournal_ageOfOldestJournal__block_invoke;
  v44[3] = &unk_2786213A8;
  v44[4] = self;
  v32 = v3;
  v10 = [v3 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:0 errorHandler:v44];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v14 = *v41;
    v15 = 0.0;
    v34 = *v41;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v38 = 0;
        v39 = 0;
        v18 = [v17 getResourceValue:&v39 forKey:v5 error:&v38];
        v19 = v39;
        v20 = v38;
        if ((v18 & 1) == 0)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v46 = selfCopy;
            v47 = 2114;
            v48 = v17;
            v49 = 2114;
            v50 = v20;
            _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve file type during journal age computation: %{public}@ (%{public}@)", buf, 0x20u);
          }

LABEL_17:
          v25 = v20;
          goto LABEL_21;
        }

        if (![v19 BOOLValue])
        {
          goto LABEL_17;
        }

        v21 = v5;
        v22 = v11;
        v36 = 0;
        v37 = 0;
        v23 = [v17 getResourceValue:&v37 forKey:v35 error:&v36];
        v24 = v37;
        v25 = v36;

        if (v23)
        {
          [v24 timeIntervalSinceNow];
          if (v15 < v26)
          {
            v15 = v26;
          }

          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            v46 = selfCopy;
            v47 = 2112;
            v48 = v17;
            v49 = 2114;
            v50 = v24;
            v51 = 2050;
            v52 = v15;
            _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Journal file %@ creation date %{public}@, oldest age %{public}f", buf, 0x2Au);
          }
        }

        else
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v46 = selfCopy;
            v47 = 2114;
            v48 = v17;
            v49 = 2114;
            v50 = v25;
            _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve file size during journal age computation: %{public}@ (%{public}@)", buf, 0x20u);
          }
        }

        v11 = v22;

        v5 = v21;
        v14 = v34;
LABEL_21:
      }

      v13 = [v11 countByEnumeratingWithState:&v40 objects:v53 count:16];
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  v15 = 0.0;
LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __39__HDDatabaseJournal_ageOfOldestJournal__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543874;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to enumerate URL during journal age computation: %{public}@ (%{public}@)", &v11, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([(HDDatabaseJournal *)*(a1 + 32) _setActiveTransactionAndReturnInterrupted:v5])
  {
    v6 = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];
    if (v6)
    {
      if (a3)
      {
        v7 = v6;
        *a3 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v31 = *(*(a1 + 80) + 8);
    v32 = 1;
    goto LABEL_19;
  }

  v8 = [*(a1 + 40) readVersionWithError:a3];
  if (!v8)
  {
    v31 = *(*(a1 + 80) + 8);
    v32 = 2;
LABEL_19:
    *(v31 + 24) = v32;
    goto LABEL_33;
  }

  v9 = v8;
  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC2A0];
  v11 = *MEMORY[0x277CCC2A0];
  if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
  {
    v12 = v11;
    v13 = v12;
    v14 = *(a1 + 88);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v15 = [*(a1 + 40) name];
      *buf = 138543362;
      v57 = v15;
      _os_signpost_emit_with_name_impl(&dword_228986000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "merge-journal-chapter-load-entries", "chapter=%{public}@", buf, 0xCu);
    }
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke_365;
  v43[3] = &unk_2786213D0;
  v49 = *(a1 + 88);
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v47 = *(a1 + 72);
  v48 = &v52;
  *&v18 = v17;
  *(&v18 + 1) = *(a1 + 32);
  v42 = v18;
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  *&v21 = v19;
  *(&v21 + 1) = v20;
  v44 = v42;
  v45 = v21;
  v50 = v9;
  v46 = v5;
  LODWORD(v16) = [v17 enumerateEntriesWithProfile:v16 transaction:v46 error:&v51 handler:v43];
  v22 = COERCE_DOUBLE(v51);
  *(*(*(a1 + 80) + 8) + 24) = v16;
  v23 = *(*(*(a1 + 80) + 8) + 24);
  if (v23 < 2)
  {
    _HKInitializeLogging();
    v24 = *v10;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v33 = HDStringFromJournalProcessingResult(*(*(*(a1 + 80) + 8) + 24));
      v34 = *(a1 + 40);
      *buf = 138543874;
      v57 = v33;
      v58 = 2114;
      v59 = v34;
      v60 = 2114;
      v61 = v22;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "A transient error (%{public}@) was encountered processing %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v23 - 3 >= 2)
    {
      if (v23 == 2)
      {
        _HKInitializeLogging();
        v35 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v41 = *(a1 + 40);
          *buf = 138543618;
          v57 = v41;
          v58 = 2114;
          v59 = v22;
          _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "A fatal error occurred while processing %{public}@, error: %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_26;
    }

    _HKInitializeLogging();
    v24 = *v10;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HDStringFromJournalProcessingResult(*(*(*(a1 + 80) + 8) + 24));
      v26 = *(a1 + 40);
      v27 = v53[3];
      [*(a1 + 64) timeIntervalSinceNow];
      v29 = v28;
      v30 = [*(a1 + 56) loggingDescription];
      *buf = 138544386;
      v57 = v25;
      v58 = 2114;
      v59 = v26;
      v60 = 2048;
      v61 = v27 * 0.0009765625;
      v62 = 2048;
      v63 = -v29;
      v64 = 2114;
      v65 = v30;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ processing %{public}@ (%0.1lfkb), time: %.2f sec.\n%{public}@", buf, 0x34u);
    }
  }

LABEL_26:
  if ((*(*(*(a1 + 80) + 8) + 24) - 3) >= 2)
  {
    v36 = *&v22;
    v37 = v36;
    if (v36)
    {
      if (a3)
      {
        v38 = v36;
        *a3 = v37;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v52, 8);
LABEL_33:

  v39 = *MEMORY[0x277D85DE8];
  return 1;
}

- (uint64_t)_setActiveTransactionAndReturnInterrupted:(uint64_t)interrupted
{
  v4 = a2;
  if (interrupted)
  {
    os_unfair_lock_lock((interrupted + 36));
    if (v4 && !*(interrupted + 48) && *(interrupted + 64) == 1)
    {
      [v4 requestTransactionInterruption];
      [v4 requireRollback];
    }

    objc_storeStrong((interrupted + 48), a2);
    v5 = *(interrupted + 64);
    os_unfair_lock_unlock((interrupted + 36));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __95__HDDatabaseJournal__mergeJournalChapter_profile_accessibilityAssertion_shouldContinueHandler___block_invoke_365(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v107 = *MEMORY[0x277D85DE8];
  v76 = a2;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  v77 = a1;
  if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
  {
    v8 = v7;
    v9 = v8;
    v10 = *(a1 + 88);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [*(v77 + 32) name];
      *buf = 138543362;
      *&buf[4] = v11;
      _os_signpost_emit_with_name_impl(&dword_228986000, v9, OS_SIGNPOST_INTERVAL_END, v10, "merge-journal-chapter-load-entries", "chapter=%{public}@", buf, 0xCu);
    }

    a1 = v77;
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    v75 = 0;
LABEL_10:
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v16 = v15;
      v17 = v16;
      v18 = *(v77 + 88);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        v19 = [*(v77 + 32) name];
        *buf = 138543362;
        *&buf[4] = v19;
        _os_signpost_emit_with_name_impl(&dword_228986000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "merge-journal-chapter-merge-entries", "chapter=%{public}@", buf, 0xCu);
      }
    }

    *(*(*(v77 + 80) + 8) + 24) += a3;
    v21 = *(v77 + 40);
    v20 = *(v77 + 48);
    v22 = *(v77 + 56);
    v74 = v76;
    v79 = v20;
    v78 = v22;
    v81 = v21;
    if (v21)
    {
      v98 = 0;
      v99 = &v98;
      v100 = 0x3032000000;
      v101 = __Block_byref_object_copy__95;
      v102 = __Block_byref_object_dispose__95;
      v103 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v94 = 0;
      v95 = &v94;
      v96 = 0x2020000000;
      v97 = 0;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      obj = v74;
      v24 = 0;
      v25 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
      if (!v25)
      {
        goto LABEL_37;
      }

      v26 = *v91;
      while (1)
      {
        v27 = 0;
        v28 = v24;
        do
        {
          if (*v91 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v90 + 1) + 8 * v27);
          v30 = [v29 entryClassName];
          v31 = v30 != v28;
          if (v30 == v28)
          {
            goto LABEL_24;
          }

          if (!v28)
          {
            v31 = 0;
            goto LABEL_29;
          }

          v21 = [v29 entryClassName];
          if ([v21 isEqualToString:v28])
          {
LABEL_24:
            v32 = v95[3];
            if ([v29 size] + v32 <= v81[10])
            {
              if (v30 != v28)
              {
              }

              goto LABEL_34;
            }
          }

          else
          {
            v31 = 1;
          }

LABEL_29:
          v33 = [v23 count];
          if (v31)
          {
            v34 = v33 == 0;
          }

          else
          {
            v34 = v33 == 0;
          }

          if (!v34)
          {
            v83[0] = MEMORY[0x277D85DD0];
            v83[1] = 3221225472;
            v83[2] = __58__HDDatabaseJournal__mergeJournalEntries_metrics_profile___block_invoke;
            v83[3] = &unk_278621420;
            v84 = v23;
            v85 = v78;
            v86 = v79;
            v87 = v28;
            v88 = &v94;
            v89 = &v98;
            HKWithAutoreleasePool();

            v30 = v84;
LABEL_34:
          }

          v24 = [v29 entryClassName];

          [v23 addObject:v29];
          v35 = [v29 size];
          v95[3] += v35;
          ++v27;
          v28 = v24;
        }

        while (v25 != v27);
        v25 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
        if (!v25)
        {
LABEL_37:

          if ([v23 count])
          {
            v36 = [HDDatabaseJournal _journalEntriesFromChapterEnties:v23];
            v37 = [v36 firstObject];
            [objc_opt_class() applyEntries:v36 withProfile:v78];

            v38 = [v36 firstObject];
            v39 = [v38 entryClassName];
            v40 = v95[3];
            [v99[5] timeIntervalSinceNow];
            [v79 addWithClassName:v39 size:v40 duration:-v41];
          }

          v42 = [v24 copy];
          v43 = v81[9];
          v81[9] = v42;

          _Block_object_dispose(&v94, 8);
          _Block_object_dispose(&v98, 8);

          break;
        }
      }
    }

    v44 = *(v77 + 40);
    v45 = *(v77 + 96);
    v46 = *(v77 + 64);
    v47 = *(v77 + 56);
    v48 = v46;
    v49 = v48;
    if (!v44)
    {
      v59 = 0;
      goto LABEL_61;
    }

    if (v45 != 3)
    {
      v59 = 1;
LABEL_61:

      _HKInitializeLogging();
      v66 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v67 = v66;
        v68 = v67;
        v69 = *(v77 + 88);
        if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
        {
          v70 = [*(v77 + 32) name];
          *buf = 138543618;
          *&buf[4] = v70;
          v105 = 1024;
          v106 = v59;
          _os_signpost_emit_with_name_impl(&dword_228986000, v68, OS_SIGNPOST_INTERVAL_END, v69, "merge-journal-chapter-merge-entries", "chapter=%{public}@ success=%{BOOL}d", buf, 0x12u);
        }
      }

      if (v59)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      goto LABEL_69;
    }

    v50 = [v48 databaseForEntityProtectionClass:2];
    *buf = 0;
    v51 = [(HDSQLiteEntity *)HDDataEntity maxPersistentIDWithPredicate:0 database:v50 error:buf];
    v52 = *buf;
    v53 = v52;
    if (v51)
    {
      v54 = [v51 longLongValue];
      v55 = [v47 currentSyncIdentityPersistentID];
      v83[0] = 0;
      v56 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity setOkemoZursObjectAnchor:v54 syncIdentity:v55 database:v50 error:v83];
      v57 = v83[0];
      v58 = v57;
      if (v56)
      {

LABEL_54:
        v59 = 1;
        goto LABEL_60;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Failed to set object anchor" underlyingError:v57];
    }

    else
    {
      if (!v52)
      {
        goto LABEL_54;
      }

      if (a5)
      {
        v64 = v52;
        v59 = 0;
        *a5 = v53;
LABEL_60:

        goto LABEL_61;
      }

      _HKLogDroppedError();
    }

    v59 = 0;
    goto LABEL_60;
  }

  v82 = 0;
  v13 = (*(v12 + 16))(v12, &v82);
  v14 = v82;
  if (v13)
  {
    v75 = v14;
    goto LABEL_10;
  }

  v60 = v14;
  _HKInitializeLogging();
  v61 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v60;
    _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "Journal merge aborted: should-continue handler returned NO: %{public}@", buf, 0xCu);
  }

  v62 = v60;
  v75 = v62;
  if (v62)
  {
    if (a5)
    {
      v63 = v62;
      v62 = v75;
      *a5 = v75;
    }

    else
    {
      _HKLogDroppedError();
      v62 = v75;
    }
  }

  v65 = 0;
LABEL_69:

  v71 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t __58__HDDatabaseJournal__mergeJournalEntries_metrics_profile___block_invoke(uint64_t a1)
{
  v2 = [HDDatabaseJournal _journalEntriesFromChapterEnties:?];
  v3 = [v2 firstObject];
  [objc_opt_class() applyEntries:v2 withProfile:*(a1 + 40)];

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(*(a1 + 64) + 8) + 24);
  [*(*(*(a1 + 72) + 8) + 40) timeIntervalSinceNow];
  [v4 addWithClassName:v5 size:v6 duration:-v7];
  [*(a1 + 32) removeAllObjects];
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

+ (id)_journalEntriesFromChapterEnties:(uint64_t)enties
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_384_1];

  return v3;
}

id __54__HDDatabaseJournal__journalEntriesFromChapterEnties___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = [a2 deserializedEntryWithError:&v7];
  v3 = v7;
  if (!v2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Unable to deserialize journal entry: %{public}@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)resetJournalMergeInterruptionsCount
{
  os_unfair_lock_lock(&self->_interruptionsInfoLock);
  [(NSMutableDictionary *)self->_journalMergeInterruptions removeAllObjects];

  os_unfair_lock_unlock(&self->_interruptionsInfoLock);
}

- (id)journalMergeInterruptions
{
  os_unfair_lock_lock(&self->_interruptionsInfoLock);
  v3 = [(NSMutableDictionary *)self->_journalMergeInterruptions copy];
  os_unfair_lock_unlock(&self->_interruptionsInfoLock);

  return v3;
}

- (void)_unitTesting_closeCurrentJournalChapter
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__HDDatabaseJournal__unitTesting_closeCurrentJournalChapter__block_invoke;
  v2[3] = &unk_278613968;
  v2[4] = self;
  [(HDDatabaseJournal *)self _executeAtomically:v2];
}

- (HDDatabaseJournalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end