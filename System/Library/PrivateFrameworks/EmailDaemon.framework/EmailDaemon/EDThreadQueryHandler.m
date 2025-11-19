@interface EDThreadQueryHandler
+ (OS_os_log)log;
- (BOOL)start;
- (EDThreadQueryHandler)initWithQuery:(id)a3 messagePersistence:(id)a4 threadPersistence:(id)a5 hookRegistry:(id)a6 vipManager:(id)a7 searchProvider:(id)a8 remindMeNotificationController:(id)a9 observer:(id)a10 observationIdentifier:(id)a11 delegate:(id)a12 observationResumer:(id)a13 threadMigratorManager:(id)a14;
- (EDThreadQueryHandlerDelegate)delegate;
- (id)_addSnippetHintsToExtraInfo:(id)a3;
- (id)inMemoryMessageObjectIDsForThread:(id)a3;
- (id)messageListItemForObjectID:(id)a3 isPersisted:(BOOL *)a4 error:(id *)a5;
- (id)messagesInConversationIDs:(id)a3 limit:(int64_t)a4;
- (id)threadReconciliationQueries;
- (void)_createUnderlyingHandlerIfNeededAndStart;
- (void)_tearDownWithQueryHandlerBlock:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedChangesForObjectIDs:(id)a4;
- (void)observer:(id)a3 matchedDeletedObjectIDs:(id)a4;
- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6;
- (void)observer:(id)a3 matchedOldestItemsUpdatedForMailboxes:(id)a4;
- (void)observer:(id)a3 replacedExistingObjectID:(id)a4 withNewObjectID:(id)a5;
- (void)observer:(id)a3 wasUpdated:(id)a4;
- (void)observerDidFailInitialLoad:(id)a3 extraInfo:(id)a4;
- (void)observerDidFinishInitialLoad:(id)a3 extraInfo:(id)a4;
- (void)observerDidFinishRemoteSearch:(id)a3;
- (void)observerWillRestart:(id)a3;
- (void)persistenceDidResetThreadScope:(id)a3;
- (void)requestSummaryForMessageObjectID:(id)a3;
- (void)start;
- (void)test_tearDown;
- (void)threadMigratorDidComplete:(id)a3;
@end

