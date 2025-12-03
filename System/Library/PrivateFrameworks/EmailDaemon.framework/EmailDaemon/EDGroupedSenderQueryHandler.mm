@interface EDGroupedSenderQueryHandler
+ (id)_comparatorForSortDescriptors:(id)descriptors sectionPredicates:(id)predicates;
+ (id)resolveMergePathsForMergedBusinesses:(id)businesses;
+ (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionPredicates:(id)predicates sectionIdentifier:(id *)identifier;
- (BOOL)_queryHelperIsCurrent:(id)current;
- (BOOL)start;
- (EDGroupedSenderQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence senderPersistence:(id)senderPersistence businessPersistence:(id)businessPersistence businessCloudStorage:(id)storage hookRegistry:(id)registry remindMeNotificationController:(id)controller observer:(id)self0 observationIdentifier:(id)self1 keepMessagesInListOnBucketChange:(BOOL)self2;
- (EMMessageListItemQueryResultsObserver)resultsObserverIfUncanceled;
- (id)_externalBusinessIDForEmailAddress:(id)address;
- (id)_extraInfoForSenderItemIDsBySection:(id)section includePrecachedSendersFromSenders:(id)senders;
- (id)_groupedSenderForEDGroupedSender:(id)sender;
- (id)_groupedSenderForObjectID:(id)d;
- (id)_itemIDsWithSectionChangesFrom:(id)from to:(id)to;
- (id)_messageQueryFromGroupedQuery:(id)query;
- (id)_senderItemIDsBySectionForSenders:(id)senders;
- (id)_updateDifference:(id)difference from:(id)from forChangedGroups:(id)groups;
- (id)groupedSenderForObjectID:(id)d isPersisted:(BOOL *)persisted error:(id *)error;
- (id)messagesForGroupedSender:(id)sender limit:(int64_t)limit;
- (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionIdentifier:(id *)identifier;
- (void)_filterGroupedSenderChanges:(id)changes withVisibleSenders:(id)senders;
- (void)_messagesWereChanged:(id)changed previousMessages:(id)messages forKeyPaths:(id)paths deleted:(BOOL)deleted;
- (void)_notifyObserversOfInsertedSenders:(id)senders senderItemIDsBySection:(id)section previousSender:(id)sender includePrecachedSenders:(BOOL)precachedSenders notifyBlock:(id)block;
- (void)_notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:(id)from to:(id)to forChangedGroups:(id)groups itemIDsWithSectionChanges:(id)changes includePrecachedSenders:(BOOL)senders logMessage:(id)message;
- (void)_persistenceDidFinishMergingBusinesses;
- (void)cancel;
- (void)persistenceIsMergingBusinessID:(int64_t)d intoBusinessID:(int64_t)iD;
- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d;
- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info;
- (void)queryHelper:(id)helper didDeleteMessages:(id)messages;
- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths;
- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages;
- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector;
- (void)queryHelperNeedsRestart:(id)restart;
- (void)tearDown;
- (void)test_tearDown;
- (void)updateUnseenCountsForBusinessesWithExternalIDs:(id)ds;
- (void)updatedBusinessesWithExternalIDs:(id)ds removedBusinessesWithExternalIDs:(id)iDs;
@end

@implementation EDGroupedSenderQueryHandler

void ___ef_log_EDGroupedSenderQueryHandler_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDGroupedSenderQueryHandler");
  v1 = _ef_log_EDGroupedSenderQueryHandler_log;
  _ef_log_EDGroupedSenderQueryHandler_log = v0;
}

- (EDGroupedSenderQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence senderPersistence:(id)senderPersistence businessPersistence:(id)businessPersistence businessCloudStorage:(id)storage hookRegistry:(id)registry remindMeNotificationController:(id)controller observer:(id)self0 observationIdentifier:(id)self1 keepMessagesInListOnBucketChange:(BOOL)self2
{
  queryCopy = query;
  obj = persistence;
  persistenceCopy = persistence;
  senderPersistenceCopy = senderPersistence;
  businessPersistenceCopy = businessPersistence;
  storageCopy = storage;
  registryCopy = registry;
  controllerCopy = controller;
  v55.receiver = self;
  v55.super_class = EDGroupedSenderQueryHandler;
  observerCopy = observer;
  v51 = controllerCopy;
  identifierCopy = identifier;
  v22 = [(EDMessageRepositoryQueryHandler *)&v55 initWithQuery:queryCopy messagePersistence:persistenceCopy hookRegistry:registryCopy remindMeNotificationController:controllerCopy observer:observerCopy observationIdentifier:?];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_senderPersistence, senderPersistence);
    objc_storeStrong(&v23->_messagePersistence, obj);
    objc_storeStrong(&v23->_businessPersistence, businessPersistence);
    objc_storeStrong(&v23->_businessCloudStorage, storage);
    v24 = objc_alloc_init(MEMORY[0x1E699ACF0]);
    unsubscribeDetector = v23->_unsubscribeDetector;
    v23->_unsubscribeDetector = v24;

    v26 = MEMORY[0x1E699ADA0];
    predicate = [queryCopy predicate];
    mailboxPersistence = [persistenceCopy mailboxPersistence];
    v29 = [v26 threadScopeForPredicate:predicate withMailboxTypeResolver:mailboxPersistence];
    threadScope = v23->_threadScope;
    v23->_threadScope = v29;

    v31 = MEMORY[0x1E699B978];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.%p", objc_opt_class(), v23];
    v33 = [v31 serialDispatchQueueSchedulerWithName:v32 qualityOfService:25];
    scheduler = v23->_scheduler;
    v23->_scheduler = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("com.apple.mail.EDGroupedSenderQueryHandler.result", v35);
    resultQueue = v23->_resultQueue;
    v23->_resultQueue = v36;

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v23->_grouping = [em_userDefaults preferredGroupedSenderGrouping];

    targetClassOptions = [queryCopy targetClassOptions];
    v40 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
    sectionPredicates = v23->_sectionPredicates;
    v23->_sectionPredicates = v40;

    [(EFOrderedDictionary *)v23->_sectionPredicates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_14];
    v23->_groupedSendersLock._os_unfair_lock_opaque = 0;
    v42 = [_EDGroupedSenderList alloc];
    sortDescriptors = [queryCopy sortDescriptors];
    v44 = [EDGroupedSenderQueryHandler _comparatorForSortDescriptors:sortDescriptors sectionPredicates:v23->_sectionPredicates];
    v45 = [(_EDGroupedSenderList *)v42 initWithComparator:v44 grouping:v23->_grouping];
    groupedSenders = v23->_groupedSenders;
    v23->_groupedSenders = v45;

    v23->_keepMessagesInListOnBucketChange = change;
    [storageCopy beginObserving:v23];
    [registryCopy registerMessageChangeHookResponder:v23];
    [registryCopy registerBusinessChangeHookResponder:v23];
  }

  return v23;
}

- (void)updateUnseenCountsForBusinessesWithExternalIDs:(id)ds
{
  v48 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v6 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = objc_opt_class();
    v44 = 2048;
    selfCopy5 = self;
    v46 = 2048;
    v47 = v5;
    v7 = v43;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  v35 = 88;
  os_unfair_lock_lock(&self->_groupedSendersLock);
  v8 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    *buf = 138412802;
    v43 = v9;
    v44 = 2048;
    selfCopy5 = self;
    v46 = 2048;
    v47 = v5;
    v10 = v9;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  orderedGroupedSenders = [groupedSenders orderedGroupedSenders];
  v12 = [orderedGroupedSenders countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(orderedGroupedSenders);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        externalBusinessID = [v15 externalBusinessID];
        v17 = [dsCopy containsObject:externalBusinessID];

        if (v17)
        {
          recalculateUnseenCount = [v15 recalculateUnseenCount];
          objectID = [v15 objectID];
          [v5 setObject:recalculateUnseenCount forKeyedSubscript:objectID];
        }
      }

      v12 = [orderedGroupedSenders countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v12);
  }

  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  v22 = [groupedSenders orderedGroupedSendersWithLimit:limit & ~(limit >> 63)];
  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v5 withVisibleSenders:v22];
  if ([v5 count])
  {
    v23 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = [v5 count];
      *buf = 138412802;
      v43 = v24;
      v44 = 2048;
      selfCopy5 = self;
      v46 = 2048;
      v47 = v25;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after last seen dates changed)", buf, 0x20u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v5];
  }

  v28 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    *buf = 138412802;
    v43 = v29;
    v44 = 2048;
    selfCopy5 = self;
    v46 = 2048;
    v47 = v5;
    v30 = v29;
    _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  os_unfair_lock_unlock((self + v35));
  v31 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138412802;
    v43 = v32;
    v44 = 2048;
    selfCopy5 = self;
    v46 = 2048;
    v47 = v5;
    v33 = v32;
    _os_log_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)_groupedSenderForObjectID:(id)d
{
  dCopy = d;
  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "businessID")}];
  v7 = [groupedSenders objectForKeyedSubscript:v6];

  return v7;
}

