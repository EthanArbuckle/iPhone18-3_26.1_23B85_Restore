@interface EDPrecomputedThreadQueryHandler
+ (OS_os_log)log;
+ (id)sortKeysForSectionPredicates:(id)a3;
- (BOOL)_isAddingOrDeletingObjectID:(id)a3;
- (BOOL)_shouldSectionItemsRemainInSection;
- (BOOL)start;
- (BOOL)updateDisplayDate;
- (EDPrecomputedThreadQueryHandler)initWithQuery:(id)a3 threadScope:(id)a4 sortKeys:(id)a5 messagePersistence:(id)a6 threadPersistence:(id)a7 hookRegistry:(id)a8 remindMeNotificationController:(id)a9 observer:(id)a10 observationIdentifier:(id)a11 observationResumer:(id)a12;
- (id)_extraInfoPrecachedThreadsForInitialObjectIDs:(id)a3;
- (id)_messageForPersistedMessage:(id)a3;
- (id)itemIDsForStateCaptureWithErrorString:(id *)a3;
- (id)labelForStateCapture;
- (id)messageListItemForObjectID:(id)a3 error:(id *)a4;
- (id)sectionIdentifierForThreadObjectID:(id)a3;
- (void)_addChangeToPendingChanges:(id)a3 forThreadObjectID:(id)a4;
- (void)_flushUpdatesWithReason:(id)a3;
- (void)_getInitialResults;
- (void)_oldestThreadsNeedUpdate;
- (void)_onScheduler:(id)a3 performCancelableBlock:(id)a4;
- (void)_persistenceIsAddingThreadWithObjectID:(id)a3;
- (void)_persistenceIsChangingThreadWithObjectID:(id)a3 changedKeyPaths:(id)a4;
- (void)_reportMoveForThreadObjectID:(id)a3;
- (void)_updateDisplayDateForMessagesIfNeeded;
- (void)cancel;
- (void)controller:(id)a3 messageTimerFired:(id)a4;
- (void)persistenceDidChangeBusinessIDForMessages:(id)a3 fromBusinessID:(int64_t)a4;
- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)a3 conversationID:(int64_t)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)a3 orConversationID:(int64_t)a4 message:(id)a5 generationWindow:(id)a6;
- (void)persistenceDidFinishThreadUpdates;
- (void)persistenceDidUpdateProperties:(id)a3 message:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsAddingThread:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5;
- (void)persistenceIsChangingThreadWithObjectID:(id)a3 changedKeyPaths:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsChangingThreadWithObjectID:(id)a3 newIsUrgentValue:(BOOL)a4 generationWindow:(id)a5;
- (void)persistenceIsDeletingThreadWithObjectID:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsMarkingThreadAsJournaledWithObjectID:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsReconcilingJournaledThreadsWithObjectIDs:(id)a3 generationWindow:(id)a4;
- (void)test_tearDown;
@end

@implementation EDPrecomputedThreadQueryHandler

- (BOOL)start
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = EDPrecomputedThreadQueryHandler;
  v3 = [(EDMessageRepositoryQueryHandler *)&v16 start];
  v4 = +[EDPrecomputedThreadQueryHandler log];
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

    v7 = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
    v4 = [v7 addRemindMeObserver:self];

    v8 = [(EDPrecomputedThreadQueryHandler *)self cancelationToken];
    [v8 addCancelable:v4];

    v9 = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
    v10 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__EDPrecomputedThreadQueryHandler_start__block_invoke;
    v14[3] = &unk_1E8255F20;
    v14[4] = self;
    v11 = v9;
    v15 = v11;
    [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v10 performCancelableBlock:v14];
  }

  else if (v5)
  {
    *buf = 134217984;
    v18 = self;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: Ignoring subsequent call to -start.", buf, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

void __40__EDPrecomputedThreadQueryHandler_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateDisplayDateForMessagesIfNeeded];
  [*(a1 + 40) registerThreadChangeHookResponder:*(a1 + 32)];
  [*(a1 + 40) registerMessageChangeHookResponder:*(a1 + 32)];
  [*(a1 + 40) registerBusinessChangeHookResponder:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) cancelationToken];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EDPrecomputedThreadQueryHandler_start__block_invoke_2;
  v6[3] = &unk_1E8250098;
  objc_copyWeak(&v8, &location);
  v7 = *(a1 + 40);
  [v2 addCancelationBlock:v6];

  [*(a1 + 32) _getInitialResults];
  v3 = *(a1 + 32);
  v4 = [v3 backgroundWorkScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__EDPrecomputedThreadQueryHandler_start__block_invoke_3;
  v5[3] = &unk_1E8255EF8;
  v5[4] = *(a1 + 32);
  [v3 _onScheduler:v4 performCancelableBlock:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __40__EDPrecomputedThreadQueryHandler_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) unregisterHookResponder:WeakRetained];
    v3 = [v5 threadPersistence];
    v4 = [v5 threadScope];
    [v3 verifyConsistencyOfThreadScope:v4];

    WeakRetained = v5;
  }
}

- (void)_updateDisplayDateForMessagesIfNeeded
{
  if ([(EDPrecomputedThreadQueryHandler *)self updateDisplayDate])
  {
    v11 = [(EDMessageRepositoryQueryHandler *)self query];
    v3 = objc_alloc(MEMORY[0x1E699AE28]);
    v4 = objc_opt_class();
    v5 = [v11 predicate];
    v6 = [v11 sortDescriptors];
    v7 = [v3 initWithTargetClass:v4 predicate:v5 sortDescriptors:v6 queryOptions:objc_msgSend(v11 label:{"queryOptions"), 0}];

    v8 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
    [v8 updateBeforeDisplayForMessagesMatchingQuery:v7];

    v9 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
    v10 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
    [v9 updateIsUrgentForThreadScope:v10];
  }
}

- (BOOL)updateDisplayDate
{
  v2 = [(EDMessageRepositoryQueryHandler *)self query];
  v3 = [v2 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699A9D8]];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDPrecomputedThreadQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_79 != -1)
  {
    dispatch_once(&log_onceToken_79, block);
  }

  v2 = log_log_79;

  return v2;
}

