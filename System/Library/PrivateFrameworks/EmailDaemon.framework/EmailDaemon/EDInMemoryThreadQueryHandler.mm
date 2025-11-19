@interface EDInMemoryThreadQueryHandler
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_queryHelperIsCurrent:(id)a3;
- (BOOL)collection:(id)a3 reportChanges:(id)a4 reloadSummaries:(BOOL)a5;
- (BOOL)collection:(id)a3 reportDeletes:(id)a4;
- (BOOL)start;
- (EDInMemoryThreadQueryHandler)initWithQuery:(id)a3 messagePersistence:(id)a4 hookRegistry:(id)a5 remindMeNotificationController:(id)a6 vipManager:(id)a7 searchProvider:(id)a8 observer:(id)a9 observationIdentifier:(id)a10 observationResumer:(id)a11;
- (EMMessageListItemQueryResultsObserver)resultsObserverIfNotPaused;
- (id)_extraInfoForThreadObjectIDs:(id)a3 searchInfo:(id)a4 isMove:(BOOL)a5;
- (id)_extraInfoFromLocalSearchInfoCollector:(id)a3;
- (id)_extraInfoPrecachedThreadsForInitialObjectIDs:(id)a3;
- (id)_messageQueryFromThreadsQuery:(id)a3;
- (id)_messagesInConversationIDs:(id)a3 limit:(int64_t)a4;
- (id)_predicateForMessagesInConversations:(id)a3;
- (id)collection:(id)a3 messagesInConversationIDs:(id)a4 limit:(int64_t)a5;
- (id)itemIDsForStateCaptureWithErrorString:(id *)a3;
- (id)labelForStateCapture;
- (id)mailboxesInCollection:(id)a3;
- (id)messageListItemForObjectID:(id)a3 error:(id *)a4;
- (id)messagesForThread:(id)a3;
- (id)messagesInConversationIDs:(id)a3 limit:(int64_t)a4;
- (id)threadsAndMessagesForObjectIDs:(id)a3;
- (unint64_t)signpostID;
- (void)_contentProtectionChangedToLocked;
- (void)_contentProtectionChangedToUnlocked;
- (void)_createHelper;
- (void)_notifyObserversOfMovedObjectIDs:(id)a3 before:(id)a4 notifyBlock:(id)a5;
- (void)_refreshObserver;
- (void)_restartHelper;
- (void)assertCorrectSchedulerForCollection:(id)a3;
- (void)cancel;
- (void)collection:(id)a3 didMergeInThreadsForMove:(BOOL)a4 newObjectIDs:(id)a5 existingObjectID:(id)a6 searchInfo:(id)a7 hasChanges:(BOOL *)a8;
- (void)collection:(id)a3 notifyOfOldestThreadsByMailboxObjectIDs:(id)a4;
- (void)collection:(id)a3 notifyReplacedExistingObjectID:(id)a4 newObjectID:(id)a5;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)dealloc;
- (void)didSendUpdatesInCollection:(id)a3;
- (void)logThreadObjectIDsChangesWithMessage:(id)a3 newObjectIDs:(id)a4 beforeExistingObjectID:(id)a5;
- (void)logThreadObjectIDsWithMessage:(id)a3 objectIDs:(id)a4;
- (void)prepareToSendUpdatesInCollection:(id)a3;
- (void)queryHelper:(id)a3 businessIDDidChangeForMessages:(id)a4 fromBusinessID:(int64_t)a5;
- (void)queryHelper:(id)a3 conversationIDDidChangeForMessages:(id)a4 fromConversationID:(int64_t)a5;
- (void)queryHelper:(id)a3 conversationNotificationLevelDidChangeForConversation:(int64_t)a4 conversationID:(int64_t)a5;
- (void)queryHelper:(id)a3 didAddMessages:(id)a4 searchInfo:(id)a5;
- (void)queryHelper:(id)a3 didDeleteMessages:(id)a4;
- (void)queryHelper:(id)a3 didFindMessages:(id)a4 searchInfo:(id)a5 forInitialBatch:(BOOL)a6;
- (void)queryHelper:(id)a3 didUpdateMessages:(id)a4 forKeyPaths:(id)a5;
- (void)queryHelper:(id)a3 messageFlagsDidChangeForMessages:(id)a4 previousMessages:(id)a5;
- (void)queryHelper:(id)a3 objectIDDidChangeForMessage:(id)a4 oldObjectID:(id)a5 oldConversationID:(int64_t)a6;
- (void)queryHelperDidFailInitialLoad:(id)a3 localSearchInfoCollector:(id)a4;
- (void)queryHelperDidFindAllMessages:(id)a3 localSearchInfoCollector:(id)a4;
- (void)queryHelperDidFinishRemoteSearch:(id)a3;
- (void)queryHelperNeedsRestart:(id)a3;
- (void)tearDown;
- (void)test_tearDown;
@end

@implementation EDInMemoryThreadQueryHandler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EDInMemoryThreadQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_44 != -1)
  {
    dispatch_once(&log_onceToken_44, block);
  }

  v2 = log_log_44;

  return v2;
}

- (BOOL)start
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = EDInMemoryThreadQueryHandler;
  v3 = [(EDMessageRepositoryQueryHandler *)&v16 start];
  v4 = +[EDInMemoryThreadQueryHandler log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218242;
      v18 = self;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: Starting with query '%@'", buf, 0x16u);
    }

    v7 = MEMORY[0x1E699B860];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EDInMemoryThreadQueryHandler<%p> transaction", self];
    v9 = [v7 transactionWithDescription:v8];
    processTransaction = self->_processTransaction;
    self->_processTransaction = v9;

    v11 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__EDInMemoryThreadQueryHandler_start__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(v11, block);

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v12 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
      EFRegisterContentProtectionObserver();
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      v18 = self;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: Ignoring subsequent call to -start.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __37__EDInMemoryThreadQueryHandler_start__block_invoke(uint64_t a1)
{
  if ((EFProtectedDataAvailable() & 1) != 0 || (result = _os_feature_enabled_impl(), result))
  {
    v3 = *(a1 + 32);

    return [v3 _createHelper];
  }

  return result;
}

