@interface EDMessageRepository
+ (OS_os_log)log;
+ (id)signpostLog;
- (EDMessageRepository)initWithMessagePersistence:(id)a3 conversationPersistence:(id)a4 threadPersistence:(id)a5 remoteContentPersistence:(id)a6 messageChangeManager:(id)a7 richLinkPersistence:(id)a8 attachmentPersistenceManager:(id)a9 categoryPersistence:(id)a10 senderPersistence:(id)a11 activityPersistence:(id)a12 businessPersistence:(id)a13 businessCloudStorage:(id)a14 hookRegistry:(id)a15 mailboxPersistence:(id)a16 searchProvider:(id)a17 userProfileProvider:(id)a18 vipManager:(id)a19 fetchController:(id)a20 observerResumer:(id)a21 remoteContentManager:(id)a22 remoteContentCacheConfiguration:(id)a23 blockedSenderManager:(id)a24 listUnsubscribeHandler:(id)a25 remindMeNotificationController:(id)a26 accountsProvider:(id)a27;
- (EDWebContentParser)remoteContentParser;
- (NSSet)test_activeQueryCancelationTokens;
- (id)_changeFlagsForPersistedMessages:(id)a3 flagChange:(id)a4 returnUndoAction:(BOOL)a5;
- (id)_createGroupedSenderQueryHandlerForQuery:(id)a3 withObserver:(id)a4 observationIdentifier:(id)a5;
- (id)_descriptionStringForMessageListItems:(id)a1;
- (id)_dictForPasswordsIcon;
- (id)_messageQueryForGroupedSenderObjectIDs:(id)a3;
- (id)_mostRecentMessageForPersistedMessages:(id)a3;
- (id)_partitionObjectIDs:(id)a3;
- (id)_performBlockSender:(BOOL)a3 persistedMessages:(id)a4 returnUndoAction:(BOOL)a5;
- (id)_performConversationIDs:(id)a3 conversationNotificationLevel:(int64_t)a4 returnUndoAction:(BOOL)a5;
- (id)_performMessageFollowUpDate:(id)a3 persistedMessages:(id)a4 returnUndoAction:(BOOL)a5;
- (id)_performMessageReadLaterDate:(id)a3 persistedMessages:(id)a4 returnUndoAction:(BOOL)a5;
- (id)_performMessageTransferAction:(id)a3 returnUndoAction:(BOOL)a4;
- (id)_performMessageTransferActionToSpecialMailbox:(id)a3 returnUndoAction:(BOOL)a4;
- (id)_performUndoAction:(id)a3;
- (id)_persistedMessagesForMessageChangeAction:(id)a3;
- (id)_persistedMessagesForObjectIDs:(id)a3 includeDuplicates:(BOOL)a4;
- (id)_persistedObjectIDsForObjectIDs:(id)a3;
- (id)_threadScopeFromObjectID:(void *)a1;
- (id)_undoActionsForMovedMessages:(id)a3;
- (id)mailboxPredictionController;
- (id)messageReconciliationQueries;
- (id)requestRepresentationForMessageWithID:(id)a3 requestID:(unint64_t)a4 options:(id)a5 delegate:(id)a6 completionHandler:(id)a7;
- (id)threadReconciliationQueries;
- (id)updateThrottlerResetBlock;
- (unint64_t)signpostID;
- (void)_accountActiveStateDidChange:(id)a3 stateStringForLogging:(id)a4;
- (void)_broadcastOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5 subject:(id)a6 senders:(id)a7;
- (void)_enumerateObjectIDsAndQueryHandlersForObjectIDsByScope:(id)a3 usingBlock:(id)a4 failureBlock:(id)a5;
- (void)_enumerateObjectIDsByScope:(id)a3 usingBlock:(id)a4;
- (void)_logCategoryMetadataForChangeAction:(id)a3;
- (void)_logRecategorizeAnalyticsWithPersistedMessages:(id)a3 isRestoreModelCategory:(BOOL)a4 categoryChangeAction:(id)a5;
- (void)_performCategoryChangeAction:(id)a3;
- (void)_performCloudStorageUpdateForBusiness:(int64_t)a3 withCategory:(unint64_t)a4 lastModifiedDate:(id)a5;
- (void)_performMessageDeleteAction:(id)a3;
- (void)_performMessageDeleteAllAction:(id)a3;
- (void)_performMessageFlagChangeAllAction:(id)a3;
- (void)_performMessageTransferAllAction:(id)a3;
- (void)_performMessageTransferAllActionToSpecialMailbox:(id)a3;
- (void)_performQuery:(id)a3 withObserver:(id)a4 observationIdentifier:(id)a5 completionHandler:(id)a6;
- (void)_performRestoreModelCategoryForAllMessagesChangeAction:(id)a3;
- (void)_performSuppressNotAuthenticatedChangeAction:(id)a3;
- (void)_performUnsubscribeAction:(id)a3;
- (void)_recategorizeMessagesForQuery:(id)a3 completion:(id)a4;
- (void)_removeCategoryCloudStorageForBusiness:(int64_t)a3 lastModifiedDate:(id)a4;
- (void)_requestSummariesIfNeededForMessageListItems:(id)a3 additionalObjectIDs:(id)a4 queryHandler:(id)a5 observationIdentifier:(id)a6;
- (void)_resetUpdateThrottlersWithLogMessage:(id)a3;
- (void)_triggerMigrationForThreadScopes:(id)a3;
- (void)brandIndicatorForLocation:(id)a3 completionHandler:(id)a4;
- (void)cancelAllHandlers;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)countOfUserOverridesWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)didReceiveOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5 subject:(id)a6 senders:(id)a7;
- (void)getCachedMetadataJSONForKey:(id)a3 messageID:(id)a4 completionHandler:(id)a5;
- (void)getURLCacheInformationWithCompletion:(id)a3;
- (void)isDataAccessible:(id)a3;
- (void)loadOlderMessagesForMailboxes:(id)a3;
- (void)logCategoryMetadataForObjectIDs:(id)a3;
- (void)mailOnBoardDeleteVerificationCodesMessage:(id)a3 completionHandler:(id)a4;
- (void)messageListItemsForObjectIDs:(id)a3 requestID:(unint64_t)a4 observationIdentifier:(id)a5 loadSummaryForAdditionalObjectIDs:(id)a6 completionHandler:(id)a7;
- (void)messageObjectIDForSearchIndexerIdentifier:(id)a3 completionHandler:(id)a4;
- (void)messageObjectIDForURL:(id)a3 completionHandler:(id)a4;
- (void)messageObjectIDsForSearchableItemIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)messagesInConversationIDs:(id)a3 limit:(int64_t)a4 observationIdentifier:(id)a5 completionHandler:(id)a6;
- (void)metadataForAddresses:(id)a3 completionHandler:(id)a4;
- (void)noteViewOfRemoteContentLinks:(id)a3;
- (void)parseRemoteContentURLsFromMessageWithObjectID:(id)a3 requestID:(unint64_t)a4 completionHandler:(id)a5;
- (void)performCountQuery:(id)a3 completionHandler:(id)a4;
- (void)performMessageChangeAction:(id)a3 requestID:(unint64_t)a4 returnUndoAction:(BOOL)a5 completionHandler:(id)a6;
- (void)performMessageHighImpactChangeAction:(id)a3;
- (void)performOneTimeCodeMessageDeletionWithObjectID:(id)a3 requestID:(unint64_t)a4 returnUndoAction:(BOOL)a5 afterDelay:(double)a6 completionHandler:(id)a7;
- (void)performQuery:(id)a3 limit:(int64_t)a4 completionHandler:(id)a5;
- (void)performQuery:(id)a3 withObserver:(id)a4 observationIdentifier:(id)a5 completionHandler:(id)a6;
- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4;
- (void)persistentIDForMessageObjectID:(id)a3 completionHandler:(id)a4;
- (void)predictMailboxForMovingMessages:(id)a3 withObserver:(id)a4 completionHandler:(id)a5;
- (void)recategorizeMessageSinceDate:(id)a3;
- (void)recategorizeMessagesForQuery:(id)a3 completion:(id)a4;
- (void)removeAllEntriesFromBusinessCloudStorage;
- (void)reportIncorrectBusinessForAddress:(id)a3 isBusinessConnectGrouping:(BOOL)a4 fromClassName:(id)a5;
- (void)requestAttachmentMetadataForMessageIDs:(id)a3 completionHandler:(id)a4;
- (void)requestRichLinkURLsForMessageIDs:(id)a3 completionHandler:(id)a4;
- (void)resetPrecomputedThreadScopesForMailboxScope:(id)a3;
- (void)setCachedMetadataJSON:(id)a3 forKey:(id)a4 messageID:(id)a5;
- (void)startCountingQuery:(id)a3 includingServerCountsForMailboxScope:(id)a4 withObserver:(id)a5 completionHandler:(id)a6;
- (void)startObservingOneTimeCode:(id)a3 completionHandler:(id)a4;
- (void)test_tearDown;
- (void)threadQueryHandlerStateDidChange:(id)a3;
- (void)updateLastSeenDate:(id)a3 andDisplayDate:(id)a4 forBusinessWithEmailAddress:(id)a5 category:(id)a6;
@end

@implementation EDMessageRepository

- (id)updateThrottlerResetBlock
{
  WeakRetained = objc_loadWeakRetained(&self->_updateThrottlerResetBlock);

  return WeakRetained;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EDMessageRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_67 != -1)
  {
    dispatch_once(&log_onceToken_67, block);
  }

  v2 = log_log_67;

  return v2;
}

void __26__EDMessageRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_67;
  log_log_67 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EDMessageRepository_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_5 != -1)
  {
    dispatch_once(&signpostLog_onceToken_5, block);
  }

  v2 = signpostLog_log_5;

  return v2;
}

void __34__EDMessageRepository_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_5;
  signpostLog_log_5 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (EDMessageRepository)initWithMessagePersistence:(id)a3 conversationPersistence:(id)a4 threadPersistence:(id)a5 remoteContentPersistence:(id)a6 messageChangeManager:(id)a7 richLinkPersistence:(id)a8 attachmentPersistenceManager:(id)a9 categoryPersistence:(id)a10 senderPersistence:(id)a11 activityPersistence:(id)a12 businessPersistence:(id)a13 businessCloudStorage:(id)a14 hookRegistry:(id)a15 mailboxPersistence:(id)a16 searchProvider:(id)a17 userProfileProvider:(id)a18 vipManager:(id)a19 fetchController:(id)a20 observerResumer:(id)a21 remoteContentManager:(id)a22 remoteContentCacheConfiguration:(id)a23 blockedSenderManager:(id)a24 listUnsubscribeHandler:(id)a25 remindMeNotificationController:(id)a26 accountsProvider:(id)a27
{
  v96 = a3;
  v95 = a4;
  v94 = a5;
  v93 = a6;
  v92 = a7;
  v71 = a8;
  v91 = a8;
  v90 = a9;
  v98 = a10;
  v89 = a11;
  v88 = a12;
  v87 = a13;
  v86 = a14;
  v85 = a15;
  v84 = a16;
  v83 = a17;
  v82 = a18;
  v81 = a19;
  v80 = a20;
  v79 = a21;
  v78 = a22;
  v77 = a23;
  v76 = a24;
  v75 = a25;
  v74 = a26;
  v73 = a27;
  v99.receiver = self;
  v99.super_class = EDMessageRepository;
  v32 = [(EDMessageRepository *)&v99 init];
  p_isa = &v32->super.isa;
  v34 = v32;
  if (v32)
  {
    v32->_handlersLock._os_unfair_lock_opaque = 0;
    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    handlerTokens = v34->_handlerTokens;
    v34->_handlerTokens = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryHandlers = v34->_queryHandlers;
    v34->_queryHandlers = v37;

    objc_storeStrong(p_isa + 10, a15);
    objc_storeStrong(p_isa + 11, a3);
    objc_storeStrong(p_isa + 12, a4);
    objc_storeStrong(p_isa + 13, a5);
    objc_storeStrong(p_isa + 14, a6);
    objc_storeStrong(p_isa + 17, a7);
    objc_storeStrong(p_isa + 23, a10);
    v39 = [v98 analyticsLogger];
    categoryAnalyticsLogger = v34->_categoryAnalyticsLogger;
    v34->_categoryAnalyticsLogger = v39;

    objc_storeStrong(p_isa + 24, a11);
    objc_storeStrong(p_isa + 25, a13);
    objc_storeStrong(p_isa + 26, a12);
    objc_storeStrong(p_isa + 28, a14);
    v41 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    performQueryOnSerializationQueue = v34->_performQueryOnSerializationQueue;
    v34->_performQueryOnSerializationQueue = v41;

    v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v44 = dispatch_queue_attr_make_with_qos_class(v43, QOS_CLASS_USER_INITIATED, 0);
    v45 = dispatch_queue_create("com.apple.email.EDMessageRepository.serializationQueue", v44);
    serializationQueue = v34->_serializationQueue;
    v34->_serializationQueue = v45;

    objc_storeStrong(p_isa + 29, a16);
    objc_storeStrong(p_isa + 30, a18);
    objc_storeStrong(p_isa + 31, a19);
    objc_storeStrong(p_isa + 32, a17);
    objc_storeStrong(p_isa + 33, a20);
    objc_storeStrong(p_isa + 34, a21);
    objc_storeStrong(p_isa + 35, a22);
    objc_storeStrong(p_isa + 36, a23);
    objc_storeStrong(p_isa + 39, a24);
    objc_storeStrong(p_isa + 40, a25);
    objc_storeStrong(p_isa + 41, a26);
    objc_storeStrong(p_isa + 15, v71);
    objc_storeStrong(p_isa + 16, a9);
    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryHandlersByThreadScope = v34->_queryHandlersByThreadScope;
    v34->_queryHandlersByThreadScope = v47;

    v49 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDMessageRepository.updateThrottlerResetQueue" qualityOfService:9];
    updateThrottlerResetScheduler = v34->_updateThrottlerResetScheduler;
    v34->_updateThrottlerResetScheduler = v49;

    v51 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDMessageRepository.asyncWorkScheduler" qualityOfService:25];
    asyncWorkScheduler = v34->_asyncWorkScheduler;
    v34->_asyncWorkScheduler = v51;

    v53 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDMessageRepository.messageListItemScheduler" qualityOfService:25];
    messageListItemScheduler = v34->_messageListItemScheduler;
    v34->_messageListItemScheduler = v53;

    [(EDPersistenceHookRegistry *)v34->_hookRegistry registerAccountChangeHookResponder:v34];
    [(EDPersistenceHookRegistry *)v34->_hookRegistry registerOneTimeCodeChangeHookResponder:v34];
    [(EDPersistenceHookRegistry *)v34->_hookRegistry registerMessageChangeHookResponder:v34];
    v55 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v56 = dispatch_queue_attr_make_with_qos_class(v55, QOS_CLASS_USER_INITIATED, 0);
    v57 = dispatch_queue_create("com.apple.email.EDMessageRepository.contentProtectionQueue", v56);
    contentProtectionQueue = v34->_contentProtectionQueue;
    v34->_contentProtectionQueue = v57;

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v59 = v34->_contentProtectionQueue;
      EFRegisterContentProtectionObserver();
    }

    [MEMORY[0x1E699ADB8] addValidSortDescriptorsToEMQuery];
    v34->_remoteContentParserLock._os_unfair_lock_opaque = 0;
    v60 = objc_alloc(MEMORY[0x1E699B7F0]);
    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = [v60 initWithObject:v61];
    oneTimeCodeObservers = v34->_oneTimeCodeObservers;
    v34->_oneTimeCodeObservers = v62;

    v64 = objc_alloc_init(MEMORY[0x1E699AC70]);
    analyticsCollector = v34->_analyticsCollector;
    v34->_analyticsCollector = v64;

    objc_storeStrong(p_isa + 45, a27);
    v66 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.onetimepasscodes"];
    sharedOneTimeCodeUserDefaults = v34->_sharedOneTimeCodeUserDefaults;
    v34->_sharedOneTimeCodeUserDefaults = v66;

    v68 = objc_opt_new();
    migratorManager = v34->_migratorManager;
    v34->_migratorManager = v68;
  }

  return v34;
}