- (void)_getInitialResults
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  v4 = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 100;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__33;
  v32[4] = __Block_byref_object_dispose__33;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v5 = [(EDPrecomputedThreadQueryHandler *)self sectionPredicates];
  v6 = [v5 count] == 0;

  v31 = v6;
  v7 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
  v8 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v9 = [(EDPrecomputedThreadQueryHandler *)self sortKeys];
  v10 = v35[3];
  v11 = [(EDPrecomputedThreadQueryHandler *)self unreportedJournaledObjectIDs];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __53__EDPrecomputedThreadQueryHandler__getInitialResults__block_invoke;
  v23 = &unk_1E8255F48;
  v27 = &v34;
  v24 = self;
  v28 = v32;
  v29 = v30;
  v12 = v3;
  v25 = v12;
  v13 = v4;
  v26 = v13;
  [v7 threadObjectIDsForThreadScope:v8 sortKeys:v9 initialBatchSize:v10 journaledObjectIDs:v11 batchBlock:&v20];

  v14 = [(EDPrecomputedThreadQueryHandler *)self cancelationToken:v20];
  LODWORD(v8) = [v14 isCanceled];

  if (v8)
  {
    v15 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      *buf = 134218242;
      v39 = self;
      v40 = 2114;
      v41 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "%p: Canceled initial results\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v17 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      *buf = 134218242;
      v39 = self;
      v40 = 2114;
      v41 = v18;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Returning initial load did finish\n%{public}@", buf, 0x16u);
    }

    [v12 observerDidFinishInitialLoad:v13 extraInfo:0];
  }

  [(EDPrecomputedThreadQueryHandler *)self _oldestThreadsNeedUpdate];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v34, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __53__EDPrecomputedThreadQueryHandler__getInitialResults__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  if (*(*(*(a1 + 56) + 8) + 24) == 100)
  {
    v9 = [*(a1 + 32) sectionPredicates];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [*(a1 + 32) threadPersistence];
      v12 = [*(a1 + 32) sortKeys];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [*(a1 + 32) sortKeys];
      v15 = [*(a1 + 32) threadScope];
      v16 = [v11 firstObjectIDNotMatchingSortKey:v13 otherSortKeys:v14 inThreadScope:v15];
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  v19 = +[EDPrecomputedThreadQueryHandler log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = [v7 count];
    v22 = [*(a1 + 32) threadScope];
    *buf = 134218498;
    v42 = v20;
    v43 = 2048;
    v44 = v21;
    v45 = 2114;
    v46 = v22;
    _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "%p: Returning batch of %lu results\n%{public}@", buf, 0x20u);
  }

  v23 = *(a1 + 32);
  v24 = +[EDPrecomputedThreadQueryHandler log];
  v25 = [v23 _distinctObjectIDs:v7 queryHandlerLog:v24];

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    if (*(*(*(a1 + 64) + 8) + 40) && [v7 containsObject:?])
    {
      v26 = [v7 indexOfObject:*(*(*(a1 + 64) + 8) + 40)];
      if (v26)
      {
        v27 = [v7 ef_prefix:v26];
      }

      else
      {
        v27 = 0;
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      v27 = v7;
    }

    v28 = [*(a1 + 32) sectionIndexesByConversationID];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __53__EDPrecomputedThreadQueryHandler__getInitialResults__block_invoke_51;
    v39[3] = &unk_1E8250D20;
    v40 = v27;
    v29 = v27;
    [v28 performWhileLocked:v39];
  }

  v30 = [*(a1 + 32) _extraInfoForThreadObjectIDs:v25 isMove:0];
  if (*(*(*(a1 + 56) + 8) + 24) == 100)
  {
    v31 = [*(a1 + 32) _extraInfoPrecachedThreadsForInitialObjectIDs:v25];
    if (v31)
    {
      v32 = [v30 mutableCopy];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v35 = v34;

      [v35 addEntriesFromDictionary:v31];
      v36 = [v35 copy];

      v30 = v36;
    }
  }

  [*(a1 + 40) observer:*(a1 + 48) matchedAddedObjectIDs:v25 before:0 extraInfo:v30];
  *(*(*(a1 + 56) + 8) + 24) = 15000;
  *a3 = *(*(*(a1 + 56) + 8) + 24);
  v37 = [*(a1 + 32) cancelationToken];
  *a4 = [v37 isCanceled];

  objc_autoreleasePoolPop(v8);
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_oldestThreadsNeedUpdate
{
  v3 = [(EDMessageRepositoryQueryHandler *)self query];
  v4 = [v3 queryOptions];

  if (v4)
  {
    v5 = [(EDPrecomputedThreadQueryHandler *)self updateOldestThreadsCancelationToken];

    if (v5)
    {
      v6 = [(EDPrecomputedThreadQueryHandler *)self updateOldestThreadsCancelationToken];
      [v6 cancel];
    }

    objc_initWeak(&location, self);
    v7 = [(EDPrecomputedThreadQueryHandler *)self backgroundWorkScheduler];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __59__EDPrecomputedThreadQueryHandler__oldestThreadsNeedUpdate__block_invoke;
    v14 = &unk_1E8250808;
    objc_copyWeak(&v15, &location);
    v8 = [v7 afterDelay:&v11 performBlock:2.0];
    [(EDPrecomputedThreadQueryHandler *)self setUpdateOldestThreadsCancelationToken:v8, v11, v12, v13, v14];

    v9 = [(EDPrecomputedThreadQueryHandler *)self cancelationToken];
    v10 = [(EDPrecomputedThreadQueryHandler *)self updateOldestThreadsCancelationToken];
    [v9 addCancelable:v10];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __38__EDPrecomputedThreadQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_79;
  log_log_79 = v1;
}

+ (id)sortKeysForSectionPredicates:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1 && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E699ADA0], "predicateForIsUrgentMessages"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqual:", v5), v5, v4, v6))
    {
      v12[0] = @"UrgentDescending";
      v7 = v12;
    }

    else
    {
      v11 = @"Invalid";
      v7 = &v11;
    }

    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (EDPrecomputedThreadQueryHandler)initWithQuery:(id)a3 threadScope:(id)a4 sortKeys:(id)a5 messagePersistence:(id)a6 threadPersistence:(id)a7 hookRegistry:(id)a8 remindMeNotificationController:(id)a9 observer:(id)a10 observationIdentifier:(id)a11 observationResumer:(id)a12
{
  v17 = a3;
  obj = a4;
  v77 = a4;
  v71 = a5;
  v76 = a5;
  v18 = a6;
  v75 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v78 = a12;
  v79.receiver = self;
  v79.super_class = EDPrecomputedThreadQueryHandler;
  v72 = v20;
  v74 = v19;
  v23 = v19;
  v24 = v18;
  v25 = [(EDMessageRepositoryQueryHandler *)&v79 initWithQuery:v17 messagePersistence:v18 hookRegistry:v23 remindMeNotificationController:v20 observer:v21 observationIdentifier:v22];
  if (v25)
  {
    v26 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDPrecomputedThreadQueryHandler.changeScheduler" qualityOfService:25];
    changeScheduler = v25->_changeScheduler;
    v25->_changeScheduler = v26;

    v28 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDPrecomputedThreadQueryHandler.backgroundWorkScheduler" qualityOfService:9];
    backgroundWorkScheduler = v25->_backgroundWorkScheduler;
    v25->_backgroundWorkScheduler = v28;

    v30 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v25->_cancelationToken;
    v25->_cancelationToken = v30;

    objc_storeStrong(&v25->_threadScope, obj);
    objc_storeStrong(&v25->_sortKeys, v71);
    objc_storeStrong(&v25->_threadPersistence, a7);
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingChanges = v25->_pendingChanges;
    v25->_pendingChanges = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingPositionChanges = v25->_pendingPositionChanges;
    v25->_pendingPositionChanges = v34;

    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    unreportedJournaledObjectIDs = v25->_unreportedJournaledObjectIDs;
    v25->_unreportedJournaledObjectIDs = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reportedJournaledObjectIDs = v25->_reportedJournaledObjectIDs;
    v25->_reportedJournaledObjectIDs = v38;

    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    oldestThreadObjectIDsByMailbox = v25->_oldestThreadObjectIDsByMailbox;
    v25->_oldestThreadObjectIDsByMailbox = v40;

    v42 = [[EDUpdateThrottler alloc] initWithName:@"Precomputed Threads" delayInterval:v78 resumable:1.0];
    updateThrottler = v25->_updateThrottler;
    v25->_updateThrottler = v42;

    v44 = objc_alloc_init(MEMORY[0x1E699AF00]);
    reloadSummaryHelper = v25->_reloadSummaryHelper;
    v25->_reloadSummaryHelper = v44;

    v46 = MEMORY[0x1E699ADA0];
    v47 = [v17 predicate];
    v48 = [v18 mailboxPersistence];
    v49 = [v46 mailboxScopeForPredicate:v47 withMailboxTypeResolver:v48];
    mailboxScope = v25->_mailboxScope;
    v25->_mailboxScope = v49;

    v51 = objc_alloc(MEMORY[0x1E699B7F0]);
    v52 = objc_opt_new();
    v53 = [v51 initWithObject:v52];
    sectionIndexesByConversationID = v25->_sectionIndexesByConversationID;
    v25->_sectionIndexesByConversationID = v53;

    v55 = objc_alloc(MEMORY[0x1E699AC58]);
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = [v55 initWithTitle:v57 delegate:v25];
    stateCapturer = v25->_stateCapturer;
    v25->_stateCapturer = v58;

    v60 = [v17 targetClassOptions];
    v61 = [v60 objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
    sectionPredicates = v25->_sectionPredicates;
    v25->_sectionPredicates = v61;

    v63 = v25->_sectionPredicates;
    if (v63)
    {
      if (-[EFOrderedDictionary count](v63, "count") != 1 || (-[EFOrderedDictionary objectAtIndexedSubscript:](v25->_sectionPredicates, "objectAtIndexedSubscript:", 0), v64 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E699ADA0] predicateForIsUrgentMessages], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v64, "isEqual:", v65), v65, v64, (v66 & 1) == 0))
      {
        v67 = [MEMORY[0x1E696AAA8] currentHandler];
        [v67 handleFailureInMethod:a2 object:v25 file:@"EDPrecomputedThreadQueryHandler.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"(_sectionPredicates.count == 1) && [_sectionPredicates[kIsUrgentSectionPredicateIndex] isEqual:[EMMessageListItemPredicates predicateForIsUrgentMessages]]"}];
      }
    }

    [(EFOrderedDictionary *)v25->_sectionPredicates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_65];
  }

  return v25;
}

