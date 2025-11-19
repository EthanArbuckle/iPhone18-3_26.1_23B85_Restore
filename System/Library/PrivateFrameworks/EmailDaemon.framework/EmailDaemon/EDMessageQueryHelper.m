@interface EDMessageQueryHelper
+ (OS_os_log)log;
- (BOOL)updateDisplayDate;
- (EDMessageQueryHelper)initWithQuery:(id)a3 initialBatchSize:(int64_t)a4 maximumBatchSize:(int64_t)a5 messagePersistence:(id)a6 hookRegistry:(id)a7 searchProvider:(id)a8 scheduler:(id)a9 remindMeNotificationController:(id)a10 delegate:(id)a11 shouldReconcileJournal:(BOOL)a12 shouldAddMessagesSynchronously:(BOOL)a13 keepMessagesInListOnBucketChange:(BOOL)a14;
- (EDMessageQueryHelperDelegate)delegate;
- (id)_persistedMessagesFromSendersWithAddresses:(id)a3;
- (id)_predicateWithAdditionalPredicates:(id)a3;
- (id)_snippetsByObjectIDForMessages:(id)a3 itemSnippetData:(id)a4 max:(unint64_t)a5 snippetMessageObjectIDsByConversation:(id *)a6;
- (id)_unjournaledMessagesForMessages:(id)a3;
- (id)messagesWithAdditionalPredicates:(id)a3 limit:(int64_t)a4;
- (id)sortableMessagesWithAdditionalPredicates:(id)a3 limit:(int64_t)a4;
- (void)_calculateAndReportChangesForPersistedMessages:(id)a3 withPendingChangesKey:(id)a4 changeBlock:(id)a5;
- (void)_calculateAndReportLabelChangesForPersistedMessages:(id)a3 withPendingChangesKey:(id)a4;
- (void)_foundMessages:(id)a3 inRemoteSearch:(BOOL)a4 foundInLocalIndex:(BOOL)a5;
- (void)_getInitialResults;
- (void)_performBlockAfterGenerationCheck:(id)a3 generation:(id)a4 keyPaths:(id)a5 removedMessages:(id)a6 changedMessages:(id)a7 addedMessages:(id)a8;
- (void)_persistenceDidReconcileJournaledMessages:(id)a3 generationWindow:(id)a4;
- (void)_reportChangesForCurrentlyMatchingMessages:(id)a3 previouslyMatchingMessages:(id)a4 keyPaths:(id)a5 generation:(id)a6;
- (void)_reportChangesForPersistedMessages:(id)a3 withPendingChangesKey:(id)a4 keyPaths:(id)a5 generation:(id)a6;
- (void)_startLiveSearchQuery;
- (void)_updateDisplayDateForMessagesIfNeeded;
- (void)controller:(id)a3 messageTimerFired:(id)a4;
- (void)dealloc;
- (void)localSearchDidFail;
- (void)localSearchDidFindMessages:(id)a3 itemSnippetData:(id)a4 rankingSignals:(id)a5;
- (void)localSearchDidFindTopHits:(id)a3 itemSnippetData:(id)a4 rankingSignals:(id)a5 instantAnswer:(id)a6;
- (void)localSearchDidFinish;
- (void)persistenceDidAddLabels:(id)a3 removeLabels:(id)a4 messages:(id)a5 generationWindow:(id)a6;
- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidChangeBusinessIDForMessages:(id)a3 fromBusinessID:(int64_t)a4;
- (void)persistenceDidChangeCategorizationForMessages:(id)a3 userInitiated:(BOOL)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)a3 conversationID:(int64_t)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)a3 orConversationID:(int64_t)a4 message:(id)a5 generationWindow:(id)a6;
- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6;
- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidNotChangeCategorizationForMessages:(id)a3;
- (void)persistenceDidReconcileJournaledMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)a3;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)a3 changeIsRemote:(BOOL)a4 generation:(int64_t)a5;
- (void)persistenceDidUpdateProperties:(id)a3 message:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsChangingConversationID:(int64_t)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceWillAddLabels:(id)a3 removeLabels:(id)a4 messages:(id)a5;
- (void)persistenceWillChangeCategorizationForMessages:(id)a3;
- (void)persistenceWillChangeConversationID:(int64_t)a3 messages:(id)a4;
- (void)persistenceWillChangeFlags:(id)a3 messages:(id)a4;
- (void)persistenceWillChangeReadLaterDate:(id)a3 messages:(id)a4;
- (void)persistenceWillUpdateAuthenticationStateForMessages:(id)a3;
- (void)persistenceWillUpdateDisplayDateForMessages:(id)a3;
- (void)remoteSearchDidFinish;
- (void)start;
@end

@implementation EDMessageQueryHelper

- (void)start
{
  if (atomic_exchange(&self->_didStart._Value, 1u))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EDMessageQueryHelper.m" lineNumber:133 description:{@"Trying to start EDMessageQueryHelper %p that was already started.", self}];
  }

  v3 = [(EDMessageQueryHelper *)self remindMeNotificationController];
  v4 = [v3 addRemindMeObserver:self];

  v5 = [(EDMessageQueryHelper *)self cancelationToken];
  [v5 addCancelable:v4];

  v6 = [(EDMessageQueryHelper *)self hookRegistry];
  objc_initWeak(&location, v6);
  v7 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__EDMessageQueryHelper_start__block_invoke;
  v10[3] = &unk_1E8250098;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [v7 performVoucherPreservingBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __29__EDMessageQueryHelper_start__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _updateDisplayDateForMessagesIfNeeded];
  [WeakRetained registerMessageChangeHookResponder:*(a1 + 32)];
  [WeakRetained registerCategoryChangeHookResponder:*(a1 + 32)];
  [WeakRetained registerBusinessChangeHookResponder:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) cancelationToken];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __29__EDMessageQueryHelper_start__block_invoke_2;
  v30[3] = &unk_1E8255050;
  objc_copyWeak(&v31, &location);
  objc_copyWeak(&v32, (a1 + 40));
  [v3 addCancelationBlock:v30];

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v4 = [*(a1 + 32) query];
  if (([v4 queryOptions] & 0x20) == 0)
  {

LABEL_7:
    [*(a1 + 32) _getInitialResults];
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) query];
  v6 = ([v5 queryOptions] & 4) == 0;

  if (!v6)
  {
    goto LABEL_7;
  }

  [*(a1 + 32) setReturningInitialResults:1];
  v7 = [*(a1 + 32) query];
  v8 = ([v7 queryOptions] & 0x2000) == 0;

  if (v8)
  {
    [*(a1 + 32) _startLiveSearchQuery];
  }

  else
  {
    v20 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = [v21 query];
      *buf = 134218242;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "%p: Starting top hits query %{public}@", buf, 0x16u);
    }

    v23 = [*(a1 + 32) searchProvider];
    v24 = [v23 localSearchProvider];
    v25 = [*(a1 + 32) query];
    v26 = *(a1 + 32);
    v29[5] = MEMORY[0x1E69E9820];
    v29[6] = 3221225472;
    v29[7] = __29__EDMessageQueryHelper_start__block_invoke_36;
    v29[8] = &unk_1E8250260;
    v29[9] = v26;
    v27 = [v24 topHitsSearchWithQuery:v25 delegate:? completion:?];

    v28 = [*(a1 + 32) cancelationToken];
    [v28 addCancelable:v27];
  }

LABEL_8:
  v9 = [*(a1 + 32) query];
  v10 = ([v9 queryOptions] & 2) == 0;

  if (!v10)
  {
    v11 = [*(a1 + 32) searchProvider];
    v12 = [v11 remoteSearchProvider];

    v13 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Performing Remote Search (Search Indexer + Server Search)", buf, 2u);
    }

    v14 = [*(a1 + 32) query];
    v15 = [v12 fetchRemoteMessagesWithQuery:v14 delegate:*(a1 + 32)];

    v16 = *(a1 + 32);
    if (v15)
    {
      v17 = [v16 cancelationToken];
      [v17 addCancelable:v15];
    }

    else
    {
      v18 = [v16 scheduler];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __29__EDMessageQueryHelper_start__block_invoke_37;
      v29[3] = &unk_1E8250260;
      v29[4] = *(a1 + 32);
      [v18 performSyncBlock:v29];
    }
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x1E69E9840];
}

void __29__EDMessageQueryHelper_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 unregisterHookResponder:v4];

    WeakRetained = v4;
  }
}

- (void)_updateDisplayDateForMessagesIfNeeded
{
  if ([(EDMessageQueryHelper *)self updateDisplayDate])
  {
    v4 = [(EDMessageQueryHelper *)self messagePersistence];
    v3 = [(EDMessageQueryHelper *)self query];
    [v4 updateBeforeDisplayForMessagesMatchingQuery:v3];
  }
}

