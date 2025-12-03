@interface EDInMemoryThreadQueryHandler
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_queryHelperIsCurrent:(id)current;
- (BOOL)collection:(id)collection reportChanges:(id)changes reloadSummaries:(BOOL)summaries;
- (BOOL)collection:(id)collection reportDeletes:(id)deletes;
- (BOOL)start;
- (EDInMemoryThreadQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller vipManager:(id)manager searchProvider:(id)provider observer:(id)observer observationIdentifier:(id)self0 observationResumer:(id)self1;
- (EMMessageListItemQueryResultsObserver)resultsObserverIfNotPaused;
- (id)_extraInfoForThreadObjectIDs:(id)ds searchInfo:(id)info isMove:(BOOL)move;
- (id)_extraInfoFromLocalSearchInfoCollector:(id)collector;
- (id)_extraInfoPrecachedThreadsForInitialObjectIDs:(id)ds;
- (id)_messageQueryFromThreadsQuery:(id)query;
- (id)_messagesInConversationIDs:(id)ds limit:(int64_t)limit;
- (id)_predicateForMessagesInConversations:(id)conversations;
- (id)collection:(id)collection messagesInConversationIDs:(id)ds limit:(int64_t)limit;
- (id)itemIDsForStateCaptureWithErrorString:(id *)string;
- (id)labelForStateCapture;
- (id)mailboxesInCollection:(id)collection;
- (id)messageListItemForObjectID:(id)d error:(id *)error;
- (id)messagesForThread:(id)thread;
- (id)messagesInConversationIDs:(id)ds limit:(int64_t)limit;
- (id)threadsAndMessagesForObjectIDs:(id)ds;
- (unint64_t)signpostID;
- (void)_contentProtectionChangedToLocked;
- (void)_contentProtectionChangedToUnlocked;
- (void)_createHelper;
- (void)_notifyObserversOfMovedObjectIDs:(id)ds before:(id)before notifyBlock:(id)block;
- (void)_refreshObserver;
- (void)_restartHelper;
- (void)assertCorrectSchedulerForCollection:(id)collection;
- (void)cancel;
- (void)collection:(id)collection didMergeInThreadsForMove:(BOOL)move newObjectIDs:(id)ds existingObjectID:(id)d searchInfo:(id)info hasChanges:(BOOL *)changes;
- (void)collection:(id)collection notifyOfOldestThreadsByMailboxObjectIDs:(id)ds;
- (void)collection:(id)collection notifyReplacedExistingObjectID:(id)d newObjectID:(id)iD;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)didSendUpdatesInCollection:(id)collection;
- (void)logThreadObjectIDsChangesWithMessage:(id)message newObjectIDs:(id)ds beforeExistingObjectID:(id)d;
- (void)logThreadObjectIDsWithMessage:(id)message objectIDs:(id)ds;
- (void)prepareToSendUpdatesInCollection:(id)collection;
- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d;
- (void)queryHelper:(id)helper conversationIDDidChangeForMessages:(id)messages fromConversationID:(int64_t)d;
- (void)queryHelper:(id)helper conversationNotificationLevelDidChangeForConversation:(int64_t)conversation conversationID:(int64_t)d;
- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info;
- (void)queryHelper:(id)helper didDeleteMessages:(id)messages;
- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch;
- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths;
- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages;
- (void)queryHelper:(id)helper objectIDDidChangeForMessage:(id)message oldObjectID:(id)d oldConversationID:(int64_t)iD;
- (void)queryHelperDidFailInitialLoad:(id)load localSearchInfoCollector:(id)collector;
- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector;
- (void)queryHelperDidFinishRemoteSearch:(id)search;
- (void)queryHelperNeedsRestart:(id)restart;
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
  block[4] = self;
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
  start = [(EDMessageRepositoryQueryHandler *)&v16 start];
  v4 = +[EDInMemoryThreadQueryHandler log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (start)
  {
    if (v5)
    {
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218242;
      selfCopy2 = self;
      v19 = 2112;
      v20 = query;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: Starting with query '%@'", buf, 0x16u);
    }

    v7 = MEMORY[0x1E699B860];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EDInMemoryThreadQueryHandler<%p> transaction", self];
    v9 = [v7 transactionWithDescription:v8];
    processTransaction = self->_processTransaction;
    self->_processTransaction = v9;

    contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__EDInMemoryThreadQueryHandler_start__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(contentProtectionQueue, block);

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      contentProtectionQueue2 = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
      EFRegisterContentProtectionObserver();
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: Ignoring subsequent call to -start.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return start;
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
  contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  messageQueryHelper = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];

  query = [(EDMessageRepositoryQueryHandler *)self query];
  v6 = [(EDInMemoryThreadQueryHandler *)self _messageQueryFromThreadsQuery:query];

  v7 = [EDMessageQueryHelper alloc];
  messagePersistence = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
  hookRegistry = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
  searchProvider = [(EDInMemoryThreadQueryHandler *)self searchProvider];
  scheduler = [(EDInMemoryThreadQueryHandler *)self scheduler];
  remindMeNotificationController = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
  BYTE2(v29) = 0;
  LOWORD(v29) = ![(EDInMemoryThreadQueryHandler *)self hasEverReconciledJournal];
  v13 = [EDMessageQueryHelper initWithQuery:v7 initialBatchSize:"initWithQuery:initialBatchSize:maximumBatchSize:messagePersistence:hookRegistry:searchProvider:scheduler:remindMeNotificationController:delegate:shouldReconcileJournal:shouldAddMessagesSynchronously:keepMessagesInListOnBucketChange:" maximumBatchSize:v6 messagePersistence:200 hookRegistry:5000 searchProvider:messagePersistence scheduler:hookRegistry remindMeNotificationController:searchProvider delegate:scheduler shouldReconcileJournal:remindMeNotificationController shouldAddMessagesSynchronously:self keepMessagesInListOnBucketChange:v29];
  [(EDInMemoryThreadQueryHandler *)self setMessageQueryHelper:v13];

  v14 = self->_helperCount + 1;
  self->_helperCount = v14;
  if (v14 >= 2)
  {
    v15 = +[EDInMemoryThreadQueryHandler signpostLog];
    signpostID = [(EDInMemoryThreadQueryHandler *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      helperCount = self->_helperCount;
      messageQueryHelper2 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
      *buf = 134218496;
      selfCopy2 = self;
      v35 = 2048;
      v36 = helperCount;
      v37 = 2048;
      v38 = messageQueryHelper2;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_EVENT, signpostID, "EDInMemoryThreadQueryHandlerMessgeQueryHelper", "%p: Created helper #%lu: %p", buf, 0x20u);
    }
  }

  v19 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_helperCount;
    messageQueryHelper3 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
    query2 = [(EDMessageRepositoryQueryHandler *)self query];
    *buf = 134219010;
    selfCopy2 = self;
    v35 = 2048;
    v36 = v20;
    v37 = 2048;
    v38 = messageQueryHelper3;
    v39 = 2112;
    v40 = query2;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "%p: Created helper #%lu: %p, Threads Query: %@, Message Query: %@", buf, 0x34u);
  }

  if (messageQueryHelper)
  {
    [(EDInMemoryThreadQueryHandler *)self setIsInitialized:0];
    resultsObserver = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
    objc_initWeak(buf, resultsObserver);

    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__EDInMemoryThreadQueryHandler__createHelper__block_invoke;
    block[3] = &unk_1E8250098;
    objc_copyWeak(&v32, buf);
    v31 = observationIdentifier;
    v26 = observationIdentifier;
    dispatch_async(resultQueue, block);

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  [(EDInMemoryThreadCollection *)self->_threadCollection clearOldestThreadsByMailboxObjectIDs];
  [(EDInMemoryThreadQueryHandler *)self setIsPreparingFirstBatch:1];
  messageQueryHelper4 = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
  [messageQueryHelper4 start];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)tearDown
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(EDInMemoryThreadQueryHandler *)self cancel];
  scheduler = [(EDInMemoryThreadQueryHandler *)self scheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EDInMemoryThreadQueryHandler_tearDown__block_invoke;
  v6[3] = &unk_1E8250260;
  v6[4] = self;
  [scheduler performBlock:v6];

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
  block[4] = self;
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
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDInMemoryThreadQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller vipManager:(id)manager searchProvider:(id)provider observer:(id)observer observationIdentifier:(id)self0 observationResumer:(id)self1
{
  v81[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  persistenceCopy = persistence;
  registryCopy = registry;
  controllerCopy = controller;
  managerCopy = manager;
  providerCopy = provider;
  observerCopy = observer;
  identifierCopy = identifier;
  resumerCopy = resumer;
  v76.receiver = self;
  v76.super_class = EDInMemoryThreadQueryHandler;
  v70 = registryCopy;
  v71 = controllerCopy;
  v74 = observerCopy;
  v23 = [(EDMessageRepositoryQueryHandler *)&v76 initWithQuery:queryCopy messagePersistence:persistenceCopy hookRegistry:registryCopy remindMeNotificationController:controllerCopy observer:observerCopy observationIdentifier:identifierCopy];
  if (v23)
  {
    v24 = MEMORY[0x1E699ADA0];
    predicate = [queryCopy predicate];
    mailboxPersistence = [persistenceCopy mailboxPersistence];
    v69 = [v24 threadScopeForPredicate:predicate withMailboxTypeResolver:mailboxPersistence];

    v27 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [EDInMemoryThreadQueryHandler initWithQuery:messagePersistence:hookRegistry:remindMeNotificationController:vipManager:searchProvider:observer:observationIdentifier:observationResumer:];
    }

    objc_storeStrong(v23 + 16, manager);
    objc_storeStrong(v23 + 17, provider);
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = *(v23 + 12);
    *(v23 + 12) = v28;

    v30 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
    v81[0] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
    v32 = *(v23 + 19);
    *(v23 + 19) = v31;

    v33 = [[EDUpdateThrottler alloc] initWithName:@"In-memory threads" delayInterval:resumerCopy resumable:0.0];
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
    predicate2 = [queryCopy predicate];
    mailboxPersistence2 = [persistenceCopy mailboxPersistence];
    v50 = [v47 mailboxScopeForPredicate:predicate2 withMailboxTypeResolver:mailboxPersistence2];
    v51 = *(v23 + 25);
    *(v23 + 25) = v50;

    v52 = objc_alloc(MEMORY[0x1E699AC58]);
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = [v52 initWithTitle:v54 delegate:v23];
    v56 = *(v23 + 26);
    *(v23 + 26) = v55;

    v57 = [EDInMemoryThreadCollection alloc];
    query = [v23 query];
    mailboxPersistence3 = [persistenceCopy mailboxPersistence];
    v60 = +[EDInMemoryThreadQueryHandler log];
    v61 = [(EDInMemoryThreadCollection *)v57 initWithQuery:query mailboxTypeResolver:mailboxPersistence3 dataSource:v23 delgate:v23 logClient:v60 limitedCache:1];
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v23 selector:sel__blockedSendersDidChange_ name:*MEMORY[0x1E699A6D8] object:0];
    vipManager = [v23 vipManager];
    [defaultCenter addObserver:v23 selector:sel__vipsDidChange_ name:*MEMORY[0x1E699ABE0] object:vipManager];
  }

  v67 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadQueryHandler.m" lineNumber:119 description:{@"%s can only be called from unit tests", "-[EDInMemoryThreadQueryHandler test_tearDown]"}];
  }

  [(EDInMemoryThreadQueryHandler *)self tearDown];
  scheduler = [(EDInMemoryThreadQueryHandler *)self scheduler];
  [scheduler performSyncBlock:&__block_literal_global_32];
}

