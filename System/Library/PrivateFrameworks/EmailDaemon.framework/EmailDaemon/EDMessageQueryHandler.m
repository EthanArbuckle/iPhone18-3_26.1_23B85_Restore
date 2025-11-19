@interface EDMessageQueryHandler
+ (OS_os_log)log;
+ (id)findMessagesByPreviousObjectIDForAddedMessages:(id)a3 messageSource:(id)a4 comparator:(id)a5;
- (BOOL)_hasUrgentSectionPredicateForQuery:(id)a3;
- (BOOL)_queryHelperIsCurrent:(id)a3;
- (BOOL)start;
- (EDMessageQueryHandler)initWithQuery:(id)a3 messagePersistence:(id)a4 hookRegistry:(id)a5 remindMeNotificationController:(id)a6 searchProvider:(id)a7 observer:(id)a8 observationIdentifier:(id)a9 observationResumer:(id)a10;
- (id)_createChangesForMessagesWithConversationID:(int64_t)a3 block:(id)a4;
- (id)_extraInfoForMessages:(id)a3 messagesToPrecache:(id)a4 outObjectIDs:(id *)a5 searchInfo:(id)a6;
- (id)_extraInfoFromLocalSearchInfoCollector:(id)a3;
- (id)_getResultsObserver;
- (id)_messageItemIDsBySectionFromMessages:(id)a3;
- (id)_messagesBeforeMessageWithObjectID:(id)a3 fromMessagesFromQueryHelper:(id)a4 afterRequestedMessage:(id *)a5;
- (id)_messagesForInitialBatchWithMessagesFromQueryHelper:(id)a3 requestedMessage:(id *)a4;
- (id)_objectIDsAndUnreadObjectIDsFromMessages:(id)a3 unreadObjectIDs:(id *)a4;
- (id)_oldestItemQueryForMailbox:(id)a3;
- (id)_queryWithUpdatedSortDescriptorFromQuery:(id)a3;
- (id)_requestedItemObjectID;
- (id)_sortMessagesBySections:(id)a3;
- (id)findMessagesByPreviousObjectIDForAddedMessages:(id)a3 helper:(id)a4;
- (id)itemIDsForStateCaptureWithErrorString:(id *)a3;
- (id)labelForStateCapture;
- (void)_contentProtectionChangedToLocked;
- (void)_contentProtectionChangedToUnlocked;
- (void)_createHelper;
- (void)_initializeOldestMessagesByMailbox;
- (void)_oldestMessagesByMailboxObjectIDsWasUpdated;
- (void)_oldestMessagesNeedUpdate;
- (void)_reportFoundMessages:(id)a3 before:(id)a4 messagesToPrecache:(id)a5 searchInfo:(id)a6;
- (void)_restartHelper;
- (void)_updateOldestMessagesForMailboxes:(id)a3 cancelationToken:(id)a4;
- (void)cancel;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)dealloc;
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
@end

@implementation EDMessageQueryHandler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EDMessageQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_64 != -1)
  {
    dispatch_once(&log_onceToken_64, block);
  }

  v2 = log_log_64;

  return v2;
}

void __28__EDMessageQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_64;
  log_log_64 = v1;
}

- (EDMessageQueryHandler)initWithQuery:(id)a3 messagePersistence:(id)a4 hookRegistry:(id)a5 remindMeNotificationController:(id)a6 searchProvider:(id)a7 observer:(id)a8 observationIdentifier:(id)a9 observationResumer:(id)a10
{
  v75[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v66 = a7;
  v70 = a8;
  v71 = a9;
  v17 = a10;
  if ([(EDMessageQueryHandler *)self _hasUrgentSectionPredicateForQuery:v16])
  {
    v18 = [(EDMessageQueryHandler *)self _queryWithUpdatedSortDescriptorFromQuery:v16];

    v16 = v18;
  }

  v74.receiver = self;
  v74.super_class = EDMessageQueryHandler;
  v19 = [(EDMessageRepositoryQueryHandler *)&v74 initWithQuery:v16 messagePersistence:v67 hookRegistry:v68 remindMeNotificationController:v69 observer:v70 observationIdentifier:v71];
  v20 = v19;
  v21 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_searchProvider, a7);
    if (v17)
    {
      objc_storeStrong(&v20->_observerResumer, a10);
      v22 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EmailDaemon.EDMessageQueryHandler.resumeClientScheduler"];
      resumeClientScheduler = v21->_resumeClientScheduler;
      v21->_resumeClientScheduler = v22;

      v24 = objc_alloc(MEMORY[0x1E699B7A8]);
      v25 = v21->_resumeClientScheduler;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __167__EDMessageQueryHandler_initWithQuery_messagePersistence_hookRegistry_remindMeNotificationController_searchProvider_observer_observationIdentifier_observationResumer___block_invoke;
      v72[3] = &unk_1E8254CC8;
      v73 = v17;
      v26 = [v24 initWithTimeInterval:v25 scheduler:0 startAfter:v72 block:1.0];
      resumeClientDebouncer = v21->_resumeClientDebouncer;
      v21->_resumeClientDebouncer = v26;
    }

    v28 = MEMORY[0x1E699B978];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.%p", objc_opt_class(), v21];
    v30 = [v28 serialDispatchQueueSchedulerWithName:v29 qualityOfService:25];
    scheduler = v21->_scheduler;
    v21->_scheduler = v30;

    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_create("com.apple.email.EDMessageQueryHandler.contentProtection", v32);
    contentProtectionQueue = v20->_contentProtectionQueue;
    v20->_contentProtectionQueue = v33;

    dispatch_queue_set_specific(v20->_contentProtectionQueue, &kContentProtectionQueueKey_0, v21, 0);
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("com.apple.email.EDMessageQueryHandler.result", v35);
    resultQueue = v21->_resultQueue;
    v21->_resultQueue = v36;

    v38 = objc_alloc(MEMORY[0x1E699AC58]);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v38 initWithTitle:v40 delegate:v21];
    stateCapturer = v21->_stateCapturer;
    v21->_stateCapturer = v41;

    v43 = MEMORY[0x1E699ADA0];
    v44 = [(EDMessageRepositoryQueryHandler *)v21 query];
    v45 = [v44 predicate];
    v46 = [v43 predicateFromPredicate:v45 ignoringKeyPaths:MEMORY[0x1E695E0F0]];

    v47 = MEMORY[0x1E699ADA0];
    v75[0] = *MEMORY[0x1E699A8D8];
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    v49 = [v47 predicateFromPredicate:v46 ignoringKeyPaths:v48];

    if (([v46 isEqual:v49] & 1) == 0)
    {
      v21->_hasUrgentPredicate = 1;
    }

    v50 = [EDSectionQueryItemHelper sectionQueryItemHelperWithQuery:v16];
    sectionQueryHelper = v20->_sectionQueryHelper;
    v20->_sectionQueryHelper = v50;

    if (v20->_sectionQueryHelper)
    {
      v52 = [(EDMessageRepositoryQueryHandler *)v21 query];
      v53 = [v52 sortDescriptors];
      v54 = EFComparatorFromSortDescriptors();
      v55 = _Block_copy(v54);
    }

    else
    {
      v55 = 0;
    }

    v56 = [(EDSectionQueryItemHelper *)v21->_sectionQueryHelper comparatorForItemComparator:v55];
    v57 = v56;
    if (!v56)
    {
      v56 = v55;
    }

    v58 = _Block_copy(v56);
    comparator = v21->_comparator;
    v21->_comparator = v58;

    if (([v16 queryOptions] & 0x20) != 0)
    {
      v60 = objc_alloc(MEMORY[0x1E699B7F0]);
      v61 = [[_EDMessageQueryHandlerList alloc] initWithQuery:v16];
      v62 = [v60 initWithObject:v61];
      messageList = v21->_messageList;
      v21->_messageList = v62;
    }
  }

  v64 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)start
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = EDMessageQueryHandler;
  v3 = [(EDMessageRepositoryQueryHandler *)&v13 start];
  v4 = +[EDMessageQueryHandler log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218242;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Starting with query '%@'", buf, 0x16u);
    }

    v12.receiver = self;
    v12.super_class = EDMessageQueryHandler;
    [(EDMessageRepositoryQueryHandler *)&v12 start];
    v7 = [(EDMessageQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__EDMessageQueryHandler_start__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(v7, block);

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v8 = [(EDMessageQueryHandler *)self contentProtectionQueue];
      EFRegisterContentProtectionObserver();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "%p: Ignoring subsequent call to -start.", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __30__EDMessageQueryHandler_start__block_invoke(uint64_t a1)
{
  if ((EFProtectedDataAvailable() & 1) != 0 || (result = _os_feature_enabled_impl(), result))
  {
    v3 = *(a1 + 32);

    return [v3 _createHelper];
  }

  return result;
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = EDMessageQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v7 cancel];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__EDMessageQueryHandler_cancel__block_invoke;
  aBlock[3] = &unk_1E8250260;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (dispatch_get_specific(&kContentProtectionQueueKey_0))
  {
    v3[2](v3);
  }

  else
  {
    v4 = [(EDMessageQueryHandler *)self contentProtectionQueue];
    dispatch_sync(v4, v3);
  }

  v5 = EFAtomicObjectRelease();
  [v5 cancel];
}

void __31__EDMessageQueryHandler_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidCancel:1];
  v2 = [*(a1 + 32) currentQueryHelper];
  [v2 cancel];
}

