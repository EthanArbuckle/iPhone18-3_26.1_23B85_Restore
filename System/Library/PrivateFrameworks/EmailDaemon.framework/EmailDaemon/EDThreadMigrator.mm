@interface EDThreadMigrator
+ (OS_os_log)log;
+ (id)signpostLog;
- (EDThreadMigrator)initWithThreadScope:(id)scope threadPersistence:(id)persistence queryHandler:(id)handler;
- (unint64_t)signpostID;
- (void)_failMigration;
- (void)_finishMigrating;
- (void)_migrateNextBatchWithGeneration:(unint64_t)generation;
- (void)_scheduleFinalizationForBatchedObjectIDs:(id)ds withGeneration:(unint64_t)generation forDelete:(BOOL)delete;
- (void)addObjectIDsToMigrate:(id)migrate;
- (void)cancel;
- (void)changeObjectIDsToMigrate:(id)migrate;
- (void)dealloc;
- (void)deleteObjectIDsToMigrate:(id)migrate;
- (void)reset;
- (void)start;
- (void)startObservingWithObserver:(id)observer;
- (void)stopObservingWithObserver:(id)observer;
@end

@implementation EDThreadMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__EDThreadMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_100 != -1)
  {
    dispatch_once(&log_onceToken_100, block);
  }

  v2 = log_log_100;

  return v2;
}

void __23__EDThreadMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_100;
  log_log_100 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDThreadMigrator_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_11 != -1)
  {
    dispatch_once(&signpostLog_onceToken_11, block);
  }

  v2 = signpostLog_log_11;

  return v2;
}

void __31__EDThreadMigrator_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_11;
  signpostLog_log_11 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDThreadMigrator)initWithThreadScope:(id)scope threadPersistence:(id)persistence queryHandler:(id)handler
{
  scopeCopy = scope;
  persistenceCopy = persistence;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = EDThreadMigrator;
  v11 = [(EDThreadMigrator *)&v27 init];
  v12 = v11;
  if (v11)
  {
    threadScope = v11->_threadScope;
    v11->_threadFinalizationInterval = 2.0;
    v14 = MEMORY[0x1E699B978];
    scopeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"EDThreadMigrator-%@", threadScope, scopeCopy];
    v16 = [v14 serialDispatchQueueSchedulerWithName:scopeCopy];
    workScheduler = v12->_workScheduler;
    v12->_workScheduler = v16;

    v18 = objc_alloc(MEMORY[0x1E699B7F0]);
    v19 = objc_alloc_init(_EDThreadMigrationState);
    v20 = [v18 initWithObject:v19];
    state = v12->_state;
    v12->_state = v20;

    objc_storeStrong(&v12->_threadScope, scope);
    objc_storeStrong(&v12->_threadPersistence, persistence);
    objc_storeStrong(&v12->_queryHandler, handler);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = weakObjectsHashTable;

    v12->_observerLock._os_unfair_lock_opaque = 0;
    v24 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [EDThreadMigrator initWithThreadScope:threadPersistence:queryHandler:];
    }
  }

  return v12;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "%p: EDThreadMigrator deallocating", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  *buf = 134218242;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: Starting migration of thread scope\n%{public}@", buf, 0x16u);
}