- (void)dealloc
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  [(EDMessageRepository *)self cancelAllHandlers];
  [(EDThreadMigratorManager *)self->_migratorManager tearDown];
  v3.receiver = self;
  v3.super_class = EDMessageRepository;
  [(EDMessageRepository *)&v3 dealloc];
}

- (void)test_tearDown
{
  v19 = *MEMORY[0x1E69E9840];
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:261 description:{@"%s can only be called from unit tests", "-[EDMessageRepository test_tearDown]"}];
  }

  os_unfair_lock_lock(&self->_handlersLock);
  v4 = [(EDMessageRepository *)self queryHandlers];
  v5 = [v4 allValues];

  v6 = [(EDMessageRepository *)self queryHandlers];
  [v6 removeAllObjects];

  os_unfair_lock_unlock(&self->_handlersLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v10++) test_tearDown];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(EDMessageRepository *)self asyncWorkScheduler];
  [v11 performSyncBlock:&__block_literal_global_59];

  [(EDThreadMigratorManager *)self->_migratorManager tearDown];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)isDataAccessible:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v3 = EFProtectedDataAvailable();
    v4[2](v4, v3);
  }
}

- (void)performQuery:(id)a3 limit:(int64_t)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v25 = a5;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"starting one off query"];
  v9 = +[EDMessageRepository log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 debugDescription];
    *buf = 138412290;
    v36 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, "Performing Query %@", buf, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x1E699B868] promise];
  v13 = [v12 future];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke;
  v32[3] = &unk_1E8253398;
  v14 = v8;
  v33 = v14;
  v15 = v25;
  v34 = v15;
  [v13 addSuccessBlock:v32];

  v16 = [v12 future];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_74;
  v29[3] = &unk_1E8253568;
  v17 = v14;
  v30 = v17;
  v18 = v15;
  v31 = v18;
  [v16 addFailureBlock:v29];

  if (a4 >= 200)
  {
    v19 = 200;
  }

  else
  {
    v19 = a4;
  }

  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:v19];
  v21 = [(EDMessageRepository *)self messagePersistence];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_76;
  v26[3] = &unk_1E82537F8;
  v22 = v20;
  v27 = v22;
  v23 = v12;
  v28 = v23;
  [v21 iterateMessagesMatchingQuery:v17 batchSize:200 firstBatchSize:0 limit:a4 cancelationToken:0 handler:v26];

  [v23 finishWithResult:v22];
  objc_autoreleasePoolPop(v11);

  v24 = *MEMORY[0x1E69E9840];
}

void __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 count];
    v6 = *(a1 + 32);
    v8 = 134218242;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "found %ld messages matching query %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

void __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_74(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_74_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

void __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v7)
  {
    [*(a1 + 32) addObjectsFromArray:v7];
  }

  else
  {
    [*(a1 + 40) finishWithError:v5];
  }
}

- (void)performCountQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__EDMessageRepository_performCountQuery_completionHandler___block_invoke;
  v11[3] = &unk_1E82534D8;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performBlock:v11];
}

void __59__EDMessageRepository_performCountQuery_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetUpdateThrottlersWithLogMessage:@"starting one off count query"];
  v2 = [*(a1 + 32) messagePersistence];
  v7 = [v2 queryWithExpandedMailboxesFromQuery:*(a1 + 40)];

  v3 = *(a1 + 48);
  v4 = MEMORY[0x1E696AD98];
  v5 = [*(a1 + 32) messagePersistence];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "countOfMessagesMatchingQuery:", v7)}];
  (*(v3 + 16))(v3, v6, 0);
}

- (void)performQuery:(id)a3 withObserver:(id)a4 observationIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"starting query"];
  v14 = [(EDMessageRepository *)self performQueryOnSerializationQueue];
  v15 = [v14 tryLockWhenCondition:1];

  if (v15)
  {
    v16 = [(EDMessageRepository *)self performQueryOnSerializationQueue];
    [v16 unlock];

    v17 = [(EDMessageRepository *)self serializationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__EDMessageRepository_performQuery_withObserver_observationIdentifier_completionHandler___block_invoke;
    block[3] = &unk_1E8255400;
    block[4] = self;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    dispatch_async(v17, block);
  }

  else
  {
    [(EDMessageRepository *)self _performQuery:v10 withObserver:v11 observationIdentifier:v12 completionHandler:v13];
  }
}

- (id)_createGroupedSenderQueryHandlerForQuery:(id)a3 withObserver:(id)a4 observationIdentifier:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  v9 = a5;
  if (([v8 queryOptions] & 0x40) != 0)
  {
    v11 = [EDGroupedSenderQueryHandler alloc];
    v12 = [(EDMessageRepository *)self messagePersistence];
    v13 = [(EDMessageRepository *)self senderPersistence];
    v14 = [(EDMessageRepository *)self businessPersistence];
    v15 = [(EDMessageRepository *)self businessCloudStorage];
    v16 = [(EDMessageRepository *)self hookRegistry];
    v17 = [(EDMessageRepository *)self remindMeNotificationController];
    LOBYTE(v21) = 1;
    v10 = [(EDGroupedSenderQueryHandler *)v11 initWithQuery:v8 messagePersistence:v12 senderPersistence:v13 businessPersistence:v14 businessCloudStorage:v15 hookRegistry:v16 remindMeNotificationController:v17 observer:v22 observationIdentifier:v9 keepMessagesInListOnBucketChange:v21];

    v18 = +[EDMessageRepository log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Creating EDGroupedSenderQueryHandler: %{public}@, observation identifier: %{public}@ groupedSenderQueryHandler:%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_performQuery:(id)a3 withObserver:(id)a4 observationIdentifier:(id)a5 completionHandler:(id)a6
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v57 = a4;
  v62 = a5;
  v56 = a6;
  v60 = v10;
  v11 = objc_alloc(MEMORY[0x1E699B7F8]);
  v12 = [v10 label];
  v13 = v12;
  if (!v12)
  {
    v13 = NSStringFromClass([v10 targetClass]);
  }

  val = [v11 initWithLabel:v13];
  if (!v12)
  {
  }

  os_unfair_lock_lock(&self->_handlersLock);
  [(NSMutableSet *)self->_handlerTokens addObject:val];
  os_unfair_lock_unlock(&self->_handlersLock);
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [v10 targetClass];
  if (_os_feature_enabled_impl())
  {
    v15 = [(EDMessageRepository *)self _createGroupedSenderQueryHandlerForQuery:v10 withObserver:v57 observationIdentifier:v62];
    v16 = [v15 threadScope];
    [v55 ef_addOptionalObject:v16];

    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v61 = v17;
  if (v14 == objc_opt_class())
  {
    v19 = +[EDMessageRepository log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v80 = v60;
      v81 = 2114;
      v82 = v62;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Creating message query: %{public}@, observation identifier: %{public}@", buf, 0x16u);
    }

    if (_os_feature_enabled_impl())
    {
      v20 = [(EDMessageRepository *)self observerResumer];
    }

    else
    {
      v20 = 0;
    }

    v29 = [EDMessageQueryHandler alloc];
    v30 = [(EDMessageRepository *)self messagePersistence];
    v31 = [(EDMessageRepository *)self hookRegistry];
    v32 = [(EDMessageRepository *)self remindMeNotificationController];
    v33 = [(EDMessageRepository *)self searchProvider];
    v18 = [(EDMessageQueryHandler *)v29 initWithQuery:v60 messagePersistence:v30 hookRegistry:v31 remindMeNotificationController:v32 searchProvider:v33 observer:v57 observationIdentifier:v62 observationResumer:v20];
  }

  else if (v14 == objc_opt_class() && ([v60 queryOptions] & 0x40) != 0)
  {
    v34 = v17;
    v35 = [v34 threadScope];
    [v55 addObject:v35];

    v18 = v34;
  }

  else if (v14 == objc_opt_class())
  {
    v21 = +[EDMessageRepository log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v80 = v60;
      v81 = 2114;
      v82 = v62;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Creating thread query: %{public}@, observation identifier: %{public}@", buf, 0x16u);
    }

    v22 = [EDThreadQueryHandler alloc];
    v53 = [(EDMessageRepository *)self messagePersistence];
    v58 = [(EDMessageRepository *)self threadPersistence];
    v23 = [(EDMessageRepository *)self hookRegistry];
    v24 = [(EDMessageRepository *)self vipManager];
    v25 = [(EDMessageRepository *)self searchProvider];
    v26 = [(EDMessageRepository *)self remindMeNotificationController];
    v27 = [(EDMessageRepository *)self observerResumer];
    v64 = [(EDThreadQueryHandler *)v22 initWithQuery:v60 messagePersistence:v53 threadPersistence:v58 hookRegistry:v23 vipManager:v24 searchProvider:v25 remindMeNotificationController:v26 observer:v57 observationIdentifier:v62 delegate:self observationResumer:v27 threadMigratorManager:self->_migratorManager];

    v28 = [(EDThreadQueryHandler *)v64 threadScope];
    [v55 addObject:v28];

    v18 = v64;
  }

  else
  {
    v18 = 0;
  }

  [val addCancelable:v18];
  v65 = v18;
  os_unfair_lock_lock(&self->_handlersLock);
  v36 = [(EDMessageRepository *)self queryHandlers];
  v59 = v36;
  v54 = [v36 objectForKeyedSubscript:v62];
  if (v54)
  {
    v37 = +[EDMessageRepository log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      [val label];
      objc_claimAutoreleasedReturnValue();
      [EDMessageRepository _performQuery:withObserver:observationIdentifier:completionHandler:];
    }

    v36 = v59;
    [v54 cancel];
  }

  [v36 setObject:v18 forKeyedSubscript:v62];
  v38 = +[EDMessageRepository log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [val label];
    v40 = [v59 count];
    *buf = 138544130;
    v80 = v18;
    v81 = 2114;
    v82 = v62;
    v83 = 2114;
    v84 = v39;
    v85 = 2048;
    v86 = v40;
    _os_log_impl(&dword_1C61EF000, v38, OS_LOG_TYPE_DEFAULT, "Added queryHandler:%{public}@ observation identifier: %{public}@ token:%{public}@\n\tqueryHandlers.count:%lu", buf, 0x2Au);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v41 = v55;
  v42 = [v41 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v42)
  {
    v43 = *v75;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v75 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = *(*(&v74 + 1) + 8 * i);
        v46 = [(EDMessageRepository *)self queryHandlersByThreadScope];
        v47 = [v46 objectForKeyedSubscript:v45];

        if (v47)
        {
          [v47 addObject:v65];
        }

        else
        {
          v48 = [MEMORY[0x1E695DFA8] setWithObject:v65];
          v49 = [(EDMessageRepository *)self queryHandlersByThreadScope];
          [v49 setObject:v48 forKeyedSubscript:v45];

          v47 = v48;
        }
      }

      v42 = [v41 countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v42);
  }

  os_unfair_lock_unlock(&self->_handlersLock);
  [v65 start];
  objc_initWeak(buf, self);
  objc_initWeak(&location, val);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __90__EDMessageRepository__performQuery_withObserver_observationIdentifier_completionHandler___block_invoke;
  v67[3] = &unk_1E8255428;
  objc_copyWeak(&v71, buf);
  objc_copyWeak(&v72, &location);
  v50 = v62;
  v68 = v50;
  v69 = v65;
  v51 = v41;
  v70 = v51;
  v66 = v69;
  [val addCancelationBlock:v67];
  v56[2](v56, val);

  objc_destroyWeak(&v72);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v52 = *MEMORY[0x1E69E9840];
}

void __90__EDMessageRepository__performQuery_withObserver_observationIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    if (v3)
    {
      v4 = +[EDMessageRepository log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = [v3 label];
        *buf = 138543618;
        v30 = v5;
        v31 = 2114;
        v32 = v6;
        _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Stopping query with observation identifier: %{public}@ token:%{public}@", buf, 0x16u);
      }

      os_unfair_lock_lock(WeakRetained + 5);
      [*(WeakRetained + 9) removeObject:v3];
      v7 = [WeakRetained queryHandlers];
      v23 = [v7 objectForKeyedSubscript:*(a1 + 32)];

      if (v23 == *(a1 + 40))
      {
        v8 = [WeakRetained queryHandlers];
        [v8 setObject:0 forKeyedSubscript:*(a1 + 32)];

        v9 = +[EDMessageRepository log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = [v3 label];
          v12 = [WeakRetained queryHandlers];
          v13 = [v12 count];
          *buf = 138544130;
          v30 = v23;
          v31 = 2114;
          v32 = v10;
          v33 = 2114;
          v34 = v11;
          v35 = 2048;
          v36 = v13;
          _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Removed queryHandler:%{public}@ observation identifier: %{public}@ token:%{public}@\n\tqueryHandlers.count:%lu", buf, 0x2Au);
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = *(a1 + 48);
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        v16 = *v25;
        do
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v24 + 1) + 8 * v17);
            v19 = [WeakRetained queryHandlersByThreadScope];
            v20 = [v19 objectForKeyedSubscript:v18];

            [v20 removeObject:*(a1 + 40)];
            if (![v20 count])
            {
              v21 = [WeakRetained queryHandlersByThreadScope];
              [v21 setObject:0 forKeyedSubscript:v18];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      os_unfair_lock_unlock(WeakRetained + 5);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_accountActiveStateDidChange:(id)a3 stateStringForLogging:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 conformsToProtocol:&unk_1F4628C10])
  {
    v8 = v6;
    v9 = [(EDMessageRepository *)self asyncWorkScheduler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__EDMessageRepository__accountActiveStateDidChange_stateStringForLogging___block_invoke;
    v12[3] = &unk_1E8250720;
    v13 = v7;
    v14 = self;
    v10 = v8;
    v15 = v10;
    [v9 performBlock:v12];
  }

  else
  {
    v10 = +[EDMessageRepository log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Newly %{public}@ account is not EDReceivingAccount.", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __74__EDMessageRepository__accountActiveStateDidChange_stateStringForLogging___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageRepository log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Requesting update of threads for %{public}@ account.", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) threadPersistence];
  v5 = [v4 resetThreadScopesForAccount:*(a1 + 48)];

  [*(a1 + 40) _triggerMigrationForThreadScopes:v5];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)threadQueryHandlerStateDidChange:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_handlersLock);
  v6 = [(EDMessageRepository *)self queryHandlersByThreadScope];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__EDMessageRepository_threadQueryHandlerStateDidChange___block_invoke;
  v20[3] = &unk_1E8255470;
  v7 = v4;
  v21 = v7;
  v8 = v5;
  v22 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v20];

  os_unfair_lock_unlock(&self->_handlersLock);
  [v8 removeObject:v7];
  v9 = +[EDMessageRepository log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 count];
    *buf = 134218240;
    v25 = v7;
    v26 = 1024;
    v27 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, "Thread query handler %p completed migration. Will notify %u other thread query handlers about the state change.", buf, 0x12u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v14++) checkIfPrecomputedStateIsAvailable];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __56__EDMessageRepository_threadQueryHandlerStateDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) threadScope];
  v7 = [v9 isEqual:v6];

  if (v7)
  {
    v8 = [v5 ef_compactMap:&__block_literal_global_226];
    [*(a1 + 40) unionSet:v8];
  }
}