void __40__EDPrecomputedThreadQueryHandler_start__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) threadPersistence];
  v2 = [*(a1 + 32) threadScope];
  [v3 updateLastViewedDateForThreadScope:v2];
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = EDPrecomputedThreadQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v5 cancel];
  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  [(EFCancelable *)self->_updateOldestThreadsCancelationToken cancel];
  if (EFIsRunningUnitTests())
  {
    v3 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    [v3 performSyncBlock:&__block_literal_global_37_0];

    v4 = [(EDPrecomputedThreadQueryHandler *)self backgroundWorkScheduler];
    [v4 performSyncBlock:&__block_literal_global_39_0];
  }
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"EDPrecomputedThreadQueryHandler.m" lineNumber:176 description:{@"%s can only be called from unit tests", "-[EDPrecomputedThreadQueryHandler test_tearDown]"}];
  }

  v7.receiver = self;
  v7.super_class = EDPrecomputedThreadQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v7 test_tearDown];
  v4 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
  [v4 performSyncBlock:&__block_literal_global_46_2];

  v5 = [(EDPrecomputedThreadQueryHandler *)self backgroundWorkScheduler];
  [v5 performSyncBlock:&__block_literal_global_48_1];
}

- (void)_onScheduler:(id)a3 performCancelableBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(EDPrecomputedThreadQueryHandler *)self cancelationToken];
  v8 = [v7 isCanceled];

  if ((v8 & 1) == 0)
  {
    v9 = [(EDPrecomputedThreadQueryHandler *)self cancelationToken];
    v10 = [v11 performCancelableBlock:v6];
    [v9 addCancelable:v10];
  }
}

void __53__EDPrecomputedThreadQueryHandler__getInitialResults__block_invoke_51(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v10 + 1) + 8 * v7), "conversationID", v10)}];
        [v3 setObject:&unk_1F45E68E0 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)messageListItemForObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
  v8 = [(EDMessageRepositoryQueryHandler *)self query];
  v9 = [v7 threadForObjectID:v6 originatingQuery:v8 error:a4];

  return v9;
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
  v21 = __Block_byref_object_copy__33;
  v22 = __Block_byref_object_dispose__33;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__EDPrecomputedThreadQueryHandler__extraInfoPrecachedThreadsForInitialObjectIDs___block_invoke;
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
    v12 = +[EDPrecomputedThreadQueryHandler log];
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

id __81__EDPrecomputedThreadQueryHandler__extraInfoPrecachedThreadsForInitialObjectIDs___block_invoke(uint64_t a1, void *a2)
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

id __71__EDPrecomputedThreadQueryHandler__extraInfoForThreadObjectIDs_isMove___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) sectionIdentifierForThreadObjectID:a2];

  return v2;
}

id __71__EDPrecomputedThreadQueryHandler__extraInfoForThreadObjectIDs_isMove___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_collectionItemID];

  return v2;
}

- (id)sectionIdentifierForThreadObjectID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__33;
  v20 = __Block_byref_object_dispose__33;
  v21 = 0;
  v5 = [(EDPrecomputedThreadQueryHandler *)self sectionIndexesByConversationID];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __70__EDPrecomputedThreadQueryHandler_sectionIdentifierForThreadObjectID___block_invoke;
  v13 = &unk_1E8251838;
  v15 = &v16;
  v6 = v4;
  v14 = v6;
  [v5 performWhileLocked:&v10];

  if (v17[5])
  {
    v7 = [(EDPrecomputedThreadQueryHandler *)self sectionPredicates:v10];
    v8 = [v7 keyAtIndex:{objc_msgSend(v17[5], "unsignedIntegerValue")}];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __70__EDPrecomputedThreadQueryHandler_sectionIdentifierForThreadObjectID___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_addChangeToPendingChanges:(id)a3 forThreadObjectID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDPrecomputedThreadQueryHandler *)self pendingChanges];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v16 = 134218754;
      v17 = self;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%p: Adding change to existing change for objectID: %{public}@\n%{public}@\n%{public}@", &v16, 0x2Au);
    }

    [v9 addChange:v6];
  }

  else
  {
    v12 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v16 = 134218754;
      v17 = self;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: Adding change for objectID: %{public}@\n%{public}@\n%{public}@", &v16, 0x2Au);
    }

    v14 = [(EDPrecomputedThreadQueryHandler *)self pendingChanges];
    [v14 setObject:v6 forKeyedSubscript:v7];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isAddingOrDeletingObjectID:(id)a3
{
  v4 = a3;
  v5 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__EDPrecomputedThreadQueryHandler__isAddingOrDeletingObjectID___block_invoke;
  v9[3] = &unk_1E8255F70;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_any:v9];

  return v7;
}

uint64_t __63__EDPrecomputedThreadQueryHandler__isAddingOrDeletingObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAddingObjectID:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isDeletingObjectID:*(a1 + 32)];
  }

  return v4;
}