@implementation EDThreadQueryHandler

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_2;
  aBlock[3] = &unk_1E8258C60;
  v105 = v3;
  v116 = v105;
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v118 = *(a1 + 48);
  v117 = v5;
  v107 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) threadPersistence];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_3;
  v110[3] = &unk_1E8258C88;
  v7 = v105;
  v8 = *(a1 + 32);
  v114 = *(a1 + 56);
  v111 = v7;
  v112 = v8;
  v108 = v6;
  v113 = v108;
  v106 = _Block_copy(v110);
  v109 = 0;
  v9 = [*(a1 + 32) query];
  v10 = [v9 queryOptions];

  v11 = 0;
  if ((v10 & 0x4022) != 0 || !v108)
  {
    goto LABEL_14;
  }

  v12 = [*v4 query];
  v13 = [v12 targetClassOptions];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
  v15 = [EDPrecomputedThreadQueryHandler sortKeysForSectionPredicates:v14];

  v16 = [*v4 query];
  v17 = [v16 sortDescriptors];
  v18 = [v108 sortKeysForSortDescriptors:v17];

  if (v15)
  {
    v11 = [v15 mutableCopy];
    [v11 addObjectsFromArray:v18];
  }

  else
  {
    v11 = v18;
  }

  v19 = [*v4 query];
  v20 = [v19 queryOptions];

  v21 = [*v4 threadScope];
  LODWORD(v19) = [v108 canUsePrecomputedThreadsForThreadScope:v21 andSortKeys:v11 wantsPrecomputed:(v20 >> 12) & 1 threadScopeNeedsMigration:&v109];

  if (v19)
  {
    if (v109 == 1)
    {
      v22 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *v4;
        buf = 134217984;
        v120 = v23;
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "%p: thread scope state: perform migration", &buf, 0xCu);
      }

      v107[2](v107, 1);
      v24 = *(*v4 + 2);
      v25 = [*v4 threadScope];
      v26 = [v24 findThreadMigratorWithThreadScope:v25 inMemoryThreadQueryHandler:0];
      v27 = a1 + 72;
      v28 = *(*(a1 + 72) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v26;

      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v30 = +[EDThreadQueryHandler log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_2((a1 + 32), a1 + 72, v30);
        }

        [*(*(*v27 + 8) + 40) startObservingWithObserver:*v4];
      }

      else
      {
        v91 = [EDThreadMigrator alloc];
        v92 = [*v4 threadScope];
        v93 = [(EDThreadMigrator *)v91 initWithThreadScope:v92 threadPersistence:v108 queryHandler:*(*(*(a1 + 48) + 8) + 40)];
        v94 = *(*v27 + 8);
        v95 = *(v94 + 40);
        *(v94 + 40) = v93;

        [*(*(*v27 + 8) + 40) startObservingWithObserver:*v4];
        v96 = +[EDThreadQueryHandler log];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          v102 = *(a1 + 32);
          v103 = *(*(*(a1 + 72) + 8) + 40);
          v104 = *(*(*(a1 + 48) + 8) + 40);
          buf = 134218496;
          v120 = v102;
          v121 = 2048;
          v122 = v103;
          v123 = 2048;
          v124 = v104;
          _os_log_debug_impl(&dword_1C61EF000, v96, OS_LOG_TYPE_DEBUG, "%p: Created new migrator %p, handler %p and adding them to EDThreadMigratorManager", &buf, 0x20u);
        }

        v97 = *(a1 + 32);
        v98 = v97[2];
        v99 = *(*(*(a1 + 72) + 8) + 40);
        v100 = *(*(*(a1 + 48) + 8) + 40);
        v101 = [v97 threadScope];
        [v98 addThreadMigrator:v99 inMemoryThreadQueryHandler:v100 withThreadScope:v101];
      }
    }

    else
    {
      v89 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = *v4;
        buf = 134217984;
        v120 = v90;
        _os_log_impl(&dword_1C61EF000, v89, OS_LOG_TYPE_DEFAULT, "%p: thread scope state: use pre-computed", &buf, 0xCu);
      }

      v106[2](v106, v11);
    }
  }

  else
  {
LABEL_14:
    v31 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_1((a1 + 32), v31, v32, v33, v34, v35, v36, v37);
    }

    v107[2](v107, 0);
  }

  v38 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *v4;
    v40 = [*v4 query];
    v41 = [*v4 observationIdentifier];
    buf = 134218498;
    v120 = v39;
    v121 = 2114;
    v122 = v40;
    v123 = 2114;
    v124 = v41;
    _os_log_impl(&dword_1C61EF000, v38, OS_LOG_TYPE_DEFAULT, "%p: Creating implementations for thread query handler; query: {%{public}@}, observation identifier: {%{public}@}", &buf, 0x20u);
  }

  v42 = *(*(*(a1 + 48) + 8) + 40);
  v43 = [v7 inMemoryQueryHandler];
  LOBYTE(v42) = v42 == v43;

  if (v42)
  {
    v52 = [v7 inMemoryQueryHandler];

    if (v52)
    {
      v53 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *v4;
        v55 = [v7 inMemoryQueryHandler];
        buf = 134218240;
        v120 = v54;
        v121 = 2048;
        v122 = v55;
        _os_log_impl(&dword_1C61EF000, v53, OS_LOG_TYPE_DEFAULT, "%p Keeping existing in-memory query handler %p", &buf, 0x16u);
      }
    }
  }

  else
  {
    v44 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *v4;
      v46 = [v7 inMemoryQueryHandler];
      v47 = *(*(*(a1 + 48) + 8) + 40);
      buf = 134218496;
      v120 = v45;
      v121 = 2048;
      v122 = v46;
      v123 = 2048;
      v124 = v47;
      _os_log_impl(&dword_1C61EF000, v44, OS_LOG_TYPE_DEFAULT, "%p: Replacing in-memory query handler %p -> %p", &buf, 0x20u);
    }

    v48 = [v7 inMemoryQueryHandler];

    if (v48)
    {
      v49 = [v7 inMemoryQueryHandler];
      v50 = *(*(a1 + 80) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;
    }

    [v7 setInMemoryQueryHandler:*(*(*(a1 + 48) + 8) + 40)];
    [v7 setInMemoryObservationID:*(*(*(a1 + 40) + 8) + 40)];
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  v56 = *(*(*(a1 + 64) + 8) + 40);
  v57 = [v7 precomputedQueryHandler];
  LOBYTE(v56) = v56 == v57;

  if (v56)
  {
    v66 = [v7 precomputedQueryHandler];

    if (v66)
    {
      v67 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = *v4;
        v69 = [v7 precomputedQueryHandler];
        buf = 134218240;
        v120 = v68;
        v121 = 2048;
        v122 = v69;
        _os_log_impl(&dword_1C61EF000, v67, OS_LOG_TYPE_DEFAULT, "%p: Keeping existing pre-computed query handler %p", &buf, 0x16u);
      }
    }
  }

  else
  {
    v58 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *v4;
      v60 = [v7 precomputedQueryHandler];
      v61 = *(*(*(a1 + 64) + 8) + 40);
      buf = 134218496;
      v120 = v59;
      v121 = 2048;
      v122 = v60;
      v123 = 2048;
      v124 = v61;
      _os_log_impl(&dword_1C61EF000, v58, OS_LOG_TYPE_DEFAULT, "%p: Replacing pre-computed query handler %p -> %p", &buf, 0x20u);
    }

    v62 = [v7 precomputedQueryHandler];

    if (v62)
    {
      v63 = [v7 precomputedQueryHandler];
      v64 = *(*(a1 + 96) + 8);
      v65 = *(v64 + 40);
      *(v64 + 40) = v63;
    }

    [v7 setPrecomputedQueryHandler:*(*(*(a1 + 64) + 8) + 40)];
    [v7 setPrecomputedObservationID:*(*(*(a1 + 56) + 8) + 40)];
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v70 = [v7 threadMigrator];

    if (v70)
    {
      v71 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *v4;
        v73 = [v7 threadMigrator];
        v74 = *(*(*(a1 + 72) + 8) + 40);
        buf = 134218496;
        v120 = v72;
        v121 = 2048;
        v122 = v73;
        v123 = 2048;
        v124 = v74;
        _os_log_impl(&dword_1C61EF000, v71, OS_LOG_TYPE_DEFAULT, "%p: Replacing thread migrator %p -> %p", &buf, 0x20u);
      }

      v75 = [v7 threadMigrator];
      v76 = *(*(a1 + 104) + 8);
      v77 = *(v76 + 40);
      *(v76 + 40) = v75;
    }

    else
    {
      v77 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v86 = *(a1 + 32);
        v87 = *(*(*(a1 + 72) + 8) + 40);
        buf = 134218240;
        v120 = v86;
        v121 = 2048;
        v122 = v87;
        _os_log_impl(&dword_1C61EF000, v77, OS_LOG_TYPE_DEFAULT, "%p: Creating new thread migrator %p", &buf, 0x16u);
      }
    }

    v85 = *(*(*(a1 + 72) + 8) + 40);