- (void)dealloc
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  v3.receiver = self;
  v3.super_class = EDMessageQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v3 dealloc];
}

- (BOOL)_hasUrgentSectionPredicateForQuery:(id)a3
{
  v3 = [a3 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];

  v5 = [v4 allValues];
  v6 = [v5 ef_any:&__block_literal_global_57];

  return v6;
}

- (id)_queryWithUpdatedSortDescriptorFromQuery:(id)a3
{
  v3 = a3;
  v4 = [v3 sortDescriptors];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E699A900] ascending:0];
  [v5 insertObject:v6 atIndex:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__EDMessageQueryHandler__queryWithUpdatedSortDescriptorFromQuery___block_invoke;
  v10[3] = &unk_1E8254CF8;
  v7 = v5;
  v11 = v7;
  v8 = [v3 queryWithBuilder:v10];

  return v8;
}

- (id)_getResultsObserver
{
  v3 = [(EDMessageQueryHandler *)self resumeClientDebouncer];
  v4 = [MEMORY[0x1E695DFB0] null];
  [v3 debounceResult:v4];

  return [(EDMessageRepositoryQueryHandler *)self resultsObserver];
}

- (void)_restartHelper
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(EDMessageQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(EDMessageQueryHandler *)self currentQueryHelper];
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: (Re-)starting the helper (old = %p).", &v7, 0x16u);
  }

  [(EDMessageQueryHandler *)self _createHelper];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createHelper
{
  OUTLINED_FUNCTION_2();
  *v1 = 134218240;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v3;
  _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "%p: Created helper %p", v4, 0x16u);
}

void __38__EDMessageQueryHandler__createHelper__block_invoke(uint64_t a1)
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
  v5 = [(EDMessageQueryHandler *)self contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EDMessageQueryHandler__queryHelperIsCurrent___block_invoke;
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

void __47__EDMessageQueryHandler__queryHelperIsCurrent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentQueryHelper];
  *(*(*(a1 + 48) + 8) + 24) = v2 == v3;
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      [(EDMessageQueryHandler *)self _contentProtectionChangedToUnlocked:0];
    }
  }

  else
  {
    [(EDMessageQueryHandler *)self _contentProtectionChangedToLocked];
  }
}

