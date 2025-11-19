@interface HDDaemonSyncMessageHandler
- (BOOL)_sendChangesWithError:(uint64_t)a1;
- (BOOL)sendCodableChange:(id)a3 version:(id)a4 resultAnchor:(int64_t)a5 sequence:(int64_t)a6 done:(BOOL)a7 error:(id *)a8;
- (HDDaemonSyncMessageHandler)initWithSyncEntityClass:(Class)a3 anchorRange:(HDSyncAnchorRange)a4 session:(id)a5 requiredAnchorMap:(id)a6;
- (id)description;
- (void)abandonUnsentChangesForError:(id)a3;
- (void)dealloc;
@end

@implementation HDDaemonSyncMessageHandler

- (HDDaemonSyncMessageHandler)initWithSyncEntityClass:(Class)a3 anchorRange:(HDSyncAnchorRange)a4 session:(id)a5 requiredAnchorMap:(id)a6
{
  end = a4.end;
  start = a4.start;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HDDaemonSyncMessageHandler;
  v14 = [(HDDaemonSyncMessageHandler *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_syncEntityClass = a3;
    v14->_anchorRange.start = start;
    v14->_anchorRange.end = end;
    v14->_lastAnchor = start;
    v14->_currentAnchor = start;
    objc_storeStrong(&v14->_session, a5);
    v16 = [v13 copy];
    requiredAnchorMap = v15->_requiredAnchorMap;
    v15->_requiredAnchorMap = v16;

    v15->_sendChangesStatus = 1;
    v15->_done = 0;
    changes = v15->_changes;
    v15->_changes = 0;

    v15->_accumulatedChangeSetSize = 0;
  }

  return v15;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_changes count])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      changes = self->_changes;
      v6 = v3;
      *buf = 138412546;
      v9 = self;
      v10 = 2048;
      v11 = [(NSMutableArray *)changes count];
      _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "%@ has %ld changes that must be sent prior to deallocation", buf, 0x16u);
    }
  }

  v7.receiver = self;
  v7.super_class = HDDaemonSyncMessageHandler;
  [(HDDaemonSyncMessageHandler *)&v7 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDSyncSession *)self->_session shortSessionIdentifier];
  end = self->_anchorRange.end;
  v7 = [v3 stringWithFormat:@"<%@:%p %@ %@ %lld -> %lld, %lld>", v4, self, v5, self->_syncEntityClass, self->_anchorRange.start, end, self->_currentAnchor];

  return v7;
}