- (id)_groupedSenderForEDGroupedSender:(id)sender
{
  v24 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (senderCopy)
  {
    os_unfair_lock_assert_owner(&self->_groupedSendersLock);
    newestMessage = [senderCopy newestMessage];

    if (!newestMessage)
    {
      v7 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v19 = objc_opt_class();
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = senderCopy;
        v13 = v19;
        _os_log_fault_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_FAULT, "<%@ %p> Empty group sender being created: %{public}@", buf, 0x20u);
      }
    }

    v8 = objc_alloc(MEMORY[0x1E699ACC0]);
    objectID = [senderCopy objectID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__EDGroupedSenderQueryHandler__groupedSenderForEDGroupedSender___block_invoke;
    v14[3] = &unk_1E8252378;
    selfCopy2 = self;
    v17 = a2;
    v15 = senderCopy;
    v10 = [v8 initWithObjectID:objectID builder:v14];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __64__EDGroupedSenderQueryHandler__groupedSenderForEDGroupedSender___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) category];
  [v23 setCategory:v3];

  v4 = [*(a1 + 32) date];
  [v23 setDate:v4];

  v5 = [*(a1 + 32) displayDate];
  [v23 setDisplayDate:v5];

  v6 = [*(a1 + 32) readLater];
  [v23 setReadLater:v6];

  v7 = [*(a1 + 32) subject];
  [v23 setSubject:v7];

  [v23 setCount:{objc_msgSend(*(a1 + 32), "count")}];
  [v23 setUnreadCount:{objc_msgSend(*(a1 + 32), "unreadCount")}];
  [v23 setUnseenCount:{objc_msgSend(*(a1 + 32), "unseenCount")}];
  v8 = [*(a1 + 32) groupedSenderMessageListItems];
  [v23 setGroupedSenderMessageListItems:v8];

  [v23 setBusinessID:{objc_msgSend(*(a1 + 32), "businessID")}];
  v9 = [*(a1 + 32) businessLogoID];
  [v23 setBusinessLogoID:v9];

  v10 = [*(a1 + 32) businessDisplayName];
  [v23 setBusinessDisplayName:v10];

  v11 = [*(a1 + 32) summary];
  [v23 setSummary:v11];

  v12 = [*(a1 + 32) senderList];
  [v23 setSenderList:v12];

  v13 = [*(a1 + 32) toList];
  [v23 setToList:v13];

  v14 = [*(a1 + 32) ccList];
  [v23 setCcList:v14];

  v15 = [*(a1 + 32) flags];
  [v23 setFlags:v15];

  [v23 setHasUnflagged:{objc_msgSend(*(a1 + 32), "hasUnflagged")}];
  v16 = [*(a1 + 32) flagColors];
  [v23 setFlagColors:v16];

  [v23 setIsVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v23 setIsBlocked:{objc_msgSend(*(a1 + 32), "isBlocked")}];
  [v23 setSearchResultType:{objc_msgSend(*(a1 + 32), "searchResultType")}];
  v17 = [*(a1 + 32) searchRelevanceScore];
  [v23 setSearchRelevanceScore:v17];

  [v23 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v23 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  [v23 setIsAuthenticated:{objc_msgSend(*(a1 + 32), "isAuthenticated")}];
  [v23 setAllowAuthenticationWarning:{objc_msgSend(*(a1 + 32), "allowAuthenticationWarning")}];
  [v23 setConversationNotificationLevel:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel")}];
  v18 = [*(a1 + 32) mailboxes];
  [v23 setMailboxes:v18];

  v19 = [*(a1 + 32) displayMessageItemID];
  if (!v19)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"EDGroupedSenderQueryHandler.m" lineNumber:194 description:{@"If displayMessageItemID is nil, then it will cause a crash later on in the app"}];
  }

  [v23 setDisplayMessageItemID:v19];
  v20 = [*(a1 + 32) followUp];
  [v23 setFollowUp:v20];

  if ([MEMORY[0x1E699ACE8] preferenceEnabled:59])
  {
    v21 = [*(a1 + 32) brandIndicatorLocation];
    [v23 setBrandIndicatorLocation:v21];
  }
}

- (void)tearDown
{
  [(EDGroupedSenderQueryHandler *)self cancel];
  scheduler = [(EDGroupedSenderQueryHandler *)self scheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EDGroupedSenderQueryHandler_tearDown__block_invoke;
  v5[3] = &unk_1E8250260;
  v5[4] = self;
  [scheduler performBlock:v5];

  v4.receiver = self;
  v4.super_class = EDGroupedSenderQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v4 tearDown];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDGroupedSenderQueryHandler.m" lineNumber:220 description:{@"%s can only be called from unit tests", "-[EDGroupedSenderQueryHandler test_tearDown]"}];
  }

  [(EDGroupedSenderQueryHandler *)self tearDown];
}

- (BOOL)start
{
  v23.receiver = self;
  v23.super_class = EDGroupedSenderQueryHandler;
  start = [(EDMessageRepositoryQueryHandler *)&v23 start];
  if (start)
  {
    messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];

    query = [(EDMessageRepositoryQueryHandler *)self query];
    v6 = [(EDGroupedSenderQueryHandler *)self _messageQueryFromGroupedQuery:query];

    v7 = [EDMessageQueryHelper alloc];
    messagePersistence = [(EDGroupedSenderQueryHandler *)self messagePersistence];
    hookRegistry = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
    scheduler = [(EDGroupedSenderQueryHandler *)self scheduler];
    remindMeNotificationController = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
    BYTE2(v18) = [(EDGroupedSenderQueryHandler *)self keepMessagesInListOnBucketChange];
    LOWORD(v18) = 1;
    v12 = [EDMessageQueryHelper initWithQuery:v7 initialBatchSize:"initWithQuery:initialBatchSize:maximumBatchSize:messagePersistence:hookRegistry:searchProvider:scheduler:remindMeNotificationController:delegate:shouldReconcileJournal:shouldAddMessagesSynchronously:keepMessagesInListOnBucketChange:" maximumBatchSize:v6 messagePersistence:200 hookRegistry:5000 searchProvider:messagePersistence scheduler:hookRegistry remindMeNotificationController:0 delegate:scheduler shouldReconcileJournal:remindMeNotificationController shouldAddMessagesSynchronously:self keepMessagesInListOnBucketChange:v18];

    [(EDGroupedSenderQueryHandler *)self setMessageQueryHelper:v12];
    if (messageQueryHelper)
    {
      resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
      objc_initWeak(&location, resultsObserverIfUncanceled);

      observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
      resultQueue = [(EDGroupedSenderQueryHandler *)self resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__EDGroupedSenderQueryHandler_start__block_invoke;
      block[3] = &unk_1E8250098;
      objc_copyWeak(&v21, &location);
      v20 = observationIdentifier;
      v16 = observationIdentifier;
      dispatch_async(resultQueue, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    [(EDMessageQueryHelper *)v12 start];
  }

  return start;
}

void __36__EDGroupedSenderQueryHandler_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observerWillRestart:*(a1 + 32)];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = EDGroupedSenderQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v4 cancel];
  messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
  [messageQueryHelper cancel];

  [(EDGroupedSenderQueryHandler *)self setDidCancel:1];
}