void *__56__EDMessageRepository_threadQueryHandlerStateDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_triggerMigrationForThreadScopes:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__29;
  v28 = __Block_byref_object_dispose__29;
  v29 = 0;
  os_unfair_lock_lock(&self->_handlersLock);
  v5 = [(EDMessageRepository *)self queryHandlersByThreadScope];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__EDMessageRepository__triggerMigrationForThreadScopes___block_invoke;
  v21[3] = &unk_1E8255498;
  v6 = v4;
  v22 = v6;
  v23 = &v24;
  [v5 enumerateKeysAndObjectsUsingBlock:v21];

  os_unfair_lock_unlock(&self->_handlersLock);
  v7 = +[EDMessageRepository log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v25[5] count];
    *buf = 67109120;
    v32 = v8;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Found %u query handlers that need re-migration for (de-)actived account.", buf, 8u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v25[5];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [(EDMessageRepository *)self threadPersistence];
        v15 = [v13 threadScope];
        [v14 setNeedsUpdateForThreadScope:v15];

        [v13 triggerMigration];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v24, 8);
  v16 = *MEMORY[0x1E69E9840];
}

void __56__EDMessageRepository__triggerMigrationForThreadScopes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    v5 = [v10 ef_compactMap:&__block_literal_global_229];
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      [v6 unionSet:v5];
    }

    else
    {
      v7 = [v5 mutableCopy];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

void *__56__EDMessageRepository__triggerMigrationForThreadScopes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)startCountingQuery:(id)a3 includingServerCountsForMailboxScope:(id)a4 withObserver:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"starting count query"];
  v14 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"counting query token"];
  v15 = [EDMessageCountQueryHandler alloc];
  v16 = [(EDMessageRepository *)self messagePersistence];
  v17 = [(EDMessageRepository *)self hookRegistry];
  v18 = [(EDMessageCountQueryHandler *)v15 initWithQuery:v10 serverCountMailboxScope:v11 messagePersistence:v16 hookRegistry:v17 observer:v12];
  [v14 addCancelable:v18];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __110__EDMessageRepository_startCountingQuery_includingServerCountsForMailboxScope_withObserver_completionHandler___block_invoke;
  v25[3] = &unk_1E8250260;
  v19 = v12;
  v26 = v19;
  [v14 addCancelationBlock:v25];
  os_unfair_lock_lock(&self->_handlersLock);
  [(NSMutableSet *)self->_handlerTokens addObject:v14];
  os_unfair_lock_unlock(&self->_handlersLock);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v14);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __110__EDMessageRepository_startCountingQuery_includingServerCountsForMailboxScope_withObserver_completionHandler___block_invoke_2;
  v20[3] = &unk_1E8255050;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  [v14 addCancelationBlock:v20];
  v13[2](v13, v14);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __110__EDMessageRepository_startCountingQuery_includingServerCountsForMailboxScope_withObserver_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      os_unfair_lock_lock(v4 + 5);
      [*(v4 + 9) removeObject:v3];
      os_unfair_lock_unlock(v4 + 5);
    }

    WeakRetained = v4;
  }
}

- (void)startObservingOneTimeCode:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self oneTimeCodeObservers];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__EDMessageRepository_startObservingOneTimeCode_completionHandler___block_invoke;
  v21[3] = &unk_1E82536A0;
  v9 = v6;
  v22 = v9;
  [v8 performWhileLocked:v21];

  v10 = +[EDMessageRepository log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "[OTC] Registering one-time code observer: %@", buf, 0xCu);
  }

  if (!self->_delayedMessageActionScheduler)
  {
    v11 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDMessageRepository.delayedMessageActionScheduler"];
    delayedMessageActionScheduler = self->_delayedMessageActionScheduler;
    self->_delayedMessageActionScheduler = v11;
  }

  self->_oneTimeCodeMessageID = *MEMORY[0x1E699A728];
  v13 = objc_opt_new();
  os_unfair_lock_lock(&self->_handlersLock);
  [(NSMutableSet *)self->_handlerTokens addObject:v13];
  os_unfair_lock_unlock(&self->_handlersLock);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v13);
  objc_initWeak(&from, v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__EDMessageRepository_startObservingOneTimeCode_completionHandler___block_invoke_241;
  v15[3] = &unk_1E82554C0;
  objc_copyWeak(&v16, buf);
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  [v13 addCancelationBlock:v15];
  v7[2](v7, v13);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

void __67__EDMessageRepository_startObservingOneTimeCode_completionHandler___block_invoke_241(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 5);
    if (v3)
    {
      v4 = objc_loadWeakRetained(a1 + 6);
      if (v4)
      {
        v5 = [WeakRetained oneTimeCodeObservers];
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __67__EDMessageRepository_startObservingOneTimeCode_completionHandler___block_invoke_2;
        v6[3] = &unk_1E82536A0;
        v7 = v4;
        [v5 performWhileLocked:v6];

        os_unfair_lock_lock(WeakRetained + 5);
        [*(WeakRetained + 9) removeObject:v3];
        os_unfair_lock_unlock(WeakRetained + 5);
      }
    }
  }
}

- (void)_broadcastOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5 subject:(id)a6 senders:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(EDMessageRepository *)self oneTimeCodeObservers];
  v23 = [v16 getObject];

  v17 = +[EDMessageRepository log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v23;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "[OTC] Broadcasting one-time code to observers: %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v23;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * v21++) didReceiveOneTimeCode:v12 timestamp:v13 messageID:a5 subject:v14 senders:v15 observers:{objc_msgSend(v18, "count")}];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5 subject:(id)a6 senders:(id)a7
{
  v15 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  [(EDMessageRepository *)self setOneTimeCodeMessageID:a5];
  [(EDMessageRepository *)self _broadcastOneTimeCode:v15 timestamp:v12 messageID:a5 subject:v13 senders:v14];
}

- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    v8 = *MEMORY[0x1E699A728];
    v9 = MEMORY[0x1E695E0F0];
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [(EDMessageRepository *)self oneTimeCodeMessageID];
        if (v12 == [v11 globalMessageID])
        {
          v13 = +[EDMessageRepository log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "One time code messages are deleted by the user", v16, 2u);
          }

          v14 = [MEMORY[0x1E695DF00] now];
          -[EDMessageRepository _broadcastOneTimeCode:timestamp:messageID:subject:senders:](self, "_broadcastOneTimeCode:timestamp:messageID:subject:senders:", 0, v14, [v11 globalMessageID], &stru_1F45B4608, v9);

          [(EDMessageRepository *)self setOneTimeCodeMessageID:v8];
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NSSet)test_activeQueryCancelationTokens
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:613 description:{@"%s can only be called from unit tests", "-[EDMessageRepository test_activeQueryCancelationTokens]"}];
  }

  os_unfair_lock_lock(&self->_handlersLock);
  v4 = [(NSMutableSet *)self->_handlerTokens copy];
  os_unfair_lock_unlock(&self->_handlersLock);

  return v4;
}

- (void)cancelAllHandlers
{
  os_unfair_lock_lock(&self->_handlersLock);
  v3 = [(NSMutableSet *)self->_handlerTokens allObjects];
  v4 = [v3 mutableCopy];

  [(NSMutableSet *)self->_handlerTokens removeAllObjects];
  os_unfair_lock_unlock(&self->_handlersLock);
  [v4 makeObjectsPerformSelector:sel_cancel];
}

- (id)_threadScopeFromObjectID:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a1 = [v3 threadScope];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_partitionObjectIDs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v17;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v10 = [(EDMessageRepository *)self _threadScopeFromObjectID:v9];
          v11 = [v4 objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11)
          {
            [v11 addObject:v9];
          }

          else
          {
            v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
            [v4 setObject:v12 forKeyedSubscript:v10];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 addObject:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v13 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v6 = v13;
    }

    while (v13);
  }

  v14 = [[_EDPartitionedObjectIDs alloc] initWithMessageObjectIDs:v18 threadObjectIDsByScope:v4];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_enumerateObjectIDsAndQueryHandlersForObjectIDsByScope:(id)a3 usingBlock:(id)a4 failureBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__EDMessageRepository__enumerateObjectIDsAndQueryHandlersForObjectIDsByScope_usingBlock_failureBlock___block_invoke;
  v12[3] = &unk_1E82554E8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
}

void __102__EDMessageRepository__enumerateObjectIDsAndQueryHandlersForObjectIDsByScope_usingBlock_failureBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v23 = a3;
  v6 = *(a1 + 32);
  os_unfair_lock_lock(v6 + 5);
  v29 = a1;
  v22 = v5;
  v7 = [*(a1 + 32) queryHandlersByThreadScope];
  v8 = [v7 objectForKeyedSubscript:v5];
  v26 = [v8 copy];

  os_unfair_lock_unlock(v6 + 5);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v23;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v25 = *v35;
    do
    {
      v10 = 0;
      v27 = v9;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = v26;
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        v28 = v10;
        if (v13)
        {
          v14 = 0;
          v15 = 0;
          v16 = *v31;
          while (2)
          {
            v17 = 0;
            v18 = v14;
            v19 = v15;
            do
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v14 = *(*(&v30 + 1) + 8 * v17);

              v20 = (*(*(v29 + 40) + 16))();
              v15 = v19;

              if (v20)
              {

                goto LABEL_18;
              }

              ++v17;
              v18 = v14;
              v19 = v15;
            }

            while (v13 != v17);
            v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v15 = 0;
        }

        (*(*(v29 + 48) + 16))();
        v14 = 0;
LABEL_18:

        v10 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateObjectIDsByScope:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__EDMessageRepository__enumerateObjectIDsByScope_usingBlock___block_invoke;
  v10[3] = &unk_1E8255510;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__EDMessageRepository__enumerateObjectIDsByScope_usingBlock___block_invoke_2;
  v8[3] = &unk_1E8255538;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(EDMessageRepository *)self _enumerateObjectIDsAndQueryHandlersForObjectIDsByScope:a3 usingBlock:v10 failureBlock:v8];
}

uint64_t __61__EDMessageRepository__enumerateObjectIDsByScope_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v18 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0;
      v9 = &v17;
      v10 = [v8 messageListItemForObjectID:v7 isPersisted:&v18 error:&v17];
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
      v9 = &v16;
      v10 = [v8 groupedSenderForObjectID:v7 isPersisted:&v18 error:&v16];
LABEL_7:
      v11 = v10;
      v12 = *v9;
      if (v11)
      {
        (*(*(a1 + 32) + 16))();
        v13 = 1;
        if (!a4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v13 = 0;
        if (!a4)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }
  }

  v13 = 0;
  v11 = 0;
  v12 = 0;
  if (a4)
  {
LABEL_11:
    v14 = v12;
    *a4 = v12;
  }

LABEL_12:

  return v13;
}

void __61__EDMessageRepository__enumerateObjectIDsByScope_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8 && ([*(a1 + 32) threadPersistence], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "threadScope"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isThreadScopePrecomputed:shouldMigrate:", v10, 0), v10, v9, v11))
  {
    v12 = [*(a1 + 32) threadPersistence];
    v17 = 0;
    v13 = [v12 threadForObjectID:v8 originatingQuery:0 error:&v17];
    v14 = v17;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"In-memory thread could not be found"];
      v6 = [v15 em_internalErrorWithReason:v16];
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)messageListItemsForObjectIDs:(id)a3 requestID:(unint64_t)a4 observationIdentifier:(id)a5 loadSummaryForAdditionalObjectIDs:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = _os_activity_create(&dword_1C61EF000, "[EDMessageRepository messageListItemsForObjectIDs:requestID:observationIdentifier:loadSummaryForAdditionalObjectIDs:completionHandler:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  v18 = [MEMORY[0x1E699AC90] signpostLog];
  v19 = v18;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, a4, "EDMessageRepositoryMessageListItems", "Received by maild", buf, 2u);
  }

  v20 = [(EDMessageRepository *)self messageListItemScheduler];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __136__EDMessageRepository_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler___block_invoke;
  v25[3] = &unk_1E8255588;
  v30 = a4;
  v25[4] = self;
  v21 = v13;
  v26 = v21;
  v31 = a2;
  v22 = v14;
  v27 = v22;
  v23 = v15;
  v28 = v23;
  v24 = v16;
  v29 = v24;
  [v20 performBlock:v25];

  os_activity_scope_leave(&state);
}