LABEL_51:
    [v7 setThreadMigrator:v85];
    goto LABEL_52;
  }

  v78 = [v7 threadMigrator];

  if (v78)
  {
    v79 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = *v4;
      v81 = [v7 threadMigrator];
      buf = 134218240;
      v120 = v80;
      v121 = 2048;
      v122 = v81;
      _os_log_impl(&dword_1C61EF000, v79, OS_LOG_TYPE_DEFAULT, "%p: Removing thread migrator %p", &buf, 0x16u);
    }

    v82 = [v7 threadMigrator];
    v83 = *(*(a1 + 104) + 8);
    v84 = *(v83 + 40);
    *(v83 + 40) = v82;

    v85 = 0;
    goto LABEL_51;
  }

LABEL_52:

  v88 = *MEMORY[0x1E69E9840];
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_3(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [*(a1 + 32) precomputedQueryHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) precomputedObservationID];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [*(a1 + 32) precomputedQueryHandler];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E699AE08]) initAsEphemeralID:1];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [EDPrecomputedThreadQueryHandler alloc];
    v9 = [*(a1 + 40) query];
    v24 = [*(a1 + 40) threadScope];
    v14 = [*(a1 + 40) messagePersistence];
    v15 = *(a1 + 48);
    v16 = [*(a1 + 40) hookRegistry];
    v17 = [*(a1 + 40) remindMeNotificationController];
    v18 = *(a1 + 40);
    v19 = *(*(*(a1 + 56) + 8) + 40);
    v20 = [v18 observerResumer];
    v21 = [(EDPrecomputedThreadQueryHandler *)v13 initWithQuery:v9 threadScope:v24 sortKeys:v25 messagePersistence:v14 threadPersistence:v15 hookRegistry:v16 remindMeNotificationController:v17 observer:v18 observationIdentifier:v19 observationResumer:v20];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }
}

- (BOOL)start
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(EDThreadQueryHandler *)self threadScope];
    [(EDThreadQueryHandler *)self start];
  }

  v5 = 0;
  atomic_compare_exchange_strong(&self->_state, &v5, 1u);
  v6 = v5 == 0;
  if (!v5)
  {
    v7 = [(EDThreadQueryHandler *)self hookRegistry];
    [v7 registerThreadChangeHookResponder:self];

    [(EDThreadQueryHandler *)self _createUnderlyingHandlerIfNeededAndStart];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_createUnderlyingHandlerIfNeededAndStart
{
  v74 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__49;
  v64 = __Block_byref_object_dispose__49;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__49;
  v58 = __Block_byref_object_dispose__49;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__49;
  v52 = __Block_byref_object_dispose__49;
  v53 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__49;
  v46[4] = __Block_byref_object_dispose__49;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__49;
  v44[4] = __Block_byref_object_dispose__49;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__49;
  v42 = __Block_byref_object_dispose__49;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__49;
  v36 = __Block_byref_object_dispose__49;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__49;
  v30 = __Block_byref_object_dispose__49;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v3 = [(EDThreadQueryHandler *)self underlyingHandler];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke;
  v21[3] = &unk_1E8258CB0;
  v21[4] = self;
  v21[5] = v46;
  v21[6] = &v60;
  v21[7] = v44;
  v21[8] = &v54;
  v21[9] = &v48;
  v21[10] = &v38;
  v21[11] = &v22;
  v21[12] = &v32;
  v21[13] = &v26;
  [v3 performWhileLocked:v21];

  v4 = self;
  if (*(v23 + 24) == 1 && (atomic_exchange(&self->_isRunning._Value, 1u) & 1) != 0)
  {
    v5 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v67 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Notifying observer about restart.", buf, 0xCu);
    }

    v6 = [(EDThreadQueryHandler *)self resultsObserver];
    v7 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v6 observerWillRestart:v7];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  [v33[5] tearDown];
  if (!v27[5])
  {
    [v39[5] tearDown];
  }

  v9 = [v61[5] start];
  v10 = [v55[5] start];
  if (v8)
  {
    v11 = v10;
    if ((v9 | v10))
    {
      v12 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v61[5];
        v14 = v55[5];
        *buf = 134219008;
        v67 = v4;
        v68 = 2048;
        v69 = v13;
        v70 = 1024;
        *v71 = v9;
        *&v71[4] = 2048;
        *&v71[6] = v14;
        v72 = 1024;
        v73 = v11;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: didRestartObservers - didStart inMemoryQueryHandler(%p):%{BOOL}d precomputedQueryHandler(%p):%{BOOL}d", buf, 0x2Cu);
      }
    }

    else
    {
      v12 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v19 = v61[5];
        v20 = v55[5];
        *buf = 134219008;
        v67 = v4;
        v68 = 2048;
        v69 = v19;
        v70 = 1024;
        *v71 = 0;
        *&v71[4] = 2048;
        *&v71[6] = v20;
        v72 = 1024;
        v73 = 0;
        _os_log_fault_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_FAULT, "%p: called didRestartObservers but neither handler started - inMemoryQueryHandler(%p):%{BOOL}d precomputedQueryHandler(%p):%{BOOL}d", buf, 0x2Cu);
      }
    }
  }

  if (v49[5])
  {
    v15 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v49[5];
      v17 = v61[5];
      *buf = 134218496;
      v67 = v4;
      v68 = 2048;
      v69 = v16;
      v70 = 2048;
      *v71 = v17;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "%p: Migrator %p will be started by in-memory query handler %p.", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
  v18 = *MEMORY[0x1E69E9840];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDThreadQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_103 != -1)
  {
    dispatch_once(&log_onceToken_103, block);
  }

  v2 = log_log_103;

  return v2;
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 || ([*(a1 + 32) inMemoryQueryHandler], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    v3 = [objc_alloc(MEMORY[0x1E699AE08]) initAsEphemeralID:1];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [EDInMemoryThreadQueryHandler alloc];
    v24 = [*(a1 + 40) query];
    v7 = [*(a1 + 40) messagePersistence];
    v8 = [*(a1 + 40) hookRegistry];
    v9 = [*(a1 + 40) remindMeNotificationController];
    v10 = [*(a1 + 40) vipManager];
    v11 = [*(a1 + 40) searchProvider];
    v12 = *(a1 + 40);
    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = [v12 observerResumer];
    v15 = [(EDInMemoryThreadQueryHandler *)v6 initWithQuery:v24 messagePersistence:v7 hookRegistry:v8 remindMeNotificationController:v9 vipManager:v10 searchProvider:v11 observer:v12 observationIdentifier:v13 observationResumer:v14];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v19 = [*(a1 + 32) inMemoryObservationID];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = [*(a1 + 32) inMemoryQueryHandler];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

- (void)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: Canceling EDThreadQueryHandler", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: EDThreadQueryHandler deallocating", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __27__EDThreadQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_103;
  log_log_103 = v1;
}