- (void)_flushUpdatesWithReason:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v50 = [(EDPrecomputedThreadQueryHandler *)self pendingChanges];
  v49 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
  if ([v50 count] || objc_msgSend(v49, "count"))
  {
    v87[0] = 0;
    v87[1] = v87;
    v87[2] = 0x3032000000;
    v87[3] = __Block_byref_object_copy__33;
    v87[4] = __Block_byref_object_dispose__33;
    v88 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke;
    aBlock[3] = &unk_1E8255F98;
    v86 = v87;
    v85 = v48;
    v52 = _Block_copy(aBlock);
    v83 = 0;
    objc_initWeak(&location, self);
    v4 = [(EDPrecomputedThreadQueryHandler *)self updateThrottler];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_2;
    v80[3] = &unk_1E8252B00;
    objc_copyWeak(&v81, &location);
    v51 = [v4 updateWithBlock:v80 unacknowledgedUpdatesCount:&v83];

    if (v51)
    {
      v56 = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
      v55 = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
      if ([v50 count])
      {
        v5 = [(EDPrecomputedThreadQueryHandler *)self reloadSummaryHelper];
        v6 = [(EDPrecomputedThreadQueryHandler *)self mailboxScope];
        v7 = [v5 summariesToReloadForChanges:v50 mailboxScope:v6];

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v76 objects:v98 count:16];
        if (v9)
        {
          v10 = *v77;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v77 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [(EDMessageRepositoryQueryHandler *)self requestSummaryForMessageObjectID:*(*(&v76 + 1) + 8 * i)];
            }

            v9 = [v8 countByEnumeratingWithState:&v76 objects:v98 count:16];
          }

          while (v9);
        }

        v12 = +[EDPrecomputedThreadQueryHandler log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v52[2]();
          v14 = [(EDPrecomputedThreadQueryHandler *)self pendingChanges];
          v15 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
          *buf = 134218754;
          v91 = self;
          v92 = 2114;
          v93 = v13;
          v94 = 2114;
          v95 = v14;
          v96 = 2114;
          v97 = v15;
          _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: Flushing changes%{public}@: %{public}@\n%{public}@", buf, 0x2Au);
        }

        [v56 observer:v55 matchedChangesForObjectIDs:v50];
        v16 = [(EDPrecomputedThreadQueryHandler *)self pendingChanges];
        [v16 removeAllObjects];
      }

      if ([v49 count])
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        obj = v49;
        v17 = [obj countByEnumeratingWithState:&v72 objects:v89 count:16];
        if (v17)
        {
          v54 = *v73;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v73 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v72 + 1) + 8 * j);
              v20 = +[EDPrecomputedThreadQueryHandler log];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = v52[2]();
                v22 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
                *buf = 134218754;
                v91 = self;
                v92 = 2114;
                v93 = v21;
                v94 = 2114;
                v95 = v19;
                v96 = 2114;
                v97 = v22;
                _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "%p: Flushing position changes%{public}@: %{public}@\n%{public}@", buf, 0x2Au);
              }

              v23 = [v19 objectIDsToAddByBeforeObjectID];
              v69[0] = MEMORY[0x1E69E9820];
              v69[1] = 3221225472;
              v69[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_80;
              v69[3] = &unk_1E8255FC0;
              v69[4] = self;
              v24 = v56;
              v70 = v24;
              v25 = v55;
              v71 = v25;
              [v23 enumerateKeysAndObjectsUsingBlock:v69];

              v26 = [v19 objectIDsToMoveByBeforeObjectID];
              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_2_83;
              v66[3] = &unk_1E8255FC0;
              v66[4] = self;
              v27 = v24;
              v67 = v27;
              v28 = v25;
              v68 = v28;
              [v26 enumerateKeysAndObjectsUsingBlock:v66];

              v29 = [v19 objectIDsToDelete];
              v30 = [v29 allObjects];

              if ([v30 count])
              {
                v31 = [v19 objectIDsToDelete];
                v32 = [v31 allObjects];
                [v27 observer:v28 matchedDeletedObjectIDs:v32];
              }
            }

            v17 = [obj countByEnumeratingWithState:&v72 objects:v89 count:16];
          }

          while (v17);
        }

        v33 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
        [v33 removeAllObjects];

        [(EDPrecomputedThreadQueryHandler *)self _oldestThreadsNeedUpdate];
      }

      v34 = [v51 label];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_3_84;
      block[3] = &unk_1E8255188;
      objc_copyWeak(&v65, &location);
      v35 = v55;
      v63 = v35;
      v36 = v34;
      v64 = v36;
      v37 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      v38 = dispatch_time(0, 5000000000);
      v39 = dispatch_get_global_queue(21, 0);
      dispatch_after(v38, v39, v37);

      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_89;
      v57[3] = &unk_1E8255FE8;
      objc_copyWeak(&v61, &location);
      v40 = v37;
      v60 = v40;
      v41 = v35;
      v58 = v41;
      v42 = v36;
      v59 = v42;
      [v51 addInvocationBlock:v57];
      v43 = +[EDPrecomputedThreadQueryHandler log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v52[2]();
        *buf = 134218754;
        v91 = self;
        v92 = 2114;
        v93 = v44;
        v94 = 2114;
        v95 = v41;
        v96 = 2114;
        v97 = v51;
        _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "%p: Sending update%{public}@ for %{public}@: %{public}@", buf, 0x2Au);
      }

      [v56 observer:v41 wasUpdated:v51];
      objc_destroyWeak(&v61);

      objc_destroyWeak(&v65);
      v45 = v56;
    }

    else
    {
      v45 = +[EDPrecomputedThreadQueryHandler log];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v52[2]();
        *buf = 134218498;
        v91 = self;
        v92 = 2114;
        v93 = v46;
        v94 = 2048;
        v95 = v83;
        _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "%p: Skipping flushing of changes%{public}@ due to %llu unacknowledged updates", buf, 0x20u);
      }
    }

    objc_destroyWeak(&v81);
    objc_destroyWeak(&location);

    _Block_object_dispose(v87, 8);
  }

  v47 = *MEMORY[0x1E69E9840];
}

id __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (!*(v2 + 40))
  {
    if (*(a1 + 32))
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" after %@", *(a1 + 32)];
      v2 = *(*(a1 + 40) + 8);
    }

    else
    {
      v3 = &stru_1F45B4608;
    }

    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);

  return v5;
}

void __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && a2)
  {
    v5 = [WeakRetained changeScheduler];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_3;
    v6[3] = &unk_1E8255EF8;
    v6[4] = v4;
    [v4 _onScheduler:v5 performCancelableBlock:v6];
  }
}

void __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_80(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v13)
  {

    v13 = 0;
  }

  v7 = a1[4];
  v8 = [v5 array];
  v9 = [v7 _extraInfoForThreadObjectIDs:v8 isMove:0];

  v11 = a1[5];
  v10 = a1[6];
  v12 = [v5 array];
  [v11 observer:v10 matchedAddedObjectIDs:v12 before:v13 extraInfo:v9];
}

void __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_2_83(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v13)
  {

    v13 = 0;
  }

  v7 = a1[4];
  v8 = [v5 array];
  v9 = [v7 _extraInfoForThreadObjectIDs:v8 isMove:1];

  v10 = a1[5];
  v11 = a1[6];
  v12 = [v5 array];
  [v10 observer:v11 matchedMovedObjectIDs:v12 before:v13 extraInfo:v9];
}

void __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_3_84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_3_84_cold_1(WeakRetained, a1, v3);
    }

    v4 = [MEMORY[0x1E699B780] sharedReporter];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 reportIssueType:v6 description:@"Timedout update"];
  }
}

void __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_89(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_block_cancel(*(a1 + 48));
    v3 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2114;
      v10 = v4;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Acknowledged update for %{public}@: %{public}@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsAddingThread:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5
{
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v8 threadScope];
  v10 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__EDPrecomputedThreadQueryHandler_persistenceIsAddingThread_journaled_generationWindow___block_invoke;
    v13[3] = &unk_1E8255940;
    v16 = a4;
    v13[4] = self;
    v14 = v8;
    v15 = v7;
    [v12 performSyncBlock:v13];
  }
}

void __88__EDPrecomputedThreadQueryHandler_persistenceIsAddingThread_journaled_generationWindow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v7 = [v3 unreportedJournaledObjectIDs];
    [v7 addObject:*(a1 + 40)];
  }

  else
  {
    v4 = [v3 sectionPredicates];
    if ([v4 count])
    {
      v5 = [*(a1 + 48) isUrgent];

      if (v5)
      {
        v6 = [*(a1 + 32) sectionIndexesByConversationID];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __88__EDPrecomputedThreadQueryHandler_persistenceIsAddingThread_journaled_generationWindow___block_invoke_2;
        v8[3] = &unk_1E8250D20;
        v9 = *(a1 + 40);
        [v6 performWhileLocked:v8];
      }
    }

    else
    {
    }

    [*(a1 + 32) _persistenceIsAddingThreadWithObjectID:*(a1 + 40)];
  }
}