void __136__EDMessageRepository_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699AC90] signpostLog];
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v3, OS_SIGNPOST_EVENT, v4, "EDMessageRepositoryMessageListItems", "Inside async block", buf, 2u);
  }

  [*(a1 + 32) _resetUpdateThrottlersWithLogMessage:@"requesting message list items"];
  v51 = [*(a1 + 32) _partitionObjectIDs:*(a1 + 40)];
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__EDMessageRepository_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler___block_invoke_264;
  aBlock[3] = &unk_1E8255560;
  v6 = *(a1 + 32);
  v62 = *(a1 + 80);
  aBlock[4] = v6;
  v53 = v52;
  v60 = v53;
  v7 = v5;
  v61 = v7;
  v50 = _Block_copy(aBlock);
  v8 = *(a1 + 32);
  v9 = [v51 threadObjectIDsByScope];
  [v8 _enumerateObjectIDsByScope:v9 usingBlock:v50];

  v10 = [MEMORY[0x1E699AC90] signpostLog];
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v11, OS_SIGNPOST_EVENT, v12, "EDMessageRepositoryMessageListItems", "Finished enumerating objectIDs by scope", buf, 2u);
  }

  v13 = [v51 messageObjectIDs];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [*(a1 + 32) messagePersistence];
    v16 = [v51 messageObjectIDs];
    v58 = 0;
    v17 = [v15 messagesForMessageObjectIDs:v16 missedMessageObjectIDs:&v58];
    v18 = v58;

    v19 = [MEMORY[0x1E699AC90] signpostLog];
    v20 = v19;
    v21 = *(a1 + 72);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v20, OS_SIGNPOST_EVENT, v21, "EDMessageRepositoryMessageListItems", "Fetched messages from message persistence", buf, 2u);
    }

    [v53 addObjectsFromArray:v17];
    [v7 addEntriesFromDictionary:v18];
  }

  if (*(a1 + 48))
  {
    v22 = *(a1 + 32);
    os_unfair_lock_lock(v22 + 5);
    v23 = [*(a1 + 32) queryHandlers];
    v24 = [v23 objectForKeyedSubscript:*(a1 + 48)];

    os_unfair_lock_unlock(v22 + 5);
    v25 = *(a1 + 48);
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  [*(a1 + 32) _requestSummariesIfNeededForMessageListItems:v53 additionalObjectIDs:*(a1 + 56) queryHandler:v24 observationIdentifier:v25];
  objc_opt_class();
  v49 = v24;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [v53 count];
    v27 = [v7 count];
    if (v27 + v26 != [*(a1 + 40) count])
    {
      v48 = [*(a1 + 40) mutableCopy];
      v28 = [v53 ef_compactMapSelector:sel_objectID];
      [v48 removeObjectsInArray:v28];

      v29 = [v7 allKeys];
      [v48 removeObjectsInArray:v29];

      v30 = +[EDMessageRepository log];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v45 = [*(a1 + 40) count];
        v46 = [v53 count];
        v47 = [v7 count];
        *buf = 134218754;
        *v65 = v45;
        *&v65[8] = 2048;
        v66 = v46;
        v67 = 2048;
        v68 = v47;
        v69 = 2114;
        v70 = v48;
        _os_log_error_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_ERROR, "Incorrect number of message list items (expected %lu, got %lu results + %lu missed). Unaccounted for: %{public}@", buf, 0x2Au);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v31 = v48;
      v32 = [v31 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v32)
      {
        v33 = *v55;
        do
        {
          v34 = 0;
          do
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v54 + 1) + 8 * v34);
            v36 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to find message list item or missing reason"];
            [v7 setObject:v36 forKeyedSubscript:v35];

            ++v34;
          }

          while (v32 != v34);
          v32 = [v31 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v32);
      }
    }
  }

  if (![v53 count])
  {

    v53 = 0;
  }

  if (![v7 count])
  {

    v7 = 0;
  }

  v37 = +[EDMessageRepository log];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [(EDMessageRepository *)*(a1 + 32) _descriptionStringForMessageListItems:v53];
    *buf = 138543618;
    *v65 = v38;
    *&v65[8] = 2114;
    v66 = v7;
    _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "Returning results: %{public}@, missed objects: %{public}@", buf, 0x16u);
  }

  v39 = [MEMORY[0x1E699AC90] signpostLog];
  v40 = v39;
  v41 = *(a1 + 72);
  if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    v42 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v53, "count")}];
    v43 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v7, "count")}];
    *buf = 67240448;
    *v65 = v42;
    *&v65[4] = 1026;
    *&v65[6] = v43;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v40, OS_SIGNPOST_INTERVAL_END, v41, "EDMessageRepositoryMessageListItems", "Finished processing %{public, name=results}u %{public, name=missedObjectIDs}u", buf, 0xEu);
  }

  (*(*(a1 + 64) + 16))();
  v44 = *MEMORY[0x1E69E9840];
}

void __136__EDMessageRepository_messageListItemsForObjectIDs_requestID_observationIdentifier_loadSummaryForAdditionalObjectIDs_completionHandler___block_invoke_264(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v22 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"EDMessageRepository.m" lineNumber:756 description:@"Expecting EMRepositoryObject class"];
    }

    [*(a1 + 40) addObject:v12];
    [*(a1 + 48) setObject:0 forKeyedSubscript:v22];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = v22;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = v16;
    v18 = v14;
    if (!v14)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = MEMORY[0x1E696AEC0];
      v6 = [v16 ef_publicDescription];
      v7 = [v20 stringWithFormat:@"Failed to get message list item for objectID: %@", v6];
      v18 = [v19 em_internalErrorWithReason:v7];
    }

    [*(a1 + 48) setObject:v18 forKeyedSubscript:v22];
    if (!v14)
    {
    }
  }
}

- (id)_descriptionStringForMessageListItems:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc(MEMORY[0x1E696AD60]);
    v5 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"messageListItems.count:%u objectIDs:(\n"), objc_msgSend(MEMORY[0x1E699B858], "bucketMessageCount:", objc_msgSend(v3, "count"));
    v6 = [v4 initWithString:v5];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__EDMessageRepository__descriptionStringForMessageListItems___block_invoke;
    v10[3] = &unk_1E82555B0;
    v7 = v6;
    v11 = v7;
    v12 = v3;
    [v12 enumerateObjectsUsingBlock:v10];
    [v7 appendString:@""]);
    v8 = v12;
    a1 = v7;
  }

  return a1;
}

- (void)_requestSummariesIfNeededForMessageListItems:(id)a3 additionalObjectIDs:(id)a4 queryHandler:(id)a5 observationIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EDMessageRepository *)self asyncWorkScheduler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __123__EDMessageRepository__requestSummariesIfNeededForMessageListItems_additionalObjectIDs_queryHandler_observationIdentifier___block_invoke;
  v19[3] = &unk_1E8252D78;
  v15 = v10;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  v17 = v12;
  v22 = v17;
  v18 = v13;
  v23 = v18;
  v24 = self;
  [v14 performBlock:v19];
}

void __123__EDMessageRepository__requestSummariesIfNeededForMessageListItems_additionalObjectIDs_queryHandler_observationIdentifier___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v4)
  {
    v5 = *v38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [v7 summary];
        v9 = v8 == 0;

        if (v9)
        {
          v10 = [v7 displayMessageObjectID];
          [v2 addObject:v10];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v4);
  }

  [v2 addObjectsFromArray:*(a1 + 40)];
  v11 = +[EDMessageRepository log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = [v2 count];
    v15 = [*(a1 + 32) count];
    v16 = [*(a1 + 40) count];
    *buf = 134219010;
    v44 = v13;
    v45 = 2114;
    v46 = v12;
    v47 = 2048;
    v48 = v14;
    v49 = 2048;
    v50 = v15;
    v51 = 2048;
    v52 = v16;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "queryHandler: %p for observation identifier: %{public}@. Requesting summary for (%lu/%lu) messages. summaryLoadObjectIDs: %lu.", buf, 0x34u);
  }

  if (*(a1 + 48))
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v2;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v18)
    {
      v19 = *v34;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(a1 + 48) requestSummaryForMessageObjectID:*(*(&v33 + 1) + 8 * j)];
        }

        v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v17 = [*(a1 + 64) messagePersistence];
    v21 = +[EDMessageRepository log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 56);
      *buf = 138412546;
      v44 = v22;
      v45 = 2048;
      v46 = v17;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "No query handler found for observation identifier: %@. Requesting summary from messagePersistence %p", buf, 0x16u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v2;
    v24 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v24)
    {
      v25 = *v30;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = [v17 requestSummaryForMessageObjectID:{*(*(&v29 + 1) + 8 * k), v29}];
        }

        v24 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v24);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __61__EDMessageRepository__descriptionStringForMessageListItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectID];
  v9 = [v7 description];

  v8 = [*(a1 + 32) length];
  if (([v9 length] + v8) >> 16)
  {
    [*(a1 + 32) appendFormat:@"    Max length reached. Omit %u items\n", objc_msgSend(MEMORY[0x1E699B858], "bucketMessageCount:", objc_msgSend(*(a1 + 40), "count") - a3)];
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) appendFormat:@"    %@\n", v9];
  }
}

- (void)performMessageChangeAction:(id)a3 requestID:(unint64_t)a4 returnUndoAction:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"performing change action"];
  v12 = [(EDMessageRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__EDMessageRepository_performMessageChangeAction_requestID_returnUndoAction_completionHandler___block_invoke;
  block[3] = &unk_1E82555D8;
  v20 = a5;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __95__EDMessageRepository_performMessageChangeAction_requestID_returnUndoAction_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699AC90] signpostLog];
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v43) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "EDMessageRepositoryMessageChangeAction", "Received by maild", &v43, 2u);
  }

  v5 = +[EDMessageRepository signpostLog];
  v6 = os_signpost_id_generate(v5);

  v7 = +[EDMessageRepository signpostLog];
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = [*(a1 + 32) signpostType];
    v10 = *(a1 + 64);
    v43 = 134349312;
    v44 = v9;
    v45 = 1026;
    v46 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "EDMessageRepositoryMessageChangeAction", "ChangeActionType=%{public,signpost.telemetry:number1}lu, ReturnUndoAction=%{public,signpost.telemetry.number2}u enableTelemetry=YES ", &v43, 0x12u);
  }

  v11 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    [*(a1 + 40) _performMessageFlagChangeAllAction:*(a1 + 32)];
    goto LABEL_9;
  }

  v13 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [*(a1 + 40) _performMessageFlagChangeAction:*(a1 + 32) returnUndoAction:*(a1 + 64)];
LABEL_18:
    v12 = v14;
    goto LABEL_19;
  }

  v15 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [*(a1 + 40) _performMessageReadLaterAction:*(a1 + 32) returnUndoAction:*(a1 + 64)];
    goto LABEL_18;
  }

  v16 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [*(a1 + 40) _performMessageFollowUpAction:*(a1 + 32) returnUndoAction:*(a1 + 64)];
    goto LABEL_18;
  }

  v17 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [*(a1 + 40) _performSenderBlockingAction:*(a1 + 32) returnUndoAction:*(a1 + 64)];
    goto LABEL_18;
  }

  v25 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    [*(a1 + 40) _performUnsubscribeAction:*(a1 + 32)];
    goto LABEL_9;
  }

  v26 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = *(a1 + 32);
    v28 = [v27 destinationMailboxURL];

    v29 = *(a1 + 40);
    if (v28)
    {
      [v29 _performMessageTransferAllAction:v27];
    }

    else
    {
      [v29 _performMessageTransferAllActionToSpecialMailbox:v27];
    }

    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) _performMessageDeleteAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v34 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) _performMessageDeleteAllAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v36 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [*(a1 + 40) _performMessageConversationFlagChangeAction:*(a1 + 32) returnUndoAction:*(a1 + 64)];
      goto LABEL_18;
    }

    v37 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) performMessageHighImpactChangeAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v38 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) _logCategoryMetadataForChangeAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v39 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) _performCategoryChangeAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v40 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) _performRestoreModelCategoryForAllMessagesChangeAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v41 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      [*(a1 + 40) _performSuppressNotAuthenticatedChangeAction:*(a1 + 32)];
      goto LABEL_9;
    }

    v42 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [*(a1 + 40) _performUndoAction:*(a1 + 32)];
      goto LABEL_18;
    }

LABEL_41:
    v12 = 0;
    goto LABEL_9;
  }

  v30 = *(a1 + 32);
  v31 = [v30 destinationMailboxURL];

  v32 = *(a1 + 40);
  v33 = *(a1 + 64);
  if (v31)
  {
    [v32 _performMessageTransferAction:v30 returnUndoAction:v33];
  }

  else
  {
    [v32 _performMessageTransferActionToSpecialMailbox:v30 returnUndoAction:v33];
  }
  v35 = ;

  v12 = v35;
LABEL_19:
  if (*(a1 + 64) == 1 && v12)
  {
    v18 = [objc_alloc(MEMORY[0x1E699AF20]) initWithIndividualActions:v12 origin:objc_msgSend(*(a1 + 32) actor:{"origin"), objc_msgSend(*(a1 + 32), "actor")}];
    (*(*(a1 + 48) + 16))();

    goto LABEL_22;
  }

LABEL_9:
  (*(*(a1 + 48) + 16))();
LABEL_22:
  v19 = [MEMORY[0x1E699AC90] signpostLog];
  v20 = v19;
  v21 = *(a1 + 56);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v43) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v20, OS_SIGNPOST_INTERVAL_END, v21, "EDMessageRepositoryMessageChangeAction", "", &v43, 2u);
  }

  v22 = +[EDMessageRepository signpostLog];
  v23 = v22;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(v43) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v23, OS_SIGNPOST_INTERVAL_END, v6, "EDMessageRepositoryMessageChangeAction", "", &v43, 2u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)performOneTimeCodeMessageDeletionWithObjectID:(id)a3 requestID:(unint64_t)a4 returnUndoAction:(BOOL)a5 afterDelay:(double)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = _EFLocalizedString();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__EDMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_requestID_returnUndoAction_afterDelay_completionHandler___block_invoke;
  v16[3] = &unk_1E8255628;
  v16[4] = self;
  v14 = v11;
  v17 = v14;
  v19 = a6;
  v20 = a4;
  v15 = v12;
  v18 = v15;
  [(EDMessageRepository *)self mailOnBoardDeleteVerificationCodesMessage:v13 completionHandler:v16];
}