- (EDThreadQueryHandler)initWithQuery:(id)a3 messagePersistence:(id)a4 threadPersistence:(id)a5 hookRegistry:(id)a6 vipManager:(id)a7 searchProvider:(id)a8 remindMeNotificationController:(id)a9 observer:(id)a10 observationIdentifier:(id)a11 delegate:(id)a12 observationResumer:(id)a13 threadMigratorManager:(id)a14
{
  v54 = a3;
  v38 = a4;
  v53 = a4;
  v39 = a5;
  v51 = a5;
  v40 = a6;
  v50 = a6;
  v49 = a7;
  v48 = a8;
  v47 = a9;
  v46 = a10;
  v45 = a11;
  v52 = a12;
  v44 = a13;
  v43 = a14;
  v55.receiver = self;
  v55.super_class = EDThreadQueryHandler;
  v19 = [(EDThreadQueryHandler *)&v55 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_query, a3);
    v21 = MEMORY[0x1E699ADA0];
    v22 = [v54 predicate];
    v23 = [v53 mailboxPersistence];
    v24 = [v21 threadScopeForPredicate:v22 withMailboxTypeResolver:v23];
    threadScope = v20->_threadScope;
    v20->_threadScope = v24;

    objc_storeStrong(&v20->_messagePersistence, v38);
    objc_storeStrong(&v20->_threadPersistence, v39);
    objc_storeStrong(&v20->_hookRegistry, v40);
    objc_storeStrong(&v20->_vipManager, a7);
    objc_storeStrong(&v20->_searchProvider, a8);
    objc_storeStrong(&v20->_remindMeNotificationController, a9);
    objc_storeStrong(&v20->_resultsObserver, a10);
    objc_storeStrong(&v20->_observationIdentifier, a11);
    v26 = objc_alloc(MEMORY[0x1E699B7F0]);
    v27 = objc_alloc_init(_EDThreadQueryUnderlyingHandlers);
    v28 = [v26 initWithObject:v27];
    underlyingHandler = v20->_underlyingHandler;
    v20->_underlyingHandler = v28;

    objc_storeWeak(&v20->_delegate, v52);
    objc_storeStrong(&v20->_observerResumer, a13);
    objc_storeStrong(&v20->_threadMigratorManager, a14);
    v30 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [EDThreadQueryHandler initWithQuery:v20 messagePersistence:v30 threadPersistence:v31 hookRegistry:v32 vipManager:v33 searchProvider:v34 remindMeNotificationController:v35 observer:v36 observationIdentifier:? delegate:? observationResumer:? threadMigratorManager:?];
    }
  }

  return v20;
}

- (void)_tearDownWithQueryHandlerBlock:(id)a3
{
  v4 = a3;
  if (atomic_exchange(&self->_state, 2u) != 2)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__49;
    v24 = __Block_byref_object_dispose__49;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__49;
    v18 = __Block_byref_object_dispose__49;
    v19 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__49;
    v12 = __Block_byref_object_dispose__49;
    v13 = 0;
    v5 = [(EDThreadQueryHandler *)self underlyingHandler];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__EDThreadQueryHandler__tearDownWithQueryHandlerBlock___block_invoke;
    v7[3] = &unk_1E8258CD8;
    v7[4] = &v20;
    v7[5] = &v14;
    v7[6] = &v8;
    [v5 performWhileLocked:v7];

    v6 = v9[5];
    if (v6)
    {
      [v6 stopObservingWithObserver:self];
    }

    else
    {
      v4[2](v4, v21[5]);
    }

    v4[2](v4, v15[5]);
    _Block_object_dispose(&v8, 8);

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }
}