- (void)_createHelper
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];

  v5 = [(EDMessageRepositoryQueryHandler *)self query];
  v6 = [(EDInMemoryThreadQueryHandler *)self _messageQueryFromThreadsQuery:v5];

  v7 = [EDMessageQueryHelper alloc];
  v8 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
  v9 = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
  v10 = [(EDInMemoryThreadQueryHandler *)self searchProvider];
  v11 = [(EDInMemoryThreadQueryHandler *)self scheduler];
  v12 = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
  BYTE2(v29) = 0;
  LOWORD(v29) = ![(EDInMemoryThreadQueryHandler *)self hasEverReconciledJournal];
  v13 = [EDMessageQueryHelper initWithQuery:v7 initialBatchSize:"initWithQuery:initialBatchSize:maximumBatchSize:messagePersistence:hookRegistry:searchProvider:scheduler:remindMeNotificationController:delegate:shouldReconcileJournal:shouldAddMessagesSynchronously:keepMessagesInListOnBucketChange:" maximumBatchSize:v6 messagePersistence:200 hookRegistry:5000 searchProvider:v8 scheduler:v9 remindMeNotificationController:v10 delegate:v11 shouldReconcileJournal:v12 shouldAddMessagesSynchronously:self keepMessagesInListOnBucketChange:v29];
  [(EDInMemoryThreadQueryHandler *)self setMessageQueryHelper:v13];

  v14 = self->_helperCount + 1;
  self->_helperCount = v14;
  if (v14 >= 2)
  {
    v15 = +[EDInMemoryThreadQueryHandler signpostLog];
    v16 = [(EDInMemoryThreadQueryHandler *)self signpostID];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      helperCount = self->_helperCount;
      v18 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
      *buf = 134218496;
      v34 = self;
      v35 = 2048;
      v36 = helperCount;
      v37 = 2048;
      v38 = v18;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_EVENT, v16, "EDInMemoryThreadQueryHandlerMessgeQueryHelper", "%p: Created helper #%lu: %p", buf, 0x20u);
    }
  }

  v19 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_helperCount;
    v21 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
    v22 = [(EDMessageRepositoryQueryHandler *)self query];
    *buf = 134219010;
    v34 = self;
    v35 = 2048;
    v36 = v20;
    v37 = 2048;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "%p: Created helper #%lu: %p, Threads Query: %@, Message Query: %@", buf, 0x34u);
  }

  if (v4)
  {
    [(EDInMemoryThreadQueryHandler *)self setIsInitialized:0];
    v23 = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
    objc_initWeak(buf, v23);

    v24 = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    v25 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__EDInMemoryThreadQueryHandler__createHelper__block_invoke;
    block[3] = &unk_1E8250098;
    objc_copyWeak(&v32, buf);
    v31 = v24;
    v26 = v24;
    dispatch_async(v25, block);

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  [(EDInMemoryThreadCollection *)self->_threadCollection clearOldestThreadsByMailboxObjectIDs];
  [(EDInMemoryThreadQueryHandler *)self setIsPreparingFirstBatch:1];
  v27 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
  [v27 start];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)tearDown
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(EDInMemoryThreadQueryHandler *)self cancel];
  v4 = [(EDInMemoryThreadQueryHandler *)self scheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EDInMemoryThreadQueryHandler_tearDown__block_invoke;
  v6[3] = &unk_1E8250260;
  v6[4] = self;
  [v4 performBlock:v6];

  v5.receiver = self;
  v5.super_class = EDInMemoryThreadQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v5 tearDown];
}