- (void)_contentProtectionChangedToLocked
{
  v4 = [(EDMessageQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v4);

  if (![(EDMessageQueryHandler *)self isInitialized])
  {
    v5 = [(EDMessageQueryHandler *)self currentQueryHelper];
    [(EDMessageQueryHandler *)self setCurrentQueryHelper:0];
    v3 = EFAtomicObjectRelease();
    [v3 cancel];
    [v5 cancel];
  }
}

- (void)_contentProtectionChangedToUnlocked
{
  v3 = [(EDMessageQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(v3);

  if (![(EDMessageQueryHandler *)self didCancel]&& ![(EDMessageQueryHandler *)self isInitialized])
  {

    [(EDMessageQueryHandler *)self _restartHelper];
  }
}

- (id)_objectIDsAndUnreadObjectIDsFromMessages:(id)a3 unreadObjectIDs:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v18;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectID];
        [v5 addObject:v12];
        v13 = [v11 flags];
        v14 = [v13 read];

        if ((v14 & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if (a4)
  {
    v15 = v6;
    *a4 = v6;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_requestedItemObjectID
{
  v2 = [(EDMessageRepositoryQueryHandler *)self query];
  v3 = [v2 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699A9E0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_messagesForInitialBatchWithMessagesFromQueryHelper:(id)a3 requestedMessage:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(EDMessageQueryHandler *)self _requestedItemObjectID];
  if (v7)
  {
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v7;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Looking for requested message with objectID: %{public}@", buf, 0xCu);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __94__EDMessageQueryHandler__messagesForInitialBatchWithMessagesFromQueryHelper_requestedMessage___block_invoke;
    v26[3] = &unk_1E8250858;
    v9 = v7;
    v27 = v9;
    v10 = [v6 ef_firstObjectPassingTest:v26];
    if (v10)
    {
      [(EDMessageQueryHandler *)self setDidFindRequestedItemForInitialBatch:1];
      v11 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 objectID];
        *buf = 138543362;
        v29 = v12;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Found requested message in initial batch: objectID=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v14 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v9;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Requested message not in initial batch, fetching separately: %{public}@", buf, 0xCu);
      }

      v15 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
      v30[0] = v9;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v17 = [v15 messagesForMessageObjectIDs:v16 missedMessageObjectIDs:0];
      v10 = [v17 firstObject];

      if (v10)
      {
        v18 = [v10 objectID];
        v19 = [v18 isEqual:v9];

        if (v19)
        {
          v20 = +[EDMessageQueryHandler log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v10 objectID];
            *buf = 138543362;
            v29 = v21;
            _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Successfully fetched requested message: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v20 = +[EDMessageQueryHandler log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [v10 objectID];
            objc_claimAutoreleasedReturnValue();
            [EDMessageQueryHandler _messagesForInitialBatchWithMessagesFromQueryHelper:requestedMessage:];
          }
        }

        v22 = [v6 mutableCopy];
        [v22 addObject:v10];
        v11 = v6;
        v6 = v22;
      }

      else
      {
        v11 = +[EDMessageQueryHandler log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [EDMessageQueryHandler _messagesForInitialBatchWithMessagesFromQueryHelper:v9 requestedMessage:v11];
        }

        v10 = 0;
      }
    }

    if (a4)
    {
      v23 = v10;
      *a4 = v10;
    }

    v13 = v6;
  }

  else
  {
    [(EDMessageQueryHandler *)self setDidFindRequestedItemForInitialBatch:1];
    if (a4)
    {
      *a4 = 0;
    }

    v13 = v6;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __94__EDMessageQueryHandler__messagesForInitialBatchWithMessagesFromQueryHelper_requestedMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_messagesBeforeMessageWithObjectID:(id)a3 fromMessagesFromQueryHelper:(id)a4 afterRequestedMessage:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__EDMessageQueryHandler__messagesBeforeMessageWithObjectID_fromMessagesFromQueryHelper_afterRequestedMessage___block_invoke;
  v14[3] = &unk_1E8254D20;
  v9 = v7;
  v15 = v9;
  v10 = [v8 indexOfObjectPassingTest:v14];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      *a5 = 0;
    }

    v11 = v8;
  }

  else
  {
    if (a5)
    {
      *a5 = [v8 ef_suffix:{objc_msgSend(v8, "count") + ~v10}];
    }

    v11 = [v8 ef_prefix:v10];
  }

  v12 = v11;

  return v12;
}

uint64_t __110__EDMessageQueryHandler__messagesBeforeMessageWithObjectID_fromMessagesFromQueryHelper_afterRequestedMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_extraInfoForMessages:(id)a3 messagesToPrecache:(id)a4 outObjectIDs:(id *)a5 searchInfo:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v33 = a4;
  v10 = a6;
  v39 = 0;
  v32 = v9;
  v34 = [(EDMessageQueryHandler *)self _objectIDsAndUnreadObjectIDsFromMessages:v9 unreadObjectIDs:&v39];
  v30 = v39;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = v11;
  if (v30)
  {
    [v11 setObject:v30 forKeyedSubscript:*MEMORY[0x1E699A7E0]];
  }

  if ([v33 count])
  {
    [v12 setObject:v33 forKeyedSubscript:*MEMORY[0x1E699A7F0]];
  }

  v31 = [(EDMessageQueryHandler *)self _messageItemIDsBySectionFromMessages:v32];
  if ([v31 count])
  {
    v13 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v42 = v31;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Returning section info %{public}@", buf, 0xCu);
    }

    [v12 setObject:v31 forKeyedSubscript:*MEMORY[0x1E699A800]];
  }

  v14 = [v10 instantAnswer];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E699A7E8]];

  v15 = [v10 snippetsByObjectID];
  v16 = [v15 count];

  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v34;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v19)
    {
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          v23 = [v10 snippetsByObjectID];
          v24 = [v23 objectForKeyedSubscript:v22];
          [v17 setObject:v24 forKeyedSubscript:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v19);
    }

    [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x1E699A7D8]];
  }

  if (v29)
  {
    v25 = v34;
    *v29 = v34;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_extraInfoFromLocalSearchInfoCollector:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__26;
    v17 = __Block_byref_object_dispose__26;
    v18 = 0;
    v5 = [(EDMessageQueryHandler *)self messageList];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__EDMessageQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke;
    v12[3] = &unk_1E8254D48;
    v12[4] = &v13;
    [v5 performWhileLocked:v12];

    v6 = [v4 localSearchInfoForMessageObjectIDs:v14[5]];
    v7 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v20 = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Returning local search info %{public}@", buf, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v8 initWithObjectsAndKeys:{v6, *MEMORY[0x1E699A808], 0}];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __64__EDMessageQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 allMessageObjectIDs];
  v4 = [v3 ef_prefix:*MEMORY[0x1E69ADD58]];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_messageItemIDsBySectionFromMessages:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__EDMessageQueryHandler__messageItemIDsBySectionFromMessages___block_invoke;
  v6[3] = &unk_1E8254D70;
  v6[4] = self;
  v3 = [a3 ef_groupBy:v6];
  v4 = [v3 ef_mapValues:&__block_literal_global_41];

  return v4;
}

id __62__EDMessageQueryHandler__messageItemIDsBySectionFromMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sectionQueryHelper];
  v5 = [v4 sectionIdentifierForItem:v3];

  return v5;
}

id __62__EDMessageQueryHandler__messageItemIDsBySectionFromMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_objectID];
  v3 = [v2 ef_mapSelector:sel_collectionItemID];

  return v3;
}