- (BOOL)updateDisplayDate
{
  v2 = [(EDMessageQueryHelper *)self query];
  v3 = [v2 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699A9D8]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_getInitialResults
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(EDMessageQueryHelper *)self shouldReconcileJournal])
  {
    v4 = [(EDMessageQueryHelper *)self messagePersistence];
    [v4 reconcileJournalWithCompletionBlock:0];
  }

  v5 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(EDMessageQueryHelper *)self query];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Getting initial results for message query %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = __Block_byref_object_copy__27;
  v45 = __Block_byref_object_dispose__27;
  v46 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke;
  aBlock[3] = &unk_1E82550A0;
  aBlock[4] = self;
  aBlock[5] = buf;
  aBlock[6] = &v33;
  v7 = _Block_copy(aBlock);
  v8 = [(EDMessageQueryHelper *)self query];
  v9 = ([v8 queryOptions] & 4) == 0;

  if (v9)
  {
    v10 = [(EDMessageQueryHelper *)self query];
    if (([v10 queryOptions] & 0x20) != 0)
    {
      v11 = [(EDMessageQueryHelper *)self searchProvider];
      v12 = [v11 localSearchProvider];
      v13 = v12 == 0;

      if (v13)
      {
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"EDMessageQueryHelper.m" lineNumber:250 description:@"Spotlight search query sent to handler without spotlight access"];
      }

      v14 = [(EDMessageQueryHelper *)self searchProvider];
      v15 = [v14 localSearchProvider];
      v16 = [v15 persistenceQueryForSearchableIndexQuery:v10];

      v10 = v16;
    }

    v17 = [(EDMessageQueryHelper *)self messagePersistence];
    v18 = [(EDMessageQueryHelper *)self maximumBatchSize];
    v19 = [(EDMessageQueryHelper *)self initialBatchSize];
    v20 = [(EDMessageQueryHelper *)self cancelationToken];
    [v17 iterateMessagesMatchingQuery:v10 batchSize:v18 firstBatchSize:v19 limit:0x7FFFFFFFFFFFFFFFLL cancelationToken:v20 handler:v7];

    v21 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v34[3];
      v23 = [(EDMessageQueryHelper *)self query];
      *v37 = 134218498;
      v38 = self;
      v39 = 2048;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "%p: found %lu initial results for message query %@", v37, 0x20u);
    }
  }

  v24 = [(EDMessageQueryHelper *)self delegate];
  v25 = [(EDMessageQueryHelper *)self scheduler];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke_46;
  v30[3] = &unk_1E8250128;
  v30[4] = self;
  v26 = v24;
  v31 = v26;
  [v25 performSyncBlock:v30];

  v27 = [(EDMessageQueryHelper *)self initialResultsPromise];
  [v27 finishWithResult:MEMORY[0x1E695E118]];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(buf, 8);

  v28 = *MEMORY[0x1E69E9840];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMessageQueryHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_65 != -1)
  {
    dispatch_once(&log_onceToken_65, block);
  }

  v2 = log_log_65;

  return v2;
}

- (void)dealloc
{
  [(EDMessageQueryHelper *)self cancel];
  v3.receiver = self;
  v3.super_class = EDMessageQueryHelper;
  [(EDMessageQueryHelper *)&v3 dealloc];
}

- (EDMessageQueryHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __27__EDMessageQueryHelper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_65;
  log_log_65 = v1;
}

- (EDMessageQueryHelper)initWithQuery:(id)a3 initialBatchSize:(int64_t)a4 maximumBatchSize:(int64_t)a5 messagePersistence:(id)a6 hookRegistry:(id)a7 searchProvider:(id)a8 scheduler:(id)a9 remindMeNotificationController:(id)a10 delegate:(id)a11 shouldReconcileJournal:(BOOL)a12 shouldAddMessagesSynchronously:(BOOL)a13 keepMessagesInListOnBucketChange:(BOOL)a14
{
  v20 = a3;
  v56 = a6;
  v55 = a7;
  v54 = a8;
  v53 = a9;
  v52 = a10;
  obj = a11;
  v58.receiver = self;
  v58.super_class = EDMessageQueryHelper;
  v21 = [(EDMessageQueryHelper *)&v58 init];
  p_isa = &v21->super.isa;
  v23 = v21;
  if (v21)
  {
    v21->_noLongerMatchingMessagesLock._os_unfair_lock_opaque = 0;
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    noLongerMatchingMessages = v23->_noLongerMatchingMessages;
    v23->_noLongerMatchingMessages = v24;

    v26 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v23->_cancelationToken;
    v23->_cancelationToken = v26;

    v28 = [v20 copy];
    query = v23->_query;
    v23->_query = v28;

    v23->_initialBatchSize = a4;
    v23->_maximumBatchSize = a5;
    objc_storeStrong(p_isa + 7, a6);
    objc_storeStrong(p_isa + 8, a7);
    objc_storeStrong(p_isa + 9, a8);
    objc_storeStrong(p_isa + 11, a9);
    objc_storeWeak(p_isa + 12, obj);
    objc_storeStrong(p_isa + 10, a10);
    if (a12)
    {
      v30 = ([v20 queryOptions] >> 3) & 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v23->_shouldReconcileJournal = v30;
    v23->_addMessagesSynchronously = a13;
    v23->_keepMessagesInListOnBucketChange = a14;
    if (_os_feature_enabled_impl())
    {
      v31 = -[EDMessageQueryEvaluator initWithQuery:messagePersistence:filterMessagesByID:]([EDMessageQueryEvaluator alloc], "initWithQuery:messagePersistence:filterMessagesByID:", v20, p_isa[7], ([v20 queryOptions] >> 5) & 1);
    }

    else
    {
      v31 = [[EDMessageQueryEvaluator alloc] initWithQuery:v20 messagePersistence:p_isa[7] filterMessagesByID:0];
    }

    queryEvaluator = v23->_queryEvaluator;
    v23->_queryEvaluator = v31;

    v33 = [MEMORY[0x1E699B868] promise];
    initialResultsPromise = v23->_initialResultsPromise;
    v23->_initialResultsPromise = v33;

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingFlagChangesKey-%p", objc_opt_class(), v23];
    pendingFlagChangesKey = v23->_pendingFlagChangesKey;
    v23->_pendingFlagChangesKey = v35;

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingConversationIDChangeKey-%p", objc_opt_class(), v23];
    pendingConversationIDChangesKey = v23->_pendingConversationIDChangesKey;
    v23->_pendingConversationIDChangesKey = v37;

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingReadLaterDateChangesKey-%p", objc_opt_class(), v23];
    pendingReadLaterDateChangesKey = v23->_pendingReadLaterDateChangesKey;
    v23->_pendingReadLaterDateChangesKey = v39;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingDisplayDateChangesKey-%p", objc_opt_class(), v23];
    pendingDisplayDateChangesKey = v23->_pendingDisplayDateChangesKey;
    v23->_pendingDisplayDateChangesKey = v41;

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingCategorizationChangesKey-%p", objc_opt_class(), v23];
    pendingCategorizationChangesKey = v23->_pendingCategorizationChangesKey;
    v23->_pendingCategorizationChangesKey = v43;

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingCategorizationChangesKey-%p", objc_opt_class(), v23];
    pendingAuthenticationChangesKey = v23->_pendingAuthenticationChangesKey;
    v23->_pendingAuthenticationChangesKey = v45;

    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingLabelChangesKey-%p", objc_opt_class(), v23];
    pendingLabelChangesKey = v23->_pendingLabelChangesKey;
    v23->_pendingLabelChangesKey = v47;

    if (([v20 queryOptions] & 0x20) != 0)
    {
      v49 = objc_alloc_init(EDLocalSearchInfoCollector);
      localSearchInfoCollector = v23->_localSearchInfoCollector;
      v23->_localSearchInfoCollector = v49;
    }
  }

  return v23;
}

uint64_t __29__EDMessageQueryHelper_start__block_invoke_36(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 query];
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%p: Finished top hits query %{public}@", &v7, 0x16u);
  }

  result = [*(a1 + 32) _startLiveSearchQuery];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __29__EDMessageQueryHelper_start__block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperDidFinishRemoteSearch:*(a1 + 32)];
}

- (void)_startLiveSearchQuery
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(EDMessageQueryHelper *)self query];
    v12 = 134218242;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Starting live query %{public}@", &v12, 0x16u);
  }

  [(EDMessageQueryHelper *)self setSnippetDataBudgetRemaining:500];
  v5 = [(EDMessageQueryHelper *)self searchProvider];
  v6 = [v5 localSearchProvider];
  v7 = [(EDMessageQueryHelper *)self query];
  v8 = [v6 liveSearchWithQuery:v7 delegate:self];
  [(EDMessageQueryHelper *)self setSearchQuery:v8];

  v9 = [(EDMessageQueryHelper *)self cancelationToken];
  v10 = [(EDMessageQueryHelper *)self searchQuery];
  [v9 addCancelable:v10];

  v11 = *MEMORY[0x1E69E9840];
}