void __25__EDThreadMigrator_start__block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state])
  {
    v4 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [v3 generation];
      v7 = [v3 unmigratedCount];
      v8 = [v3 state] - 1;
      if (v8 > 4)
      {
        v9 = @"Not Started";
      }

      else
      {
        v9 = off_1E8258028[v8];
      }

      v31 = [*(a1 + 32) threadScope];
      *buf = 134219010;
      v38 = v5;
      v39 = 2048;
      v40 = v6;
      v41 = 2048;
      v42 = v7;
      v43 = 2114;
      v44 = v9;
      v45 = 2114;
      v46 = v31;
      _os_log_error_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_ERROR, "%p[%lu]: Failed to start migration for %lu threads due to wrong state: %{public}@\n%{public}@", buf, 0x34u);
    }
  }

  else
  {
    [v3 setState:1];
    v10 = +[EDThreadMigrator signpostLog];
    v11 = [*(a1 + 32) signpostID];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = *(a1 + 32);
      v13 = [v3 generation];
      v14 = [v3 unmigratedCount];
      v15 = [*(a1 + 32) threadScope];
      *buf = 134218754;
      v38 = v12;
      v39 = 2048;
      v40 = v13;
      v41 = 2048;
      v42 = v14;
      v43 = 2114;
      v44 = v15;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "THREAD MIGRATION", "%p[%lu]: Starting migration for %lu threads\n%{public}@", buf, 0x2Au);
    }

    v16 = [*(a1 + 32) threadPersistence];
    [v16 sendEventForCoreAnalytics:@"Start"];

    v4 = objc_alloc_init(MEMORY[0x1E699B798]);
    [v3 setMigrationCancelable:v4];
    if ([v3 isFullyMigrated])
    {
      [v3 setState:3];
      v17 = +[EDThreadMigrator signpostLog];
      v18 = [*(a1 + 32) signpostID];
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v19 = *(a1 + 32);
        v20 = [v3 generation];
        v21 = [*(a1 + 32) threadScope];
        *buf = 134218498;
        v38 = v19;
        v39 = 2048;
        v40 = v20;
        v41 = 2114;
        v42 = v21;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v17, OS_SIGNPOST_INTERVAL_END, v18, "THREAD MIGRATION", "%p[%lu]: Finished empty migration: %{public}@", buf, 0x20u);
      }

      v22 = [*(a1 + 32) workScheduler];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __25__EDThreadMigrator_start__block_invoke_15;
      v35[3] = &unk_1E8250128;
      v35[4] = *(a1 + 32);
      v36 = v4;
      [v22 performBlock:v35];
      v23 = &v36;
    }

    else
    {
      v24 = +[EDThreadMigrator signpostLog];
      v25 = [*(a1 + 32) signpostID];
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = *(a1 + 32);
        v27 = [v3 generation];
        v28 = [*(a1 + 32) threadScope];
        *buf = 134218498;
        v38 = v26;
        v39 = 2048;
        v40 = v27;
        v41 = 2114;
        v42 = v28;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v24, OS_SIGNPOST_INTERVAL_END, v25, "THREAD MIGRATION", "%p[%lu]: Migrating next batch: %{public}@", buf, 0x20u);
      }

      v29 = [*(a1 + 32) workScheduler];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __25__EDThreadMigrator_start__block_invoke_16;
      v32[3] = &unk_1E8250720;
      v32[4] = *(a1 + 32);
      v33 = v4;
      v34 = v3;
      [v29 performBlock:v32];

      v23 = &v33;
      v22 = v34;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __25__EDThreadMigrator_start__block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) threadPersistence];
  v3 = [*(a1 + 32) threadScope];
  v4 = [v2 beginMigratingThreadScope:v3];

  [*(a1 + 40) addCancelable:v4];
  [*(a1 + 32) _finishMigrating];
}