void __55__EDThreadQueryHandler__tearDownWithQueryHandlerBlock___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 inMemoryQueryHandler];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v12 precomputedQueryHandler];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v12 threadMigrator];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  [v12 setInMemoryQueryHandler:0];
  [v12 setPrecomputedQueryHandler:0];
  [v12 setThreadMigrator:0];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"EDThreadQueryHandler.m" lineNumber:339 description:{@"%s can only be called from unit tests", "-[EDThreadQueryHandler test_tearDown]"}];
  }

  [(EDThreadQueryHandler *)self _tearDownWithQueryHandlerBlock:&__block_literal_global_94];
}

- (void)requestSummaryForMessageObjectID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__49;
  v11 = __Block_byref_object_dispose__49;
  v12 = 0;
  v5 = [(EDThreadQueryHandler *)self underlyingHandler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__EDThreadQueryHandler_requestSummaryForMessageObjectID___block_invoke;
  v6[3] = &unk_1E8258D20;
  v6[4] = &v13;
  v6[5] = &v7;
  [v5 performWhileLocked:v6];

  [v14[5] requestSummaryForMessageObjectID:v4];
  [v8[5] requestSummaryForMessageObjectID:v4];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __57__EDThreadQueryHandler_requestSummaryForMessageObjectID___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 inMemoryQueryHandler];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v9 precomputedQueryHandler];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)messageListItemForObjectID:(id)a3 isPersisted:(BOOL *)a4 error:(id *)a5
{
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EDThreadQueryHandler.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"[objectID isKindOfClass:[EMThreadObjectID class]]"}];
  }

  EFContentProtectionValidateObservedStateIsUnlocked();
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__49;
  v34 = __Block_byref_object_dispose__49;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__49;
  v28 = __Block_byref_object_dispose__49;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__49;
  v22 = __Block_byref_object_dispose__49;
  v23 = 0;
  v10 = [(EDThreadQueryHandler *)self underlyingHandler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__EDThreadQueryHandler_messageListItemForObjectID_isPersisted_error___block_invoke;
  v17[3] = &unk_1E8258CD8;
  v17[4] = &v30;
  v17[5] = &v24;
  v17[6] = &v18;
  [v10 performWhileLocked:v17];

  v11 = v25[5];
  if (v11)
  {
    v12 = [v11 messageListItemForObjectID:v9 error:a5];
    v13 = v12;
    if (a4 && v12)
    {
      v14 = 1;
      goto LABEL_10;
    }

    if (v12)
    {
      goto LABEL_11;
    }
  }

  v13 = [v31[5] messageListItemForObjectID:v9 error:a5];
  if (!a4)
  {
    goto LABEL_11;
  }

  v14 = v19[5] != 0;
LABEL_10:
  *a4 = v14;
LABEL_11:
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v13;
}

void __69__EDThreadQueryHandler_messageListItemForObjectID_isPersisted_error___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 inMemoryQueryHandler];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v12 precomputedQueryHandler];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v12 threadMigrator];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (id)inMemoryMessageObjectIDsForThread:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = 0;
  v5 = [(EDThreadQueryHandler *)self underlyingHandler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__EDThreadQueryHandler_inMemoryMessageObjectIDsForThread___block_invoke;
  v12[3] = &unk_1E8258D48;
  v12[4] = &v13;
  [v5 performWhileLocked:v12];

  v6 = [v14[5] messagesForThread:v4];
  v7 = [v6 ef_mapSelector:sel_objectID];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __58__EDThreadQueryHandler_inMemoryMessageObjectIDsForThread___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 inMemoryQueryHandler];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)messagesInConversationIDs:(id)a3 limit:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__49;
  v20 = __Block_byref_object_dispose__49;
  v21 = 0;
  v8 = [(EDThreadQueryHandler *)self underlyingHandler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__EDThreadQueryHandler_messagesInConversationIDs_limit___block_invoke;
  v15[3] = &unk_1E8258D48;
  v15[4] = &v16;
  [v8 performWhileLocked:v15];

  v9 = v17[5];
  if (v9)
  {
    v10 = [v9 messagesInConversationIDs:v7 limit:a4];
  }

  else
  {
    v11 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      [(EDThreadQueryHandler *)self messagesInConversationIDs:v12 limit:v22];
    }

    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

void __56__EDThreadQueryHandler_messagesInConversationIDs_limit___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 inMemoryQueryHandler];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)threadMigratorDidComplete:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  v5 = [(EDThreadQueryHandler *)self underlyingHandler];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__EDThreadQueryHandler_threadMigratorDidComplete___block_invoke;
  v13 = &unk_1E8258D70;
  v15 = &v16;
  v6 = v4;
  v14 = v6;
  [v5 performWhileLocked:&v10];

  if (*(v17 + 24) == 1)
  {
    v7 = [EDThreadQueryHandler log:v10];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = self;
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Thread migrator %p did complete.", buf, 0x16u);
    }

    [(EDThreadQueryHandler *)self _createUnderlyingHandlerIfNeededAndStart];
    v8 = [(EDThreadQueryHandler *)self delegate];
    [v8 threadQueryHandlerStateDidChange:self];
  }

  else
  {
    v8 = [EDThreadQueryHandler log:v10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = self;
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Unknown thread migrator %p did complete.", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v16, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void __50__EDThreadQueryHandler_threadMigratorDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 threadMigrator];
  *(*(*(a1 + 40) + 8) + 24) = v4 == v5;
}

- (void)observer:(id)a3 wasUpdated:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:wasUpdated:];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -86;
  v9 = [(EDThreadQueryHandler *)self underlyingHandler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__EDThreadQueryHandler_observer_wasUpdated___block_invoke;
  v15[3] = &unk_1E8258D98;
  v17 = &v18;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  [v9 performWhileLocked:v15];

  if (*(v19 + 24) == 1)
  {
    v11 = [(EDThreadQueryHandler *)self resultsObserver];
    v12 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v11 observer:v12 wasUpdated:v7];
  }

  else
  {
    v13 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v23 = self;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler for %{public}@: %{public}@.", buf, 0x20u);
    }

    [v7 invoke];
  }

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __44__EDThreadQueryHandler_observer_wasUpdated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (id)_addSnippetHintsToExtraInfo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];
  v29 = [v5 objectForKeyedSubscript:@"EDSearchableIndexQueryTransformer.snippetHints"];

  v6 = [MEMORY[0x1E696AF00] currentThread];
  v7 = [v6 threadDictionary];
  [v7 setObject:0 forKeyedSubscript:@"EDSearchableIndexQueryTransformer.snippetHints"];

  if ([v29 count])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v29;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [v14 snippetHints];
          v16 = [v14 searchableItemIdentifier];
          [v8 setObject:v15 forKeyedSubscript:v16];

          v17 = [v14 searchableItemIdentifier];
          [v9 addObject:v17];
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v11);
    }

    v18 = [(EDThreadQueryHandler *)self messagePersistence];
    v19 = [v18 messageObjectIDsForSearchableItemIdentifiers:v9];

    v20 = [v19 second];
    v21 = objc_opt_new();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __52__EDThreadQueryHandler__addSnippetHintsToExtraInfo___block_invoke;
    v30[3] = &unk_1E8258DC0;
    v22 = v20;
    v31 = v22;
    v23 = v21;
    v32 = v23;
    v24 = v8;
    v33 = v24;
    [v9 enumerateObjectsUsingBlock:v30];
    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v28];
    [v25 setObject:v23 forKeyedSubscript:*MEMORY[0x1E699A7D8]];
  }

  else
  {
    v25 = v28;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __52__EDThreadQueryHandler__addSnippetHintsToExtraInfo___block_invoke(id *a1, void *a2)
{
  v5 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [a1[6] objectForKeyedSubscript:v5];
    [a1[5] setObject:v4 forKeyedSubscript:v3];
  }
}

- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedAddedObjectIDs:before:extraInfo:];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__49;
  v37 = __Block_byref_object_dispose__49;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = -86;
  v15 = [(EDThreadQueryHandler *)self underlyingHandler];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __72__EDThreadQueryHandler_observer_matchedAddedObjectIDs_before_extraInfo___block_invoke;
  v24 = &unk_1E8258DE8;
  v27 = &v33;
  v28 = &v29;
  v25 = self;
  v16 = v10;
  v26 = v16;
  [v15 performWhileLocked:&v21];

  if (*(v30 + 24) == 1)
  {
    [v34[5] addObjectIDsToMigrate:{v11, v21, v22, v23, v24, v25}];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v17 = [(EDThreadQueryHandler *)self _addSnippetHintsToExtraInfo:v13];

      v13 = v17;
    }

    v18 = [(EDThreadQueryHandler *)self resultsObserver];
    v19 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v18 observer:v19 matchedAddedObjectIDs:v11 before:v12 extraInfo:v13];
  }

  else
  {
    v18 = [EDThreadQueryHandler log:v21];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = self;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v20 = *MEMORY[0x1E69E9840];
}

void __72__EDThreadQueryHandler_observer_matchedAddedObjectIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)a3 matchedAddedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedAddedObjectIDs:after:extraInfo:];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__49;
  v37 = __Block_byref_object_dispose__49;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = -86;
  v15 = [(EDThreadQueryHandler *)self underlyingHandler];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __71__EDThreadQueryHandler_observer_matchedAddedObjectIDs_after_extraInfo___block_invoke;
  v24 = &unk_1E8258DE8;
  v27 = &v33;
  v28 = &v29;
  v25 = self;
  v16 = v10;
  v26 = v16;
  [v15 performWhileLocked:&v21];

  if (*(v30 + 24) == 1)
  {
    [v34[5] addObjectIDsToMigrate:{v11, v21, v22, v23, v24, v25}];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v17 = [(EDThreadQueryHandler *)self _addSnippetHintsToExtraInfo:v13];

      v13 = v17;
    }

    v18 = [(EDThreadQueryHandler *)self resultsObserver];
    v19 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v18 observer:v19 matchedAddedObjectIDs:v11 after:v12 extraInfo:v13];
  }

  else
  {
    v18 = [EDThreadQueryHandler log:v21];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = self;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v20 = *MEMORY[0x1E69E9840];
}