void __125__EDMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_requestID_returnUndoAction_afterDelay_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = +[EDMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Onboarding alert was presented. Sending option selected back to Messages notification and setting default key 'DeleteVerificationCodes'", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = objc_alloc(MEMORY[0x1E699AC78]);
  v36 = @"oneTimeCodeEvent";
  v37[0] = @"filled";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = [v6 initWithEventName:@"com.apple.mail.oneTimeCodes" collectionData:v7];

  [*(*(a1 + 32) + 40) logOneTimeEvent:v8];
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = +[EDMessageRepository log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Enable one-time code email deletion", buf, 2u);
      }

      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"EDOneTimeCodeOnboardingAlertUserSelectedEnableNotification", 0, 0, 1u);
      v9 = [*(a1 + 32) sharedOneTimeCodeUserDefaults];
      [v9 setBool:1 forKey:@"DeleteVerificationCodes"];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_15;
      }

      v9 = +[EDMessageRepository log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "No one-time code email deletion preference selected", buf, 2u);
      }
    }
  }

  else
  {
    v11 = +[EDMessageRepository log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Disable one-time code email deletion", buf, 2u);
    }

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"EDOneTimeCodeOnboardingAlertUserSelectedDisableNotification", 0, 0, 1u);
    v9 = [*(a1 + 32) sharedOneTimeCodeUserDefaults];
    [v9 setBool:0 forKey:@"DeleteVerificationCodes"];
  }

LABEL_15:
  v12 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.messageRepository.delayedMessageAction"];
  if (a2)
  {
    if (a2 != 1)
    {
      v16 = 0;
      goto LABEL_24;
    }

    v13 = objc_alloc(MEMORY[0x1E699ADE0]);
    v35 = *(a1 + 40);
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v15 = [MEMORY[0x1E699B300] setRead];
    v16 = [v13 initWithObjectIDs:v14 origin:7 actor:1 specialDestinationMailboxType:3 flagChange:v15 copyMessages:0];

    v17 = +[EDMessageRepository log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Deleting used one time code email";
LABEL_21:
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E699AD68]);
    v34 = *(a1 + 40);
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    v21 = [MEMORY[0x1E699B300] setRead];
    v16 = [v19 initWithObjectIDs:v20 origin:7 actor:1 flagChange:v21];

    v17 = +[EDMessageRepository log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Marking used one time code email as read";
      goto LABEL_21;
    }
  }

LABEL_24:
  v22 = [*(a1 + 32) delayedMessageActionScheduler];
  v23 = *(a1 + 56);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __125__EDMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_requestID_returnUndoAction_afterDelay_completionHandler___block_invoke_326;
  v28[3] = &unk_1E8255600;
  v28[4] = *(a1 + 32);
  v29 = v16;
  v32 = *(a1 + 64);
  v31 = *(a1 + 48);
  v24 = v12;
  v30 = v24;
  v25 = v16;
  v26 = [v22 afterDelay:v28 performBlock:v23];

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __125__EDMessageRepository_performOneTimeCodeMessageDeletionWithObjectID_requestID_returnUndoAction_afterDelay_completionHandler___block_invoke_326(uint64_t a1)
{
  [*(a1 + 32) performMessageChangeAction:*(a1 + 40) requestID:*(a1 + 64) returnUndoAction:0 completionHandler:*(a1 + 56)];
  v2 = *(a1 + 48);

  return [v2 invalidate];
}

- (void)mailOnBoardDeleteVerificationCodesMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self sharedOneTimeCodeUserDefaults];
  v9 = [v8 integerForKey:@"DeleteVerificationCodesOnboardingVersion"];

  if (v9 < 1)
  {
    v12 = _EFLocalizedString();
    v13 = _EFLocalizedString();
    v14 = _EFLocalizedString();
    v15 = MEMORY[0x1E695DF20];
    v16 = [(EDMessageRepository *)self _dictForPasswordsIcon];
    v17 = [v15 dictionaryWithObjectsAndKeys:{v12, *MEMORY[0x1E695EE58], v6, *MEMORY[0x1E695EE60], v13, *MEMORY[0x1E695EE78], v14, *MEMORY[0x1E695EE70], v16, @"IconConfiguration", 0}];

    v18 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v17);
    responseFlags = 0xAAAAAAAAAAAAAAAALL;
    CFUserNotificationReceiveResponse(v18, 0.0, &responseFlags);
    v19 = [(EDMessageRepository *)self sharedOneTimeCodeUserDefaults];
    [v19 setInteger:1 forKey:@"DeleteVerificationCodesOnboardingVersion"];

    v20 = responseFlags;
    if (responseFlags >= 2)
    {
      if (responseFlags != 3)
      {
LABEL_7:

        goto LABEL_8;
      }

      v20 = 2;
    }

    v7[2](v7, v20);
    goto LABEL_7;
  }

  v10 = [(EDMessageRepository *)self sharedOneTimeCodeUserDefaults];
  v11 = [v10 BOOLForKey:@"DeleteVerificationCodes"];

  v7[2](v7, v11);
LABEL_8:
}

- (id)_dictForPasswordsIcon
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:@"com.apple.Passwords-Settings.extension" forKey:@"ISIconApplicationBundleIdentifier"];
  [v2 setObject:@"otpOnboardingIcon.png" forKey:@"ISIconDecorationType"];

  return v2;
}

- (id)_performMessageFollowUpDate:(id)a3 persistedMessages:(id)a4 returnUndoAction:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v25 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v25;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = objc_alloc_init(MEMORY[0x1E699AF18]);
          [v12 setActionType:3];
          v13 = [v11 followUp];
          v14 = [v13 copy];
          [v12 setFollowUp:v14];

          v15 = MEMORY[0x1E696AD98];
          v16 = [v11 persistentID];
          v17 = [v15 numberWithLongLong:{objc_msgSend(v16, "longLongValue")}];
          v31 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
          [v12 setMessageDatabaseIDs:v18];

          [v7 addObject:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(EDMessageRepository *)self messageChangeManager];
  [v20 applyFollowUp:v24 toMessages:v25 withNegativeFeedbackForSuggestions:1];

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_performMessageReadLaterDate:(id)a3 persistedMessages:(id)a4 returnUndoAction:(BOOL)a5
{
  v6 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v32 = v6;
  v35 = v8;
  v36 = v9;
  if (v6)
  {
    v10 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v12)
    {
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v15 readLater];
          v17 = [v16 date];
          v18 = v17;
          if (!v17)
          {
            v5 = [MEMORY[0x1E695DFB0] null];
            v18 = v5;
          }

          [v10 setObject:v18 forKeyedSubscript:v15];
          if (!v17)
          {
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    v8 = v35;
    v9 = v36;
  }

  else
  {
    v10 = 0;
  }

  v19 = [(EDMessageRepository *)self messageChangeManager];
  v34 = [v19 applyReadLaterDate:v8 displayDate:0 toMessages:v9];

  if (v32)
  {
    v20 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v34;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          v26 = [v10 objectForKeyedSubscript:v25];
          v27 = [v20 objectForKeyedSubscript:v26];
          if (!v27)
          {
            v27 = objc_opt_new();
            [v20 setObject:v27 forKeyedSubscript:v26];
          }

          [v27 addObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v22);
    }

    v28 = objc_opt_new();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __87__EDMessageRepository__performMessageReadLaterDate_persistedMessages_returnUndoAction___block_invoke;
    v37[3] = &unk_1E8255670;
    v29 = v28;
    v38 = v29;
    [v20 enumerateKeysAndObjectsUsingBlock:v37];
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

void __87__EDMessageRepository__performMessageReadLaterDate_persistedMessages_returnUndoAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E699AF18]);
  [v6 setActionType:2];
  if ((*(*MEMORY[0x1E699B750] + 16))())
  {
    v7 = 0;
  }

  else
  {
    v7 = v9;
  }

  [v6 setReadLaterDate:v7];
  v8 = [v5 ef_map:&__block_literal_global_344];
  [v6 setMessageDatabaseIDs:v8];

  [*(a1 + 32) addObject:v6];
}

id __87__EDMessageRepository__performMessageReadLaterDate_persistedMessages_returnUndoAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 persistentID];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  return v4;
}

- (id)_performBlockSender:(BOOL)a3 persistedMessages:(id)a4 returnUndoAction:(BOOL)a5
{
  v30 = a5;
  v5 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v29 = a4;
  v7 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v29;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 senders];
        v14 = [v13 firstObject];

        if (v14)
        {
          v15 = [v12 persistentID];
          [v7 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v16 = objc_opt_new();
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __78__EDMessageRepository__performBlockSender_persistedMessages_returnUndoAction___block_invoke;
  v37[3] = &unk_1E8255698;
  v37[4] = self;
  v39 = v5;
  v32 = v16;
  v38 = v32;
  [v7 enumerateKeysAndObjectsUsingBlock:v37];
  blockedSenderManager = self->_blockedSenderManager;
  if (v5)
  {
    [(EMBlockedSenderManager *)blockedSenderManager blockEmailAddresses:v32];
  }

  else
  {
    [(EMBlockedSenderManager *)blockedSenderManager unblockEmailAddresses:v32];
  }

  if (v30)
  {
    v31 = objc_opt_new();
    [v31 setActionType:4];
    [v31 setBlockSender:!v5];
    v18 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v32;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v20)
    {
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = MEMORY[0x1E696AD98];
          v24 = [v7 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
          v25 = [v23 numberWithLongLong:{objc_msgSend(v24, "longLongValue")}];
          [v18 addObject:v25];
        }

        v20 = [v19 countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v20);
    }

    [v31 setMessageDatabaseIDs:v18];
    v26 = [MEMORY[0x1E695DF70] arrayWithObject:v31];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __78__EDMessageRepository__performBlockSender_persistedMessages_returnUndoAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) != [*(*(a1 + 32) + 312) isEmailAddressBlocked:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)_performUnsubscribeAction:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if (([v21 shouldStopDeletingMessages] & 1) == 0)
  {
    v20 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:v21];
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = objc_alloc_init(MEMORY[0x1E699ACF0]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v20;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v11 = [v10 authenticationState];
            if ((v11 & 8) != 0)
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            v13 = v12 & (v11 << 61 >> 63);
          }

          else
          {
            v13 = 0;
          }

          v14 = [v5 commandForMessage:v10 dkimVerified:{v13, v20}];
          if (v14)
          {
            [v4 addObject:v14];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(EDListUnsubscribeHandler *)self->_listUnsubscribeHandler unsubscribeWithCommand:*(*(&v22 + 1) + 8 * j) completion:0, v20];
        }

        v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_performMessageFlagChangeAllAction:(id)a3
{
  v9 = a3;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  v5 = [v9 mailboxObjectIDs];
  v6 = [v5 ef_compactMap:&__block_literal_global_353];

  v7 = [(EDMessageRepository *)self messageChangeManager];
  v8 = [v9 flagChange];
  [v7 applyFlagChange:v8 toAllMessagesFromMailboxes:v6 exceptMessages:v4];
}

id __58__EDMessageRepository__performMessageFlagChangeAllAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

- (void)_performMessageDeleteAllAction:(id)a3
{
  v8 = a3;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  v5 = [v8 mailboxObjectIDs];
  v6 = [v5 ef_compactMap:&__block_literal_global_355];

  v7 = [(EDMessageRepository *)self messageChangeManager];
  [v7 deleteAllMessageFromMailboxes:v6 exceptMessages:v4];
}

id __54__EDMessageRepository__performMessageDeleteAllAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

- (void)_performMessageDeleteAction:(id)a3
{
  v5 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:a3];
  v4 = [(EDMessageRepository *)self messageChangeManager];
  [v4 deleteMessages:v5];
}

- (id)_changeFlagsForPersistedMessages:(id)a3 flagChange:(id)a4 returnUndoAction:(BOOL)a5
{
  v5 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v34 = v8;
  v35 = v9;
  if (v5)
  {
    v10 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v12)
    {
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v15 flags];
          [v10 setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    v8 = v34;
    v17 = v35;
  }

  else
  {
    v17 = v9;
    v10 = 0;
  }

  v18 = [(EDMessageRepository *)self messageChangeManager];
  v33 = [v18 applyFlagChange:v17 toMessages:v8];

  if (v5)
  {
    v19 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v33;
    v20 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v20)
    {
      v21 = *v40;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v39 + 1) + 8 * j);
          v24 = MEMORY[0x1E699B300];
          v25 = [v23 flags];
          v26 = [v10 objectForKeyedSubscript:v23];
          v27 = [v24 changeFrom:v25 to:v26];

          v28 = [v19 objectForKeyedSubscript:v27];
          if (!v28)
          {
            v28 = objc_opt_new();
            [v19 setObject:v28 forKeyedSubscript:v27];
          }

          [v28 addObject:v23];
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v20);
    }

    v29 = objc_opt_new();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __84__EDMessageRepository__changeFlagsForPersistedMessages_flagChange_returnUndoAction___block_invoke;
    v37[3] = &unk_1E82541A0;
    v30 = v29;
    v38 = v30;
    [v19 enumerateKeysAndObjectsUsingBlock:v37];
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

void __84__EDMessageRepository__changeFlagsForPersistedMessages_flagChange_returnUndoAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E699AF18]);
  [v6 setActionType:1];
  [v6 setFlagChange:v8];
  v7 = [v5 ef_map:&__block_literal_global_357];
  [v6 setMessageDatabaseIDs:v7];

  [*(a1 + 32) addObject:v6];
}

id __84__EDMessageRepository__changeFlagsForPersistedMessages_flagChange_returnUndoAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 persistentID];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  return v4;
}

- (id)_performMessageTransferAction:(id)a3 returnUndoAction:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:v7];
  v9 = [v7 copyMessages];
  v10 = objc_opt_new();
  v11 = [(EDMessageRepository *)self messageChangeManager];
  v12 = [v7 destinationMailboxURL];
  [v11 transferMessages:v8 transferType:v9 ^ 1u destinationMailboxURL:v12 userInitiated:1 oldMessagesByNewMessage:v10];

  if (!v4)
  {
    goto LABEL_4;
  }

  if ([v7 copyMessages])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:1267 description:{@"An undo action was requested for a copy, that's not yet supported"}];

LABEL_4:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = [(EDMessageRepository *)self _undoActionsForMovedMessages:v10];
LABEL_6:

  return v14;
}

