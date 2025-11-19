@interface MFLibraryReconciler
- (BOOL)_shouldUseContextBasedReconciliationWithMessageReconciliationQueries:(unint64_t)a3 unreconciledMessages:;
- (BOOL)_shouldUseContextBasedReconciliationWithThreadReconciliationQueries:(unint64_t)a3 unreconciledMessages:;
- (MFLibraryReconciler)initWithLibrary:(id)a3 queryProvider:(id)a4 accountsProvider:(id)a5;
- (void)_reconcileInboxThreadsAndMessages;
- (void)_reconcileRemainingEntries;
- (void)_reconcileUsingMessageReconciliationQueries:(uint64_t)a1;
- (void)_reconcileUsingThreadReconciliationQueries:(uint64_t)a1;
- (void)persistenceDidReconcileProtectedData;
@end

@implementation MFLibraryReconciler

- (MFLibraryReconciler)initWithLibrary:(id)a3 queryProvider:(id)a4 accountsProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = MFLibraryReconciler;
  v11 = [(MFLibraryReconciler *)&v22 init];
  if (v11)
  {
    v12 = [v8 persistence];
    objc_storeWeak(&v11->_queryProvider, v9);
    v13 = [v12 hookRegistry];
    hookRegistry = v11->_hookRegistry;
    v11->_hookRegistry = v13;

    objc_storeStrong(&v11->_accountsProvider, a5);
    v15 = [[MFLibraryMessageReconciler alloc] initWithLibrary:v8 accountsProvider:v10];
    messageReconciler = v11->_messageReconciler;
    v11->_messageReconciler = v15;

    v17 = [[MFLibraryThreadReconciler alloc] initWithHookRegistry:v11->_hookRegistry persistence:v12];
    threadReconciler = v11->_threadReconciler;
    v11->_threadReconciler = v17;

    v19 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.library.reconciliationcleanup" qualityOfService:25];
    reconciliationCleanupScheduler = v11->_reconciliationCleanupScheduler;
    v11->_reconciliationCleanupScheduler = v19;

    [(EDPersistenceHookRegistry *)v11->_hookRegistry registerProtectedDataReconciliationHookResponder:v11];
    [(EDPersistenceHookRegistry *)v11->_hookRegistry registerDatabaseChangeHookResponder:v11];
  }

  return v11;
}

void __59__MFLibraryReconciler_persistenceDidReconcileProtectedData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained messageReconciliationQueries];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = objc_loadWeakRetained((v5 + 24));
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 threadReconciliationQueries];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 40);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 numberOfUnreconciledMessages];
  if ([(MFLibraryReconciler *)*(a1 + 32) _shouldUseContextBasedReconciliationWithMessageReconciliationQueries:v4 unreconciledMessages:v10])
  {
    [(MFLibraryReconciler *)*(a1 + 32) _reconcileUsingMessageReconciliationQueries:v4];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 40);
    }

    else
    {
      v12 = 0;
    }

    v10 = [v12 numberOfUnreconciledMessages];
  }

  if ([(MFLibraryReconciler *)*(a1 + 32) _shouldUseContextBasedReconciliationWithThreadReconciliationQueries:v7 unreconciledMessages:v10])
  {
    [(MFLibraryReconciler *)*(a1 + 32) _reconcileUsingThreadReconciliationQueries:v7];
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 40);
    }

    else
    {
      v14 = 0;
    }

    v10 = [v14 numberOfUnreconciledMessages];
  }

  v15 = *(a1 + 32);
  if (v15 && v10 >= 0xA)
  {
    [(MFLibraryReconciler *)v15 _reconcileInboxThreadsAndMessages];
    v15 = *(a1 + 32);
  }

  [(MFLibraryReconciler *)v15 _reconcileRemainingEntries];
  v16 = MFReconciliationLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Library reconciliation finished", buf, 2u);
  }

  v17 = MFReconciliationSignpostLog();
  v18 = v17;
  v19 = *(a1 + 48);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v18, OS_SIGNPOST_INTERVAL_END, v19, "MFLibraryReconciliation", "", v20, 2u);
  }

  [*(a1 + 40) invalidate];
}