void __25__EDThreadMigrator_start__block_invoke_16(id *a1)
{
  v2 = [a1[4] threadPersistence];
  v3 = [a1[4] threadScope];
  v4 = [v2 beginMigratingThreadScope:v3];

  [a1[5] addCancelable:v4];
  [a1[4] _migrateNextBatchWithGeneration:{objc_msgSend(a1[6], "generation")}];
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "%p: Canceling migration", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __26__EDThreadMigrator_cancel__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 generation];
    v7 = [v3 state];
    if ((v7 - 1) > 4)
    {
      v8 = @"Not Started";
    }

    else
    {
      v8 = off_1E8258028[v7 - 1];
    }

    v20 = 134218498;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Canceling migration oldState: %{public}@", &v20, 0x20u);
  }

  if ([v3 isInProgress])
  {
    v9 = +[EDThreadMigrator signpostLog];
    v10 = [*(a1 + 32) signpostID];
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = *(a1 + 32);
      v12 = [v3 generation];
      v13 = [v3 state];
      if ((v13 - 1) > 4)
      {
        v14 = @"Not Started";
      }

      else
      {
        v14 = off_1E8258028[v13 - 1];
      }

      v20 = 134218498;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_END, v10, "THREAD MIGRATION", "%p[%lu]: Canceling migration is still in progress: %{public}@", &v20, 0x20u);
    }

    v15 = [*(a1 + 32) threadPersistence];
    [v15 sendEventForCoreAnalytics:@"Cancel"];

    v16 = [v3 migrationCancelable];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [v3 setMigrationCancelable:0];
  }

  [v3 setState:5];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "%p: Resetting migration", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __25__EDThreadMigrator_reset__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 generation];
    v7 = [v3 state];
    if ((v7 - 1) > 4)
    {
      v8 = @"Not Started";
    }

    else
    {
      v8 = off_1E8258028[v7 - 1];
    }

    v20 = 134218498;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resetting migration oldState: %{public}@", &v20, 0x20u);
  }

  if ([v3 isInProgress])
  {
    v9 = +[EDThreadMigrator signpostLog];
    v10 = [*(a1 + 32) signpostID];
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = *(a1 + 32);
      v12 = [v3 generation];
      v13 = [v3 state];
      if ((v13 - 1) > 4)
      {
        v14 = @"Not Started";
      }

      else
      {
        v14 = off_1E8258028[v13 - 1];
      }

      v20 = 134218498;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "THREAD MIGRATION", "%p[%lu]: Resetting migration is still in progress: %{public}@", &v20, 0x20u);
    }

    v15 = [*(a1 + 32) threadPersistence];
    [v15 sendEventForCoreAnalytics:@"Reset"];

    v16 = [v3 migrationCancelable];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [v3 setMigrationCancelable:0];
  }

  [v3 reset];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_failMigration
{
  v15 = *MEMORY[0x1E69E9840];
  state = [(EDThreadMigrator *)self state];
  [state performWhileLocked:&__block_literal_global_91];

  os_unfair_lock_lock(&self->_observerLock);
  v4 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) threadMigratorDidFail:{self, v10}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_migrateNextBatchWithGeneration:(unint64_t)generation
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__46;
  v21 = __Block_byref_object_dispose__46;
  v22 = 0;
  state = [(EDThreadMigrator *)self state];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__EDThreadMigrator__migrateNextBatchWithGeneration___block_invoke;
  v16[3] = &unk_1E8257F40;
  v16[7] = &v27;
  v16[8] = generation;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v23;
  [state performWhileLocked:v16];

  if ((v28[3] & 1) == 0)
  {
    queryHandler = [(EDThreadMigrator *)self queryHandler];
    v7 = [queryHandler threadsAndMessagesForObjectIDs:v18[5]];
    threadPersistence = [(EDThreadMigrator *)self threadPersistence];
    v9 = [threadPersistence addThreadsDuringMigration:v7];

    if (v9)
    {
      v10 = [v18[5] copy];
      [(EDThreadMigrator *)self _scheduleFinalizationForBatchedObjectIDs:v10 withGeneration:generation forDelete:0];

      if ((v24[3] & 1) == 0)
      {
        workScheduler = [(EDThreadMigrator *)self workScheduler];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __52__EDThreadMigrator__migrateNextBatchWithGeneration___block_invoke_27;
        v15[3] = &unk_1E8250A90;
        v15[4] = self;
        v15[5] = generation;
        [workScheduler performBlock:v15];
      }
    }

    else
    {
      v12 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        threadScope = [(EDThreadMigrator *)self threadScope];
        *buf = 134218498;
        selfCopy = self;
        v33 = 2048;
        generationCopy = generation;
        v35 = 2114;
        v36 = threadScope;
        _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "%p[%lu]: Failed migration -- unable to add threads\n%{public}@", buf, 0x20u);
      }

      [(EDThreadMigrator *)self _failMigration];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __52__EDThreadMigrator__migrateNextBatchWithGeneration___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 verifyIsMigratingGeneration:*(a1 + 64) andIsInState:1 logIdentifier:*(a1 + 32) logAction:@"Stopping migration" logCount:{objc_msgSend(v3, "unmigratedCount")}])
  {
    v16 = 56;
LABEL_9:
    *(*(*(a1 + v16) + 8) + 24) = 1;
    goto LABEL_10;
  }

  v4 = [v3 nextBatch];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = [*(*(*(a1 + 40) + 8) + 40) count];
    v11 = [*(a1 + 32) threadScope];
    v18 = 134218754;
    v19 = v9;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Migrating batch of %lu threads\n%{public}@", &v18, 0x2Au);
  }

  if ([v3 isEmpty])
  {
    v12 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 64);
      v15 = [v13 threadScope];
      v18 = 134218498;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finishing migration\n%{public}@", &v18, 0x20u);
    }

    [v3 setState:2];
    v16 = 48;
    goto LABEL_9;
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleFinalizationForBatchedObjectIDs:(id)ds withGeneration:(unint64_t)generation forDelete:(BOOL)delete
{
  dsCopy = ds;
  workScheduler = [(EDThreadMigrator *)self workScheduler];
  [(EDThreadMigrator *)self threadFinalizationInterval];
  v11 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke;
  v14[3] = &unk_1E8257F90;
  deleteCopy = delete;
  v14[4] = self;
  generationCopy = generation;
  v12 = dsCopy;
  v15 = v12;
  v13 = [workScheduler afterDelay:v14 performBlock:v11];
}

