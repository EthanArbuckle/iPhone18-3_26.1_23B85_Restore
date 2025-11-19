@interface MFLibraryMessageReconciler
+ (uint64_t)numberOfUnreconciledMessagesWithMessagePersistence:(uint64_t)a1;
+ (unint64_t)numberOfUnreconciledMessagesWithLibrary:(id)a3;
- (MFLibraryMessageReconciler)initWithLibrary:(id)a3 accountsProvider:(id)a4;
- (id)reconcileInboxMessagesWithWindow:(id)a3;
- (id)reconcileWithMessageReconciliationQueries:(id)a3 window:(id)a4;
- (id)reconcileWithThreadReconciliationQueries:(id)a3 window:(id)a4;
- (uint64_t)_performReconciliationBatchForQuery:(void *)a3 window:(uint64_t *)a4 reconciledMessageCount:(void *)a5 reconciledConversations:;
- (uint64_t)_performReconciliationForQuery:(void *)a3 window:(void *)a4 reconciledMessageCount:(void *)a5 reconciledConversations:;
- (uint64_t)_reconcileMessagesWithQueries:(void *)a3 window:(os_signpost_id_t)a4 signpostID:(void *)a5 reconciledConversations:;
- (unint64_t)numberOfUnreconciledMessages;
- (void)_cleanup;
- (void)reconcileAllObjectsWithWindow:(id)a3;
@end

@implementation MFLibraryMessageReconciler

- (MFLibraryMessageReconciler)initWithLibrary:(id)a3 accountsProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = MFLibraryMessageReconciler;
  v8 = [(MFLibraryMessageReconciler *)&v21 init];
  if (v8)
  {
    v9 = [v6 persistence];
    v10 = [v9 messagePersistence];
    objc_storeWeak(&v8->_messagePersistence, v10);

    objc_storeStrong(&v8->_accountsProvider, a4);
    v11 = [v6 persistence];
    v12 = [MFMailMessageLibraryQueryTransformer alloc];
    v13 = [v11 messagePersistence];
    v14 = [(MFMailMessageLibraryQueryTransformer *)v12 initWithMessagePersistence:v13];
    transformer = v8->_transformer;
    v8->_transformer = v14;

    v16 = [v11 database];
    database = v8->_database;
    v8->_database = v16;

    v18 = [v11 hookRegistry];
    hookRegistry = v8->_hookRegistry;
    v8->_hookRegistry = v18;
  }

  return v8;
}

+ (unint64_t)numberOfUnreconciledMessagesWithLibrary:(id)a3
{
  v4 = [a3 persistence];
  v5 = [v4 messagePersistence];
  v6 = [(MFLibraryMessageReconciler *)a1 numberOfUnreconciledMessagesWithMessagePersistence:v5];

  return v6;
}

+ (uint64_t)numberOfUnreconciledMessagesWithMessagePersistence:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x1E699AE28]);
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
  v6 = [v3 initWithTargetClass:v4 predicate:v5 sortDescriptors:MEMORY[0x1E695E0F0] queryOptions:256 label:0];

  v7 = [v2 countOfJournaledMessagesMatchingQuery:v6];
  return v7;
}

- (unint64_t)numberOfUnreconciledMessages
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messagePersistence);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [MFLibraryMessageReconciler numberOfUnreconciledMessagesWithMessagePersistence:?];

  return v3;
}