void __88__EDPrecomputedThreadQueryHandler_persistenceIsAddingThread_journaled_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
  [v4 setObject:&unk_1F45E68F8 forKeyedSubscript:v3];
}

- (void)_persistenceIsAddingThreadWithObjectID:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDPrecomputedThreadQueryHandler *)self reportedJournaledObjectIDs];
  v6 = [v5 allKeys];

  v7 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
  v8 = [(EDPrecomputedThreadQueryHandler *)self sortKeys];
  v9 = [v7 nextExistingThreadObjectIDForThreadObjectID:v4 forSortKeys:v8 journaledThreadsToCheck:v6 excluding:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v12 = v11;

  v13 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
  v14 = [v13 lastObject];
  v15 = [v14 addObjectIDToAdd:v4 before:v12];

  if (v15)
  {
    v16 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v22 = 134218754;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&dword_1C61EF000, &v16->super, OS_LOG_TYPE_DEFAULT, "%p: Adding add for objectID: %{public}@ -> %{public}@\n%{public}@", &v22, 0x2Au);
    }
  }

  else
  {
    v16 = objc_alloc_init(_EDThreadPositionChangeSet);
    [(_EDThreadPositionChangeSet *)v16 addObjectIDToAdd:v4 before:v12];
    v18 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
    [v18 addObject:v16];

    v19 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v22 = 134218754;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "%p: Adding add to new position change for objectID: %{public}@ -> %{public}@\n%{public}@", &v22, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsMarkingThreadAsJournaledWithObjectID:(id)a3 generationWindow:(id)a4
{
  v5 = a3;
  v6 = [v5 threadScope];
  v7 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __102__EDPrecomputedThreadQueryHandler_persistenceIsMarkingThreadAsJournaledWithObjectID_generationWindow___block_invoke;
    v10[3] = &unk_1E8255F20;
    v10[4] = self;
    v11 = v5;
    [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v9 performCancelableBlock:v10];
  }
}

void __102__EDPrecomputedThreadQueryHandler_persistenceIsMarkingThreadAsJournaledWithObjectID_generationWindow___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) unreportedJournaledObjectIDs];
  v2 = [v4 containsObject:*(a1 + 40)];

  if ((v2 & 1) == 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = [*(a1 + 32) reportedJournaledObjectIDs];
    [v3 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)persistenceIsReconcilingJournaledThreadsWithObjectIDs:(id)a3 generationWindow:(id)a4
{
  v5 = a3;
  v6 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke;
  v14[3] = &unk_1E8256010;
  v7 = v6;
  v15 = v7;
  v8 = [v5 ef_filter:v14];

  if ([v8 count])
  {
    v9 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke_2;
    v10[3] = &unk_1E8250720;
    v11 = v8;
    v12 = self;
    v13 = v7;
    [v9 performSyncBlock:v10];
  }
}

uint64_t __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 threadScope];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke_3;
  v31[3] = &unk_1E8256010;
  v31[4] = *(a1 + 40);
  v24 = [v2 ef_partition:v31];
  v3 = [*(a1 + 40) unreportedJournaledObjectIDs];
  v4 = [v24 first];
  [v3 ef_removeObjectsInArray:v4];

  v5 = [*(a1 + 40) reportedJournaledObjectIDs];
  v22 = [v5 allKeys];

  v6 = [*(a1 + 40) threadPersistence];
  v7 = [v24 first];
  v8 = [*(a1 + 40) sortKeys];
  v23 = [v6 threadObjectIDsByNextExistingForThreadObjectIDs:v7 forSortKeys:v8 journaledThreadsToCheck:v22];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke_4;
  v29[3] = &unk_1E8255ED0;
  v9 = *(a1 + 48);
  v29[4] = *(a1 + 40);
  v30 = v9;
  [v23 enumerateKeysAndObjectsUsingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v24 second];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [*(a1 + 40) reportedJournaledObjectIDs];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (v16)
        {
          v17 = [*(a1 + 40) reportedJournaledObjectIDs];
          [v17 setObject:0 forKeyedSubscript:v14];

          v18 = [*(a1 + 40) threadPersistence];
          v19 = [v16 allObjects];
          v20 = [v18 changeForThreadWithObjectID:v14 changedKeyPaths:v19];

          [*(a1 + 40) _addChangeToPendingChanges:v20 forThreadObjectID:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) unreportedJournaledObjectIDs];
  v5 = [v4 containsObject:v3];

  return v5;
}

void __106__EDPrecomputedThreadQueryHandler_persistenceIsReconcilingJournaledThreadsWithObjectIDs_generationWindow___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v6)
  {
    v8 = *v25;
    *&v7 = 134218754;
    v22 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [*(a1 + 32) pendingPositionChanges];
        v12 = [v11 lastObject];
        v13 = [v12 addObjectIDToAdd:v10 before:v5];

        if (v13)
        {
          v14 = +[EDPrecomputedThreadQueryHandler log];
          if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            v16 = *(a1 + 40);
            *buf = v22;
            v29 = v15;
            v30 = 2114;
            v31 = v10;
            v32 = 2114;
            v33 = v5;
            v34 = 2114;
            v35 = v16;
            _os_log_impl(&dword_1C61EF000, &v14->super, OS_LOG_TYPE_DEFAULT, "%p: Adding add for objectID: %{public}@ -> %{public}@\n%{public}@", buf, 0x2Au);
          }
        }

        else
        {
          v14 = objc_alloc_init(_EDThreadPositionChangeSet);
          [(_EDThreadPositionChangeSet *)v14 addObjectIDToAdd:v10 before:v5];
          v17 = [*(a1 + 32) pendingPositionChanges];
          [v17 addObject:v14];

          v18 = +[EDPrecomputedThreadQueryHandler log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 32);
            v20 = *(a1 + 40);
            *buf = v22;
            v29 = v19;
            v30 = 2114;
            v31 = v10;
            v32 = 2114;
            v33 = v5;
            v34 = 2114;
            v35 = v20;
            _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Adding add to new position change for objectID: %{public}@ -> %{public}@\n%{public}@", buf, 0x2Au);
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsChangingThreadWithObjectID:(id)a3 changedKeyPaths:(id)a4 generationWindow:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 threadScope];
  v10 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __108__EDPrecomputedThreadQueryHandler_persistenceIsChangingThreadWithObjectID_changedKeyPaths_generationWindow___block_invoke;
    v13[3] = &unk_1E8250720;
    v13[4] = self;
    v14 = v7;
    v15 = v8;
    [v12 performSyncBlock:v13];
  }
}