- (EMMessageListItemQueryResultsObserver)resultsObserverIfUncanceled
{
  if ([(EDGroupedSenderQueryHandler *)self didCancel])
  {
    resultsObserver = 0;
  }

  else
  {
    resultsObserver = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  }

  return resultsObserver;
}

- (void)queryHelperNeedsRestart:(id)restart
{
  restartCopy = restart;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:?])
  {
    [(EDGroupedSenderQueryHandler *)self start];
  }
}

- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector
{
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:?])
  {
    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observerDidFinishInitialLoad:observationIdentifier extraInfo:0];
  }
}

- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info
{
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereAdded:messagesCopy toInitialBatch:0];
  }
}

- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths
{
  helperCopy = helper;
  messagesCopy = messages;
  pathsCopy = paths;
  if (-[EDGroupedSenderQueryHandler _queryHelperIsCurrent:](self, "_queryHelperIsCurrent:", helperCopy) && ([pathsCopy count] != 1 || (objc_msgSend(pathsCopy, "containsObject:", *MEMORY[0x1E699A8E0]) & 1) == 0))
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereChanged:messagesCopy previousMessages:0 forKeyPaths:pathsCopy deleted:0];
  }
}

- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages
{
  v14[3] = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  previousMessagesCopy = previousMessages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v11 = *MEMORY[0x1E699A8E8];
    v14[0] = *MEMORY[0x1E699A8A0];
    v14[1] = v11;
    v14[2] = *MEMORY[0x1E699A898];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    [(EDGroupedSenderQueryHandler *)self _messagesWereChanged:messagesCopy previousMessages:previousMessagesCopy forKeyPaths:v12 deleted:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryHelper:(id)helper didDeleteMessages:(id)messages
{
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereChanged:messagesCopy previousMessages:0 forKeyPaths:0 deleted:1];
  }
}

- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d
{
  v71 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v62 = v56 = limit & ~(limit >> 63);
  v59 = [v62 orderedGroupedSendersWithLimit:?];
  array = [v59 array];
  v58 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

  v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  firstObject = [messagesCopy firstObject];
  businessID = [firstObject businessID];
  dCopy = d;

  v12 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v66 = objc_opt_class();
    v67 = 2048;
    selfCopy7 = self;
    v69 = 2048;
    v70 = v63;
    v13 = v66;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_groupedSendersLock);
  v14 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    *buf = 138412802;
    v66 = v15;
    v67 = 2048;
    selfCopy7 = self;
    v69 = 2048;
    v70 = v63;
    v16 = v15;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:businessID];
  v18 = [v62 objectForKeyedSubscript:v17];

  if (v18)
  {
    v19 = [(EDGroupedSender *)v18 addMessages:messagesCopy];
    [v62 updateGroupedSender:v18];
    if (v19)
    {
      objectID = [(EMObject *)v18 objectID];
      [v63 setObject:v19 forKeyedSubscript:objectID];

      [v60 addObject:v18];
    }
  }

  else
  {
    businessPersistence = [(EDGroupedSenderQueryHandler *)self businessPersistence];
    v19 = [businessPersistence businessExternalIDForBusinessID:businessID];

    v22 = [EDGroupedSender alloc];
    query2 = [(EDMessageRepositoryQueryHandler *)self query];
    v23 = [(EDGroupedSenderQueryHandler *)self _messageQueryFromGroupedQuery:?];
    businessPersistence2 = [(EDGroupedSenderQueryHandler *)self businessPersistence];
    messagePersistence = [(EDGroupedSenderQueryHandler *)self messagePersistence];
    businessCloudStorage = [(EDGroupedSenderQueryHandler *)self businessCloudStorage];
    unsubscribeDetector = [(EDGroupedSenderQueryHandler *)self unsubscribeDetector];
    v18 = [(EDGroupedSender *)v22 initWithBusinessID:businessID externalBusinessID:v19 messages:messagesCopy originatingQuery:v23 businessPersistence:businessPersistence2 messagePersistence:messagePersistence businessCloudStorage:businessCloudStorage unsubscribeDetector:unsubscribeDetector];

    displayMessageItemID = [(EDGroupedSender *)v18 displayMessageItemID];

    if (displayMessageItemID)
    {
      [v62 addGroupedSender:v18];
      [v60 addObject:v18];
    }

    else
    {
      v29 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        *buf = 138412802;
        v66 = v53;
        v67 = 2048;
        selfCopy7 = self;
        v69 = 2048;
        v70 = businessID;
        v54 = v53;
        _os_log_error_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating group sender with displayMessageItemID equals nil for BusinessID:%lld", buf, 0x20u);
      }
    }
  }

  v30 = [MEMORY[0x1E696AD98] numberWithLongLong:dCopy];
  v31 = [v62 objectForKeyedSubscript:v30];

  if (v31)
  {
    v64 = 0;
    v32 = [v31 removeMessages:messagesCopy isGroupEmpty:&v64 messageProvider:self];
    if (v64 == 1)
    {
      v33 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        *buf = 138412802;
        v66 = v34;
        v67 = 2048;
        selfCopy7 = self;
        v69 = 2114;
        v70 = v31;
        v35 = v34;
        _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "<%@ %p> Removed messages from group and it's now empty for sender:%{public}@", buf, 0x20u);
      }

      [v62 removeGroupedSender:v31];
    }

    if (v32)
    {
      [v62 updateGroupedSender:v31];
      objectID2 = [v31 objectID];
      [v63 setObject:v32 forKeyedSubscript:objectID2];

      [v60 addObject:v31];
    }
  }

  v37 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = objc_opt_class();
    *buf = 138412802;
    v66 = v38;
    v67 = 2048;
    selfCopy7 = self;
    v69 = 2048;
    v70 = v63;
    v39 = v38;
    _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupedSendersLock);
  v40 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_opt_class();
    *buf = 138412802;
    v66 = v41;
    v67 = 2048;
    selfCopy7 = self;
    v69 = 2048;
    v70 = v63;
    v42 = v41;
    _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  v43 = [v62 orderedGroupedSendersWithLimit:v56];
  array2 = [v59 array];
  v45 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v63 withVisibleSenders:v43];
  if ([v63 count])
  {
    v46 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = objc_opt_class();
      v48 = [v63 count];
      *buf = 138412802;
      v66 = v47;
      v67 = 2048;
      selfCopy7 = self;
      v69 = 2048;
      v70 = v48;
      _os_log_impl(&dword_1C61EF000, v46, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after businessID was changed for messages)", buf, 0x20u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v63];
  }

  v51 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v58 to:v45];
  [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v59 to:v43 forChangedGroups:v60 itemIDsWithSectionChanges:v51 includePrecachedSenders:0 logMessage:@"after businessID was changed for messages"];

  v52 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionIdentifier:(id *)identifier
{
  senderCopy = sender;
  sectionPredicates = [(EDGroupedSenderQueryHandler *)self sectionPredicates];
  v8 = [EDGroupedSenderQueryHandler _sectionIndexForGroupedSender:senderCopy sectionPredicates:sectionPredicates sectionIdentifier:identifier];

  return v8;
}