void __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [*(a1 + 32) state];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke_2;
  v5[3] = &unk_1E8257F68;
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5[4] = v4;
  v6 = v3;
  v7 = &v10;
  [v2 performWhileLocked:v5];

  if (*(v11 + 24) == 1)
  {
    [*(a1 + 32) _finishMigrating];
  }

  _Block_object_dispose(&v10, 8);
}

void __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 64))
  {
    v4 = @"Skipping delete finalization";
  }

  else
  {
    v4 = @"Skipping finalization";
  }

  v5 = v4;
  if ([v3 verifyIsMigratingGeneration:*(a1 + 56) andIsInState:1 orState:2 logIdentifier:*(a1 + 32) logAction:v5 logCount:{objc_msgSend(*(a1 + 40), "count")}])
  {
    v6 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      if (*(a1 + 64))
      {
        v8 = @"deletion";
      }

      else
      {
        v8 = @"migration";
      }

      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) count];
      v11 = [*(a1 + 32) threadScope];
      v21 = 134219010;
      v22 = v9;
      v23 = 2048;
      v24 = v7;
      v25 = 2114;
      v26 = v8;
      v27 = 2048;
      v28 = v10;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finalized %{public}@ for %lu threads: %{public}@", &v21, 0x34u);
    }

    v12 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
      [v3 removeDeletedObjectIDs:v12];
    }

    else
    {
      [v3 removeMigratedObjectIDs:v12];
    }

    if ([v3 state] == 2 && objc_msgSend(v3, "isFullyMigrated"))
    {
      v13 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 56);
        v16 = *(a1 + 64);
        v17 = [v14 threadScope];
        v18 = v17;
        v19 = &stru_1F45B4608;
        v21 = 134218754;
        v22 = v14;
        v23 = 2048;
        if (v16)
        {
          v19 = @"delete ";
        }

        v24 = v15;
        v25 = 2112;
        v26 = v19;
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finished migration after finalizing last %@batch: %{public}@", &v21, 0x2Au);
      }

      [v3 setState:3];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_finishMigrating
{
  v16 = *MEMORY[0x1E69E9840];
  threadPersistence = [(EDThreadMigrator *)self threadPersistence];
  threadScope = [(EDThreadMigrator *)self threadScope];
  [threadPersistence endMigratingThreadScope:threadScope];

  os_unfair_lock_lock(&self->_observerLock);
  v5 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) threadMigratorDidComplete:{self, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addObjectIDsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  state = [(EDThreadMigrator *)self state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke;
  v7[3] = &unk_1E8257FB8;
  v7[4] = self;
  v6 = migrateCopy;
  v8 = v6;
  [state performWhileLocked:v7];
}

void __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (v4 < 2)
  {
    v6 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = +[EDThreadMigrator log];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = [v3 generation];
          v20 = *(a1 + 40);
          v21 = [*(a1 + 32) threadScope];
          *buf = 134218754;
          v25 = v18;
          v26 = 2048;
          v27 = v19;
          v28 = 2114;
          v29 = v20;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "%p[%lu]: Got more object IDs after migration finished. objects: {%{public}@}; thread scope: {%{public}@}", buf, 0x2Au);
        }
      }

      goto LABEL_15;
    }

    [v3 setState:1];
    v7 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v3 generation];
      v10 = [*(a1 + 32) threadScope];
      *buf = 134218498;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resuming migration for thread scope %{public}@", buf, 0x20u);
    }

    v6 = 1;
  }

  [v3 addObjectIDs:*(a1 + 40)];
  v11 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v3 generation];
    v14 = [*(a1 + 40) count];
    v15 = [*(a1 + 32) threadScope];
    *buf = 134218754;
    v25 = v12;
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v14;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Added %lu threads to migration for thread scope %{public}@", buf, 0x2Au);
  }

  if (v6)
  {
    v16 = [*(a1 + 32) workScheduler];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke_46;
    v22[3] = &unk_1E8250128;
    v22[4] = *(a1 + 32);
    v23 = v3;
    [v16 performBlock:v22];
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke_46(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) generation];

  return [v1 _migrateNextBatchWithGeneration:v2];
}