- (void)_performMessageTransferAllAction:(id)a3
{
  v10 = a3;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  v5 = [v10 copyMessages];
  v6 = [v10 mailboxObjectIDs];
  v7 = [v6 ef_compactMap:&__block_literal_global_363];

  v8 = [(EDMessageRepository *)self messageChangeManager];
  v9 = [v10 destinationMailboxURL];
  [v8 transferAllMessagesFromMailboxes:v7 exceptMessages:v4 transferType:v5 ^ 1u destinationMailboxURL:v9 userInitiated:1];
}

id __56__EDMessageRepository__performMessageTransferAllAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

- (id)_performMessageTransferActionToSpecialMailbox:(id)a3 returnUndoAction:(BOOL)a4
{
  v7 = a3;
  v8 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:v7];
  v9 = [v7 copyMessages];
  v10 = [v7 specialDestinationMailboxType];
  v11 = [v8 ef_groupBy:&__block_literal_global_366];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__29;
  v27 = __Block_byref_object_dispose__29;
  v28 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__EDMessageRepository__performMessageTransferActionToSpecialMailbox_returnUndoAction___block_invoke_2;
  v16[3] = &unk_1E8255700;
  v19 = v10;
  v20 = v9 ^ 1u;
  v16[4] = self;
  v22 = a4;
  v12 = v7;
  v21 = a2;
  v17 = v12;
  v18 = &v23;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];
  v13 = [v24[5] reverseObjectEnumerator];
  v14 = [v13 allObjects];

  _Block_object_dispose(&v23, 8);

  return v14;
}

id __86__EDMessageRepository__performMessageTransferActionToSpecialMailbox_returnUndoAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 account];
  v4 = v3;
  if ([v3 isLocalAccount])
  {
    v5 = [v2 sendLaterDate];

    v4 = v3;
    if (v5)
    {
      v6 = [v2 accountForSender];

      v4 = v6;
    }
  }

  if (!v4 || ([v4 conformsToProtocol:&unk_1F4628C10] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DFB0] null];

    v4 = v7;
  }

  return v4;
}

void __86__EDMessageRepository__performMessageTransferActionToSpecialMailbox_returnUndoAction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v23 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v23 mailboxForType:*(a1 + 56)];
    v9 = objc_opt_new();
    v10 = [*(a1 + 32) messageChangeManager];
    v11 = *(a1 + 64);
    v12 = [v8 URL];
    [v10 transferMessages:v5 transferType:v11 destinationMailboxURL:v12 userInitiated:1 oldMessagesByNewMessage:v9];

    if (*(a1 + 80) == 1)
    {
      if ([*(a1 + 40) copyMessages])
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"EDMessageRepository.m" lineNumber:1319 description:{@"An undo action was requested for a copy, that's not yet supported"}];
      }

      else
      {
        v14 = *(*(*(a1 + 48) + 8) + 40);
        if (!v14)
        {
          v15 = objc_opt_new();
          v16 = *(*(a1 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v14 = *(*(*(a1 + 48) + 8) + 40);
        }

        v13 = [*(a1 + 32) _undoActionsForMovedMessages:v9];
        [v14 addObjectsFromArray:v13];
      }
    }

    v18 = [*(a1 + 40) flagChange];

    if (v18)
    {
      v19 = *(a1 + 32);
      v20 = [v9 allKeys];
      v21 = [*(a1 + 40) flagChange];
      v22 = [v19 _changeFlagsForPersistedMessages:v20 flagChange:v21 returnUndoAction:*(a1 + 80)];

      if (*(a1 + 80) == 1)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v22];
      }
    }
  }
}

- (void)_performMessageTransferAllActionToSpecialMailbox:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v20 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:v16];
  v4 = [v16 copyMessages];
  v19 = [v16 specialDestinationMailboxType];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v16 mailboxObjectIDs];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v18 = v4 ^ 1u;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v21 + 1) + 8 * v7) url];
        v9 = [(EDMessageRepository *)self messageChangeManager];
        v10 = [v9 accountForMailboxURL:v8];

        v11 = [v10 mailboxForType:v19];
        v12 = [(EDMessageRepository *)self messageChangeManager];
        v25 = v8;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v14 = [v11 URL];
        [v12 transferAllMessagesFromMailboxes:v13 exceptMessages:v20 transferType:v18 destinationMailboxURL:v14 userInitiated:1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_undoActionsForMovedMessages:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__EDMessageRepository__undoActionsForMovedMessages___block_invoke;
  v11[3] = &unk_1E8255728;
  v5 = v4;
  v12 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__EDMessageRepository__undoActionsForMovedMessages___block_invoke_2;
  v9[3] = &unk_1E8255750;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __52__EDMessageRepository__undoActionsForMovedMessages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 mailbox];
  v6 = [v5 URL];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_opt_new();
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  [v7 addObject:v8];
}

void __52__EDMessageRepository__undoActionsForMovedMessages___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E699AF18]);
  [v6 setActionType:0];
  [v6 setDestinationMailboxURL:v8];
  v7 = [v5 ef_map:&__block_literal_global_370_0];
  [v6 setMessageDatabaseIDs:v7];

  [*(a1 + 32) addObject:v6];
}

id __52__EDMessageRepository__undoActionsForMovedMessages___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 persistentID];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  return v4;
}

- (id)_performUndoAction:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v4 = [(EDMessageRepository *)self messagePersistence];
  v21 = [(EDMessageRepository *)self messageChangeManager];
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v20 individualActions];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = [v9 messageDatabaseIDs];
        v11 = [v4 persistedMessagesForDatabaseIDs:v10 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

        v12 = [v9 actionType];
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:
              v13 = [v9 followUp];
              v14 = [(EDMessageRepository *)self _performMessageFollowUpDate:v13 persistedMessages:v11 returnUndoAction:1];
              [v5 addObjectsFromArray:v14];
              break;
            case 4:
              v13 = -[EDMessageRepository _performBlockSender:persistedMessages:returnUndoAction:](self, "_performBlockSender:persistedMessages:returnUndoAction:", [v9 blockSender], v11, 1);
              [v5 addObjectsFromArray:v13];
              goto LABEL_19;
            case 5:
              v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "conversationID")}];
              v27 = v13;
              v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
              v15 = -[EDMessageRepository _performConversationIDs:conversationNotificationLevel:returnUndoAction:](self, "_performConversationIDs:conversationNotificationLevel:returnUndoAction:", v14, [v9 conversationNotificationLevel], 1);
              [v5 addObjectsFromArray:v15];

              break;
            default:
              goto LABEL_20;
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            v13 = [v9 flagChange];
            v14 = [(EDMessageRepository *)self _changeFlagsForPersistedMessages:v11 flagChange:v13 returnUndoAction:1];
            [v5 addObjectsFromArray:v14];
          }

          else
          {
            if (v12 != 2)
            {
              goto LABEL_20;
            }

            v13 = [v9 readLaterDate];
            v14 = [(EDMessageRepository *)self _performMessageReadLaterDate:v13 persistedMessages:v11 returnUndoAction:1];
            [v5 addObjectsFromArray:v14];
          }
        }

        else
        {
          v13 = objc_opt_new();
          v16 = [v9 destinationMailboxURL];
          [v21 transferMessages:v11 transferType:1 destinationMailboxURL:v16 userInitiated:1 oldMessagesByNewMessage:v13];

          v14 = [(EDMessageRepository *)self _undoActionsForMovedMessages:v13];
          [v5 addObjectsFromArray:v14];
        }

LABEL_19:
LABEL_20:

        ++v8;
      }

      while (v6 != v8);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      v6 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_performConversationIDs:(id)a3 conversationNotificationLevel:(int64_t)a4 returnUndoAction:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v8 = [(EDMessageRepository *)self conversationPersistence];
  v24 = v5;
  v22 = a4;
  v23 = self;
  v9 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v25;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = +[EDConversationPersistence conversationNotificationLevelForConversationFlags:](EDConversationPersistence, "conversationNotificationLevelForConversationFlags:", [v8 persistenceConversationFlagsForConversationID:{objc_msgSend(v14, "longLongValue")}]);
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        [v9 setObject:v16 forKeyedSubscript:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  if (v24)
  {
    v17 = objc_opt_new();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __94__EDMessageRepository__performConversationIDs_conversationNotificationLevel_returnUndoAction___block_invoke;
    v26[3] = &unk_1E8255778;
    v18 = v17;
    v27 = v18;
    [v9 enumerateKeysAndObjectsUsingBlock:v26];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(EDMessageRepository *)v23 conversationPersistence];
  [v19 updateConversationNotificationLevel:v22 forConversationIDs:v10];

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

void __94__EDMessageRepository__performConversationIDs_conversationNotificationLevel_returnUndoAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E699AF18]);
  [v6 setActionType:5];
  [v6 setConversationID:{objc_msgSend(v7, "longLongValue")}];
  [v6 setConversationNotificationLevel:{objc_msgSend(v5, "longLongValue")}];
  [*(a1 + 32) addObject:v6];
}

- (void)persistentIDForMessageObjectID:(id)a3 completionHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self messagePersistence];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v8 databaseIDsDictionaryForMessageObjectIDs:v9];

  v11 = [v10 allKeys];
  v12 = [v11 firstObject];
  v7[2](v7, v12);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performMessageHighImpactChangeAction:(id)a3
{
  v6 = a3;
  v4 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:?];
  v5 = [(EDMessageRepository *)self categoryPersistence];
  [v5 changeHighImpactType:objc_msgSend(v6 messages:{"highImpactChange"), v4}];
}

- (void)_performRestoreModelCategoryForAllMessagesChangeAction:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(EDMessageRepository *)self businessPersistence];
  v5 = [v4 businessAddressMapWithCategoryOverride];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v20 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [obj objectForKey:v8];
        if (v10)
        {
          v11 = [(EDMessageRepository *)self messagePersistence];
          v12 = [v11 persistedMessagesFromSendersWithAddressIDs:v10 temporarilyUnavailableMessageObjectIDs:0];

          if ([v12 count])
          {
            v13 = [v12 firstObject];
            v14 = [v13 category];
            [v14 subtype];
            v15 = EMCategoryFromSubtype();

            v16 = [(EDMessageRepository *)self categoryAnalyticsLogger];
            v17 = [(EDMessageRepository *)self categoryPersistence];
            [v16 logRecategorizationEventForMessages:v12 categoryType:v15 categoryPersistence:v17];
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v18 = [(EDMessageRepository *)self businessPersistence];
  [v18 removeAllUserOverrides];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_mostRecentMessageForPersistedMessages:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 displayDate];
        v11 = [v4 displayDate];
        v12 = [v10 ef_isLaterThanDate:v11];

        if (v12)
        {
          v13 = v9;

          v4 = v13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_performCategoryChangeAction:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 isModelCategoryRestoration];
  v7 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:v4];
  v8 = [(EDMessageRepository *)self categoryAnalyticsLogger];
  v9 = [(EDMessageRepository *)self categoryPersistence];
  [v8 logFedStatRecategorizationEventForMessages:v7 categoryChangeAction:v4 categoryPersistence:v9];

  [(EDMessageRepository *)self _logRecategorizeAnalyticsWithPersistedMessages:v7 isRestoreModelCategory:v6 categoryChangeAction:v4];
  if ([v7 count])
  {
    v10 = [(EDMessageRepository *)self _mostRecentMessageForPersistedMessages:v7];
    v11 = [v10 businessID];
  }

  else
  {
    v12 = [v4 senderAddress];

    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = [(EDMessageRepository *)self messagePersistence];
    v14 = [v4 senderAddress];
    v15 = [v13 findAddressIDForAddress:v14];

    v10 = [(EDMessageRepository *)self businessPersistence];
    v11 = [v10 businessIDForAddressID:v15];
  }

  v16 = v11;
  v17 = *MEMORY[0x1E699A728];

  if (v16 != v17)
  {
    if (v6)
    {
      v18 = +[EDMessageRepository log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = v16;
        _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Restoring automatic model categorization for sender with businessID %lld", buf, 0xCu);
      }

      [(EDMessageRepository *)self _removeCategoryCloudStorageForBusiness:v16 lastModifiedDate:v5];
      v19 = [(EDMessageRepository *)self businessPersistence];
      v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
      v29[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v19 removeUserOverridesForBusinessIDs:v21 timestamp:v5 originator:0 userInitiated:1];
    }

    else
    {
      v22 = +[EDMessageRepository log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v26 = v16;
        v27 = 2048;
        v28 = [v4 categoryType];
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Moving sender with businessID %lld to category %lu", buf, 0x16u);
      }

      -[EDMessageRepository _performCloudStorageUpdateForBusiness:withCategory:lastModifiedDate:](self, "_performCloudStorageUpdateForBusiness:withCategory:lastModifiedDate:", v16, [v4 categoryType], v5);
      v19 = [(EDMessageRepository *)self businessPersistence];
      v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
      v24 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      [v19 insertOrUpdateUserOverrideForBusinessIDs:v21 category:objc_msgSend(v4 userInitiated:"categoryType") timestamp:{1, v5}];
    }
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_logRecategorizeAnalyticsWithPersistedMessages:(id)a3 isRestoreModelCategory:(BOOL)a4 categoryChangeAction:(id)a5
{
  v6 = a4;
  v19 = a3;
  v8 = a5;
  v9 = [v8 categoryType];
  if ([v19 count])
  {
    v10 = [v19 firstObject];
    v11 = v10;
    if (v6)
    {
      v12 = [v10 category];
      [v12 subtype];
      v9 = EMCategoryFromSubtype();
    }

    v13 = [v11 category];
    v14 = [v13 isPrimary];

    if (v14)
    {
      v15 = [(EDMessageRepository *)self messagePersistence];
      v16 = [v15 persistedMessagesForBusinessID:{objc_msgSend(v11, "businessID")}];

      v17 = [(EDMessageRepository *)self categoryAnalyticsLogger];
      v18 = [(EDMessageRepository *)self categoryPersistence];
      [v17 logRecategorizationEventForMessages:v16 categoryType:v9 categoryPersistence:v18];
    }

    else
    {
      v16 = [(EDMessageRepository *)self categoryAnalyticsLogger];
      v17 = [(EDMessageRepository *)self categoryPersistence];
      [v16 logRecategorizationEventForMessages:v19 categoryType:v9 categoryPersistence:v17];
    }
  }
}

- (void)_logCategoryMetadataForChangeAction:(id)a3
{
  v6 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:a3];
  v4 = [(EDMessageRepository *)self categoryAnalyticsLogger];
  v5 = [(EDMessageRepository *)self categoryPersistence];
  [v4 logModelMetadataForMessages:v6 categoryPersistence:v5];
}