- (id)_sortMessagesBySections:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(EDMessageQueryHandler *)self sectionQueryHelper];
        [v9 updateSectionForItem:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = [(EDMessageQueryHandler *)self comparator];
  if (v10)
  {
    v11 = [v4 sortedArrayWithOptions:16 usingComparator:v10];
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)queryHelper:(id)a3 didFindMessages:(id)a4 searchInfo:(id)a5 forInitialBatch:(BOOL)a6
{
  v6 = a6;
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v10])
  {
    v13 = [(EDMessageQueryHandler *)self messageList];

    if (v13)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v14 = [(EDMessageQueryHandler *)self messageList];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __80__EDMessageQueryHandler_queryHelper_didFindMessages_searchInfo_forInitialBatch___block_invoke;
      v25[3] = &unk_1E8254D48;
      v25[4] = &v26;
      [v14 performWhileLocked:v25];

      if (*(v27 + 24) == 1)
      {
        [(EDMessageQueryHandler *)self queryHelper:v10 didAddMessages:v11 searchInfo:v12];
        _Block_object_dispose(&v26, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(&v26, 8);
    }

    v15 = [(EDMessageQueryHandler *)self _sortMessagesBySections:v11];

    if (v6)
    {
      v24 = 0;
      v16 = [(EDMessageQueryHandler *)self _messagesForInitialBatchWithMessagesFromQueryHelper:v15 requestedMessage:&v24];
      v17 = v24;

      if (v17)
      {
        v30[0] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      }

      else
      {
        v18 = 0;
      }

      [(EDMessageQueryHandler *)self _reportFoundMessages:v16 before:0 messagesToPrecache:v18 searchInfo:v12];
    }

    else
    {
      if ([(EDMessageQueryHandler *)self didFindRequestedItemForInitialBatch])
      {
        v16 = v15;
        [(EDMessageQueryHandler *)self _reportFoundMessages:v15 before:0 messagesToPrecache:0 searchInfo:v12];
LABEL_19:
        v19 = [(EDMessageQueryHandler *)self messageList];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __80__EDMessageQueryHandler_queryHelper_didFindMessages_searchInfo_forInitialBatch___block_invoke_2;
        v21[3] = &unk_1E8254D98;
        v11 = v16;
        v22 = v11;
        [v19 performWhileLocked:v21];

        goto LABEL_20;
      }

      v17 = [(EDMessageQueryHandler *)self _requestedItemObjectID];
      v23 = 0;
      v16 = [(EDMessageQueryHandler *)self _messagesBeforeMessageWithObjectID:v17 fromMessagesFromQueryHelper:v15 afterRequestedMessage:&v23];
      v18 = v23;

      if ([v16 count])
      {
        [(EDMessageQueryHandler *)self _reportFoundMessages:v16 before:v17 messagesToPrecache:0 searchInfo:v12];
      }

      if ([v18 count])
      {
        [(EDMessageQueryHandler *)self _reportFoundMessages:v18 before:0 messagesToPrecache:0 searchInfo:v12];
        [(EDMessageQueryHandler *)self setDidFindRequestedItemForInitialBatch:1];
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  v20 = *MEMORY[0x1E69E9840];
}

void __80__EDMessageQueryHandler_queryHelper_didFindMessages_searchInfo_forInitialBatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasItemsInList];
}

- (void)_reportFoundMessages:(id)a3 before:(id)a4 messagesToPrecache:(id)a5 searchInfo:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v34 = 0;
  v27 = v10;
  v28 = a5;
  v29 = a6;
  v12 = [(EDMessageQueryHandler *)self _extraInfoForMessages:v10 messagesToPrecache:v28 outObjectIDs:&v34 searchInfo:?];
  v13 = v34;
  v14 = [v13 count];
  if (v14 > 0xA)
  {
    v15 = [v13 ef_prefix:5];
    v17 = [v13 ef_suffix:5];
    v18 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134219010;
      v36 = self;
      v37 = 2048;
      v38 = v14;
      v39 = 2114;
      v40 = v15;
      v41 = 2114;
      v42 = v17;
      v43 = 2114;
      v44 = v19;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Found %lu objectIDs starting with: %{public}@\nending with:\n%{public}@\n%{public}@", buf, 0x34u);
    }
  }

  else
  {
    v15 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218754;
      v36 = self;
      v37 = 2048;
      v38 = v14;
      v39 = 2114;
      v40 = v13;
      v41 = 2114;
      v42 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "%p: Found %lu objectIDs: %{public}@\n%{public}@", buf, 0x2Au);
    }
  }

  v20 = +[EDMessageQueryHandler log];
  v21 = [(EDMessageRepositoryQueryHandler *)self _distinctObjectIDs:v13 queryHandlerLog:v20];

  v22 = [(EDMessageQueryHandler *)self resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__EDMessageQueryHandler__reportFoundMessages_before_messagesToPrecache_searchInfo___block_invoke;
  block[3] = &unk_1E8250AB8;
  block[4] = self;
  v31 = v21;
  v32 = v11;
  v33 = v12;
  v23 = v12;
  v24 = v11;
  v25 = v21;
  dispatch_sync(v22, block);

  v26 = *MEMORY[0x1E69E9840];
}

void __83__EDMessageQueryHandler__reportFoundMessages_before_messagesToPrecache_searchInfo___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedAddedObjectIDs:*(a1 + 40) before:*(a1 + 48) extraInfo:*(a1 + 56)];
}