- (void)changeObjectIDsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  state = [(EDThreadMigrator *)self state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke;
  v7[3] = &unk_1E8257FB8;
  v6 = migrateCopy;
  v8 = v6;
  selfCopy = self;
  [state performWhileLocked:v7];
}

void __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      v17 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        v20 = [v3 generation];
        v21 = *(a1 + 32);
        v22 = [*(a1 + 40) threadScope];
        *buf = 134218754;
        v28 = v19;
        v29 = 2048;
        v30 = v20;
        v31 = 2114;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        _os_log_error_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_ERROR, "%p[%lu]: Got changed object IDs after migration finished: %{public}@\n%{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke_2;
    v25[3] = &unk_1E8256010;
    v6 = v3;
    v26 = v6;
    v7 = [v5 ef_filter:v25];
    if (![v7 count])
    {
      goto LABEL_13;
    }

    [v6 addObjectIDs:v7];
    [v6 removeMigratedObjectIDs:v7];
    v8 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v6 generation];
      v11 = [*(a1 + 40) threadScope];
      *buf = 134218754;
      v28 = v9;
      v29 = 2048;
      v30 = v10;
      v31 = 2114;
      v32 = v7;
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resetting object IDs %{public}@ after change\n%{public}@", buf, 0x2Au);
    }

    if ([v6 state] == 2)
    {
      [v6 setState:1];
      v12 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = [v6 generation];
        v15 = [*(a1 + 40) threadScope];
        *buf = 134218498;
        v28 = v13;
        v29 = 2048;
        v30 = v14;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resuming migration\n%{public}@", buf, 0x20u);
      }

      v16 = [*(a1 + 40) workScheduler];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke_48;
      v23[3] = &unk_1E8250128;
      v23[4] = *(a1 + 40);
      v24 = v6;
      [v16 performBlock:v23];
    }

    else
    {
LABEL_13:
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) generation];

  return [v1 _migrateNextBatchWithGeneration:v2];
}