void __42__EDMessageQueryHelper__getInitialResults__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cancelationToken];
  v8 = [v7 isCanceled];

  if ((v8 & 1) == 0)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (v9)
    {
      [v9 timeIntervalSinceNow];
      if (v10 < -5.0)
      {
        EFSaveTailspin();
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }

    if ([v5 count])
    {
      v13 = [*(a1 + 32) scheduler];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke_2;
      v21[3] = &unk_1E8255078;
      v21[4] = *(a1 + 32);
      v14 = v5;
      v15 = *(a1 + 48);
      v22 = v14;
      v23 = v15;
      [v13 performSyncBlock:v21];

      *(*(*(a1 + 48) + 8) + 24) += [v14 count];
    }

    else if (!v5)
    {
      v16 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = [v6 ef_publicDescription];
        v20 = [*(a1 + 32) query];
        *buf = 134218498;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "%p: Received error %{public}@ while performing initial query: %@", buf, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __42__EDMessageQueryHelper__getInitialResults__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didFindMessages:*(a1 + 40) searchInfo:0 forInitialBatch:*(*(*(a1 + 48) + 8) + 24) == 0];
}

void __42__EDMessageQueryHelper__getInitialResults__block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelationToken];
  v3 = [v2 isCanceled];

  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v4 queryHelperDidFindAllMessages:v5 localSearchInfoCollector:0];
  }
}

- (id)_predicateWithAdditionalPredicates:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl() && (-[EDMessageQueryHelper query](self, "query"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 queryOptions], v5, (v6 & 0x20) != 0))
  {
    v15 = [(EDMessageQueryHelper *)self queryEvaluator];
    v16 = [v15 persistentIDsForFilterSet];

    v14 = [EDMessageListItemPredicates predicateForMessagesWithPersistentIDs:v16];
  }

  else
  {
    v7 = [(EDMessageQueryHelper *)self query];
    os_unfair_lock_lock(&self->_noLongerMatchingMessagesLock);
    v8 = [(NSMutableSet *)self->_noLongerMatchingMessages allObjects];
    v9 = [v8 ef_mapSelector:sel_objectID];

    os_unfair_lock_unlock(&self->_noLongerMatchingMessagesLock);
    if ([v9 count])
    {
      v10 = [MEMORY[0x1E699AD30] predicateForMessagesWithObjectIDs:v9];
      v11 = MEMORY[0x1E696AB28];
      v12 = [v7 predicate];
      v24[0] = v12;
      v24[1] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      v14 = [v11 orPredicateWithSubpredicates:v13];
    }

    else
    {
      v14 = [v7 predicate];
    }
  }

  v17 = MEMORY[0x1E696AB28];
  v23[0] = v14;
  v23[1] = v4;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19 = [v18 ef_flatten];
  v20 = [v17 andPredicateWithSubpredicates:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)messagesWithAdditionalPredicates:(id)a3 limit:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = [(EDMessageQueryHelper *)self _predicateWithAdditionalPredicates:?];
  if (_os_feature_enabled_impl())
  {
    v6 = [(EDMessageQueryHelper *)self query];
    v7 = [v6 queryOptions];
    v8 = objc_alloc(MEMORY[0x1E699AE28]);
    v9 = [v6 targetClass];
    v10 = [v6 sortDescriptors];
    v11 = [v6 limit];
    v12 = [v6 targetClassOptions];
    v13 = [v6 label];
    v14 = [v8 initWithTargetClass:v9 predicate:v5 sortDescriptors:v10 suggestion:0 limit:v11 queryOptions:v7 & 0xFFFFFFFFFFFFFFDFLL targetClassOptions:v12 label:v13];
  }

  else
  {
    v15 = [(EDMessageQueryHelper *)self query];
    v12 = [v15 queryWithPredicate:v5];

    if (([v12 queryOptions] & 0x20) == 0)
    {
      goto LABEL_6;
    }

    v6 = [(EDMessageQueryHelper *)self searchProvider];
    v10 = [v6 localSearchProvider];
    v14 = [v10 persistenceQueryForSearchableIndexQuery:v12];
  }

  v12 = v14;
LABEL_6:
  v16 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = [v12 predicate];
    v19 = [v18 ef_publicDescription];
    *buf = 138412802;
    v27 = v17;
    v28 = 2048;
    v29 = self;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "<%@ %p> Fetching messages matching query %@", buf, 0x20u);
  }

  v20 = [(EDMessageQueryHelper *)self messagePersistence];
  v21 = [v20 messagesMatchingQuery:v12 limit:a4];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)sortableMessagesWithAdditionalPredicates:(id)a3 limit:(int64_t)a4
{
  v6 = [(EDMessageQueryHelper *)self _predicateWithAdditionalPredicates:a3];
  v7 = [(EDMessageQueryHelper *)self query];
  v8 = [v7 queryWithTargetClass:objc_opt_class() predicate:v6];

  if ((_os_feature_enabled_impl() & 1) == 0 && ([v8 queryOptions] & 0x20) != 0)
  {
    v9 = [(EDMessageQueryHelper *)self searchProvider];
    v10 = [v9 localSearchProvider];
    v11 = [v10 persistenceQueryForSearchableIndexQuery:v8];

    v8 = v11;
  }

  v12 = [(EDMessageQueryHelper *)self messagePersistence];
  v13 = [v12 sortableMessagesMatchingQuery:v8 limit:a4];

  return v13;
}

- (void)_foundMessages:(id)a3 inRemoteSearch:(BOOL)a4 foundInLocalIndex:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(EDMessageQueryHelper *)self queryEvaluator];
  [v9 addMessagesToFilterSet:v8];

  v10 = [(EDMessageQueryHelper *)self query];
  v11 = [v10 sortDescriptors];
  v12 = [v11 firstObject];
  v13 = [v12 ascending];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke;
  v43[3] = &__block_descriptor_33_e55_q24__0___EDPersistedMessage__8___EDPersistedMessage__16l;
  v44 = v13;
  v14 = [v8 sortedArrayWithOptions:16 usingComparator:v43];

  v15 = v14;
  if (v6)
  {
    v16 = [(EDMessageQueryHelper *)self searchProvider];
    v17 = [v16 remoteSearchProvider];

    if (v5 || !v17)
    {
      v21 = v14;
    }

    else
    {
      v18 = [(EDMessageQueryHelper *)self searchProvider];
      v19 = [v18 remoteSearchProvider];
      v20 = [(EDMessageQueryHelper *)self query];
      v21 = [v19 verifyResults:v15 query:v20];
    }

    v23 = [(EDMessageQueryHelper *)self queryEvaluator];
    v24 = [v23 transformMessages:v21];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v24;
    v25 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v25)
    {
      v26 = *v40;
      if (v5)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      do
      {
        v28 = 0;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v39 + 1) + 8 * v28++) setSearchResultType:v27];
        }

        while (v25 != v28);
        v25 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v22 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v14 includeDeleted:0];
  }

  if ([v22 count])
  {
    v29 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v22 count];
      v31 = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      v46 = self;
      v47 = 1024;
      v48 = v30;
      v49 = 2114;
      v50 = v31;
      _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "%p: Adding %u filtered messages: %{public}@", buf, 0x1Cu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke_56;
    aBlock[3] = &unk_1E8250720;
    v36 = v22;
    v37 = v15;
    v38 = self;
    v32 = _Block_copy(aBlock);
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      v33 = [(EDMessageQueryHelper *)self scheduler];
      [v33 performSyncBlock:v32];
    }

    else
    {
      v33 = [(EDMessageQueryHelper *)self scheduler];
      [v33 performBlock:v32];
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 persistedMessageID];
  v7 = [v6 databaseID];

  v8 = [v5 persistedMessageID];
  v9 = [v8 databaseID];

  if (v7 != v9)
  {
    if (*(a1 + 32) == 1)
    {
      if (v7 < v9)
      {
LABEL_5:
        v10 = -1;
        goto LABEL_8;
      }
    }

    else if (v7 > v9)
    {
      goto LABEL_5;
    }

    v10 = 1;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

void __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke_56(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = EFFetchSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = [*(a1 + 40) count];
    v11[0] = 67109120;
    v11[1] = v6;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "QueryHelperDidAddMessages Callback", "count=%{signpost.description:attribute}u ", v11, 8u);
  }

  v7 = [*(a1 + 48) delegate];
  [v7 queryHelper:*(a1 + 48) didAddMessages:*(a1 + 32) searchInfo:0];

  v8 = v5;
  v9 = v8;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    LOWORD(v11[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_END, v3, "QueryHelperDidAddMessages Callback", "", v11, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_unjournaledMessagesForMessages:(id)a3
{
  v3 = [a3 ef_filter:&__block_literal_global_58];

  return v3;
}

- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(EDMessageQueryHelper *)self query];
  v7 = [v6 queryOptions];

  if ((v7 & 4) == 0)
  {
    if (!_os_feature_enabled_impl() || (-[EDMessageQueryHelper query](self, "query"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 queryOptions], v8, (v9 & 0x20) == 0))
    {
      v10 = EFFetchSignpostLog();
      if (os_signpost_enabled(v10))
      {
        v13 = 134218240;
        v14 = self;
        v15 = 1024;
        v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v5, "count")}];
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryHelperDidAddMessages", "helper=%p count=%u ", &v13, 0x12u);
      }

      v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v5];

      v5 = v11;
      [(EDMessageQueryHelper *)self _foundMessages:v11 inRemoteSearch:0 foundInLocalIndex:0];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)a3 generationWindow:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[EDMessageQueryHelper persistenceDidDeleteAllMessagesInMailboxesWithURLs:generationWindow:].cold.1(self, [v5 count], buf, v6);
  }

  v7 = [(EDMessageQueryHelper *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__EDMessageQueryHelper_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke;
  v9[3] = &unk_1E8250260;
  v9[4] = self;
  [v7 performBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __92__EDMessageQueryHelper_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperNeedsRestart:*(a1 + 32)];
}

- (void)persistenceDidReconcileJournaledMessages:(id)a3 generationWindow:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageQueryHelper *)self initialResultsPromise];
  v9 = [v8 future];

  v10 = [v9 resultIfAvailable];

  if (!v10)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 count];
      v13 = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      v21 = self;
      v22 = 1024;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Holding %u reconciled persisted messages until initial results: %@", buf, 0x1Cu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__EDMessageQueryHelper_persistenceDidReconcileJournaledMessages_generationWindow___block_invoke;
  v17[3] = &unk_1E82550E8;
  v17[4] = self;
  v14 = v6;
  v18 = v14;
  v15 = v7;
  v19 = v15;
  [v9 addSuccessBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_persistenceDidReconcileJournaledMessages:(id)a3 generationWindow:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(EDMessageQueryHelper *)self query];
  v7 = [v6 queryOptions];

  if ((v7 & 0x20) != 0)
  {
    v8 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update for a Spotlight query result.", buf, 2u);
    }
  }

  else
  {
    v8 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v5 includeDeleted:0];
    if ([v8 count])
    {
      v9 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 count];
        v11 = [(EDMessageQueryHelper *)self query];
        *buf = 134218498;
        v23 = self;
        v24 = 1024;
        v25 = v10;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Reconciled %u filtered messages: %@", buf, 0x1Cu);
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __83__EDMessageQueryHelper__persistenceDidReconcileJournaledMessages_generationWindow___block_invoke;
      v19 = &unk_1E8250128;
      v20 = self;
      v12 = v8;
      v21 = v12;
      v13 = _Block_copy(&v16);
      if ([(EDMessageQueryHelper *)self addMessagesSynchronously:v16])
      {
        v14 = [(EDMessageQueryHelper *)self scheduler];
        [v14 performSyncBlock:v13];
      }

      else
      {
        v14 = [(EDMessageQueryHelper *)self scheduler];
        [v14 performBlock:v13];
      }

      v8 = v12;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __83__EDMessageQueryHelper__persistenceDidReconcileJournaledMessages_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didAddMessages:*(a1 + 40) searchInfo:0];
}