- (void)cancel
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_DEBUG, "%p: EDInMemoryThreadQueryHandler canceling", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __38__EDInMemoryThreadQueryHandler_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidCancel:1];
  v2 = [*(a1 + 32) messageQueryHelper];
  [v2 cancel];
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_DEBUG, "%p: EDInMemoryThreadQueryHandler deallocating", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __35__EDInMemoryThreadQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_44;
  log_log_44 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDInMemoryThreadQueryHandler_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __43__EDInMemoryThreadQueryHandler_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_0;
  signpostLog_log_0 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (EDInMemoryThreadQueryHandler)initWithQuery:(id)a3 messagePersistence:(id)a4 hookRegistry:(id)a5 remindMeNotificationController:(id)a6 vipManager:(id)a7 searchProvider:(id)a8 observer:(id)a9 observationIdentifier:(id)a10 observationResumer:(id)a11
{
  v81[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v72 = a7;
  v73 = a8;
  v21 = a9;
  v22 = a10;
  v75 = a11;
  v76.receiver = self;
  v76.super_class = EDInMemoryThreadQueryHandler;
  v70 = v19;
  v71 = v20;
  v74 = v21;
  v23 = [(EDMessageRepositoryQueryHandler *)&v76 initWithQuery:v17 messagePersistence:v18 hookRegistry:v19 remindMeNotificationController:v20 observer:v21 observationIdentifier:v22];
  if (v23)
  {
    v24 = MEMORY[0x1E699ADA0];
    v25 = [v17 predicate];
    v26 = [v18 mailboxPersistence];
    v69 = [v24 threadScopeForPredicate:v25 withMailboxTypeResolver:v26];

    v27 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [EDInMemoryThreadQueryHandler initWithQuery:messagePersistence:hookRegistry:remindMeNotificationController:vipManager:searchProvider:observer:observationIdentifier:observationResumer:];
    }

    objc_storeStrong(v23 + 16, a7);
    objc_storeStrong(v23 + 17, a8);
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = *(v23 + 12);
    *(v23 + 12) = v28;

    v30 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
    v81[0] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
    v32 = *(v23 + 19);
    *(v23 + 19) = v31;

    v33 = [[EDUpdateThrottler alloc] initWithName:@"In-memory threads" delayInterval:v75 resumable:0.0];
    v34 = *(v23 + 20);
    *(v23 + 20) = v33;

    v35 = objc_alloc_init(MEMORY[0x1E699AF00]);
    v36 = *(v23 + 21);
    *(v23 + 21) = v35;

    v37 = MEMORY[0x1E699B978];
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.%p", objc_opt_class(), v23];
    v39 = [v37 serialDispatchQueueSchedulerWithName:v38 qualityOfService:25];
    v40 = *(v23 + 22);
    *(v23 + 22) = v39;

    v41 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v42 = dispatch_queue_create("com.apple.mail.EDInMemoryThreadQueryHandler.contentProtection", v41);
    v43 = *(v23 + 23);
    *(v23 + 23) = v42;

    dispatch_queue_set_specific(*(v23 + 23), &kContentProtectionQueueKey, v23, 0);
    v44 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v45 = dispatch_queue_create("com.apple.mail.EDInMemoryThreadQueryHandler.result", v44);
    v46 = *(v23 + 24);
    *(v23 + 24) = v45;

    v47 = MEMORY[0x1E699ADA0];
    v48 = [v17 predicate];
    v49 = [v18 mailboxPersistence];
    v50 = [v47 mailboxScopeForPredicate:v48 withMailboxTypeResolver:v49];
    v51 = *(v23 + 25);
    *(v23 + 25) = v50;

    v52 = objc_alloc(MEMORY[0x1E699AC58]);
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = [v52 initWithTitle:v54 delegate:v23];
    v56 = *(v23 + 26);
    *(v23 + 26) = v55;

    v57 = [EDInMemoryThreadCollection alloc];
    v58 = [v23 query];
    v59 = [v18 mailboxPersistence];
    v60 = +[EDInMemoryThreadQueryHandler log];
    v61 = [(EDInMemoryThreadCollection *)v57 initWithQuery:v58 mailboxTypeResolver:v59 dataSource:v23 delgate:v23 logClient:v60 limitedCache:1];
    v62 = *(v23 + 11);
    *(v23 + 11) = v61;

    v63 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v23 + 11);
      *buf = 134218240;
      v78 = v23;
      v79 = 2048;
      v80 = v64;
      _os_log_impl(&dword_1C61EF000, v63, OS_LOG_TYPE_DEFAULT, "%p: Created EDInMemoryThreadCollection (%p)", buf, 0x16u);
    }

    v65 = [MEMORY[0x1E696AD88] defaultCenter];
    [v65 addObserver:v23 selector:sel__blockedSendersDidChange_ name:*MEMORY[0x1E699A6D8] object:0];
    v66 = [v23 vipManager];
    [v65 addObserver:v23 selector:sel__vipsDidChange_ name:*MEMORY[0x1E699ABE0] object:v66];
  }

  v67 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadQueryHandler.m" lineNumber:119 description:{@"%s can only be called from unit tests", "-[EDInMemoryThreadQueryHandler test_tearDown]"}];
  }

  [(EDInMemoryThreadQueryHandler *)self tearDown];
  v4 = [(EDInMemoryThreadQueryHandler *)self scheduler];
  [v4 performSyncBlock:&__block_literal_global_32];
}

- (EMMessageListItemQueryResultsObserver)resultsObserverIfNotPaused
{
  if ([(EDInMemoryThreadQueryHandler *)self isPaused])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  }

  return v3;
}

- (void)prepareToSendUpdatesInCollection:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(EDInMemoryThreadQueryHandler *)self isInitialized]&& ![(EDInMemoryThreadQueryHandler *)self isPaused])
  {
    v9 = 0.0;
    v4 = [(EDInMemoryThreadQueryHandler *)self updateThrottler];
    v5 = [v4 unacknowledgedUpdatesCountAndTimeSinceLastAcknowledgement:&v9];

    v6 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v11 = self;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "%p: Preparing to update, %llu unacknowledged updates, %f since last acknowledgement", buf, 0x20u);
    }

    if (v5 > 9 || v9 >= 2.0)
    {
      v7 = +[EDInMemoryThreadQueryHandler log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v11 = self;
        v12 = 2048;
        v13 = v5;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Pausing updates, %llu unacknowledged updates, %f since last acknowledgement", buf, 0x20u);
      }

      [(EDInMemoryThreadQueryHandler *)self setIsPaused:1];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didSendUpdatesInCollection:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(EDInMemoryThreadQueryHandler *)self isPaused])
  {
    [(EDInMemoryThreadQueryHandler *)self setHasChangesWhilePaused:1];
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Skipping change while paused", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(EDInMemoryThreadQueryHandler *)self updateThrottler];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke;
    v20[3] = &unk_1E8252B00;
    objc_copyWeak(&v21, &location);
    v7 = [v6 updateWithBlock:v20 unacknowledgedUpdatesCount:0];

    if (!v7)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadQueryHandler.m" lineNumber:259 description:@"Unable to get acknowledgement token for in-memory thread query handler"];
    }

    v8 = [v7 label];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_48;
    v17[3] = &unk_1E8250A90;
    v19 = self;
    v9 = v8;
    v18 = v9;
    [v7 addInvocationBlock:v17];
    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v24 = self;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: Sending update %{public}@", buf, 0x16u);
    }

    v11 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_49;
    v15[3] = &unk_1E8250128;
    v15[4] = self;
    v16 = v7;
    v12 = v7;
    dispatch_sync(v11, v15);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained isPaused] & 1) != 0)
  {
    v3 = [v2 scheduler];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_2;
    v4[3] = &unk_1E8250260;
    v4[4] = v2;
    [v3 performBlock:v4];
  }
}