+ (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionPredicates:(id)predicates sectionIdentifier:(id *)identifier
{
  senderCopy = sender;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *MEMORY[0x1E699A7F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__EDGroupedSenderQueryHandler__sectionIndexForGroupedSender_sectionPredicates_sectionIdentifier___block_invoke;
  v11[3] = &unk_1E82523A0;
  v8 = senderCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v19;
  [predicates enumerateKeysAndObjectsUsingBlock:v11];
  if (identifier)
  {
    *identifier = v20[5];
  }

  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __97__EDGroupedSenderQueryHandler__sectionIndexForGroupedSender_sectionPredicates_sectionIdentifier___block_invoke(void *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v10 = a3;
  if ([a4 evaluateWithObject:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = a2;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a5 = 1;
  }
}

+ (id)_comparatorForSortDescriptors:(id)descriptors sectionPredicates:(id)predicates
{
  descriptorsCopy = descriptors;
  predicatesCopy = predicates;
  v8 = EFComparatorFromSortDescriptors();
  if ([predicatesCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__EDGroupedSenderQueryHandler__comparatorForSortDescriptors_sectionPredicates___block_invoke;
    aBlock[3] = &unk_1E82523C8;
    selfCopy = self;
    v12 = predicatesCopy;
    v13 = v8;
    v9 = _Block_copy(aBlock);
  }

  else
  {
    v9 = _Block_copy(v8);
  }

  return v9;
}

uint64_t __79__EDGroupedSenderQueryHandler__comparatorForSortDescriptors_sectionPredicates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 48) _sectionIndexForGroupedSender:v5 sectionPredicates:*(a1 + 32) sectionIdentifier:0];
  v8 = [*(a1 + 48) _sectionIndexForGroupedSender:v6 sectionPredicates:*(a1 + 32) sectionIdentifier:0];
  if (v7 == v8)
  {
    v9 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *MEMORY[0x1E699A7F8];
    v11 = -1;
    if (v7 < v8)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v8 != v10)
    {
      v11 = v12;
    }

    if (v7 == v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = v11;
    }
  }

  return v9;
}

void __65__EDGroupedSenderQueryHandler__messagesWereAdded_toInitialBatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v62 = a2;
  v5 = a3;
  v6 = [v5 ef_filter:&__block_literal_global_48];

  v7 = [v6 count];
  v8 = _ef_log_EDGroupedSenderQueryHandler();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138412802;
      v64 = v11;
      v65 = 2048;
      v66 = v12;
      v67 = 2048;
      v68 = v13;
      v14 = v11;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for adding messages", buf, 0x20u);
    }

    v61 = *(a1 + 32);
    os_unfair_lock_lock(v61 + 22);
    v15 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138412802;
      v64 = v17;
      v65 = 2048;
      v66 = v18;
      v67 = 2048;
      v68 = v19;
      v20 = v17;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for adding messages", buf, 0x20u);
    }

    v21 = [*(a1 + 48) objectForKeyedSubscript:v62];
    v22 = v21;
    if (v21)
    {
      v23 = [(EDGroupedSender *)v21 addMessages:v6];
      if (v23)
      {
        [*(a1 + 48) updateGroupedSender:v22];
        v24 = *(a1 + 40);
        v25 = [(EMObject *)v22 objectID];
        [v24 setObject:v23 forKeyedSubscript:v25];

        [*(a1 + 56) addObject:v22];
      }
    }

    else
    {
      v30 = *(a1 + 32);
      v31 = [v6 firstObject];
      v32 = [v31 senderAddress];
      v23 = [v30 _externalBusinessIDForEmailAddress:v32];

      v33 = [EDGroupedSender alloc];
      v60 = [v6 firstObject];
      v34 = [v60 businessID];
      v35 = *(a1 + 32);
      v59 = [v35 query];
      v36 = [v35 _messageQueryFromGroupedQuery:?];
      v37 = [*(a1 + 32) businessPersistence];
      v38 = [*(a1 + 32) messagePersistence];
      v39 = [*(a1 + 32) businessCloudStorage];
      v40 = [*(a1 + 32) unsubscribeDetector];
      v22 = [(EDGroupedSender *)v33 initWithBusinessID:v34 externalBusinessID:v23 messages:v6 originatingQuery:v36 businessPersistence:v37 messagePersistence:v38 businessCloudStorage:v39 unsubscribeDetector:v40];

      v41 = [(EDGroupedSender *)v22 displayMessageItemID];

      if (v41)
      {
        [*(a1 + 48) addGroupedSender:v22];
        [*(a1 + 56) addObject:v22];
      }

      else
      {
        v42 = _ef_log_EDGroupedSenderQueryHandler();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v55 = *(a1 + 32);
          v56 = objc_opt_class();
          v57 = *(a1 + 32);
          *buf = 138412802;
          v64 = v56;
          v65 = 2048;
          v66 = v57;
          v67 = 2114;
          v68 = v62;
          v58 = v56;
          _os_log_error_impl(&dword_1C61EF000, v42, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating group sender with displayMessageItemID equals nil for BusinessID:%{public}@", buf, 0x20u);
        }
      }
    }

    v43 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 32);
      v45 = objc_opt_class();
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      *buf = 138412802;
      v64 = v45;
      v65 = 2048;
      v66 = v46;
      v67 = 2048;
      v68 = v47;
      v48 = v45;
      _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for adding messages", buf, 0x20u);
    }

    os_unfair_lock_unlock(v61 + 22);
    v9 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a1 + 32);
      v50 = objc_opt_class();
      v51 = *(a1 + 32);
      v52 = *(a1 + 40);
      *buf = 138412802;
      v64 = v50;
      v65 = 2048;
      v66 = v51;
      v67 = 2048;
      v68 = v52;
      v53 = v50;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for adding messages", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 32);
    v27 = objc_opt_class();
    v28 = *(a1 + 32);
    *buf = 138412802;
    v64 = v27;
    v65 = 2048;
    v66 = v28;
    v67 = 2114;
    v68 = v62;
    v29 = v27;
    _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating empty group sender for BusinessID:%{public}@", buf, 0x20u);
  }

  v54 = *MEMORY[0x1E69E9840];
}

uint64_t __65__EDGroupedSenderQueryHandler__messagesWereAdded_toInitialBatch___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (void)_messagesWereChanged:(id)changed previousMessages:(id)messages forKeyPaths:(id)paths deleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v73 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  messagesCopy = messages;
  pathsCopy = paths;
  v10 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138413314;
    v64 = v11;
    v65 = 2048;
    selfCopy2 = self;
    v67 = 2114;
    v68 = v12;
    v69 = 2114;
    v70 = pathsCopy;
    v71 = 1024;
    v72 = deletedCopy;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> %{public}@: keyPaths:%{public}@ delete:%{BOOL}d", buf, 0x30u);
  }

  [(EDGroupedSenderQueryHandler *)self grouping];
  v47 = _groupMessagesBySender(self, changedCopy);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v14 = messagesCopy;
  v15 = [v14 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v15)
  {
    v16 = *v59;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v58 + 1) + 8 * i);
        objectID = [v18 objectID];
        [v13 setObject:v18 forKeyedSubscript:objectID];
      }

      v15 = [v14 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v15);
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = limit & ~(limit >> 63);
  v50 = [groupedSenders orderedGroupedSendersWithLimit:v22];
  array = [v50 array];
  v45 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke;
  v51[3] = &unk_1E8252440;
  v51[4] = self;
  v24 = v42;
  v52 = v24;
  v25 = groupedSenders;
  v53 = v25;
  v57 = deletedCopy;
  v40 = v13;
  v54 = v40;
  v39 = pathsCopy;
  v55 = v39;
  v26 = v41;
  v56 = v26;
  [v47 enumerateKeysAndObjectsUsingBlock:v51];
  v27 = [v25 orderedGroupedSendersWithLimit:v22];
  array2 = [v50 array];
  v29 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v24 withVisibleSenders:v27];
  if ([v24 count])
  {
    v30 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = [v24 count];
      v33 = @"changed";
      *buf = 138413058;
      v64 = v31;
      if (deletedCopy)
      {
        v33 = @"deleted";
      }

      v65 = 2048;
      selfCopy2 = self;
      v67 = 2048;
      v68 = v32;
      v69 = 2114;
      v70 = v33;
      _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after messages were %{public}@)", buf, 0x2Au);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v24];
  }

  v36 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v45 to:v29];
  if (deletedCopy)
  {
    v37 = @"after messages were deleted";
  }

  else
  {
    v37 = @"after messages were changed";
  }

  [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v50 to:v27 forChangedGroups:v26 itemIDsWithSectionChanges:v36 includePrecachedSenders:0 logMessage:v37];

  v38 = *MEMORY[0x1E69E9840];
}