- (void)persistenceWillChangeFlags:(id)a3 messages:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(EDMessageQueryHelper *)self query];
  v8 = [v7 queryOptions];

  if ((v8 & 4) == 0 && (![v14 deletedChanged] || (objc_msgSend(v14, "deleted") & 1) == 0))
  {
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [v9 threadDictionary];

    v11 = [(EDMessageQueryHelper *)self queryEvaluator];
    v12 = [v11 transformAndFilterMessages:v6];

    v13 = [(EDMessageQueryHelper *)self pendingFlagChangesKey];
    [v10 setObject:v12 forKeyedSubscript:v13];
  }
}

- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(EDMessageQueryHelper *)self query];
  LOBYTE(a4) = [v9 queryOptions];

  if ((a4 & 4) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v8];

    if ([v7 deletedChanged] && objc_msgSend(v7, "deleted"))
    {
      [(EDMessageQueryHelper *)self _persistenceDidDeleteMessages:v10 includeMessagesWithDeletedFlag:1];
    }

    else
    {
      v11 = [(EDMessageQueryHelper *)self pendingFlagChangesKey];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __76__EDMessageQueryHelper_persistenceDidChangeFlags_messages_generationWindow___block_invoke;
      v12[3] = &unk_1E8255110;
      v12[4] = self;
      [(EDMessageQueryHelper *)self _calculateAndReportChangesForPersistedMessages:v10 withPendingChangesKey:v11 changeBlock:v12];
    }
  }
}

void __76__EDMessageQueryHelper_persistenceDidChangeFlags_messages_generationWindow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) delegate];
  [v6 queryHelper:*(a1 + 32) messageFlagsDidChangeForMessages:v5 previousMessages:v7];
}

- (void)persistenceWillChangeReadLaterDate:(id)a3 messages:(id)a4
{
  v10 = a4;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];

  v7 = [(EDMessageQueryHelper *)self queryEvaluator];
  v8 = [v7 transformAndFilterMessages:v10];

  v9 = [(EDMessageQueryHelper *)self pendingReadLaterDateChangesKey];
  [v6 setObject:v8 forKeyedSubscript:v9];
}

- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  v10 = [(EDMessageQueryHelper *)self pendingReadLaterDateChangesKey];
  v14[0] = *MEMORY[0x1E699A958];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "latestGeneration")}];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:v8 withPendingChangesKey:v10 keyPaths:v11 generation:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)a3 conversationID:(int64_t)a4 generationWindow:(id)a5
{
  v8 = [(EDMessageQueryHelper *)self scheduler:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__EDMessageQueryHelper_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke;
  v9[3] = &unk_1E8255138;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a4;
  [v8 performBlock:v9];
}

void __106__EDMessageQueryHelper_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) conversationNotificationLevelDidChangeForConversation:*(a1 + 40) conversationID:*(a1 + 48)];
}

- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4
{
  v5 = a3;
  v6 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v5];

  [EDMessageQueryHelper _persistenceDidDeleteMessages:"_persistenceDidDeleteMessages:includeMessagesWithDeletedFlag:" includeMessagesWithDeletedFlag:?];
}

uint64_t __85__EDMessageQueryHelper__persistenceDidDeleteMessages_includeMessagesWithDeletedFlag___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __85__EDMessageQueryHelper__persistenceDidDeleteMessages_includeMessagesWithDeletedFlag___block_invoke_64(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didDeleteMessages:*(a1 + 40)];
}

- (void)persistenceWillChangeConversationID:(int64_t)a3 messages:(id)a4
{
  v6 = a4;
  v15 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v6];

  v7 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v15 includeDeleted:0];
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E696AF00] currentThread];
    v9 = [v8 threadDictionary];

    v10 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
      [v11 setObject:v7 forKeyedSubscript:v12];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
      v11 = [v13 initWithObjectsAndKeys:{v7, v14, 0}];

      v12 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
      [v9 setObject:v11 forKeyedSubscript:v12];
    }
  }
}

- (void)persistenceIsChangingConversationID:(int64_t)a3 messages:(id)a4 generationWindow:(id)a5
{
  v7 = a4;
  v8 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v7];

  v9 = [MEMORY[0x1E696AF00] currentThread];
  v10 = [v9 threadDictionary];

  v11 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v14 = [v12 objectForKeyedSubscript:v13];

  v15 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v8 includeDeleted:0];
  if ([v15 count] || objc_msgSend(v14, "count"))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [v12 setObject:0 forKeyedSubscript:v16];

    if (![v12 count])
    {
      v17 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
      [v10 setObject:0 forKeyedSubscript:v17];
    }

    v18 = [(EDMessageQueryHelper *)self scheduler];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __86__EDMessageQueryHelper_persistenceIsChangingConversationID_messages_generationWindow___block_invoke;
    v19[3] = &unk_1E8255160;
    v20 = v15;
    v21 = self;
    v23 = a3;
    v22 = v14;
    [v18 performBlock:v19];
  }
}