- (void)queryHelperDidFindAllMessages:(id)a3 localSearchInfoCollector:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v6])
  {
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218242;
      v19 = self;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Finished initial load\n%{public}@", buf, 0x16u);
    }

    [(EDMessageQueryHandler *)self setIsInitialized:1];
    [(EDMessageQueryHandler *)self setHasEverReconciledJournal:1];
    v10 = [(EDMessageQueryHandler *)self resultQueue];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __80__EDMessageQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke;
    v15 = &unk_1E8250128;
    v16 = self;
    v17 = v7;
    dispatch_sync(v10, &v12);

    [(EDMessageQueryHandler *)self _initializeOldestMessagesByMailbox:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __80__EDMessageQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) _getResultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFinishInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelperDidFailInitialLoad:(id)a3 localSearchInfoCollector:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v6])
  {
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageRepositoryQueryHandler *)self query];
      objc_claimAutoreleasedReturnValue();
      [EDMessageQueryHandler queryHelperDidFailInitialLoad:localSearchInfoCollector:];
    }

    v9 = [(EDMessageQueryHandler *)self resultQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__EDMessageQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke;
    v11[3] = &unk_1E8250128;
    v11[4] = self;
    v12 = v7;
    dispatch_sync(v9, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __80__EDMessageQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) _getResultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFailInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelper:(id)a3 didAddMessages:(id)a4 searchInfo:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v8])
  {
    v11 = [(EDMessageQueryHandler *)self _sortMessagesBySections:v9];

    v12 = [(EDMessageQueryHandler *)self messageList];

    if (v12)
    {
      v13 = objc_opt_new();
      v14 = [(EDMessageQueryHandler *)self messageList];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke;
      v27[3] = &unk_1E8254DE8;
      v15 = v11;
      v28 = v15;
      v29 = self;
      v30 = v10;
      v16 = v13;
      v31 = v16;
      [v14 performWhileLocked:v27];

      if ([v16 count])
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_47;
        v25[3] = &unk_1E8250858;
        v26 = v16;
        v17 = [v15 ef_filter:v25];

        v11 = v17;
      }

      else
      {
        v11 = v15;
      }
    }

    v18 = [(EDMessageQueryHandler *)self findMessagesByPreviousObjectIDForAddedMessages:v11 helper:v8];
    v19 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v11 count];
      v22 = [v18 count];
      *buf = 134218496;
      v33 = self;
      v34 = 1024;
      v35 = v21;
      v36 = 1024;
      v37 = v22;
      _os_log_debug_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEBUG, "%p: Did add %u messages. %u groups.", buf, 0x18u);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_48;
    v23[3] = &unk_1E8254E10;
    v23[4] = self;
    v24 = v10;
    [v18 enumerateKeysAndObjectsUsingBlock:v23];
    [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate];
  }

  else
  {
    v11 = v9;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 movesForExistingMessages:*(a1 + 32)];
  if ([v3 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_2;
    v5[3] = &unk_1E8254DC0;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 40);
    v6 = v4;
    v7 = *(a1 + 56);
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 ef_mapSelector:sel_objectID];
  v8 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v9 query];
    v18 = 134218754;
    v19 = v9;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Moving objectIDs: %{public}@ before: %{public}@\n%{public}@", &v18, 0x2Au);
  }

  v11 = [*(a1 + 32) _extraInfoForMessages:v6 messagesToPrecache:0 outObjectIDs:0 searchInfo:*(a1 + 40)];
  v12 = [MEMORY[0x1E695DFB0] null];
  if (v12 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13;

  v15 = [*(a1 + 32) _getResultsObserver];
  v16 = [*(a1 + 32) observationIdentifier];
  [v15 observer:v16 matchedMovedObjectIDs:v7 before:v14 extraInfo:v11];

  [*(a1 + 48) addObjectsFromArray:v6];
  v17 = *MEMORY[0x1E69E9840];
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v27 = 0;
  v7 = [*(a1 + 32) _extraInfoForMessages:v6 messagesToPrecache:0 outObjectIDs:&v27 searchInfo:*(a1 + 40)];
  v8 = v27;
  v9 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [v10 query];
    *buf = 134218754;
    v29 = v10;
    v30 = 2114;
    v31 = v8;
    v32 = 2114;
    v33 = v5;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Adding objectIDs: %{public}@ before: %{public}@\n%{public}@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  if (v12 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13;

  v15 = *(a1 + 32);
  v16 = +[EDMessageQueryHandler log];
  v17 = [v15 _distinctObjectIDs:v8 queryHandlerLog:v16];

  v18 = [*(a1 + 32) resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_49;
  block[3] = &unk_1E8250AB8;
  block[4] = *(a1 + 32);
  v24 = v17;
  v25 = v14;
  v26 = v7;
  v19 = v7;
  v20 = v14;
  v21 = v17;
  dispatch_sync(v18, block);

  v22 = *MEMORY[0x1E69E9840];
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_49(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedAddedObjectIDs:*(a1 + 40) before:*(a1 + 48) extraInfo:*(a1 + 56)];
}

- (void)queryHelper:(id)a3 messageFlagsDidChangeForMessages:(id)a4 previousMessages:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = a4;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:a3])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v22;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x1E699AD98]);
          v14 = [v12 flags];
          [v13 setFlags:v14];

          v15 = [v12 objectID];
          [v7 setObject:v13 forKeyedSubscript:v15];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v9);
    }

    v16 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 allKeys];
      v18 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      v30 = self;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: Changing flags for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    v19 = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__EDMessageQueryHandler_queryHelper_messageFlagsDidChangeForMessages_previousMessages___block_invoke;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v24 = v7;
    v20 = v7;
    dispatch_sync(v19, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __87__EDMessageQueryHandler_queryHelper_messageFlagsDidChangeForMessages_previousMessages___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (void)queryHelper:(id)a3 objectIDDidChangeForMessage:(id)a4 oldObjectID:(id)a5 oldConversationID:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v9])
  {
    v12 = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__EDMessageQueryHandler_queryHelper_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke;
    block[3] = &unk_1E8250720;
    block[4] = self;
    v14 = v11;
    v15 = v10;
    dispatch_sync(v12, block);
  }
}

void __95__EDMessageQueryHandler_queryHelper_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) objectID];
  [v5 observer:v2 replacedExistingObjectID:v3 withNewObjectID:v4];
}

- (void)queryHelper:(id)a3 didUpdateMessages:(id)a4 forKeyPaths:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v9])
  {
    if (-[EDMessageQueryHandler hasUrgentPredicate](self, "hasUrgentPredicate") && [v11 containsObject:*MEMORY[0x1E699A8C0]])
    {
      if (([v10 ef_all:&__block_literal_global_52_0] & 1) == 0)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"EDMessageQueryHandler.m" lineNumber:642 description:@"Messages matched the urgent query without the urgent flag being set"];
      }

      [(EDMessageQueryHandler *)self queryHelper:v9 didAddMessages:v10 searchInfo:0];
    }

    else
    {
      v24 = [MEMORY[0x1E699AD98] changesForKeyPaths:v11 ofItems:v10];
      v12 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v24 allKeys];
        v14 = [(EDMessageRepositoryQueryHandler *)self query];
        *buf = 134218754;
        v30 = self;
        v31 = 2114;
        v32 = v11;
        v33 = 2114;
        v34 = v13;
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: Changing key paths: %{public}@ for objectIDs: %{public}@\n%{public}@", buf, 0x2Au);
      }

      if ([(EDMessageRepositoryQueryHandler *)self keyPathsAffectSorting:v11])
      {
        v15 = [(EDMessageQueryHandler *)self _sortMessagesBySections:v10];

        v16 = [(EDMessageQueryHandler *)self findMessagesByPreviousObjectIDForAddedMessages:v15 helper:v9];
        v10 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = [(EDMessageQueryHandler *)self _extraInfoForMessages:v10 messagesToPrecache:0 outObjectIDs:0 searchInfo:0];
      v18 = [(EDMessageQueryHandler *)self resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_60;
      block[3] = &unk_1E8250AB8;
      block[4] = self;
      v19 = v24;
      v26 = v19;
      v20 = v16;
      v27 = v20;
      v21 = v17;
      v28 = v21;
      dispatch_sync(v18, block);

      if ([v20 count])
      {
        [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 generatedSummary];
  v3 = [v2 urgent];

  return v3;
}

void __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_60(uint64_t a1)
{
  v2 = [*(a1 + 32) _getResultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observer:v3 matchedChangesForObjectIDs:*(a1 + 40)];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_2;
  v5[3] = &unk_1E8254E10;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 ef_mapSelector:sel_objectID];
  v8 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v9 query];
    v17 = 134218754;
    v18 = v9;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Adding objectIDs: %{public}@ before: %{public}@\n%{public}@", &v17, 0x2Au);
  }

  v11 = [MEMORY[0x1E695DFB0] null];
  if (v11 == v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  v14 = [*(a1 + 32) _getResultsObserver];
  v15 = [*(a1 + 32) observationIdentifier];
  [v14 observer:v15 matchedMovedObjectIDs:v7 before:v13 extraInfo:*(a1 + 40)];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)a3 didDeleteMessages:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:a3])
  {
    v7 = [v6 ef_mapSelector:sel_objectID];
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      v20 = self;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Deleting objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    v10 = [(EDMessageQueryHandler *)self resultQueue];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __55__EDMessageQueryHandler_queryHelper_didDeleteMessages___block_invoke;
    v16 = &unk_1E8250128;
    v17 = self;
    v11 = v7;
    v18 = v11;
    dispatch_sync(v10, &v13);

    [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__EDMessageQueryHandler_queryHelper_didDeleteMessages___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedDeletedObjectIDs:*(a1 + 40)];
}