- (void)_performCloudStorageUpdateForBusiness:(int64_t)a3 withCategory:(unint64_t)a4 lastModifiedDate:(id)a5
{
  v8 = a5;
  v9 = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__EDMessageRepository__performCloudStorageUpdateForBusiness_withCategory_lastModifiedDate___block_invoke;
  v11[3] = &unk_1E8252DA0;
  v11[4] = self;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  v12 = v10;
  [v9 performVoucherPreservingBlock:v11];
}

void __91__EDMessageRepository__performCloudStorageUpdateForBusiness_withCategory_lastModifiedDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) businessPersistence];
  v4 = [v2 businessExternalIDForBusinessID:*(a1 + 48)];

  v3 = [*(a1 + 32) businessCloudStorage];
  [v3 setCategory:*(a1 + 56) forBusinessWithExternalID:v4 withLastModifiedDate:*(a1 + 40)];
}

- (void)_removeCategoryCloudStorageForBusiness:(int64_t)a3 lastModifiedDate:(id)a4
{
  v6 = a4;
  v7 = [(EDMessageRepository *)self asyncWorkScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__EDMessageRepository__removeCategoryCloudStorageForBusiness_lastModifiedDate___block_invoke;
  v9[3] = &unk_1E8251A78;
  v9[4] = self;
  v11 = a3;
  v8 = v6;
  v10 = v8;
  [v7 performVoucherPreservingBlock:v9];
}

void __79__EDMessageRepository__removeCategoryCloudStorageForBusiness_lastModifiedDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) businessPersistence];
  v4 = [v2 businessExternalIDForBusinessID:*(a1 + 48)];

  v3 = [*(a1 + 32) businessCloudStorage];
  [v3 removeCategoryForBusinessWithExternalID:v4 withLastModifiedDate:*(a1 + 40)];
}

- (void)_performSuppressNotAuthenticatedChangeAction:(id)a3
{
  v5 = a3;
  v6 = [v5 objectIDs];
  v7 = [v6 firstObject];

  v8 = [(EDMessageRepository *)self _persistedMessagesForMessageChangeAction:v5];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:1572 description:@"EMMessageObjectID not found in EMSuppressNotAuthenticatedAction"];
  }

  if (![v8 count])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EDMessageRepository.m" lineNumber:1573 description:@"Cannot find persistedMessage for EMSuppressNotAuthenticatedAction"];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__EDMessageRepository__performSuppressNotAuthenticatedChangeAction___block_invoke;
  v16[3] = &unk_1E8251810;
  v10 = v9;
  v17 = v10;
  [v8 enumerateObjectsUsingBlock:v16];
  v11 = [(EDMessageRepository *)self messagePersistence];
  v12 = [v11 persistMessageAuthenticationStates:v10];

  if ((v12 & 1) == 0)
  {
    v13 = +[EDMessageRepository log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageRepository *)v7 _performSuppressNotAuthenticatedChangeAction:v13];
    }
  }
}

void __68__EDMessageRepository__performSuppressNotAuthenticatedChangeAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "authenticationState") | 0x10000}];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

- (id)_persistedMessagesForMessageChangeAction:(id)a3
{
  v4 = a3;
  v5 = [v4 query];

  if (v5)
  {
    v6 = [(EDMessageRepository *)self messagePersistence];
    v7 = [v4 query];
    v8 = [v6 persistedMessagesMatchingQuery:v7 limit:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v6 = [v4 objectIDs];
    objc_opt_class();
    v8 = [(EDMessageRepository *)self _persistedMessagesForObjectIDs:v6 includeDuplicates:objc_opt_isKindOfClass() & 1];
  }

  return v8;
}

- (id)_persistedMessagesForObjectIDs:(id)a3 includeDuplicates:(BOOL)a4
{
  v4 = a4;
  v7 = [(EDMessageRepository *)self _persistedObjectIDsForObjectIDs:a3];
  v8 = v7;
  if (v4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__EDMessageRepository__persistedMessagesForObjectIDs_includeDuplicates___block_invoke;
    v13[3] = &unk_1E82557A0;
    v13[4] = self;
    v13[5] = a2;
    v9 = [v7 ef_map:v13];

    v8 = v9;
  }

  v10 = [(EDMessageRepository *)self messagePersistence];
  v11 = [v10 persistedMessagesForObjectIDs:v8 requireProtectedData:0];

  return v11;
}

id __72__EDMessageRepository__persistedMessagesForObjectIDs_includeDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc(MEMORY[0x1E699ADA8]);
    v5 = [v3 collectionItemID];
    v6 = [MEMORY[0x1E699AD28] allMailboxesScope];
    v7 = [v4 initWithCollectionItemID:v5 mailboxScope:v6];

LABEL_5:
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc(MEMORY[0x1E699AEF8]);
    v5 = [v3 collectionItemID];
    v9 = objc_alloc(MEMORY[0x1E699AF08]);
    v10 = [MEMORY[0x1E699AD28] allMailboxesScope];
    v11 = [v3 threadScope];
    v12 = [v11 filterPredicate];
    v13 = [v9 initWithMailboxScope:v10 filterPredicate:v12];
    v7 = [v8 initWithCollectionItemID:v5 threadScope:v13];

    goto LABEL_5;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"EDMessageRepository.m" lineNumber:1611 description:@"Unknown objectID class"];

  v7 = v3;
LABEL_7:

  return v7;
}

- (id)_persistedObjectIDsForObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [v4 ef_compactMap:&__block_literal_global_389];
  if ([v5 count] && (v6 = objc_msgSend(v5, "count"), v6 == objc_msgSend(v4, "count")))
  {
    v7 = [(EDMessageRepository *)self messagePersistence];
    v8 = [(EDMessageRepository *)self _messageQueryForGroupedSenderObjectIDs:v5];
    v9 = [v7 messagesMatchingQuery:v8];
    v10 = [v9 ef_map:&__block_literal_global_392];

    v11 = [(EDMessageRepository *)self _persistedObjectIDsForObjectIDs:v10];
  }

  else
  {
    v12 = [(EDMessageRepository *)self _partitionObjectIDs:v4];
    v13 = [v12 messageObjectIDs];
    v14 = [v13 mutableCopy];

    v15 = [v12 threadObjectIDsByScope];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke_3;
    v17[3] = &unk_1E8255808;
    v11 = v14;
    v18 = v11;
    [(EDMessageRepository *)self _enumerateObjectIDsByScope:v15 usingBlock:v17];
  }

  return v11;
}

void *__55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id __55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

void __55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke_3(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (a4)
    {
      [*(a1 + 32) addObject:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v13 inMemoryMessageObjectIDsForThread:v12];
          [*(a1 + 32) addObjectsFromArray:v16];
        }
      }
    }
  }

  else
  {
    v15 = +[EDMessageRepository log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v14 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke_3_cold_1();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_messageQueryForGroupedSenderObjectIDs:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E699ADA0];
  v5 = [v3 firstObject];
  v6 = [v5 threadScope];
  v7 = [v4 predicateForMessagesWithThreadScope:v6];

  v8 = [v3 ef_map:&__block_literal_global_396];
  v9 = MEMORY[0x1E696AB28];
  v21[0] = v7;
  v10 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
  v21[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v12 = [v9 andPredicateWithSubpredicates:v11];

  v13 = objc_alloc(MEMORY[0x1E699AE28]);
  v14 = objc_opt_class();
  v15 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v20 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v17 = [v13 initWithTargetClass:v14 predicate:v12 sortDescriptors:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __62__EDMessageRepository__messageQueryForGroupedSenderObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E699ADA0] predicateForMessagesForBusinessID:{objc_msgSend(v2, "businessID")}];

  return v3;
}

- (void)requestAttachmentMetadataForMessageIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__EDMessageRepository_requestAttachmentMetadataForMessageIDs_completionHandler___block_invoke;
  block[3] = &unk_1E82534D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__EDMessageRepository_requestAttachmentMetadataForMessageIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  v5 = [v2 messageIDsWithBasePaths:*(a1 + 40)];

  v3 = [*(a1 + 32) attachmentPersistenceManager];
  v4 = [v3 attachmentURLsForGlobalMessageIDs:v5];

  (*(*(a1 + 48) + 16))();
}

- (void)requestRichLinkURLsForMessageIDs:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDMessageRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Fetching rich link URLs for global message IDs: %@", buf, 0xCu);
  }

  v9 = [(EDMessageRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__EDMessageRepository_requestRichLinkURLsForMessageIDs_completionHandler___block_invoke;
  block[3] = &unk_1E82534D8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __74__EDMessageRepository_requestRichLinkURLsForMessageIDs_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) richLinkPersistence];
  v3 = [v2 richLinkURLsForMessageIDs:*(a1 + 40)];

  v4 = +[EDMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Found rich link URLs: %@ for global message IDs: %@", &v7, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (id)requestRepresentationForMessageWithID:(id)a3 requestID:(unint64_t)a4 options:(id)a5 delegate:(id)a6 completionHandler:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v31 = a7;
  v15 = [MEMORY[0x1E699AC90] signpostLog];
  v16 = v15;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v16, OS_SIGNPOST_INTERVAL_BEGIN, a4, "EDMessageRepositoryContentRepresentationRequest", "Received by maild", buf, 2u);
  }

  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"requesting content representation"];
  v17 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v43 = v12;
    v44 = 2114;
    v45 = v13;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_INFO, "Requesting content representation for message %{public}@, Options: %{public}@", buf, 0x16u);
  }

  v18 = [MEMORY[0x1E699B868] promise];
  v19 = [v18 future];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke;
  v38[3] = &unk_1E8255850;
  v20 = v12;
  v39 = v20;
  v41 = a4;
  v21 = v31;
  v40 = v21;
  [v19 addSuccessBlock:v38];

  v22 = [v18 future];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_403;
  v34[3] = &unk_1E8255878;
  v37 = a4;
  v23 = v20;
  v35 = v23;
  v24 = v21;
  v36 = v24;
  [v22 addFailureBlock:v34];

  v25 = [(EDMessageRepository *)self messagePersistence];
  v26 = [v18 completionHandlerAdapter];
  v27 = [v25 requestContentForMessageObjectID:v23 requestID:a4 options:v13 delegate:v14 completionHandler:v26];

  if (v27)
  {
    v28 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    [v28 addChild:v27 withPendingUnitCount:1];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_405;
    v32[3] = &unk_1E8250260;
    v33 = v18;
    [v28 setCancellationHandler:v32];
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "Content representation finished loading: %{public}@", &v10, 0xCu);
  }

  v6 = [MEMORY[0x1E699AC90] signpostLog];
  v7 = v6;
  v8 = a1[6];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v7, OS_SIGNPOST_INTERVAL_END, v8, "EDMessageRepositoryContentRepresentationRequest", "Finished processing with success", &v10, 2u);
  }

  (*(a1[5] + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

void __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_403(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E699AC90] signpostLog];
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13 = 134349056;
    v14 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "EDMessageRepositoryContentRepresentationRequest", "Finished processing with failure %{public, name=errorCode}ld", &v13, 0xCu);
  }

  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[4];
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_403_cold_1();
  }

  v9 = a1[5];
  v10 = [v3 ef_secureCodableError];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:0];
  }

  (*(v9 + 16))(v9, 0, 0, v11);
  if (!v10)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)resetPrecomputedThreadScopesForMailboxScope:(id)a3
{
  v4 = a3;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"resetting precomputed threads"];
  v5 = [(EDMessageRepository *)self performQueryOnSerializationQueue];
  [v5 lock];

  v6 = [(EDMessageRepository *)self performQueryOnSerializationQueue];
  [v6 unlockWithCondition:1];

  v7 = [(EDMessageRepository *)self serializationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__EDMessageRepository_resetPrecomputedThreadScopesForMailboxScope___block_invoke;
  v9[3] = &unk_1E8250128;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __67__EDMessageRepository_resetPrecomputedThreadScopesForMailboxScope___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) threadPersistence];
  [v2 resetThreadScopesForMailboxScope:*(a1 + 40)];

  v3 = [*(a1 + 32) performQueryOnSerializationQueue];
  [v3 lock];

  v4 = [*(a1 + 32) performQueryOnSerializationQueue];
  [v4 unlockWithCondition:0];
}

- (void)setCachedMetadataJSON:(id)a3 forKey:(id)a4 messageID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"setting cached metadata"];
  v11 = [(EDMessageRepository *)self serializationQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__EDMessageRepository_setCachedMetadataJSON_forKey_messageID___block_invoke;
  v15[3] = &unk_1E8250AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __62__EDMessageRepository_setCachedMetadataJSON_forKey_messageID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  [v2 setCachedMetadataJSON:*(a1 + 40) forKey:*(a1 + 48) messageID:*(a1 + 56)];
}

- (void)getCachedMetadataJSONForKey:(id)a3 messageID:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"getting cached metadata"];
  v10 = [(EDMessageRepository *)self messagePersistence];
  v11 = [v10 cachedMetadataJSONForKey:v12 messageID:v8];

  v9[2](v9, v11);
}

- (void)metadataForAddresses:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(EDMessageRepository *)self messagePersistence];
  v8 = [v7 metadataForAddresses:v9];

  v6[2](v6, v8);
}

- (void)messagesInConversationIDs:(id)a3 limit:(int64_t)a4 observationIdentifier:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"getting messages in conversationIDs"];
  os_unfair_lock_lock(&self->_handlersLock);
  v12 = [(EDMessageRepository *)self queryHandlers];
  v13 = [v12 objectForKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_handlersLock);
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 messagesInConversationIDs:v15 limit:a4];
  }

  else
  {
    v14 = 0;
  }

  v11[2](v11, v14);
}

- (void)predictMailboxForMovingMessages:(id)a3 withObserver:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EDMessageRepository *)self asyncWorkScheduler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__EDMessageRepository_predictMailboxForMovingMessages_withObserver_completionHandler___block_invoke;
  v15[3] = &unk_1E8253348;
  v15[4] = self;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v11 performBlock:v15];
}

void __86__EDMessageRepository_predictMailboxForMovingMessages_withObserver_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetUpdateThrottlersWithLogMessage:@"mailbox prediction"];
  v2 = [*(a1 + 32) _persistedObjectIDsForObjectIDs:*(a1 + 40)];
  v3 = [*(a1 + 32) mailboxPredictionController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__EDMessageRepository_predictMailboxForMovingMessages_withObserver_completionHandler___block_invoke_2;
  v5[3] = &unk_1E82558A0;
  v6 = *(a1 + 48);
  v4 = [v3 predictMailboxForMovingObjectIDs:v2 completionHandler:v5];

  (*(*(a1 + 56) + 16))();
}