void __108__EDPrecomputedThreadQueryHandler_persistenceIsChangingThreadWithObjectID_changedKeyPaths_generationWindow___block_invoke(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) unreportedJournaledObjectIDs];
  v3 = [v2 containsObject:*(v1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(v1 + 32) reportedJournaledObjectIDs];
    v5 = [v4 objectForKeyedSubscript:*(v1 + 40)];

    v6 = *(v1 + 48);
    if (v5)
    {
      v20 = v6;
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = v1;
      v7 = *(v1 + 48);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = *v25;
        v10 = *MEMORY[0x1E699A890];
        v11 = *MEMORY[0x1E699A9A8];
        v12 = *MEMORY[0x1E699A9A0];
        v13 = *MEMORY[0x1E699A990];
        v23 = *MEMORY[0x1E699A9C0];
        v22 = *MEMORY[0x1E699A840];
        do
        {
          v14 = 0;
          do
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v15 = *(*(&v24 + 1) + 8 * v14);
            if (([v15 isEqualToString:v10] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", v11) & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", v12) & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", v13) & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", v23) & 1) != 0 || objc_msgSend(v15, "isEqualToString:", v22))
            {
              [v5 addObject:v15];
            }

            else
            {
              [v21 addObject:v15];
            }

            ++v14;
          }

          while (v8 != v14);
          v16 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
          v8 = v16;
        }

        while (v16);
      }

      v1 = v19;
      v17 = v21;
    }

    else
    {
      v17 = v6;
    }

    [*(v1 + 32) _persistenceIsChangingThreadWithObjectID:*(v1 + 40) changedKeyPaths:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_persistenceIsChangingThreadWithObjectID:(id)a3 changedKeyPaths:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EDPrecomputedThreadQueryHandler *)self _isAddingOrDeletingObjectID:v6])
  {
    v8 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v13 = 134218498;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Ignoring change for objectID: %{public}@\n%{public}@", &v13, 0x20u);
    }
  }

  else
  {
    v10 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
    v11 = [v10 changeForThreadWithObjectID:v6 changedKeyPaths:v7];

    [(EDPrecomputedThreadQueryHandler *)self _addChangeToPendingChanges:v11 forThreadObjectID:v6];
  }

  if ([(EDMessageRepositoryQueryHandler *)self keyPathsAffectSorting:v7])
  {
    [(EDPrecomputedThreadQueryHandler *)self _reportMoveForThreadObjectID:v6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_reportMoveForThreadObjectID:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDPrecomputedThreadQueryHandler *)self reportedJournaledObjectIDs];
  v6 = [v5 allKeys];

  v7 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
  v8 = [(EDPrecomputedThreadQueryHandler *)self sortKeys];
  v9 = [v7 nextExistingThreadObjectIDForThreadObjectID:v4 forSortKeys:v8 journaledThreadsToCheck:v6 excluding:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v12 = v11;

  v13 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
  v14 = [v13 lastObject];
  v15 = [v14 addObjectIDToMove:v4 before:v12];

  if (v15)
  {
    v16 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v22 = 134218754;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&dword_1C61EF000, &v16->super, OS_LOG_TYPE_DEFAULT, "%p: Adding move for objectID: %{public}@ -> %{public}@\n%{public}@", &v22, 0x2Au);
    }
  }

  else
  {
    v16 = objc_alloc_init(_EDThreadPositionChangeSet);
    [(_EDThreadPositionChangeSet *)v16 addObjectIDToMove:v4 before:v12];
    v18 = [(EDPrecomputedThreadQueryHandler *)self pendingPositionChanges];
    [v18 addObject:v16];

    v19 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
      v22 = 134218754;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "%p: Adding move to new position change for objectID: %{public}@ -> %{public}@\n%{public}@", &v22, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsChangingThreadWithObjectID:(id)a3 newIsUrgentValue:(BOOL)a4 generationWindow:(id)a5
{
  v5 = a4;
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 threadScope];
  v9 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v5;
      *&buf[18] = 2114;
      *&buf[20] = v7;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Urgent flag set to %d for objectID: %{public}@", buf, 0x1Cu);
    }

    v12 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
    v28[0] = *MEMORY[0x1E699A900];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v14 = [v12 changeForThreadWithObjectID:v7 changedKeyPaths:v13];

    [(EDPrecomputedThreadQueryHandler *)self _addChangeToPendingChanges:v14 forThreadObjectID:v7];
    v15 = [(EDPrecomputedThreadQueryHandler *)self sectionPredicates];
    LOBYTE(v13) = [v15 count] == 0;

    if ((v13 & 1) == 0)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v16 = [(EDPrecomputedThreadQueryHandler *)self sectionIndexesByConversationID];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __109__EDPrecomputedThreadQueryHandler_persistenceIsChangingThreadWithObjectID_newIsUrgentValue_generationWindow___block_invoke;
      v22 = &unk_1E8256038;
      v26 = v5;
      v17 = v7;
      v23 = v17;
      v24 = self;
      v25 = buf;
      [v16 performWhileLocked:&v19];

      if (*(*&buf[8] + 24) == 1)
      {
        [(EDPrecomputedThreadQueryHandler *)self _reportMoveForThreadObjectID:v17, v19, v20, v21, v22];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __109__EDPrecomputedThreadQueryHandler_persistenceIsChangingThreadWithObjectID_newIsUrgentValue_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (!v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
      [v3 setObject:&unk_1F45E68F8 forKeyedSubscript:v6];

      v7 = +[EDPrecomputedThreadQueryHandler log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v17 = 134218242;
        v18 = v8;
        v19 = 2114;
        v20 = v9;
        v10 = "%p: %{public}@ moving from urgent to not urgent";
LABEL_9:
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, v10, &v17, 0x16u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (([*(a1 + 40) _shouldSectionItemsRemainInSection] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
    v12 = [v3 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
      [v3 setObject:0 forKeyedSubscript:v13];

      v7 = +[EDPrecomputedThreadQueryHandler log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v14 = *(a1 + 40);
        v17 = 134218242;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v10 = "%p: %{public}@ moving from not urgent to urgent";
        goto LABEL_9;
      }

LABEL_10:

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldSectionItemsRemainInSection
{
  v2 = [(EDMessageRepositoryQueryHandler *)self query];
  v3 = [v2 targetClassOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699A9F8]];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)a3 conversationID:(int64_t)a4 generationWindow:(id)a5
{
  v8 = objc_alloc(MEMORY[0x1E699AEF8]);
  v9 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v10 = [v8 initWithConversationID:a4 threadScope:v9];

  v11 = [(EDPrecomputedThreadQueryHandler *)self messageListItemForObjectID:v10 error:0];

  if (v11)
  {
    v12 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __117__EDPrecomputedThreadQueryHandler_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke;
    v13[3] = &unk_1E8251A78;
    v13[4] = self;
    v14 = v10;
    v15 = a3;
    [v12 performSyncBlock:v13];
  }
}

void __117__EDPrecomputedThreadQueryHandler_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = [*(a1 + 32) unreportedJournaledObjectIDs];
  v2 = [v9 containsObject:*(a1 + 40)];

  if (v2)
  {
LABEL_6:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([*(a1 + 32) _isAddingOrDeletingObjectID:*(a1 + 40)])
  {
    v10 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = [v3 threadScope];
      *buf = 134218498;
      v13 = v3;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_INFO, "%p: Ignoring Conversation Notification Level change for objectID: %{public}@\n%{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v11 = objc_alloc_init(MEMORY[0x1E699AD98]);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v11 setConversationNotificationLevel:v7];

  [*(a1 + 32) _addChangeToPendingChanges:v11 forThreadObjectID:*(a1 + 40)];
  [*(a1 + 32) _flushUpdatesWithReason:@"conversation flags change"];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsDeletingThreadWithObjectID:(id)a3 generationWindow:(id)a4
{
  v5 = a3;
  v6 = [v5 threadScope];
  v7 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__EDPrecomputedThreadQueryHandler_persistenceIsDeletingThreadWithObjectID_generationWindow___block_invoke;
    v10[3] = &unk_1E8255F20;
    v10[4] = self;
    v11 = v5;
    [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v9 performCancelableBlock:v10];
  }
}

void __92__EDPrecomputedThreadQueryHandler_persistenceIsDeletingThreadWithObjectID_generationWindow___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) unreportedJournaledObjectIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v16 = [v4 unreportedJournaledObjectIDs];
    [v16 removeObject:*(a1 + 40)];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = [v4 reportedJournaledObjectIDs];
    [v6 setObject:0 forKeyedSubscript:*(a1 + 40)];

    v7 = +[EDPrecomputedThreadQueryHandler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [v8 threadScope];
      *buf = 134218498;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Adding objectID to delete: %{public}@\n%{public}@", buf, 0x20u);
    }

    v11 = [*(a1 + 32) pendingPositionChanges];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [*(a1 + 32) pendingPositionChanges];
      v14 = [(_EDThreadPositionChangeSet *)v13 lastObject];
      [v14 addObjectIDToDelete:*(a1 + 40)];
    }

    else
    {
      v13 = objc_alloc_init(_EDThreadPositionChangeSet);
      [(_EDThreadPositionChangeSet *)v13 addObjectIDToDelete:*(a1 + 40)];
      v14 = [*(a1 + 32) pendingPositionChanges];
      [v14 addObject:v13];
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (void)persistenceDidFinishThreadUpdates
{
  v3 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__EDPrecomputedThreadQueryHandler_persistenceDidFinishThreadUpdates__block_invoke;
  v4[3] = &unk_1E8255EF8;
  v4[4] = self;
  [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v3 performCancelableBlock:v4];
}

- (void)persistenceDidChangeBusinessIDForMessages:(id)a3 fromBusinessID:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v5 = objc_opt_new();
  v22 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v20;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(EDPrecomputedThreadQueryHandler *)self _messageForPersistedMessage:*(*(&v27 + 1) + 8 * v8), v20];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 itemID];
          [v22 addObject:v11];

          v12 = objc_alloc(MEMORY[0x1E699AEF8]);
          v13 = [v10 conversationID];
          v14 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
          v15 = [v12 initWithConversationID:v13 threadScope:v14];

          [v5 addObject:v15];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v16 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__EDPrecomputedThreadQueryHandler_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke;
  v23[3] = &unk_1E8255340;
  v17 = v5;
  v24 = v17;
  v25 = self;
  v18 = v22;
  v26 = v18;
  [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v16 performCancelableBlock:v23];

  v19 = *MEMORY[0x1E69E9840];
}

void __92__EDPrecomputedThreadQueryHandler_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v3)
  {
    v5 = *v22;
    v20 = *MEMORY[0x1E699A830];
    v6 = *MEMORY[0x1E699A838];
    *&v4 = 134218498;
    v19 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [*(a1 + 40) unreportedJournaledObjectIDs];
        v10 = [v9 containsObject:v8];

        if ((v10 & 1) == 0)
        {
          if ([*(a1 + 40) _isAddingOrDeletingObjectID:v8])
          {
            v11 = +[EDPrecomputedThreadQueryHandler log];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = *(a1 + 40);
              v13 = [v12 threadScope];
              *buf = v19;
              v27 = v12;
              v28 = 2114;
              v29 = v8;
              v30 = 2114;
              v31 = v13;
              _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "%p: Ignoring business change for objectID: %{public}@\n%{public}@", buf, 0x20u);
            }
          }

          else
          {
            v14 = [*(a1 + 40) threadPersistence];
            v25[0] = v20;
            v25[1] = v6;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
            v11 = [v14 changeForThreadWithObjectID:v8 changedKeyPaths:v15];

            v16 = *(a1 + 48);
            v17 = [v11 displayMessageItemID];
            LODWORD(v16) = [v16 containsObject:v17];

            if (v16)
            {
              [*(a1 + 40) _addChangeToPendingChanges:v11 forThreadObjectID:v8];
              [*(a1 + 40) _flushUpdatesWithReason:@"businessID change"];
            }
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v3);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)a3 orConversationID:(int64_t)a4 message:(id)a5 generationWindow:(id)a6
{
  v7 = a5;
  v8 = [(EDPrecomputedThreadQueryHandler *)self _messageForPersistedMessage:v7];
  if (v8)
  {
    v9 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __113__EDPrecomputedThreadQueryHandler_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke;
    v10[3] = &unk_1E8255F20;
    v11 = v8;
    v12 = self;
    [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v9 performCancelableBlock:v10];
  }
}