void __86__EDMessageQueryHelper_persistenceIsChangingConversationID_messages_generationWindow___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v6 = [*(a1 + 40) delegate];
    [v6 queryHelper:*(a1 + 40) conversationIDDidChangeForMessages:*(a1 + 32) fromConversationID:*(a1 + 56)];
  }

  v2 = [*(a1 + 32) count];
  if (v2 != [*(a1 + 48) count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(a1 + 48)];
    [v7 ef_removeObjectsInArray:*(a1 + 32)];
    if ([v7 count])
    {
      v3 = [*(a1 + 40) delegate];
      v4 = *(a1 + 40);
      v5 = [v7 allObjects];
      [v3 queryHelper:v4 didDeleteMessages:v5];
    }
  }
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)a3 orConversationID:(int64_t)a4 message:(id)a5 generationWindow:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (([v9 isJournaled] & 1) == 0)
  {
    v30 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v11 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v10 includeDeleted:0];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 objectID];
        v15 = [v14 globalMessageID];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        *&buf[32] = 2048;
        *&buf[34] = v15;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Updating global message id for message: %{public}@ oldGlobalMessageID %llu newGlobalMessageID %llu", buf, 0x2Au);
      }

      v16 = objc_alloc(MEMORY[0x1E699ADA8]);
      v17 = [v12 objectID];
      v18 = [v17 mailboxScope];
      v19 = [v16 initWithGlobalMessageID:a3 mailboxScope:v18];

      v20 = [v12 objectID];
      LOBYTE(v16) = [v20 isEqual:v19];

      if (v16)
      {
        v21 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v12 itemID];
          *buf = 134218754;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2112;
          *&buf[24] = v12;
          *&buf[32] = 2112;
          *&buf[34] = v19;
          _os_log_debug_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEBUG, "%p: itemID not changed %@\nchangedMessage %@\noldObjectID %@", buf, 0x2Au);
        }

        memset(buf, 170, sizeof(buf));
        *&buf[32] = 0;
        *v32 = 0xE00000001;
        v33 = 1;
        v34 = getpid();
        v29 = 648;
        if (!sysctl(v32, 4u, buf, &v29, 0, 0) && (*&buf[32] & 0x800) != 0)
        {
          __debugbreak();
          JUMPOUT(0x1C62FC44CLL);
        }
      }

      else
      {
        v22 = [(EDMessageQueryHelper *)self scheduler];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __102__EDMessageQueryHelper_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke;
        v25[3] = &unk_1E8255160;
        v25[4] = self;
        v26 = v12;
        v27 = v19;
        v28 = a4;
        [v22 performBlock:v25];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __102__EDMessageQueryHelper_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) objectIDDidChangeForMessage:*(a1 + 40) oldObjectID:*(a1 + 48) oldConversationID:*(a1 + 56)];
}

- (void)persistenceDidUpdateProperties:(id)a3 message:(id)a4 generationWindow:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([v8 isJournaled] & 1) == 0)
  {
    v9 = [(EDMessageQueryHelper *)self query];
    v10 = [v9 queryOptions];

    if ((v10 & 4) == 0)
    {
      v20[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v12 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v11 includeDeleted:0];

      if ([v12 count])
      {
        objc_initWeak(&location, self);
        v13 = [(EDMessageQueryHelper *)self scheduler];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke;
        v15[3] = &unk_1E8255188;
        objc_copyWeak(&v18, &location);
        v16 = v7;
        v17 = v12;
        [v13 performBlock:v15];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cancelationToken];
    v5 = [v4 isCanceled];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) ef_compactMap:&__block_literal_global_69];
      if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && [v6 containsObject:*MEMORY[0x1E699A8C0]])
      {
        v7 = [v6 arrayByAddingObject:*MEMORY[0x1E699A900]];

        v6 = v7;
      }

      if ([v6 count])
      {
        v8 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 40);
          v12 = 134218498;
          v13 = v3;
          v14 = 2112;
          v15 = v11;
          v16 = 2112;
          v17 = v6;
          _os_log_debug_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEBUG, "%p: persistenceDidUpdateProperties %@\nkeyPaths %@", &v12, 0x20u);
        }

        v9 = [v3 delegate];
        [v9 queryHelper:v3 didUpdateMessages:*(a1 + 40) forKeyPaths:v6];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:*MEMORY[0x1E699B1D0]])
  {
    v3 = MEMORY[0x1E699A9A0];
LABEL_13:
    v4 = *v3;
    goto LABEL_14;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E699B1D8]])
  {
    v3 = MEMORY[0x1E699A9A8];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:@"GeneratedSummary"])
  {
    v3 = MEMORY[0x1E699A8C0];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E699B1C8]])
  {
    v3 = MEMORY[0x1E699A8E0];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:@"AuthenticationState"])
  {
    v3 = MEMORY[0x1E699A810];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:@"BrandIndicatorLocation"])
  {
    v3 = MEMORY[0x1E699A828];
    goto LABEL_13;
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (void)persistenceWillUpdateDisplayDateForMessages:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [(EDMessageQueryHelper *)self queryEvaluator];
  v7 = [v6 transformAndFilterMessages:v9];

  v8 = [(EDMessageQueryHelper *)self pendingDisplayDateChangesKey];
  [v5 setObject:v7 forKeyedSubscript:v8];
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)a3 changeIsRemote:(BOOL)a4 generation:(int64_t)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(EDMessageQueryHelper *)self pendingDisplayDateChangesKey];
  v12[0] = *MEMORY[0x1E699A888];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:v7 withPendingChangesKey:v8 keyPaths:v9 generation:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillUpdateAuthenticationStateForMessages:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [(EDMessageQueryHelper *)self queryEvaluator];
  v7 = [v6 transformAndFilterMessages:v9];

  v8 = [(EDMessageQueryHelper *)self pendingAuthenticationChangesKey];
  [v5 setObject:v7 forKeyedSubscript:v8];
}

- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageQueryHelper *)self pendingAuthenticationChangesKey];
  v8[0] = *MEMORY[0x1E699A810];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:v4 withPendingChangesKey:v5 keyPaths:v6 generation:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillAddLabels:(id)a3 removeLabels:(id)a4 messages:(id)a5
{
  v6 = a5;
  v7 = [(EDMessageQueryHelper *)self query];
  if (([v7 queryOptions] & 0x20) != 0)
  {
  }

  else
  {
    v8 = [(EDMessageQueryHelper *)self query];
    v9 = [v8 queryOptions];

    if ((v9 & 4) == 0)
    {
      *buf = 0;
      v30 = buf;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__27;
      v33 = __Block_byref_object_dispose__27;
      v10 = [MEMORY[0x1E696AF00] currentThread];
      v34 = [v10 threadDictionary];

      v11 = [(EDMessageQueryHelper *)self queryEvaluator];
      v12 = [v11 transformMessages:v6];

      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy__27;
      v27[4] = __Block_byref_object_dispose__27;
      v13 = MEMORY[0x1E695DF70];
      v14 = [(EDMessageQueryHelper *)self queryEvaluator];
      v26 = 0;
      v15 = [v14 filterMessages:v12 unmatchedMessages:&v26];
      v16 = v26;
      v28 = [v13 arrayWithArray:v15];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke;
      aBlock[3] = &unk_1E82551D8;
      v17 = v16;
      v22 = v17;
      v23 = self;
      v24 = v27;
      v25 = buf;
      v18 = _Block_copy(aBlock);
      if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
      {
        v19 = [(EDMessageQueryHelper *)self scheduler];
        [v19 performSyncBlock:v18];
      }

      else
      {
        v19 = [(EDMessageQueryHelper *)self scheduler];
        [v19 performBlock:v18];
      }

      _Block_object_dispose(v27, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_11;
    }
  }

  v20 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update.", buf, 2u);
  }

LABEL_11:
}

void __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    os_unfair_lock_lock(v2 + 6);
    v3 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke_2;
    v7[3] = &unk_1E82551B0;
    v8 = *(a1 + 40);
    [v3 enumerateObjectsUsingBlock:v7];
    os_unfair_lock_unlock(v2 + 6);
  }

  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = [*(a1 + 40) pendingLabelChangesKey];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

void __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:?])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

- (void)persistenceDidAddLabels:(id)a3 removeLabels:(id)a4 messages:(id)a5 generationWindow:(id)a6
{
  v7 = a5;
  v8 = [(EDMessageQueryHelper *)self query];
  if (([v8 queryOptions] & 0x20) != 0)
  {
  }

  else
  {
    v9 = [(EDMessageQueryHelper *)self query];
    v10 = [v9 queryOptions];

    if ((v10 & 4) == 0)
    {
      v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v7];

      v12 = [(EDMessageQueryHelper *)self pendingLabelChangesKey];
      [(EDMessageQueryHelper *)self _calculateAndReportLabelChangesForPersistedMessages:v11 withPendingChangesKey:v12];

      v7 = v11;
      goto LABEL_8;
    }
  }

  v13 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update.", v14, 2u);
  }

LABEL_8:
}

- (void)persistenceWillChangeCategorizationForMessages:(id)a3
{
  v11 = a3;
  v4 = [(EDMessageQueryHelper *)self query];
  v5 = [v4 queryOptions];

  if ((v5 & 4) == 0)
  {
    v6 = [MEMORY[0x1E696AF00] currentThread];
    v7 = [v6 threadDictionary];

    v8 = [(EDMessageQueryHelper *)self queryEvaluator];
    v9 = [v8 transformAndFilterMessages:v11];

    v10 = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    [v7 setObject:v9 forKeyedSubscript:v10];
  }
}

