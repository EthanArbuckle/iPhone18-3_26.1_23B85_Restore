@interface EDMessageQueryHelper
+ (OS_os_log)log;
- (BOOL)updateDisplayDate;
- (EDMessageQueryHelper)initWithQuery:(id)query initialBatchSize:(int64_t)size maximumBatchSize:(int64_t)batchSize messagePersistence:(id)persistence hookRegistry:(id)registry searchProvider:(id)provider scheduler:(id)scheduler remindMeNotificationController:(id)self0 delegate:(id)self1 shouldReconcileJournal:(BOOL)self2 shouldAddMessagesSynchronously:(BOOL)self3 keepMessagesInListOnBucketChange:(BOOL)self4;
- (EDMessageQueryHelperDelegate)delegate;
- (id)_persistedMessagesFromSendersWithAddresses:(id)addresses;
- (id)_predicateWithAdditionalPredicates:(id)predicates;
- (id)_snippetsByObjectIDForMessages:(id)messages itemSnippetData:(id)data max:(unint64_t)max snippetMessageObjectIDsByConversation:(id *)conversation;
- (id)_unjournaledMessagesForMessages:(id)messages;
- (id)messagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit;
- (id)sortableMessagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit;
- (void)_calculateAndReportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key changeBlock:(id)block;
- (void)_calculateAndReportLabelChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key;
- (void)_foundMessages:(id)messages inRemoteSearch:(BOOL)search foundInLocalIndex:(BOOL)index;
- (void)_getInitialResults;
- (void)_performBlockAfterGenerationCheck:(id)check generation:(id)generation keyPaths:(id)paths removedMessages:(id)messages changedMessages:(id)changedMessages addedMessages:(id)addedMessages;
- (void)_persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window;
- (void)_reportChangesForCurrentlyMatchingMessages:(id)messages previouslyMatchingMessages:(id)matchingMessages keyPaths:(id)paths generation:(id)generation;
- (void)_reportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key keyPaths:(id)paths generation:(id)generation;
- (void)_startLiveSearchQuery;
- (void)_updateDisplayDateForMessagesIfNeeded;
- (void)controller:(id)controller messageTimerFired:(id)fired;
- (void)dealloc;
- (void)localSearchDidFail;
- (void)localSearchDidFindMessages:(id)messages itemSnippetData:(id)data rankingSignals:(id)signals;
- (void)localSearchDidFindTopHits:(id)hits itemSnippetData:(id)data rankingSignals:(id)signals instantAnswer:(id)answer;
- (void)localSearchDidFinish;
- (void)persistenceDidAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages generationWindow:(id)window;
- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidChangeBusinessIDForMessages:(id)messages fromBusinessID:(int64_t)d;
- (void)persistenceDidChangeCategorizationForMessages:(id)messages userInitiated:(BOOL)initiated generationWindow:(id)window;
- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)level conversationID:(int64_t)d generationWindow:(id)window;
- (void)persistenceDidChangeFlags:(id)flags messages:(id)messages generationWindow:(id)window;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window;
- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window;
- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)ls generationWindow:(id)window;
- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidNotChangeCategorizationForMessages:(id)messages;
- (void)persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)messages;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation;
- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window;
- (void)persistenceIsChangingConversationID:(int64_t)d messages:(id)messages generationWindow:(id)window;
- (void)persistenceWillAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages;
- (void)persistenceWillChangeCategorizationForMessages:(id)messages;
- (void)persistenceWillChangeConversationID:(int64_t)d messages:(id)messages;
- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages;
- (void)persistenceWillChangeReadLaterDate:(id)date messages:(id)messages;
- (void)persistenceWillUpdateAuthenticationStateForMessages:(id)messages;
- (void)persistenceWillUpdateDisplayDateForMessages:(id)messages;
- (void)remoteSearchDidFinish;
- (void)start;
@end

@implementation EDMessageQueryHelper

- (void)start
{
  if (atomic_exchange(&self->_didStart._Value, 1u))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageQueryHelper.m" lineNumber:133 description:{@"Trying to start EDMessageQueryHelper %p that was already started.", self}];
  }

  remindMeNotificationController = [(EDMessageQueryHelper *)self remindMeNotificationController];
  v4 = [remindMeNotificationController addRemindMeObserver:self];

  cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
  [cancelationToken addCancelable:v4];

  hookRegistry = [(EDMessageQueryHelper *)self hookRegistry];
  objc_initWeak(&location, hookRegistry);
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
    messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
    query = [(EDMessageQueryHelper *)self query];
    [messagePersistence updateBeforeDisplayForMessagesMatchingQuery:query];
  }
}

