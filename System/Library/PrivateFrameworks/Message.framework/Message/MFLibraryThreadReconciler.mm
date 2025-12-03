@interface MFLibraryThreadReconciler
- (MFLibraryThreadReconciler)initWithHookRegistry:(id)registry persistence:(id)persistence;
- (id)_expressionForConversationIDs:(uint64_t)ds;
- (id)_journaledExpression;
- (uint64_t)_performReconciliationWithExpression:(void *)expression window:;
- (void)reconcileAllObjectsWithWindow:(id)window;
- (void)reconcileWithThreadsWithConversationIDs:(id)ds window:(id)window;
@end

@implementation MFLibraryThreadReconciler

- (MFLibraryThreadReconciler)initWithHookRegistry:(id)registry persistence:(id)persistence
{
  registryCopy = registry;
  persistenceCopy = persistence;
  v16.receiver = self;
  v16.super_class = MFLibraryThreadReconciler;
  v9 = [(MFLibraryThreadReconciler *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hookRegistry, registry);
    threadPersistence = [persistenceCopy threadPersistence];
    threadPersistence = v10->_threadPersistence;
    v10->_threadPersistence = threadPersistence;

    database = [persistenceCopy database];
    database = v10->_database;
    v10->_database = database;
  }

  return v10;
}