- (void)persistenceDidChangeCategorizationForMessages:(id)a3 userInitiated:(BOOL)a4 generationWindow:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [(EDMessageQueryHelper *)self query];
  v10 = [v9 queryOptions];

  if ((v10 & 4) != 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v7];

    v12 = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    v13 = *MEMORY[0x1E699A848];
    v17[0] = *MEMORY[0x1E699A850];
    v17[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "latestGeneration")}];
    [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:v11 withPendingChangesKey:v12 keyPaths:v14 generation:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidNotChangeCategorizationForMessages:(id)a3
{
  v7 = [(EDMessageQueryHelper *)self query];
  v4 = [v7 queryOptions];

  if ((v4 & 4) == 0)
  {
    v8 = [MEMORY[0x1E696AF00] currentThread];
    v5 = [v8 threadDictionary];
    v6 = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    [v5 setObject:0 forKeyedSubscript:v6];
  }
}

- (void)persistenceDidChangeBusinessIDForMessages:(id)a3 fromBusinessID:(int64_t)a4
{
  v6 = a3;
  v7 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v6];

  v8 = [(EDMessageQueryHelper *)self query];
  LOBYTE(v6) = [v8 queryOptions];

  if ((v6 & 4) == 0)
  {
    v9 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v7 includeDeleted:0];
    if ([v9 count])
    {
      objc_initWeak(&location, self);
      v10 = [(EDMessageQueryHelper *)self scheduler];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke;
      v11[3] = &unk_1E8255200;
      objc_copyWeak(v13, &location);
      v12 = v9;
      v13[1] = a4;
      [v10 performBlock:v11];

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

void __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cancelationToken];
    v5 = [v4 isCanceled];

    if ((v5 & 1) == 0)
    {
      v6 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke_cold_1(v3, a1, v6);
      }

      v7 = [v3 delegate];
      [v7 queryHelper:v3 businessIDDidChangeForMessages:*(a1 + 32) fromBusinessID:*(a1 + 48)];
    }
  }
}

- (void)_reportChangesForPersistedMessages:(id)a3 withPendingChangesKey:(id)a4 keyPaths:(id)a5 generation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:v10];

  v14 = [(EDMessageQueryHelper *)self queryEvaluator];
  v15 = [v14 transformAndFilterMessages:v19];

  v16 = [MEMORY[0x1E696AF00] currentThread];
  v17 = [v16 threadDictionary];

  v18 = [v17 objectForKeyedSubscript:v11];
  [v17 setObject:0 forKeyedSubscript:v11];
  [(EDMessageQueryHelper *)self _reportChangesForCurrentlyMatchingMessages:v15 previouslyMatchingMessages:v18 keyPaths:v12 generation:v13];
}

- (void)_reportChangesForCurrentlyMatchingMessages:(id)a3 previouslyMatchingMessages:(id)a4 keyPaths:(id)a5 generation:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v27 = a4;
  v11 = a5;
  v25 = a6;
  v12 = [(EDMessageQueryHelper *)self query];
  LOBYTE(a5) = [v12 queryOptions];

  if ((a5 & 0x20) != 0)
  {
    v21 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update for a Spotlight query result.", buf, 2u);
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v26];
    v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v27];
    v15 = [v13 mutableCopy];
    [v15 intersectSet:v14];
    [v13 minusSet:v15];
    [v14 minusSet:v15];
    v16 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 134219266;
      v35 = self;
      v36 = 2114;
      v37 = v17;
      v38 = 2114;
      v39 = v11;
      v40 = 2048;
      v41 = [v14 count];
      v42 = 2048;
      v43 = [v13 count];
      v44 = 2048;
      v45 = [v15 count];
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - schedule changes for keyPaths:%{public}@ removed=%lu added=%lu changed=%lu", buf, 0x3Eu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__EDMessageQueryHelper__reportChangesForCurrentlyMatchingMessages_previouslyMatchingMessages_keyPaths_generation___block_invoke;
    aBlock[3] = &unk_1E8252D78;
    v18 = v14;
    v29 = v18;
    v30 = self;
    v19 = v15;
    v31 = v19;
    v20 = v11;
    v32 = v20;
    v21 = v13;
    v33 = v21;
    v22 = _Block_copy(aBlock);
    if ([v21 count]&& [(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      v23 = [(EDMessageQueryHelper *)self scheduler];
      [v23 performSyncBlock:v22];
    }

    else
    {
      [(EDMessageQueryHelper *)self _performBlockAfterGenerationCheck:v22 generation:v25 keyPaths:v20 removedMessages:v18 changedMessages:v19 addedMessages:v21];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __114__EDMessageQueryHelper__reportChangesForCurrentlyMatchingMessages_previouslyMatchingMessages_keyPaths_generation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v8 = [*(a1 + 40) delegate];
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) allObjects];
    [v8 queryHelper:v2 didDeleteMessages:v3];
  }

  if ([*(a1 + 48) count])
  {
    v9 = [*(a1 + 40) delegate];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) allObjects];
    [v9 queryHelper:v4 didUpdateMessages:v5 forKeyPaths:*(a1 + 56)];
  }

  if ([*(a1 + 64) count])
  {
    v10 = [*(a1 + 40) delegate];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 64) allObjects];
    [v10 queryHelper:v6 didAddMessages:v7 searchInfo:0];
  }
}