- (void)reconcileAllObjectsWithWindow:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v6 = MFReconciliationSignpostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = MFReconciliationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Starting message reconciliation for all messages", buf, 2u);
  }

  v9 = MFReconciliationSignpostLog();
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MFLibraryMessageAllMessageReconciliation", "Starting all message reconciliation enableTelemetry=YES ", buf, 2u);
  }

  v11 = MFReconciliationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Reconciling all journaled messages", buf, 2u);
  }

  v12 = objc_alloc(MEMORY[0x1E699AE28]);
  v13 = objc_opt_class();
  v14 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
  v15 = [v12 initWithTargetClass:v13 predicate:v14 sortDescriptors:MEMORY[0x1E695E0F0] queryOptions:256 label:0];

  v21 = 0;
  [(MFLibraryMessageReconciler *)self _performReconciliationForQuery:v15 window:v4 reconciledMessageCount:&v21 reconciledConversations:0];
  [(MFLibraryMessageReconciler *)self _cleanup];
  v16 = MFReconciliationLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v21;
    _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Finished message reconciliation for all messages. Reconciled %lu messages", buf, 0xCu);
  }

  v17 = MFReconciliationSignpostLog();
  v18 = v17;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134349056;
    v23 = v21;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v18, OS_SIGNPOST_INTERVAL_END, v7, "MFLibraryMessageAllMessageReconciliation", "MessagesReconciled=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0xCu);
  }

  [v5 timeIntervalSinceNow];
  if (v19 < -10.0)
  {
    EFSaveTailspin();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_performReconciliationForQuery:(void *)a3 window:(void *)a4 reconciledMessageCount:(void *)a5 reconciledConversations:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = 0;
    v17 = 0;
    do
    {
      v13 = [(MFLibraryMessageReconciler *)a1 _performReconciliationBatchForQuery:v9 window:v10 reconciledMessageCount:&v17 reconciledConversations:v11];
      v14 = v13;
      v12 += v17;
      if (v17 > 0x63)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }
    }

    while ((v15 & 1) != 0);
    if (a4)
    {
      *a4 = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_cleanup
{
  if (a1)
  {
    v2 = MFReconciliationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "Reconciled all messages. Cleaning up...", buf, 2u);
    }

    v3 = *(a1 + 16);
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFLibraryMessageReconciler _cleanup]"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__MFLibraryMessageReconciler__cleanup__block_invoke;
    v5[3] = &unk_1E7AA43C8;
    v5[4] = a1;
    [v3 __performWriteWithCaller:v4 usingBlock:v5];
  }
}

- (id)reconcileWithMessageReconciliationQueries:(id)a3 window:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v9 = MFReconciliationSignpostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = MFReconciliationLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Starting context based message reconciliation batch", &v23, 2u);
  }

  v13 = MFReconciliationSignpostLog();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MFLibraryMessageContextBasedReconciliation", "Starting context based reconciliation enableTelemetry=YES ", &v23, 2u);
  }

  v15 = [(MFLibraryMessageReconciler *)self _reconcileMessagesWithQueries:v6 window:v7 signpostID:v10 reconciledConversations:v11];
  v16 = MFReconciliationSignpostLog();
  v17 = v16;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v23 = 134349056;
    v24 = v15;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v17, OS_SIGNPOST_INTERVAL_END, v10, "MFLibraryMessageContextBasedReconciliation", "MessagesReconciled=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", &v23, 0xCu);
  }

  [v8 timeIntervalSinceNow];
  v19 = v18;
  v20 = MFReconciliationLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v23 = 134217984;
    v24 = v15;
    _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_INFO, "Reconciled batch of %lu messages using message query", &v23, 0xCu);
  }

  if (v19 < -10.0)
  {
    EFSaveTailspin();
  }

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