- (void)deleteObjectIDsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  state = [(EDThreadMigrator *)self state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke;
  v7[3] = &unk_1E8257FB8;
  v6 = migrateCopy;
  v8 = v6;
  selfCopy = self;
  [state performWhileLocked:v7];
}

void __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_2;
  aBlock[3] = &unk_1E8250720;
  v4 = v3;
  v34 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v35 = v5;
  v36 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [v4 state];
  if ((v8 - 1) < 2)
  {
    v7[2](v7);
    v11 = *(a1 + 32);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_49;
    v31[3] = &unk_1E8256010;
    v12 = v4;
    v32 = v12;
    v10 = [v11 ef_filter:v31];
    if ([v10 count])
    {
      [v12 addDeletedObjectIDs:v10];
      v13 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = [v12 generation];
        v16 = [*(a1 + 40) threadScope];
        *buf = 134218754;
        v38 = v14;
        v39 = 2048;
        v40 = v15;
        v41 = 2114;
        v42 = v10;
        v43 = 2114;
        v44 = v16;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Deleting %{public}@\n%{public}@", buf, 0x2Au);
      }
    }

    if ([v12 state]== 1 && [v12 isEmpty])
    {
      [v12 setState:2];
      v17 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = [v12 generation];
        v20 = [*(a1 + 40) threadScope];
        *buf = 134218498;
        v38 = v18;
        v39 = 2048;
        v40 = v19;
        v41 = 2114;
        v42 = v20;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finishing migration after deleting last batch: %{public}@", buf, 0x20u);
      }
    }

    v9 = v32;
    goto LABEL_17;
  }

  if (v8)
  {
    if (v8 == 3)
    {
      v9 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        v24 = [v4 generation];
        v25 = *(a1 + 32);
        v26 = [*(a1 + 40) threadScope];
        *buf = 134218754;
        v38 = v23;
        v39 = 2048;
        v40 = v24;
        v41 = 2114;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "%p[%lu]: Got deleted object IDs after migration finished: %{public}@\n%{public}@", buf, 0x2Au);
      }

      v10 = 0;
LABEL_17:

      goto LABEL_20;
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v7[2](v7);
  }

LABEL_20:
  if ([v10 count])
  {
    v21 = [*(a1 + 40) workScheduler];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_50;
    v27[3] = &unk_1E8250AB8;
    v27[4] = *(a1 + 40);
    v28 = v10;
    v29 = *(a1 + 32);
    v30 = v4;
    [v21 performBlock:v27];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_2(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [a1[4] removeObjectIDs:a1[5]];
  v2 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v4 = [a1[4] generation];
    v5 = [a1[5] count];
    v6 = [a1[6] threadScope];
    v8 = 134218754;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Deleting %lu threads from migration \n%{public}@", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_50(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) threadPersistence];
  v3 = [v2 deleteThreadsWithObjectIDs:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) generation];
    v7 = *MEMORY[0x1E69E9840];

    return [v4 _scheduleFinalizationForBatchedObjectIDs:v5 withGeneration:v6 forDelete:1];
  }

  else
  {
    v9 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 56) generation];
      v13 = [*(a1 + 32) threadScope];
      v14 = 134218498;
      v15 = v11;
      v16 = 2048;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "%p[%lu]: Failed migration -- unable to delete threads\n%{public}@", &v14, 0x20u);
    }

    result = [*(a1 + 32) _failMigration];
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (void)startObservingWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator startObservingWithObserver:];
  }

  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)stopObservingWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator stopObservingWithObserver:];
  }

  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)initWithThreadScope:threadPersistence:queryHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, v0, v1, "%p: EDThreadMigrator initializing", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startObservingWithObserver:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: Start observing %p", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stopObservingWithObserver:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: Stop observing %p", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

@end