void __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v73 = a2;
  v5 = a3;
  v6 = [v5 count];
  v7 = _ef_log_EDGroupedSenderQueryHandler();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138412802;
      v80 = v10;
      v81 = 2048;
      v82 = v11;
      v83 = 2048;
      v84 = v12;
      v13 = v10;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for updating messages", buf, 0x20u);
    }

    v72 = *(a1 + 32);
    os_unfair_lock_lock(v72 + 22);
    v14 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138412802;
      v80 = v16;
      v81 = 2048;
      v82 = v17;
      v83 = 2048;
      v84 = v18;
      v19 = v16;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for updating messages", buf, 0x20u);
    }

    v20 = [*(a1 + 48) objectForKeyedSubscript:v73];
    v21 = v20;
    if (v20)
    {
      if (*(a1 + 80))
      {
        v78 = 0;
        v22 = [(EDGroupedSender *)v20 removeMessages:v5 isGroupEmpty:&v78 messageProvider:*(a1 + 32)];
        if (v78 == 1)
        {
          v23 = _ef_log_EDGroupedSenderQueryHandler();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(a1 + 32);
            v25 = objc_opt_class();
            v26 = *(a1 + 32);
            *buf = 138412802;
            v80 = v25;
            v81 = 2048;
            v82 = v26;
            v83 = 2114;
            v84 = v21;
            v27 = v25;
            _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "<%@ %p> Remove messages from group and it's now empty for sender:%{public}@", buf, 0x20u);
          }

          [*(a1 + 48) removeGroupedSender:v21];
        }
      }

      else
      {
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke_53;
        v74[3] = &unk_1E8252418;
        v33 = *(a1 + 56);
        v34 = *(a1 + 32);
        v75 = v33;
        v76 = v34;
        v77 = *(a1 + 64);
        v35 = [v5 ef_map:v74];
        v22 = [(EDGroupedSender *)v21 changeKeyPaths:*(a1 + 64) forMessages:v35 messageProvider:*(a1 + 32)];
      }

      if (v22)
      {
        [*(a1 + 48) updateGroupedSender:v21];
        v36 = *(a1 + 40);
        v37 = [(EMObject *)v21 objectID];
        [v36 setObject:v22 forKeyedSubscript:v37];

        [*(a1 + 72) addObject:v21];
      }

      goto LABEL_27;
    }

    if (*(a1 + 80))
    {
      v32 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v62 = *(a1 + 32);
        v63 = objc_opt_class();
        v64 = *(a1 + 32);
        *buf = 138412802;
        v80 = v63;
        v81 = 2048;
        v82 = v64;
        v83 = 2114;
        v84 = v73;
        v65 = v63;
        _os_log_error_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_ERROR, "<%@ %p> Group sender already removed for BusinessID:%{public}@", buf, 0x20u);
      }

      v21 = 0;
      v22 = v32;
    }

    else
    {
      v38 = *(a1 + 32);
      v39 = [v5 firstObject];
      v40 = [v39 senderAddress];
      v22 = [v38 _externalBusinessIDForEmailAddress:v40];

      v41 = [EDGroupedSender alloc];
      v71 = [v5 firstObject];
      v42 = [v71 businessID];
      v43 = *(a1 + 32);
      v70 = [v43 query];
      v44 = [v43 _messageQueryFromGroupedQuery:?];
      v45 = [*(a1 + 32) businessPersistence];
      v46 = [*(a1 + 32) messagePersistence];
      v47 = [*(a1 + 32) businessCloudStorage];
      v48 = [*(a1 + 32) unsubscribeDetector];
      v21 = [(EDGroupedSender *)v41 initWithBusinessID:v42 externalBusinessID:v22 messages:v5 originatingQuery:v44 businessPersistence:v45 messagePersistence:v46 businessCloudStorage:v47 unsubscribeDetector:v48];

      v49 = [(EDGroupedSender *)v21 displayMessageItemID];

      if (v49)
      {
        [*(a1 + 48) addGroupedSender:v21];
        [*(a1 + 72) addObject:v21];
LABEL_27:

        v50 = _ef_log_EDGroupedSenderQueryHandler();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 32);
          v52 = objc_opt_class();
          v53 = *(a1 + 32);
          v54 = *(a1 + 40);
          *buf = 138412802;
          v80 = v52;
          v81 = 2048;
          v82 = v53;
          v83 = 2048;
          v84 = v54;
          v55 = v52;
          _os_log_impl(&dword_1C61EF000, v50, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for updating messages", buf, 0x20u);
        }

        os_unfair_lock_unlock(v72 + 22);
        v8 = _ef_log_EDGroupedSenderQueryHandler();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(a1 + 32);
          v57 = objc_opt_class();
          v58 = *(a1 + 32);
          v59 = *(a1 + 40);
          *buf = 138412802;
          v80 = v57;
          v81 = 2048;
          v82 = v58;
          v83 = 2048;
          v84 = v59;
          v60 = v57;
          _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for updating messages", buf, 0x20u);
        }

        goto LABEL_31;
      }

      v32 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v66 = *(a1 + 32);
        v67 = objc_opt_class();
        v68 = *(a1 + 32);
        *buf = 138412802;
        v80 = v67;
        v81 = 2048;
        v82 = v68;
        v83 = 2114;
        v84 = v73;
        v69 = v67;
        _os_log_error_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating group sender with displayMessageItemID equals nil for BusinessID:%{public}@", buf, 0x20u);
      }
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 32);
    v29 = objc_opt_class();
    v30 = *(a1 + 32);
    *buf = 138412802;
    v80 = v29;
    v81 = 2048;
    v82 = v30;
    v83 = 2114;
    v84 = v73;
    v31 = v29;
    _os_log_error_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating empty group sender for BusinessID:%{public}@", buf, 0x20u);
  }

LABEL_31:

  v61 = *MEMORY[0x1E69E9840];
}