- (BOOL)updateDisplayDate
{
  query = [(EDMessageQueryHelper *)self query];
  targetClassOptions = [query targetClassOptions];
  v4 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9D8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)_getInitialResults
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(EDMessageQueryHelper *)self shouldReconcileJournal])
  {
    messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
    [messagePersistence reconcileJournalWithCompletionBlock:0];
  }

  v5 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    query = [(EDMessageQueryHelper *)self query];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = query;
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
  query2 = [(EDMessageQueryHelper *)self query];
  v9 = ([query2 queryOptions] & 4) == 0;

  if (v9)
  {
    query3 = [(EDMessageQueryHelper *)self query];
    if (([query3 queryOptions] & 0x20) != 0)
    {
      searchProvider = [(EDMessageQueryHelper *)self searchProvider];
      localSearchProvider = [searchProvider localSearchProvider];
      v13 = localSearchProvider == 0;

      if (v13)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageQueryHelper.m" lineNumber:250 description:@"Spotlight search query sent to handler without spotlight access"];
      }

      searchProvider2 = [(EDMessageQueryHelper *)self searchProvider];
      localSearchProvider2 = [searchProvider2 localSearchProvider];
      v16 = [localSearchProvider2 persistenceQueryForSearchableIndexQuery:query3];

      query3 = v16;
    }

    messagePersistence2 = [(EDMessageQueryHelper *)self messagePersistence];
    maximumBatchSize = [(EDMessageQueryHelper *)self maximumBatchSize];
    initialBatchSize = [(EDMessageQueryHelper *)self initialBatchSize];
    cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
    [messagePersistence2 iterateMessagesMatchingQuery:query3 batchSize:maximumBatchSize firstBatchSize:initialBatchSize limit:0x7FFFFFFFFFFFFFFFLL cancelationToken:cancelationToken handler:v7];

    v21 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v34[3];
      query4 = [(EDMessageQueryHelper *)self query];
      *v37 = 134218498;
      selfCopy = self;
      v39 = 2048;
      v40 = v22;
      v41 = 2112;
      v42 = query4;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "%p: found %lu initial results for message query %@", v37, 0x20u);
    }
  }

  delegate = [(EDMessageQueryHelper *)self delegate];
  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke_46;
  v30[3] = &unk_1E8250128;
  v30[4] = self;
  v26 = delegate;
  v31 = v26;
  [scheduler performSyncBlock:v30];

  initialResultsPromise = [(EDMessageQueryHelper *)self initialResultsPromise];
  [initialResultsPromise finishWithResult:MEMORY[0x1E695E118]];

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
  block[4] = self;
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

- (EDMessageQueryHelper)initWithQuery:(id)query initialBatchSize:(int64_t)size maximumBatchSize:(int64_t)batchSize messagePersistence:(id)persistence hookRegistry:(id)registry searchProvider:(id)provider scheduler:(id)scheduler remindMeNotificationController:(id)self0 delegate:(id)self1 shouldReconcileJournal:(BOOL)self2 shouldAddMessagesSynchronously:(BOOL)self3 keepMessagesInListOnBucketChange:(BOOL)self4
{
  queryCopy = query;
  persistenceCopy = persistence;
  registryCopy = registry;
  providerCopy = provider;
  schedulerCopy = scheduler;
  controllerCopy = controller;
  obj = delegate;
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

    v28 = [queryCopy copy];
    query = v23->_query;
    v23->_query = v28;

    v23->_initialBatchSize = size;
    v23->_maximumBatchSize = batchSize;
    objc_storeStrong(p_isa + 7, persistence);
    objc_storeStrong(p_isa + 8, registry);
    objc_storeStrong(p_isa + 9, provider);
    objc_storeStrong(p_isa + 11, scheduler);
    objc_storeWeak(p_isa + 12, obj);
    objc_storeStrong(p_isa + 10, controller);
    if (journal)
    {
      v30 = ([queryCopy queryOptions] >> 3) & 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v23->_shouldReconcileJournal = v30;
    v23->_addMessagesSynchronously = synchronously;
    v23->_keepMessagesInListOnBucketChange = change;
    if (_os_feature_enabled_impl())
    {
      v31 = -[EDMessageQueryEvaluator initWithQuery:messagePersistence:filterMessagesByID:]([EDMessageQueryEvaluator alloc], "initWithQuery:messagePersistence:filterMessagesByID:", queryCopy, p_isa[7], ([queryCopy queryOptions] >> 5) & 1);
    }

    else
    {
      v31 = [[EDMessageQueryEvaluator alloc] initWithQuery:queryCopy messagePersistence:p_isa[7] filterMessagesByID:0];
    }

    queryEvaluator = v23->_queryEvaluator;
    v23->_queryEvaluator = v31;

    promise = [MEMORY[0x1E699B868] promise];
    initialResultsPromise = v23->_initialResultsPromise;
    v23->_initialResultsPromise = promise;

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

    if (([queryCopy queryOptions] & 0x20) != 0)
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
    query = [(EDMessageQueryHelper *)self query];
    v12 = 134218242;
    selfCopy = self;
    v14 = 2114;
    v15 = query;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Starting live query %{public}@", &v12, 0x16u);
  }

  [(EDMessageQueryHelper *)self setSnippetDataBudgetRemaining:500];
  searchProvider = [(EDMessageQueryHelper *)self searchProvider];
  localSearchProvider = [searchProvider localSearchProvider];
  query2 = [(EDMessageQueryHelper *)self query];
  v8 = [localSearchProvider liveSearchWithQuery:query2 delegate:self];
  [(EDMessageQueryHelper *)self setSearchQuery:v8];

  cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
  searchQuery = [(EDMessageQueryHelper *)self searchQuery];
  [cancelationToken addCancelable:searchQuery];

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

- (id)_predicateWithAdditionalPredicates:(id)predicates
{
  v24[2] = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl() && (-[EDMessageQueryHelper query](self, "query"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 queryOptions], v5, (v6 & 0x20) != 0))
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    persistentIDsForFilterSet = [queryEvaluator persistentIDsForFilterSet];

    predicate2 = [EDMessageListItemPredicates predicateForMessagesWithPersistentIDs:persistentIDsForFilterSet];
  }

  else
  {
    query = [(EDMessageQueryHelper *)self query];
    os_unfair_lock_lock(&self->_noLongerMatchingMessagesLock);
    allObjects = [(NSMutableSet *)self->_noLongerMatchingMessages allObjects];
    v9 = [allObjects ef_mapSelector:sel_objectID];

    os_unfair_lock_unlock(&self->_noLongerMatchingMessagesLock);
    if ([v9 count])
    {
      v10 = [MEMORY[0x1E699AD30] predicateForMessagesWithObjectIDs:v9];
      v11 = MEMORY[0x1E696AB28];
      predicate = [query predicate];
      v24[0] = predicate;
      v24[1] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      predicate2 = [v11 orPredicateWithSubpredicates:v13];
    }

    else
    {
      predicate2 = [query predicate];
    }
  }

  v17 = MEMORY[0x1E696AB28];
  v23[0] = predicate2;
  v23[1] = predicatesCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  ef_flatten = [v18 ef_flatten];
  v20 = [v17 andPredicateWithSubpredicates:ef_flatten];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)messagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit
{
  v32 = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  v5 = [(EDMessageQueryHelper *)self _predicateWithAdditionalPredicates:?];
  if (_os_feature_enabled_impl())
  {
    query = [(EDMessageQueryHelper *)self query];
    queryOptions = [query queryOptions];
    v8 = objc_alloc(MEMORY[0x1E699AE28]);
    targetClass = [query targetClass];
    sortDescriptors = [query sortDescriptors];
    limit = [query limit];
    targetClassOptions = [query targetClassOptions];
    label = [query label];
    v14 = [v8 initWithTargetClass:targetClass predicate:v5 sortDescriptors:sortDescriptors suggestion:0 limit:limit queryOptions:queryOptions & 0xFFFFFFFFFFFFFFDFLL targetClassOptions:targetClassOptions label:label];
  }

  else
  {
    query2 = [(EDMessageQueryHelper *)self query];
    targetClassOptions = [query2 queryWithPredicate:v5];

    if (([targetClassOptions queryOptions] & 0x20) == 0)
    {
      goto LABEL_6;
    }

    query = [(EDMessageQueryHelper *)self searchProvider];
    sortDescriptors = [query localSearchProvider];
    v14 = [sortDescriptors persistenceQueryForSearchableIndexQuery:targetClassOptions];
  }

  targetClassOptions = v14;
LABEL_6:
  v16 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    predicate = [targetClassOptions predicate];
    ef_publicDescription = [predicate ef_publicDescription];
    *buf = 138412802;
    v27 = v17;
    v28 = 2048;
    selfCopy = self;
    v30 = 2112;
    v31 = ef_publicDescription;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "<%@ %p> Fetching messages matching query %@", buf, 0x20u);
  }

  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v21 = [messagePersistence messagesMatchingQuery:targetClassOptions limit:limit];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)sortableMessagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit
{
  v6 = [(EDMessageQueryHelper *)self _predicateWithAdditionalPredicates:predicates];
  query = [(EDMessageQueryHelper *)self query];
  v8 = [query queryWithTargetClass:objc_opt_class() predicate:v6];

  if ((_os_feature_enabled_impl() & 1) == 0 && ([v8 queryOptions] & 0x20) != 0)
  {
    searchProvider = [(EDMessageQueryHelper *)self searchProvider];
    localSearchProvider = [searchProvider localSearchProvider];
    v11 = [localSearchProvider persistenceQueryForSearchableIndexQuery:v8];

    v8 = v11;
  }

  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v13 = [messagePersistence sortableMessagesMatchingQuery:v8 limit:limit];

  return v13;
}