- (void)queryHelper:(id)a3 conversationIDDidChangeForMessages:(id)a4 fromConversationID:(int64_t)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = a4;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:a3])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v22;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E699AD98]);
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "conversationID")}];
          [v13 setConversationID:v14];

          v15 = [v12 objectID];
          [v7 setObject:v13 forKeyedSubscript:v15];
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v9);
    }

    v16 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 allKeys];
      v18 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      v30 = self;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: Changing conversationID for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    v19 = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__EDMessageQueryHandler_queryHelper_conversationIDDidChangeForMessages_fromConversationID___block_invoke;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v24 = v7;
    v20 = v7;
    dispatch_sync(v19, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __91__EDMessageQueryHandler_queryHelper_conversationIDDidChangeForMessages_fromConversationID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (void)queryHelper:(id)a3 businessIDDidChangeForMessages:(id)a4 fromBusinessID:(int64_t)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = a4;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:a3])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v23;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E699AD98]);
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "businessID")}];
          [v13 setBusinessID:v14];

          v15 = [v12 businessLogoID];
          [v13 setBusinessLogoID:v15];

          v16 = [v12 objectID];
          [v7 setObject:v13 forKeyedSubscript:v16];
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v9);
    }

    v17 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v7 allKeys];
      v19 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      v31 = self;
      v32 = 2114;
      v33 = v18;
      v34 = 2114;
      v35 = v19;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Changing businessID for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    v20 = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__EDMessageQueryHandler_queryHelper_businessIDDidChangeForMessages_fromBusinessID___block_invoke;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v25 = v7;
    v21 = v7;
    dispatch_sync(v20, block);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __83__EDMessageQueryHandler_queryHelper_businessIDDidChangeForMessages_fromBusinessID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (id)_createChangesForMessagesWithConversationID:(int64_t)a3 block:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E699ADA0] predicateForMessagesInConversation:a3];
  v8 = [(EDMessageQueryHandler *)self currentQueryHelper];
  v26[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = [v8 messagesWithAdditionalPredicates:v9 limit:0x7FFFFFFFFFFFFFFFLL];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v20;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = v6[2](v6);
        v17 = [v15 objectID];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)queryHelper:(id)a3 conversationNotificationLevelDidChangeForConversation:(int64_t)a4 conversationID:(int64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:a3])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke;
    v17[3] = &__block_descriptor_40_e30___EMMessageListItemChange_8__0l;
    v17[4] = a4;
    v8 = [(EDMessageQueryHandler *)self _createChangesForMessagesWithConversationID:a5 block:v17];
    v9 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 allKeys];
      v11 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      v19 = self;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Changing flags for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    v12 = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke_64;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v16 = v8;
    v13 = v8;
    dispatch_sync(v12, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

id __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699AD98]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  [v2 setConversationNotificationLevel:v3];

  return v2;
}

void __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke_64(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (void)queryHelperDidFinishRemoteSearch:(id)a3
{
  v4 = a3;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v4])
  {
    v5 = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EDMessageQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_sync(v5, block);
  }
}

void __58__EDMessageQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observerDidFinishRemoteSearch:v2];
}

- (void)queryHelperNeedsRestart:(id)a3
{
  v4 = a3;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:v4])
  {
    v5 = [(EDMessageQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__EDMessageQueryHandler_queryHelperNeedsRestart___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)_initializeOldestMessagesByMailbox
{
  v4 = [(EDMessageRepositoryQueryHandler *)self query];
  v5 = [v4 queryOptions];

  if (v5)
  {
    if (self->_oldestMessageIDsByMailboxObjectIDs)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"EDMessageQueryHandler.m" lineNumber:773 description:@"_oldestMessageIDsByMailboxObjectIDs should be only initialized once"];
    }

    v6 = [MEMORY[0x1E695DF90] dictionary];
    oldestMessageIDsByMailboxObjectIDs = self->_oldestMessageIDsByMailboxObjectIDs;
    self->_oldestMessageIDsByMailboxObjectIDs = v6;

    [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate];
  }
}