- (uint64_t)_reconcileMessagesWithQueries:(void *)a3 window:(os_signpost_id_t)a4 signpostID:(void *)a5 reconciledConversations:
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v31 = a3;
  v32 = a5;
  v30 = a1;
  v26 = v8;
  if (a1)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v9 = 0;
    v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:{16, v8}];
    if (v10)
    {
      v29 = *v36;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        if (([v12 queryOptions] & 0x100) == 0)
        {
          v13 = objc_alloc(MEMORY[0x1E699AE28]);
          v14 = objc_opt_class();
          v15 = [v12 predicate];
          v16 = [v12 sortDescriptors];
          v17 = [v12 queryOptions];
          v18 = [v12 label];
          v19 = [v13 initWithTargetClass:v14 predicate:v15 sortDescriptors:v16 queryOptions:v17 | 0x100 label:v18];

          v12 = v19;
        }

        v34 = 0;
        v20 = MFReconciliationSignpostLog();
        v21 = v20;
        if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v21, OS_SIGNPOST_EVENT, a4, "MFLibraryMessageContextBasedReconciliation", "Reconciling for query", buf, 2u);
        }

        v22 = [(MFLibraryMessageReconciler *)v30 _performReconciliationBatchForQuery:v12 window:v31 reconciledMessageCount:&v34 reconciledConversations:v32];
        v23 = v34;

        v9 += v23;
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (v10 == ++v11)
        {
          v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)reconcileWithThreadReconciliationQueries:(id)a3 window:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v9 = MFReconciliationSignpostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = [v6 ef_map:&__block_literal_global_38];
  v13 = MFReconciliationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "Starting context based message reconciliation batch", &v24, 2u);
  }

  v14 = MFReconciliationSignpostLog();
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MFLibraryMessageContextBasedReconciliation", "Starting context based reconciliation enableTelemetry=YES ", &v24, 2u);
  }

  v16 = [(MFLibraryMessageReconciler *)self _reconcileMessagesWithQueries:v12 window:v7 signpostID:v10 reconciledConversations:v11];
  v17 = MFReconciliationSignpostLog();
  v18 = v17;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v24 = 134349056;
    v25 = v16;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v18, OS_SIGNPOST_INTERVAL_END, v10, "MFLibraryMessageContextBasedReconciliation", "MessagesReconciled=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", &v24, 0xCu);
  }

  [v8 timeIntervalSinceNow];
  v20 = v19;
  v21 = MFReconciliationLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = 134217984;
    v25 = v16;
    _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_INFO, "Reconciled batch of %lu messages using thread query", &v24, 0xCu);
  }

  if (v20 < -10.0)
  {
    EFSaveTailspin();
  }

  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

id __78__MFLibraryMessageReconciler_reconcileWithThreadReconciliationQueries_window___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E699AE28]);
  v4 = objc_opt_class();
  v5 = [v2 predicate];
  v6 = [v2 sortDescriptors];
  v7 = [v2 queryOptions];
  v8 = [v2 targetClassOptions];
  v9 = [v3 initWithTargetClass:v4 predicate:v5 sortDescriptors:v6 limit:0 queryOptions:v7 targetClassOptions:v8 label:0];

  return v9;
}

- (id)reconcileInboxMessagesWithWindow:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v6 = MFReconciliationSignpostLog();
  v7 = os_signpost_id_generate(v6);

  v25 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = MFReconciliationLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "Starting inbox reconciliation", buf, 2u);
  }

  v10 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithType:7];
  v11 = objc_alloc(MEMORY[0x1E699AE28]);
  v12 = objc_opt_class();
  v13 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v28[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v15 = [v11 initWithTargetClass:v12 predicate:v10 sortDescriptors:v14 queryOptions:256 label:0];

  v16 = MFReconciliationSignpostLog();
  v17 = v16;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MFLibraryMessageContextBasedReconciliation", "Starting inbox reconciliation enableTelemetry=YES ", buf, 2u);
  }

  [(MFLibraryMessageReconciler *)self _performReconciliationBatchForQuery:v15 window:v4 reconciledMessageCount:&v25 reconciledConversations:v8];
  v18 = MFReconciliationSignpostLog();
  v19 = v18;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 134349056;
    v27 = v25;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v19, OS_SIGNPOST_INTERVAL_END, v7, "MFLibraryMessageContextBasedReconciliation", "MessagesReconciled=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0xCu);
  }

  [v5 timeIntervalSinceNow];
  v21 = v20;
  v22 = MFReconciliationLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v27 = v25;
    _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_INFO, "Finished inbox reconciliation. Reconciled %lu messages", buf, 0xCu);
  }

  if (v21 < -10.0)
  {
    EFSaveTailspin();
  }

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