- (void)_foundMessages:(id)messages inRemoteSearch:(BOOL)search foundInLocalIndex:(BOOL)index
{
  indexCopy = index;
  searchCopy = search;
  v52 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  [queryEvaluator addMessagesToFilterSet:messagesCopy];

  query = [(EDMessageQueryHelper *)self query];
  sortDescriptors = [query sortDescriptors];
  firstObject = [sortDescriptors firstObject];
  ascending = [firstObject ascending];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke;
  v43[3] = &__block_descriptor_33_e55_q24__0___EDPersistedMessage__8___EDPersistedMessage__16l;
  v44 = ascending;
  v14 = [messagesCopy sortedArrayWithOptions:16 usingComparator:v43];

  v15 = v14;
  if (searchCopy)
  {
    searchProvider = [(EDMessageQueryHelper *)self searchProvider];
    remoteSearchProvider = [searchProvider remoteSearchProvider];

    if (indexCopy || !remoteSearchProvider)
    {
      v21 = v14;
    }

    else
    {
      searchProvider2 = [(EDMessageQueryHelper *)self searchProvider];
      remoteSearchProvider2 = [searchProvider2 remoteSearchProvider];
      query2 = [(EDMessageQueryHelper *)self query];
      v21 = [remoteSearchProvider2 verifyResults:v15 query:query2];
    }

    queryEvaluator2 = [(EDMessageQueryHelper *)self queryEvaluator];
    v24 = [queryEvaluator2 transformMessages:v21];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v24;
    v25 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v25)
    {
      v26 = *v40;
      if (indexCopy)
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
      query3 = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      selfCopy = self;
      v47 = 1024;
      v48 = v30;
      v49 = 2114;
      v50 = query3;
      _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "%p: Adding %u filtered messages: %{public}@", buf, 0x1Cu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke_56;
    aBlock[3] = &unk_1E8250720;
    v36 = v22;
    v37 = v15;
    selfCopy2 = self;
    v32 = _Block_copy(aBlock);
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v32];
    }

    else
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performBlock:v32];
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

- (id)_unjournaledMessagesForMessages:(id)messages
{
  v3 = [messages ef_filter:&__block_literal_global_58];

  return v3;
}

- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window
{
  v17 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0)
  {
    if (!_os_feature_enabled_impl() || (-[EDMessageQueryHelper query](self, "query"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 queryOptions], v8, (v9 & 0x20) == 0))
    {
      v10 = EFFetchSignpostLog();
      if (os_signpost_enabled(v10))
      {
        v13 = 134218240;
        selfCopy = self;
        v15 = 1024;
        v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryHelperDidAddMessages", "helper=%p count=%u ", &v13, 0x12u);
      }

      v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

      messagesCopy = v11;
      [(EDMessageQueryHelper *)self _foundMessages:v11 inRemoteSearch:0 foundInLocalIndex:0];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)ls generationWindow:(id)window
{
  v11 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v6 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[EDMessageQueryHelper persistenceDidDeleteAllMessagesInMailboxesWithURLs:generationWindow:].cold.1(self, [lsCopy count], buf, v6);
  }

  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__EDMessageQueryHelper_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke;
  v9[3] = &unk_1E8250260;
  v9[4] = self;
  [scheduler performBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __92__EDMessageQueryHelper_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperNeedsRestart:*(a1 + 32)];
}

- (void)persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window
{
  v26 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  windowCopy = window;
  initialResultsPromise = [(EDMessageQueryHelper *)self initialResultsPromise];
  future = [initialResultsPromise future];

  resultIfAvailable = [future resultIfAvailable];

  if (!resultIfAvailable)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [messagesCopy count];
      query = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      selfCopy = self;
      v22 = 1024;
      v23 = v12;
      v24 = 2112;
      v25 = query;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Holding %u reconciled persisted messages until initial results: %@", buf, 0x1Cu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__EDMessageQueryHelper_persistenceDidReconcileJournaledMessages_generationWindow___block_invoke;
  v17[3] = &unk_1E82550E8;
  v17[4] = self;
  v14 = messagesCopy;
  v18 = v14;
  v15 = windowCopy;
  v19 = v15;
  [future addSuccessBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window
{
  v28 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 0x20) != 0)
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
    v8 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:messagesCopy includeDeleted:0];
    if ([v8 count])
    {
      v9 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 count];
        query2 = [(EDMessageQueryHelper *)self query];
        *buf = 134218498;
        selfCopy = self;
        v24 = 1024;
        v25 = v10;
        v26 = 2112;
        v27 = query2;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Reconciled %u filtered messages: %@", buf, 0x1Cu);
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __83__EDMessageQueryHelper__persistenceDidReconcileJournaledMessages_generationWindow___block_invoke;
      v19 = &unk_1E8250128;
      selfCopy2 = self;
      v12 = v8;
      v21 = v12;
      v13 = _Block_copy(&v16);
      if ([(EDMessageQueryHelper *)self addMessagesSynchronously:v16])
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performSyncBlock:v13];
      }

      else
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performBlock:v13];
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

- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages
{
  flagsCopy = flags;
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0 && (![flagsCopy deletedChanged] || (objc_msgSend(flagsCopy, "deleted") & 1) == 0))
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    v12 = [queryEvaluator transformAndFilterMessages:messagesCopy];

    pendingFlagChangesKey = [(EDMessageQueryHelper *)self pendingFlagChangesKey];
    [threadDictionary setObject:v12 forKeyedSubscript:pendingFlagChangesKey];
  }
}

- (void)persistenceDidChangeFlags:(id)flags messages:(id)messages generationWindow:(id)window
{
  flagsCopy = flags;
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  LOBYTE(messages) = [query queryOptions];

  if ((messages & 4) != 0)
  {
    v10 = messagesCopy;
  }

  else
  {
    v10 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

    if ([flagsCopy deletedChanged] && objc_msgSend(flagsCopy, "deleted"))
    {
      [(EDMessageQueryHelper *)self _persistenceDidDeleteMessages:v10 includeMessagesWithDeletedFlag:1];
    }

    else
    {
      pendingFlagChangesKey = [(EDMessageQueryHelper *)self pendingFlagChangesKey];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __76__EDMessageQueryHelper_persistenceDidChangeFlags_messages_generationWindow___block_invoke;
      v12[3] = &unk_1E8255110;
      v12[4] = self;
      [(EDMessageQueryHelper *)self _calculateAndReportChangesForPersistedMessages:v10 withPendingChangesKey:pendingFlagChangesKey changeBlock:v12];
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

- (void)persistenceWillChangeReadLaterDate:(id)date messages:(id)messages
{
  messagesCopy = messages;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v8 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  pendingReadLaterDateChangesKey = [(EDMessageQueryHelper *)self pendingReadLaterDateChangesKey];
  [threadDictionary setObject:v8 forKeyedSubscript:pendingReadLaterDateChangesKey];
}

- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window
{
  v14[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  windowCopy = window;
  pendingReadLaterDateChangesKey = [(EDMessageQueryHelper *)self pendingReadLaterDateChangesKey];
  v14[0] = *MEMORY[0x1E699A958];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(windowCopy, "latestGeneration")}];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:messagesCopy withPendingChangesKey:pendingReadLaterDateChangesKey keyPaths:v11 generation:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)level conversationID:(int64_t)d generationWindow:(id)window
{
  v8 = [(EDMessageQueryHelper *)self scheduler:level];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__EDMessageQueryHelper_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke;
  v9[3] = &unk_1E8255138;
  v9[4] = self;
  v9[5] = level;
  v9[6] = d;
  [v8 performBlock:v9];
}

void __106__EDMessageQueryHelper_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) conversationNotificationLevelDidChangeForConversation:*(a1 + 40) conversationID:*(a1 + 48)];
}

- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  v6 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

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

- (void)persistenceWillChangeConversationID:(int64_t)d messages:(id)messages
{
  messagesCopy = messages;
  v15 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  v7 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v15 includeDeleted:0];
  if ([v7 count])
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    pendingConversationIDChangesKey = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
    v11 = [threadDictionary objectForKeyedSubscript:pendingConversationIDChangesKey];

    if (v11)
    {
      pendingConversationIDChangesKey2 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      [v11 setObject:v7 forKeyedSubscript:pendingConversationIDChangesKey2];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      v11 = [v13 initWithObjectsAndKeys:{v7, v14, 0}];

      pendingConversationIDChangesKey2 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
      [threadDictionary setObject:v11 forKeyedSubscript:pendingConversationIDChangesKey2];
    }
  }
}