id __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke_53(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 objectID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v12 = objc_opt_class();
      v14 = a1[5];
      v13 = a1[6];
      v15 = [v3 ef_publicDescription];
      v16 = 138413058;
      v17 = v12;
      v18 = 2048;
      v19 = v14;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_ERROR, "<%@ %p> No previous message for keyPaths:%{public}@ message: %{public}@", &v16, 0x2Au);
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E699B848]) initWithFirst:v6 second:v3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_updateDifference:(id)difference from:(id)from forChangedGroups:(id)groups
{
  differenceCopy = difference;
  fromCopy = from;
  groupsCopy = groups;
  insertions = [differenceCopy insertions];
  if ([insertions count] != 1)
  {

    goto LABEL_27;
  }

  removals = [differenceCopy removals];
  v11 = [removals count];

  if (v11 != 1)
  {
LABEL_27:
    v40 = differenceCopy;
    goto LABEL_38;
  }

  insertions2 = [differenceCopy insertions];
  firstObject = [insertions2 firstObject];

  removals2 = [differenceCopy removals];
  firstObject2 = [removals2 firstObject];

  index = [firstObject index];
  if (index == [firstObject2 associatedIndex] && (v17 = objc_msgSend(firstObject2, "index"), v17 == objc_msgSend(firstObject, "associatedIndex")))
  {
    v51 = firstObject2;
    v52 = firstObject;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    index2 = [firstObject index];
    associatedIndex = [firstObject associatedIndex];
    if (index2 >= associatedIndex)
    {
      v21 = associatedIndex;
    }

    else
    {
      v21 = index2;
    }

    index3 = [firstObject index];
    associatedIndex2 = [firstObject associatedIndex];
    if (index3 <= associatedIndex2)
    {
      v24 = associatedIndex2;
    }

    else
    {
      v24 = index3;
    }

    index4 = [firstObject index];
    associatedIndex3 = [firstObject associatedIndex];
    if (v24 <= v21)
    {
LABEL_18:
      v29 = fromCopy;
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = v24 - v21;
      if (index4 >= associatedIndex3)
      {
        if (v31)
        {
          v41 = v24 - 1;
          do
          {
            v42 = objc_alloc(MEMORY[0x1E696ADD0]);
            v43 = [v18 objectAtIndexedSubscript:v41 - v21];
            v44 = [v42 initWithObject:v43 type:1 index:v41 + 1 associatedIndex:v41];

            [v30 addObject:v44];
            --v41;
          }

          while (v41 - v21 != -1);
          if (v24 != v21)
          {
            v45 = 0;
            do
            {
              v46 = objc_alloc(MEMORY[0x1E696ADD0]);
              v47 = [v18 objectAtIndexedSubscript:v45];
              v48 = [v46 initWithObject:v47 type:0 index:v21 associatedIndex:v21 + 1];

              [v30 addObject:v48];
              ++v45;
              ++v21;
            }

            while (v24 != v21);
          }
        }
      }

      else if (v31)
      {
        v32 = v24 - 1;
        do
        {
          v33 = objc_alloc(MEMORY[0x1E696ADD0]);
          v34 = [v18 objectAtIndexedSubscript:v32 - v21];
          v35 = [v33 initWithObject:v34 type:1 index:v32 associatedIndex:v32 + 1];

          [v30 addObject:v35];
          --v32;
        }

        while (v32 - v21 != -1);
        if (v24 != v21)
        {
          v36 = 0;
          do
          {
            v37 = objc_alloc(MEMORY[0x1E696ADD0]);
            v38 = [v18 objectAtIndexedSubscript:v36];
            v39 = [v37 initWithObject:v38 type:0 index:v21 + 1 associatedIndex:v21];

            [v30 addObject:v39];
            ++v36;
            ++v21;
          }

          while (v24 != v21);
        }
      }

      v49 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v30];

      differenceCopy = v49;
    }

    else
    {
      v27 = v21;
      while (1)
      {
        v28 = index4 < associatedIndex3 ? v27 : v27 + 1;
        v29 = fromCopy;
        v30 = [fromCopy objectAtIndexedSubscript:v28];
        if (([groupsCopy containsObject:v30] & 1) == 0)
        {
          break;
        }

        [v18 addObject:v30];
        ++v27;

        fromCopy = v29;
        if (v24 == v27)
        {
          goto LABEL_18;
        }
      }
    }

    v40 = differenceCopy;

    fromCopy = v29;
    firstObject2 = v51;
    firstObject = v52;
  }

  else
  {
    v40 = differenceCopy;
  }

LABEL_38:

  return v40;
}

- (void)_notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:(id)from to:(id)to forChangedGroups:(id)groups itemIDsWithSectionChanges:(id)changes includePrecachedSenders:(BOOL)senders logMessage:(id)message
{
  sendersCopy = senders;
  v81 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  groupsCopy = groups;
  changesCopy = changes;
  messageCopy = message;
  v47 = toCopy;
  v42 = fromCopy;
  v43 = groupsCopy;
  v16 = [toCopy differenceFromOrderedSet:fromCopy withOptions:4];
  selfCopy = self;
  v17 = [(EDGroupedSenderQueryHandler *)self _updateDifference:v16 from:fromCopy forChangedGroups:groupsCopy];

  v46 = v17;
  ef_removalsExcludingMoves = [v17 ef_removalsExcludingMoves];
  v19 = [ef_removalsExcludingMoves ef_map:&__block_literal_global_73];

  v44 = v19;
  if ([v19 count])
  {
    v20 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = [v44 count];
      v23 = loggableIdentifiers(v44);
      *buf = 138413314;
      v72 = v21;
      v73 = 2048;
      v74 = selfCopy;
      v75 = 2048;
      v76 = v22;
      v77 = 2114;
      v78 = messageCopy;
      v79 = 2114;
      v80 = v23;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu deleted groups (%{public}@):\n%{public}@", buf, 0x34u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)selfCopy resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)selfCopy observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedDeletedObjectIDs:v44];
  }

  v26 = [changesCopy mutableCopy];
  [v46 ef_groupedInsertionsByObjectForTargetOrderedSet:toCopy inferMoves:1];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v27 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v27)
  {
    v49 = *v66;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v65 + 1) + 8 * i);
        objects = [v29 objects];
        previousObject = [v29 previousObject];
        if ([v29 isMove])
        {
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_74;
          v63[3] = &unk_1E8252488;
          v63[4] = selfCopy;
          v64 = messageCopy;
          [(EDGroupedSenderQueryHandler *)selfCopy _notifyObserversOfMovedSenders:objects previousSender:previousObject includePrecachedSenders:sendersCopy notifyBlock:v63];
        }

        else
        {
          v32 = [(EDGroupedSenderQueryHandler *)selfCopy _senderItemIDsBySectionForSenders:objects];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_76;
          v61[3] = &unk_1E8252488;
          v61[4] = selfCopy;
          v62 = messageCopy;
          [(EDGroupedSenderQueryHandler *)selfCopy _notifyObserversOfInsertedSenders:objects senderItemIDsBySection:v32 previousSender:previousObject includePrecachedSenders:sendersCopy notifyBlock:v61];
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        objects2 = [v29 objects];
        v34 = [objects2 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v34)
        {
          v35 = *v58;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v58 != v35)
              {
                objc_enumerationMutation(objects2);
              }

              itemID = [*(*(&v57 + 1) + 8 * j) itemID];
              [v26 removeObject:itemID];
            }

            v34 = [objects2 countByEnumeratingWithState:&v57 objects:v69 count:16];
          }

          while (v34);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v27);
  }

  if ([v26 count])
  {
    v38 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = [v26 count];
      *buf = 138413314;
      v72 = v39;
      v73 = 2048;
      v74 = selfCopy;
      v75 = 2048;
      v76 = v40;
      v77 = 2114;
      v78 = messageCopy;
      v79 = 2114;
      v80 = v26;
      _os_log_impl(&dword_1C61EF000, v38, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu additional groups with section changes (%{public}@):\n%{public}@", buf, 0x34u);
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_77;
    v53[3] = &unk_1E82524B0;
    v54 = v26;
    v55 = selfCopy;
    v56 = v47;
    [v56 enumerateObjectsUsingBlock:v53];
  }

  v41 = *MEMORY[0x1E69E9840];
}

id __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = [v2 objectID];

  return v3;
}

void __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v14 = [v7 count];
    v15 = *(a1 + 40);
    v16 = loggableIdentifiers(v7);
    v20 = 138413570;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v15;
    v30 = 2114;
    v31 = v16;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu groups moved after %{public}@ (%{public}@):\n%{public}@", &v20, 0x3Eu);
  }

  v17 = [*(a1 + 32) resultsObserverIfUncanceled];
  v18 = [*(a1 + 32) observationIdentifier];
  [v17 observer:v18 matchedMovedObjectIDs:v7 after:v8 extraInfo:v9];

  v19 = *MEMORY[0x1E69E9840];
}

void __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_76(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v14 = [v7 count];
    v15 = *(a1 + 40);
    v16 = loggableIdentifiers(v7);
    v20 = 138413570;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v15;
    v30 = 2114;
    v31 = v16;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu groups inserted after %{public}@ (%{public}@):\n%{public}@", &v20, 0x3Eu);
  }

  v17 = [*(a1 + 32) resultsObserverIfUncanceled];
  v18 = [*(a1 + 32) observationIdentifier];
  [v17 observer:v18 matchedAddedObjectIDs:v7 after:v8 extraInfo:v9];

  v19 = *MEMORY[0x1E69E9840];
}