void __113__EDPrecomputedThreadQueryHandler_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699AEF8]);
  v3 = [*(a1 + 32) conversationID];
  v4 = [*(a1 + 40) threadScope];
  v5 = [v2 initWithConversationID:v3 threadScope:v4];

  v6 = [*(a1 + 40) unreportedJournaledObjectIDs];
  LOBYTE(v3) = [v6 containsObject:v5];

  if ((v3 & 1) == 0)
  {
    if ([*(a1 + 40) _isAddingOrDeletingObjectID:v5])
    {
      v7 = +[EDPrecomputedThreadQueryHandler log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v9 = [v8 threadScope];
        *buf = 134218498;
        v18 = v8;
        v19 = 2114;
        v20 = v5;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "%p: Ignoring messageID change for objectID: %{public}@\n%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v10 = [*(a1 + 40) threadPersistence];
      v16 = *MEMORY[0x1E699A890];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      v7 = [v10 changeForThreadWithObjectID:v5 changedKeyPaths:v11];

      v12 = [v7 displayMessageItemID];
      v13 = [*(a1 + 32) itemID];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        [*(a1 + 40) _addChangeToPendingChanges:v7 forThreadObjectID:v5];
        [*(a1 + 40) _flushUpdatesWithReason:@"messageID change"];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidUpdateProperties:(id)a3 message:(id)a4 generationWindow:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 containsObject:*MEMORY[0x1E699B1D0]];
  v10 = [v7 containsObject:*MEMORY[0x1E699B1D8]];
  v11 = [v7 containsObject:@"GeneratedSummary"];
  v12 = [v7 containsObject:@"BrandIndicatorLocation"];
  v13 = v12;
  if ((v9 | v10 | v11 | v12))
  {
    v14 = [(EDPrecomputedThreadQueryHandler *)self _messageForPersistedMessage:v8];
    if (v14)
    {
      v15 = [(EDPrecomputedThreadQueryHandler *)self changeScheduler];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __91__EDPrecomputedThreadQueryHandler_persistenceDidUpdateProperties_message_generationWindow___block_invoke;
      v17[3] = &unk_1E8256088;
      v16 = v14;
      v18 = v16;
      v19 = self;
      v20 = v9;
      v21 = v10;
      v22 = v11;
      v23 = v13;
      [(EDPrecomputedThreadQueryHandler *)self _onScheduler:v15 performCancelableBlock:v17];
    }
  }
}

void __91__EDPrecomputedThreadQueryHandler_persistenceDidUpdateProperties_message_generationWindow___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699AEF8]);
  v3 = [*(a1 + 32) conversationID];
  v4 = [*(a1 + 40) threadScope];
  v5 = [v2 initWithConversationID:v3 threadScope:v4];

  v6 = [*(a1 + 40) unreportedJournaledObjectIDs];
  LOBYTE(v3) = [v6 containsObject:v5];

  if ((v3 & 1) == 0)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__33;
    v37 = __Block_byref_object_dispose__33;
    v38 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__EDPrecomputedThreadQueryHandler_persistenceDidUpdateProperties_message_generationWindow___block_invoke_2;
    aBlock[3] = &unk_1E8256060;
    aBlock[4] = &v33;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (*(a1 + 48) == 1)
    {
      (*(v7 + 2))(v7, @"subject");
    }

    if (*(a1 + 49) == 1)
    {
      (v8)[2](v8, @"summary");
    }

    if (*(a1 + 50) == 1)
    {
      (v8)[2](v8, @"generated summary");
    }

    if (*(a1 + 51) == 1)
    {
      (v8)[2](v8, @"brand indicator");
    }

    [v34[5] appendString:@" change"];
    if ([*(a1 + 40) _isAddingOrDeletingObjectID:v5])
    {
      v9 = +[EDPrecomputedThreadQueryHandler log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = v34[5];
        v12 = [v10 threadScope];
        *buf = 134218754;
        v40 = v10;
        v41 = 2114;
        v42 = v11;
        v43 = 2114;
        v44 = v5;
        v45 = 2114;
        v46 = v12;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, "%p: Ignoring %{public}@ for objectID: %{public}@\n%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      if ((*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) != 0 || *(a1 + 51) == 1)
      {
        v13 = objc_alloc(MEMORY[0x1E695DF70]);
        v14 = *MEMORY[0x1E699A890];
        v15 = [v13 initWithObjects:{*MEMORY[0x1E699A890], 0}];
        v16 = v15;
        if (*(a1 + 48) == 1)
        {
          [v15 addObject:*MEMORY[0x1E699A9A0]];
        }

        if (*(a1 + 49) == 1)
        {
          [v16 addObject:*MEMORY[0x1E699A9A8]];
        }

        if (*(a1 + 51) == 1)
        {
          [v16 addObject:*MEMORY[0x1E699A828]];
        }

        v17 = [*(a1 + 40) threadPersistence];
        v18 = [v17 changeForThreadWithObjectID:v5 changedKeyPaths:v16];

        v19 = [v18 displayMessageItemID];
        v20 = [*(a1 + 32) itemID];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
          v22 = [*(a1 + 40) reportedJournaledObjectIDs];
          v23 = [v22 objectForKeyedSubscript:v5];

          if (v23)
          {
            [v16 removeObject:v14];
            [v23 addObjectsFromArray:v16];
          }

          else
          {
            [*(a1 + 40) _addChangeToPendingChanges:v18 forThreadObjectID:v5];
            [*(a1 + 40) _flushUpdatesWithReason:v34[5]];
          }
        }
      }

      if (*(a1 + 50) != 1)
      {
        goto LABEL_35;
      }

      v24 = [*(a1 + 40) threadPersistence];
      v25 = [v24 newestMessageItemIDForThreadWithObjectID:v5];
      v26 = [*(a1 + 32) itemID];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_35;
      }

      v9 = objc_alloc_init(MEMORY[0x1E699AD98]);
      v28 = [*(a1 + 32) generatedSummary];
      [v9 setGeneratedSummary:v28];

      v29 = [*(a1 + 40) reportedJournaledObjectIDs];
      v30 = [v29 objectForKeyedSubscript:v5];

      if (v30)
      {
        [v30 addObject:*MEMORY[0x1E699A8C0]];
      }

      else
      {
        [*(a1 + 40) _addChangeToPendingChanges:v9 forThreadObjectID:v5];
        [*(a1 + 40) _flushUpdatesWithReason:v34[5]];
      }
    }