void __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isPaused])
  {
    [*(a1 + 32) setIsPaused:0];
    v2 = [*(a1 + 32) hasChangesWhilePaused];
    v3 = +[EDInMemoryThreadQueryHandler log];
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v8 = 134217984;
        v9 = v5;
        _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Refreshing after unpause", &v8, 0xCu);
      }

      [*(a1 + 32) setHasChangesWhilePaused:0];
      [*(a1 + 32) _refreshObserver];
    }

    else
    {
      if (v4)
      {
        v6 = *(a1 + 32);
        v8 = 134217984;
        v9 = v6;
        _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Unpausing without changes", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_48(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%p: Acknowledged update %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_49(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 wasUpdated:*(a1 + 40)];
}

- (void)_refreshObserver
{
  v3 = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  v4 = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
  v5 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDInMemoryThreadQueryHandler__refreshObserver__block_invoke;
  block[3] = &unk_1E8250720;
  v6 = v3;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  v11 = self;
  dispatch_sync(v5, block);

  [(EDInMemoryThreadCollection *)self->_threadCollection notifyObserverOfOldestThreadsByMailboxObjectIDs];
}

void __48__EDInMemoryThreadQueryHandler__refreshObserver__block_invoke(uint64_t a1)
{
  [*(a1 + 32) observerWillRestart:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(v2 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EDInMemoryThreadQueryHandler__refreshObserver__block_invoke_2;
  v7[3] = &unk_1E8252B28;
  v7[4] = v2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v3 enumerateObjectIDsInBatchesOfSize:5000 block:v7];
  [*(a1 + 32) observerDidFinishInitialLoad:*(a1 + 40) extraInfo:0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(*(a1 + 48) + 96) copy];
  [v4 observer:v5 matchedChangesForObjectIDs:v6];

  [*(*(a1 + 48) + 96) removeAllObjects];
}

void __48__EDInMemoryThreadQueryHandler__refreshObserver__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = +[EDInMemoryThreadQueryHandler log];
  v5 = [v3 _distinctObjectIDs:v7 queryHandlerLog:v4];

  v6 = [*(a1 + 32) _extraInfoForThreadObjectIDs:v5 searchInfo:0 isMove:0];
  [*(a1 + 40) observer:*(a1 + 48) matchedAddedObjectIDs:v5 before:0 extraInfo:v6];
}

- (void)_restartHelper
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v3);

  if ((EFProtectedDataAvailable() & 1) != 0 || _os_feature_enabled_impl())
  {
    v4 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
      v8 = 134218240;
      v9 = self;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: (Re-)starting the helper (old = %p).", &v8, 0x16u);
    }

    [(EDInMemoryThreadQueryHandler *)self _createHelper];
  }

  else
  {
    v6 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = self;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "%p: Delaying restart of helper because device is locked.", &v8, 0xCu);
    }

    [(EDInMemoryThreadQueryHandler *)self setIsInitialized:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __45__EDInMemoryThreadQueryHandler__createHelper__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observerWillRestart:*(a1 + 32)];
}

- (BOOL)_queryHelperIsCurrent:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EDInMemoryThreadQueryHandler__queryHelperIsCurrent___block_invoke;
  block[3] = &unk_1E8251C08;
  v10 = self;
  v11 = &v12;
  v9 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return self;
}

void __54__EDInMemoryThreadQueryHandler__queryHelperIsCurrent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) messageQueryHelper];
  *(*(*(a1 + 48) + 8) + 24) = v2 == v3;
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      [(EDInMemoryThreadQueryHandler *)self _contentProtectionChangedToUnlocked:0];
    }
  }

  else
  {
    [(EDInMemoryThreadQueryHandler *)self _contentProtectionChangedToLocked];
  }
}

- (void)_contentProtectionChangedToLocked
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Content Protection => Locked", &v7, 0xCu);
  }

  v4 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v4);

  if (![(EDInMemoryThreadQueryHandler *)self isInitialized])
  {
    v5 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
    [(EDInMemoryThreadQueryHandler *)self setMessageQueryHelper:0];
    [v5 cancel];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_contentProtectionChangedToUnlocked
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Content Protection => Unlocked", &v6, 0xCu);
  }

  v4 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v4);

  if (![(EDInMemoryThreadQueryHandler *)self didCancel]&& ![(EDInMemoryThreadQueryHandler *)self isInitialized])
  {
    [(EDInMemoryThreadQueryHandler *)self _restartHelper];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)messageListItemForObjectID:(id)a3 error:(id *)a4
{
  v4 = [(EDInMemoryThreadCollection *)self->_threadCollection messageListItemForObjectID:a3 error:a4];

  return v4;
}

- (id)threadsAndMessagesForObjectIDs:(id)a3
{
  v3 = [(EDInMemoryThreadCollection *)self->_threadCollection threadsAndMessagesForObjectIDs:a3];

  return v3;
}

- (id)messagesForThread:(id)a3
{
  v3 = [(EDInMemoryThreadCollection *)self->_threadCollection messagesForThread:a3];

  return v3;
}

- (id)messagesInConversationIDs:(id)a3 limit:(int64_t)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  if (dispatch_get_specific(&kContentProtectionQueueKey))
  {
    v7 = [(EDInMemoryThreadQueryHandler *)self _messagesInConversationIDs:v6 limit:a4];
    v8 = v17[5];
    v17[5] = v7;
  }

  else
  {
    v9 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__EDInMemoryThreadQueryHandler_messagesInConversationIDs_limit___block_invoke;
    v12[3] = &unk_1E8252B50;
    v14 = &v16;
    v12[4] = self;
    v13 = v6;
    v15 = a4;
    dispatch_sync(v9, v12);
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __64__EDInMemoryThreadQueryHandler_messagesInConversationIDs_limit___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _messagesInConversationIDs:*(a1 + 40) limit:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_messagesInConversationIDs:(id)a3 limit:(int64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
  v9 = [(EDInMemoryThreadQueryHandler *)self _predicateForMessagesInConversations:v6];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v8 messagesWithAdditionalPredicates:v10 limit:a4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)queryHelper:(id)a3 didFindMessages:(id)a4 searchInfo:(id)a5 forInitialBatch:(BOOL)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v9])
  {
    v12 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = self;
      v16 = 1024;
      v17 = [v10 count];
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: Found %u messages.", &v14, 0x12u);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereAdded:v10 searchInfo:v11];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryHelperDidFindAllMessages:(id)a3 localSearchInfoCollector:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v6])
  {
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = self;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Finished initial load.", buf, 0xCu);
    }

    [(EDInMemoryThreadQueryHandler *)self setIsInitialized:1];
    [(EDInMemoryThreadQueryHandler *)self setHasEverReconciledJournal:1];
    v9 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __87__EDInMemoryThreadQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke;
    v14 = &unk_1E8250128;
    v15 = self;
    v16 = v7;
    dispatch_sync(v9, &v11);

    [(EDInMemoryThreadCollection *)self->_threadCollection initializeOldestThreadsByMailbox:v11];
    [(EDInMemoryThreadCollection *)self->_threadCollection clearInMemoryThreadCache];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __87__EDInMemoryThreadQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) resultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFinishInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelperDidFailInitialLoad:(id)a3 localSearchInfoCollector:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v6])
  {
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EDInMemoryThreadQueryHandler queryHelperDidFailInitialLoad:localSearchInfoCollector:];
    }

    v9 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__EDInMemoryThreadQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke;
    v10[3] = &unk_1E8250128;
    v10[4] = self;
    v11 = v7;
    dispatch_sync(v9, v10);
  }
}