void __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_77(uint64_t a1, void *a2, char *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 itemID];
  LOBYTE(v6) = [v6 containsObject:v7];

  if (v6)
  {
    v8 = *(a1 + 40);
    v19[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v10 = [v8 _senderItemIDsBySectionForSenders:v9];

    v11 = [*(a1 + 40) _extraInfoForSenderItemIDsBySection:v10 includePrecachedSendersFromSenders:0];
    if (a3)
    {
      a3 = [*(a1 + 48) objectAtIndexedSubscript:a3 - 1];
    }

    v12 = [*(a1 + 40) resultsObserverIfUncanceled];
    v13 = [*(a1 + 40) observationIdentifier];
    v14 = [v5 objectID];
    v18 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v16 = [a3 objectID];
    [v12 observer:v13 matchedMovedObjectIDs:v15 after:v16 extraInfo:v11];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversOfInsertedSenders:(id)senders senderItemIDsBySection:(id)section previousSender:(id)sender includePrecachedSenders:(BOOL)precachedSenders notifyBlock:(id)block
{
  precachedSendersCopy = precachedSenders;
  sendersCopy = senders;
  sectionCopy = section;
  blockCopy = block;
  objectID = [sender objectID];
  v15 = [sendersCopy ef_mapSelector:sel_objectID];
  if (precachedSendersCopy)
  {
    v16 = sendersCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(EDGroupedSenderQueryHandler *)self _extraInfoForSenderItemIDsBySection:sectionCopy includePrecachedSendersFromSenders:v16];
  blockCopy[2](blockCopy, v15, objectID, v17);
}

- (id)_senderItemIDsBySectionForSenders:(id)senders
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__EDGroupedSenderQueryHandler__senderItemIDsBySectionForSenders___block_invoke;
  v6[3] = &unk_1E82524D8;
  v6[4] = self;
  v3 = [senders ef_groupBy:v6];
  v4 = [v3 ef_mapValues:&__block_literal_global_84_0];

  return v4;
}

id __65__EDGroupedSenderQueryHandler__senderItemIDsBySectionForSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _sectionIndexForGroupedSender:a2 sectionIdentifier:&v5];
  v3 = v5;

  return v3;
}

id __65__EDGroupedSenderQueryHandler__senderItemIDsBySectionForSenders___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_itemID];

  return v2;
}

- (id)_extraInfoForSenderItemIDsBySection:(id)section includePrecachedSendersFromSenders:(id)senders
{
  sectionCopy = section;
  sendersCopy = senders;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v8 initWithObjectsAndKeys:{sectionCopy, *MEMORY[0x1E699A800], 0}];
  if (sendersCopy)
  {
    query = [(EDMessageRepositoryQueryHandler *)self query];
    targetClassOptions = [query targetClassOptions];
    v12 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9E8]];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      os_unfair_lock_lock(&self->_groupedSendersLock);
      v14 = [sendersCopy ef_prefix:unsignedIntegerValue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __102__EDGroupedSenderQueryHandler__extraInfoForSenderItemIDsBySection_includePrecachedSendersFromSenders___block_invoke;
      v16[3] = &unk_1E8252520;
      v16[4] = self;
      unsignedIntegerValue = [v14 ef_map:v16];

      os_unfair_lock_unlock(&self->_groupedSendersLock);
      if ([unsignedIntegerValue count])
      {
        [v9 setObject:unsignedIntegerValue forKeyedSubscript:*MEMORY[0x1E699A7F0]];
      }
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return v9;
}

id __102__EDGroupedSenderQueryHandler__extraInfoForSenderItemIDsBySection_includePrecachedSendersFromSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _groupedSenderForEDGroupedSender:a2];

  return v2;
}

- (id)_itemIDsWithSectionChangesFrom:(id)from to:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  allKeys = [fromCopy allKeys];
  v23 = [v7 initWithArray:allKeys];

  allKeys2 = [toCopy allKeys];
  [v23 addObjectsFromArray:allKeys2];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v23;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x1E695DFD8]);
        v15 = [fromCopy objectForKeyedSubscript:v13];
        v16 = [v14 initWithArray:v15];

        v17 = objc_alloc(MEMORY[0x1E695DFA8]);
        v18 = [toCopy objectForKeyedSubscript:v13];
        v19 = [v17 initWithArray:v18];

        if (([v16 isEqualToSet:v19] & 1) == 0)
        {
          v20 = [v16 mutableCopy];
          [v20 minusSet:v19];
          [v19 minusSet:v16];
          [v6 unionSet:v20];
          [v6 unionSet:v19];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_filterGroupedSenderChanges:(id)changes withVisibleSenders:(id)senders
{
  changesCopy = changes;
  sendersCopy = senders;
  v7 = [sendersCopy ef_compactMap:&__block_literal_global_91];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__EDGroupedSenderQueryHandler__filterGroupedSenderChanges_withVisibleSenders___block_invoke_2;
  v9[3] = &unk_1E8252568;
  v10 = v7;
  v8 = v7;
  [changesCopy ef_removeObjectsPassingTest:v9];
}

id __78__EDGroupedSenderQueryHandler__filterGroupedSenderChanges_withVisibleSenders___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (id)_messageQueryFromGroupedQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc(MEMORY[0x1E699AE28]);
  v5 = objc_opt_class();
  predicate = [queryCopy predicate];
  sortDescriptors = [queryCopy sortDescriptors];
  v8 = [v4 initWithTargetClass:v5 predicate:predicate sortDescriptors:sortDescriptors queryOptions:objc_msgSend(queryCopy label:{"queryOptions"), 0}];

  return v8;
}

- (BOOL)_queryHelperIsCurrent:(id)current
{
  currentCopy = current;
  messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
  LOBYTE(self) = messageQueryHelper == currentCopy;

  return self;
}

- (id)_externalBusinessIDForEmailAddress:(id)address
{
  addressCopy = address;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  preferredGroupedSenderGrouping = [em_userDefaults preferredGroupedSenderGrouping];

  businessPersistence = [(EDGroupedSenderQueryHandler *)self businessPersistence];
  v8 = [businessPersistence businessExternalIDForEmailAddress:addressCopy grouping:preferredGroupedSenderGrouping];

  return v8;
}