- (void)_performBlockAfterGenerationCheck:(id)a3 generation:(id)a4 keyPaths:(id)a5 removedMessages:(id)a6 changedMessages:(id)a7 addedMessages:(id)a8
{
  v65 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v34 = a6;
  v18 = a7;
  v19 = a8;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v20 = [(EDMessageQueryHelper *)self messagePersistence];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __124__EDMessageQueryHelper__performBlockAfterGenerationCheck_generation_keyPaths_removedMessages_changedMessages_addedMessages___block_invoke;
  v42[3] = &unk_1E8255228;
  v42[4] = &v43;
  [v20 performDatabaseReadBlock:v42];

  if (v16 && (v21 = v44[3], v21 <= [v16 longLongValue]))
  {
    v23 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v17;
      v24 = NSStringFromSelector(a2);
      v32 = [v34 count];
      v25 = [v19 count];
      v26 = [v18 count];
      v27 = v44[3];
      v28 = [v16 longLongValue];
      *buf = 134220034;
      v48 = self;
      v49 = 2114;
      v50 = v24;
      v51 = 2114;
      v52 = v33;
      v53 = 2048;
      v54 = v32;
      v55 = 2048;
      v56 = v25;
      v57 = 2048;
      v58 = v26;
      v59 = 2048;
      v60 = 0x3FC0000000000000;
      v61 = 2048;
      v62 = v27;
      v17 = v33;
      v63 = 2048;
      v64 = v28;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - rescheduling changes for keyPaths:%{public}@ removed=%lu added=%lu changed=%lu after %.3f due to generation %lld not being higher than generation window of the change %lld", buf, 0x5Cu);
    }

    v29 = [(EDMessageQueryHelper *)self scheduler];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __124__EDMessageQueryHelper__performBlockAfterGenerationCheck_generation_keyPaths_removedMessages_changedMessages_addedMessages___block_invoke_74;
    v35[3] = &unk_1E8255250;
    v35[4] = self;
    v41 = v15;
    v36 = v16;
    v37 = v17;
    v38 = v34;
    v39 = v18;
    v40 = v19;
    v30 = [v29 afterDelay:v35 performBlock:0.125];
  }

  else
  {
    v22 = [(EDMessageQueryHelper *)self scheduler];
    [v22 performBlock:v15];
  }

  _Block_object_dispose(&v43, 8);

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_persistedMessagesFromSendersWithAddresses:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageQueryHelper *)self query];
  v6 = [v5 predicate];
  v7 = [MEMORY[0x1E699ADA0] predicateForMessagesWithSenders:v4];
  v8 = objc_alloc(MEMORY[0x1E696AB28]);
  v20[0] = v6;
  v20[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v10 = [v8 initWithType:1 subpredicates:v9];

  v11 = objc_alloc(MEMORY[0x1E699AE28]);
  v12 = [v5 targetClass];
  v13 = [v5 queryOptions];
  v14 = [v5 targetClassOptions];
  v15 = [v11 initWithTargetClass:v12 predicate:v10 sortDescriptors:MEMORY[0x1E695E0F0] limit:0 queryOptions:v13 targetClassOptions:v14 label:0];

  v16 = [(EDMessageQueryHelper *)self messagePersistence];
  v17 = [v16 persistedMessagesMatchingQuery:v15 limit:0];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_calculateAndReportChangesForPersistedMessages:(id)a3 withPendingChangesKey:(id)a4 changeBlock:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v48 = a4;
  v44 = v8;
  v45 = a5;
  v9 = [(EDMessageQueryHelper *)self queryEvaluator];
  v50 = [v9 transformMessages:v8];

  v10 = [(EDMessageQueryHelper *)self queryEvaluator];
  v47 = self;
  v88 = 0;
  v53 = [v10 filterMessages:v50 unmatchedMessages:&v88];
  v46 = v88;

  v11 = [MEMORY[0x1E696AF00] currentThread];
  v49 = [v11 threadDictionary];

  v42 = [v49 objectForKeyedSubscript:v48];
  [v49 setObject:0 forKeyedSubscript:v48];
  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v12 = v42;
  v13 = [v12 countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v13)
  {
    v14 = *v85;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v84 + 1) + 8 * i);
        v17 = [v16 objectID];
        [v54 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v12 countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v13);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke;
  aBlock[3] = &unk_1E8255278;
  v43 = v54;
  v83 = v43;
  v52 = _Block_copy(aBlock);
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__27;
  v80 = __Block_byref_object_dispose__27;
  v81 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__27;
  v74 = __Block_byref_object_dispose__27;
  v75 = 0;
  if ([v12 count] || objc_msgSend(v53, "count"))
  {
    v51 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v18 = v50;
    v19 = 0;
    v20 = [v18 countByEnumeratingWithState:&v66 objects:v89 count:16];
    if (v20)
    {
      v21 = *v67;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v67 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v66 + 1) + 8 * j);
          v24 = [v12 containsObject:v23];
          v25 = [v53 containsObject:v23];
          v26 = v25;
          if (v24)
          {
            v27 = v77[5];
            if (!v27)
            {
              v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v29 = v77[5];
              v77[5] = v28;

              v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v31 = v71[5];
              v71[5] = v30;

              v27 = v77[5];
            }

            v52[2](v52, v27, v71[5], v23);
            if ((v26 & 1) == 0)
            {
              [v51 addObject:v23];
            }
          }

          else if (v25)
          {
            if (!v19)
            {
              v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v19 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v66 objects:v89 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v19 = 0;
    v51 = 0;
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_77;
  v55[3] = &unk_1E82552C8;
  v32 = v12;
  v56 = v32;
  v33 = v53;
  v57 = v33;
  v34 = v51;
  v58 = v34;
  v59 = v47;
  v35 = v19;
  v60 = v35;
  v64 = &v76;
  v65 = &v70;
  v36 = v52;
  v62 = v36;
  v37 = v46;
  v61 = v37;
  v38 = v45;
  v63 = v38;
  v39 = _Block_copy(v55);
  if ([v35 count] && -[EDMessageQueryHelper addMessagesSynchronously](v47, "addMessagesSynchronously"))
  {
    v40 = [(EDMessageQueryHelper *)v47 scheduler];
    [v40 performSyncBlock:v39];
  }

  else
  {
    v40 = [(EDMessageQueryHelper *)v47 scheduler];
    [v40 performBlock:v39];
  }

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);

  v41 = *MEMORY[0x1E69E9840];
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [a2 addObject:v8];
  v9 = *(a1 + 32);
  v10 = [v8 objectID];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    [v7 addObject:v11];
  }

  else
  {
    v12 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 ef_publicDescription];
      __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_cold_1(v13, v15, v12);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_77(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    if ([*(a1 + 48) count])
    {
      v2 = *(a1 + 56);
      os_unfair_lock_lock(v2 + 6);
      [*(*(a1 + 56) + 16) unionSet:*(a1 + 48)];
      os_unfair_lock_unlock(v2 + 6);
    }

    if ([*(a1 + 64) count])
    {
      v3 = (*(a1 + 56) + 24);
      os_unfair_lock_lock(v3);
      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_2;
      v29[3] = &unk_1E82552A0;
      v5 = *(a1 + 64);
      v29[4] = *(a1 + 56);
      v32 = *(a1 + 96);
      v31 = *(a1 + 80);
      v6 = v4;
      v30 = v6;
      [v5 enumerateObjectsUsingBlock:v29];
      [*(a1 + 64) removeObjectsAtIndexes:v6];

LABEL_7:
      os_unfair_lock_unlock(v3);
    }
  }

  else if ([*(a1 + 72) count])
  {
    v3 = (*(a1 + 56) + 24);
    os_unfair_lock_lock(v3);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = *(a1 + 72);
    v13 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(a1 + 56) + 16) containsObject:*(*(&v25 + 1) + 8 * i)])
          {
            if (!*(*(*(a1 + 96) + 8) + 40))
            {
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v17 = *(*(a1 + 96) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = v16;

              v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v20 = *(*(a1 + 104) + 8);
              v21 = *(v20 + 40);
              *(v20 + 40) = v19;

              v22 = *(*(*(a1 + 96) + 8) + 40);
            }

            v23 = *(*(*(a1 + 104) + 8) + 40);
            (*(*(a1 + 80) + 16))();
          }
        }

        v13 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v13);
    }

    goto LABEL_7;
  }

  v7 = [*(a1 + 56) query];
  v8 = ([v7 queryOptions] & 0x20) == 0;

  if (!v8)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update for a Spotlight query result.", v24, 2u);
    }

    goto LABEL_15;
  }

  if ([*(*(*(a1 + 96) + 8) + 40) count])
  {
    v9 = *(*(*(a1 + 104) + 8) + 40);
    v10 = *(*(*(a1 + 96) + 8) + 40);
    (*(*(a1 + 88) + 16))();
  }

  if ([*(a1 + 64) count])
  {
    v11 = [*(a1 + 56) delegate];
    [v11 queryHelper:*(a1 + 56) didAddMessages:*(a1 + 64) searchInfo:0];
LABEL_15:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:?])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(*(a1 + 56) + 8) + 40);
    }

    v12 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 48) + 16))();
    [*(*(a1 + 32) + 16) removeObject:v13];
    [*(a1 + 40) addIndex:a3];
  }
}

- (void)_calculateAndReportLabelChangesForPersistedMessages:(id)a3 withPendingChangesKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageQueryHelper *)self queryEvaluator];
  v9 = [v8 transformAndFilterMessages:v6];

  v10 = [MEMORY[0x1E696AF00] currentThread];
  v11 = [v10 threadDictionary];

  v12 = [v11 objectForKeyedSubscript:v7];
  [v11 setObject:0 forKeyedSubscript:v7];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__27;
  v29[4] = __Block_byref_object_dispose__27;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__27;
  v27 = __Block_byref_object_dispose__27;
  v28 = 0;
  if ([v12 count] || objc_msgSend(v9, "count"))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke;
    v20[3] = &unk_1E82551B0;
    v13 = v9;
    v21 = v13;
    v22 = &v23;
    [v12 enumerateObjectsUsingBlock:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_2;
    v17[3] = &unk_1E82551B0;
    v18 = v12;
    v19 = v29;
    [v13 enumerateObjectsUsingBlock:v17];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_3;
  aBlock[3] = &unk_1E8255318;
  aBlock[4] = self;
  aBlock[5] = &v23;
  aBlock[6] = v29;
  v14 = _Block_copy(aBlock);
  if ([v24[5] count] || objc_msgSend(v9, "count"))
  {
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      v15 = [(EDMessageQueryHelper *)self scheduler];
      [v15 performSyncBlock:v14];
    }

    else
    {
      v15 = [(EDMessageQueryHelper *)self scheduler];
      [v15 performBlock:v14];
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_3(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = *(a1 + 32);
    os_unfair_lock_lock(v2 + 6);
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_4;
    v6[3] = &unk_1E82552F0;
    v6[4] = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v6];
    os_unfair_lock_unlock(v2 + 6);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v4 = [*(a1 + 32) delegate];
    [v4 queryHelper:*(a1 + 32) didAddMessages:*(*(*(a1 + 48) + 8) + 40) searchInfo:0];
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v5 = [*(a1 + 32) delegate];
    [v5 queryHelper:*(a1 + 32) didDeleteMessages:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:?])
  {
    [*(*(a1 + 32) + 16) removeObject:v3];
  }
}

- (void)remoteSearchDidFinish
{
  v3 = [(EDMessageQueryHelper *)self scheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EDMessageQueryHelper_remoteSearchDidFinish__block_invoke;
  v4[3] = &unk_1E8250260;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __45__EDMessageQueryHelper_remoteSearchDidFinish__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperDidFinishRemoteSearch:*(a1 + 32)];
}

- (void)localSearchDidFinish
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [v3 setLiveSearchQueryStatus:1];

  v4 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(EDMessageQueryHelper *)self query];
    *buf = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p: Finished live query %{public}@", buf, 0x16u);
  }

  [(EDMessageQueryHelper *)self setReturningInitialResults:0];
  v6 = [(EDMessageQueryHelper *)self scheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__EDMessageQueryHelper_localSearchDidFinish__block_invoke;
  v8[3] = &unk_1E8250260;
  v8[4] = self;
  [v6 performBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __44__EDMessageQueryHelper_localSearchDidFinish__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 localSearchInfoCollector];
  [v4 queryHelperDidFindAllMessages:v2 localSearchInfoCollector:v3];
}

- (void)localSearchDidFail
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "%p: Failed live query %{public}@", buf, 0x16u);
}

void __42__EDMessageQueryHelper_localSearchDidFail__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 localSearchInfoCollector];
  [v4 queryHelperDidFailInitialLoad:v2 localSearchInfoCollector:v3];
}