- (BOOL)_shouldUseContextBasedReconciliationWithMessageReconciliationQueries:(unint64_t)a3 unreconciledMessages:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 count];
    v9 = a3 > 9 && v7 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_reconcileUsingMessageReconciliationQueries:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = MFReconciliationSignpostLog();
    spid = os_signpost_id_generate(v4);

    v5 = MFReconciliationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Starting context based library message reconciliation", buf, 2u);
    }

    v6 = MFReconciliationSignpostLog();
    v7 = v6;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MFLibraryContextBasedReconciliation", "Starting context based library message reconciliation enableTelemetry=YES ", buf, 2u);
    }

    v8 = objc_alloc_init(MEMORY[0x1E699B608]);
    v9 = 0;
    do
    {
      v10 = *(a1 + 40);
      v11 = [v10 reconcileWithMessageReconciliationQueries:v3 window:v8];

      if ([v11 count])
      {
        v12 = *(a1 + 48);
        [v12 reconcileWithThreadsWithConversationIDs:v11 window:v8];
      }

      v13 = [v11 count];
      v14 = MFReconciliationLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v21 = v13;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Context based library message reconciliation finished batch. Reconciled %lu conversations", buf, 0xCu);
      }

      v9 += v13;
    }

    while (v13);
    v15 = MFReconciliationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v9;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Context based library message reconciliation finished. Reconciled %lu conversations", buf, 0xCu);
    }

    v16 = MFReconciliationSignpostLog();
    v17 = v16;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 134349312;
      v21 = 0;
      v22 = 2050;
      v23 = v9;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v17, OS_SIGNPOST_INTERVAL_END, spid, "MFLibraryContextBasedReconciliation", "ContextType=%{public,signpost.telemetry:number1}ld Conversations=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldUseContextBasedReconciliationWithThreadReconciliationQueries:(unint64_t)a3 unreconciledMessages:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 count];
    v9 = a3 > 9 && v7 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_reconcileUsingThreadReconciliationQueries:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = MFReconciliationSignpostLog();
    spid = os_signpost_id_generate(v4);

    v5 = MFReconciliationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Starting context based library thread reconciliation", buf, 2u);
    }

    v6 = MFReconciliationSignpostLog();
    v7 = v6;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MFLibraryContextBasedReconciliation", "Starting context based library thread reconciliation", buf, 2u);
    }

    v8 = objc_alloc_init(MEMORY[0x1E699B608]);
    v9 = 0;
    do
    {
      v10 = *(a1 + 40);
      v11 = [v10 reconcileWithThreadReconciliationQueries:v3 window:v8];

      if ([v11 count])
      {
        v12 = *(a1 + 48);
        [v12 reconcileWithThreadsWithConversationIDs:v11 window:v8];
      }

      v13 = [v11 count];
      v14 = MFReconciliationLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v21 = v13;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Context based library thread reconciliation finished batch. Reconciled %lu conversations", buf, 0xCu);
      }

      v9 += v13;
    }

    while (v13);
    v15 = MFReconciliationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v9;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Context based library thread reconciliation finished. Reconciled %lu conversations", buf, 0xCu);
    }

    v16 = MFReconciliationSignpostLog();
    v17 = v16;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 134349312;
      v21 = 1;
      v22 = 2050;
      v23 = v9;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v17, OS_SIGNPOST_INTERVAL_END, spid, "MFLibraryContextBasedReconciliation", "ContextType=%{public,signpost.telemetry:number1}ld Conversations=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_reconcileInboxThreadsAndMessages
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MFReconciliationSignpostLog();
    spid = os_signpost_id_generate(v2);

    v3 = MFReconciliationSignpostLog();
    v4 = v3;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MFLibraryContextBasedReconciliation", "Starting context based library inbox reconciliation", buf, 2u);
    }

    v5 = MFReconciliationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Starting inbox library reconciliation", buf, 2u);
    }

    v6 = 0;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E699B608]);
      v8 = *(a1 + 40);
      v9 = [v8 reconcileInboxMessagesWithWindow:v7];

      if ([v9 count])
      {
        v10 = *(a1 + 48);
        [v10 reconcileWithThreadsWithConversationIDs:v9 window:v7];
      }

      v11 = [v9 count];
      v12 = MFReconciliationLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v11;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "Inbox library reconciliation finished batch. Reconciled %lu conversations", buf, 0xCu);
      }

      v6 += v11;
    }

    while (v11);
    v13 = MFReconciliationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v6;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Inbox library reconciliation finished. Reconciled %lu conversations", buf, 0xCu);
    }

    v14 = MFReconciliationSignpostLog();
    v15 = v14;
    if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
    {
      *buf = 134349312;
      v19 = 2;
      v20 = 2050;
      v21 = v6;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v15, OS_SIGNPOST_INTERVAL_END, spid, "MFLibraryContextBasedReconciliation", "ContextType=%{public,signpost.telemetry:number1}ld Conversations=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_reconcileRemainingEntries
{
  if (a1)
  {
    v2 = MFReconciliationSignpostLog();
    v3 = os_signpost_id_generate(v2);

    v4 = MFReconciliationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "Starting library reconciliation for remaining entries", buf, 2u);
    }

    v5 = MFReconciliationSignpostLog();
    v6 = v5;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MFLibraryAllRemainingReconciliation", "Starting library all remaining entries reconciliation enableTelemetry=YES ", v13, 2u);
    }

    v7 = objc_alloc_init(MEMORY[0x1E699B608]);
    [*(a1 + 48) reconcileAllObjectsWithWindow:v7];
    [*(a1 + 40) reconcileAllObjectsWithWindow:v7];
    v8 = MFReconciliationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Finished library reconciliation for remaining entries", v12, 2u);
    }

    v9 = MFReconciliationSignpostLog();
    v10 = v9;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v10, OS_SIGNPOST_INTERVAL_END, v3, "MFLibraryAllRemainingReconciliation", "", v11, 2u);
    }
  }
}

- (void)persistenceDidReconcileProtectedData
{
  v3 = MFReconciliationSignpostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = MFReconciliationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Starting library reconciliation", buf, 2u);
  }

  v6 = MFReconciliationSignpostLog();
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MFLibraryReconciliation", "Starting library reconciliation", buf, 2u);
  }

  v8 = [MEMORY[0x1E699B860] transactionWithDescription:@"Reconciling threads"];
  if (self)
  {
    reconciliationCleanupScheduler = self->_reconciliationCleanupScheduler;
  }

  else
  {
    reconciliationCleanupScheduler = 0;
  }

  v10 = reconciliationCleanupScheduler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MFLibraryReconciler_persistenceDidReconcileProtectedData__block_invoke;
  v12[3] = &unk_1E7AA4240;
  v13 = v8;
  v14 = v4;
  v12[4] = self;
  v11 = v8;
  [(EFScheduler *)v10 performBlock:v12];
}

@end