void __71__EDThreadQueryHandler_observer_matchedAddedObjectIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 before:(id)a5 extraInfo:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedMovedObjectIDs:before:extraInfo:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -86;
  v15 = [(EDThreadQueryHandler *)self underlyingHandler];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__EDThreadQueryHandler_observer_matchedMovedObjectIDs_before_extraInfo___block_invoke;
  v20[3] = &unk_1E8258D98;
  v22 = &v23;
  v20[4] = self;
  v16 = v10;
  v21 = v16;
  [v15 performWhileLocked:v20];

  if (*(v24 + 24) == 1)
  {
    v17 = [(EDThreadQueryHandler *)self resultsObserver];
    v18 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v17 observer:v18 matchedMovedObjectIDs:v11 before:v12 extraInfo:v13];
  }

  else
  {
    v17 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = self;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v23, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __72__EDThreadQueryHandler_observer_matchedMovedObjectIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observer:(id)a3 matchedMovedObjectIDs:(id)a4 after:(id)a5 extraInfo:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedMovedObjectIDs:after:extraInfo:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -86;
  v15 = [(EDThreadQueryHandler *)self underlyingHandler];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__EDThreadQueryHandler_observer_matchedMovedObjectIDs_after_extraInfo___block_invoke;
  v20[3] = &unk_1E8258D98;
  v22 = &v23;
  v20[4] = self;
  v16 = v10;
  v21 = v16;
  [v15 performWhileLocked:v20];

  if (*(v24 + 24) == 1)
  {
    v17 = [(EDThreadQueryHandler *)self resultsObserver];
    v18 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v17 observer:v18 matchedMovedObjectIDs:v11 after:v12 extraInfo:v13];
  }

  else
  {
    v17 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = self;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v23, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __71__EDThreadQueryHandler_observer_matchedMovedObjectIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observer:(id)a3 matchedChangesForObjectIDs:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedChangesForObjectIDs:];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__49;
  v32 = __Block_byref_object_dispose__49;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -86;
  v9 = [(EDThreadQueryHandler *)self underlyingHandler];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__EDThreadQueryHandler_observer_matchedChangesForObjectIDs___block_invoke;
  v19 = &unk_1E8258DE8;
  v22 = &v28;
  v23 = &v24;
  v20 = self;
  v10 = v6;
  v21 = v10;
  [v9 performWhileLocked:&v16];

  if (*(v25 + 24) == 1)
  {
    v11 = v29[5];
    v12 = [v7 allKeys];
    [v11 changeObjectIDsToMigrate:v12];

    v13 = [(EDThreadQueryHandler *)self resultsObserver];
    v14 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v13 observer:v14 matchedChangesForObjectIDs:v7];
  }

  else
  {
    v13 = [EDThreadQueryHandler log:v16];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = self;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v15 = *MEMORY[0x1E69E9840];
}

void __60__EDThreadQueryHandler_observer_matchedChangesForObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)a3 matchedDeletedObjectIDs:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedDeletedObjectIDs:];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__49;
  v30 = __Block_byref_object_dispose__49;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v9 = [(EDThreadQueryHandler *)self underlyingHandler];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__EDThreadQueryHandler_observer_matchedDeletedObjectIDs___block_invoke;
  v17 = &unk_1E8258DE8;
  v20 = &v26;
  v21 = &v22;
  v18 = self;
  v10 = v6;
  v19 = v10;
  [v9 performWhileLocked:&v14];

  if (*(v23 + 24) == 1)
  {
    [v27[5] deleteObjectIDsToMigrate:{v7, v14, v15, v16, v17, v18}];
    v11 = [(EDThreadQueryHandler *)self resultsObserver];
    v12 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v11 observer:v12 matchedDeletedObjectIDs:v7];
  }

  else
  {
    v11 = [EDThreadQueryHandler log:v14];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = self;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v13 = *MEMORY[0x1E69E9840];
}

void __57__EDThreadQueryHandler_observer_matchedDeletedObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observerDidFinishInitialLoad:(id)a3 extraInfo:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerDidFinishInitialLoad:extraInfo:];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__49;
  v33 = __Block_byref_object_dispose__49;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -86;
  v9 = [(EDThreadQueryHandler *)self underlyingHandler];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __63__EDThreadQueryHandler_observerDidFinishInitialLoad_extraInfo___block_invoke;
  v20 = &unk_1E8258DE8;
  v23 = &v29;
  v24 = &v25;
  v21 = self;
  v10 = v6;
  v22 = v10;
  [v9 performWhileLocked:&v17];

  if (*(v26 + 24) == 1)
  {
    if (v30[5])
    {
      v11 = [EDThreadQueryHandler log:v17];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = v30[5];
        *buf = 134218240;
        v36 = self;
        v37 = 2048;
        v38 = v12;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "%p: Starting migrator %p.", buf, 0x16u);
      }

      v13 = v30[5];
    }

    else
    {
      v13 = 0;
    }

    [v13 start];
    v14 = [(EDThreadQueryHandler *)self resultsObserver];
    v15 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v14 observerDidFinishInitialLoad:v15 extraInfo:v7];
  }

  else
  {
    v14 = [EDThreadQueryHandler log:v17];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = self;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __63__EDThreadQueryHandler_observerDidFinishInitialLoad_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observerDidFailInitialLoad:(id)a3 extraInfo:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerDidFailInitialLoad:extraInfo:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -86;
  v9 = [(EDThreadQueryHandler *)self underlyingHandler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__EDThreadQueryHandler_observerDidFailInitialLoad_extraInfo___block_invoke;
  v14[3] = &unk_1E8258D98;
  v16 = &v17;
  v14[4] = self;
  v10 = v6;
  v15 = v10;
  [v9 performWhileLocked:v14];

  if (*(v18 + 24) == 1)
  {
    v11 = [(EDThreadQueryHandler *)self resultsObserver];
    v12 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v11 observerDidFailInitialLoad:v12 extraInfo:v7];
  }

  else
  {
    v11 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = self;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v17, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __61__EDThreadQueryHandler_observerDidFailInitialLoad_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observerDidFinishRemoteSearch:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerDidFinishRemoteSearch:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -86;
  v6 = [(EDThreadQueryHandler *)self underlyingHandler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__EDThreadQueryHandler_observerDidFinishRemoteSearch___block_invoke;
  v11[3] = &unk_1E8258D98;
  v13 = &v14;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  [v6 performWhileLocked:v11];

  if (*(v15 + 24) == 1)
  {
    v8 = [(EDThreadQueryHandler *)self resultsObserver];
    v9 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v8 observerDidFinishRemoteSearch:v9];
  }

  else
  {
    v8 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = self;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x1E69E9840];
}

void __54__EDThreadQueryHandler_observerDidFinishRemoteSearch___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observer:(id)a3 replacedExistingObjectID:(id)a4 withNewObjectID:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:replacedExistingObjectID:withNewObjectID:];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -86;
  v12 = [(EDThreadQueryHandler *)self underlyingHandler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__EDThreadQueryHandler_observer_replacedExistingObjectID_withNewObjectID___block_invoke;
  v17[3] = &unk_1E8258D98;
  v19 = &v20;
  v17[4] = self;
  v13 = v8;
  v18 = v13;
  [v12 performWhileLocked:v17];

  if (*(v21 + 24) == 1)
  {
    v14 = [(EDThreadQueryHandler *)self resultsObserver];
    v15 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v14 observer:v15 replacedExistingObjectID:v9 withNewObjectID:v10];
  }

  else
  {
    v14 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = self;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v20, 8);
  v16 = *MEMORY[0x1E69E9840];
}