- (id)messagesForGroupedSender:(id)sender limit:(int64_t)limit
{
  v28[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v7 = senderCopy;
  if (senderCopy)
  {
    v8 = [MEMORY[0x1E699ADA0] predicateForMessagesForBusinessID:{objc_msgSend(senderCopy, "businessID")}];
    messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
    v28[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v11 = [messageQueryHelper messagesWithAdditionalPredicates:v10 limit:limit];

    if (![v11 count])
    {
      v12 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        messageQueryHelper2 = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
        query = [messageQueryHelper2 query];
        v18 = 138413314;
        v19 = v15;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = v7;
        v24 = 2048;
        limitCopy = limit;
        v26 = 2114;
        v27 = query;
        _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "<%@ %p> found 0 messages for grouped sender:%{public}@ limit:%ld query:%{public}@", &v18, 0x34u);
      }
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)groupedSenderForObjectID:(id)d isPersisted:(BOOL *)persisted error:(id *)error
{
  error = [(EDGroupedSenderQueryHandler *)self _groupedSenderForObjectID:d, persisted, error];
  os_unfair_lock_lock(&self->_groupedSendersLock);
  v8 = [(EDGroupedSenderQueryHandler *)self _groupedSenderForEDGroupedSender:error];
  os_unfair_lock_unlock(&self->_groupedSendersLock);
  if (persisted)
  {
    *persisted = 0;
  }

  return v8;
}

- (void)updatedBusinessesWithExternalIDs:(id)ds removedBusinessesWithExternalIDs:(id)iDs
{
  iDsCopy = iDs;
  v6 = [ds mutableCopy];
  [v6 ef_addAbsentObjectsFromArrayAccordingToEquals:iDsCopy];
  [(EDGroupedSenderQueryHandler *)self updateUnseenCountsForBusinessesWithExternalIDs:v6];
}

- (void)persistenceIsMergingBusinessID:(int64_t)d intoBusinessID:(int64_t)iD
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v11 = [threadDictionary objectForKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

  v8 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v12 forKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

    v8 = v12;
  }

  v13 = v8;
  [v8 setObject:iD forKey:d];
}

- (void)_persistenceDidFinishMergingBusinesses
{
  v38 = *MEMORY[0x1E69E9840];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v5 = [threadDictionary objectForKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

  currentThread2 = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:0 forKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

  if ([v5 count])
  {
    v8 = [objc_opt_class() resolveMergePathsForMergedBusinesses:v5];

    query = [(EDMessageRepositoryQueryHandler *)self query];
    limit = [query limit];

    groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
    v12 = limit & ~(limit >> 63);
    v13 = [groupedSenders orderedGroupedSendersWithLimit:{v12, groupedSenders}];
    array = [v13 array];
    v15 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__EDGroupedSenderQueryHandler__persistenceDidFinishMergingBusinesses__block_invoke;
    v29[3] = &unk_1E82525B0;
    v29[4] = self;
    v17 = v16;
    v30 = v17;
    v18 = groupedSenders;
    v31 = v18;
    enumerateBusinessesInMapTable(v8, v29);
    v19 = [v18 orderedGroupedSendersWithLimit:v12];
    array2 = [v13 array];
    v21 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

    [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v17 withVisibleSenders:v19];
    if ([v17 count])
    {
      v22 = _ef_log_EDGroupedSenderQueryHandler();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = [v17 count];
        *buf = 138412802;
        v33 = v23;
        v34 = 2048;
        selfCopy = self;
        v36 = 2048;
        v37 = v24;
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after groups were merged)", buf, 0x20u);
      }

      resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
      observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
      [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v17];
    }

    v27 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v15 to:v21];
    [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v13 to:v19 forChangedGroups:0 itemIDsWithSectionChanges:v27 includePrecachedSenders:0 logMessage:@"after groups were merged"];
  }

  else
  {
    v8 = v5;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __69__EDGroupedSenderQueryHandler__persistenceDidFinishMergingBusinesses__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138412802;
    v64 = v8;
    v65 = 2048;
    v66 = v9;
    v67 = 2048;
    v68 = v10;
    v11 = v8;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  v62 = *(a1 + 32);
  os_unfair_lock_lock(v62 + 22);
  v12 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *buf = 138412802;
    v64 = v14;
    v65 = 2048;
    v66 = v15;
    v67 = 2048;
    v68 = v16;
    v17 = v14;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  v18 = *(a1 + 48);
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v20 = [v18 objectForKeyedSubscript:v19];

  if (v20)
  {
    v21 = *(a1 + 48);
    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = [v20 messages];
      v25 = [v23 addMessages:v24];

      [*(a1 + 48) updateGroupedSender:v23];
      if (v25)
      {
        v26 = *(a1 + 40);
        v27 = [v23 objectID];
        [v26 setObject:v25 forKeyedSubscript:v27];
      }
    }

    else
    {
      v25 = [v20 externalBusinessID];
      v32 = [v20 messages];
      v33 = [v32 count] == 0;

      if (v33)
      {
        v34 = _ef_log_EDGroupedSenderQueryHandler();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v56 = *(a1 + 32);
          v57 = objc_opt_class();
          v58 = *(a1 + 32);
          *buf = 138412802;
          v64 = v57;
          v65 = 2048;
          v66 = v58;
          v67 = 2114;
          v68 = v20;
          v59 = v57;
          _os_log_error_impl(&dword_1C61EF000, v34, OS_LOG_TYPE_ERROR, "<%@ %p> Finished Merging Businesses: Found empty messages with old grouped sender:%{public}@", buf, 0x20u);
        }
      }

      v35 = [EDGroupedSender alloc];
      v36 = [v20 messages];
      v37 = *(a1 + 32);
      v60 = [v37 query];
      v61 = [v37 _messageQueryFromGroupedQuery:v60];
      v38 = [*(a1 + 32) businessPersistence];
      v39 = a3;
      v40 = [*(a1 + 32) messagePersistence];
      v41 = [*(a1 + 32) businessCloudStorage];
      v42 = [*(a1 + 32) unsubscribeDetector];
      v23 = [(EDGroupedSender *)v35 initWithBusinessID:v39 externalBusinessID:v25 messages:v36 originatingQuery:v61 businessPersistence:v38 messagePersistence:v40 businessCloudStorage:v41 unsubscribeDetector:v42];

      [*(a1 + 48) addGroupedSender:v23];
    }

    [*(a1 + 48) removeGroupedSender:v20];
  }

  else
  {
    v23 = _ef_log_EDGroupedSenderQueryHandler();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      v30 = *(a1 + 32);
      *buf = 138412802;
      v64 = v29;
      v65 = 2048;
      v66 = v30;
      v67 = 2048;
      v68 = a2;
      v31 = v29;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_INFO, "<%@ %p> Ignoring business ID %lld being merged because it does not exist in our groups", buf, 0x20u);
    }
  }

  v43 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(a1 + 32);
    v45 = objc_opt_class();
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    *buf = 138412802;
    v64 = v45;
    v65 = 2048;
    v66 = v46;
    v67 = 2048;
    v68 = v47;
    v48 = v45;
    _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  os_unfair_lock_unlock(v62 + 22);
  v49 = _ef_log_EDGroupedSenderQueryHandler();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(a1 + 32);
    v51 = objc_opt_class();
    v52 = *(a1 + 32);
    v53 = *(a1 + 40);
    *buf = 138412802;
    v64 = v51;
    v65 = 2048;
    v66 = v52;
    v67 = 2048;
    v68 = v53;
    v54 = v51;
    _os_log_impl(&dword_1C61EF000, v49, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  v55 = *MEMORY[0x1E69E9840];
}

+ (id)resolveMergePathsForMergedBusinesses:(id)businesses
{
  businessesCopy = businesses;
  v6 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__EDGroupedSenderQueryHandler_resolveMergePathsForMergedBusinesses___block_invoke;
  v12[3] = &unk_1E8252600;
  v7 = v6;
  v13 = v7;
  v15 = a2;
  selfCopy = self;
  v8 = businessesCopy;
  v14 = v8;
  enumerateBusinessesInMapTable(v8, v12);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __68__EDGroupedSenderQueryHandler_resolveMergePathsForMergedBusinesses___block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  if (NSMapGet(*(a1 + 32), a2))
  {
    return;
  }

  if (a2 == a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EDGroupedSenderQueryHandler.m" lineNumber:962 description:@"Cycle while merging businesses"];
  }

  v6 = NSMapGet(*(a1 + 32), a3);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);

    [v8 setObject:v7 forKey:a2];
    return;
  }

  v9 = 0;
  while (1)
  {
    v10 = NSMapGet(*(a1 + 40), a3);
    v11 = v10;
    if (!v10)
    {
      break;
    }

    if (v10 == a2)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EDGroupedSenderQueryHandler.m" lineNumber:976 description:@"Cycle while merging businesses"];

      if (v9)
      {
        goto LABEL_13;
      }

LABEL_12:
      v9 = objc_alloc_init(MEMORY[0x1E699B810]);
      goto LABEL_13;
    }

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_13:
    [v9 addIndex:a3];
    if ([v9 containsIndex:v11])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EDGroupedSenderQueryHandler.m" lineNumber:983 description:@"Cycle while merging businesses"];
    }

    v12 = NSMapGet(*(a1 + 32), v11);
    v13 = v12;
    a3 = v11;
    if (v12)
    {
      a3 = v12;
      goto LABEL_20;
    }
  }

  v13 = a3;
LABEL_20:
  [*(a1 + 32) setObject:v13 forKey:a2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__EDGroupedSenderQueryHandler_resolveMergePathsForMergedBusinesses___block_invoke_2;
  v17[3] = &unk_1E82525D8;
  v18 = *(a1 + 32);
  v19 = a3;
  [v9 enumerateIndexesUsingBlock:v17];
}

@end