- (BOOL)sendCodableChange:(id)a3 version:(id)a4 resultAnchor:(int64_t)a5 sequence:(int64_t)a6 done:(BOOL)a7 error:(id *)a8
{
  v8 = a7;
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (self->_done)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"HDDaemonSyncMessageHandler.m" lineNumber:94 description:{@"%@ is already done", self}];
  }

  self->_done = v8;
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    syncEntityClass = self->_syncEntityClass;
    v27 = v15;
    v16 = HDSyncVersionRangeToString(*&a4);
    v28 = a2;
    start = self->_anchorRange.start;
    end = self->_anchorRange.end;
    if (v8)
    {
      v19 = "final";
    }

    else
    {
      v19 = "interim";
    }

    *buf = 138545154;
    v32 = syncEntityClass;
    v33 = 2114;
    v34 = v16;
    v35 = 2048;
    v36 = start;
    v37 = 2048;
    v38 = end;
    a2 = v28;
    v39 = 2080;
    v40 = v19;
    v41 = 2048;
    v42 = a5;
    v43 = 2048;
    v44 = [v14 count];
    v45 = 2048;
    v46 = a6;
    _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Sync for %{public}@ (Version: %{public}@) from %lld -> %lld produced %s result anchor %lld and %lu objects with sequence %lld.", buf, 0x52u);
  }

  v20 = [(HDSyncSession *)self->_session syncAnchorMapLimits];

  if (a6 || self->_currentAnchor != a5 || v20)
  {
    if (self->_anchorRange.end < a5)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"HDDaemonSyncMessageHandler.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"resultAnchor <= _anchorRange.end"}];
    }

    v30 = v14;
    v21 = HKWithAutoreleasePool();
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a8 code:100 format:{@"syncObjectsWithStore failed to update result anchor for entity type %@.", self->_syncEntityClass}];
    [(NSMutableArray *)self->_changes removeAllObjects];
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL __89__HDDaemonSyncMessageHandler_sendCodableChange_version_resultAnchor_sequence_done_error___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 48))
  {
    *(*(a1 + 32) + 80) = *(*(a1 + 32) + 88);
    v4 = [*(*(a1 + 32) + 64) lastObject];
    v5 = [v4 sequenceNumber];
    [v4 setSequenceNumber:objc_msgSend(v5 done:{"longLongValue"), 1}];
  }

  if ([*(a1 + 40) count])
  {
    v6 = [*(*(a1 + 32) + 32) newChangeWithSyncEntityClass:*(*(a1 + 32) + 8) version:*(a1 + 64)];
    v7 = *(a1 + 40);
    v8 = HDSyncAnchorRangeMake(*(*(a1 + 32) + 80), *(a1 + 56));
    [v6 setObjects:v7 syncAnchorRange:v8 requiredAnchorMap:{v9, *(*(a1 + 32) + 40)}];
    [v6 setSequenceNumber:*(a1 + 48) done:*(a1 + 72)];
    if (!*(*(a1 + 32) + 64))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = *(a1 + 32);
      v12 = *(v11 + 64);
      *(v11 + 64) = v10;
    }

    v13 = [v6 encodedByteCount];
    v14 = [*(*(a1 + 32) + 32) maxEncodedBytesPerChangeSetForSyncEntityClass:*(*(a1 + 32) + 8)];
    v15 = *(a1 + 32);
    v16 = *(v15 + 72) + v13;
    if (v16 <= v14)
    {
      *(v15 + 72) = v16;
    }

    else
    {
      if (![(HDDaemonSyncMessageHandler *)v15 _sendChangesWithError:a2])
      {

        return 0;
      }

      *(*(a1 + 32) + 72) = v13;
    }

    [*(*(a1 + 32) + 64) hk_addNonNilObject:v6];
  }

  if (*(a1 + 72) != 1 || (result = [(HDDaemonSyncMessageHandler *)*(a1 + 32) _sendChangesWithError:a2]))
  {
    *(*(a1 + 32) + 88) = *(a1 + 56);
    return 1;
  }

  return result;
}

- (BOOL)_sendChangesWithError:(uint64_t)a1
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ([*(a1 + 64) count])
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v5 = "accumulated";
        if (*(a1 + 48))
        {
          v5 = "final";
        }

        *buf = 138543618;
        *&buf[4] = a1;
        *&buf[12] = 2080;
        *&buf[14] = v5;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempt sending %s changes", buf, 0x16u);
      }

      v6 = *(a1 + 32);
      v7 = *(a1 + 64);
      v8 = v6;
      objc_opt_self();
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__197;
      v29 = __Block_byref_object_dispose__197;
      v30 = 0;
      v9 = dispatch_semaphore_create(0);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __57__HDDaemonSyncMessageHandler__sendChanges_session_error___block_invoke;
      v36 = &unk_27862E958;
      v38 = &v31;
      v39 = &v25;
      v10 = v9;
      v37 = v10;
      [v8 sendChanges:v7 completion:buf];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      v11 = v26[5];
      v12 = v11;
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      v15 = v32[3];
      _Block_object_dispose(&v25, 8);

      _Block_object_dispose(&v31, 8);
      v16 = v13;
      [*(a1 + 64) removeAllObjects];
      v17 = v15 != 0;
      if (v15)
      {
        if (v15 == 2)
        {
          *(a1 + 96) = 2;
        }
      }

      else
      {
        v18 = v16;
        if (v13)
        {
          v19 = v18;
          if (a2)
          {
            v20 = v18;
            *a2 = v19;
          }

          else
          {
            _HKLogDroppedError();
          }

          *(a1 + 96) = 0;
          objc_storeStrong((a1 + 104), v11);
        }

        else
        {
          *(a1 + 96) = 0;
          v21 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sending changes failed but did not provide an error."];
          v22 = *(a1 + 104);
          *(a1 + 104) = v21;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

void __57__HDDaemonSyncMessageHandler__sendChanges_session_error___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)abandonUnsentChangesForError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_changes count])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      changes = self->_changes;
      v7 = v5;
      v9 = 138543874;
      v10 = self;
      v11 = 2048;
      v12 = [(NSMutableArray *)changes count];
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@ Abandoning %ld due to an error during generation: %{public}@", &v9, 0x20u);
    }

    [(NSMutableArray *)self->_changes removeAllObjects];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end