void __74__EDThreadQueryHandler_observer_replacedExistingObjectID_withNewObjectID___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observerWillRestart:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerWillRestart:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__49;
  v27 = __Block_byref_object_dispose__49;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  v6 = [(EDThreadQueryHandler *)self underlyingHandler];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__EDThreadQueryHandler_observerWillRestart___block_invoke;
  v14 = &unk_1E8258DE8;
  v17 = &v23;
  v18 = &v19;
  v15 = self;
  v7 = v4;
  v16 = v7;
  [v6 performWhileLocked:&v11];

  if (*(v20 + 24) == 1)
  {
    [v24[5] reset];
    v8 = [(EDThreadQueryHandler *)self resultsObserver];
    v9 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v8 observerWillRestart:v9];
  }

  else
  {
    v8 = [EDThreadQueryHandler log:v11];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = self;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  v10 = *MEMORY[0x1E69E9840];
}

void __44__EDThreadQueryHandler_observerWillRestart___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)a3 matchedOldestItemsUpdatedForMailboxes:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedOldestItemsUpdatedForMailboxes:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -86;
  v9 = [(EDThreadQueryHandler *)self underlyingHandler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__EDThreadQueryHandler_observer_matchedOldestItemsUpdatedForMailboxes___block_invoke;
  v14[3] = &unk_1E8258D98;
  v16 = &v17;
  v14[4] = self;
  v10 = v6;
  v15 = v10;
  [v9 performWhileLocked:v14];

  if (*(v18 + 24) == 1)
  {
    v11 = [(EDThreadQueryHandler *)self resultsObserver];
    v12 = [(EDThreadQueryHandler *)self observationIdentifier];
    [v11 observer:v12 matchedOldestItemsUpdatedForMailboxes:v7];
  }

  else
  {
    v11 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = self;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v17, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __71__EDThreadQueryHandler_observer_matchedOldestItemsUpdatedForMailboxes___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)persistenceDidResetThreadScope:(id)a3
{
  v6 = a3;
  v4 = [(EDThreadQueryHandler *)self threadScope];
  v5 = [v6 isEqual:v4];

  if (v5)
  {
    [(EDThreadQueryHandler *)self triggerMigration];
  }
}

- (id)threadReconciliationQueries
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(EDThreadQueryHandler *)self query];
  v4 = [v3 queryOptions];

  if ((v4 & 8) != 0)
  {
    v6 = [(EDThreadQueryHandler *)self query];
    v9[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (EDThreadQueryHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithQuery:(uint64_t)a3 messagePersistence:(uint64_t)a4 threadPersistence:(uint64_t)a5 hookRegistry:(uint64_t)a6 vipManager:(uint64_t)a7 searchProvider:(uint64_t)a8 remindMeNotificationController:observer:observationIdentifier:delegate:observationResumer:threadMigratorManager:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: EDThreadQueryHandler initializing", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: thread scope state: use in-memory. creating a new in memory thread query handler without migration", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  *v4 = 134218240;
  *&v4[4] = *a1;
  *&v4[12] = 2048;
  *&v4[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, a2, a3, "%p: Found existing migrator %p", *v4, *&v4[8]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 3.8521e-34);
  _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "%p: Starting EDThreadQueryHandler for threadscope\n%{public}@", v4, 0x16u);
}

- (void)messagesInConversationIDs:(uint64_t)a3 limit:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 3.8521e-34);
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "%p: Only in-memory threads are supported for %{public}@", v4, 0x16u);
}

- (void)observer:wasUpdated:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ was updated.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedAddedObjectIDs:before:extraInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched added object IDs before.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedAddedObjectIDs:after:extraInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched added object IDs after.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedMovedObjectIDs:before:extraInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched moved object IDs before.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedMovedObjectIDs:after:extraInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched moved object IDs after.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedChangesForObjectIDs:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched changes for object IDs.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedDeletedObjectIDs:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched deleted object IDs.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFinishInitialLoad:extraInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ finished initial load.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailInitialLoad:extraInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ failed initial load.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFinishRemoteSearch:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ finished remote search.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:replacedExistingObjectID:withNewObjectID:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ replaced existing object ID.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observerWillRestart:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ will restart.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observer:matchedOldestItemsUpdatedForMailboxes:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: ID %{public}@ matched oldest items updated for mailboxes.");
  v2 = *MEMORY[0x1E69E9840];
}

@end