void __87__EDInMemoryThreadQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) resultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFailInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelper:(id)a3 didAddMessages:(id)a4 searchInfo:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v8])
  {
    v11 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = self;
      v15 = 1024;
      v16 = [v9 count];
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Added %u messages", &v13, 0x12u);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereAdded:v9 searchInfo:v10];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 messageFlagsDidChangeForMessages:(id)a4 previousMessages:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:a3])
  {
    if ([v7 count] < 0xB)
    {
      v9 = [v7 ef_mapSelector:sel_flagDescription];
    }

    else
    {
      v8 = [v7 subarrayWithRange:{0, 10}];
      v9 = [v8 ef_mapSelector:sel_flagDescription];
    }

    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v17 = self;
      v18 = 1024;
      v19 = [v7 count];
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: Flags changed for %u messages: %{public}@", buf, 0x1Cu);
    }

    threadCollection = self->_threadCollection;
    v12 = *MEMORY[0x1E699A8E8];
    v15[0] = *MEMORY[0x1E699A8A0];
    v15[1] = v12;
    v15[2] = *MEMORY[0x1E699A898];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    [(EDInMemoryThreadCollection *)threadCollection messagesWereChanged:v7 forKeyPaths:v13 deleted:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 didUpdateMessages:(id)a4 forKeyPaths:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v8])
  {
    v11 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      v17 = 1024;
      v18 = [v9 count];
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Key paths %{public}@ changed for %u messages", &v13, 0x1Cu);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereChanged:v9 forKeyPaths:v10 deleted:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 objectIDDidChangeForMessage:(id)a4 oldObjectID:(id)a5 oldConversationID:(int64_t)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v10])
  {
    v13 = [v11 itemID];
    v14 = [v12 collectionItemID];
    v15 = [v13 isEqual:v14];

    if (v15)
    {
      v16 = +[EDInMemoryThreadQueryHandler log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v11 itemID];
        LODWORD(__b[0]) = 134218754;
        *(__b + 4) = self;
        WORD2(__b[1]) = 2112;
        *(&__b[1] + 6) = v18;
        HIWORD(__b[2]) = 2112;
        __b[3] = v11;
        LOWORD(__b[4]) = 2112;
        *(&__b[4] + 2) = v12;
        _os_log_debug_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEBUG, "%p: itemID not changed %@\nchangedMessage %@\noldObjectID %@", __b, 0x2Au);
      }

      memset(__b, 170, sizeof(__b));
      LODWORD(__b[4]) = 0;
      *v21 = 0xE00000001;
      v22 = 1;
      v23 = getpid();
      v19 = 648;
      if (!sysctl(v21, 4u, __b, &v19, 0, 0) && (__b[4] & 0x800) != 0)
      {
        __debugbreak();
        JUMPOUT(0x1C6285650);
      }
    }

    else
    {
      [(EDInMemoryThreadCollection *)self->_threadCollection objectIDDidChangeForMessage:v11 oldObjectID:v12 oldConversationID:a6];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 didDeleteMessages:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v6])
  {
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = self;
      v12 = 1024;
      v13 = [v7 count];
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Deleted %u messages", &v10, 0x12u);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereChanged:v7 forKeyPaths:0 deleted:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 conversationIDDidChangeForMessages:(id)a4 fromConversationID:(int64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v8])
  {
    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218496;
      v13 = self;
      v14 = 2048;
      v15 = a5;
      v16 = 1024;
      v17 = [v9 count];
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: ConversationIDs changed from %lld for %u messages", &v12, 0x1Cu);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection conversationIDDidChangeForMessages:v9 fromConversationID:a5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 businessIDDidChangeForMessages:(id)a4 fromBusinessID:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v8])
  {
    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v16 = self;
      v17 = 2048;
      v18 = a5;
      v19 = 1024;
      v20 = [v9 count];
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: BusinessIDs changed from %lld for %u messages", buf, 0x1Cu);
    }

    threadCollection = self->_threadCollection;
    v14 = *MEMORY[0x1E699A838];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(EDInMemoryThreadCollection *)threadCollection messagesWereChanged:v9 forKeyPaths:v12 deleted:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 conversationNotificationLevelDidChangeForConversation:(int64_t)a4 conversationID:(int64_t)a5
{
  v8 = a3;
  if (a5)
  {
    if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v8])
    {
      [(EDInMemoryThreadCollection *)self->_threadCollection conversationNotificationLevelDidChangeForConversation:a4 conversationID:a5];
    }
  }

  else
  {
    v9 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EDInMemoryThreadQueryHandler queryHelper:conversationNotificationLevelDidChangeForConversation:conversationID:];
    }
  }
}