- (void)localSearchDidFindMessages:(id)a3 itemSnippetData:(id)a4 rankingSignals:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = a4;
  v9 = a5;
  if ([(EDMessageQueryHelper *)self returningInitialResults])
  {
    v10 = [(EDMessageQueryHelper *)self queryEvaluator];
    [v10 addMessagesToFilterSet:v8];

    v35 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v8 includeDeleted:0];
    if ([(EDMessageQueryHelper *)self snippetDataBudgetRemaining])
    {
      v44 = 0;
      v11 = [(EDMessageQueryHelper *)self _snippetsByObjectIDForMessages:v35 itemSnippetData:v36 max:[(EDMessageQueryHelper *)self snippetDataBudgetRemaining] snippetMessageObjectIDsByConversation:&v44];
      v12 = v44;
      v13 = [v11 count];
      if (v13 <= [(EDMessageQueryHelper *)self snippetDataBudgetRemaining])
      {
        -[EDMessageQueryHelper setSnippetDataBudgetRemaining:](self, "setSnippetDataBudgetRemaining:", -[EDMessageQueryHelper snippetDataBudgetRemaining](self, "snippetDataBudgetRemaining") - [v11 count]);
        v16 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(EDMessageQueryHelper *)self snippetDataBudgetRemaining];
          v18 = [v11 count];
          v19 = [(EDMessageQueryHelper *)self query];
          *buf = 134218754;
          v47 = self;
          v48 = 2048;
          v49 = v17;
          v50 = 2048;
          v51 = v18;
          v52 = 2114;
          v53 = v19;
          _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: %lu remaining budget after %lu snippet data for query: %{public}@", buf, 0x2Au);
        }

        v15 = v11;
      }

      else
      {
        v14 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v32 = [v11 count];
          v33 = [(EDMessageQueryHelper *)self snippetDataBudgetRemaining];
          v34 = [(EDMessageQueryHelper *)self query];
          *buf = 134218754;
          v47 = self;
          v48 = 2048;
          v49 = v32;
          v50 = 2048;
          v51 = v33;
          v52 = 2114;
          v53 = v34;
          _os_log_fault_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_FAULT, "%p: Got %lu snippet data with %lu remaining budget for query: %{public}@", buf, 0x2Au);
        }

        v15 = v11;
        [(EDMessageQueryHelper *)self setSnippetDataBudgetRemaining:0];
      }
    }

    else
    {
      v15 = 0;
      v12 = 0;
    }

    v20 = [(EDMessageQueryHelper *)self localSearchInfoCollector];
    [v20 processRankingSignalsBySearchableItemID:v9 forMessages:v35];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v35;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v22)
    {
      v23 = *v41;
      do
      {
        v24 = 0;
        do
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v40 + 1) + 8 * v24++) setSearchResultType:2];
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v22);
    }

    v25 = [EDMessageSearchInfo searchInfoWithInstantAnswer:0 snippetsByObjectID:v15 snippetMessageObjectIDsByConversation:v12];
    v26 = [(EDMessageQueryHelper *)self cancelationToken];
    v27 = [(EDMessageQueryHelper *)self scheduler];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __82__EDMessageQueryHelper_localSearchDidFindMessages_itemSnippetData_rankingSignals___block_invoke;
    v37[3] = &unk_1E8255340;
    v37[4] = self;
    v28 = v21;
    v38 = v28;
    v29 = v25;
    v39 = v29;
    v30 = [v27 performCancelableBlock:v37];
    [v26 addCancelable:v30];
  }

  else
  {
    [(EDMessageQueryHelper *)self _foundMessages:v8 inRemoteSearch:0 foundInLocalIndex:0];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __82__EDMessageQueryHelper_localSearchDidFindMessages_itemSnippetData_rankingSignals___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didFindMessages:*(a1 + 40) searchInfo:*(a1 + 48) forInitialBatch:1];
}

- (void)localSearchDidFindTopHits:(id)a3 itemSnippetData:(id)a4 rankingSignals:(id)a5 instantAnswer:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v40 = a4;
  v10 = a5;
  v39 = a6;
  if (v39)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 134218498;
      v57 = self;
      v58 = 2114;
      *v59 = v12;
      *&v59[8] = 2114;
      *&v59[10] = v39;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - instantAnswers for objectID:%{public}@", buf, 0x20u);
    }
  }

  v36 = [(EDMessageQueryHelper *)self queryEvaluator];
  [v36 addMessagesToFilterSet:v42];
  [v36 transformMessages:v42 includeDeleted:0];
  v41 = v54 = 0;
  v38 = [EDMessageQueryHelper _snippetsByObjectIDForMessages:"_snippetsByObjectIDForMessages:itemSnippetData:max:snippetMessageObjectIDsByConversation:" itemSnippetData:? max:? snippetMessageObjectIDsByConversation:?];
  v37 = v54;
  v13 = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [v13 processRankingSignalsBySearchableItemID:v10 forMessages:v41];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v41;
  v14 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v14)
  {
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        [v17 setSearchResultType:3];
        v18 = [v17 searchableMessageID];
        v19 = [v18 stringValue];
        v20 = [v10 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v20 l1Score];
          v22 = [v20 l2Score];
          v23 = MEMORY[0x1E696AD98];
          [v21 doubleValue];
          v25 = v24;
          [v22 doubleValue];
          v27 = [v23 numberWithDouble:v25 + v26];
          [v17 setSearchRelevanceScore:v27];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v14);
  }

  if ([obj count])
  {
    v28 = [EDMessageSearchInfo searchInfoWithInstantAnswer:v39 snippetsByObjectID:v38 snippetMessageObjectIDsByConversation:v37];
    v29 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [obj count];
      v31 = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      v57 = self;
      v58 = 1024;
      *v59 = v30;
      *&v59[4] = 2114;
      *&v59[6] = v31;
      _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "%p: Adding %u filtered messages: %{public}@", buf, 0x1Cu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__EDMessageQueryHelper_localSearchDidFindTopHits_itemSnippetData_rankingSignals_instantAnswer___block_invoke;
    aBlock[3] = &unk_1E8250AB8;
    v46 = obj;
    v47 = v42;
    v48 = self;
    v32 = v28;
    v49 = v32;
    v33 = _Block_copy(aBlock);
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      v34 = [(EDMessageQueryHelper *)self scheduler];
      [v34 performSyncBlock:v33];
    }

    else
    {
      v34 = [(EDMessageQueryHelper *)self scheduler];
      [v34 performBlock:v33];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __95__EDMessageQueryHelper_localSearchDidFindTopHits_itemSnippetData_rankingSignals_instantAnswer___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = EFFetchSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = [*(a1 + 40) count];
    v11[0] = 67109120;
    v11[1] = v6;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "QueryHelperDidAddMessages Callback", "count=%{signpost.description:attribute}u ", v11, 8u);
  }

  v7 = [*(a1 + 48) delegate];
  [v7 queryHelper:*(a1 + 48) didAddMessages:*(a1 + 32) searchInfo:*(a1 + 56)];

  v8 = v5;
  v9 = v8;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    LOWORD(v11[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_END, v3, "QueryHelperDidAddMessages Callback", "", v11, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)controller:(id)a3 messageTimerFired:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(EDMessageQueryHelper *)self updateDisplayDate])
  {
    v6 = [(EDMessageQueryHelper *)self queryEvaluator];
    v14[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [v6 transformAndFilterMessages:v7];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [(EDMessageQueryHelper *)self messagePersistence];
      v13 = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v10 updateBeforeDisplayForPersistedMessages:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_snippetsByObjectIDForMessages:(id)a3 itemSnippetData:(id)a4 max:(unint64_t)a5 snippetMessageObjectIDsByConversation:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v9 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__27;
  v42 = __Block_byref_object_dispose__27;
  v43 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__27;
  v36 = __Block_byref_object_dispose__27;
  v37 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 snippetHints];
        v17 = [v15 searchableItemIdentifier];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v12);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __113__EDMessageQueryHelper__snippetsByObjectIDForMessages_itemSnippetData_max_snippetMessageObjectIDsByConversation___block_invoke;
  v23[3] = &unk_1E8255368;
  v25 = &v38;
  v18 = v10;
  v24 = v18;
  v26 = &v32;
  v27 = a5;
  [v22 enumerateObjectsUsingBlock:v23];
  if (a6)
  {
    *a6 = v33[5];
  }

  v19 = v39[5];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __113__EDMessageQueryHelper__snippetsByObjectIDForMessages_itemSnippetData_max_snippetMessageObjectIDsByConversation___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 objectID];
  v8 = [v18 searchableMessageID];
  v9 = a1[4];
  v10 = [v8 stringValue];
  v11 = [v9 objectForKeyedSubscript:v10];
  [*(*(a1[5] + 8) + 40) setObject:v11 forKeyedSubscript:v7];

  v12 = *(*(a1[6] + 8) + 40);
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "conversationID")}];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    [v14 addObject:v7];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
    v16 = *(*(a1[6] + 8) + 40);
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "conversationID")}];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v14 = v15;
  }

  if (a1[7] - 1 == a3)
  {
    *a4 = 1;
  }
}

- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(uint8_t *)buf generationWindow:(os_log_t)log .cold.1(uint64_t a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: Did delete all messages in %u mailbox(es). Requesting restart.", buf, 0x12u);
}

void __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 134218242;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: persistenceDidUpdateBusinessIDForMessages %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Unable to find previous message: %{public}@", buf, 0xCu);
}

@end