- (void)_oldestMessagesNeedUpdate
{
  if (self->_oldestMessageIDsByMailboxObjectIDs)
  {
    v3 = EFAtomicObjectLoad();
    [v3 cancel];
    v4 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    v5 = EFAtomicObjectSetIfIdentical();

    objc_initWeak(&location, self);
    v6 = [(EDMessageQueryHandler *)self scheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__EDMessageQueryHandler__oldestMessagesNeedUpdate__block_invoke;
    v9[3] = &unk_1E8250098;
    objc_copyWeak(&v11, &location);
    v7 = v5;
    v10 = v7;
    v8 = [v6 afterDelay:v9 performBlock:2.0];
    [v7 addCancelable:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __50__EDMessageQueryHandler__oldestMessagesNeedUpdate__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained mailboxes];
    v9 = 134218240;
    v10 = WeakRetained;
    v11 = 1024;
    v12 = [v4 count];
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Updating oldest messages for %u mailboxes", &v9, 0x12u);
  }

  v5 = [WeakRetained mailboxes];
  [WeakRetained _updateOldestMessagesForMailboxes:v5 cancelationToken:*(a1 + 32)];

  v6 = *(a1 + 32);
  v7 = EFAtomicObjectReleaseIfIdentical();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateOldestMessagesForMailboxes:(id)a3 cancelationToken:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v20 = 0;
    v22 = v7;
    v23 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
      v12 = [(EDMessageQueryHandler *)self _oldestItemQueryForMailbox:v9];
      v13 = [v11 messagesMatchingQuery:v12 limit:1 cancelationToken:v24];
      v14 = [v13 firstObject];

      v15 = [v24 isCanceled];
      if ((v15 & 1) == 0)
      {
        v16 = [v14 objectID];
        v17 = [(NSMutableDictionary *)self->_oldestMessageIDsByMailboxObjectIDs objectForKeyedSubscript:v9];
        if (v16 != v17 && ([v16 isEqual:v17] & 1) == 0)
        {
          v18 = +[EDMessageQueryHandler log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v30 = self;
            v31 = 2112;
            v32 = v9;
            _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Updated oldest message for mailbox ID %@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_oldestMessageIDsByMailboxObjectIDs setObject:v16 forKeyedSubscript:v9];
          v20 = 1;
        }
      }

      objc_autoreleasePoolPop(v10);
      if (v15)
      {
        break;
      }

      if (v22 == ++v8)
      {
        v22 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v22)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v20)
    {
      [(EDMessageQueryHandler *)self _oldestMessagesByMailboxObjectIDsWasUpdated];
    }
  }

  else
  {
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_oldestItemQueryForMailbox:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageRepositoryQueryHandler *)self query];
  v6 = [v5 predicate];
  v7 = [v6 copy];

  v8 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithObjectID:v4];
  v9 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:1];
  v10 = objc_alloc(MEMORY[0x1E699AE28]);
  v11 = [(EDMessageRepositoryQueryHandler *)self query];
  v12 = [v11 targetClass];
  v13 = MEMORY[0x1E696AB28];
  v21[0] = v7;
  v21[1] = v8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  v20 = v9;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v17 = [v10 initWithTargetClass:v12 predicate:v15 sortDescriptors:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_oldestMessagesByMailboxObjectIDsWasUpdated
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "%p: Oldest messages updated", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __68__EDMessageQueryHandler__oldestMessagesByMailboxObjectIDsWasUpdated__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  v3 = [*(a1 + 32) oldestMessageIDsByMailboxObjectIDs];
  [v4 observer:v2 matchedOldestItemsUpdatedForMailboxes:v3];
}

- (id)findMessagesByPreviousObjectIDForAddedMessages:(id)a3 helper:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageQueryHandler *)self messageList];

  if (v8)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__26;
    v27 = __Block_byref_object_dispose__26;
    v28 = 0;
    v9 = [(EDMessageQueryHandler *)self messageList];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_helper___block_invoke;
    v20[3] = &unk_1E8254E58;
    v22 = buf;
    v21 = v6;
    [v9 performWhileLocked:v20];

    v10 = *(v24 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = EFFetchSignpostLog();
    v12 = os_signpost_id_make_with_pointer(v11, v6);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 67109120;
      *&buf[4] = [v6 count];
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "QueryHelper FindMessagesByPreviousID", "count=%{signpost.description:attribute}u ", buf, 8u);
    }

    v15 = [(EDMessageQueryHandler *)self comparator];
    v10 = [EDMessageQueryHandler findMessagesByPreviousObjectIDForAddedMessages:v6 messageSource:v7 comparator:v15];

    v16 = v14;
    v17 = v16;
    if (v12 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v17, OS_SIGNPOST_INTERVAL_END, v12, "QueryHelper FindMessagesByPreviousID", "", buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

void __79__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_helper___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 insertMessagesReturningMessagesByPreviousObjectID:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)findMessagesByPreviousObjectIDForAddedMessages:(id)a3 messageSource:(id)a4 comparator:(id)a5
{
  v107[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v57 = a4;
  v8 = a5;
  v56 = v7;
  if ([v7 count])
  {
    v51 = [v57 query];
    v53 = [v51 sortDescriptors];
    if ([v53 count])
    {
      v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v8)
      {
        v8 = EFComparatorFromSortDescriptors();
      }

      v54 = v8;
      v50 = [v7 sortedArrayWithOptions:16 usingComparator:v8];
      v48 = [v50 ef_mapSelector:sel_objectID];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke;
      aBlock[3] = &unk_1E8254EA8;
      v9 = v53;
      v99 = v9;
      v49 = _Block_copy(aBlock);
      v10 = [v50 count];
      if (v10 >= 290)
      {
        v11 = 290;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v50 firstObject];
      v13 = v49[2](v49, v12, 1);
      v105 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
      v52 = [v57 sortableMessagesWithAdditionalPredicates:v14 limit:v11 + 10];

      v15 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v52, "count")}];
      v94 = 0;
      v95 = &v94;
      v96 = 0x2020000000;
      v97 = 0;
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_3;
      v90[3] = &unk_1E8254EF8;
      v90[4] = v52;
      v46 = v15;
      v91 = v46;
      v16 = v48;
      v92 = v16;
      v93 = &v94;
      v64 = _Block_copy(v90);
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_5;
      v88[3] = &unk_1E8254F20;
      v63 = v9;
      v89 = v63;
      v17 = _Block_copy(v88);
      v84 = 0;
      v85 = &v84;
      v86 = 0x2020000000;
      v87 = 0;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_6;
      v81[3] = &unk_1E8254F48;
      v81[4] = v61;
      v47 = v17;
      v81[5] = v65;
      v82 = v47;
      v83 = &v84;
      v60 = _Block_copy(v81);
      v75 = 0;
      v76 = &v75;
      v77 = 0x3032000000;
      v78 = __Block_byref_object_copy__26;
      v79 = __Block_byref_object_dispose__26;
      v80 = 0;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_7;
      v70[3] = &unk_1E8254F70;
      v74 = &v75;
      v44 = v16;
      v71 = v44;
      v45 = v49;
      v73 = v45;
      v72 = v57;
      v59 = _Block_copy(v70);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v50;
      v18 = [obj countByEnumeratingWithState:&v66 objects:v104 count:16];
      if (v18)
      {
        v19 = *v67;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v67 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v66 + 1) + 8 * i);
            v22 = v64[2](v64, v21);
            if (!v22)
            {
              v22 = v60[2](v60, v21);
              if (!v22)
              {
                v22 = v59[2](v59, v21);
              }
            }

            v23 = [MEMORY[0x1E695DFB0] null];
            v24 = v23;
            if (v22 == v23)
            {

LABEL_24:
              v27 = [MEMORY[0x1E695DFB0] null];
              goto LABEL_25;
            }

            v25 = [v22 objectID];
            v26 = v25 == 0;

            if (v26)
            {
              goto LABEL_24;
            }

            v27 = [v22 objectID];
            [v61 addObject:v22];
            v28 = [v21 itemID];
            v29 = [v27 collectionItemID];
            if ([v28 isEqual:v29])
            {
              v30 = +[EDMessageQueryHandler log];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v32 = v76[5];
                *buf = 134218754;
                v101 = a1;
                v102 = 2114;
                *v103 = v21;
                *&v103[8] = 2114;
                *&v103[10] = v22;
                *&v103[18] = 2114;
                *&v103[20] = v32;
                _os_log_error_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_ERROR, "%p: Previous message is message itself -- message: %{public}@\nprevious message: %{public}@\nexclude predicate: %{public}@", buf, 0x2Au);
              }
            }