- (void)queryHelperDidFinishRemoteSearch:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v4])
  {
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Helper did finish remote search.", buf, 0xCu);
    }

    v6 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__EDInMemoryThreadQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_sync(v6, block);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __65__EDInMemoryThreadQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observerDidFinishRemoteSearch:v2];
}

- (void)queryHelperNeedsRestart:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:v4])
  {
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Helper needs restart.", buf, 0xCu);
    }

    v6 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__EDInMemoryThreadQueryHandler_queryHelperNeedsRestart___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(v6, block);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)mailboxesInCollection:(id)a3
{
  v3 = [(EDMessageRepositoryQueryHandler *)self mailboxes];

  return v3;
}

- (id)_predicateForMessagesInConversations:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A868]];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:10 options:0];

  return v7;
}

- (id)collection:(id)a3 messagesInConversationIDs:(id)a4 limit:(int64_t)a5
{
  v5 = [(EDInMemoryThreadQueryHandler *)self messagesInConversationIDs:a4 limit:a5];

  return v5;
}

- (void)assertCorrectSchedulerForCollection:(id)a3
{
  v3 = [(EDInMemoryThreadQueryHandler *)self scheduler];
  [v3 assertIsExecuting:1];
}

- (void)collection:(id)a3 notifyOfOldestThreadsByMailboxObjectIDs:(id)a4
{
  v5 = a4;
  v6 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__EDInMemoryThreadQueryHandler_collection_notifyOfOldestThreadsByMailboxObjectIDs___block_invoke;
  v8[3] = &unk_1E8250128;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __83__EDInMemoryThreadQueryHandler_collection_notifyOfOldestThreadsByMailboxObjectIDs___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserverIfNotPaused];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedOldestItemsUpdatedForMailboxes:*(a1 + 40)];
}

- (void)collection:(id)a3 notifyReplacedExistingObjectID:(id)a4 newObjectID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EDInMemoryThreadQueryHandler_collection_notifyReplacedExistingObjectID_newObjectID___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, block);
}

void __86__EDInMemoryThreadQueryHandler_collection_notifyReplacedExistingObjectID_newObjectID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserverIfNotPaused];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 replacedExistingObjectID:*(a1 + 40) withNewObjectID:*(a1 + 48)];
}

- (BOOL)collection:(id)a3 reportChanges:(id)a4 reloadSummaries:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 count];
  if (v8)
  {
    if (v5)
    {
      v9 = [(EDInMemoryThreadQueryHandler *)self reloadSummaryHelper];
      v10 = [(EDInMemoryThreadQueryHandler *)self mailboxScope];
      v11 = [v9 summariesToReloadForChanges:v7 mailboxScope:v10];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v12);
            }

            [(EDMessageRepositoryQueryHandler *)self requestSummaryForMessageObjectID:*(*(&v26 + 1) + 8 * i)];
          }

          v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }
    }

    v16 = [v7 allKeys];
    [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Changing objectIDs" objectIDs:v16];

    v17 = [(EDInMemoryThreadQueryHandler *)self resultsObserverIfNotPaused];
    if (v17)
    {
      v18 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__EDInMemoryThreadQueryHandler_collection_reportChanges_reloadSummaries___block_invoke;
      block[3] = &unk_1E8250720;
      v23 = v17;
      v24 = self;
      v25 = v7;
      dispatch_sync(v18, block);
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__EDInMemoryThreadQueryHandler_collection_reportChanges_reloadSummaries___block_invoke_2;
      v21[3] = &unk_1E8252B78;
      v21[4] = self;
      [v7 enumerateKeysAndObjectsUsingBlock:v21];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

void __73__EDInMemoryThreadQueryHandler_collection_reportChanges_reloadSummaries___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) observationIdentifier];
  v4 = *(a1 + 48);
  v5 = v3;
  [v2 observer:? matchedChangesForObjectIDs:?];
}

void __73__EDInMemoryThreadQueryHandler_collection_reportChanges_reloadSummaries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:v8];
  v7 = v6;
  if (v6)
  {
    [v6 addChange:v5];
  }

  else
  {
    [*(*(a1 + 32) + 96) setObject:v5 forKeyedSubscript:v8];
  }
}

- (BOOL)collection:(id)a3 reportDeletes:(id)a4
{
  v5 = a4;
  v6 = [v5 count];
  if (v6)
  {
    v7 = [v5 array];
    v8 = [v7 ef_map:&__block_literal_global_62];

    [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Deleting objectIDs" objectIDs:v8];
    v9 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__EDInMemoryThreadQueryHandler_collection_reportDeletes___block_invoke_2;
    v12[3] = &unk_1E8250128;
    v12[4] = self;
    v13 = v8;
    v10 = v8;
    dispatch_sync(v9, v12);
  }

  return v6 != 0;
}

id __57__EDInMemoryThreadQueryHandler_collection_reportDeletes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

void __57__EDInMemoryThreadQueryHandler_collection_reportDeletes___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserverIfNotPaused];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedDeletedObjectIDs:*(a1 + 40)];
}

- (void)collection:(id)a3 didMergeInThreadsForMove:(BOOL)a4 newObjectIDs:(id)a5 existingObjectID:(id)a6 searchInfo:(id)a7 hasChanges:(BOOL *)a8
{
  v11 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(EDInMemoryThreadQueryHandler *)self resultsObserverIfNotPaused];
  if (v11)
  {
    if (v14)
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsChangesWithMessage:@"Moving objectIDs" newObjectIDs:v13 beforeExistingObjectID:v14];
    }

    else
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Moving objectIDs to end of list:" objectIDs:v13];
    }

    v17 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke;
    block[3] = &unk_1E8251C58;
    v18 = &v35;
    block[4] = self;
    v35 = v13;
    v19 = &v36;
    v20 = v37;
    v36 = v14;
    v37[0] = v16;
    v37[1] = a8;
    v21 = v14;
    v22 = v16;
    v23 = v13;
    dispatch_sync(v17, block);
  }

  else
  {
    if (v14)
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsChangesWithMessage:@"Adding objectIDs" newObjectIDs:v13 beforeExistingObjectID:v14];
    }

    else
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Adding objectIDs to end of list" objectIDs:v13];
    }

    v24 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke_3;
    v28[3] = &unk_1E8252BE8;
    v18 = &v29;
    v28[4] = self;
    v29 = v13;
    v19 = &v30;
    v20 = &v31;
    v30 = v15;
    v31 = v16;
    v32 = v14;
    v33 = a8;
    v25 = v14;
    v26 = v16;
    v27 = v13;
    dispatch_sync(v24, v28);

    v17 = v32;
  }
}