- (EMMessageListItemQueryResultsObserver)resultsObserverIfNotPaused
{
  if ([(EDInMemoryThreadQueryHandler *)self isPaused])
  {
    resultsObserver = 0;
  }

  else
  {
    resultsObserver = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  }

  return resultsObserver;
}

- (void)prepareToSendUpdatesInCollection:(id)collection
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(EDInMemoryThreadQueryHandler *)self isInitialized]&& ![(EDInMemoryThreadQueryHandler *)self isPaused])
  {
    v9 = 0.0;
    updateThrottler = [(EDInMemoryThreadQueryHandler *)self updateThrottler];
    v5 = [updateThrottler unacknowledgedUpdatesCountAndTimeSinceLastAcknowledgement:&v9];

    v6 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      selfCopy2 = self;
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
        selfCopy2 = self;
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

- (void)didSendUpdatesInCollection:(id)collection
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(EDInMemoryThreadQueryHandler *)self isPaused])
  {
    [(EDInMemoryThreadQueryHandler *)self setHasChangesWhilePaused:1];
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Skipping change while paused", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    updateThrottler = [(EDInMemoryThreadQueryHandler *)self updateThrottler];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke;
    v20[3] = &unk_1E8252B00;
    objc_copyWeak(&v21, &location);
    v7 = [updateThrottler updateWithBlock:v20 unacknowledgedUpdatesCount:0];

    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadQueryHandler.m" lineNumber:259 description:@"Unable to get acknowledgement token for in-memory thread query handler"];
    }

    label = [v7 label];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_48;
    v17[3] = &unk_1E8250A90;
    selfCopy2 = self;
    v9 = label;
    v18 = v9;
    [v7 addInvocationBlock:v17];
    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: Sending update %{public}@", buf, 0x16u);
    }

    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__EDInMemoryThreadQueryHandler_didSendUpdatesInCollection___block_invoke_49;
    v15[3] = &unk_1E8250128;
    v15[4] = self;
    v16 = v7;
    v12 = v7;
    dispatch_sync(resultQueue, v15);

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
  resultsObserver = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
  resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDInMemoryThreadQueryHandler__refreshObserver__block_invoke;
  block[3] = &unk_1E8250720;
  v6 = resultsObserver;
  v9 = v6;
  v7 = observationIdentifier;
  v10 = v7;
  selfCopy = self;
  dispatch_sync(resultQueue, block);

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
  contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  if ((EFProtectedDataAvailable() & 1) != 0 || _os_feature_enabled_impl())
  {
    v4 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      messageQueryHelper = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
      v8 = 134218240;
      selfCopy2 = self;
      v10 = 2048;
      v11 = messageQueryHelper;
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
      selfCopy2 = self;
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

- (BOOL)_queryHelperIsCurrent:(id)current
{
  currentCopy = current;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EDInMemoryThreadQueryHandler__queryHelperIsCurrent___block_invoke;
  block[3] = &unk_1E8251C08;
  selfCopy = self;
  v11 = &v12;
  v9 = currentCopy;
  v6 = currentCopy;
  dispatch_sync(contentProtectionQueue, block);

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

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  if ((changed - 1) >= 2)
  {
    if (!changed)
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
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Content Protection => Locked", &v7, 0xCu);
  }

  contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  if (![(EDInMemoryThreadQueryHandler *)self isInitialized])
  {
    messageQueryHelper = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
    [(EDInMemoryThreadQueryHandler *)self setMessageQueryHelper:0];
    [messageQueryHelper cancel];
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
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Content Protection => Unlocked", &v6, 0xCu);
  }

  contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  if (![(EDInMemoryThreadQueryHandler *)self didCancel]&& ![(EDInMemoryThreadQueryHandler *)self isInitialized])
  {
    [(EDInMemoryThreadQueryHandler *)self _restartHelper];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)messageListItemForObjectID:(id)d error:(id *)error
{
  v4 = [(EDInMemoryThreadCollection *)self->_threadCollection messageListItemForObjectID:d error:error];

  return v4;
}

- (id)threadsAndMessagesForObjectIDs:(id)ds
{
  v3 = [(EDInMemoryThreadCollection *)self->_threadCollection threadsAndMessagesForObjectIDs:ds];

  return v3;
}

- (id)messagesForThread:(id)thread
{
  v3 = [(EDInMemoryThreadCollection *)self->_threadCollection messagesForThread:thread];

  return v3;
}

- (id)messagesInConversationIDs:(id)ds limit:(int64_t)limit
{
  dsCopy = ds;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  if (dispatch_get_specific(&kContentProtectionQueueKey))
  {
    v7 = [(EDInMemoryThreadQueryHandler *)self _messagesInConversationIDs:dsCopy limit:limit];
    v8 = v17[5];
    v17[5] = v7;
  }

  else
  {
    contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__EDInMemoryThreadQueryHandler_messagesInConversationIDs_limit___block_invoke;
    v12[3] = &unk_1E8252B50;
    v14 = &v16;
    v12[4] = self;
    v13 = dsCopy;
    limitCopy = limit;
    dispatch_sync(contentProtectionQueue, v12);
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

- (id)_messagesInConversationIDs:(id)ds limit:(int64_t)limit
{
  v14[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  messageQueryHelper = [(EDInMemoryThreadQueryHandler *)self messageQueryHelper];
  v9 = [(EDInMemoryThreadQueryHandler *)self _predicateForMessagesInConversations:dsCopy];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [messageQueryHelper messagesWithAdditionalPredicates:v10 limit:limit];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch
{
  v18 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  infoCopy = info;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v12 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      selfCopy = self;
      v16 = 1024;
      v17 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: Found %u messages.", &v14, 0x12u);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereAdded:messagesCopy searchInfo:infoCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector
{
  v19 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  collectorCopy = collector;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:messagesCopy])
  {
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Finished initial load.", buf, 0xCu);
    }

    [(EDInMemoryThreadQueryHandler *)self setIsInitialized:1];
    [(EDInMemoryThreadQueryHandler *)self setHasEverReconciledJournal:1];
    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __87__EDInMemoryThreadQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke;
    v14 = &unk_1E8250128;
    selfCopy2 = self;
    v16 = collectorCopy;
    dispatch_sync(resultQueue, &v11);

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

- (void)queryHelperDidFailInitialLoad:(id)load localSearchInfoCollector:(id)collector
{
  loadCopy = load;
  collectorCopy = collector;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:loadCopy])
  {
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EDInMemoryThreadQueryHandler queryHelperDidFailInitialLoad:localSearchInfoCollector:];
    }

    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__EDInMemoryThreadQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke;
    v10[3] = &unk_1E8250128;
    v10[4] = self;
    v11 = collectorCopy;
    dispatch_sync(resultQueue, v10);
  }
}

void __87__EDInMemoryThreadQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) resultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFailInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  infoCopy = info;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v11 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      selfCopy = self;
      v15 = 1024;
      v16 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Added %u messages", &v13, 0x12u);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereAdded:messagesCopy searchInfo:infoCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages
{
  v22 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helper])
  {
    if ([messagesCopy count] < 0xB)
    {
      v9 = [messagesCopy ef_mapSelector:sel_flagDescription];
    }

    else
    {
      v8 = [messagesCopy subarrayWithRange:{0, 10}];
      v9 = [v8 ef_mapSelector:sel_flagDescription];
    }

    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 1024;
      v19 = [messagesCopy count];
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
    [(EDInMemoryThreadCollection *)threadCollection messagesWereChanged:messagesCopy forKeyPaths:v13 deleted:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  pathsCopy = paths;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v11 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      selfCopy = self;
      v15 = 2114;
      v16 = pathsCopy;
      v17 = 1024;
      v18 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Key paths %{public}@ changed for %u messages", &v13, 0x1Cu);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereChanged:messagesCopy forKeyPaths:pathsCopy deleted:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper objectIDDidChangeForMessage:(id)message oldObjectID:(id)d oldConversationID:(int64_t)iD
{
  v24 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messageCopy = message;
  dCopy = d;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    itemID = [messageCopy itemID];
    collectionItemID = [dCopy collectionItemID];
    v15 = [itemID isEqual:collectionItemID];

    if (v15)
    {
      v16 = +[EDInMemoryThreadQueryHandler log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        itemID2 = [messageCopy itemID];
        LODWORD(__b[0]) = 134218754;
        *(__b + 4) = self;
        WORD2(__b[1]) = 2112;
        *(&__b[1] + 6) = itemID2;
        HIWORD(__b[2]) = 2112;
        __b[3] = messageCopy;
        LOWORD(__b[4]) = 2112;
        *(&__b[4] + 2) = dCopy;
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
      [(EDInMemoryThreadCollection *)self->_threadCollection objectIDDidChangeForMessage:messageCopy oldObjectID:dCopy oldConversationID:iD];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper didDeleteMessages:(id)messages
{
  v14 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      selfCopy = self;
      v12 = 1024;
      v13 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Deleted %u messages", &v10, 0x12u);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection messagesWereChanged:messagesCopy forKeyPaths:0 deleted:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper conversationIDDidChangeForMessages:(id)messages fromConversationID:(int64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218496;
      selfCopy = self;
      v14 = 2048;
      dCopy = d;
      v16 = 1024;
      v17 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: ConversationIDs changed from %lld for %u messages", &v12, 0x1Cu);
    }

    [(EDInMemoryThreadCollection *)self->_threadCollection conversationIDDidChangeForMessages:messagesCopy fromConversationID:d];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d
{
  v21 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v10 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      selfCopy = self;
      v17 = 2048;
      dCopy = d;
      v19 = 1024;
      v20 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: BusinessIDs changed from %lld for %u messages", buf, 0x1Cu);
    }

    threadCollection = self->_threadCollection;
    v14 = *MEMORY[0x1E699A838];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(EDInMemoryThreadCollection *)threadCollection messagesWereChanged:messagesCopy forKeyPaths:v12 deleted:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper conversationNotificationLevelDidChangeForConversation:(int64_t)conversation conversationID:(int64_t)d
{
  helperCopy = helper;
  if (d)
  {
    if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:helperCopy])
    {
      [(EDInMemoryThreadCollection *)self->_threadCollection conversationNotificationLevelDidChangeForConversation:conversation conversationID:d];
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

- (void)queryHelperDidFinishRemoteSearch:(id)search
{
  v11 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:searchCopy])
  {
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Helper did finish remote search.", buf, 0xCu);
    }

    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__EDInMemoryThreadQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_sync(resultQueue, block);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __65__EDInMemoryThreadQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observerDidFinishRemoteSearch:v2];
}

- (void)queryHelperNeedsRestart:(id)restart
{
  v11 = *MEMORY[0x1E69E9840];
  restartCopy = restart;
  if ([(EDInMemoryThreadQueryHandler *)self _queryHelperIsCurrent:restartCopy])
  {
    v5 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Helper needs restart.", buf, 0xCu);
    }

    contentProtectionQueue = [(EDInMemoryThreadQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__EDInMemoryThreadQueryHandler_queryHelperNeedsRestart___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(contentProtectionQueue, block);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)mailboxesInCollection:(id)collection
{
  mailboxes = [(EDMessageRepositoryQueryHandler *)self mailboxes];

  return mailboxes;
}

- (id)_predicateForMessagesInConversations:(id)conversations
{
  conversationsCopy = conversations;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:*MEMORY[0x1E699A868]];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:conversationsCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:10 options:0];

  return v7;
}

- (id)collection:(id)collection messagesInConversationIDs:(id)ds limit:(int64_t)limit
{
  v5 = [(EDInMemoryThreadQueryHandler *)self messagesInConversationIDs:ds limit:limit];

  return v5;
}

- (void)assertCorrectSchedulerForCollection:(id)collection
{
  scheduler = [(EDInMemoryThreadQueryHandler *)self scheduler];
  [scheduler assertIsExecuting:1];
}

- (void)collection:(id)collection notifyOfOldestThreadsByMailboxObjectIDs:(id)ds
{
  dsCopy = ds;
  resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__EDInMemoryThreadQueryHandler_collection_notifyOfOldestThreadsByMailboxObjectIDs___block_invoke;
  v8[3] = &unk_1E8250128;
  v8[4] = self;
  v9 = dsCopy;
  v7 = dsCopy;
  dispatch_sync(resultQueue, v8);
}

void __83__EDInMemoryThreadQueryHandler_collection_notifyOfOldestThreadsByMailboxObjectIDs___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserverIfNotPaused];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedOldestItemsUpdatedForMailboxes:*(a1 + 40)];
}