- (id)_journaledExpression
{
  if (self)
  {
    v1 = [MEMORY[0x1E699B8C8] column:@"journaled"];
    v2 = [v1 equalTo:&unk_1F27759B8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_expressionForConversationIDs:(uint64_t)ds
{
  v3 = a2;
  if (ds)
  {
    v4 = [MEMORY[0x1E699B8C8] column:@"conversation"];
    v5 = [v4 in:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reconcileAllObjectsWithWindow:(id)window
{
  v20 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = MFReconciliationSignpostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = MFReconciliationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Starting thread reconciliation for all threads", &v18, 2u);
  }

  v8 = MFReconciliationSignpostLog();
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MFLibraryThreadReconciliation", "Starting reconciliation of all threads enableTelemetry=YES ", &v18, 2u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
  _journaledExpression = [(MFLibraryThreadReconciler *)self _journaledExpression];
  v12 = [(MFLibraryThreadReconciler *)self _performReconciliationWithExpression:_journaledExpression window:windowCopy];
  v13 = MFReconciliationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = v12;
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Finished thread reconciliation for all threads. Reconciled %lu threads", &v18, 0xCu);
  }

  v14 = MFReconciliationSignpostLog();
  v15 = v14;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v18 = 134349056;
    v19 = v12;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v15, OS_SIGNPOST_INTERVAL_END, v6, "MFLibraryThreadReconciliation", "ThreadsReconciled=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", &v18, 0xCu);
  }

  [v10 timeIntervalSinceNow];
  if (v16 < -10.0)
  {
    EFSaveTailspin();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_performReconciliationWithExpression:(void *)expression window:
{
  v5 = a2;
  expressionCopy = expression;
  if (self)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"conversation" table:@"threads"];
    [v6 addResultColumn:@"scope"];
    [v6 addResultColumn:*MEMORY[0x1E699B768]];
    [v6 setWhere:v5];
    [v6 setLimit:25];
    [v6 orderByColumn:@"date" ascending:0];
    [v6 orderByColumn:@"conversation" ascending:1];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v21 = 0x2020000000;
    v22 = 1;
    v19 = 0;
    v20 = &v19;
    do
    {
      if (*(v20 + 24) != 1)
      {
        break;
      }

      v7 = *(self + 16);
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFLibraryThreadReconciler _performReconciliationWithExpression:window:]"];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke;
      v12[3] = &unk_1E7AA6178;
      v16 = &v23;
      v13 = expressionCopy;
      selfCopy = self;
      v15 = v6;
      v17 = &v27;
      v18 = &v19;
      [v7 __performWriteWithCaller:v8 usingBlock:v12];

      v9 = *(self + 8);
      [v9 persistenceDidFinishThreadUpdates];
    }

    while ((v24[3] & 1) != 0);
    self = v28[3];
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  return self;
}

- (void)reconcileWithThreadsWithConversationIDs:(id)ds window:(id)window
{
  v27[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  windowCopy = window;
  v8 = MFReconciliationSignpostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = MFReconciliationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Starting context based thread reconciliation for threads", &v25, 2u);
  }

  v11 = MFReconciliationSignpostLog();
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MFLibraryThreadContextBasedReconciliation", "Starting context based reconciliation enableTelemetry=YES ", &v25, 2u);
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v14 = objc_alloc(MEMORY[0x1E699B898]);
  _journaledExpression = [(MFLibraryThreadReconciler *)self _journaledExpression];
  v27[0] = _journaledExpression;
  v16 = [(MFLibraryThreadReconciler *)self _expressionForConversationIDs:dsCopy];
  v27[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v18 = [v14 initWithExpressions:v17];

  v19 = [(MFLibraryThreadReconciler *)self _performReconciliationWithExpression:v18 window:windowCopy];
  v20 = MFReconciliationLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = v19;
    _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "Finished context based thread reconciliation for threads. Reconciled %lu threads", &v25, 0xCu);
  }

  v21 = MFReconciliationSignpostLog();
  v22 = v21;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v25 = 134349056;
    v26 = v19;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v22, OS_SIGNPOST_INTERVAL_END, v9, "MFLibraryThreadContextBasedReconciliation", "ThreadsReconciled=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", &v25, 0xCu);
  }

  [v13 timeIntervalSinceNow];
  if (v23 < -10.0)
  {
    EFSaveTailspin();
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
    v27 = [*(*(a1 + 40) + 24) threadScopesByDatabaseID];
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(a1 + 48);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_2;
    v36[3] = &unk_1E7AA6150;
    v30 = v27;
    v37 = v30;
    v6 = v28;
    v38 = v6;
    v7 = v4;
    v39 = v7;
    if ([v3 executeSelectStatement:v5 withBlock:v36 error:0])
    {
      v8 = [v7 count];
      *(*(*(a1 + 64) + 8) + 24) += v8;
      *(*(*(a1 + 72) + 8) + 24) = v8 > 0x18;
      v9 = MFReconciliationLog();
      v29 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_cold_1(v8, v9);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v11)
      {
        v12 = *v33;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(a1 + 40);
            if (v14)
            {
              v14 = v14[3];
            }

            v15 = *(*(&v32 + 1) + 8 * i);
            v16 = v14;
            [v16 setPriorityForDisplayMessageSenderForThreadObjectID:v15];
          }

          v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v11);
      }

      v17 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
      v18 = [v17 in:v7];

      v19 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
      [v19 setObject:&unk_1F27759D0 forKeyedSubscript:@"journaled"];
      [v19 setWhereClause:v18];
      v31 = 0;
      v20 = [v3 executeUpdateStatement:v19 rowsChanged:&v31];
      if (v20)
      {
        v21 = MFReconciliationLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_cold_2(&v31, v21);
        }

        if (v31 != v29)
        {
          v22 = MFReconciliationLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_cold_3(&v31, v29, v22);
          }
        }

        v23 = *(a1 + 40);
        if (v23)
        {
          v24 = *(v23 + 8);
        }

        else
        {
          v24 = 0;
        }

        [v24 persistenceIsReconcilingJournaledThreadsWithObjectIDs:v10 generationWindow:*(a1 + 32)];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v20 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

void __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_2(id *a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectAtIndexedSubscript:0];
  v4 = [v3 databaseIDValue];

  v5 = [v11 objectAtIndexedSubscript:1];
  v6 = [v5 numberValue];

  v7 = [v11 objectAtIndexedSubscript:2];
  v8 = [v7 numberValue];

  v9 = [a1[4] objectForKeyedSubscript:v6];
  v10 = [objc_alloc(MEMORY[0x1E699AEF8]) initWithConversationID:v4 threadScope:v9];
  [a1[5] addObject:v10];
  [a1[6] addObject:v8];
}

void __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "Reconciling %lu threads in batch", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "Marked %lu threads as reconciled", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __73__MFLibraryThreadReconciler__performReconciliationWithExpression_window___block_invoke_cold_3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  _os_log_fault_impl(&dword_1B0389000, log, OS_LOG_TYPE_FAULT, "Reconciled %lu threads in batch, but marked %lu threads as reconciled", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end