void __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke_2;
  v9[3] = &unk_1E8252BC0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v6 = v8.i64[1];
  v7.i64[0] = *(a1 + 48);
  v7.i64[1] = v5;
  v10 = vextq_s8(v7, v8, 8uLL);
  v11 = vextq_s8(v8, v7, 8uLL);
  [v2 _notifyObserversOfMovedObjectIDs:v3 before:v4 notifyBlock:v9];
  **(a1 + 64) = 1;
}

void __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) observationIdentifier];
  [v5 observer:v6 matchedMovedObjectIDs:*(a1 + 48) before:*(a1 + 56) extraInfo:v7];
}

void __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = +[EDInMemoryThreadQueryHandler log];
  v17 = [v2 _distinctObjectIDs:v3 queryHandlerLog:v4];

  v5 = [*(a1 + 32) _extraInfoForThreadObjectIDs:v17 searchInfo:*(a1 + 48) isMove:0];
  if ([*(a1 + 32) isPreparingFirstBatch])
  {
    v6 = [*(a1 + 32) query];
    v7 = [v6 targetClassOptions];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E699A9E8]];

    if (v8)
    {
      v9 = [*(a1 + 32) _extraInfoPrecachedThreadsForInitialObjectIDs:v17];
      if (v9)
      {
        v10 = [v5 mutableCopy];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v13 = v12;

        [v13 addEntriesFromDictionary:v9];
        v14 = [v13 copy];

        v5 = v14;
      }
    }
  }

  [*(a1 + 32) setIsPreparingFirstBatch:0];
  v15 = *(a1 + 56);
  v16 = [*(a1 + 32) observationIdentifier];
  [v15 observer:v16 matchedAddedObjectIDs:v17 before:*(a1 + 64) extraInfo:v5];

  **(a1 + 72) = 1;
}

- (void)_notifyObserversOfMovedObjectIDs:(id)a3 before:(id)a4 notifyBlock:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26 = v10;
  v27 = v9;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
  v28 = *MEMORY[0x1E699A800];
  v13 = v26;
  while ([v12 count])
  {
    v14 = [v12 lastObject];
    [v12 removeLastObject];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __84__EDInMemoryThreadQueryHandler__notifyObserversOfMovedObjectIDs_before_notifyBlock___block_invoke;
    v30[3] = &unk_1E8252C10;
    v30[4] = self;
    v15 = [v14 ef_groupBy:v30];
    v16 = [v15 ef_mapValues:&__block_literal_global_83];

    if ([v14 count] < 2)
    {
      goto LABEL_4;
    }

    v19 = [v16 count];
    if (v19 == 1)
    {
      v5 = [v16 allValues];
      v6 = [v5 firstObject];
      v20 = [v6 count];
      if (v20 == [v27 count])
      {

LABEL_4:
        v31 = v28;
        v32[0] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v11[2](v11, v14, v13, v17);
        v18 = [v14 firstObject];

        v13 = v18;
        goto LABEL_13;
      }
    }

    v21 = [v16 count];
    if (v19 == 1)
    {
      v22 = v21 == 0;

      if (v22)
      {
        goto LABEL_4;
      }
    }

    else if (!v21)
    {
      goto LABEL_4;
    }

    v23 = [v14 count];
    v24 = [v14 ef_prefix:v23 >> 1];
    [v12 addObject:v24];

    v17 = [v14 ef_suffix:v23 - (v23 >> 1)];
    [v12 addObject:v17];
LABEL_13:
  }

  v25 = *MEMORY[0x1E69E9840];
}

id __84__EDInMemoryThreadQueryHandler__notifyObserversOfMovedObjectIDs_before_notifyBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 88) sectionIdentifierForThreadObjectID:a2];

  return v2;
}

id __84__EDInMemoryThreadQueryHandler__notifyObserversOfMovedObjectIDs_before_notifyBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_collectionItemID];

  return v2;
}

- (id)_extraInfoPrecachedThreadsForInitialObjectIDs:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageRepositoryQueryHandler *)self query];
  v6 = [v5 targetClassOptions];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A9E8]];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 ef_prefix:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__EDInMemoryThreadQueryHandler__extraInfoPrecachedThreadsForInitialObjectIDs___block_invoke;
  v17[3] = &unk_1E8252C38;
  v17[4] = self;
  v17[5] = &v18;
  v10 = [v9 ef_compactMap:v17];
  v11 = [v10 count];
  if (v11 == [v9 count] && !v19[5])
  {
    v24 = *MEMORY[0x1E699A7F0];
    v25 = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  else
  {
    v12 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v19[5] ef_publicDescription];
      [(EDInMemoryThreadQueryHandler *)self _extraInfoPrecachedThreadsForInitialObjectIDs:v13, buf, v12];
    }

    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __78__EDInMemoryThreadQueryHandler__extraInfoPrecachedThreadsForInitialObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    obj = 0;
    v7 = [v8 messageListItemForObjectID:v3 error:&obj];
    objc_storeStrong(v5, obj);
  }

  return v7;
}

- (id)_messageQueryFromThreadsQuery:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699AE28]);
  v5 = objc_opt_class();
  v6 = [v3 predicate];
  v7 = [v3 sortDescriptors];
  v8 = [v3 suggestion];
  v9 = [v3 limit];
  v10 = [v3 queryOptions];
  v11 = [v3 targetClassOptions];
  v12 = [v3 label];
  v13 = [v4 initWithTargetClass:v5 predicate:v6 sortDescriptors:v7 suggestion:v8 limit:v9 queryOptions:v10 targetClassOptions:v11 label:v12];

  return v13;
}