- (void)collection:(id)collection notifyReplacedExistingObjectID:(id)d newObjectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EDInMemoryThreadQueryHandler_collection_notifyReplacedExistingObjectID_newObjectID___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v13 = dCopy;
  v14 = iDCopy;
  v10 = iDCopy;
  v11 = dCopy;
  dispatch_sync(resultQueue, block);
}

void __86__EDInMemoryThreadQueryHandler_collection_notifyReplacedExistingObjectID_newObjectID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserverIfNotPaused];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 replacedExistingObjectID:*(a1 + 40) withNewObjectID:*(a1 + 48)];
}

- (BOOL)collection:(id)collection reportChanges:(id)changes reloadSummaries:(BOOL)summaries
{
  summariesCopy = summaries;
  v31 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v8 = [changesCopy count];
  if (v8)
  {
    if (summariesCopy)
    {
      reloadSummaryHelper = [(EDInMemoryThreadQueryHandler *)self reloadSummaryHelper];
      mailboxScope = [(EDInMemoryThreadQueryHandler *)self mailboxScope];
      v11 = [reloadSummaryHelper summariesToReloadForChanges:changesCopy mailboxScope:mailboxScope];

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

    allKeys = [changesCopy allKeys];
    [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Changing objectIDs" objectIDs:allKeys];

    resultsObserverIfNotPaused = [(EDInMemoryThreadQueryHandler *)self resultsObserverIfNotPaused];
    if (resultsObserverIfNotPaused)
    {
      resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__EDInMemoryThreadQueryHandler_collection_reportChanges_reloadSummaries___block_invoke;
      block[3] = &unk_1E8250720;
      v23 = resultsObserverIfNotPaused;
      selfCopy = self;
      v25 = changesCopy;
      dispatch_sync(resultQueue, block);
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__EDInMemoryThreadQueryHandler_collection_reportChanges_reloadSummaries___block_invoke_2;
      v21[3] = &unk_1E8252B78;
      v21[4] = self;
      [changesCopy enumerateKeysAndObjectsUsingBlock:v21];
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

- (BOOL)collection:(id)collection reportDeletes:(id)deletes
{
  deletesCopy = deletes;
  v6 = [deletesCopy count];
  if (v6)
  {
    array = [deletesCopy array];
    v8 = [array ef_map:&__block_literal_global_62];

    [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Deleting objectIDs" objectIDs:v8];
    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__EDInMemoryThreadQueryHandler_collection_reportDeletes___block_invoke_2;
    v12[3] = &unk_1E8250128;
    v12[4] = self;
    v13 = v8;
    v10 = v8;
    dispatch_sync(resultQueue, v12);
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

- (void)collection:(id)collection didMergeInThreadsForMove:(BOOL)move newObjectIDs:(id)ds existingObjectID:(id)d searchInfo:(id)info hasChanges:(BOOL *)changes
{
  moveCopy = move;
  dsCopy = ds;
  dCopy = d;
  infoCopy = info;
  resultsObserverIfNotPaused = [(EDInMemoryThreadQueryHandler *)self resultsObserverIfNotPaused];
  if (moveCopy)
  {
    if (dCopy)
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsChangesWithMessage:@"Moving objectIDs" newObjectIDs:dsCopy beforeExistingObjectID:dCopy];
    }

    else
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Moving objectIDs to end of list:" objectIDs:dsCopy];
    }

    resultQueue = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke;
    block[3] = &unk_1E8251C58;
    v18 = &v35;
    block[4] = self;
    v35 = dsCopy;
    v19 = &v36;
    v20 = v37;
    v36 = dCopy;
    v37[0] = resultsObserverIfNotPaused;
    v37[1] = changes;
    v21 = dCopy;
    v22 = resultsObserverIfNotPaused;
    v23 = dsCopy;
    dispatch_sync(resultQueue, block);
  }

  else
  {
    if (dCopy)
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsChangesWithMessage:@"Adding objectIDs" newObjectIDs:dsCopy beforeExistingObjectID:dCopy];
    }

    else
    {
      [(EDInMemoryThreadQueryHandler *)self logThreadObjectIDsWithMessage:@"Adding objectIDs to end of list" objectIDs:dsCopy];
    }

    resultQueue2 = [(EDInMemoryThreadQueryHandler *)self resultQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __120__EDInMemoryThreadQueryHandler_collection_didMergeInThreadsForMove_newObjectIDs_existingObjectID_searchInfo_hasChanges___block_invoke_3;
    v28[3] = &unk_1E8252BE8;
    v18 = &v29;
    v28[4] = self;
    v29 = dsCopy;
    v19 = &v30;
    v20 = &v31;
    v30 = infoCopy;
    v31 = resultsObserverIfNotPaused;
    v32 = dCopy;
    changesCopy = changes;
    v25 = dCopy;
    v26 = resultsObserverIfNotPaused;
    v27 = dsCopy;
    dispatch_sync(resultQueue2, v28);

    resultQueue = v32;
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

- (void)_notifyObserversOfMovedObjectIDs:(id)ds before:(id)before notifyBlock:(id)block
{
  v32[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  beforeCopy = before;
  blockCopy = block;
  v26 = beforeCopy;
  v27 = dsCopy;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{dsCopy, 0}];
  v28 = *MEMORY[0x1E699A800];
  v13 = v26;
  while ([v12 count])
  {
    lastObject = [v12 lastObject];
    [v12 removeLastObject];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __84__EDInMemoryThreadQueryHandler__notifyObserversOfMovedObjectIDs_before_notifyBlock___block_invoke;
    v30[3] = &unk_1E8252C10;
    v30[4] = self;
    v15 = [lastObject ef_groupBy:v30];
    v16 = [v15 ef_mapValues:&__block_literal_global_83];

    if ([lastObject count] < 2)
    {
      goto LABEL_4;
    }

    v19 = [v16 count];
    if (v19 == 1)
    {
      allValues = [v16 allValues];
      firstObject = [allValues firstObject];
      v20 = [firstObject count];
      if (v20 == [v27 count])
      {

LABEL_4:
        v31 = v28;
        v32[0] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        blockCopy[2](blockCopy, lastObject, v13, v17);
        firstObject2 = [lastObject firstObject];

        v13 = firstObject2;
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

    v23 = [lastObject count];
    v24 = [lastObject ef_prefix:v23 >> 1];
    [v12 addObject:v24];

    v17 = [lastObject ef_suffix:v23 - (v23 >> 1)];
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

- (id)_extraInfoPrecachedThreadsForInitialObjectIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  query = [(EDMessageRepositoryQueryHandler *)self query];
  targetClassOptions = [query targetClassOptions];
  v7 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9E8]];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [dsCopy ef_prefix:unsignedIntegerValue];

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
      ef_publicDescription = [v19[5] ef_publicDescription];
      [(EDInMemoryThreadQueryHandler *)self _extraInfoPrecachedThreadsForInitialObjectIDs:ef_publicDescription, buf, v12];
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

- (id)_messageQueryFromThreadsQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc(MEMORY[0x1E699AE28]);
  v5 = objc_opt_class();
  predicate = [queryCopy predicate];
  sortDescriptors = [queryCopy sortDescriptors];
  suggestion = [queryCopy suggestion];
  limit = [queryCopy limit];
  queryOptions = [queryCopy queryOptions];
  targetClassOptions = [queryCopy targetClassOptions];
  label = [queryCopy label];
  v13 = [v4 initWithTargetClass:v5 predicate:predicate sortDescriptors:sortDescriptors suggestion:suggestion limit:limit queryOptions:queryOptions targetClassOptions:targetClassOptions label:label];

  return v13;
}

- (id)_extraInfoForThreadObjectIDs:(id)ds searchInfo:(id)info isMove:(BOOL)move
{
  moveCopy = move;
  v55 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  infoCopy = info;
  v36 = dsCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __79__EDInMemoryThreadQueryHandler__extraInfoForThreadObjectIDs_searchInfo_isMove___block_invoke;
  v50[3] = &unk_1E8252C60;
  v50[4] = self;
  v13 = [dsCopy ef_groupBy:v50];
  v38 = [v13 ef_mapValues:&__block_literal_global_92];

  if ([v38 count])
  {
    allValues = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = v38;
      _os_log_impl(&dword_1C61EF000, allValues, OS_LOG_TYPE_DEFAULT, "Returning section info %{public}@", buf, 0xCu);
    }

    [dictionary setObject:v38 forKeyedSubscript:*MEMORY[0x1E699A800]];
  }

  if (moveCopy)
  {
    v14 = [v38 count];
    if (v14 == 1)
    {
      allValues = [v38 allValues];
      firstObject = [allValues firstObject];
      v15 = [firstObject count];
      if (v15 == [dsCopy count])
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

    allValues = [MEMORY[0x1E696AAA8] currentHandler];
    [allValues handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadQueryHandler.m" lineNumber:767 description:@"We don't allow moving multiple items to different sections"];
    goto LABEL_14;
  }

LABEL_15:
  instantAnswer = [infoCopy instantAnswer];
  [dictionary setObject:instantAnswer forKeyedSubscript:*MEMORY[0x1E699A7E8]];

  snippetsByObjectID = [infoCopy snippetsByObjectID];
  v20 = [snippetsByObjectID count];

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
          snippetMessageObjectIDsByConversation = [infoCopy snippetMessageObjectIDsByConversation];
          v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v24, "conversationID")}];
          v27 = [snippetMessageObjectIDsByConversation objectForKeyedSubscript:v26];

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
                snippetsByObjectID2 = [infoCopy snippetsByObjectID];
                v33 = [snippetsByObjectID2 objectForKeyedSubscript:v31];
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

    [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x1E699A7D8]];
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (id)_extraInfoFromLocalSearchInfoCollector:(id)collector
{
  v24 = *MEMORY[0x1E69E9840];
  collectorCopy = collector;
  if (collectorCopy)
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
    v7 = [collectorCopy localSearchInfoForConversationIDs:v15[5]];
    v8 = +[EDInMemoryThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
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

- (void)logThreadObjectIDsWithMessage:(id)message objectIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dsCopy = ds;
  if ([dsCopy count] >= 0xB)
  {
    v8 = [dsCopy subarrayWithRange:{0, 10}];

    dsCopy = v8;
  }

  v9 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218754;
    selfCopy = self;
    v13 = 2114;
    v14 = messageCopy;
    v15 = 2048;
    v16 = [dsCopy count];
    v17 = 2114;
    v18 = dsCopy;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ : %lu : %{public}@ ", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)logThreadObjectIDsChangesWithMessage:(id)message newObjectIDs:(id)ds beforeExistingObjectID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dsCopy = ds;
  dCopy = d;
  if ([dsCopy count] >= 0xB)
  {
    v11 = [dsCopy subarrayWithRange:{0, 10}];

    dsCopy = v11;
  }

  v12 = +[EDInMemoryThreadQueryHandler log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134219010;
    selfCopy = self;
    v16 = 2114;
    v17 = messageCopy;
    v18 = 2048;
    v19 = [dsCopy count];
    v20 = 2114;
    v21 = dCopy;
    v22 = 2114;
    v23 = dsCopy;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ : %lu before existing: %{public}@ : %{public}@", &v14, 0x34u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)labelForStateCapture
{
  query = [(EDMessageRepositoryQueryHandler *)self query];
  label = [query label];

  return label;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)string
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  scheduler = [(EDInMemoryThreadQueryHandler *)self scheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__EDInMemoryThreadQueryHandler_itemIDsForStateCaptureWithErrorString___block_invoke;
  v8[3] = &unk_1E8251C30;
  v8[4] = self;
  v8[5] = &v9;
  [scheduler performSyncBlock:v8];

  if (string)
  {
    *string = 0;
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