LABEL_25:
            v31 = [v65 objectForKeyedSubscript:v27];
            if (!v31)
            {
              v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v65 setObject:v31 forKeyedSubscript:v27];
            }

            [v31 ef_insertObject:v21 usingSortDescriptors:v63];
          }

          v18 = [obj countByEnumeratingWithState:&v66 objects:v104 count:16];
        }

        while (v18);
      }

      v33 = *(v95 + 6);
      v34 = [obj count];
      v35 = *(v85 + 6);
      v36 = [obj count];
      v37 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v42 = [v52 count];
        v43 = [obj count];
        *buf = 134219008;
        v101 = a1;
        v102 = 1024;
        *v103 = v42;
        *&v103[4] = 2048;
        *&v103[6] = ((v33 * 100.0) / v34);
        *&v103[14] = 2048;
        *&v103[16] = ((v35 * 100.0) / v36);
        *&v103[24] = 1024;
        *&v103[26] = v43;
        _os_log_debug_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEBUG, "%p: Used head-list-lookup (%u entries) for %.3g%%, faster previous-message-lookup for %.3g%% of %u messages.", buf, 0x2Cu);
      }

      v38 = v65;
      _Block_object_dispose(&v75, 8);

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(&v94, 8);

      v39 = v61;
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      v54 = v8;
      v106 = v39;
      v107[0] = v7;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    }
  }

  else
  {
    v55 = v8;
    v38 = MEMORY[0x1E695E0F8];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v38;
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_2;
  v17 = &unk_1E8254E80;
  v21 = a3;
  v9 = v5;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  [v8 enumerateObjectsUsingBlock:&v14];
  v12 = [MEMORY[0x1E696AE18] ef_orCompoundPredicateWithSubpredicates:{v11, v14, v15, v16, v17}];

  return v12;
}

void __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 ascending];
  v4 = 2;
  if (*(a1 + 56))
  {
    v4 = 3;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = MEMORY[0x1E696ABC8];
  v7 = [v18 key];
  v8 = [v6 expressionForKeyPath:v7];

  v9 = MEMORY[0x1E696ABC8];
  v10 = *(a1 + 32);
  v11 = [v18 key];
  v12 = [v10 valueForKeyPath:v11];
  v13 = [v9 expressionForConstantValue:v12];

  v14 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v8 rightExpression:v13 modifier:0 type:v5 options:0];
  if ([*(a1 + 40) count])
  {
    v15 = [*(a1 + 40) arrayByAddingObject:v14];
    v16 = [MEMORY[0x1E696AE18] ef_andCompoundPredicateWithSubpredicates:v15];

    v14 = v16;
  }

  [*(a1 + 48) addObject:v14];
  v17 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v8 rightExpression:v13 modifier:0 type:4 options:0];
  [*(a1 + 40) addObject:v17];
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectID];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_4;
  v15[3] = &unk_1E8254ED0;
  v7 = v4;
  v16 = v7;
  v8 = [v5 indexOfObjectAtIndexes:v6 options:0 passingTest:v15];
  v9 = *(a1 + 40);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeAllIndexes];
  }

  else
  {
    [v9 removeIndexesInRange:{0, v8}];
    for (i = v8 + 1; i < [*(a1 + 32) count]; ++i)
    {
      v10 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v12 = *(a1 + 48);
      v13 = [v10 objectID];
      LOBYTE(v12) = [v12 containsObject:v13];

      if ((v12 & 1) == 0)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_9;
      }
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v9 = *v21;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [v11 key];
      v13 = [v5 valueForKeyPath:v12];

      v14 = [v11 key];
      v15 = [v6 valueForKeyPath:v14];

      v16 = [v13 compare:v15];
      if (v16 == -1)
      {
        v17 = [v11 ascending];
        goto LABEL_14;
      }

      if (v16 == 1)
      {
        v17 = [v11 ascending] ^ 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v17 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_6(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = *v27;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        if ((*(*(a1 + 48) + 16))())
        {
          v9 = *(a1 + 40);
          v10 = [v8 objectID];
          v11 = [v9 objectForKeyedSubscript:v10];
          v12 = [v11 firstObject];

          if (v12 && ((*(*(a1 + 48) + 16))() & 1) != 0)
          {
            ++*(*(*(a1 + 56) + 8) + 24);
            v19 = v8;

            goto LABEL_23;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(a1 + 40);
  v14 = [MEMORY[0x1E695DFB0] null];
  v4 = [v13 objectForKeyedSubscript:v14];

  v15 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v4);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        if ((*(*(a1 + 48) + 16))())
        {
          ++*(*(*(a1 + 56) + 8) + 24);
          v19 = [MEMORY[0x1E695DFB0] null];
          goto LABEL_23;
        }
      }

      v15 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_23:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_7(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!*(*(a1[7] + 8) + 40))
  {
    v4 = [MEMORY[0x1E699AD30] predicateForExcludingMessagesWithObjectIDs:a1[4]];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = (*(a1[6] + 16))();
  v8 = a1[5];
  v9 = *(*(a1[7] + 8) + 40);
  v15[0] = v7;
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v8 messagesWithAdditionalPredicates:v10 limit:1];
  v12 = [v11 firstObject];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)labelForStateCapture
{
  v2 = [(EDMessageRepositoryQueryHandler *)self query];
  v3 = [v2 label];

  return v3;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)a3
{
  v5 = objc_alloc_init(_EDMessageItemIDCollector);
  v6 = [(EDMessageRepositoryQueryHandler *)self query];
  v7 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
  v8 = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
  v9 = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
  v10 = [(EDMessageQueryHandler *)self searchProvider];
  v11 = [(_EDMessageItemIDCollector *)v5 collectItemIDsWithQuery:v6 messagePersistence:v7 hookRegistry:v8 remindMeNotificationController:v9 searchProvider:v10 errorString:a3];

  return v11;
}

- (void)_messagesForInitialBatchWithMessagesFromQueryHelper:requestedMessage:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  _os_log_fault_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_FAULT, "MISMATCH: Requested objectID %{public}@ but found message with objectID %{public}@", v4, 0x16u);
}

- (void)_messagesForInitialBatchWithMessagesFromQueryHelper:(uint64_t)a1 requestedMessage:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch requested message: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)queryHelperDidFailInitialLoad:localSearchInfoCollector:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 3.8521e-34);
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "%p: Failed initial load\n%{public}@", v4, 0x16u);
}

@end