- (id)mailboxPredictionController
{
  os_unfair_lock_lock(&self->_mailboxPredictionControllerLock);
  mailboxPredictionController = self->_mailboxPredictionController;
  if (!mailboxPredictionController)
  {
    v4 = [EDMailboxPredictionController alloc];
    v5 = [(EDMessageRepository *)self messagePersistence];
    v6 = [(EDMessageRepository *)self mailboxPersistence];
    v7 = [(EDMessageRepository *)self hookRegistry];
    v8 = [(EDMessageRepository *)self userProfileProvider];
    v9 = [(EDMailboxPredictionController *)v4 initWithMessagePersistence:v5 mailboxPersistence:v6 hookRegistry:v7 userProfileProvider:v8];
    v10 = self->_mailboxPredictionController;
    self->_mailboxPredictionController = v9;

    mailboxPredictionController = self->_mailboxPredictionController;
  }

  v11 = mailboxPredictionController;
  os_unfair_lock_unlock(&self->_mailboxPredictionControllerLock);

  return v11;
}

- (void)loadOlderMessagesForMailboxes:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EDMessageRepository *)self _resetUpdateThrottlersWithLogMessage:@"loading older messages"];
  v5 = +[EDMessageRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [v4 count];
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Loading older messages for %lu mailboxes", &v7, 0xCu);
  }

  [(EDFetchController *)self->_fetchController performFetchOfType:65664 mailboxObjectIds:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)messageObjectIDForURL:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(EDMessageRepository *)self messagePersistence];
  v8 = [v7 messageObjectIDForURL:v10];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"invalid URL"];
  }

  v6[2](v6, v8, v9);
  if (!v8)
  {
  }
}

- (void)messageObjectIDsForSearchableItemIdentifiers:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E699B810]);
  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v20;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [(EDMessageRepository *)self messagePersistence];
        v13 = [v11 longLongValue];
        v24 = 0;
        v14 = [v12 globalIDForMessageWithDatabaseID:v13 mailboxScope:&v24];
        v15 = v24;

        if (v14 && ([v6 containsIndex:v14] & 1) == 0)
        {
          [v6 addIndex:v14];
          v16 = [objc_alloc(MEMORY[0x1E699ADA8]) initWithGlobalMessageID:v14 mailboxScope:v15];
          [v23 addObject:v16];
          [v22 setObject:v16 forKeyedSubscript:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v17 = +[EDMessageRepository log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v23 count];
    *buf = 138543618;
    v30 = v7;
    v31 = 2048;
    v32 = v18;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Mapped spotlight identifiers %{public}@ to %lu message objectIDs", buf, 0x16u);
  }

  v21[2](v21, v23, v22, 0);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)messageObjectIDForSearchIndexerIdentifier:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(EDMessageRepository *)self messagePersistence];
  [v7 messageObjectIDForSearchIndexerIdentifier:v8 completionHandler:v6];
}

- (EDWebContentParser)remoteContentParser
{
  os_unfair_lock_lock(&self->_remoteContentParserLock);
  remoteContentParser = self->_remoteContentParser;
  if (!remoteContentParser)
  {
    v4 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    v5 = [[EDWebContentParser alloc] initWithOptions:1 cancelationToken:v4];
    v6 = self->_remoteContentParser;
    self->_remoteContentParser = v5;

    remoteContentParser = self->_remoteContentParser;
  }

  v7 = remoteContentParser;
  os_unfair_lock_unlock(&self->_remoteContentParserLock);

  return v7;
}

- (void)getURLCacheInformationWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageRepository *)self remoteContentCacheConfiguration];
  v6 = [v5 cacheURL];

  v7 = +[EDMessageRepository log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Remote Content Cache URL: %@", &v11, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:v6 readOnly:1];
  v9 = [(EDMessageRepository *)self remoteContentCacheConfiguration];
  v4[2](v4, v8, [v9 diskCapacity]);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)noteViewOfRemoteContentLinks:(id)a3
{
  v5 = a3;
  v4 = [(EDMessageRepository *)self remoteContentManager];
  [v4 noteViewOfRemoteContentLinks:v5];
}

- (void)parseRemoteContentURLsFromMessageWithObjectID:(id)a3 requestID:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E699AC68] optionsWithRequestedRepresentationType:*MEMORY[0x1E699A700] networkUsage:0];
  v11 = [(EDMessageRepository *)self messagePersistence];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__EDMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler___block_invoke;
  v15[3] = &unk_1E82558F0;
  v12 = v9;
  v18 = v12;
  v13 = v8;
  v16 = v13;
  v17 = self;
  v14 = [v11 requestContentForMessageObjectID:v13 requestID:a4 options:v10 delegate:0 completionHandler:v15];
}

void __97__EDMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 contentURL];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v7];
      v9 = [*(a1 + 40) remoteContentParser];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __97__EDMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler___block_invoke_2;
      v11[3] = &unk_1E82558C8;
      v12 = *(a1 + 48);
      [v9 parseHTMLData:v8 characterEncodingName:0 withOptions:1 forMessage:0 withSubject:0 completionHandler:v11];
    }

    else
    {
      v10 = *(a1 + 48);
      v8 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 32)];
      (*(v10 + 16))(v10, 0, v8);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __97__EDMessageRepository_parseRemoteContentURLsFromMessageWithObjectID_requestID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 remoteContentLinks];
  (*(v2 + 16))(v2);
}

- (void)brandIndicatorForLocation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__EDMessageRepository_brandIndicatorForLocation_completionHandler___block_invoke;
  v11[3] = &unk_1E82534D8;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performVoucherPreservingBlock:v11];
}

void __67__EDMessageRepository_brandIndicatorForLocation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  v3 = [v2 brandIndicatorForURL:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

- (void)recategorizeMessageSinceDate:(id)a3
{
  v4 = a3;
  v5 = [(EDMessageRepository *)self asyncWorkScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EDMessageRepository_recategorizeMessageSinceDate___block_invoke;
  v7[3] = &unk_1E8250128;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 performVoucherPreservingBlock:v7];
}

void __52__EDMessageRepository_recategorizeMessageSinceDate___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithType:7];
  v3 = [MEMORY[0x1E699ADA0] predicateForMessagesNewerThanDisplayDate:*(a1 + 32)];
  v4 = objc_alloc(MEMORY[0x1E699AE28]);
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E696AB28];
  v14[0] = v2;
  v14[1] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];
  v9 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v13 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v11 = [v4 initWithTargetClass:v5 predicate:v8 sortDescriptors:v10];

  [*(a1 + 40) _recategorizeMessagesForQuery:v11 completion:&__block_literal_global_439];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)recategorizeMessagesForQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageRepository *)self asyncWorkScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__EDMessageRepository_recategorizeMessagesForQuery_completion___block_invoke;
  v11[3] = &unk_1E82534D8;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performVoucherPreservingBlock:v11];
}

- (void)_recategorizeMessagesForQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v19 = a4;
  v7 = [EDMessageAuthenticationAndCategoryMigrator alloc];
  v8 = [(EDMessageRepository *)self categoryPersistence];
  v9 = [(EDMessageRepository *)self messageChangeManager];
  v10 = [v9 messageCategorizer];
  v11 = [(EDMessageRepository *)self messageChangeManager];
  v12 = [v11 messageAuthenticator];
  v13 = [(EDMessageRepository *)self messagePersistence];
  v14 = [(EDMessageRepository *)self activityPersistence];
  v15 = [(EDMessageAuthenticationAndCategoryMigrator *)v7 initWithCategoryPersistence:v8 categorizer:v10 authenticator:v12 messagePersistence:v13 activityPersistence:v14 reason:1];

  v16 = objc_alloc_init(MEMORY[0x1E699B798]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__EDMessageRepository__recategorizeMessagesForQuery_completion___block_invoke;
  v20[3] = &unk_1E8253568;
  v17 = v15;
  v21 = v17;
  v18 = v19;
  v22 = v18;
  [(EDMessageAuthenticationAndCategoryMigrator *)v17 startMigrationIfNecessaryWithCategorizationQuery:v6 cancelationToken:v16 completion:v20];
}

void __64__EDMessageRepository__recategorizeMessagesForQuery_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDMessageRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 ef_publicDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Category migrator completed with error: %{public}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)countOfUserOverridesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(EDMessageRepository *)self businessPersistence];
  [v4 countOfUserOverridesWithCompletionHandler:v5];
}

- (void)removeAllEntriesFromBusinessCloudStorage
{
  v2 = [(EDMessageRepository *)self businessCloudStorage];
  [v2 removeAllEntries];
}

- (void)_resetUpdateThrottlersWithLogMessage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageRepository *)self updateThrottlerResetBlock];

  if (v5)
  {
    v6 = +[EDMessageRepository log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Already resetting all update throttlers, skipping reset due to %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = +[EDMessageRepository log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Resetting all update throttlers due to %{public}@", &v10, 0xCu);
    }

    v6 = dispatch_block_create_with_qos_class(0, QOS_CLASS_BACKGROUND, 0, &__block_literal_global_443);
    [(EDMessageRepository *)self setUpdateThrottlerResetBlock:v6];
    v8 = [(EDMessageRepository *)self updateThrottlerResetScheduler];
    [v8 performBlock:v6];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)logCategoryMetadataForObjectIDs:(id)a3
{
  v6 = [(EDMessageRepository *)self _persistedMessagesForObjectIDs:a3 includeDuplicates:0];
  v4 = [(EDMessageRepository *)self categoryAnalyticsLogger];
  v5 = [(EDMessageRepository *)self categoryPersistence];
  [v4 logModelMetadataForMessages:v6 categoryPersistence:v5];
}

- (void)updateLastSeenDate:(id)a3 andDisplayDate:(id)a4 forBusinessWithEmailAddress:(id)a5 category:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EDMessageRepository *)self asyncWorkScheduler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__EDMessageRepository_updateLastSeenDate_andDisplayDate_forBusinessWithEmailAddress_category___block_invoke;
  v19[3] = &unk_1E8252D78;
  v19[4] = self;
  v15 = v12;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  v17 = v11;
  v22 = v17;
  v18 = v13;
  v23 = v18;
  [v14 performVoucherPreservingBlock:v19];
}

void __94__EDMessageRepository_updateLastSeenDate_andDisplayDate_forBusinessWithEmailAddress_category___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 preferredGroupedSenderGrouping];

  v4 = [*(a1 + 32) businessPersistence];
  v5 = [v4 businessExternalIDForEmailAddress:*(a1 + 40) grouping:v3];

  v6 = [*(a1 + 32) businessCloudStorage];
  [v6 setIfNeededLastSeenDate:*(a1 + 48) andDisplayDate:*(a1 + 56) forCategoryType:*(a1 + 64) businessWithExternalID:v5];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = *(a1 + 32);
  os_unfair_lock_lock(v8 + 5);
  v9 = [*(a1 + 32) queryHandlers];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__EDMessageRepository_updateLastSeenDate_andDisplayDate_forBusinessWithEmailAddress_category___block_invoke_2;
  v22[3] = &unk_1E8255918;
  v10 = v7;
  v23 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v22];

  os_unfair_lock_unlock(v8 + 5);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v24 = v5;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:{1, v18}];
        [v15 updateUnseenCountsForBusinessesWithExternalIDs:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __94__EDMessageRepository_updateLastSeenDate_andDisplayDate_forBusinessWithEmailAddress_category___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)reportIncorrectBusinessForAddress:(id)a3 isBusinessConnectGrouping:(BOOL)a4 fromClassName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EDMessageRepository *)self asyncWorkScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__EDMessageRepository_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke;
  v13[3] = &unk_1E8255940;
  v13[4] = self;
  v11 = v8;
  v14 = v11;
  v16 = a4;
  v12 = v9;
  v15 = v12;
  [v10 performVoucherPreservingBlock:v13];
}

void __97__EDMessageRepository_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) businessPersistence];
  [v2 reportIncorrectBusinessForAddress:*(a1 + 40) isBusinessConnectGrouping:*(a1 + 56) fromClassName:*(a1 + 48)];
}

- (id)messageReconciliationQueries
{
  os_unfair_lock_lock(&self->_handlersLock);
  v3 = [(EDMessageRepository *)self queryHandlers];
  v4 = [v3 allValues];
  v5 = [v4 ef_compactMap:&__block_literal_global_951];
  v6 = [v5 ef_flatten];

  os_unfair_lock_unlock(&self->_handlersLock);

  return v6;
}

- (id)threadReconciliationQueries
{
  os_unfair_lock_lock(&self->_handlersLock);
  v3 = [(EDMessageRepository *)self queryHandlers];
  v4 = [v3 allValues];
  v5 = [v4 ef_compactMap:&__block_literal_global_953];
  v6 = [v5 ef_flatten];

  os_unfair_lock_unlock(&self->_handlersLock);

  return v6;
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  if (!a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    os_unfair_lock_lock(&self->_handlersLock);
    v5 = [(EDMessageRepository *)self queryHandlers];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__EDMessageRepository_contentProtectionStateChanged_previousState___block_invoke;
    v7[3] = &unk_1E8255968;
    v7[4] = &v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];

    os_unfair_lock_unlock(&self->_handlersLock);
    if (*(v9 + 24) == 1)
    {
      v6 = [(EDMessageRepository *)self messagePersistence];
      [v6 reconcileJournalWithCompletionBlock:0];
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __67__EDMessageRepository_contentProtectionStateChanged_previousState___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 query];
  v7 = [v6 queryOptions];

  if ((v7 & 8) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __60__EDMessageRepository_performQuery_limit_completionHandler___block_invoke_74_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "received error while querying for messages: %@, %{public}@", v4, v5);
}

- (void)_performQuery:withObserver:observationIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  _os_log_fault_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_FAULT, "Existing query handler exists for observation identifier: %{public}@ token:%{public}@", v4, 0x16u);
}

- (void)_performSuppressNotAuthenticatedChangeAction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to suppress Not Authenticated warning for objectID:%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __55__EDMessageRepository__persistedObjectIDsForObjectIDs___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "No item found for object ID %{public}@ with error: %{public}@", v4, v5);
}

void __106__EDMessageRepository_requestRepresentationForMessageWithID_requestID_options_delegate_completionHandler___block_invoke_403_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Content representation failed to load: %{public}@ with error %{public}@", v4, v5);
}

@end