- (void)persistenceIsChangingConversationID:(int64_t)d messages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  v8 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  pendingConversationIDChangesKey = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
  v12 = [threadDictionary objectForKeyedSubscript:pendingConversationIDChangesKey];

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v14 = [v12 objectForKeyedSubscript:v13];

  v15 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v8 includeDeleted:0];
  if ([v15 count] || objc_msgSend(v14, "count"))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    [v12 setObject:0 forKeyedSubscript:v16];

    if (![v12 count])
    {
      pendingConversationIDChangesKey2 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
      [threadDictionary setObject:0 forKeyedSubscript:pendingConversationIDChangesKey2];
    }

    scheduler = [(EDMessageQueryHelper *)self scheduler];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __86__EDMessageQueryHelper_persistenceIsChangingConversationID_messages_generationWindow___block_invoke;
    v19[3] = &unk_1E8255160;
    v20 = v15;
    selfCopy = self;
    dCopy = d;
    v22 = v14;
    [scheduler performBlock:v19];
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

- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window
{
  v35 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (([messageCopy isJournaled] & 1) == 0)
  {
    v30 = messageCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v11 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v10 includeDeleted:0];
    firstObject = [v11 firstObject];

    if (firstObject)
    {
      v13 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [firstObject objectID];
        globalMessageID = [objectID globalMessageID];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = messageCopy;
        *&buf[22] = 2048;
        *&buf[24] = d;
        *&buf[32] = 2048;
        *&buf[34] = globalMessageID;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Updating global message id for message: %{public}@ oldGlobalMessageID %llu newGlobalMessageID %llu", buf, 0x2Au);
      }

      v16 = objc_alloc(MEMORY[0x1E699ADA8]);
      objectID2 = [firstObject objectID];
      mailboxScope = [objectID2 mailboxScope];
      v19 = [v16 initWithGlobalMessageID:d mailboxScope:mailboxScope];

      objectID3 = [firstObject objectID];
      LOBYTE(v16) = [objectID3 isEqual:v19];

      if (v16)
      {
        v21 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          itemID = [firstObject itemID];
          *buf = 134218754;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = itemID;
          *&buf[22] = 2112;
          *&buf[24] = firstObject;
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
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __102__EDMessageQueryHelper_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke;
        v25[3] = &unk_1E8255160;
        v25[4] = self;
        v26 = firstObject;
        v27 = v19;
        iDCopy = iD;
        [scheduler performBlock:v25];
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

- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window
{
  v20[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  messageCopy = message;
  if (([messageCopy isJournaled] & 1) == 0)
  {
    query = [(EDMessageQueryHelper *)self query];
    queryOptions = [query queryOptions];

    if ((queryOptions & 4) == 0)
    {
      v20[0] = messageCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v12 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v11 includeDeleted:0];

      if ([v12 count])
      {
        objc_initWeak(&location, self);
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke;
        v15[3] = &unk_1E8255188;
        objc_copyWeak(&v18, &location);
        v16 = propertiesCopy;
        v17 = v12;
        [scheduler performBlock:v15];

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

- (void)persistenceWillUpdateDisplayDateForMessages:(id)messages
{
  messagesCopy = messages;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v7 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  pendingDisplayDateChangesKey = [(EDMessageQueryHelper *)self pendingDisplayDateChangesKey];
  [threadDictionary setObject:v7 forKeyedSubscript:pendingDisplayDateChangesKey];
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation
{
  v12[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  pendingDisplayDateChangesKey = [(EDMessageQueryHelper *)self pendingDisplayDateChangesKey];
  v12[0] = *MEMORY[0x1E699A888];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:generation];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:messagesCopy withPendingChangesKey:pendingDisplayDateChangesKey keyPaths:v9 generation:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillUpdateAuthenticationStateForMessages:(id)messages
{
  messagesCopy = messages;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v7 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  pendingAuthenticationChangesKey = [(EDMessageQueryHelper *)self pendingAuthenticationChangesKey];
  [threadDictionary setObject:v7 forKeyedSubscript:pendingAuthenticationChangesKey];
}

- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)messages
{
  v8[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  pendingAuthenticationChangesKey = [(EDMessageQueryHelper *)self pendingAuthenticationChangesKey];
  v8[0] = *MEMORY[0x1E699A810];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:messagesCopy withPendingChangesKey:pendingAuthenticationChangesKey keyPaths:v6 generation:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages
{
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  if (([query queryOptions] & 0x20) != 0)
  {
  }

  else
  {
    query2 = [(EDMessageQueryHelper *)self query];
    queryOptions = [query2 queryOptions];

    if ((queryOptions & 4) == 0)
    {
      *buf = 0;
      v30 = buf;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__27;
      v33 = __Block_byref_object_dispose__27;
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      threadDictionary = [currentThread threadDictionary];

      queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
      v12 = [queryEvaluator transformMessages:messagesCopy];

      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy__27;
      v27[4] = __Block_byref_object_dispose__27;
      v13 = MEMORY[0x1E695DF70];
      queryEvaluator2 = [(EDMessageQueryHelper *)self queryEvaluator];
      v26 = 0;
      v15 = [queryEvaluator2 filterMessages:v12 unmatchedMessages:&v26];
      v16 = v26;
      v28 = [v13 arrayWithArray:v15];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke;
      aBlock[3] = &unk_1E82551D8;
      v17 = v16;
      v22 = v17;
      selfCopy = self;
      v24 = v27;
      v25 = buf;
      v18 = _Block_copy(aBlock);
      if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performSyncBlock:v18];
      }

      else
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performBlock:v18];
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

- (void)persistenceDidAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  if (([query queryOptions] & 0x20) != 0)
  {
  }

  else
  {
    query2 = [(EDMessageQueryHelper *)self query];
    queryOptions = [query2 queryOptions];

    if ((queryOptions & 4) == 0)
    {
      v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

      pendingLabelChangesKey = [(EDMessageQueryHelper *)self pendingLabelChangesKey];
      [(EDMessageQueryHelper *)self _calculateAndReportLabelChangesForPersistedMessages:v11 withPendingChangesKey:pendingLabelChangesKey];

      messagesCopy = v11;
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

- (void)persistenceWillChangeCategorizationForMessages:(id)messages
{
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    v9 = [queryEvaluator transformAndFilterMessages:messagesCopy];

    pendingCategorizationChangesKey = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    [threadDictionary setObject:v9 forKeyedSubscript:pendingCategorizationChangesKey];
  }
}

- (void)persistenceDidChangeCategorizationForMessages:(id)messages userInitiated:(BOOL)initiated generationWindow:(id)window
{
  v17[2] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  windowCopy = window;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) != 0)
  {
    v11 = messagesCopy;
  }

  else
  {
    v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

    pendingCategorizationChangesKey = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    v13 = *MEMORY[0x1E699A848];
    v17[0] = *MEMORY[0x1E699A850];
    v17[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(windowCopy, "latestGeneration")}];
    [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:v11 withPendingChangesKey:pendingCategorizationChangesKey keyPaths:v14 generation:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidNotChangeCategorizationForMessages:(id)messages
{
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];
    pendingCategorizationChangesKey = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    [threadDictionary setObject:0 forKeyedSubscript:pendingCategorizationChangesKey];
  }
}

- (void)persistenceDidChangeBusinessIDForMessages:(id)messages fromBusinessID:(int64_t)d
{
  messagesCopy = messages;
  v7 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  query = [(EDMessageQueryHelper *)self query];
  LOBYTE(messagesCopy) = [query queryOptions];

  if ((messagesCopy & 4) == 0)
  {
    v9 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v7 includeDeleted:0];
    if ([v9 count])
    {
      objc_initWeak(&location, self);
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke;
      v11[3] = &unk_1E8255200;
      objc_copyWeak(v13, &location);
      v12 = v9;
      v13[1] = d;
      [scheduler performBlock:v11];

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

- (void)_reportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key keyPaths:(id)paths generation:(id)generation
{
  messagesCopy = messages;
  keyCopy = key;
  pathsCopy = paths;
  generationCopy = generation;
  v19 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v15 = [queryEvaluator transformAndFilterMessages:v19];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v18 = [threadDictionary objectForKeyedSubscript:keyCopy];
  [threadDictionary setObject:0 forKeyedSubscript:keyCopy];
  [(EDMessageQueryHelper *)self _reportChangesForCurrentlyMatchingMessages:v15 previouslyMatchingMessages:v18 keyPaths:pathsCopy generation:generationCopy];
}

- (void)_reportChangesForCurrentlyMatchingMessages:(id)messages previouslyMatchingMessages:(id)matchingMessages keyPaths:(id)paths generation:(id)generation
{
  v46 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  matchingMessagesCopy = matchingMessages;
  pathsCopy = paths;
  generationCopy = generation;
  query = [(EDMessageQueryHelper *)self query];
  LOBYTE(paths) = [query queryOptions];

  if ((paths & 0x20) != 0)
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
    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:messagesCopy];
    v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:matchingMessagesCopy];
    v15 = [v13 mutableCopy];
    [v15 intersectSet:v14];
    [v13 minusSet:v15];
    [v14 minusSet:v15];
    v16 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 134219266;
      selfCopy = self;
      v36 = 2114;
      v37 = v17;
      v38 = 2114;
      v39 = pathsCopy;
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
    selfCopy2 = self;
    v19 = v15;
    v31 = v19;
    v20 = pathsCopy;
    v32 = v20;
    v21 = v13;
    v33 = v21;
    v22 = _Block_copy(aBlock);
    if ([v21 count]&& [(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v22];
    }

    else
    {
      [(EDMessageQueryHelper *)self _performBlockAfterGenerationCheck:v22 generation:generationCopy keyPaths:v20 removedMessages:v18 changedMessages:v19 addedMessages:v21];
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

- (void)_performBlockAfterGenerationCheck:(id)check generation:(id)generation keyPaths:(id)paths removedMessages:(id)messages changedMessages:(id)changedMessages addedMessages:(id)addedMessages
{
  v65 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  generationCopy = generation;
  pathsCopy = paths;
  messagesCopy = messages;
  changedMessagesCopy = changedMessages;
  addedMessagesCopy = addedMessages;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __124__EDMessageQueryHelper__performBlockAfterGenerationCheck_generation_keyPaths_removedMessages_changedMessages_addedMessages___block_invoke;
  v42[3] = &unk_1E8255228;
  v42[4] = &v43;
  [messagePersistence performDatabaseReadBlock:v42];

  if (generationCopy && (v21 = v44[3], v21 <= [generationCopy longLongValue]))
  {
    v23 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v33 = pathsCopy;
      v24 = NSStringFromSelector(a2);
      v32 = [messagesCopy count];
      v25 = [addedMessagesCopy count];
      v26 = [changedMessagesCopy count];
      v27 = v44[3];
      longLongValue = [generationCopy longLongValue];
      *buf = 134220034;
      selfCopy = self;
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
      pathsCopy = v33;
      v63 = 2048;
      v64 = longLongValue;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - rescheduling changes for keyPaths:%{public}@ removed=%lu added=%lu changed=%lu after %.3f due to generation %lld not being higher than generation window of the change %lld", buf, 0x5Cu);
    }

    scheduler = [(EDMessageQueryHelper *)self scheduler];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __124__EDMessageQueryHelper__performBlockAfterGenerationCheck_generation_keyPaths_removedMessages_changedMessages_addedMessages___block_invoke_74;
    v35[3] = &unk_1E8255250;
    v35[4] = self;
    v41 = checkCopy;
    v36 = generationCopy;
    v37 = pathsCopy;
    v38 = messagesCopy;
    v39 = changedMessagesCopy;
    v40 = addedMessagesCopy;
    v30 = [scheduler afterDelay:v35 performBlock:0.125];
  }

  else
  {
    scheduler2 = [(EDMessageQueryHelper *)self scheduler];
    [scheduler2 performBlock:checkCopy];
  }

  _Block_object_dispose(&v43, 8);

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_persistedMessagesFromSendersWithAddresses:(id)addresses
{
  v20[2] = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  query = [(EDMessageQueryHelper *)self query];
  predicate = [query predicate];
  v7 = [MEMORY[0x1E699ADA0] predicateForMessagesWithSenders:addressesCopy];
  v8 = objc_alloc(MEMORY[0x1E696AB28]);
  v20[0] = predicate;
  v20[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v10 = [v8 initWithType:1 subpredicates:v9];

  v11 = objc_alloc(MEMORY[0x1E699AE28]);
  targetClass = [query targetClass];
  queryOptions = [query queryOptions];
  targetClassOptions = [query targetClassOptions];
  v15 = [v11 initWithTargetClass:targetClass predicate:v10 sortDescriptors:MEMORY[0x1E695E0F0] limit:0 queryOptions:queryOptions targetClassOptions:targetClassOptions label:0];

  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v17 = [messagePersistence persistedMessagesMatchingQuery:v15 limit:0];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_calculateAndReportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key changeBlock:(id)block
{
  v91 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  keyCopy = key;
  v44 = messagesCopy;
  blockCopy = block;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v50 = [queryEvaluator transformMessages:messagesCopy];

  queryEvaluator2 = [(EDMessageQueryHelper *)self queryEvaluator];
  selfCopy = self;
  v88 = 0;
  v53 = [queryEvaluator2 filterMessages:v50 unmatchedMessages:&v88];
  v46 = v88;

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v42 = [threadDictionary objectForKeyedSubscript:keyCopy];
  [threadDictionary setObject:0 forKeyedSubscript:keyCopy];
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
        objectID = [v16 objectID];
        [v54 setObject:v16 forKeyedSubscript:objectID];
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
  v59 = selfCopy;
  v35 = v19;
  v60 = v35;
  v64 = &v76;
  v65 = &v70;
  v36 = v52;
  v62 = v36;
  v37 = v46;
  v61 = v37;
  v38 = blockCopy;
  v63 = v38;
  v39 = _Block_copy(v55);
  if ([v35 count] && -[EDMessageQueryHelper addMessagesSynchronously](selfCopy, "addMessagesSynchronously"))
  {
    scheduler = [(EDMessageQueryHelper *)selfCopy scheduler];
    [scheduler performSyncBlock:v39];
  }

  else
  {
    scheduler = [(EDMessageQueryHelper *)selfCopy scheduler];
    [scheduler performBlock:v39];
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

- (void)_calculateAndReportLabelChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key
{
  messagesCopy = messages;
  keyCopy = key;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v9 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v12 = [threadDictionary objectForKeyedSubscript:keyCopy];
  [threadDictionary setObject:0 forKeyedSubscript:keyCopy];
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
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v14];
    }

    else
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performBlock:v14];
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
  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EDMessageQueryHelper_remoteSearchDidFinish__block_invoke;
  v4[3] = &unk_1E8250260;
  v4[4] = self;
  [scheduler performBlock:v4];
}

void __45__EDMessageQueryHelper_remoteSearchDidFinish__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperDidFinishRemoteSearch:*(a1 + 32)];
}

- (void)localSearchDidFinish
{
  v13 = *MEMORY[0x1E69E9840];
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector setLiveSearchQueryStatus:1];

  v4 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    query = [(EDMessageQueryHelper *)self query];
    *buf = 134218242;
    selfCopy = self;
    v11 = 2114;
    v12 = query;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p: Finished live query %{public}@", buf, 0x16u);
  }

  [(EDMessageQueryHelper *)self setReturningInitialResults:0];
  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__EDMessageQueryHelper_localSearchDidFinish__block_invoke;
  v8[3] = &unk_1E8250260;
  v8[4] = self;
  [scheduler performBlock:v8];

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
  *(buf + 4) = self;
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

- (void)localSearchDidFindMessages:(id)messages itemSnippetData:(id)data rankingSignals:(id)signals
{
  v54 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dataCopy = data;
  signalsCopy = signals;
  if ([(EDMessageQueryHelper *)self returningInitialResults])
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    [queryEvaluator addMessagesToFilterSet:messagesCopy];

    v35 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:messagesCopy includeDeleted:0];
    if ([(EDMessageQueryHelper *)self snippetDataBudgetRemaining])
    {
      v44 = 0;
      v11 = [(EDMessageQueryHelper *)self _snippetsByObjectIDForMessages:v35 itemSnippetData:dataCopy max:[(EDMessageQueryHelper *)self snippetDataBudgetRemaining] snippetMessageObjectIDsByConversation:&v44];
      v12 = v44;
      v13 = [v11 count];
      if (v13 <= [(EDMessageQueryHelper *)self snippetDataBudgetRemaining])
      {
        -[EDMessageQueryHelper setSnippetDataBudgetRemaining:](self, "setSnippetDataBudgetRemaining:", -[EDMessageQueryHelper snippetDataBudgetRemaining](self, "snippetDataBudgetRemaining") - [v11 count]);
        v16 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          snippetDataBudgetRemaining = [(EDMessageQueryHelper *)self snippetDataBudgetRemaining];
          v18 = [v11 count];
          query = [(EDMessageQueryHelper *)self query];
          *buf = 134218754;
          selfCopy2 = self;
          v48 = 2048;
          v49 = snippetDataBudgetRemaining;
          v50 = 2048;
          v51 = v18;
          v52 = 2114;
          v53 = query;
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
          snippetDataBudgetRemaining2 = [(EDMessageQueryHelper *)self snippetDataBudgetRemaining];
          query2 = [(EDMessageQueryHelper *)self query];
          *buf = 134218754;
          selfCopy2 = self;
          v48 = 2048;
          v49 = v32;
          v50 = 2048;
          v51 = snippetDataBudgetRemaining2;
          v52 = 2114;
          v53 = query2;
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

    localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
    [localSearchInfoCollector processRankingSignalsBySearchableItemID:signalsCopy forMessages:v35];

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
    cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
    scheduler = [(EDMessageQueryHelper *)self scheduler];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __82__EDMessageQueryHelper_localSearchDidFindMessages_itemSnippetData_rankingSignals___block_invoke;
    v37[3] = &unk_1E8255340;
    v37[4] = self;
    v28 = v21;
    v38 = v28;
    v29 = v25;
    v39 = v29;
    v30 = [scheduler performCancelableBlock:v37];
    [cancelationToken addCancelable:v30];
  }

  else
  {
    [(EDMessageQueryHelper *)self _foundMessages:messagesCopy inRemoteSearch:0 foundInLocalIndex:0];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __82__EDMessageQueryHelper_localSearchDidFindMessages_itemSnippetData_rankingSignals___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didFindMessages:*(a1 + 40) searchInfo:*(a1 + 48) forInitialBatch:1];
}

- (void)localSearchDidFindTopHits:(id)hits itemSnippetData:(id)data rankingSignals:(id)signals instantAnswer:(id)answer
{
  v60 = *MEMORY[0x1E69E9840];
  hitsCopy = hits;
  dataCopy = data;
  signalsCopy = signals;
  answerCopy = answer;
  if (answerCopy)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 134218498;
      selfCopy2 = self;
      v58 = 2114;
      *v59 = v12;
      *&v59[8] = 2114;
      *&v59[10] = answerCopy;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - instantAnswers for objectID:%{public}@", buf, 0x20u);
    }
  }

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  [queryEvaluator addMessagesToFilterSet:hitsCopy];
  [queryEvaluator transformMessages:hitsCopy includeDeleted:0];
  v41 = v54 = 0;
  v38 = [EDMessageQueryHelper _snippetsByObjectIDForMessages:"_snippetsByObjectIDForMessages:itemSnippetData:max:snippetMessageObjectIDsByConversation:" itemSnippetData:? max:? snippetMessageObjectIDsByConversation:?];
  v37 = v54;
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector processRankingSignalsBySearchableItemID:signalsCopy forMessages:v41];

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
        searchableMessageID = [v17 searchableMessageID];
        stringValue = [searchableMessageID stringValue];
        v20 = [signalsCopy objectForKeyedSubscript:stringValue];

        if (v20)
        {
          l1Score = [v20 l1Score];
          l2Score = [v20 l2Score];
          v23 = MEMORY[0x1E696AD98];
          [l1Score doubleValue];
          v25 = v24;
          [l2Score doubleValue];
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
    v28 = [EDMessageSearchInfo searchInfoWithInstantAnswer:answerCopy snippetsByObjectID:v38 snippetMessageObjectIDsByConversation:v37];
    v29 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [obj count];
      query = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      selfCopy2 = self;
      v58 = 1024;
      *v59 = v30;
      *&v59[4] = 2114;
      *&v59[6] = query;
      _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "%p: Adding %u filtered messages: %{public}@", buf, 0x1Cu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__EDMessageQueryHelper_localSearchDidFindTopHits_itemSnippetData_rankingSignals_instantAnswer___block_invoke;
    aBlock[3] = &unk_1E8250AB8;
    v46 = obj;
    v47 = hitsCopy;
    selfCopy3 = self;
    v32 = v28;
    v49 = v32;
    v33 = _Block_copy(aBlock);
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v33];
    }

    else
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performBlock:v33];
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

- (void)controller:(id)controller messageTimerFired:(id)fired
{
  v14[1] = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  if ([(EDMessageQueryHelper *)self updateDisplayDate])
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    v14[0] = firedCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [queryEvaluator transformAndFilterMessages:v7];
    firstObject = [v8 firstObject];

    if (firstObject)
    {
      messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
      v13 = firedCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [messagePersistence updateBeforeDisplayForPersistedMessages:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_snippetsByObjectIDForMessages:(id)messages itemSnippetData:(id)data max:(unint64_t)max snippetMessageObjectIDsByConversation:(id *)conversation
{
  v45 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dataCopy = data;
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
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = dataCopy;
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
        snippetHints = [v15 snippetHints];
        searchableItemIdentifier = [v15 searchableItemIdentifier];
        [v10 setObject:snippetHints forKeyedSubscript:searchableItemIdentifier];
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
  maxCopy = max;
  [messagesCopy enumerateObjectsUsingBlock:v23];
  if (conversation)
  {
    *conversation = v33[5];
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