LABEL_35:
    _Block_object_dispose(&v33, 8);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __91__EDPrecomputedThreadQueryHandler_persistenceDidUpdateProperties_message_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (v4)
  {
    [v4 appendString:{@", "}];
    [*(*(*(a1 + 32) + 8) + 40) appendString:v8];
  }

  else
  {
    v5 = [v3 mutableCopy];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)_messageForPersistedMessage:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v6 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
  v16[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [v5 mailboxScope];
  v9 = [v6 messagesForPersistedMessages:v7 mailboxScope:v8];
  v10 = [v9 firstObject];

  v11 = [v5 filterPredicate];
  if (v11)
  {
    v12 = [v5 filterPredicate];
    v13 = [v12 evaluateWithObject:v10];

    if ((v13 & 1) == 0)
    {

      v10 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

void __59__EDPrecomputedThreadQueryHandler__oldestThreadsNeedUpdate__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v20 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.EDPrecomputedThreadQueryHandler.updateOldestThreads"];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [WeakRetained mailboxes];
    v2 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v2)
    {
      v3 = 0;
      v4 = *v25;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v25 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v24 + 1) + 8 * i);
          v7 = objc_autoreleasePoolPush();
          v8 = [WeakRetained threadPersistence];
          v9 = [WeakRetained threadScope];
          v10 = [v8 oldestThreadObjectIDForMailbox:v6 threadScope:v9];

          v11 = [WeakRetained oldestThreadObjectIDsByMailbox];
          v12 = [v11 objectForKeyedSubscript:v6];

          if (v10 != v12 && ([v10 isEqual:v12] & 1) == 0)
          {
            v13 = [WeakRetained oldestThreadObjectIDsByMailbox];
            [v13 setObject:v10 forKeyedSubscript:v6];

            v14 = +[EDPrecomputedThreadQueryHandler log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = [v6 ef_publicDescription];
              *buf = 134218242;
              v29 = WeakRetained;
              v30 = 2114;
              v31 = v15;
              _os_log_debug_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEBUG, "%p: Oldest thread updated for mailbox: %{public}@", buf, 0x16u);
            }

            v3 = 1;
          }

          objc_autoreleasePoolPop(v7);
        }

        v2 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v2);

      if ((v3 & 1) == 0)
      {
        goto LABEL_17;
      }

      v16 = [WeakRetained oldestThreadObjectIDsByMailbox];
      v17 = [v16 copy];

      v18 = [WeakRetained changeScheduler];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__EDPrecomputedThreadQueryHandler__oldestThreadsNeedUpdate__block_invoke_130;
      v22[3] = &unk_1E8255F20;
      v22[4] = WeakRetained;
      obj = v17;
      v23 = obj;
      [WeakRetained _onScheduler:v18 performCancelableBlock:v22];
    }

LABEL_17:
    [WeakRetained setUpdateOldestThreadsCancelationToken:0];
    [v20 invalidate];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __59__EDPrecomputedThreadQueryHandler__oldestThreadsNeedUpdate__block_invoke_130(uint64_t a1)
{
  v3 = [*(a1 + 32) resultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedOldestItemsUpdatedForMailboxes:*(a1 + 40)];
}

- (void)controller:(id)a3 messageTimerFired:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(EDPrecomputedThreadQueryHandler *)self updateDisplayDate])
  {
    v6 = [(EDPrecomputedThreadQueryHandler *)self _messageForPersistedMessage:v5];
    if (v6)
    {
      v7 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
      v10[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [v7 updateBeforeDisplayForPersistedMessages:v8];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)labelForStateCapture
{
  v2 = [(EDMessageRepositoryQueryHandler *)self query];
  v3 = [v2 label];

  return v3;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(EDPrecomputedThreadQueryHandler *)self threadPersistence];
  v7 = [(EDPrecomputedThreadQueryHandler *)self threadScope];
  v8 = [(EDPrecomputedThreadQueryHandler *)self sortKeys];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__EDPrecomputedThreadQueryHandler_itemIDsForStateCaptureWithErrorString___block_invoke;
  v11[3] = &unk_1E82560B0;
  v9 = v5;
  v12 = v9;
  [v6 threadObjectIDsForThreadScope:v7 sortKeys:v8 initialBatchSize:15000 journaledObjectIDs:0 batchBlock:v11];

  if (a3)
  {
    *a3 = 0;
  }

  return v9;
}

void __73__EDPrecomputedThreadQueryHandler_itemIDsForStateCaptureWithErrorString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 ef_compactMapSelector:sel_collectionItemID];
  [v4 addObjectsFromArray:v5];

  *a3 = 15000;
}

void __59__EDPrecomputedThreadQueryHandler__flushUpdatesWithReason___block_invoke_3_84_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v6 = 134218498;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  v10 = 2114;
  v11 = v4;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "%p: Timedout update for %{public}@: %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end