- (id)_extraInfoForThreadObjectIDs:(id)a3 searchInfo:(id)a4 isMove:(BOOL)a5
{
  v7 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v36 = v11;
  v37 = [MEMORY[0x1E695DF90] dictionary];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __79__EDInMemoryThreadQueryHandler__extraInfoForThreadObjectIDs_searchInfo_isMove___block_invoke;
  v50[3] = &unk_1E8252C60;
  v50[4] = self;
  v13 = [v11 ef_groupBy:v50];
  v38 = [v13 ef_mapValues:&__block_literal_global_92];

  if ([v38 count])
  {
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = v38;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Returning section info %{public}@", buf, 0xCu);
    }

    [v37 setObject:v38 forKeyedSubscript:*MEMORY[0x1E699A800]];
  }

  if (v7)
  {
    v14 = [v38 count];
    if (v14 == 1)
    {
      v5 = [v38 allValues];
      v6 = [v5 firstObject];
      v15 = [v6 count];
      if (v15 == [v11 count])
      {

LABEL_14:
        goto LABEL_15;
      }
    }

    v16 = [v38 count];
    if (v14 == 1)
    {
      v17 = v16 == 0;

      if (v17)
      {
        goto LABEL_15;
      }
    }

    else if (!v16)
    {
      goto LABEL_15;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadQueryHandler.m" lineNumber:767 description:@"We don't allow moving multiple items to different sections"];
    goto LABEL_14;
  }

LABEL_15:
  v18 = [v12 instantAnswer];
  [v37 setObject:v18 forKeyedSubscript:*MEMORY[0x1E699A7E8]];

  v19 = [v12 snippetsByObjectID];
  v20 = [v19 count];

  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v36;
    v22 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v22)
    {
      v40 = *v47;
      do
      {
        v41 = v22;
        for (i = 0; i != v41; ++i)
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v25 = [v12 snippetMessageObjectIDsByConversation];
          v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v24, "conversationID")}];
          v27 = [v25 objectForKeyedSubscript:v26];

          v28 = [v27 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v28)
          {
            v29 = *v43;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v43 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v42 + 1) + 8 * j);
                v32 = [v12 snippetsByObjectID];
                v33 = [v32 objectForKeyedSubscript:v31];
                [v21 setObject:v33 forKeyedSubscript:v31];
              }

              v28 = [v27 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v28);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v22);
    }

    [v37 setObject:v21 forKeyedSubscript:*MEMORY[0x1E699A7D8]];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v37;
}

id __79__EDInMemoryThreadQueryHandler__extraInfoForThreadObjectIDs_searchInfo_isMove___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 88) sectionIdentifierForThreadObjectID:a2];

  return v2;
}

id __79__EDInMemoryThreadQueryHandler__extraInfoForThreadObjectIDs_searchInfo_isMove___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_collectionItemID];

  return v2;
}

- (id)_extraInfoFromLocalSearchInfoCollector:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__14;
    v18 = __Block_byref_object_dispose__14;
    v19 = 0;
    threadCollection = self->_threadCollection;
    v6 = *MEMORY[0x1E69ADD58];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__EDInMemoryThreadQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke;
    v13[3] = &unk_1E8252CA8;
    v13[4] = &v14;
    [(EDInMemoryThreadCollection *)threadCollection enumerateObjectIDsInBatchesOfSize:v6 block:v13];
    v7 = [v4 localSearchInfoForConversationIDs:v15[5]];
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v21 = self;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Returning local search info %{public}@", buf, 0x16u);
    }

    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v10 = [v9 initWithObjectsAndKeys:{v7, *MEMORY[0x1E699A808], 0}];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __71__EDInMemoryThreadQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 ef_compactMap:&__block_literal_global_99];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

id __71__EDInMemoryThreadQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

- (void)logThreadObjectIDsWithMessage:(id)a3 objectIDs:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count] >= 0xB)
  {
    v8 = [v7 subarrayWithRange:{0, 10}];

    v7 = v8;
  }

  v9 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218754;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = [v7 count];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ : %lu : %{public}@ ", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)logThreadObjectIDsChangesWithMessage:(id)a3 newObjectIDs:(id)a4 beforeExistingObjectID:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count] >= 0xB)
  {
    v11 = [v9 subarrayWithRange:{0, 10}];

    v9 = v11;
  }

  v12 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134219010;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2048;
    v19 = [v9 count];
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ : %lu before existing: %{public}@ : %{public}@", &v14, 0x34u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)labelForStateCapture
{
  v2 = [(EDMessageRepositoryQueryHandler *)self query];
  v3 = [v2 label];

  return v3;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(EDInMemoryThreadQueryHandler *)self scheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__EDInMemoryThreadQueryHandler_itemIDsForStateCaptureWithErrorString___block_invoke;
  v8[3] = &unk_1E8251C30;
  v8[4] = self;
  v8[5] = &v9;
  [v5 performSyncBlock:v8];

  if (a3)
  {
    *a3 = 0;
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __70__EDInMemoryThreadQueryHandler_itemIDsForStateCaptureWithErrorString___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) itemIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)initWithQuery:messagePersistence:hookRegistry:remindMeNotificationController:vipManager:searchProvider:observer:observationIdentifier:observationResumer:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_1C61EF000, v1, OS_LOG_TYPE_DEBUG, "%p: EDInMemoryThreadQueryHandler initializing for threadscope\n%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)queryHelperDidFailInitialLoad:localSearchInfoCollector:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_ERROR, "%p: Failed initial load", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:conversationNotificationLevelDidChangeForConversation:conversationID:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  v3 = 2048;
  v4 = 0;
  _os_log_error_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_ERROR, "%p: Received invalid converationID:%lld", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_extraInfoPrecachedThreadsForInitialObjectIDs:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "%p: Failed to prefetch threads with error:%{public}@", buf, 0x16u);
}

@end