- (uint64_t)_performReconciliationBatchForQuery:(void *)a3 window:(uint64_t *)a4 reconciledMessageCount:(void *)a5 reconciledConversations:
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v24 = a3;
  v9 = a5;
  if (a1)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v11 = [WeakRetained persistedMessagesMatchingQuery:v25 limit:100 requireProtectedData:1];

    if (v9)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:{16, v24}];
      if (v13)
      {
        v14 = *v32;
        do
        {
          v15 = 0;
          do
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v31 + 1) + 8 * v15), "conversationID")}];
            [v9 addObject:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v13);
      }
    }

    if ([v11 count])
    {
      v17 = *(a1 + 16);
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFLibraryMessageReconciler _performReconciliationBatchForQuery:window:reconciledMessageCount:reconciledConversations:]"];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __120__MFLibraryMessageReconciler__performReconciliationBatchForQuery_window_reconciledMessageCount_reconciledConversations___block_invoke;
      v26[3] = &unk_1E7AA3DB0;
      v27 = v24;
      v30 = &v35;
      v28 = v11;
      v29 = a1;
      [v17 __performWriteWithCaller:v18 usingBlock:v26];
    }

    v19 = v36;
    if (a4)
    {
      if (*(v36 + 24) == 1)
      {
        v20 = [v11 count];
        v19 = v36;
      }

      else
      {
        v20 = 0;
      }

      *a4 = v20;
    }

    v21 = *(v19 + 24);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

uint64_t __120__MFLibraryMessageReconciler__performReconciliationBatchForQuery_window_reconciledMessageCount_reconciledConversations___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if ([v3 protectedDatabaseAttached])
  {
    v4 = [*(a1 + 40) ef_map:&__block_literal_global_29];
    v5 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
    [v5 setObject:&unk_1F27759A0 forKeyedSubscript:@"journaled"];
    v6 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
    v7 = [v6 in:v4];
    [v5 setWhereClause:v7];

    *(*(*(a1 + 56) + 8) + 24) = [v3 executeUpdateStatement:v5 error:0];
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [*(a1 + 40) count])
    {
      v8 = MFReconciliationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) count];
        *buf = 134217984;
        v25 = v9;
        _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "reconciled %llu messages", buf, 0xCu);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = *(a1 + 40);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v19 + 1) + 8 * v13++) setIsJournaled:{0, v19}];
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = *(v14 + 8);
      }

      else
      {
        v15 = 0;
      }

      [v15 persistenceDidReconcileJournaledMessages:*(a1 + 40) generationWindow:{*(a1 + 32), v19}];
    }

    v16 = *(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v16 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

id __120__MFLibraryMessageReconciler__performReconciliationBatchForQuery_window_reconciledMessageCount_reconciledConversations___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "libraryID")}];

  return v3;
}

uint64_t __38__MFLibraryMessageReconciler__cleanup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v4 = objc_alloc(MEMORY[0x1E699AE28]);
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
    v7 = [v4 initWithTargetClass:v5 predicate:v6 sortDescriptors:MEMORY[0x1E695E0F0] queryOptions:256 label:0];

    v8 = *(a1 + 32);
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((v8 + 24));
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [WeakRetained countOfJournaledMessagesMatchingQuery:v7];

    if (v10)
    {
      v11 = 1;
LABEL_13:

      goto LABEL_14;
    }

    v12 = [v3 sqlConnection];
    v20 = 0;
    v13 = [v12 executeStatementString:@"DELETE FROM protected_message_data WHERE ROWID IN (SELECT message_data_id FROM message_data_deleted)" error:&v20];
    v14 = v20;

    if (v13)
    {
      v15 = [v3 sqlConnection];
      v19 = v14;
      v16 = [v15 executeStatementString:@"DELETE FROM message_data_deleted" error:&v19];
      v17 = v19;

      if (v16)
      {
        v11 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v14 = v17;
    }

    [v3 handleError:v14 message:@"Cleaning up messages after reconciliation"];
    v11 = 0;
    v17 = v14;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_14:

  return v11;
}

@end